
; ─────────────────────────────────────────────
;* Jumps to indirect address via jump table stored at return address with the Accumulator as index
;* expect rst $00 calls to be followed by a data array that holds the jump table data
; Registers: 🟦SP (jump table base address) | 🟥A (index) | 🟥HL
; Output: (SP, A) => jp[SP + (A * 2)]

JumpIndirectFromTable:: ; $RST 00
  pop hl                      ; ┬ put value at ↓ into → HL ; $0000: $e1
  call ResolveIndexedPointer16;─┘ [return address + A*2] ; $0001: $cd $8b $31
  jp hl ; jump to modified address in HL          ; $0004: $e9
; ─────────────────────────────────────────────

db $87

; ─────────────────────────────────────────────
;* ResolveIndexedPointer8Stride4: Multiplies offset A by 4 then runs ↓
;* ResolveIndexedPointer8: Resolves 8bit pointer with offset A from HL into A
; Registers: 
;   - HL: Base Address -> Offset Address
;   - A: Offset -> Retrieved Value
; Output: A = [HL + A]

ResolveIndexedPointer8Stride4:
  add a           ; ─┐                            ; $0006: $87
  add a           ; ─┴ A *= 4                     ; $0007: $87
  
ResolveIndexedPointer8:: ; $RST 08
  add l           ; ─┐                            ; $0008: $85
  ld l, a         ;  │                            ; $0009: $6f
  jr nc, .noCarry ;  │                            ; $000a: $30 $01
  inc h           ; ─┴ HL += A                    ; $000c: $24
  
.noCarry
  ld a, [hl] ; store value at address HL into A   ; $000d: $7e
  ret                                             ; $000e: $c9 
; ─────────────────────────────────────────────

db $ff

; ─────────────────────────────────────────────
;* Compares DE against HL
; Output: Z = (DE == HL)

CompareDEtoHL:: ; $RST 10
  ld a, d   ; ─┐                                  ; $0010: $7a
  cp h      ; ─┴ Z = (D==H)                       ; $0011: $bc
  ret nz    ;         │  │                        ; $0012: $c0
  ;                   │  │
  ld a, e   ; ─┐      │  │                        ; $0013: $7b
  cp l      ; ─┴ Z = (E==L)                       ; $0014: $bd
  ret                                             ; $0015: $c9
; ─────────────────────────────────────────────

db $ff, $ff

; ─────────────────────────────────────────────
;? Sets HiRAM $ffa7 to 1
;TODO: what is ffa7 used for
; output [ffa7] = 1

RST_18::
  ld a, $01       ; ─┐                            ; $0018: $3e $01
  ldh [$ffa7], a  ; ─┴ [ffa7] = 1                 ; $001a: $e0 $a7
  ret                                             ; $001c: $c9
; ─────────────────────────────────────────────

db $ff, $ff, $ff

; ─────────────────────────────────────────────
;? sets HiRAM $ffa7 to 0, and $ffa9 to 2
;TODO: what is ffa7 and ffa9 are used for
; output: [ffa7] = 0, [ffa9] = 2

RST_20::
  xor a           ; ─┐                               ; $0020: $af
  ldh [$ffa7], a  ; ─┴ [ffa7] = 0                    ; $0021: $e0 $a7
  ld a, $02       ; ─┐                               ; $0023: $3e $02
  ldh [$ffa9], a  ; ─┴ [ffa9] = 2                    ; $0025: $e0 $a9
  ret                                             ; $0027: $c9
; ─────────────────────────────────────────────

; ─────────────────────────────────────────────
;* starts DMA transfer from address HL, to VRAM address DE
;* using Register C to define the transfer length and mode
;* sets Registers $ff51 -> ff55 with [HL,DE,C]
; https://gbdev.io/pandocs/CGB_Registers.html#lcd-vram-dma-transfers
; output: VRAM[DE] = RAM/ROM[HL] * C(bytes)

VRAMTransfer:: ; $RST 28
  ld a, h           ; ─┐                          ; $0028: $7c
  ldh [rHDMA1], a   ;  │                          ; $0029: $e0 $51
  ld a, l           ;  │                          ; $002b: $7d
  ldh [rHDMA2], a   ; ─┴ source start = HL        ; $002c: $e0 $52
  ld a, d           ; ─┐                          ; $002e: $7a
  ldh [rHDMA3], a   ;  │                          ; $0030: $e0 $53
  ld a, e           ;  │                          ; $0031: $7b
  ldh [rHDMA4], a   ; ─┴ dest start = DE          ; $0032: $e0 $54
  ld a, c           ; ─┐                          ; $0034: $79
  ldh [rHDMA5], a   ; ─┴ length/mode = C          ; $0035: $e0 $55
  ret                                             ; $0037: $c9
; ─────────────────────────────────────────────

; ─────────────────────────────────────────────
;* store flags into non banked WRAM $CDAB
; Registers:
;   - AF -> FF
;   - DE -> AF

rStoreCPUFlags:: ; $RST 38
  ld b, b ; No Op
  
StoreCPUFlags:
  push af        ; ─┐                             ; $0039: $f5
  pop de         ;  │                             ; $003a: $d1
  ld a, e        ;  │                             ; $003b: $7b
  ld [$cdab], a  ; ─┴ [$cdab] = F                 ; $003c: $ea $ab $cd
  ret                                             ; $003f: $c9
; ─────────────────────────────────────────────





; ───── Interrupt Vectors ───── ;
; https://gbdev.io/pandocs/Interrupts.html

VBlankInterrupt::
  jp Jump_000_366c                                ; $0040: $c3 $6c $36 

ds $48 - @, $ff ; $padding

LCDCInterrupt::
  jp $c000                                        ; $0048: $c3 $00 $c0

db $c3, $77, $25
ds $50 - @, $ff ; $padding

TimerOverflowInterrupt::
  ei                                              ; $0050: $fb
  jp TimerInterruptHandle                         ; $0051: $c3 $99 $39

ds $58 - @, $ff ; $padding

SerialTransferCompleteInterrupt::
  jp Jump_000_388b                                ; $0058: $c3 $8b $38

ds $60 - @, $ff ; $padding

JoypadTransitionInterrupt::
  reti ; enable interrupts, then return           ; $0060: $d9

; ───────────────────────────── ;


Call_000_0061:
Jump_000_0061:
  rst CompareDEtoHL ; $10                         ; $0061: $d7
  jr c, @+$06                                     ; $0062: $38 $04

  push de                                         ; $0064: $d5
  ld d, h                                         ; $0065: $54
  ld e, l                                         ; $0066: $5d
  pop hl                                          ; $0067: $e1

  db $cb, $2a

  rr e                                            ; $006a: $cb $1b
  sra d                                           ; $006c: $cb $2a
  rr e                                            ; $006e: $cb $1b
  sra d                                           ; $0070: $cb $2a
  rr e                                            ; $0072: $cb $1b
  add hl, de                                      ; $0074: $19
  add hl, de                                      ; $0075: $19

Call_000_0076:
  add hl, de                                      ; $0076: $19

  db $c9

Call_000_0078:
Jump_000_0078:
  bit 7, h                                        ; $0078: $cb $7c
  ret z                                           ; $007a: $c8

Call_000_007b:
  push af                                         ; $007b: $f5
  xor a                                           ; $007c: $af
  sub l                                           ; $007d: $95
  ld l, a                                         ; $007e: $6f
  ld a, $00                                       ; $007f: $3e $00
  sbc h                                           ; $0081: $9c
  ld h, a                                         ; $0082: $67
  pop af                                          ; $0083: $f1
  ret                                             ; $0084: $c9


Call_000_0085:
  push af                                         ; $0085: $f5
  xor a                                           ; $0086: $af
  sub c                                           ; $0087: $91
  ld c, a                                         ; $0088: $4f
  ld a, $00                                       ; $0089: $3e $00
  sbc b                                           ; $008b: $98
  ld b, a                                         ; $008c: $47
  pop af                                          ; $008d: $f1
  ret                                             ; $008e: $c9


Call_000_008f:
  bit 7, d                                        ; $008f: $cb $7a

  db $c8

Call_000_0092:
  push af                                         ; $0092: $f5
  xor a                                           ; $0093: $af
  sub e                                           ; $0094: $93
  ld e, a                                         ; $0095: $5f
  ld a, $00                                       ; $0096: $3e $00
  sbc d                                           ; $0098: $9a
  ld d, a                                         ; $0099: $57
  pop af                                          ; $009a: $f1
  ret                                             ; $009b: $c9


Call_000_009c:
  push bc                                         ; $009c: $c5
  ld b, $08                                       ; $009d: $06 $08
  xor a                                           ; $009f: $af

jr_000_00a0:
  add a                                           ; $00a0: $87
  rl l                                            ; $00a1: $cb $15
  jr nc, jr_000_00a9                              ; $00a3: $30 $04

  add h                                           ; $00a5: $84
  jr nc, jr_000_00a9                              ; $00a6: $30 $01

  inc l                                           ; $00a8: $2c

jr_000_00a9:
  dec b                                           ; $00a9: $05
  jr nz, jr_000_00a0                              ; $00aa: $20 $f4

  ld h, l                                         ; $00ac: $65
  ld l, a                                         ; $00ad: $6f
  pop bc                                          ; $00ae: $c1
  ret                                             ; $00af: $c9


  db $af, $b5

  jr nz, @+$05                                    ; $00b2: $20 $03

  db $65, $37, $c9, $c5, $d5, $06, $08, $4d

  ld l, $00                                       ; $00bc: $2e $00

  db $cb, $14, $cb, $15, $5d, $7d, $91

  ld l, a                                         ; $00c5: $6f

  db $3f, $38, $01, $6b, $05, $20, $f1

  rl h                                            ; $00cd: $cb $14

  db $b7, $d1

  pop bc                                          ; $00d1: $c1

  db $c9

Call_000_00d3:
  push bc                                         ; $00d3: $c5
  ld c, l                                         ; $00d4: $4d
  ld b, h                                         ; $00d5: $44
  ld a, $0f                                       ; $00d6: $3e $0f
  ld hl, $0000                                    ; $00d8: $21 $00 $00
  
jr_000_00db:
  sla e                                           ; $00db: $cb $23
  rl d                                            ; db $cb, $12
  jr nc, jr_000_00e2                              ; $00df: $30 $01
  add hl, bc                                      ; db $09
  
jr_000_00e2:
  add hl, hl                                      ; $00e2: $29
  dec a                                           ; $00e3: $3d
  jr nz, jr_000_00db                              ; $00e4: $20 $f5
  bit 7, d                                        ; db $cb, $7a
  jr z, jr_000_00eb                               ; $00e8: $28 $01
  add hl, bc                                      ; $00ea: $09
  
jr_000_00eb:
  pop bc                                          ; $00eb: $c1
  ret                                             ; db $c9

retCall_000_00ed:
  add hl, de                                      ; $00ed: $19
  ld a, $02                                       ; $00ee: $3e $02
  ld [$2000], a                                   ; $00f0: $ea $00 $20
  ld e, [hl]                                      ; $00f3: $5e
  inc hl                                          ; $00f4: $23
  ld d, [hl]                                      ; $00f5: $56
  ret                                             ; $00f6: $c9


db $28, $02, $af, $c9, $3e, $01, $b7, $c9, $ff

Boot::
  nop                                             ; $0100: $00
  jp Jump_000_0150                                ; $0101: $c3 $50 $01

; Cartridge Header Data 0x104 - 0x149
; generated by makefile
ds $0150 - @

