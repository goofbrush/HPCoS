; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

  db $07

  ld bc, $802a                                    ; $4001: $01 $2a $80
  nop                                             ; $4004: $00
  nop                                             ; $4005: $00
  nop                                             ; $4006: $00
  sbc c                                           ; $4007: $99
  ld h, $01                                       ; $4008: $26 $01
  ld [bc], a                                      ; $400a: $02
  ld bc, $0302                                    ; $400b: $01 $02 $03
  ld bc, $4014                                    ; $400e: $01 $14 $40
  and b                                           ; $4011: $a0
  nop                                             ; $4012: $00
  ld b, c                                         ; $4013: $41
  ld h, c                                         ; $4014: $61
  ret nc                                          ; $4015: $d0

  add c                                           ; $4016: $81
  ret nc                                          ; $4017: $d0

  and c                                           ; $4018: $a1
  ret nc                                          ; $4019: $d0

  pop bc                                          ; $401a: $c1
  ret nc                                          ; $401b: $d0

  pop hl                                          ; $401c: $e1
  ret nc                                          ; $401d: $d0

  ld bc, $21d1                                    ; $401e: $01 $d1 $21
  pop de                                          ; $4021: $d1
  ld b, c                                         ; $4022: $41
  pop de                                          ; $4023: $d1
  ld h, c                                         ; $4024: $61
  pop de                                          ; $4025: $d1
  add c                                           ; $4026: $81
  pop de                                          ; $4027: $d1
  and c                                           ; $4028: $a1
  pop de                                          ; $4029: $d1
  pop bc                                          ; $402a: $c1
  pop de                                          ; $402b: $d1
  pop hl                                          ; $402c: $e1
  pop de                                          ; $402d: $d1
  ld bc, $21d2                                    ; $402e: $01 $d2 $21
  ld bc, $c340                                    ; $4031: $01 $40 $c3
  ld d, d                                         ; $4034: $52
  add hl, hl                                      ; $4035: $29
  ld hl, $7b8d                                    ; $4036: $21 $8d $7b
  call Call_000_33f3                              ; $4039: $cd $f3 $33
  inc bc                                          ; $403c: $03
  adc b                                           ; $403d: $88
  ld a, [hl]                                      ; $403e: $7e
  xor a                                           ; $403f: $af
  ld [$cc2a], a                                   ; $4040: $ea $2a $cc
  ld [$cc2e], a                                   ; $4043: $ea $2e $cc
  ld a, $0c                                       ; $4046: $3e $0c
  ld [$cc2b], a                                   ; $4048: $ea $2b $cc
  ld hl, $ffb9                                    ; $404b: $21 $b9 $ff
  ld [hl], $00                                    ; $404e: $36 $00
  inc hl                                          ; $4050: $23
  ld [hl], $00                                    ; $4051: $36 $00
  ld a, $7c                                       ; $4053: $3e $7c
  call Call_000_33f3                              ; $4055: $cd $f3 $33
  nop                                             ; $4058: $00
  inc a                                           ; $4059: $3c
  ld [de], a                                      ; $405a: $12
  xor a                                           ; $405b: $af
  ld hl, $65ff                                    ; $405c: $21 $ff $65
  call Call_000_33f3                              ; $405f: $cd $f3 $33
  nop                                             ; $4062: $00
  ld l, b                                         ; $4063: $68
  daa                                             ; $4064: $27
  ld a, $03                                       ; $4065: $3e $03
  ldh [$ff9a], a                                  ; $4067: $e0 $9a
  ld a, $7c                                       ; $4069: $3e $7c
  call Call_000_04e0                              ; $406b: $cd $e0 $04
  ld hl, $488d                                    ; $406e: $21 $8d $48
  call Call_000_33f3                              ; $4071: $cd $f3 $33
  ld b, $ef                                       ; $4074: $06 $ef
  ld d, b                                         ; $4076: $50
  ld hl, $400d                                    ; $4077: $21 $0d $40
  call Call_000_3013                              ; $407a: $cd $13 $30
  ld a, $90                                       ; $407d: $3e $90
  ld [$c159], a                                   ; $407f: $ea $59 $c1
  ld a, $01                                       ; $4082: $3e $01
  ld [$c1a2], a                                   ; $4084: $ea $a2 $c1
  ld b, $0d                                       ; $4087: $06 $0d
  ld hl, $15a3                                    ; $4089: $21 $a3 $15

jr_007_408c:
  call Call_000_33f3                              ; $408c: $cd $f3 $33
  ld bc, $6628                                    ; $408f: $01 $28 $66
  ld de, $0003                                    ; $4092: $11 $03 $00
  add hl, de                                      ; $4095: $19
  dec b                                           ; $4096: $05
  jr nz, jr_007_408c                              ; $4097: $20 $f3

  ret                                             ; $4099: $c9


  call Call_000_33f3                              ; $409a: $cd $f3 $33
  ld b, $2b                                       ; $409d: $06 $2b
  ld d, c                                         ; $409f: $51
  ldh a, [$ffa6]                                  ; $40a0: $f0 $a6
  bit 1, a                                        ; $40a2: $cb $4f
  jr nz, jr_007_40b1                              ; $40a4: $20 $0b

  bit 0, a                                        ; $40a6: $cb $47
  ret z                                           ; $40a8: $c8

  ldh a, [$ffd3]                                  ; $40a9: $f0 $d3
  inc a                                           ; $40ab: $3c
  add $54                                         ; $40ac: $c6 $54
  jp Jump_000_261e                                ; $40ae: $c3 $1e $26


jr_007_40b1:
  ld a, $02                                       ; $40b1: $3e $02
  ld [$c0a0], a                                   ; $40b3: $ea $a0 $c0
  ld a, $0b                                       ; $40b6: $3e $0b
  jp Jump_000_261e                                ; $40b8: $c3 $1e $26


  ret                                             ; $40bb: $c9


  ld hl, $7b8d                                    ; $40bc: $21 $8d $7b
  call Call_000_33f3                              ; $40bf: $cd $f3 $33
  inc bc                                          ; $40c2: $03
  adc b                                           ; $40c3: $88
  ld a, [hl]                                      ; $40c4: $7e
  xor a                                           ; $40c5: $af
  ld [$cc2a], a                                   ; $40c6: $ea $2a $cc
  ld [$cc2e], a                                   ; $40c9: $ea $2e $cc
  ld a, $6a                                       ; $40cc: $3e $6a
  ld [$cc2b], a                                   ; $40ce: $ea $2b $cc
  ld hl, $ffb9                                    ; $40d1: $21 $b9 $ff
  ld [hl], $00                                    ; $40d4: $36 $00
  inc hl                                          ; $40d6: $23
  ld [hl], $00                                    ; $40d7: $36 $00
  ld a, $7c                                       ; $40d9: $3e $7c
  call Call_000_33f3                              ; $40db: $cd $f3 $33
  nop                                             ; $40de: $00
  inc a                                           ; $40df: $3c
  ld [de], a                                      ; $40e0: $12
  xor a                                           ; $40e1: $af
  ld hl, $65ff                                    ; $40e2: $21 $ff $65
  call Call_000_33f3                              ; $40e5: $cd $f3 $33
  nop                                             ; $40e8: $00
  ld l, b                                         ; $40e9: $68
  daa                                             ; $40ea: $27
  ld hl, $4907                                    ; $40eb: $21 $07 $49
  call Call_000_33f3                              ; $40ee: $cd $f3 $33
  ld b, $ef                                       ; $40f1: $06 $ef
  ld d, b                                         ; $40f3: $50
  ld a, $03                                       ; $40f4: $3e $03
  ldh [$ff9a], a                                  ; $40f6: $e0 $9a
  ld a, $7c                                       ; $40f8: $3e $7c
  call Call_000_04e0                              ; $40fa: $cd $e0 $04
  call Call_007_41cb                              ; $40fd: $cd $cb $41
  ret                                             ; $4100: $c9


  ld hl, $7b8d                                    ; $4101: $21 $8d $7b
  call Call_000_33f3                              ; $4104: $cd $f3 $33
  inc bc                                          ; $4107: $03
  adc b                                           ; $4108: $88
  ld a, [hl]                                      ; $4109: $7e
  xor a                                           ; $410a: $af
  ld [$cc2a], a                                   ; $410b: $ea $2a $cc
  ld [$cc2e], a                                   ; $410e: $ea $2e $cc
  ld a, $35                                       ; $4111: $3e $35
  ld [$cc2b], a                                   ; $4113: $ea $2b $cc
  ld hl, $ffb9                                    ; $4116: $21 $b9 $ff
  ld [hl], $00                                    ; $4119: $36 $00
  inc hl                                          ; $411b: $23
  ld [hl], $00                                    ; $411c: $36 $00
  ld a, $7c                                       ; $411e: $3e $7c
  call Call_000_33f3                              ; $4120: $cd $f3 $33
  nop                                             ; $4123: $00
  inc a                                           ; $4124: $3c
  ld [de], a                                      ; $4125: $12
  xor a                                           ; $4126: $af
  ld hl, $65ff                                    ; $4127: $21 $ff $65
  call Call_000_33f3                              ; $412a: $cd $f3 $33
  nop                                             ; $412d: $00
  ld l, b                                         ; $412e: $68
  daa                                             ; $412f: $27
  ld hl, $4907                                    ; $4130: $21 $07 $49
  call Call_000_33f3                              ; $4133: $cd $f3 $33
  ld b, $ef                                       ; $4136: $06 $ef
  ld d, b                                         ; $4138: $50
  ld a, $03                                       ; $4139: $3e $03
  ldh [$ff9a], a                                  ; $413b: $e0 $9a
  ld a, $7c                                       ; $413d: $3e $7c
  call Call_000_04e0                              ; $413f: $cd $e0 $04
  call Call_007_42a8                              ; $4142: $cd $a8 $42
  ret                                             ; $4145: $c9


  call Call_000_33f3                              ; $4146: $cd $f3 $33
  ld b, $2b                                       ; $4149: $06 $2b
  ld d, c                                         ; $414b: $51
  ldh a, [$ffa6]                                  ; $414c: $f0 $a6
  bit 1, a                                        ; $414e: $cb $4f
  jr nz, jr_007_4179                              ; $4150: $20 $27

  bit 6, a                                        ; $4152: $cb $77
  jr nz, jr_007_41a4                              ; $4154: $20 $4e

  bit 7, a                                        ; $4156: $cb $7f
  jr nz, jr_007_41b7                              ; $4158: $20 $5d

  bit 4, a                                        ; $415a: $cb $67
  jr nz, jr_007_417e                              ; $415c: $20 $20

  bit 5, a                                        ; $415e: $cb $6f
  jr nz, jr_007_4194                              ; $4160: $20 $32

  bit 0, a                                        ; $4162: $cb $47
  ret z                                           ; $4164: $c8

  ld a, $00                                       ; $4165: $3e $00
  ld [$c0a0], a                                   ; $4167: $ea $a0 $c0
  ldh a, [$ffd3]                                  ; $416a: $f0 $d3
  dec a                                           ; $416c: $3d
  ld hl, $cc2e                                    ; $416d: $21 $2e $cc
  add [hl]                                        ; $4170: $86
  call Call_007_42ed                              ; $4171: $cd $ed $42
  ld a, $0b                                       ; $4174: $3e $0b
  jp Jump_000_261e                                ; $4176: $c3 $1e $26


jr_007_4179:
  ldh a, [$ffca]                                  ; $4179: $f0 $ca
  jp Jump_000_261e                                ; $417b: $c3 $1e $26


jr_007_417e:
  ld a, $0f                                       ; $417e: $3e $0f
  ldh [$ffd3], a                                  ; $4180: $e0 $d3
  ld a, [$cc2e]                                   ; $4182: $fa $2e $cc
  add $0d                                         ; $4185: $c6 $0d
  ld hl, $cc2b                                    ; $4187: $21 $2b $cc
  cp [hl]                                         ; $418a: $be
  jr c, jr_007_418f                               ; $418b: $38 $02

  ld a, [hl]                                      ; $418d: $7e
  dec a                                           ; $418e: $3d

jr_007_418f:
  ld [$cc2e], a                                   ; $418f: $ea $2e $cc
  jr jr_007_41b7                                  ; $4192: $18 $23

jr_007_4194:
  ld a, $00                                       ; $4194: $3e $00
  ldh [$ffd3], a                                  ; $4196: $e0 $d3
  ld a, [$cc2e]                                   ; $4198: $fa $2e $cc
  sub $0d                                         ; $419b: $d6 $0d
  jr nc, jr_007_41a1                              ; $419d: $30 $02

  ld a, $01                                       ; $419f: $3e $01

jr_007_41a1:
  ld [$cc2e], a                                   ; $41a1: $ea $2e $cc

jr_007_41a4:
  ldh a, [$ffd3]                                  ; $41a4: $f0 $d3
  or a                                            ; $41a6: $b7
  ret nz                                          ; $41a7: $c0

  ld a, $01                                       ; $41a8: $3e $01
  ldh [$ffd3], a                                  ; $41aa: $e0 $d3
  ld a, [$cc2e]                                   ; $41ac: $fa $2e $cc
  or a                                            ; $41af: $b7
  ret z                                           ; $41b0: $c8

  dec a                                           ; $41b1: $3d
  ld [$cc2e], a                                   ; $41b2: $ea $2e $cc
  jr jr_007_41cb                                  ; $41b5: $18 $14

jr_007_41b7:
  ldh a, [$ffd3]                                  ; $41b7: $f0 $d3
  cp $0f                                          ; $41b9: $fe $0f
  ret nz                                          ; $41bb: $c0

  dec a                                           ; $41bc: $3d
  ldh [$ffd3], a                                  ; $41bd: $e0 $d3
  ld a, [$cc2e]                                   ; $41bf: $fa $2e $cc
  ld hl, $cc2b                                    ; $41c2: $21 $2b $cc
  cp [hl]                                         ; $41c5: $be
  ret z                                           ; $41c6: $c8

  inc a                                           ; $41c7: $3c
  ld [$cc2e], a                                   ; $41c8: $ea $2e $cc

Call_007_41cb:
jr_007_41cb:
  rst $18                                         ; $41cb: $df
  ld c, $80                                       ; $41cc: $0e $80
  ld d, $0e                                       ; $41ce: $16 $0e
  ld e, $14                                       ; $41d0: $1e $14
  ld hl, $0060                                    ; $41d2: $21 $60 $00
  call Call_000_149f                              ; $41d5: $cd $9f $14
  rst $20                                         ; $41d8: $e7
  call Call_000_3363                              ; $41d9: $cd $63 $33
  rst $18                                         ; $41dc: $df
  ld hl, $400d                                    ; $41dd: $21 $0d $40
  call Call_000_3013                              ; $41e0: $cd $13 $30
  ld a, $90                                       ; $41e3: $3e $90
  ld [$c159], a                                   ; $41e5: $ea $59 $c1
  ld a, $01                                       ; $41e8: $3e $01
  ld [$c1a2], a                                   ; $41ea: $ea $a2 $c1
  ld b, $0e                                       ; $41ed: $06 $0e
  ld a, [$cc2e]                                   ; $41ef: $fa $2e $cc
  ld e, a                                         ; $41f2: $5f
  ld d, $00                                       ; $41f3: $16 $00
  ld hl, $0000                                    ; $41f5: $21 $00 $00
  add hl, de                                      ; $41f8: $19
  add hl, de                                      ; $41f9: $19
  add hl, de                                      ; $41fa: $19
  ld de, $1c78                                    ; $41fb: $11 $78 $1c
  add hl, de                                      ; $41fe: $19

jr_007_41ff:
  call Call_000_33f3                              ; $41ff: $cd $f3 $33
  ld bc, $6628                                    ; $4202: $01 $28 $66
  ld de, $0003                                    ; $4205: $11 $03 $00
  add hl, de                                      ; $4208: $19
  dec b                                           ; $4209: $05
  jr nz, jr_007_41ff                              ; $420a: $20 $f3

  jp RST_20                                       ; $420c: $c3 $20 $00


  ret                                             ; $420f: $c9


  call Call_000_33f3                              ; $4210: $cd $f3 $33
  ld b, $2b                                       ; $4213: $06 $2b
  ld d, c                                         ; $4215: $51
  ldh a, [$ffa6]                                  ; $4216: $f0 $a6
  bit 1, a                                        ; $4218: $cb $4f
  jr nz, jr_007_4256                              ; $421a: $20 $3a

  bit 6, a                                        ; $421c: $cb $77
  jr nz, jr_007_4281                              ; $421e: $20 $61

  bit 7, a                                        ; $4220: $cb $7f
  jr nz, jr_007_4294                              ; $4222: $20 $70

  bit 4, a                                        ; $4224: $cb $67
  jr nz, jr_007_425b                              ; $4226: $20 $33

  bit 5, a                                        ; $4228: $cb $6f
  jr nz, jr_007_4271                              ; $422a: $20 $45

  bit 0, a                                        ; $422c: $cb $47
  ret z                                           ; $422e: $c8

  ld a, $02                                       ; $422f: $3e $02
  ld [$c0a0], a                                   ; $4231: $ea $a0 $c0
  ldh a, [rSVBK]                                  ; $4234: $f0 $70
  push af                                         ; $4236: $f5
  ld a, $06                                       ; $4237: $3e $06
  ldh [rSVBK], a                                  ; $4239: $e0 $70
  ld hl, $dcc9                                    ; $423b: $21 $c9 $dc
  ld bc, $0020                                    ; $423e: $01 $20 $00
  call Call_000_1248                              ; $4241: $cd $48 $12
  ldh a, [$ffd3]                                  ; $4244: $f0 $d3
  dec a                                           ; $4246: $3d
  ld hl, $cc2e                                    ; $4247: $21 $2e $cc
  add [hl]                                        ; $424a: $86
  ld [$dcc8], a                                   ; $424b: $ea $c8 $dc
  pop af                                          ; $424e: $f1
  ldh [rSVBK], a                                  ; $424f: $e0 $70
  ld a, $0b                                       ; $4251: $3e $0b
  jp Jump_000_261e                                ; $4253: $c3 $1e $26


jr_007_4256:
  ldh a, [$ffca]                                  ; $4256: $f0 $ca
  jp Jump_000_261e                                ; $4258: $c3 $1e $26


jr_007_425b:
  ld a, $0f                                       ; $425b: $3e $0f
  ldh [$ffd3], a                                  ; $425d: $e0 $d3
  ld a, [$cc2e]                                   ; $425f: $fa $2e $cc
  add $0d                                         ; $4262: $c6 $0d
  ld hl, $cc2b                                    ; $4264: $21 $2b $cc
  cp [hl]                                         ; $4267: $be
  jr c, jr_007_426c                               ; $4268: $38 $02

  ld a, [hl]                                      ; $426a: $7e
  dec a                                           ; $426b: $3d

jr_007_426c:
  ld [$cc2e], a                                   ; $426c: $ea $2e $cc
  jr jr_007_4294                                  ; $426f: $18 $23

jr_007_4271:
  ld a, $00                                       ; $4271: $3e $00
  ldh [$ffd3], a                                  ; $4273: $e0 $d3
  ld a, [$cc2e]                                   ; $4275: $fa $2e $cc
  sub $0d                                         ; $4278: $d6 $0d
  jr nc, jr_007_427e                              ; $427a: $30 $02

  ld a, $01                                       ; $427c: $3e $01

jr_007_427e:
  ld [$cc2e], a                                   ; $427e: $ea $2e $cc

jr_007_4281:
  ldh a, [$ffd3]                                  ; $4281: $f0 $d3
  or a                                            ; $4283: $b7
  ret nz                                          ; $4284: $c0

  ld a, $01                                       ; $4285: $3e $01
  ldh [$ffd3], a                                  ; $4287: $e0 $d3
  ld a, [$cc2e]                                   ; $4289: $fa $2e $cc
  or a                                            ; $428c: $b7
  ret z                                           ; $428d: $c8

  dec a                                           ; $428e: $3d
  ld [$cc2e], a                                   ; $428f: $ea $2e $cc
  jr jr_007_42a8                                  ; $4292: $18 $14

jr_007_4294:
  ldh a, [$ffd3]                                  ; $4294: $f0 $d3
  cp $0f                                          ; $4296: $fe $0f
  ret nz                                          ; $4298: $c0

  dec a                                           ; $4299: $3d
  ldh [$ffd3], a                                  ; $429a: $e0 $d3
  ld a, [$cc2e]                                   ; $429c: $fa $2e $cc
  ld hl, $cc2b                                    ; $429f: $21 $2b $cc
  cp [hl]                                         ; $42a2: $be
  ret z                                           ; $42a3: $c8

  inc a                                           ; $42a4: $3c
  ld [$cc2e], a                                   ; $42a5: $ea $2e $cc

Call_007_42a8:
jr_007_42a8:
  rst $18                                         ; $42a8: $df
  ld c, $80                                       ; $42a9: $0e $80
  ld d, $0e                                       ; $42ab: $16 $0e
  ld e, $14                                       ; $42ad: $1e $14
  ld hl, $0060                                    ; $42af: $21 $60 $00
  call Call_000_149f                              ; $42b2: $cd $9f $14
  rst $20                                         ; $42b5: $e7
  call Call_000_3363                              ; $42b6: $cd $63 $33
  rst $18                                         ; $42b9: $df
  ld hl, $400d                                    ; $42ba: $21 $0d $40
  call Call_000_3013                              ; $42bd: $cd $13 $30
  ld a, $90                                       ; $42c0: $3e $90
  ld [$c159], a                                   ; $42c2: $ea $59 $c1
  ld a, $01                                       ; $42c5: $3e $01
  ld [$c1a2], a                                   ; $42c7: $ea $a2 $c1
  ld b, $0e                                       ; $42ca: $06 $0e
  ld a, [$cc2e]                                   ; $42cc: $fa $2e $cc
  ld e, a                                         ; $42cf: $5f
  ld d, $00                                       ; $42d0: $16 $00
  ld hl, $0000                                    ; $42d2: $21 $00 $00
  add hl, de                                      ; $42d5: $19
  add hl, de                                      ; $42d6: $19
  add hl, de                                      ; $42d7: $19
  ld de, $1bac                                    ; $42d8: $11 $ac $1b
  add hl, de                                      ; $42db: $19

jr_007_42dc:
  call Call_000_33f3                              ; $42dc: $cd $f3 $33
  ld bc, $6628                                    ; $42df: $01 $28 $66
  ld de, $0003                                    ; $42e2: $11 $03 $00
  add hl, de                                      ; $42e5: $19
  dec b                                           ; $42e6: $05
  jr nz, jr_007_42dc                              ; $42e7: $20 $f3

  jp RST_20                                       ; $42e9: $c3 $20 $00


  ret                                             ; $42ec: $c9


Call_007_42ed:
  ldh [$ffbd], a                                  ; $42ed: $e0 $bd
  ldh a, [rSVBK]                                  ; $42ef: $f0 $70
  push af                                         ; $42f1: $f5
  ld a, $06                                       ; $42f2: $3e $06
  ldh [rSVBK], a                                  ; $42f4: $e0 $70
  ldh a, [$ffbd]                                  ; $42f6: $f0 $bd
  ldh [$ffd8], a                                  ; $42f8: $e0 $d8
  ld [$ddc5], a                                   ; $42fa: $ea $c5 $dd
  call Call_000_33f3                              ; $42fd: $cd $f3 $33
  ld bc, $5388                                    ; $4300: $01 $88 $53
  ld a, l                                         ; $4303: $7d
  ld [$ddc4], a                                   ; $4304: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $4307: $e0 $d6
  ld a, h                                         ; $4309: $7c
  ldh [$ffd7], a                                  ; $430a: $e0 $d7
  ld a, $01                                       ; $430c: $3e $01
  ld [$c0a6], a                                   ; $430e: $ea $a6 $c0
  xor a                                           ; $4311: $af
  ld [$cb2d], a                                   ; $4312: $ea $2d $cb
  ld hl, $dcc9                                    ; $4315: $21 $c9 $dc
  ld bc, $0020                                    ; $4318: $01 $20 $00
  call Call_000_1248                              ; $431b: $cd $48 $12
  pop af                                          ; $431e: $f1
  ldh [rSVBK], a                                  ; $431f: $e0 $70
  ret                                             ; $4321: $c9


  ld hl, $7b8d                                    ; $4322: $21 $8d $7b
  call Call_000_33f3                              ; $4325: $cd $f3 $33
  inc bc                                          ; $4328: $03
  adc b                                           ; $4329: $88
  ld a, [hl]                                      ; $432a: $7e
  xor a                                           ; $432b: $af
  ld [$cc2a], a                                   ; $432c: $ea $2a $cc
  ld [$cc2e], a                                   ; $432f: $ea $2e $cc
  ld a, $ea                                       ; $4332: $3e $ea
  ld [$cc2b], a                                   ; $4334: $ea $2b $cc
  ld hl, $ffb9                                    ; $4337: $21 $b9 $ff
  ld [hl], $00                                    ; $433a: $36 $00
  inc hl                                          ; $433c: $23
  ld [hl], $00                                    ; $433d: $36 $00
  ld a, $7c                                       ; $433f: $3e $7c
  call Call_000_33f3                              ; $4341: $cd $f3 $33
  nop                                             ; $4344: $00
  inc a                                           ; $4345: $3c
  ld [de], a                                      ; $4346: $12
  xor a                                           ; $4347: $af
  ld hl, $65ff                                    ; $4348: $21 $ff $65
  call Call_000_33f3                              ; $434b: $cd $f3 $33
  nop                                             ; $434e: $00
  ld l, b                                         ; $434f: $68
  daa                                             ; $4350: $27
  ld hl, $4907                                    ; $4351: $21 $07 $49
  call Call_000_33f3                              ; $4354: $cd $f3 $33
  ld b, $ef                                       ; $4357: $06 $ef
  ld d, b                                         ; $4359: $50
  ld a, $03                                       ; $435a: $3e $03
  ldh [$ff9a], a                                  ; $435c: $e0 $9a
  ld a, $7c                                       ; $435e: $3e $7c
  call Call_000_04e0                              ; $4360: $cd $e0 $04
  call Call_007_43f2                              ; $4363: $cd $f2 $43
  ret                                             ; $4366: $c9


  call Call_000_33f3                              ; $4367: $cd $f3 $33
  ld b, $2b                                       ; $436a: $06 $2b
  ld d, c                                         ; $436c: $51
  ldh a, [$ffa6]                                  ; $436d: $f0 $a6
  bit 1, a                                        ; $436f: $cb $4f
  jr nz, jr_007_43a0                              ; $4371: $20 $2d

  bit 6, a                                        ; $4373: $cb $77
  jr nz, jr_007_43cb                              ; $4375: $20 $54

  bit 7, a                                        ; $4377: $cb $7f
  jr nz, jr_007_43de                              ; $4379: $20 $63

  bit 4, a                                        ; $437b: $cb $67
  jr nz, jr_007_43a5                              ; $437d: $20 $26

  bit 5, a                                        ; $437f: $cb $6f
  jr nz, jr_007_43bb                              ; $4381: $20 $38

  bit 3, a                                        ; $4383: $cb $5f
  jr nz, jr_007_4398                              ; $4385: $20 $11

  bit 0, a                                        ; $4387: $cb $47
  ret z                                           ; $4389: $c8

  ldh a, [$ffd3]                                  ; $438a: $f0 $d3
  dec a                                           ; $438c: $3d
  ld hl, $cc2e                                    ; $438d: $21 $2e $cc
  add [hl]                                        ; $4390: $86
  cp $aa                                          ; $4391: $fe $aa
  jr nc, jr_007_439b                              ; $4393: $30 $06

  jp Jump_000_392b                                ; $4395: $c3 $2b $39


jr_007_4398:
  jp Jump_000_3978                                ; $4398: $c3 $78 $39


jr_007_439b:
  sub $aa                                         ; $439b: $d6 $aa
  jp Jump_000_394b                                ; $439d: $c3 $4b $39


jr_007_43a0:
  ld a, $0e                                       ; $43a0: $3e $0e
  jp Jump_000_261e                                ; $43a2: $c3 $1e $26


jr_007_43a5:
  ld a, $0f                                       ; $43a5: $3e $0f
  ldh [$ffd3], a                                  ; $43a7: $e0 $d3
  ld a, [$cc2e]                                   ; $43a9: $fa $2e $cc
  add $0d                                         ; $43ac: $c6 $0d
  ld hl, $cc2b                                    ; $43ae: $21 $2b $cc
  cp [hl]                                         ; $43b1: $be
  jr c, jr_007_43b6                               ; $43b2: $38 $02

  ld a, [hl]                                      ; $43b4: $7e
  dec a                                           ; $43b5: $3d

jr_007_43b6:
  ld [$cc2e], a                                   ; $43b6: $ea $2e $cc
  jr jr_007_43de                                  ; $43b9: $18 $23

jr_007_43bb:
  ld a, $00                                       ; $43bb: $3e $00
  ldh [$ffd3], a                                  ; $43bd: $e0 $d3
  ld a, [$cc2e]                                   ; $43bf: $fa $2e $cc
  sub $0d                                         ; $43c2: $d6 $0d
  jr nc, jr_007_43c8                              ; $43c4: $30 $02

  ld a, $01                                       ; $43c6: $3e $01

jr_007_43c8:
  ld [$cc2e], a                                   ; $43c8: $ea $2e $cc

jr_007_43cb:
  ldh a, [$ffd3]                                  ; $43cb: $f0 $d3
  or a                                            ; $43cd: $b7
  ret nz                                          ; $43ce: $c0

  ld a, $01                                       ; $43cf: $3e $01
  ldh [$ffd3], a                                  ; $43d1: $e0 $d3
  ld a, [$cc2e]                                   ; $43d3: $fa $2e $cc
  or a                                            ; $43d6: $b7
  ret z                                           ; $43d7: $c8

  dec a                                           ; $43d8: $3d
  ld [$cc2e], a                                   ; $43d9: $ea $2e $cc
  jr jr_007_43f2                                  ; $43dc: $18 $14

jr_007_43de:
  ldh a, [$ffd3]                                  ; $43de: $f0 $d3
  cp $0f                                          ; $43e0: $fe $0f
  ret nz                                          ; $43e2: $c0

  dec a                                           ; $43e3: $3d
  ldh [$ffd3], a                                  ; $43e4: $e0 $d3
  ld a, [$cc2e]                                   ; $43e6: $fa $2e $cc
  ld hl, $cc2b                                    ; $43e9: $21 $2b $cc
  cp [hl]                                         ; $43ec: $be
  ret z                                           ; $43ed: $c8

  inc a                                           ; $43ee: $3c
  ld [$cc2e], a                                   ; $43ef: $ea $2e $cc

Call_007_43f2:
jr_007_43f2:
  rst $18                                         ; $43f2: $df
  ld c, $80                                       ; $43f3: $0e $80
  ld d, $0e                                       ; $43f5: $16 $0e
  ld e, $14                                       ; $43f7: $1e $14
  ld hl, $0060                                    ; $43f9: $21 $60 $00
  call Call_000_149f                              ; $43fc: $cd $9f $14
  rst $20                                         ; $43ff: $e7
  call Call_000_3363                              ; $4400: $cd $63 $33
  rst $18                                         ; $4403: $df
  ld hl, $400d                                    ; $4404: $21 $0d $40
  call Call_000_3013                              ; $4407: $cd $13 $30
  ld a, $90                                       ; $440a: $3e $90
  ld [$c159], a                                   ; $440c: $ea $59 $c1
  ld a, $01                                       ; $440f: $3e $01
  ld [$c1a2], a                                   ; $4411: $ea $a2 $c1
  ld b, $0e                                       ; $4414: $06 $0e
  ld a, [$cc2e]                                   ; $4416: $fa $2e $cc

jr_007_4419:
  ld a, [$cc2e]                                   ; $4419: $fa $2e $cc
  add $0e                                         ; $441c: $c6 $0e
  sub b                                           ; $441e: $90
  ld hl, $1de6                                    ; $441f: $21 $e6 $1d
  call Call_000_33f3                              ; $4422: $cd $f3 $33
  ld bc, $655a                                    ; $4425: $01 $5a $65
  dec b                                           ; $4428: $05
  jr nz, jr_007_4419                              ; $4429: $20 $ee

  jp RST_20                                       ; $442b: $c3 $20 $00


  ldh a, [$ffd3]                                  ; $442e: $f0 $d3
  rst $00                                         ; $4430: $c7
  add d                                           ; $4431: $82
  ld h, $82                                       ; $4432: $26 $82
  ld h, $82                                       ; $4434: $26 $82
  ld h, $78                                       ; $4436: $26 $78
  ld b, h                                         ; $4438: $44
  sub h                                           ; $4439: $94
  ld b, h                                         ; $443a: $44
  sbc [hl]                                        ; $443b: $9e
  ld b, h                                         ; $443c: $44
  xor b                                           ; $443d: $a8
  ld b, h                                         ; $443e: $44
  cp [hl]                                         ; $443f: $be
  ld b, h                                         ; $4440: $44
  add sp, $44                                     ; $4441: $e8 $44
  ld [bc], a                                      ; $4443: $02
  ld b, l                                         ; $4444: $45
  add d                                           ; $4445: $82
  ld h, $82                                       ; $4446: $26 $82
  ld h, $4b                                       ; $4448: $26 $4b
  ld b, h                                         ; $444a: $44
  ld hl, $ce35                                    ; $444b: $21 $35 $ce
  ld [hl], $00                                    ; $444e: $36 $00
  inc hl                                          ; $4450: $23
  ld [hl], $fa                                    ; $4451: $36 $fa
  ld hl, $ce6b                                    ; $4453: $21 $6b $ce
  ld [hl], $00                                    ; $4456: $36 $00
  inc hl                                          ; $4458: $23
  ld [hl], $fa                                    ; $4459: $36 $fa
  ld hl, $ce7c                                    ; $445b: $21 $7c $ce
  ld [hl], $00                                    ; $445e: $36 $00
  inc hl                                          ; $4460: $23
  ld [hl], $fa                                    ; $4461: $36 $fa
  call Call_000_33f3                              ; $4463: $cd $f3 $33
  ld b, $65                                       ; $4466: $06 $65
  ld l, l                                         ; $4468: $6d
  call Call_000_33f3                              ; $4469: $cd $f3 $33
  ld b, $85                                       ; $446c: $06 $85
  ld l, l                                         ; $446e: $6d
  call Call_000_33f3                              ; $446f: $cd $f3 $33
  ld b, $a5                                       ; $4472: $06 $a5
  ld l, l                                         ; $4474: $6d
  jp Jump_007_450d                                ; $4475: $c3 $0d $45


  ld a, $ff                                       ; $4478: $3e $ff
  ld hl, $ce3a                                    ; $447a: $21 $3a $ce
  ld [hl+], a                                     ; $447d: $22
  ld [hl+], a                                     ; $447e: $22
  ld [hl+], a                                     ; $447f: $22
  ld hl, $ce6e                                    ; $4480: $21 $6e $ce
  ld [hl+], a                                     ; $4483: $22
  ld [hl+], a                                     ; $4484: $22
  ld [hl+], a                                     ; $4485: $22
  ld hl, $ce7f                                    ; $4486: $21 $7f $ce
  ld [hl+], a                                     ; $4489: $22
  ld [hl+], a                                     ; $448a: $22
  ld [hl+], a                                     ; $448b: $22
  call Call_000_33f3                              ; $448c: $cd $f3 $33
  ld b, $f1                                       ; $448f: $06 $f1
  ld h, a                                         ; $4491: $67
  jr jr_007_450d                                  ; $4492: $18 $79

  ld hl, $ce38                                    ; $4494: $21 $38 $ce
  ld [hl], $50                                    ; $4497: $36 $50
  inc hl                                          ; $4499: $23
  ld [hl], $c3                                    ; $449a: $36 $c3
  jr jr_007_450d                                  ; $449c: $18 $6f

  ld a, [$cec5]                                   ; $449e: $fa $c5 $ce
  xor $01                                         ; $44a1: $ee $01
  ld [$cec5], a                                   ; $44a3: $ea $c5 $ce
  jr jr_007_450d                                  ; $44a6: $18 $65

  ld bc, $0010                                    ; $44a8: $01 $10 $00
  ld hl, $ce4b                                    ; $44ab: $21 $4b $ce
  ld a, $ff                                       ; $44ae: $3e $ff
  call Call_000_1249                              ; $44b0: $cd $49 $12
  ld de, $ce5b                                    ; $44b3: $11 $5b $ce
  ld hl, $ce4b                                    ; $44b6: $21 $4b $ce
  call Call_000_0245                              ; $44b9: $cd $45 $02
  jr jr_007_450d                                  ; $44bc: $18 $4f

  ld a, $16                                       ; $44be: $3e $16
  call Call_000_392b                              ; $44c0: $cd $2b $39
  ldh a, [rSVBK]                                  ; $44c3: $f0 $70
  push af                                         ; $44c5: $f5
  ld a, $06                                       ; $44c6: $3e $06
  ldh [rSVBK], a                                  ; $44c8: $e0 $70
  ld a, $02                                       ; $44ca: $3e $02
  ld bc, $0065                                    ; $44cc: $01 $65 $00
  ld hl, $dc4d                                    ; $44cf: $21 $4d $dc
  call Call_000_1249                              ; $44d2: $cd $49 $12
  ld a, $ff                                       ; $44d5: $3e $ff
  ld bc, $0006                                    ; $44d7: $01 $06 $00
  ld hl, $dcb3                                    ; $44da: $21 $b3 $dc
  call Call_000_1249                              ; $44dd: $cd $49 $12
  ld a, $07                                       ; $44e0: $3e $07
  ld [hl+], a                                     ; $44e2: $22
  pop af                                          ; $44e3: $f1
  ldh [rSVBK], a                                  ; $44e4: $e0 $70
  jr jr_007_450d                                  ; $44e6: $18 $25

  ldh a, [rSVBK]                                  ; $44e8: $f0 $70
  push af                                         ; $44ea: $f5
  ld a, $06                                       ; $44eb: $3e $06
  ldh [rSVBK], a                                  ; $44ed: $e0 $70
  ld hl, $d970                                    ; $44ef: $21 $70 $d9
  ld b, $00                                       ; $44f2: $06 $00

jr_007_44f4:
  ld a, $63                                       ; $44f4: $3e $63
  ld [hl+], a                                     ; $44f6: $22
  inc b                                           ; $44f7: $04
  ld a, b                                         ; $44f8: $78
  cp $99                                          ; $44f9: $fe $99
  jr nz, jr_007_44f4                              ; $44fb: $20 $f7

  pop af                                          ; $44fd: $f1
  ldh [rSVBK], a                                  ; $44fe: $e0 $70
  jr jr_007_450d                                  ; $4500: $18 $0b

  ld a, $ff                                       ; $4502: $3e $ff
  ld [$cdcf], a                                   ; $4504: $ea $cf $cd
  call Call_000_33f3                              ; $4507: $cd $f3 $33
  inc b                                           ; $450a: $04
  ld l, b                                         ; $450b: $68
  ld d, a                                         ; $450c: $57

Jump_007_450d:
jr_007_450d:
  ld a, $02                                       ; $450d: $3e $02
  ld [$c0a0], a                                   ; $450f: $ea $a0 $c0
  ld a, $0b                                       ; $4512: $3e $0b
  jp Jump_000_261e                                ; $4514: $c3 $1e $26


  ld hl, $7b8d                                    ; $4517: $21 $8d $7b
  call Call_000_33f3                              ; $451a: $cd $f3 $33
  inc bc                                          ; $451d: $03
  adc b                                           ; $451e: $88
  ld a, [hl]                                      ; $451f: $7e
  xor a                                           ; $4520: $af
  ld [$cc2a], a                                   ; $4521: $ea $2a $cc
  ld [$cc2e], a                                   ; $4524: $ea $2e $cc
  ld a, $01                                       ; $4527: $3e $01
  ld [$cc2b], a                                   ; $4529: $ea $2b $cc
  ld hl, $ffb9                                    ; $452c: $21 $b9 $ff
  ld [hl], $00                                    ; $452f: $36 $00
  inc hl                                          ; $4531: $23
  ld [hl], $00                                    ; $4532: $36 $00
  ld a, $7c                                       ; $4534: $3e $7c
  call Call_000_33f3                              ; $4536: $cd $f3 $33
  nop                                             ; $4539: $00
  inc a                                           ; $453a: $3c
  ld [de], a                                      ; $453b: $12
  xor a                                           ; $453c: $af
  ld hl, $65ff                                    ; $453d: $21 $ff $65
  call Call_000_33f3                              ; $4540: $cd $f3 $33
  nop                                             ; $4543: $00
  ld l, b                                         ; $4544: $68
  daa                                             ; $4545: $27
  ld a, $03                                       ; $4546: $3e $03
  ldh [$ff9a], a                                  ; $4548: $e0 $9a
  ld a, $7c                                       ; $454a: $3e $7c
  call Call_000_04e0                              ; $454c: $cd $e0 $04
  ld hl, $48f6                                    ; $454f: $21 $f6 $48
  call Call_000_33f3                              ; $4552: $cd $f3 $33
  ld b, $ef                                       ; $4555: $06 $ef
  ld d, b                                         ; $4557: $50
  ld hl, $400d                                    ; $4558: $21 $0d $40
  call Call_000_3013                              ; $455b: $cd $13 $30
  ld a, $90                                       ; $455e: $3e $90
  ld [$c159], a                                   ; $4560: $ea $59 $c1
  ld a, $01                                       ; $4563: $3e $01
  ld [$c1a2], a                                   ; $4565: $ea $a2 $c1
  ld b, $02                                       ; $4568: $06 $02
  ld hl, $15d0                                    ; $456a: $21 $d0 $15

jr_007_456d:
  call Call_000_33f3                              ; $456d: $cd $f3 $33
  ld bc, $6628                                    ; $4570: $01 $28 $66
  ld de, $0003                                    ; $4573: $11 $03 $00
  add hl, de                                      ; $4576: $19
  dec b                                           ; $4577: $05
  jr nz, jr_007_456d                              ; $4578: $20 $f3

  ret                                             ; $457a: $c9


  call Call_000_33f3                              ; $457b: $cd $f3 $33
  ld b, $2b                                       ; $457e: $06 $2b
  ld d, c                                         ; $4580: $51
  ldh a, [$ffa6]                                  ; $4581: $f0 $a6
  bit 1, a                                        ; $4583: $cb $4f
  jr nz, jr_007_4599                              ; $4585: $20 $12

  bit 0, a                                        ; $4587: $cb $47
  ret z                                           ; $4589: $c8

  ldh a, [rSVBK]                                  ; $458a: $f0 $70
  push af                                         ; $458c: $f5
  ld a, $06                                       ; $458d: $3e $06
  ldh [rSVBK], a                                  ; $458f: $e0 $70
  ldh a, [$ffd3]                                  ; $4591: $f0 $d3
  ld [$ddc7], a                                   ; $4593: $ea $c7 $dd
  pop af                                          ; $4596: $f1
  ldh [rSVBK], a                                  ; $4597: $e0 $70

jr_007_4599:
  ldh a, [$ffca]                                  ; $4599: $f0 $ca
  jp Jump_000_261e                                ; $459b: $c3 $1e $26


  ld hl, $7b8d                                    ; $459e: $21 $8d $7b
  call Call_000_33f3                              ; $45a1: $cd $f3 $33
  inc bc                                          ; $45a4: $03
  adc b                                           ; $45a5: $88
  ld a, [hl]                                      ; $45a6: $7e
  xor a                                           ; $45a7: $af
  ld [$cc2a], a                                   ; $45a8: $ea $2a $cc
  ld [$cc2e], a                                   ; $45ab: $ea $2e $cc
  ld a, $01                                       ; $45ae: $3e $01
  ld [$cc2b], a                                   ; $45b0: $ea $2b $cc
  ld hl, $ffb9                                    ; $45b3: $21 $b9 $ff
  ld [hl], $00                                    ; $45b6: $36 $00
  inc hl                                          ; $45b8: $23
  ld [hl], $00                                    ; $45b9: $36 $00
  ld a, $7c                                       ; $45bb: $3e $7c
  call Call_000_33f3                              ; $45bd: $cd $f3 $33
  nop                                             ; $45c0: $00
  inc a                                           ; $45c1: $3c
  ld [de], a                                      ; $45c2: $12
  xor a                                           ; $45c3: $af
  ld hl, $65ff                                    ; $45c4: $21 $ff $65
  call Call_000_33f3                              ; $45c7: $cd $f3 $33
  nop                                             ; $45ca: $00
  ld l, b                                         ; $45cb: $68
  daa                                             ; $45cc: $27
  ld a, $03                                       ; $45cd: $3e $03
  ldh [$ff9a], a                                  ; $45cf: $e0 $9a
  ld a, $7c                                       ; $45d1: $3e $7c
  call Call_000_04e0                              ; $45d3: $cd $e0 $04
  ld hl, $48f6                                    ; $45d6: $21 $f6 $48
  call Call_000_33f3                              ; $45d9: $cd $f3 $33
  ld b, $ef                                       ; $45dc: $06 $ef
  ld d, b                                         ; $45de: $50
  ld hl, $400d                                    ; $45df: $21 $0d $40
  call Call_000_3013                              ; $45e2: $cd $13 $30
  ld a, $90                                       ; $45e5: $3e $90
  ld [$c159], a                                   ; $45e7: $ea $59 $c1
  ld a, $01                                       ; $45ea: $3e $01
  ld [$c1a2], a                                   ; $45ec: $ea $a2 $c1
  ld b, $02                                       ; $45ef: $06 $02
  ld hl, $15ca                                    ; $45f1: $21 $ca $15

jr_007_45f4:
  call Call_000_33f3                              ; $45f4: $cd $f3 $33
  ld bc, $6628                                    ; $45f7: $01 $28 $66
  ld de, $0003                                    ; $45fa: $11 $03 $00
  add hl, de                                      ; $45fd: $19
  dec b                                           ; $45fe: $05
  jr nz, jr_007_45f4                              ; $45ff: $20 $f3

  ret                                             ; $4601: $c9


  call Call_000_33f3                              ; $4602: $cd $f3 $33
  ld b, $2b                                       ; $4605: $06 $2b
  ld d, c                                         ; $4607: $51
  ldh a, [$ffa6]                                  ; $4608: $f0 $a6
  bit 1, a                                        ; $460a: $cb $4f
  jr nz, jr_007_4618                              ; $460c: $20 $0a

  bit 0, a                                        ; $460e: $cb $47
  ret z                                           ; $4610: $c8

  ldh a, [$ffd3]                                  ; $4611: $f0 $d3
  ld hl, $cebd                                    ; $4613: $21 $bd $ce
  ld [hl+], a                                     ; $4616: $22
  ld [hl], a                                      ; $4617: $77

jr_007_4618:
  ldh a, [$ffca]                                  ; $4618: $f0 $ca
  jp Jump_000_261e                                ; $461a: $c3 $1e $26


  db $10, $01, $24, $46, $b8, $00, $44, $80, $d0, $a0, $d0, $c0, $d0, $e0, $d0, $20
  db $d1, $40, $d1, $80, $d1, $a0, $d1, $c0, $d1, $e0, $d1, $00, $d2, $10, $01, $41
  db $46, $90, $00, $c0, $88, $d0, $a8, $d0, $c8, $d0, $e8, $d0, $28, $d1, $48, $d1
  db $88, $d1, $a8, $d1, $c8, $d1, $e8, $d1, $08, $d2, $23, $01, $5e, $46, $90, $02
  db $40, $d0, $d0, $10, $d1, $50, $d1, $90, $d1, $d0, $d1, $77, $7d, $7b, $7a, $76
  db $7c, $ad, $d1, $cd, $03, $ce, $ea, $cd, $1c, $ce, $d1, $cd, $03, $ce, $37, $ce
  db $6d, $ce, $7e, $ce, $8f, $ce, $37, $ce, $6d, $ce, $35, $ce, $6b, $ce, $7c, $ce
  db $8d, $ce, $35, $ce, $6b, $ce, $02, $00, $00, $00, $04, $1e, $19, $00, $04, $00
  db $00, $10, $04, $00, $00, $5e, $c0, $04, $a0, $20, $00, $a6, $64, $5e, $c0, $04
  db $a0, $20, $00, $a9, $64, $5e, $c0, $04, $a0, $20, $00, $ac, $64

  ld e, [hl]                                      ; $46ba: $5e
  ret nz                                          ; $46bb: $c0

  inc b                                           ; $46bc: $04
  and b                                           ; $46bd: $a0
  jr nz, jr_007_46c0                              ; $46be: $20 $00

jr_007_46c0:
  xor a                                           ; $46c0: $af
  ld h, h                                         ; $46c1: $64

  db $5e, $c0, $04, $a0, $20, $00, $b2, $64, $5e, $c0, $04, $a0, $20, $00, $b5, $64

  ld e, [hl]                                      ; $46d2: $5e
  ret nz                                          ; $46d3: $c0

  inc b                                           ; $46d4: $04
  and b                                           ; $46d5: $a0
  jr nz, jr_007_46d8                              ; $46d6: $20 $00

jr_007_46d8:
  add b                                           ; $46d8: $80
  rst $18                                         ; $46d9: $df

  db $a2, $46, $aa, $46, $b2, $46

  cp d                                            ; $46e0: $ba
  ld b, [hl]                                      ; $46e1: $46

  db $c2, $46, $ca, $46, $aa, $46

  and [hl]                                        ; $46e8: $a6
  ld h, h                                         ; $46e9: $64
  xor c                                           ; $46ea: $a9
  ld h, h                                         ; $46eb: $64
  xor h                                           ; $46ec: $ac
  ld h, h                                         ; $46ed: $64
  xor a                                           ; $46ee: $af
  ld h, h                                         ; $46ef: $64
  or d                                            ; $46f0: $b2
  ld h, h                                         ; $46f1: $64
  or l                                            ; $46f2: $b5
  ld h, h                                         ; $46f3: $64

  call Call_007_47e5                              ; $46f4: $cd $e5 $47
  ld a, $08                                       ; $46f7: $3e $08
  ld [$cc2c], a                                   ; $46f9: $ea $2c $cc
  xor a                                           ; $46fc: $af
  ld hl, $45b2                                    ; $46fd: $21 $b2 $45
  call Call_000_33f3                              ; $4700: $cd $f3 $33

  db $06, $fd, $50

  call Call_000_33f3                              ; $4706: $cd $f3 $33

  db $04, $03, $79

  xor a                                           ; $470c: $af
  ld [$cbac], a                                   ; $470d: $ea $ac $cb
  ld a, $05                                       ; $4710: $3e $05
  ld [$cbad], a                                   ; $4712: $ea $ad $cb
  ld a, $0a                                       ; $4715: $3e $0a
  ld [$cbae], a                                   ; $4717: $ea $ae $cb
  call Call_000_33f3                              ; $471a: $cd $f3 $33

  db $04, $98, $71

  ld hl, $ffb9                                    ; $4720: $21 $b9 $ff
  ld [hl], $7f                                    ; $4723: $36 $7f
  inc hl                                          ; $4725: $23
  ld [hl], $01                                    ; $4726: $36 $01
  call Call_000_33f3                              ; $4728: $cd $f3 $33

  db $03, $42, $4c

  cp $06                                          ; $472e: $fe $06
  jr nz, jr_007_4734                              ; $4730: $20 $02

  ld a, $01                                       ; $4732: $3e $01

jr_007_4734:
  add $14                                         ; $4734: $c6 $14
  push af                                         ; $4736: $f5
  ld hl, $558b                                    ; $4737: $21 $8b $55
  call Call_000_33f3                              ; $473a: $cd $f3 $33

  db $00, $76, $2a

  call Call_000_33f3                              ; $4740: $cd $f3 $33

  db $01, $53, $41

  pop af                                          ; $4746: $f1
  ld de, $4693                                    ; $4747: $11 $93 $46
  call Call_000_33f3                              ; $474a: $cd $f3 $33

  db $00, $42, $26

  call Call_000_33f3                              ; $4750: $cd $f3 $33

  db $04, $86, $60

  call Call_000_3363                              ; $4756: $cd $63 $33
  rst $18                                         ; $4759: $df
  call Call_007_48e4                              ; $475a: $cd $e4 $48
  call Call_007_487c                              ; $475d: $cd $7c $48
  ld c, $ff                                       ; $4760: $0e $ff
  call Call_007_488f                              ; $4762: $cd $8f $48
  rst $20                                         ; $4765: $e7
  ret                                             ; $4766: $c9


  ld a, [$cbeb]                                   ; $4767: $fa $eb $cb
  cp $ff                                          ; $476a: $fe $ff
  jr z, jr_007_4779                               ; $476c: $28 $0b

  ld c, a                                         ; $476e: $4f
  ld a, [$cbb6]                                   ; $476f: $fa $b6 $cb
  ld b, a                                         ; $4772: $47
  call Call_000_33f3                              ; $4773: $cd $f3 $33

  db $04, $d2, $6a

jr_007_4779:
  call Call_000_33f3                              ; $4779: $cd $f3 $33

  db $04, $03, $79

  ld a, [$cbb6]                                   ; $477f: $fa $b6 $cb
  call Call_007_4ac8                              ; $4782: $cd $c8 $4a
  ld a, [$cec3]                                   ; $4785: $fa $c3 $ce
  rst $00                                         ; $4788: $c7

  db $91, $47, $99, $47

  and c                                           ; $478d: $a1
  ld b, a                                         ; $478e: $47
  xor c                                           ; $478f: $a9
  ld b, a                                         ; $4790: $47

  call Call_000_33f3                              ; $4791: $cd $f3 $33

  db $06, $2d, $68

  jr jr_007_47af                                  ; $4797: $18 $16

  call Call_000_33f3                              ; $4799: $cd $f3 $33

  db $06, $ac, $68

  jr jr_007_47af                                  ; $479f: $18 $0e

  call Call_000_33f3                              ; $47a1: $cd $f3 $33
  ld b, $2c                                       ; $47a4: $06 $2c
  ld l, c                                         ; $47a6: $69
  jr jr_007_47af                                  ; $47a7: $18 $06

  call Call_000_33f3                              ; $47a9: $cd $f3 $33
  ld b, $b5                                       ; $47ac: $06 $b5
  ld l, c                                         ; $47ae: $69

jr_007_47af:
  rst $18                                         ; $47af: $df
  ld c, $7f                                       ; $47b0: $0e $7f
  ld e, $14                                       ; $47b2: $1e $14
  ld d, $0e                                       ; $47b4: $16 $0e
  ld hl, $0080                                    ; $47b6: $21 $80 $00
  ld b, $03                                       ; $47b9: $06 $03
  call Call_000_14a1                              ; $47bb: $cd $a1 $14
  rst $20                                         ; $47be: $e7
  call Call_000_3363                              ; $47bf: $cd $63 $33
  rst $18                                         ; $47c2: $df
  call Call_007_48e4                              ; $47c3: $cd $e4 $48
  call Call_007_487c                              ; $47c6: $cd $7c $48
  rst $20                                         ; $47c9: $e7
  ld hl, $45b2                                    ; $47ca: $21 $b2 $45
  call Call_000_33f3                              ; $47cd: $cd $f3 $33

  db $06, $fd, $50

  ld a, $08                                       ; $47d3: $3e $08
  ld [$cc2c], a                                   ; $47d5: $ea $2c $cc
  ld a, [$cbb6]                                   ; $47d8: $fa $b6 $cb
  ldh [$ffd3], a                                  ; $47db: $e0 $d3
  call Call_007_4a1d                              ; $47dd: $cd $1d $4a
  ld c, $ff                                       ; $47e0: $0e $ff
  jp Jump_007_488f                                ; $47e2: $c3 $8f $48


Call_007_47e5:
  ld a, [$cec3]                                   ; $47e5: $fa $c3 $ce
  inc a                                           ; $47e8: $3c
  ret z                                           ; $47e9: $c8

  rst $18                                         ; $47ea: $df
  ldh a, [rSVBK]                                  ; $47eb: $f0 $70
  push af                                         ; $47ed: $f5
  ld a, $03                                       ; $47ee: $3e $03
  ldh [rSVBK], a                                  ; $47f0: $e0 $70
  ld de, $001d                                    ; $47f2: $11 $1d $00
  ld hl, $d010                                    ; $47f5: $21 $10 $d0
  ld a, $ed                                       ; $47f8: $3e $ed
  ld [hl+], a                                     ; $47fa: $22
  ld [hl+], a                                     ; $47fb: $22
  ld [hl+], a                                     ; $47fc: $22
  ld [hl], a                                      ; $47fd: $77
  add hl, de                                      ; $47fe: $19
  ld [hl+], a                                     ; $47ff: $22
  ld [hl+], a                                     ; $4800: $22
  ld [hl+], a                                     ; $4801: $22
  ld [hl], a                                      ; $4802: $77
  add hl, de                                      ; $4803: $19
  ld a, $7f                                       ; $4804: $3e $7f
  ld [hl+], a                                     ; $4806: $22
  ld [hl+], a                                     ; $4807: $22
  ld [hl+], a                                     ; $4808: $22
  ld [hl], a                                      ; $4809: $77
  add hl, de                                      ; $480a: $19
  ld [hl+], a                                     ; $480b: $22
  ld [hl+], a                                     ; $480c: $22
  ld [hl+], a                                     ; $480d: $22
  ld [hl], a                                      ; $480e: $77
  ld hl, $d510                                    ; $480f: $21 $10 $d5
  ld a, $08                                       ; $4812: $3e $08
  ld [hl+], a                                     ; $4814: $22
  ld [hl+], a                                     ; $4815: $22
  ld [hl+], a                                     ; $4816: $22
  ld [hl], a                                      ; $4817: $77
  add hl, de                                      ; $4818: $19
  ld [hl+], a                                     ; $4819: $22
  ld [hl+], a                                     ; $481a: $22
  ld [hl+], a                                     ; $481b: $22
  ld [hl], a                                      ; $481c: $77
  add hl, de                                      ; $481d: $19
  ld a, $02                                       ; $481e: $3e $02
  ld [hl+], a                                     ; $4820: $22
  ld [hl+], a                                     ; $4821: $22
  ld [hl+], a                                     ; $4822: $22
  ld [hl], a                                      ; $4823: $77
  add hl, de                                      ; $4824: $19
  inc a                                           ; $4825: $3c
  ld [hl+], a                                     ; $4826: $22
  ld [hl+], a                                     ; $4827: $22
  ld [hl+], a                                     ; $4828: $22
  ld [hl], a                                      ; $4829: $77
  pop af                                          ; $482a: $f1
  ldh [rSVBK], a                                  ; $482b: $e0 $70
  rst $20                                         ; $482d: $e7
  call Call_000_3363                              ; $482e: $cd $63 $33
  rst $18                                         ; $4831: $df
  xor a                                           ; $4832: $af
  ld bc, $624b                                    ; $4833: $01 $4b $62
  ld de, $d010                                    ; $4836: $11 $10 $d0
  ld hl, $0000                                    ; $4839: $21 $00 $00
  call Call_000_33f3                              ; $483c: $cd $f3 $33

  db $00, $5f, $10

  ld a, [$cec3]                                   ; $4842: $fa $c3 $ce
  call Call_000_33f3                              ; $4845: $cd $f3 $33

  db $03, $42, $4c

  push af                                         ; $484b: $f5
  ld a, [$cafa]                                   ; $484c: $fa $fa $ca
  or a                                            ; $484f: $b7
  jr z, jr_007_486b                               ; $4850: $28 $19

  pop af                                          ; $4852: $f1
  push af                                         ; $4853: $f5
  ld hl, $46e8                                    ; $4854: $21 $e8 $46
  call ResolveIndexedPointer16                              ; $4857: $cd $8b $31
  ld de, $df80                                    ; $485a: $11 $80 $df
  ld bc, $0040                                    ; $485d: $01 $40 $00
  call Call_000_2851                              ; $4860: $cd $51 $28
  ld hl, $46d2                                    ; $4863: $21 $d2 $46
  call Call_000_1a84                              ; $4866: $cd $84 $1a
  jr jr_007_4876                                  ; $4869: $18 $0b

jr_007_486b:
  pop af                                          ; $486b: $f1
  push af                                         ; $486c: $f5
  ld hl, $46da                                    ; $486d: $21 $da $46
  call ResolveIndexedPointer16                              ; $4870: $cd $8b $31
  call Call_000_1a5c                              ; $4873: $cd $5c $1a

jr_007_4876:
  pop af                                          ; $4876: $f1
  call Call_007_4b5a                              ; $4877: $cd $5a $4b
  rst $20                                         ; $487a: $e7
  ret                                             ; $487b: $c9


Call_007_487c:
  call Call_000_35e1                              ; $487c: $cd $e1 $35

  db $14, $05, $0a, $0d

  ld bc, $0000                                    ; $4883: $01 $00 $00
  ld de, $d0aa                                    ; $4886: $11 $aa $d0
  ld hl, $d000                                    ; $4889: $21 $00 $d0
  jp Jump_000_1380                                ; $488c: $c3 $80 $13


Call_007_488f:
Jump_007_488f:
  ld hl, $da70                                    ; $488f: $21 $70 $da
  ld a, [$cec3]                                   ; $4892: $fa $c3 $ce
  call Call_000_315f                              ; $4895: $cd $5f $31
  push hl                                         ; $4898: $e5
  ld b, $00                                       ; $4899: $06 $00

jr_007_489b:
  ld a, c                                         ; $489b: $79
  cp $ff                                          ; $489c: $fe $ff
  jr nz, jr_007_48dc                              ; $489e: $20 $3c

  ld a, b                                         ; $48a0: $78
  call Call_000_33f3                              ; $48a1: $cd $f3 $33

  db $04, $d8, $78

  pop hl                                          ; $48a7: $e1
  ld a, $06                                       ; $48a8: $3e $06
  ldh [rSVBK], a                                  ; $48aa: $e0 $70
  ld a, [hl+]                                     ; $48ac: $2a
  cp $ff                                          ; $48ad: $fe $ff
  push af                                         ; $48af: $f5
  ld a, $01                                       ; $48b0: $3e $01
  ldh [rSVBK], a                                  ; $48b2: $e0 $70
  pop af                                          ; $48b4: $f1
  push hl                                         ; $48b5: $e5
  jr z, jr_007_48d1                               ; $48b6: $28 $19

  ld d, a                                         ; $48b8: $57
  ld e, b                                         ; $48b9: $58
  push af                                         ; $48ba: $f5
  push bc                                         ; $48bb: $c5
  call Call_000_33f3                              ; $48bc: $cd $f3 $33

  db $04, $7d, $78

  pop bc                                          ; $48c2: $c1
  pop af                                          ; $48c3: $f1
  ld d, $01                                       ; $48c4: $16 $01
  ld e, b                                         ; $48c6: $58
  push bc                                         ; $48c7: $c5
  call Call_000_33f3                              ; $48c8: $cd $f3 $33

  db $04, $be, $78

  pop bc                                          ; $48ce: $c1
  jr jr_007_48dc                                  ; $48cf: $18 $0b

jr_007_48d1:
  ld d, $00                                       ; $48d1: $16 $00
  ld e, b                                         ; $48d3: $58
  push bc                                         ; $48d4: $c5
  call Call_000_33f3                              ; $48d5: $cd $f3 $33

  db $04, $be, $78

  pop bc                                          ; $48db: $c1

jr_007_48dc:
  inc b                                           ; $48dc: $04
  ld a, b                                         ; $48dd: $78
  cp $06                                          ; $48de: $fe $06
  jr nz, jr_007_489b                              ; $48e0: $20 $b9

  pop hl                                          ; $48e2: $e1
  ret                                             ; $48e3: $c9


Call_007_48e4:
  ld a, [$cec3]                                   ; $48e4: $fa $c3 $ce
  ld hl, $466f                                    ; $48e7: $21 $6f $46
  call Call_000_317a                              ; $48ea: $cd $7a $31
  ld a, [hl+]                                     ; $48ed: $2a
  ld h, [hl]                                      ; $48ee: $66
  ld l, a                                         ; $48ef: $6f
  ld a, l                                         ; $48f0: $7d
  ld [$cbd1], a                                   ; $48f1: $ea $d1 $cb
  ld a, h                                         ; $48f4: $7c
  ld [$cbd2], a                                   ; $48f5: $ea $d2 $cb
  ld hl, $461d                                    ; $48f8: $21 $1d $46
  call Call_000_3013                              ; $48fb: $cd $13 $30
  ld a, $7c                                       ; $48fe: $3e $7c
  ld [$c159], a                                   ; $4900: $ea $59 $c1
  ld a, $01                                       ; $4903: $3e $01
  ld [$c1a2], a                                   ; $4905: $ea $a2 $c1
  ld b, $0b                                       ; $4908: $06 $0b
  ld hl, $15d6                                    ; $490a: $21 $d6 $15

jr_007_490d:
  call Call_000_33f3                              ; $490d: $cd $f3 $33

  db $01, $28, $66

  ld de, $0003                                    ; $4913: $11 $03 $00
  add hl, de                                      ; $4916: $19
  dec b                                           ; $4917: $05
  jr nz, jr_007_490d                              ; $4918: $20 $f3

  ld hl, $463a                                    ; $491a: $21 $3a $46
  call Call_000_3013                              ; $491d: $cd $13 $30
  ld a, $30                                       ; $4920: $3e $30
  ld [$c159], a                                   ; $4922: $ea $59 $c1
  ld a, $01                                       ; $4925: $3e $01
  ld [$c1a2], a                                   ; $4927: $ea $a2 $c1
  ld hl, $467b                                    ; $492a: $21 $7b $46
  ld a, [$cec3]                                   ; $492d: $fa $c3 $ce
  call Call_000_317a                              ; $4930: $cd $7a $31
  ld a, [hl+]                                     ; $4933: $2a
  ld h, [hl]                                      ; $4934: $66
  ld l, a                                         ; $4935: $6f
  ld a, [hl]                                      ; $4936: $7e
  call Call_000_33f3                              ; $4937: $cd $f3 $33

  db $01, $c5, $66

  ld hl, $4687                                    ; $493d: $21 $87 $46
  ld a, [$cec3]                                   ; $4940: $fa $c3 $ce
  call Call_000_317a                              ; $4943: $cd $7a $31
  ld a, [hl+]                                     ; $4946: $2a
  ld h, [hl]                                      ; $4947: $66
  ld l, a                                         ; $4948: $6f
  ld a, [hl+]                                     ; $4949: $2a
  ld h, [hl]                                      ; $494a: $66
  ld l, a                                         ; $494b: $6f
  call Call_000_33f3                              ; $494c: $cd $f3 $33

  db $01, $ee, $66

  ld hl, $467b                                    ; $4952: $21 $7b $46
  ld a, [$cec3]                                   ; $4955: $fa $c3 $ce
  call Call_000_317a                              ; $4958: $cd $7a $31
  ld a, [hl+]                                     ; $495b: $2a
  ld h, [hl]                                      ; $495c: $66
  ld l, a                                         ; $495d: $6f
  ld a, [hl]                                      ; $495e: $7e
  call Call_000_33f3                              ; $495f: $cd $f3 $33

  db $06, $88, $6e

  call Call_000_33f3                              ; $4965: $cd $f3 $33

  db $01, $ee, $66

  ld hl, $ce38                                    ; $496b: $21 $38 $ce
  ld a, [hl+]                                     ; $496e: $2a
  ld h, [hl]                                      ; $496f: $66
  ld l, a                                         ; $4970: $6f
  call Call_000_33f3                              ; $4971: $cd $f3 $33

  db $01, $ee, $66

  ld hl, $cbd1                                    ; $4977: $21 $d1 $cb
  ld a, [hl+]                                     ; $497a: $2a
  ld h, [hl]                                      ; $497b: $66
  ld l, a                                         ; $497c: $6f
  ld de, $0005                                    ; $497d: $11 $05 $00
  add hl, de                                      ; $4980: $19
  ld a, [hl+]                                     ; $4981: $2a
  ld h, [hl]                                      ; $4982: $66
  ld l, a                                         ; $4983: $6f
  ld b, h                                         ; $4984: $44
  ld c, l                                         ; $4985: $4d
  ld hl, $cbd1                                    ; $4986: $21 $d1 $cb
  ld a, [hl+]                                     ; $4989: $2a
  ld h, [hl]                                      ; $498a: $66
  ld l, a                                         ; $498b: $6f
  ld de, $0001                                    ; $498c: $11 $01 $00
  add hl, de                                      ; $498f: $19
  ld a, [hl+]                                     ; $4990: $2a
  ld h, [hl]                                      ; $4991: $66
  ld l, a                                         ; $4992: $6f
  ld d, h                                         ; $4993: $54
  ld e, l                                         ; $4994: $5d
  ld hl, $15f7                                    ; $4995: $21 $f7 $15
  call Call_000_33f3                              ; $4998: $cd $f3 $33

  db $01, $8d, $65

  ld hl, $cbd1                                    ; $499e: $21 $d1 $cb
  ld a, [hl+]                                     ; $49a1: $2a
  ld h, [hl]                                      ; $49a2: $66
  ld l, a                                         ; $49a3: $6f
  ld de, $0007                                    ; $49a4: $11 $07 $00
  add hl, de                                      ; $49a7: $19
  ld a, [hl+]                                     ; $49a8: $2a
  ld h, [hl]                                      ; $49a9: $66
  ld l, a                                         ; $49aa: $6f
  ld b, h                                         ; $49ab: $44
  ld c, l                                         ; $49ac: $4d
  ld hl, $cbd1                                    ; $49ad: $21 $d1 $cb
  ld a, [hl+]                                     ; $49b0: $2a
  ld h, [hl]                                      ; $49b1: $66
  ld l, a                                         ; $49b2: $6f
  ld de, $0003                                    ; $49b3: $11 $03 $00
  add hl, de                                      ; $49b6: $19
  ld a, [hl+]                                     ; $49b7: $2a
  ld h, [hl]                                      ; $49b8: $66
  ld l, a                                         ; $49b9: $6f
  ld d, h                                         ; $49ba: $54
  ld e, l                                         ; $49bb: $5d
  ld hl, $15f7                                    ; $49bc: $21 $f7 $15
  call Call_000_33f3                              ; $49bf: $cd $f3 $33

  db $01, $8d, $65

  ld hl, $cbd1                                    ; $49c5: $21 $d1 $cb
  ld a, [hl+]                                     ; $49c8: $2a
  ld h, [hl]                                      ; $49c9: $66
  ld l, a                                         ; $49ca: $6f
  ld de, $000b                                    ; $49cb: $11 $0b $00
  add hl, de                                      ; $49ce: $19
  ld a, [hl]                                      ; $49cf: $7e
  call Call_000_33f3                              ; $49d0: $cd $f3 $33

  db $01, $c5, $66

  ld hl, $cbd1                                    ; $49d6: $21 $d1 $cb
  ld a, [hl+]                                     ; $49d9: $2a
  ld h, [hl]                                      ; $49da: $66
  ld l, a                                         ; $49db: $6f
  ld de, $000d                                    ; $49dc: $11 $0d $00
  add hl, de                                      ; $49df: $19
  ld a, [hl]                                      ; $49e0: $7e
  call Call_000_33f3                              ; $49e1: $cd $f3 $33

  db $01, $c5, $66

  ld hl, $cbd1                                    ; $49e7: $21 $d1 $cb
  ld a, [hl+]                                     ; $49ea: $2a
  ld h, [hl]                                      ; $49eb: $66
  ld l, a                                         ; $49ec: $6f
  ld de, $0009                                    ; $49ed: $11 $09 $00
  add hl, de                                      ; $49f0: $19
  ld a, [hl]                                      ; $49f1: $7e
  add $64                                         ; $49f2: $c6 $64
  cpl                                             ; $49f4: $2f
  call Call_000_33f3                              ; $49f5: $cd $f3 $33

  db $01, $c5, $66

  ld hl, $cbd1                                    ; $49fb: $21 $d1 $cb
  ld a, [hl+]                                     ; $49fe: $2a
  ld h, [hl]                                      ; $49ff: $66
  ld l, a                                         ; $4a00: $6f
  ld de, $000c                                    ; $4a01: $11 $0c $00
  add hl, de                                      ; $4a04: $19
  ld a, [hl]                                      ; $4a05: $7e
  call Call_000_33f3                              ; $4a06: $cd $f3 $33

  db $01, $c5, $66

  ld hl, $cbd1                                    ; $4a0c: $21 $d1 $cb
  ld a, [hl+]                                     ; $4a0f: $2a
  ld h, [hl]                                      ; $4a10: $66
  ld l, a                                         ; $4a11: $6f
  ld de, $000e                                    ; $4a12: $11 $0e $00
  add hl, de                                      ; $4a15: $19
  ld a, [hl]                                      ; $4a16: $7e
  call Call_000_3427                              ; $4a17: $cd $27 $34

  db $01, $c5, $66

Call_007_4a1d:
jr_007_4a1d:
  ldh a, [$ffd3]                                  ; $4a1d: $f0 $d3
  ld b, a                                         ; $4a1f: $47
  add a                                           ; $4a20: $87
  add a                                           ; $4a21: $87
  add b                                           ; $4a22: $80
  ldh [$fff5], a                                  ; $4a23: $e0 $f5
  ld a, $12                                       ; $4a25: $3e $12
  ldh [$fff6], a                                  ; $4a27: $e0 $f6
  ld a, $05                                       ; $4a29: $3e $05
  ldh [$fff7], a                                  ; $4a2b: $e0 $f7
  ld a, $0b                                       ; $4a2d: $3e $0b
  ldh [$fff8], a                                  ; $4a2f: $e0 $f8
  ld bc, $0000                                    ; $4a31: $01 $00 $00
  ld de, $d0ac                                    ; $4a34: $11 $ac $d0
  ld hl, $d000                                    ; $4a37: $21 $00 $d0
  jp Jump_000_1380                                ; $4a3a: $c3 $80 $13


  ldh a, [$ffa6]                                  ; $4a3d: $f0 $a6
  bit 0, a                                        ; $4a3f: $cb $47
  jr nz, jr_007_4a52                              ; $4a41: $20 $0f

  bit 1, a                                        ; $4a43: $cb $4f
  jr nz, jr_007_4a89                              ; $4a45: $20 $42

  and $f0                                         ; $4a47: $e6 $f0
  ret z                                           ; $4a49: $c8

  call Call_000_33f3                              ; $4a4a: $cd $f3 $33

  db $06, $17, $51

  jr jr_007_4a1d                                  ; $4a50: $18 $cb

jr_007_4a52:
  ld a, $00                                       ; $4a52: $3e $00
  call Call_000_392b                              ; $4a54: $cd $2b $39
  xor a                                           ; $4a57: $af
  ld [$cc2c], a                                   ; $4a58: $ea $2c $cc
  call Call_000_33f3                              ; $4a5b: $cd $f3 $33

  db $04, $a8, $74

  call Call_007_4ae5                              ; $4a61: $cd $e5 $4a
  ldh a, [$ffd3]                                  ; $4a64: $f0 $d3
  ld [$cbb6], a                                   ; $4a66: $ea $b6 $cb
  call Call_007_4a9a                              ; $4a69: $cd $9a $4a
  ld a, $13                                       ; $4a6c: $3e $13
  ld [$cbe8], a                                   ; $4a6e: $ea $e8 $cb
  ld [$cbe9], a                                   ; $4a71: $ea $e9 $cb
  ldh a, [$ffd3]                                  ; $4a74: $f0 $d3
  inc a                                           ; $4a76: $3c
  ld d, $04                                       ; $4a77: $16 $04
  ld e, $00                                       ; $4a79: $1e $00
  call Call_000_33f3                              ; $4a7b: $cd $f3 $33

  db $04, $be, $6c

  call Call_007_4b49                              ; $4a81: $cd $49 $4b
  ld a, $14                                       ; $4a84: $3e $14
  jp Jump_000_261e                                ; $4a86: $c3 $1e $26


jr_007_4a89:
  ld a, $03                                       ; $4a89: $3e $03
  call Call_000_392b                              ; $4a8b: $cd $2b $39
  call Call_007_4b49                              ; $4a8e: $cd $49 $4b
  xor a                                           ; $4a91: $af
  ld [$cc2c], a                                   ; $4a92: $ea $2c $cc
  ld a, $11                                       ; $4a95: $3e $11
  jp Jump_000_261e                                ; $4a97: $c3 $1e $26


Call_007_4a9a:
  ld b, a                                         ; $4a9a: $47
  ldh [$ffbd], a                                  ; $4a9b: $e0 $bd
  ldh a, [rSVBK]                                  ; $4a9d: $f0 $70
  push af                                         ; $4a9f: $f5
  ld a, $06                                       ; $4aa0: $3e $06
  ldh [rSVBK], a                                  ; $4aa2: $e0 $70
  ldh a, [$ffbd]                                  ; $4aa4: $f0 $bd
  ld hl, $da70                                    ; $4aa6: $21 $70 $da
  rst $08                                         ; $4aa9: $cf
  ld a, [$cec3]                                   ; $4aaa: $fa $c3 $ce
  call Call_000_315f                              ; $4aad: $cd $5f $31
  ld a, [hl]                                      ; $4ab0: $7e
  cp $ff                                          ; $4ab1: $fe $ff
  jr z, jr_007_4ac4                               ; $4ab3: $28 $0f

  ld a, b                                         ; $4ab5: $78
  inc a                                           ; $4ab6: $3c
  call Call_000_33f3                              ; $4ab7: $cd $f3 $33
  inc b                                           ; $4aba: $04
  add c                                           ; $4abb: $81
  ld l, l                                         ; $4abc: $6d
  ld a, b                                         ; $4abd: $78
  ld hl, $d970                                    ; $4abe: $21 $70 $d9
  rst $08                                         ; $4ac1: $cf
  ld [hl], $01                                    ; $4ac2: $36 $01

jr_007_4ac4:
  pop af                                          ; $4ac4: $f1
  ldh [rSVBK], a                                  ; $4ac5: $e0 $70
  ret                                             ; $4ac7: $c9


Call_007_4ac8:
  inc a                                           ; $4ac8: $3c
  ldh [$ffbd], a                                  ; $4ac9: $e0 $bd
  ldh a, [rSVBK]                                  ; $4acb: $f0 $70
  push af                                         ; $4acd: $f5
  ld a, $06                                       ; $4ace: $3e $06
  ldh [rSVBK], a                                  ; $4ad0: $e0 $70
  ldh a, [$ffbd]                                  ; $4ad2: $f0 $bd
  call Call_000_33f3                              ; $4ad4: $cd $f3 $33

  db $04, $81, $6d

  ld a, b                                         ; $4ada: $78
  ld hl, $d970                                    ; $4adb: $21 $70 $d9
  rst $08                                         ; $4ade: $cf
  ld [hl], $00                                    ; $4adf: $36 $00
  pop af                                          ; $4ae1: $f1
  ldh [rSVBK], a                                  ; $4ae2: $e0 $70
  ret                                             ; $4ae4: $c9


Call_007_4ae5:
  call Call_007_4b49                              ; $4ae5: $cd $49 $4b
  rst $18                                         ; $4ae8: $df
  ld c, $7f                                       ; $4ae9: $0e $7f
  ld e, $14                                       ; $4aeb: $1e $14
  ld d, $0e                                       ; $4aed: $16 $0e
  ld hl, $0080                                    ; $4aef: $21 $80 $00
  ld b, $03                                       ; $4af2: $06 $03
  call Call_000_14a1                              ; $4af4: $cd $a1 $14
  rst $20                                         ; $4af7: $e7
  call Call_000_3363                              ; $4af8: $cd $63 $33
  rst $18                                         ; $4afb: $df
  ld c, $80                                       ; $4afc: $0e $80
  ld e, $06                                       ; $4afe: $1e $06
  ld d, $0c                                       ; $4b00: $16 $0c
  ld hl, $00ad                                    ; $4b02: $21 $ad $00
  ld b, $08                                       ; $4b05: $06 $08
  call Call_000_14a1                              ; $4b07: $cd $a1 $14
  ld hl, $4657                                    ; $4b0a: $21 $57 $46
  call Call_000_3013                              ; $4b0d: $cd $13 $30
  ld a, $30                                       ; $4b10: $3e $30
  ld [$c159], a                                   ; $4b12: $ea $59 $c1
  ld a, $01                                       ; $4b15: $3e $01
  ld [$c1a2], a                                   ; $4b17: $ea $a2 $c1
  ld hl, $15e8                                    ; $4b1a: $21 $e8 $15
  call Call_000_33f3                              ; $4b1d: $cd $f3 $33

  db $01, $28, $66

  ld hl, $15eb                                    ; $4b23: $21 $eb $15
  call Call_000_33f3                              ; $4b26: $cd $f3 $33

  db $01, $28, $66

  ld hl, $15ee                                    ; $4b2c: $21 $ee $15
  call Call_000_33f3                              ; $4b2f: $cd $f3 $33

  db $01, $28, $66

  ld hl, $15f1                                    ; $4b35: $21 $f1 $15
  call Call_000_33f3                              ; $4b38: $cd $f3 $33

  db $01, $28, $66

  ld hl, $15f4                                    ; $4b3e: $21 $f4 $15
  call Call_000_33f3                              ; $4b41: $cd $f3 $33

  db $01, $28, $66

  rst $20                                         ; $4b47: $e7
  ret                                             ; $4b48: $c9


Call_007_4b49:
  ld e, $00                                       ; $4b49: $1e $00

jr_007_4b4b:
  push de                                         ; $4b4b: $d5
  call Call_000_33f3                              ; $4b4c: $cd $f3 $33

  db $04, $ee, $78

  pop de                                          ; $4b52: $d1
  inc e                                           ; $4b53: $1c
  ld a, e                                         ; $4b54: $7b
  cp $06                                          ; $4b55: $fe $06
  jr nz, jr_007_4b4b                              ; $4b57: $20 $f2

  ret                                             ; $4b59: $c9


Call_007_4b5a:
  ld hl, $4668                                    ; $4b5a: $21 $68 $46
  rst $08                                         ; $4b5d: $cf
  ld bc, $6029                                    ; $4b5e: $01 $29 $60
  ld hl, $0080                                    ; $4b61: $21 $80 $00
  push af                                         ; $4b64: $f5
  call Call_000_33f3                              ; $4b65: $cd $f3 $33

  db $00, $4f, $10

  call Call_000_33f3                              ; $4b6b: $cd $f3 $33

  db $01, $53, $41

  pop af                                          ; $4b71: $f1
  ld hl, $6251                                    ; $4b72: $21 $51 $62
  call Call_000_33f3                              ; $4b75: $cd $f3 $33

  db $00, $b1, $10

  ld a, $1e                                       ; $4b7b: $3e $1e
  ld [$c07f], a                                   ; $4b7d: $ea $7f $c0
  ld hl, $c081                                    ; $4b80: $21 $81 $c0
  ld a, [hl+]                                     ; $4b83: $2a
  ld h, [hl]                                      ; $4b84: $66
  ld l, a                                         ; $4b85: $6f
  ld de, $0020                                    ; $4b86: $11 $20 $00
  add hl, de                                      ; $4b89: $19
  ld a, l                                         ; $4b8a: $7d
  ld [$c081], a                                   ; $4b8b: $ea $81 $c0
  ld a, h                                         ; $4b8e: $7c
  ld [$c082], a                                   ; $4b8f: $ea $82 $c0
  ret                                             ; $4b92: $c9


  db $0c, $ce, $17, $09, $d1, $17, $08, $d4, $17, $0a, $d7, $17, $07, $da, $17, $10
  db $01, $a9, $4b, $b8, $00, $41, $81, $d0, $a1, $d0, $c1, $d0, $e1, $d0, $01, $d1
  db $cd, $e5, $47, $3e, $0c, $cd, $f3, $33, $04, $f4, $6b, $b7, $20, $0a, $3e, $0c
  db $ea, $d0, $cb, $3e, $15, $c3, $1e, $26, $cd, $78, $4c, $21, $a2, $4b, $cd, $13
  db $30

  ld a, $7c                                       ; $4bd4: $3e $7c
  ld [$c159], a                                   ; $4bd6: $ea $59 $c1
  ld a, $01                                       ; $4bd9: $3e $01
  ld [$c1a2], a                                   ; $4bdb: $ea $a2 $c1
  ld b, $00                                       ; $4bde: $06 $00

jr_007_4be0:
  ld hl, $4b93                                    ; $4be0: $21 $93 $4b
  ld a, b                                         ; $4be3: $78
  call Call_000_3173                              ; $4be4: $cd $73 $31
  ld a, [hl+]                                     ; $4be7: $2a
  ld c, a                                         ; $4be8: $4f
  ld a, [hl+]                                     ; $4be9: $2a
  ld h, [hl]                                      ; $4bea: $66
  ld l, a                                         ; $4beb: $6f
  push bc                                         ; $4bec: $c5
  push hl                                         ; $4bed: $e5
  ld a, c                                         ; $4bee: $79
  call Call_000_33f3                              ; $4bef: $cd $f3 $33

  db $04, $f4, $6b

  pop hl                                          ; $4bf5: $e1
  pop bc                                          ; $4bf6: $c1
  push af                                         ; $4bf7: $f5
  ld a, b                                         ; $4bf8: $78
  ld hl, $cb3f                                    ; $4bf9: $21 $3f $cb
  rst $08                                         ; $4bfc: $cf
  pop af                                          ; $4bfd: $f1
  ld [hl], a                                      ; $4bfe: $77
  or a                                            ; $4bff: $b7
  jr nz, jr_007_4c07                              ; $4c00: $20 $05

  ld a, $12                                       ; $4c02: $3e $12
  ld [$c15a], a                                   ; $4c04: $ea $5a $c1

jr_007_4c07:
  ld hl, $17ce                                    ; $4c07: $21 $ce $17
  ld a, b                                         ; $4c0a: $78
  call Call_000_33f3                              ; $4c0b: $cd $f3 $33

  db $01, $75, $66

  ld a, $10                                       ; $4c11: $3e $10
  ld [$c15a], a                                   ; $4c13: $ea $5a $c1
  inc b                                           ; $4c16: $04
  ld a, b                                         ; $4c17: $78
  cp $05                                          ; $4c18: $fe $05
  jr nz, jr_007_4be0                              ; $4c1a: $20 $c4

  xor a                                           ; $4c1c: $af
  ld hl, $46d9                                    ; $4c1d: $21 $d9 $46
  call Call_000_33f3                              ; $4c20: $cd $f3 $33

  db $06, $fd, $50

  ld a, $04                                       ; $4c26: $3e $04
  ld [$cc2c], a                                   ; $4c28: $ea $2c $cc
  ret                                             ; $4c2b: $c9


  ldh a, [$ffd0]                                  ; $4c2c: $f0 $d0
  res 7, a                                        ; $4c2e: $cb $bf
  cp $18                                          ; $4c30: $fe $18
  ret nz                                          ; $4c32: $c0

  ldh a, [$ffa6]                                  ; $4c33: $f0 $a6
  bit 0, a                                        ; $4c35: $cb $47
  jr nz, jr_007_4c52                              ; $4c37: $20 $19

  bit 1, a                                        ; $4c39: $cb $4f
  jr nz, jr_007_4c6b                              ; $4c3b: $20 $2e

jr_007_4c3d:
  ldh a, [$ffa6]                                  ; $4c3d: $f0 $a6
  and $c0                                         ; $4c3f: $e6 $c0
  ret z                                           ; $4c41: $c8

  call Call_000_33f3                              ; $4c42: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffd3]                                  ; $4c48: $f0 $d3
  ld hl, $cb3f                                    ; $4c4a: $21 $3f $cb
  rst $08                                         ; $4c4d: $cf
  or a                                            ; $4c4e: $b7
  jr z, jr_007_4c3d                               ; $4c4f: $28 $ec

  ret                                             ; $4c51: $c9


jr_007_4c52:
  ld a, $00                                       ; $4c52: $3e $00
  call Call_000_392b                              ; $4c54: $cd $2b $39
  ldh a, [$ffd3]                                  ; $4c57: $f0 $d3
  ld hl, $4b93                                    ; $4c59: $21 $93 $4b
  call Call_000_3173                              ; $4c5c: $cd $73 $31
  ld a, [hl]                                      ; $4c5f: $7e
  ld [$cbd0], a                                   ; $4c60: $ea $d0 $cb
  call Call_007_4c78                              ; $4c63: $cd $78 $4c
  ld a, $15                                       ; $4c66: $3e $15
  jp Jump_000_261e                                ; $4c68: $c3 $1e $26


jr_007_4c6b:
  ld a, $03                                       ; $4c6b: $3e $03
  call Call_000_392b                              ; $4c6d: $cd $2b $39
  call Call_007_4c78                              ; $4c70: $cd $78 $4c
  ld a, $0f                                       ; $4c73: $3e $0f
  jp Jump_000_261e                                ; $4c75: $c3 $1e $26


Call_007_4c78:
  rst $18                                         ; $4c78: $df
  ld c, $7f                                       ; $4c79: $0e $7f
  ld e, $14                                       ; $4c7b: $1e $14
  ld d, $0e                                       ; $4c7d: $16 $0e
  ld hl, $0080                                    ; $4c7f: $21 $80 $00
  ld b, $03                                       ; $4c82: $06 $03
  call Call_000_14a1                              ; $4c84: $cd $a1 $14
  rst $20                                         ; $4c87: $e7
  jp Jump_000_3363                                ; $4c88: $c3 $63 $33


  ld bc, $803f                                    ; $4c8b: $01 $3f $80
  nop                                             ; $4c8e: $00
  nop                                             ; $4c8f: $00
  nop                                             ; $4c90: $00
  sbc c                                           ; $4c91: $99
  ld h, $00                                       ; $4c92: $26 $00
  ld [bc], a                                      ; $4c94: $02
  nop                                             ; $4c95: $00
  ld [bc], a                                      ; $4c96: $02
  db $10                                          ; $4c97: $10
  ld bc, $4c9e                                    ; $4c98: $01 $9e $4c
  ld de, $4001                                    ; $4c9b: $11 $01 $40
  ld a, [bc]                                      ; $4c9e: $0a
  jp nc, $d22a                                    ; $4c9f: $d2 $2a $d2

  inc b                                           ; $4ca2: $04
  ld [de], a                                      ; $4ca3: $12
  dec h                                           ; $4ca4: $25
  ret nc                                          ; $4ca5: $d0

  ld [$2b12], sp                                  ; $4ca6: $08 $12 $2b
  ret nc                                          ; $4ca9: $d0

  inc c                                           ; $4caa: $0c
  ld [de], a                                      ; $4cab: $12
  jp Jump_000_10d0                                ; $4cac: $c3 $d0 $10


  ld [de], a                                      ; $4caf: $12
  ret z                                           ; $4cb0: $c8

  ret nc                                          ; $4cb1: $d0

  inc b                                           ; $4cb2: $04
  ld d, $cd                                       ; $4cb3: $16 $cd
  ret nc                                          ; $4cb5: $d0

  ld [$6316], sp                                  ; $4cb6: $08 $16 $63
  pop de                                          ; $4cb9: $d1
  inc c                                           ; $4cba: $0c
  ld d, $68                                       ; $4cbb: $16 $68
  pop de                                          ; $4cbd: $d1
  db $10                                          ; $4cbe: $10
  ld d, $6d                                       ; $4cbf: $16 $6d
  pop de                                          ; $4cc1: $d1
  ld hl, $4c8b                                    ; $4cc2: $21 $8b $4c
  jp Jump_000_2952                                ; $4cc5: $c3 $52 $29


  ld a, $45                                       ; $4cc8: $3e $45
  call Call_000_394b                              ; $4cca: $cd $4b $39
  ld hl, $7bbb                                    ; $4ccd: $21 $bb $7b
  call Call_000_33f3                              ; $4cd0: $cd $f3 $33
  inc bc                                          ; $4cd3: $03
  adc b                                           ; $4cd4: $88
  ld a, [hl]                                      ; $4cd5: $7e
  ld a, $18                                       ; $4cd6: $3e $18
  call Call_000_33f3                              ; $4cd8: $cd $f3 $33
  ld bc, $6921                                    ; $4cdb: $01 $21 $69
  xor a                                           ; $4cde: $af
  ld hl, $4634                                    ; $4cdf: $21 $34 $46
  call Call_000_33f3                              ; $4ce2: $cd $f3 $33
  ld b, $fd                                       ; $4ce5: $06 $fd
  ld d, b                                         ; $4ce7: $50
  ld hl, $ffb9                                    ; $4ce8: $21 $b9 $ff
  ld [hl], $00                                    ; $4ceb: $36 $00
  inc hl                                          ; $4ced: $23
  ld [hl], $00                                    ; $4cee: $36 $00
  ld a, $ae                                       ; $4cf0: $3e $ae
  call Call_000_33f3                              ; $4cf2: $cd $f3 $33
  nop                                             ; $4cf5: $00
  inc a                                           ; $4cf6: $3c
  ld [de], a                                      ; $4cf7: $12
  ld a, [$cbdc]                                   ; $4cf8: $fa $dc $cb
  and $07                                         ; $4cfb: $e6 $07
  ldh [$ffd3], a                                  ; $4cfd: $e0 $d3
  xor a                                           ; $4cff: $af
  ld [$cb3f], a                                   ; $4d00: $ea $3f $cb
  ldh [$ff9a], a                                  ; $4d03: $e0 $9a
  ld a, $ae                                       ; $4d05: $3e $ae
  call Call_000_04e0                              ; $4d07: $cd $e0 $04
  call Call_007_4df9                              ; $4d0a: $cd $f9 $4d
  call Call_007_4d5b                              ; $4d0d: $cd $5b $4d
  jp Jump_007_4d90                                ; $4d10: $c3 $90 $4d


  ldh a, [$ffa6]                                  ; $4d13: $f0 $a6
  bit 0, a                                        ; $4d15: $cb $47
  jr nz, jr_007_4d36                              ; $4d17: $20 $1d

  bit 3, a                                        ; $4d19: $cb $5f
  jr nz, jr_007_4d36                              ; $4d1b: $20 $19

  bit 1, a                                        ; $4d1d: $cb $4f
  jr nz, jr_007_4d51                              ; $4d1f: $20 $30

  and $f0                                         ; $4d21: $e6 $f0
  ret z                                           ; $4d23: $c8

  ldh [$ffa6], a                                  ; $4d24: $e0 $a6
  ldh a, [$ffd3]                                  ; $4d26: $f0 $d3
  push af                                         ; $4d28: $f5
  call Call_000_33f3                              ; $4d29: $cd $f3 $33
  ld b, $17                                       ; $4d2c: $06 $17
  ld d, c                                         ; $4d2e: $51
  pop bc                                          ; $4d2f: $c1
  ldh a, [$ffd3]                                  ; $4d30: $f0 $d3
  cp b                                            ; $4d32: $b8
  ret z                                           ; $4d33: $c8

  jr jr_007_4d90                                  ; $4d34: $18 $5a

jr_007_4d36:
  ld a, $00                                       ; $4d36: $3e $00
  call Call_000_392b                              ; $4d38: $cd $2b $39
  ldh a, [$ffd3]                                  ; $4d3b: $f0 $d3
  ld [$cbdc], a                                   ; $4d3d: $ea $dc $cb
  ld hl, $cdcf                                    ; $4d40: $21 $cf $cd
  call Call_000_32c8                              ; $4d43: $cd $c8 $32
  ret z                                           ; $4d46: $c8

  ld a, $4a                                       ; $4d47: $3e $4a
  ld [$cbde], a                                   ; $4d49: $ea $de $cb
  ld a, $3e                                       ; $4d4c: $3e $3e
  jp Jump_000_261e                                ; $4d4e: $c3 $1e $26


jr_007_4d51:
  ld a, $03                                       ; $4d51: $3e $03
  call Call_000_392b                              ; $4d53: $cd $2b $39
  ld a, $03                                       ; $4d56: $3e $03
  jp Jump_000_261e                                ; $4d58: $c3 $1e $26


Call_007_4d5b:
  ld b, $00                                       ; $4d5b: $06 $00

jr_007_4d5d:
  ld a, b                                         ; $4d5d: $78
  ld hl, $cdcf                                    ; $4d5e: $21 $cf $cd
  call Call_000_32c8                              ; $4d61: $cd $c8 $32
  jr z, jr_007_4d89                               ; $4d64: $28 $23

  ld a, b                                         ; $4d66: $78
  ld hl, $4ca2                                    ; $4d67: $21 $a2 $4c
  call Call_000_316b                              ; $4d6a: $cd $6b $31
  ld a, [hl+]                                     ; $4d6d: $2a
  ldh [$fff5], a                                  ; $4d6e: $e0 $f5
  ld a, [hl+]                                     ; $4d70: $2a
  ldh [$fff6], a                                  ; $4d71: $e0 $f6
  ld a, $04                                       ; $4d73: $3e $04
  ldh [$fff7], a                                  ; $4d75: $e0 $f7
  ldh [$fff8], a                                  ; $4d77: $e0 $f8
  ld a, [hl+]                                     ; $4d79: $2a
  ld h, [hl]                                      ; $4d7a: $66
  ld l, a                                         ; $4d7b: $6f
  ld d, h                                         ; $4d7c: $54
  ld e, l                                         ; $4d7d: $5d
  ld hl, $d000                                    ; $4d7e: $21 $00 $d0
  push bc                                         ; $4d81: $c5
  ld bc, $0000                                    ; $4d82: $01 $00 $00
  call Call_000_1380                              ; $4d85: $cd $80 $13
  pop bc                                          ; $4d88: $c1

jr_007_4d89:
  inc b                                           ; $4d89: $04
  ld a, b                                         ; $4d8a: $78
  cp $08                                          ; $4d8b: $fe $08
  jr nz, jr_007_4d5d                              ; $4d8d: $20 $ce

  ret                                             ; $4d8f: $c9


Jump_007_4d90:
jr_007_4d90:
  rst $18                                         ; $4d90: $df
  ld c, $98                                       ; $4d91: $0e $98
  ld e, $10                                       ; $4d93: $1e $10
  ld d, $02                                       ; $4d95: $16 $02
  ld b, $07                                       ; $4d97: $06 $07
  ld hl, $0202                                    ; $4d99: $21 $02 $02
  call Call_000_14a1                              ; $4d9c: $cd $a1 $14
  ld hl, $4c97                                    ; $4d9f: $21 $97 $4c
  call Call_000_3013                              ; $4da2: $cd $13 $30
  ld a, $6e                                       ; $4da5: $3e $6e
  ld [$c159], a                                   ; $4da7: $ea $59 $c1
  ld a, $02                                       ; $4daa: $3e $02
  ld [$c1a2], a                                   ; $4dac: $ea $a2 $c1
  ld a, [$cb3f]                                   ; $4daf: $fa $3f $cb
  xor $01                                         ; $4db2: $ee $01
  ld [$cb3f], a                                   ; $4db4: $ea $3f $cb
  swap a                                          ; $4db7: $cb $37
  add a                                           ; $4db9: $87
  ld hl, $0111                                    ; $4dba: $21 $11 $01
  rst $08                                         ; $4dbd: $cf
  ld a, l                                         ; $4dbe: $7d
  ld [$c15e], a                                   ; $4dbf: $ea $5e $c1
  ld a, h                                         ; $4dc2: $7c
  ld [$c15f], a                                   ; $4dc3: $ea $5f $c1
  ldh a, [$ffd3]                                  ; $4dc6: $f0 $d3
  ld hl, $cdcf                                    ; $4dc8: $21 $cf $cd
  call Call_000_32c8                              ; $4dcb: $cd $c8 $32
  jr nz, jr_007_4dd5                              ; $4dce: $20 $05

  ld hl, $2c26                                    ; $4dd0: $21 $26 $2c
  jr jr_007_4ddd                                  ; $4dd3: $18 $08

jr_007_4dd5:
  ld hl, $0019                                    ; $4dd5: $21 $19 $00
  ldh a, [$ffd3]                                  ; $4dd8: $f0 $d3
  call Call_000_3173                              ; $4dda: $cd $73 $31

jr_007_4ddd:
  call Call_000_33f3                              ; $4ddd: $cd $f3 $33
  ld bc, $6628                                    ; $4de0: $01 $28 $66
  rst $20                                         ; $4de3: $e7
  ret                                             ; $4de4: $c9


Call_007_4de5:
  ld hl, $cdcf                                    ; $4de5: $21 $cf $cd
  call Call_000_32c0                              ; $4de8: $cd $c0 $32
  call Call_000_3427                              ; $4deb: $cd $27 $34

  db $04, $68, $57

  ld e, [hl]                                      ; $4df1: $5e
  ret nz                                          ; $4df2: $c0

  inc b                                           ; $4df3: $04
  sbc b                                           ; $4df4: $98
  jr jr_007_4df7                                  ; $4df5: $18 $00

jr_007_4df7:
  pop bc                                          ; $4df7: $c1
  ld h, h                                         ; $4df8: $64

Call_007_4df9:
  ld hl, $4df1                                    ; $4df9: $21 $f1 $4d
  jp Jump_000_1a5c                                ; $4dfc: $c3 $5c $1a


  db $01, $45, $80, $00, $00, $00, $99, $26, $01, $02, $01, $02

  db $01                                          ; $4e0b: $01

  db $04

  db $08                                          ; $4e0d: $08
  inc c                                           ; $4e0e: $0c

  db $10, $a0, $00

  call c, Call_000_2c00                           ; $4e12: $dc $00 $2c
  db $01                                          ; $4e15: $01

  db $2c, $01

  sub b                                           ; $4e18: $90
  ld bc, $01f4                                    ; $4e19: $01 $f4 $01

  xor a                                           ; $4e1c: $af
  ldh [$ffa6], a                                  ; $4e1d: $e0 $a6
  ld a, $30                                       ; $4e1f: $3e $30
  call Call_000_394b                              ; $4e21: $cd $4b $39
  ld hl, $4dff                                    ; $4e24: $21 $ff $4d
  jp Jump_000_2952                                ; $4e27: $c3 $52 $29


  ld a, $06                                       ; $4e2a: $3e $06
  call Call_007_4de5                              ; $4e2c: $cd $e5 $4d
  ld hl, $7b8d                                    ; $4e2f: $21 $8d $7b
  call Call_000_33f3                              ; $4e32: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $ffb9                                    ; $4e38: $21 $b9 $ff
  ld [hl], $00                                    ; $4e3b: $36 $00
  inc hl                                          ; $4e3d: $23
  ld [hl], $00                                    ; $4e3e: $36 $00
  ld a, $c3                                       ; $4e40: $3e $c3
  call Call_000_33f3                              ; $4e42: $cd $f3 $33

  db $00, $38, $12

  ld a, $c5                                       ; $4e48: $3e $c5
  call Call_000_33f3                              ; $4e4a: $cd $f3 $33

  db $00, $38, $12

  ld a, $c4                                       ; $4e50: $3e $c4
  call Call_000_33f3                              ; $4e52: $cd $f3 $33

  db $00, $38, $12

  ld a, $32                                       ; $4e58: $3e $32
  ld [$cb4b], a                                   ; $4e5a: $ea $4b $cb
  ld a, $3c                                       ; $4e5d: $3e $3c
  ld [$cb52], a                                   ; $4e5f: $ea $52 $cb
  xor a                                           ; $4e62: $af
  ld [$cb4a], a                                   ; $4e63: $ea $4a $cb
  ld [$cb48], a                                   ; $4e66: $ea $48 $cb
  ld [$cb68], a                                   ; $4e69: $ea $68 $cb
  ldh [$ff9a], a                                  ; $4e6c: $e0 $9a
  ld [$cc00], a                                   ; $4e6e: $ea $00 $cc
  ld hl, $cb4e                                    ; $4e71: $21 $4e $cb
  ld [hl+], a                                     ; $4e74: $22
  ld [hl+], a                                     ; $4e75: $22
  ld hl, $cb58                                    ; $4e76: $21 $58 $cb
  ld bc, $0010                                    ; $4e79: $01 $10 $00
  call Call_000_1248                              ; $4e7c: $cd $48 $12
  ld a, $c5                                       ; $4e7f: $3e $c5
  call Call_000_04e0                              ; $4e81: $cd $e0 $04
  ld hl, $cb4c                                    ; $4e84: $21 $4c $cb
  ld [hl], e                                      ; $4e87: $73
  inc hl                                          ; $4e88: $23
  ld [hl], d                                      ; $4e89: $72
  ld a, $80                                       ; $4e8a: $3e $80
  ld [$cbff], a                                   ; $4e8c: $ea $ff $cb
  ld hl, $cb50                                    ; $4e8f: $21 $50 $cb
  ld [hl], $23                                    ; $4e92: $36 $23
  inc hl                                          ; $4e94: $23
  ld [hl], $00                                    ; $4e95: $36 $00
  call Call_007_520f                              ; $4e97: $cd $0f $52
  jp Jump_007_51f7                                ; $4e9a: $c3 $f7 $51


  call Call_000_33f3                              ; $4e9d: $cd $f3 $33

  db $06, $40, $52

  ret nz                                          ; $4ea3: $c0

  call Call_000_33f3                              ; $4ea4: $cd $f3 $33

  db $06, $22, $52

  ret nz                                          ; $4eaa: $c0

  call Call_007_5227                              ; $4eab: $cd $27 $52
  call Call_007_507f                              ; $4eae: $cd $7f $50
  ldh a, [$ffa6]                                  ; $4eb1: $f0 $a6
  bit 0, a                                        ; $4eb3: $cb $47
  jr nz, jr_007_4ef4                              ; $4eb5: $20 $3d

  ld a, [$cb48]                                   ; $4eb7: $fa $48 $cb
  or a                                            ; $4eba: $b7
  ret z                                           ; $4ebb: $c8

  ldh a, [$ffa5]                                  ; $4ebc: $f0 $a5
  bit 0, a                                        ; $4ebe: $cb $47
  jr nz, jr_007_4ed5                              ; $4ec0: $20 $13

  ld a, $54                                       ; $4ec2: $3e $54
  call Call_000_392b                              ; $4ec4: $cd $2b $39
  ld hl, $cb4c                                    ; $4ec7: $21 $4c $cb
  ld a, [hl+]                                     ; $4eca: $2a
  ld h, [hl]                                      ; $4ecb: $66
  ld l, a                                         ; $4ecc: $6f
  ld de, $0002                                    ; $4ecd: $11 $02 $00
  add hl, de                                      ; $4ed0: $19
  ld [hl], $02                                    ; $4ed1: $36 $02
  jr jr_007_4f45                                  ; $4ed3: $18 $70

jr_007_4ed5:
  ld a, [$cb48]                                   ; $4ed5: $fa $48 $cb
  inc a                                           ; $4ed8: $3c
  ld [$cb48], a                                   ; $4ed9: $ea $48 $cb
  cp $0a                                          ; $4edc: $fe $0a
  ret nz                                          ; $4ede: $c0

  dec a                                           ; $4edf: $3d
  ld [$cb48], a                                   ; $4ee0: $ea $48 $cb
  ld a, [$cb49]                                   ; $4ee3: $fa $49 $cb
  cp $04                                          ; $4ee6: $fe $04
  ret z                                           ; $4ee8: $c8

  inc a                                           ; $4ee9: $3c
  ld [$cb49], a                                   ; $4eea: $ea $49 $cb
  ld a, $01                                       ; $4eed: $3e $01
  ld [$cb48], a                                   ; $4eef: $ea $48 $cb
  jr jr_007_4f26                                  ; $4ef2: $18 $32

jr_007_4ef4:
  ld a, $53                                       ; $4ef4: $3e $53
  call Call_000_392b                              ; $4ef6: $cd $2b $39
  ld hl, $cb4c                                    ; $4ef9: $21 $4c $cb
  ld a, [hl+]                                     ; $4efc: $2a
  ld h, [hl]                                      ; $4efd: $66
  ld l, a                                         ; $4efe: $6f
  xor a                                           ; $4eff: $af
  ld [$cb49], a                                   ; $4f00: $ea $49 $cb
  inc a                                           ; $4f03: $3c
  ld de, $0002                                    ; $4f04: $11 $02 $00
  add hl, de                                      ; $4f07: $19
  ld [hl], a                                      ; $4f08: $77
  ld [$cb48], a                                   ; $4f09: $ea $48 $cb
  xor a                                           ; $4f0c: $af
  ldh [$ff9a], a                                  ; $4f0d: $e0 $9a
  ld a, $c4                                       ; $4f0f: $3e $c4
  call Call_000_04e0                              ; $4f11: $cd $e0 $04
  ld a, $01                                       ; $4f14: $3e $01
  ldh [$ff9a], a                                  ; $4f16: $e0 $9a
  ld a, $c4                                       ; $4f18: $3e $c4
  call Call_000_04e0                              ; $4f1a: $cd $e0 $04
  ld a, $02                                       ; $4f1d: $3e $02
  ldh [$ff9a], a                                  ; $4f1f: $e0 $9a
  ld a, $c4                                       ; $4f21: $3e $c4
  jp Jump_000_04e0                                ; $4f23: $c3 $e0 $04


jr_007_4f26:
  ld a, $07                                       ; $4f26: $3e $07
  ld hl, $cb49                                    ; $4f28: $21 $49 $cb
  sub [hl]                                        ; $4f2b: $96
  ld c, a                                         ; $4f2c: $4f
  ld b, $00                                       ; $4f2d: $06 $00

jr_007_4f2f:
  ld e, b                                         ; $4f2f: $58
  ld a, $c4                                       ; $4f30: $3e $c4
  call Call_000_0a46                              ; $4f32: $cd $46 $0a
  ld d, h                                         ; $4f35: $54
  ld e, l                                         ; $4f36: $5d
  ld hl, $0038                                    ; $4f37: $21 $38 $00
  add hl, de                                      ; $4f3a: $19
  ld [hl], c                                      ; $4f3b: $71
  inc hl                                          ; $4f3c: $23
  ld [hl], c                                      ; $4f3d: $71
  inc b                                           ; $4f3e: $04
  ld a, b                                         ; $4f3f: $78
  cp $03                                          ; $4f40: $fe $03
  jr nz, jr_007_4f2f                              ; $4f42: $20 $eb

  ret                                             ; $4f44: $c9


jr_007_4f45:
  ld hl, $cb4c                                    ; $4f45: $21 $4c $cb
  ld c, [hl]                                      ; $4f48: $4e
  inc hl                                          ; $4f49: $23
  ld b, [hl]                                      ; $4f4a: $46
  ld hl, $0006                                    ; $4f4b: $21 $06 $00
  add hl, bc                                      ; $4f4e: $09
  ld a, [hl]                                      ; $4f4f: $7e
  ld [$cb54], a                                   ; $4f50: $ea $54 $cb
  ld hl, $0009                                    ; $4f53: $21 $09 $00
  add hl, bc                                      ; $4f56: $09
  ld a, [hl]                                      ; $4f57: $7e
  ld [$cb55], a                                   ; $4f58: $ea $55 $cb
  ld a, [$cb49]                                   ; $4f5b: $fa $49 $cb
  or a                                            ; $4f5e: $b7
  jr z, jr_007_4f6a                               ; $4f5f: $28 $09

  call Call_007_4f82                              ; $4f61: $cd $82 $4f
  ld a, [$cb68]                                   ; $4f64: $fa $68 $cb
  or a                                            ; $4f67: $b7
  jr nz, jr_007_4f7a                              ; $4f68: $20 $10

jr_007_4f6a:
  ld e, $ff                                       ; $4f6a: $1e $ff
  ld a, $c4                                       ; $4f6c: $3e $c4
  call Call_000_0a46                              ; $4f6e: $cd $46 $0a
  jr nz, jr_007_4f7a                              ; $4f71: $20 $07

  ld b, h                                         ; $4f73: $44
  ld c, l                                         ; $4f74: $4d
  call Call_000_0dbb                              ; $4f75: $cd $bb $0d
  jr jr_007_4f6a                                  ; $4f78: $18 $f0

jr_007_4f7a:
  xor a                                           ; $4f7a: $af
  ld [$cb48], a                                   ; $4f7b: $ea $48 $cb
  ld [$cb49], a                                   ; $4f7e: $ea $49 $cb
  ret                                             ; $4f81: $c9


Call_007_4f82:
  ld a, [$cb49]                                   ; $4f82: $fa $49 $cb
  ld hl, $4e0b                                    ; $4f85: $21 $0b $4e
  rst $08                                         ; $4f88: $cf
  ldh [$ffb3], a                                  ; $4f89: $e0 $b3
  xor a                                           ; $4f8b: $af
  ld [$cb68], a                                   ; $4f8c: $ea $68 $cb
  ld [$cb69], a                                   ; $4f8f: $ea $69 $cb
  ld [$cb6a], a                                   ; $4f92: $ea $6a $cb
  ld hl, $cb58                                    ; $4f95: $21 $58 $cb
  ld b, $08                                       ; $4f98: $06 $08

Jump_007_4f9a:
  push bc                                         ; $4f9a: $c5
  push hl                                         ; $4f9b: $e5
  ld e, [hl]                                      ; $4f9c: $5e
  inc hl                                          ; $4f9d: $23
  ld d, [hl]                                      ; $4f9e: $56
  ld a, d                                         ; $4f9f: $7a
  or e                                            ; $4fa0: $b3
  jp z, Jump_007_5039                             ; $4fa1: $ca $39 $50

  push de                                         ; $4fa4: $d5
  ld hl, $cb4c                                    ; $4fa5: $21 $4c $cb
  ld c, [hl]                                      ; $4fa8: $4e
  inc hl                                          ; $4fa9: $23
  ld b, [hl]                                      ; $4faa: $46
  ld hl, $000b                                    ; $4fab: $21 $0b $00
  add hl, de                                      ; $4fae: $19
  ld a, [hl+]                                     ; $4faf: $2a
  ld h, [hl]                                      ; $4fb0: $66
  ld l, a                                         ; $4fb1: $6f
  push hl                                         ; $4fb2: $e5
  ld hl, $000b                                    ; $4fb3: $21 $0b $00
  add hl, bc                                      ; $4fb6: $09
  ld a, [hl+]                                     ; $4fb7: $2a
  ld h, [hl]                                      ; $4fb8: $66
  ld l, a                                         ; $4fb9: $6f
  call Call_000_007b                              ; $4fba: $cd $7b $00
  pop bc                                          ; $4fbd: $c1
  add hl, bc                                      ; $4fbe: $09
  push hl                                         ; $4fbf: $e5
  ld hl, $cb4c                                    ; $4fc0: $21 $4c $cb
  ld c, [hl]                                      ; $4fc3: $4e
  inc hl                                          ; $4fc4: $23
  ld b, [hl]                                      ; $4fc5: $46
  ld hl, $000d                                    ; $4fc6: $21 $0d $00
  add hl, de                                      ; $4fc9: $19
  ld a, [hl+]                                     ; $4fca: $2a
  ld h, [hl]                                      ; $4fcb: $66
  ld l, a                                         ; $4fcc: $6f
  push hl                                         ; $4fcd: $e5
  ld hl, $000d                                    ; $4fce: $21 $0d $00
  add hl, bc                                      ; $4fd1: $09
  ld a, [hl+]                                     ; $4fd2: $2a
  ld h, [hl]                                      ; $4fd3: $66
  ld l, a                                         ; $4fd4: $6f
  call Call_000_007b                              ; $4fd5: $cd $7b $00
  pop bc                                          ; $4fd8: $c1
  add hl, bc                                      ; $4fd9: $09
  pop de                                          ; $4fda: $d1
  call Call_000_008f                              ; $4fdb: $cd $8f $00
  call Call_000_0078                              ; $4fde: $cd $78 $00
  call Call_000_0061                              ; $4fe1: $cd $61 $00
  ld a, h                                         ; $4fe4: $7c
  or a                                            ; $4fe5: $b7
  jr nz, jr_007_5039                              ; $4fe6: $20 $51

  ldh a, [$ffb3]                                  ; $4fe8: $f0 $b3
  cp l                                            ; $4fea: $bd
  pop de                                          ; $4feb: $d1
  jr c, jr_007_5039                               ; $4fec: $38 $4b

  push de                                         ; $4fee: $d5
  ld b, d                                         ; $4fef: $42
  ld c, e                                         ; $4ff0: $4b
  call Call_007_51c8                              ; $4ff1: $cd $c8 $51
  pop de                                          ; $4ff4: $d1
  ld a, [$cb68]                                   ; $4ff5: $fa $68 $cb
  inc a                                           ; $4ff8: $3c
  ld [$cb68], a                                   ; $4ff9: $ea $68 $cb
  ld hl, $0002                                    ; $4ffc: $21 $02 $00
  add hl, de                                      ; $4fff: $19
  ld a, [hl]                                      ; $5000: $7e
  or a                                            ; $5001: $b7
  jr z, jr_007_5018                               ; $5002: $28 $14

  ld hl, $cb69                                    ; $5004: $21 $69 $cb
  ld a, [hl+]                                     ; $5007: $2a
  ld h, [hl]                                      ; $5008: $66
  ld l, a                                         ; $5009: $6f
  ld bc, $007d                                    ; $500a: $01 $7d $00
  add hl, bc                                      ; $500d: $09
  ld a, l                                         ; $500e: $7d
  ld [$cb69], a                                   ; $500f: $ea $69 $cb
  ld a, h                                         ; $5012: $7c
  ld [$cb6a], a                                   ; $5013: $ea $6a $cb
  jr jr_007_502a                                  ; $5016: $18 $12

jr_007_5018:
  ld hl, $cb69                                    ; $5018: $21 $69 $cb
  ld a, [hl+]                                     ; $501b: $2a
  ld h, [hl]                                      ; $501c: $66
  ld l, a                                         ; $501d: $6f
  ld bc, $0032                                    ; $501e: $01 $32 $00
  add hl, bc                                      ; $5021: $09
  ld a, l                                         ; $5022: $7d
  ld [$cb69], a                                   ; $5023: $ea $69 $cb
  ld a, h                                         ; $5026: $7c
  ld [$cb6a], a                                   ; $5027: $ea $6a $cb

jr_007_502a:
  xor a                                           ; $502a: $af
  ld hl, $000f                                    ; $502b: $21 $0f $00
  add hl, de                                      ; $502e: $19
  ld [hl+], a                                     ; $502f: $22
  ld [hl+], a                                     ; $5030: $22
  ld [hl+], a                                     ; $5031: $22
  ld [hl+], a                                     ; $5032: $22
  ld hl, $0001                                    ; $5033: $21 $01 $00
  add hl, de                                      ; $5036: $19
  ld [hl], $64                                    ; $5037: $36 $64

Jump_007_5039:
jr_007_5039:
  pop hl                                          ; $5039: $e1
  pop bc                                          ; $503a: $c1
  inc hl                                          ; $503b: $23
  inc hl                                          ; $503c: $23
  dec b                                           ; $503d: $05
  jp nz, Jump_007_4f9a                            ; $503e: $c2 $9a $4f

  ld a, [$cb68]                                   ; $5041: $fa $68 $cb
  or a                                            ; $5044: $b7
  jr z, jr_007_504c                               ; $5045: $28 $05

  ld a, $52                                       ; $5047: $3e $52
  call Call_000_392b                              ; $5049: $cd $2b $39

jr_007_504c:
  ld a, [$cb68]                                   ; $504c: $fa $68 $cb
  cp $02                                          ; $504f: $fe $02
  jr c, jr_007_5067                               ; $5051: $38 $14

  dec a                                           ; $5053: $3d
  ld b, a                                         ; $5054: $47

jr_007_5055:
  ld hl, $cb69                                    ; $5055: $21 $69 $cb
  ld a, [hl+]                                     ; $5058: $2a
  ld h, [hl]                                      ; $5059: $66
  ld l, a                                         ; $505a: $6f
  add hl, hl                                      ; $505b: $29
  ld a, l                                         ; $505c: $7d
  ld [$cb69], a                                   ; $505d: $ea $69 $cb
  ld a, h                                         ; $5060: $7c
  ld [$cb6a], a                                   ; $5061: $ea $6a $cb
  dec b                                           ; $5064: $05
  jr nz, jr_007_5055                              ; $5065: $20 $ee

jr_007_5067:
  ld hl, $cb4e                                    ; $5067: $21 $4e $cb
  ld e, [hl]                                      ; $506a: $5e
  inc hl                                          ; $506b: $23
  ld d, [hl]                                      ; $506c: $56
  ld hl, $cb69                                    ; $506d: $21 $69 $cb
  ld a, [hl+]                                     ; $5070: $2a
  ld h, [hl]                                      ; $5071: $66
  ld l, a                                         ; $5072: $6f
  add hl, de                                      ; $5073: $19
  ld a, l                                         ; $5074: $7d
  ld [$cb4e], a                                   ; $5075: $ea $4e $cb
  ld a, h                                         ; $5078: $7c
  ld [$cb4f], a                                   ; $5079: $ea $4f $cb
  jp Jump_007_51f7                                ; $507c: $c3 $f7 $51


Call_007_507f:
  ld a, [$cb4a]                                   ; $507f: $fa $4a $cb
  cp $06                                          ; $5082: $fe $06
  ret z                                           ; $5084: $c8

  ld a, [$cb4b]                                   ; $5085: $fa $4b $cb
  dec a                                           ; $5088: $3d
  ld [$cb4b], a                                   ; $5089: $ea $4b $cb
  ret nz                                          ; $508c: $c0

  ld a, $74                                       ; $508d: $3e $74
  call Call_000_28e6                              ; $508f: $cd $e6 $28
  add $0e                                         ; $5092: $c6 $0e
  ldh [$ff9d], a                                  ; $5094: $e0 $9d
  xor a                                           ; $5096: $af
  ldh [$ff9e], a                                  ; $5097: $e0 $9e
  ld a, $02                                       ; $5099: $3e $02
  call Call_000_28e6                              ; $509b: $cd $e6 $28
  ldh [$ff9f], a                                  ; $509e: $e0 $9f
  ld a, $02                                       ; $50a0: $3e $02
  call Call_000_28e6                              ; $50a2: $cd $e6 $28
  ldh [$ff9a], a                                  ; $50a5: $e0 $9a
  or a                                            ; $50a7: $b7
  jr nz, jr_007_50af                              ; $50a8: $20 $05

  ld hl, $fff6                                    ; $50aa: $21 $f6 $ff
  jr jr_007_50b2                                  ; $50ad: $18 $03

jr_007_50af:
  ld hl, $00aa                                    ; $50af: $21 $aa $00

jr_007_50b2:
  ld a, l                                         ; $50b2: $7d
  ldh [$ff9b], a                                  ; $50b3: $e0 $9b
  ld a, h                                         ; $50b5: $7c
  ldh [$ff9c], a                                  ; $50b6: $e0 $9c
  ld a, $c3                                       ; $50b8: $3e $c3
  call Call_000_04e0                              ; $50ba: $cd $e0 $04
  call Call_007_51e4                              ; $50bd: $cd $e4 $51
  ld a, [$cb4a]                                   ; $50c0: $fa $4a $cb
  inc a                                           ; $50c3: $3c
  ld [$cb4a], a                                   ; $50c4: $ea $4a $cb
  ld a, $32                                       ; $50c7: $3e $32
  call Call_000_28e6                              ; $50c9: $cd $e6 $28
  add $32                                         ; $50cc: $c6 $32
  ld [$cb4b], a                                   ; $50ce: $ea $4b $cb
  ret                                             ; $50d1: $c9


  xor a                                           ; $50d2: $af
  ld hl, $000f                                    ; $50d3: $21 $0f $00
  add hl, bc                                      ; $50d6: $09
  ld [hl+], a                                     ; $50d7: $22
  ld [hl+], a                                     ; $50d8: $22
  ld [hl+], a                                     ; $50d9: $22
  ld [hl], a                                      ; $50da: $77
  ldh a, [$ffa5]                                  ; $50db: $f0 $a5
  ld e, a                                         ; $50dd: $5f
  ldh a, [$ffa6]                                  ; $50de: $f0 $a6
  or e                                            ; $50e0: $b3
  ld hl, $0011                                    ; $50e1: $21 $11 $00
  add hl, bc                                      ; $50e4: $09
  ld de, $0000                                    ; $50e5: $11 $00 $00
  bit 6, a                                        ; $50e8: $cb $77
  jr z, jr_007_50f5                               ; $50ea: $28 $09

  ld [hl], $0c                                    ; $50ec: $36 $0c
  inc hl                                          ; $50ee: $23
  ld [hl], $fe                                    ; $50ef: $36 $fe
  ld d, $01                                       ; $50f1: $16 $01
  jr jr_007_5102                                  ; $50f3: $18 $0d

jr_007_50f5:
  bit 7, a                                        ; $50f5: $cb $7f
  jr z, jr_007_5102                               ; $50f7: $28 $09

  ld [hl], $f4                                    ; $50f9: $36 $f4
  inc hl                                          ; $50fb: $23
  ld [hl], $01                                    ; $50fc: $36 $01
  ld d, $02                                       ; $50fe: $16 $02
  jr jr_007_5102                                  ; $5100: $18 $00

jr_007_5102:
  ld hl, $000f                                    ; $5102: $21 $0f $00
  add hl, bc                                      ; $5105: $09
  bit 5, a                                        ; $5106: $cb $6f
  jr z, jr_007_5113                               ; $5108: $28 $09

  ld [hl], $0c                                    ; $510a: $36 $0c
  inc hl                                          ; $510c: $23
  ld [hl], $fe                                    ; $510d: $36 $fe
  ld e, $01                                       ; $510f: $1e $01
  jr jr_007_511e                                  ; $5111: $18 $0b

jr_007_5113:
  bit 4, a                                        ; $5113: $cb $67
  jr z, jr_007_511e                               ; $5115: $28 $07

  ld [hl], $f4                                    ; $5117: $36 $f4
  inc hl                                          ; $5119: $23
  ld [hl], $01                                    ; $511a: $36 $01
  ld e, $02                                       ; $511c: $1e $02

jr_007_511e:
  ld hl, $0006                                    ; $511e: $21 $06 $00
  add hl, bc                                      ; $5121: $09
  ld a, [hl]                                      ; $5122: $7e
  cp $0a                                          ; $5123: $fe $0a
  jr nc, jr_007_512f                              ; $5125: $30 $08

  ld a, e                                         ; $5127: $7b
  cp $01                                          ; $5128: $fe $01
  call z, Call_007_5155                           ; $512a: $cc $55 $51
  jr jr_007_5139                                  ; $512d: $18 $0a

jr_007_512f:
  cp $96                                          ; $512f: $fe $96
  jr c, jr_007_5139                               ; $5131: $38 $06

  ld a, e                                         ; $5133: $7b
  cp $02                                          ; $5134: $fe $02
  call z, Call_007_5155                           ; $5136: $cc $55 $51

jr_007_5139:
  ld hl, $0009                                    ; $5139: $21 $09 $00
  add hl, bc                                      ; $513c: $09
  ld a, [hl]                                      ; $513d: $7e
  cp $0a                                          ; $513e: $fe $0a
  jr nc, jr_007_514a                              ; $5140: $30 $08

  ld a, d                                         ; $5142: $7a
  cp $01                                          ; $5143: $fe $01
  call z, Call_007_515d                           ; $5145: $cc $5d $51
  jr jr_007_5154                                  ; $5148: $18 $0a

jr_007_514a:
  cp $86                                          ; $514a: $fe $86
  jr c, jr_007_5154                               ; $514c: $38 $06

  ld a, d                                         ; $514e: $7a
  cp $02                                          ; $514f: $fe $02
  call z, Call_007_515d                           ; $5151: $cc $5d $51

jr_007_5154:
  ret                                             ; $5154: $c9


Call_007_5155:
  xor a                                           ; $5155: $af
  ld hl, $000f                                    ; $5156: $21 $0f $00
  add hl, bc                                      ; $5159: $09
  ld [hl+], a                                     ; $515a: $22
  ld [hl], a                                      ; $515b: $77
  ret                                             ; $515c: $c9


Call_007_515d:
  xor a                                           ; $515d: $af
  ld hl, $0011                                    ; $515e: $21 $11 $00
  add hl, bc                                      ; $5161: $09
  ld [hl+], a                                     ; $5162: $22
  ld [hl], a                                      ; $5163: $77
  ret                                             ; $5164: $c9


  ld hl, $0005                                    ; $5165: $21 $05 $00
  add hl, bc                                      ; $5168: $09
  push hl                                         ; $5169: $e5
  ld hl, $cb4c                                    ; $516a: $21 $4c $cb
  ld a, [hl+]                                     ; $516d: $2a
  ld h, [hl]                                      ; $516e: $66
  ld l, a                                         ; $516f: $6f
  ld de, $0005                                    ; $5170: $11 $05 $00
  add hl, de                                      ; $5173: $19
  pop de                                          ; $5174: $d1
  jp Jump_000_0263                                ; $5175: $c3 $63 $02


  ld hl, $0001                                    ; $5178: $21 $01 $00
  add hl, bc                                      ; $517b: $09
  ld a, [hl]                                      ; $517c: $7e
  or a                                            ; $517d: $b7
  jr z, jr_007_51a4                               ; $517e: $28 $24

  cp $01                                          ; $5180: $fe $01
  jr z, jr_007_5192                               ; $5182: $28 $0e

  ld hl, $0009                                    ; $5184: $21 $09 $00
  add hl, bc                                      ; $5187: $09
  ld a, [hl+]                                     ; $5188: $2a
  ld h, [hl]                                      ; $5189: $66
  ld l, a                                         ; $518a: $6f
  ld de, $0082                                    ; $518b: $11 $82 $00
  rst $10                                         ; $518e: $d7
  ret nc                                          ; $518f: $d0

  jr jr_007_51c1                                  ; $5190: $18 $2f

jr_007_5192:
  ld hl, $0006                                    ; $5192: $21 $06 $00
  add hl, bc                                      ; $5195: $09
  ld a, [hl+]                                     ; $5196: $2a
  ld h, [hl]                                      ; $5197: $66
  ld l, a                                         ; $5198: $6f
  ld de, $0032                                    ; $5199: $11 $32 $00
  add hl, de                                      ; $519c: $19
  ld de, $0028                                    ; $519d: $11 $28 $00
  rst $10                                         ; $51a0: $d7
  ret c                                           ; $51a1: $d8

  jr jr_007_51b4                                  ; $51a2: $18 $10

jr_007_51a4:
  ld hl, $0006                                    ; $51a4: $21 $06 $00
  add hl, bc                                      ; $51a7: $09
  ld a, [hl+]                                     ; $51a8: $2a
  ld h, [hl]                                      ; $51a9: $66
  ld l, a                                         ; $51aa: $6f
  ld de, $0032                                    ; $51ab: $11 $32 $00
  add hl, de                                      ; $51ae: $19
  ld de, $00dc                                    ; $51af: $11 $dc $00
  rst $10                                         ; $51b2: $d7
  ret nc                                          ; $51b3: $d0

jr_007_51b4:
  ld a, [$cb4a]                                   ; $51b4: $fa $4a $cb
  dec a                                           ; $51b7: $3d
  ld [$cb4a], a                                   ; $51b8: $ea $4a $cb
  call Call_007_51c8                              ; $51bb: $cd $c8 $51
  jp Jump_000_0dbb                                ; $51be: $c3 $bb $0d


jr_007_51c1:
  ld hl, $0001                                    ; $51c1: $21 $01 $00
  add hl, bc                                      ; $51c4: $09
  ld [hl], $63                                    ; $51c5: $36 $63
  ret                                             ; $51c7: $c9


Call_007_51c8:
  ld hl, $cb58                                    ; $51c8: $21 $58 $cb
  ld d, $00                                       ; $51cb: $16 $00

jr_007_51cd:
  ld a, [hl+]                                     ; $51cd: $2a
  cp c                                            ; $51ce: $b9
  jr z, jr_007_51d4                               ; $51cf: $28 $03

  inc hl                                          ; $51d1: $23
  jr jr_007_51dd                                  ; $51d2: $18 $09

jr_007_51d4:
  ld a, [hl+]                                     ; $51d4: $2a
  cp b                                            ; $51d5: $b8
  jr nz, jr_007_51dd                              ; $51d6: $20 $05

  xor a                                           ; $51d8: $af
  dec hl                                          ; $51d9: $2b
  ld [hl-], a                                     ; $51da: $32
  ld [hl], a                                      ; $51db: $77
  ret                                             ; $51dc: $c9


jr_007_51dd:
  inc d                                           ; $51dd: $14
  ld a, d                                         ; $51de: $7a
  cp $08                                          ; $51df: $fe $08
  jr nz, jr_007_51cd                              ; $51e1: $20 $ea

  ret                                             ; $51e3: $c9


Call_007_51e4:
  ld hl, $cb58                                    ; $51e4: $21 $58 $cb
  ld b, $08                                       ; $51e7: $06 $08

jr_007_51e9:
  ld a, [hl+]                                     ; $51e9: $2a
  or [hl]                                         ; $51ea: $b6
  inc hl                                          ; $51eb: $23
  jr nz, jr_007_51f3                              ; $51ec: $20 $05

  dec hl                                          ; $51ee: $2b
  ld [hl], d                                      ; $51ef: $72
  dec hl                                          ; $51f0: $2b
  ld [hl], e                                      ; $51f1: $73
  ret                                             ; $51f2: $c9


jr_007_51f3:
  dec b                                           ; $51f3: $05
  jr nz, jr_007_51e9                              ; $51f4: $20 $f3

  ret                                             ; $51f6: $c9


Jump_007_51f7:
  rst $18                                         ; $51f7: $df
  ld hl, $cb4e                                    ; $51f8: $21 $4e $cb
  ld c, [hl]                                      ; $51fb: $4e
  inc hl                                          ; $51fc: $23
  ld b, [hl]                                      ; $51fd: $46
  ld hl, $d22b                                    ; $51fe: $21 $2b $d2
  ld de, $d72b                                    ; $5201: $11 $2b $d7
  ld a, $04                                       ; $5204: $3e $04
  call Call_000_33f3                              ; $5206: $cd $f3 $33

  db $08, $43, $7d

  jp RST_20                                       ; $520c: $c3 $20 $00


Call_007_520f:
Jump_007_520f:
  rst $18                                         ; $520f: $df
  ld hl, $cb50                                    ; $5210: $21 $50 $cb
  ld c, [hl]                                      ; $5213: $4e
  inc hl                                          ; $5214: $23
  ld b, [hl]                                      ; $5215: $46
  ld hl, $d00a                                    ; $5216: $21 $0a $d0
  ld de, $d50a                                    ; $5219: $11 $0a $d5
  ld a, $02                                       ; $521c: $3e $02
  call Call_000_33f3                              ; $521e: $cd $f3 $33

  db $08, $43, $7d

  jp RST_20                                       ; $5224: $c3 $20 $00


Call_007_5227:
  ld hl, $cb52                                    ; $5227: $21 $52 $cb
  dec [hl]                                        ; $522a: $35
  ret nz                                          ; $522b: $c0

  ld [hl], $3c                                    ; $522c: $36 $3c
  ld hl, $cb50                                    ; $522e: $21 $50 $cb
  dec [hl]                                        ; $5231: $35
  jp nz, Jump_007_520f                            ; $5232: $c2 $0f $52

  call Call_007_520f                              ; $5235: $cd $0f $52
  ld hl, $cb4e                                    ; $5238: $21 $4e $cb
  ld a, [hl+]                                     ; $523b: $2a
  ld h, [hl]                                      ; $523c: $66
  ld l, a                                         ; $523d: $6f
  ld a, l                                         ; $523e: $7d
  ld [$cbd6], a                                   ; $523f: $ea $d6 $cb
  ld a, h                                         ; $5242: $7c
  ld [$cbd7], a                                   ; $5243: $ea $d7 $cb
  call Call_000_38d6                              ; $5246: $cd $d6 $38
  ld a, [$cbde]                                   ; $5249: $fa $de $cb
  or a                                            ; $524c: $b7
  ld a, $3d                                       ; $524d: $3e $3d
  jp nz, Jump_000_261e                            ; $524f: $c2 $1e $26

  ldh a, [rSVBK]                                  ; $5252: $f0 $70
  push af                                         ; $5254: $f5
  ld a, $06                                       ; $5255: $3e $06
  ldh [rSVBK], a                                  ; $5257: $e0 $70
  ld a, $3f                                       ; $5259: $3e $3f
  ld [$ddc4], a                                   ; $525b: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $525e: $e0 $d6
  ld a, $01                                       ; $5260: $3e $01
  ldh [$ffd7], a                                  ; $5262: $e0 $d7
  ld a, $3f                                       ; $5264: $3e $3f
  ldh [$ffd8], a                                  ; $5266: $e0 $d8
  ld [$ddc5], a                                   ; $5268: $ea $c5 $dd
  pop af                                          ; $526b: $f1
  ldh [rSVBK], a                                  ; $526c: $e0 $70
  ld a, $02                                       ; $526e: $3e $02
  ld [$c0a0], a                                   ; $5270: $ea $a0 $c0
  ld a, $0b                                       ; $5273: $3e $0b
  jp Jump_000_261e                                ; $5275: $c3 $1e $26


  ld a, $1e                                       ; $5278: $3e $1e
  call Call_000_28e6                              ; $527a: $cd $e6 $28
  add $0f                                         ; $527d: $c6 $0f
  ld hl, $0002                                    ; $527f: $21 $02 $00
  add hl, bc                                      ; $5282: $09
  ld [hl], a                                      ; $5283: $77
  ret                                             ; $5284: $c9


  ld hl, $0001                                    ; $5285: $21 $01 $00
  add hl, bc                                      ; $5288: $09
  ld a, [hl]                                      ; $5289: $7e
  dec a                                           ; $528a: $3d
  ret z                                           ; $528b: $c8

  ld a, [$cb68]                                   ; $528c: $fa $68 $cb
  or a                                            ; $528f: $b7
  ret z                                           ; $5290: $c8

  xor a                                           ; $5291: $af
  ld [$cb68], a                                   ; $5292: $ea $68 $cb
  ld d, $00                                       ; $5295: $16 $00

jr_007_5297:
  ld e, d                                         ; $5297: $5a
  ld a, $c4                                       ; $5298: $3e $c4
  push de                                         ; $529a: $d5
  call Call_000_0a46                              ; $529b: $cd $46 $0a
  pop de                                          ; $529e: $d1
  ret nz                                          ; $529f: $c0

  inc d                                           ; $52a0: $14
  inc hl                                          ; $52a1: $23
  ld [hl], $64                                    ; $52a2: $36 $64
  jr jr_007_5297                                  ; $52a4: $18 $f1

  ld a, [$cbdd]                                   ; $52a6: $fa $dd $cb
  ld hl, $0001                                    ; $52a9: $21 $01 $00
  add hl, bc                                      ; $52ac: $09
  ld [hl], a                                      ; $52ad: $77
  ret                                             ; $52ae: $c9


  ld hl, $0002                                    ; $52af: $21 $02 $00
  add hl, bc                                      ; $52b2: $09
  ld a, [hl]                                      ; $52b3: $7e
  ld hl, $4e10                                    ; $52b4: $21 $10 $4e
  or a                                            ; $52b7: $b7
  jr z, jr_007_52bd                               ; $52b8: $28 $03

  ld hl, $4e16                                    ; $52ba: $21 $16 $4e

jr_007_52bd:
  ld a, [$cbdd]                                   ; $52bd: $fa $dd $cb
  call ResolveIndexedPointer16                              ; $52c0: $cd $8b $31
  push hl                                         ; $52c3: $e5
  ld hl, $0001                                    ; $52c4: $21 $01 $00
  add hl, bc                                      ; $52c7: $09
  ld a, [hl]                                      ; $52c8: $7e
  or a                                            ; $52c9: $b7
  jr z, jr_007_52d1                               ; $52ca: $28 $05

  pop hl                                          ; $52cc: $e1
  call Call_000_007b                              ; $52cd: $cd $7b $00
  push hl                                         ; $52d0: $e5

jr_007_52d1:
  ld hl, $000f                                    ; $52d1: $21 $0f $00
  add hl, bc                                      ; $52d4: $09
  pop de                                          ; $52d5: $d1
  ld [hl], e                                      ; $52d6: $73
  inc hl                                          ; $52d7: $23
  ld [hl], d                                      ; $52d8: $72
  ret                                             ; $52d9: $c9


  nop                                             ; $52da: $00
  nop                                             ; $52db: $00
  nop                                             ; $52dc: $00
  nop                                             ; $52dd: $00
  nop                                             ; $52de: $00
  nop                                             ; $52df: $00

  db $04, $02

  inc b                                           ; $52e2: $04
  ld [bc], a                                      ; $52e3: $02
  inc b                                           ; $52e4: $04
  ld [bc], a                                      ; $52e5: $02

  db $14, $04, $13, $01

  inc de                                          ; $52ea: $13
  ld bc, $0113                                    ; $52eb: $01 $13 $01
  inc de                                          ; $52ee: $13
  ld bc, $0122                                    ; $52ef: $01 $22 $01
  ld [hl+], a                                     ; $52f2: $22
  ld [bc], a                                      ; $52f3: $02

  db $4d, $03, $4d, $03, $36, $01, $4d, $03

  ld c, l                                         ; $52fc: $4d
  inc bc                                          ; $52fd: $03
  ld c, l                                         ; $52fe: $4d
  inc bc                                          ; $52ff: $03

  db $39, $01

  ld c, l                                         ; $5302: $4d
  inc bc                                          ; $5303: $03

  db $4d, $03

  ld c, l                                         ; $5306: $4d
  inc bc                                          ; $5307: $03
  ld c, l                                         ; $5308: $4d
  inc bc                                          ; $5309: $03
  ld c, l                                         ; $530a: $4d
  inc bc                                          ; $530b: $03
  ld c, l                                         ; $530c: $4d
  inc bc                                          ; $530d: $03
  ld c, l                                         ; $530e: $4d
  inc bc                                          ; $530f: $03
  ld c, l                                         ; $5310: $4d
  inc bc                                          ; $5311: $03
  ld c, l                                         ; $5312: $4d
  inc bc                                          ; $5313: $03
  ld c, l                                         ; $5314: $4d
  inc bc                                          ; $5315: $03
  ld c, l                                         ; $5316: $4d
  inc bc                                          ; $5317: $03

  db $4d, $03

  ld c, l                                         ; $531a: $4d
  inc bc                                          ; $531b: $03
  ld c, l                                         ; $531c: $4d
  inc bc                                          ; $531d: $03
  ld c, l                                         ; $531e: $4d
  inc bc                                          ; $531f: $03
  ld c, l                                         ; $5320: $4d
  inc bc                                          ; $5321: $03
  ld c, l                                         ; $5322: $4d
  inc bc                                          ; $5323: $03
  ld c, l                                         ; $5324: $4d
  inc bc                                          ; $5325: $03
  ld c, l                                         ; $5326: $4d
  inc bc                                          ; $5327: $03
  ld b, d                                         ; $5328: $42
  ld bc, $0142                                    ; $5329: $01 $42 $01

  db $4d, $03

  ld c, l                                         ; $532e: $4d
  inc bc                                          ; $532f: $03

  db $57, $02

  ld c, l                                         ; $5332: $4d
  inc bc                                          ; $5333: $03

  db $4d, $03

  ld c, l                                         ; $5336: $4d
  inc bc                                          ; $5337: $03
  ld c, l                                         ; $5338: $4d
  inc bc                                          ; $5339: $03
  ld c, l                                         ; $533a: $4d
  inc bc                                          ; $533b: $03
  ld c, l                                         ; $533c: $4d
  inc bc                                          ; $533d: $03
  ld c, l                                         ; $533e: $4d
  inc bc                                          ; $533f: $03
  ld c, l                                         ; $5340: $4d
  inc bc                                          ; $5341: $03
  ld c, l                                         ; $5342: $4d
  inc bc                                          ; $5343: $03
  ld c, l                                         ; $5344: $4d
  inc bc                                          ; $5345: $03
  ld c, l                                         ; $5346: $4d
  inc bc                                          ; $5347: $03
  ld c, l                                         ; $5348: $4d
  inc bc                                          ; $5349: $03
  ld c, l                                         ; $534a: $4d
  inc bc                                          ; $534b: $03
  ld c, l                                         ; $534c: $4d
  inc bc                                          ; $534d: $03
  ld c, l                                         ; $534e: $4d
  inc bc                                          ; $534f: $03

  db $33, $04

  ld l, l                                         ; $5352: $6d
  ld bc, $034d                                    ; $5353: $01 $4d $03
  ld c, l                                         ; $5356: $4d
  inc bc                                          ; $5357: $03
  ld c, l                                         ; $5358: $4d
  inc bc                                          ; $5359: $03
  ld c, l                                         ; $535a: $4d
  inc bc                                          ; $535b: $03
  ld [hl], b                                      ; $535c: $70
  ld bc, $034d                                    ; $535d: $01 $4d $03

  db $c0, $00, $d8, $00, $c0, $00, $d8, $00, $c0, $00

  ret nz                                          ; $536a: $c0

  ld bc, $00c0                                    ; $536b: $01 $c0 $00

  db $e0, $01, $60, $03, $70, $03, $e8, $01

  add sp, $01                                     ; $5376: $e8 $01

  db $e8, $01, $00, $02, $e8, $01, $e8, $01, $10, $02, $18, $02, $18, $02, $20, $02
  db $28, $02, $30, $02, $38, $02

  ld b, b                                         ; $538e: $40
  ld [bc], a                                      ; $538f: $02

  db $50, $02, $58, $02, $60, $02, $10, $02, $68, $02

  ld [hl], b                                      ; $539a: $70
  ld [bc], a                                      ; $539b: $02

  db $78, $02

  add b                                           ; $539e: $80
  ld [bc], a                                      ; $539f: $02

  db $88, $02, $50, $02

  ld d, b                                         ; $53a4: $50
  ld [bc], a                                      ; $53a5: $02

  db $90, $02, $98, $02, $a0, $02, $a8, $02, $b0, $02, $b8, $02

  ld l, b                                         ; $53b2: $68
  ld [bc], a                                      ; $53b3: $02
  ld l, b                                         ; $53b4: $68
  ld [bc], a                                      ; $53b5: $02

  db $28, $03, $e0, $01, $c0, $02, $c8, $02

  ret nc                                          ; $53be: $d0

  inc bc                                          ; $53bf: $03

  db $d8, $02, $e0, $02, $e8, $02, $c0, $00, $c0, $00, $c0, $00, $c0, $00, $c0, $00
  db $c0, $00

  ret nz                                          ; $53d2: $c0

  nop                                             ; $53d3: $00
  ret nz                                          ; $53d4: $c0

  nop                                             ; $53d5: $00
  ret nz                                          ; $53d6: $c0

  nop                                             ; $53d7: $00
  ret nz                                          ; $53d8: $c0

  nop                                             ; $53d9: $00
  ret nz                                          ; $53da: $c0

  ld bc, $02f0                                    ; $53db: $01 $f0 $02

  db $28, $02

  ld c, b                                         ; $53e0: $48
  inc bc                                          ; $53e1: $03
  ld d, b                                         ; $53e2: $50
  inc bc                                          ; $53e3: $03

  db $58, $03

  ld c, b                                         ; $53e6: $48
  inc bc                                          ; $53e7: $03

  db $50, $03, $40, $03, $68, $03, $c8, $03, $b0, $03, $48, $03

  ret nz                                          ; $53f4: $c0

  inc bc                                          ; $53f5: $03

  db $e8, $03, $48, $03

  sub b                                           ; $53fa: $90
  inc bc                                          ; $53fb: $03
  ld a, b                                         ; $53fc: $78
  inc bc                                          ; $53fd: $03
  add b                                           ; $53fe: $80
  inc bc                                          ; $53ff: $03

  db $88, $03, $e0, $03

  or b                                            ; $5404: $b0
  inc bc                                          ; $5405: $03

  db $d0, $0e

  cp b                                            ; $5408: $b8
  inc bc                                          ; $5409: $03

  db $b0, $03

  ldh [$ff03], a                                  ; $540c: $e0 $03

  db $d0, $0e, $d0, $02

  ret c                                           ; $5412: $d8

  inc bc                                          ; $5413: $03

  db $98, $03, $a0, $03

  or b                                            ; $5418: $b0
  inc bc                                          ; $5419: $03

  db $a0, $03, $b0, $03, $40, $03, $a8, $03, $40, $03

  ret z                                           ; $5424: $c8

  db $01                                          ; $5425: $01

  db $b0, $01, $e0, $00, $b0, $01, $b8, $01, $b0, $01

  or b                                            ; $5430: $b0
  ld bc, $00c8                                    ; $5431: $01 $c8 $00

  db $8c, $24, $84, $44, $8c, $64, $18, $24, $30, $44, $18, $64

  inc a                                           ; $5440: $3c
  ld b, h                                         ; $5441: $44
  inc h                                           ; $5442: $24
  ld a, d                                         ; $5443: $7a

  db $8c, $0a, $84, $2a, $8c, $4a, $18, $0e, $30, $2a, $18, $4e, $74, $1e, $6c, $3e
  db $74, $5e, $30, $1e, $48, $3e, $30, $5e

  nop                                             ; $545c: $00
  ld d, c                                         ; $545d: $51
  ld bc, $1716                                    ; $545e: $01 $16 $17
  jr jr_007_54bc                                  ; $5461: $18 $59

  rst $38                                         ; $5463: $ff
  ld [bc], a                                      ; $5464: $02
  dec b                                           ; $5465: $05
  ld b, $33                                       ; $5466: $06 $33
  ld b, e                                         ; $5468: $43
  ld c, c                                         ; $5469: $49
  ld c, d                                         ; $546a: $4a
  ld c, e                                         ; $546b: $4b
  ld c, h                                         ; $546c: $4c
  ld c, l                                         ; $546d: $4d
  ld c, [hl]                                      ; $546e: $4e
  rst $38                                         ; $546f: $ff

  ld hl, $5360                                    ; $5470: $21 $60 $53
  call Call_000_3182                              ; $5473: $cd $82 $31
  call Call_000_3427                              ; $5476: $cd $27 $34

  db $03, $63, $78

  ld a, [$cc2a]                                   ; $547c: $fa $2a $cc
  dec a                                           ; $547f: $3d
  cp $05                                          ; $5480: $fe $05
  jr nz, jr_007_5498                              ; $5482: $20 $14

  ld hl, $0006                                    ; $5484: $21 $06 $00
  add hl, bc                                      ; $5487: $09
  ld a, $70                                       ; $5488: $3e $70
  ld [hl+], a                                     ; $548a: $22
  ld [hl], $00                                    ; $548b: $36 $00
  ld hl, $0044                                    ; $548d: $21 $44 $00
  add hl, bc                                      ; $5490: $09
  ld a, $14                                       ; $5491: $3e $14
  ld [hl], a                                      ; $5493: $77
  ld [$cdac], a                                   ; $5494: $ea $ac $cd
  ret                                             ; $5497: $c9


jr_007_5498:
  cp $04                                          ; $5498: $fe $04
  jr nz, jr_007_54b0                              ; $549a: $20 $14

  ld hl, $0006                                    ; $549c: $21 $06 $00
  add hl, bc                                      ; $549f: $09
  ld a, $66                                       ; $54a0: $3e $66
  ld [hl+], a                                     ; $54a2: $22
  ld [hl], $00                                    ; $54a3: $36 $00
  ld hl, $0044                                    ; $54a5: $21 $44 $00
  add hl, bc                                      ; $54a8: $09
  ld a, $0f                                       ; $54a9: $3e $0f
  ld [hl], a                                      ; $54ab: $77
  ld [$cdac], a                                   ; $54ac: $ea $ac $cd
  ret                                             ; $54af: $c9


jr_007_54b0:
  ld hl, $0006                                    ; $54b0: $21 $06 $00
  add hl, bc                                      ; $54b3: $09
  ld a, $36                                       ; $54b4: $3e $36
  ld [hl+], a                                     ; $54b6: $22
  ld [hl], $00                                    ; $54b7: $36 $00
  ld hl, $0044                                    ; $54b9: $21 $44 $00

jr_007_54bc:
  add hl, bc                                      ; $54bc: $09
  ld a, $0a                                       ; $54bd: $3e $0a
  ld [hl], a                                      ; $54bf: $77
  ld [$cdac], a                                   ; $54c0: $ea $ac $cd
  ret                                             ; $54c3: $c9


  ld hl, $0006                                    ; $54c4: $21 $06 $00
  add hl, bc                                      ; $54c7: $09
  ld a, $5a                                       ; $54c8: $3e $5a
  ld [hl+], a                                     ; $54ca: $22
  ld [hl], $00                                    ; $54cb: $36 $00
  ld hl, $0044                                    ; $54cd: $21 $44 $00
  add hl, bc                                      ; $54d0: $09
  ld a, $12                                       ; $54d1: $3e $12
  ld [hl], a                                      ; $54d3: $77
  ld [$cdac], a                                   ; $54d4: $ea $ac $cd
  ret                                             ; $54d7: $c9


  ret                                             ; $54d8: $c9


  db $70, $01, $78, $01, $80, $01, $88, $01, $90, $01, $98, $01

  and b                                           ; $54e5: $a0
  ld bc, $01a8                                    ; $54e6: $01 $a8 $01

  xor a                                           ; $54e9: $af
  ld [$cb6a], a                                   ; $54ea: $ea $6a $cb
  ld [$cb6b], a                                   ; $54ed: $ea $6b $cb
  ld hl, $0043                                    ; $54f0: $21 $43 $00
  add hl, bc                                      ; $54f3: $09
  ld a, [hl]                                      ; $54f4: $7e
  ld hl, $54d9                                    ; $54f5: $21 $d9 $54
  call Call_000_3182                              ; $54f8: $cd $82 $31
  call Call_000_3427                              ; $54fb: $cd $27 $34

  db $03, $63, $78

  ld a, [$cc29]                                   ; $5501: $fa $29 $cc
  ldh [$ff9a], a                                  ; $5504: $e0 $9a
  ret                                             ; $5506: $c9


  call Call_000_2fc9                              ; $5507: $cd $c9 $2f
  inc a                                           ; $550a: $3c
  ldh [$ff9f], a                                  ; $550b: $e0 $9f
  ret                                             ; $550d: $c9


  ld a, $ff                                       ; $550e: $3e $ff
  ldh [$ff9f], a                                  ; $5510: $e0 $9f
  ret                                             ; $5512: $c9


  ld hl, $002a                                    ; $5513: $21 $2a $00
  add hl, bc                                      ; $5516: $09
  res 0, [hl]                                     ; $5517: $cb $86
  ld a, [$cc2c]                                   ; $5519: $fa $2c $cc
  and $04                                         ; $551c: $e6 $04
  ret nz                                          ; $551e: $c0

  set 0, [hl]                                     ; $551f: $cb $c6
  ret                                             ; $5521: $c9


  call Call_000_2fc9                              ; $5522: $cd $c9 $2f
  or a                                            ; $5525: $b7
  jp StoreCPUFlags                                ; $5526: $c3 $39 $00


  call Call_000_2fc9                              ; $5529: $cd $c9 $2f
  cp $02                                          ; $552c: $fe $02
  jp StoreCPUFlags                                ; $552e: $c3 $39 $00


  call Call_000_2fc1                              ; $5531: $cd $c1 $2f
  cp $07                                          ; $5534: $fe $07
  jr c, jr_007_5562                               ; $5536: $38 $2a

  cp $2a                                          ; $5538: $fe $2a
  jr z, jr_007_556a                               ; $553a: $28 $2e

  cp $33                                          ; $553c: $fe $33
  jr z, jr_007_556f                               ; $553e: $28 $2f

  cp $37                                          ; $5540: $fe $37
  jr z, jr_007_5574                               ; $5542: $28 $30

  cp $38                                          ; $5544: $fe $38
  jr z, jr_007_5579                               ; $5546: $28 $31

  cp $39                                          ; $5548: $fe $39
  jr z, jr_007_557e                               ; $554a: $28 $32

  cp $3a                                          ; $554c: $fe $3a
  jr z, jr_007_5583                               ; $554e: $28 $33

  cp $3b                                          ; $5550: $fe $3b
  jr z, jr_007_5588                               ; $5552: $28 $34

  cp $3c                                          ; $5554: $fe $3c
  jr z, jr_007_558d                               ; $5556: $28 $35

  cp $3d                                          ; $5558: $fe $3d
  jr z, jr_007_5592                               ; $555a: $28 $36

  ld a, $02                                       ; $555c: $3e $02
  dec a                                           ; $555e: $3d
  jp StoreCPUFlags                                ; $555f: $c3 $39 $00


jr_007_5562:
  ld hl, $5426                                    ; $5562: $21 $26 $54
  call Call_000_3182                              ; $5565: $cd $82 $31
  jr jr_007_5595                                  ; $5568: $18 $2b

jr_007_556a:
  ld de, $0338                                    ; $556a: $11 $38 $03
  jr jr_007_5595                                  ; $556d: $18 $26

jr_007_556f:
  ld de, $02f8                                    ; $556f: $11 $f8 $02
  jr jr_007_5595                                  ; $5572: $18 $21

jr_007_5574:
  ld de, $01b0                                    ; $5574: $11 $b0 $01
  jr jr_007_5595                                  ; $5577: $18 $1c

jr_007_5579:
  ld de, $0300                                    ; $5579: $11 $00 $03
  jr jr_007_5595                                  ; $557c: $18 $17

jr_007_557e:
  ld de, $0308                                    ; $557e: $11 $08 $03
  jr jr_007_5595                                  ; $5581: $18 $12

jr_007_5583:
  ld de, $0310                                    ; $5583: $11 $10 $03
  jr jr_007_5595                                  ; $5586: $18 $0d

jr_007_5588:
  ld de, $0318                                    ; $5588: $11 $18 $03
  jr jr_007_5595                                  ; $558b: $18 $08

jr_007_558d:
  ld de, $0320                                    ; $558d: $11 $20 $03
  jr jr_007_5595                                  ; $5590: $18 $03

jr_007_5592:
  ld de, $01b0                                    ; $5592: $11 $b0 $01

jr_007_5595:
  call Call_000_33f3                              ; $5595: $cd $f3 $33

  db $03, $73, $78

  xor a                                           ; $559b: $af
  jp StoreCPUFlags                                ; $559c: $c3 $39 $00


  call Call_000_2fc1                              ; $559f: $cd $c1 $2f
  cp $03                                          ; $55a2: $fe $03
  jr c, jr_007_55ac                               ; $55a4: $38 $06

  ld a, $02                                       ; $55a6: $3e $02
  dec a                                           ; $55a8: $3d
  jp StoreCPUFlags                                ; $55a9: $c3 $39 $00


jr_007_55ac:
  xor a                                           ; $55ac: $af
  jp StoreCPUFlags                                ; $55ad: $c3 $39 $00


  xor a                                           ; $55b0: $af
  jp StoreCPUFlags                                ; $55b1: $c3 $39 $00


  ld a, $01                                       ; $55b4: $3e $01
  ld [$cc2a], a                                   ; $55b6: $ea $2a $cc
  ret                                             ; $55b9: $c9


  ld a, $02                                       ; $55ba: $3e $02
  ld [$cc2a], a                                   ; $55bc: $ea $2a $cc
  ret                                             ; $55bf: $c9


  ld a, $03                                       ; $55c0: $3e $03
  ld [$cc2a], a                                   ; $55c2: $ea $2a $cc
  ret                                             ; $55c5: $c9


  ld a, $04                                       ; $55c6: $3e $04
  ld [$cc2a], a                                   ; $55c8: $ea $2a $cc
  ret                                             ; $55cb: $c9


  ld a, $05                                       ; $55cc: $3e $05
  ld [$cc2a], a                                   ; $55ce: $ea $2a $cc
  ret                                             ; $55d1: $c9


  ld a, $06                                       ; $55d2: $3e $06
  ld [$cc2a], a                                   ; $55d4: $ea $2a $cc
  ret                                             ; $55d7: $c9


  ld a, $07                                       ; $55d8: $3e $07
  ld [$cc2a], a                                   ; $55da: $ea $2a $cc
  ret                                             ; $55dd: $c9


  ld a, [$cc2a]                                   ; $55de: $fa $2a $cc
  cp $07                                          ; $55e1: $fe $07
  jp StoreCPUFlags                                ; $55e3: $c3 $39 $00


  push bc                                         ; $55e6: $c5
  push de                                         ; $55e7: $d5
  ld a, [$cc2a]                                   ; $55e8: $fa $2a $cc
  dec a                                           ; $55eb: $3d
  ld e, a                                         ; $55ec: $5f
  ld a, $7b                                       ; $55ed: $3e $7b
  call Call_000_0a46                              ; $55ef: $cd $46 $0a
  jr nz, jr_007_5612                              ; $55f2: $20 $1e

  ld b, h                                         ; $55f4: $44
  ld c, l                                         ; $55f5: $4d
  ldh a, [rSVBK]                                  ; $55f6: $f0 $70
  push af                                         ; $55f8: $f5
  ld a, $05                                       ; $55f9: $3e $05
  ldh [rSVBK], a                                  ; $55fb: $e0 $70
  call Call_007_5f0f                              ; $55fd: $cd $0f $5f
  ld bc, $0005                                    ; $5600: $01 $05 $00
  add hl, bc                                      ; $5603: $09
  ld a, [hl+]                                     ; $5604: $2a
  ld h, [hl]                                      ; $5605: $66
  ld l, a                                         ; $5606: $6f
  pop af                                          ; $5607: $f1
  ldh [rSVBK], a                                  ; $5608: $e0 $70
  ld a, h                                         ; $560a: $7c
  or l                                            ; $560b: $b5
  call StoreCPUFlags                              ; $560c: $cd $39 $00
  pop de                                          ; $560f: $d1
  pop bc                                          ; $5610: $c1
  ret                                             ; $5611: $c9


jr_007_5612:
  xor a                                           ; $5612: $af
  call StoreCPUFlags                              ; $5613: $cd $39 $00
  pop de                                          ; $5616: $d1
  pop bc                                          ; $5617: $c1
  ret                                             ; $5618: $c9


  ld hl, $0003                                    ; $5619: $21 $03 $00
  add hl, bc                                      ; $561c: $09
  ld a, [$cdac]                                   ; $561d: $fa $ac $cd
  ld [hl+], a                                     ; $5620: $22
  ld [hl], a                                      ; $5621: $77
  ret                                             ; $5622: $c9


  ld hl, $0003                                    ; $5623: $21 $03 $00
  add hl, bc                                      ; $5626: $09
  dec [hl]                                        ; $5627: $35
  jp StoreCPUFlags                                ; $5628: $c3 $39 $00


  ld hl, $0003                                    ; $562b: $21 $03 $00
  add hl, bc                                      ; $562e: $09
  dec [hl]                                        ; $562f: $35
  ld a, [hl+]                                     ; $5630: $2a
  ld d, [hl]                                      ; $5631: $56
  sra d                                           ; $5632: $cb $2a
  cp d                                            ; $5634: $ba
  jp StoreCPUFlags                                ; $5635: $c3 $39 $00


  ld a, $02                                       ; $5638: $3e $02
  ld [$cb54], a                                   ; $563a: $ea $54 $cb
  ret                                             ; $563d: $c9


  xor a                                           ; $563e: $af
  ld [$cb54], a                                   ; $563f: $ea $54 $cb
  ret                                             ; $5642: $c9


Jump_007_5643:
  ld a, [$cb54]                                   ; $5643: $fa $54 $cb
  cp $02                                          ; $5646: $fe $02
  ret z                                           ; $5648: $c8

  ld a, [$cc2a]                                   ; $5649: $fa $2a $cc
  cp $07                                          ; $564c: $fe $07
  jr z, jr_007_5656                               ; $564e: $28 $06

  ld a, $01                                       ; $5650: $3e $01
  ld [$cb54], a                                   ; $5652: $ea $54 $cb
  ret                                             ; $5655: $c9


jr_007_5656:
  ld a, [$cb6d]                                   ; $5656: $fa $6d $cb
  dec a                                           ; $5659: $3d
  ld [$cb6d], a                                   ; $565a: $ea $6d $cb
  ret nz                                          ; $565d: $c0

  ld a, $01                                       ; $565e: $3e $01
  ld [$cb54], a                                   ; $5660: $ea $54 $cb
  ret                                             ; $5663: $c9


  ld a, [$cb54]                                   ; $5664: $fa $54 $cb
  cp $01                                          ; $5667: $fe $01
  jp StoreCPUFlags                                ; $5669: $c3 $39 $00


  ld hl, $cc4e                                    ; $566c: $21 $4e $cc
  ld a, [hl+]                                     ; $566f: $2a
  or [hl]                                         ; $5670: $b6
  inc hl                                          ; $5671: $23
  or [hl]                                         ; $5672: $b6
  inc hl                                          ; $5673: $23
  or [hl]                                         ; $5674: $b6
  inc hl                                          ; $5675: $23
  or [hl]                                         ; $5676: $b6
  inc hl                                          ; $5677: $23
  or [hl]                                         ; $5678: $b6
  jp StoreCPUFlags                                ; $5679: $c3 $39 $00


  ld a, [$cc2a]                                   ; $567c: $fa $2a $cc
  dec a                                           ; $567f: $3d
  ld l, $02                                       ; $5680: $2e $02
  call Call_000_3427                              ; $5682: $cd $27 $34

  db $03, $de, $48

  push bc                                         ; $5688: $c5
  ld a, [$cc2a]                                   ; $5689: $fa $2a $cc
  dec a                                           ; $568c: $3d
  ld e, a                                         ; $568d: $5f
  ld a, $7b                                       ; $568e: $3e $7b
  call Call_000_0a46                              ; $5690: $cd $46 $0a
  ld b, h                                         ; $5693: $44
  ld c, l                                         ; $5694: $4d
  call Call_007_5b17                              ; $5695: $cd $17 $5b
  pop bc                                          ; $5698: $c1
  ret                                             ; $5699: $c9


  ld a, [$cc2a]                                   ; $569a: $fa $2a $cc
  cp $07                                          ; $569d: $fe $07
  jr z, jr_007_56c7                               ; $569f: $28 $26

  dec a                                           ; $56a1: $3d
  push bc                                         ; $56a2: $c5
  ld e, a                                         ; $56a3: $5f
  ld a, $7b                                       ; $56a4: $3e $7b
  call Call_000_0a46                              ; $56a6: $cd $46 $0a
  ld b, h                                         ; $56a9: $44
  ld c, l                                         ; $56aa: $4d
  ld hl, $0006                                    ; $56ab: $21 $06 $00
  add hl, bc                                      ; $56ae: $09
  ld a, [hl+]                                     ; $56af: $2a
  ld d, [hl]                                      ; $56b0: $56
  ld e, a                                         ; $56b1: $5f
  ld hl, $cb56                                    ; $56b2: $21 $56 $cb
  ld [hl], e                                      ; $56b5: $73
  inc hl                                          ; $56b6: $23
  ld [hl], d                                      ; $56b7: $72
  ld hl, $0009                                    ; $56b8: $21 $09 $00
  add hl, bc                                      ; $56bb: $09
  ld a, [hl+]                                     ; $56bc: $2a
  ld d, [hl]                                      ; $56bd: $56
  ld e, a                                         ; $56be: $5f
  ld hl, $cb58                                    ; $56bf: $21 $58 $cb
  ld [hl], e                                      ; $56c2: $73
  inc hl                                          ; $56c3: $23
  ld [hl], d                                      ; $56c4: $72
  pop bc                                          ; $56c5: $c1
  ret                                             ; $56c6: $c9


jr_007_56c7:
  push bc                                         ; $56c7: $c5
  ld bc, $cb62                                    ; $56c8: $01 $62 $cb
  ld e, $03                                       ; $56cb: $1e $03
  call Call_007_56e2                              ; $56cd: $cd $e2 $56
  ld bc, $cb66                                    ; $56d0: $01 $66 $cb
  ld e, $04                                       ; $56d3: $1e $04
  call Call_007_56e2                              ; $56d5: $cd $e2 $56
  ld bc, $cb6a                                    ; $56d8: $01 $6a $cb
  ld e, $05                                       ; $56db: $1e $05
  call Call_007_56e2                              ; $56dd: $cd $e2 $56
  pop bc                                          ; $56e0: $c1
  ret                                             ; $56e1: $c9


Call_007_56e2:
  ld a, $7b                                       ; $56e2: $3e $7b
  push bc                                         ; $56e4: $c5
  call Call_000_0a46                              ; $56e5: $cd $46 $0a
  ld bc, $0006                                    ; $56e8: $01 $06 $00
  add hl, bc                                      ; $56eb: $09
  pop bc                                          ; $56ec: $c1
  ld a, [hl+]                                     ; $56ed: $2a
  ld [bc], a                                      ; $56ee: $02
  inc bc                                          ; $56ef: $03
  ld a, [hl+]                                     ; $56f0: $2a
  ld [bc], a                                      ; $56f1: $02
  inc bc                                          ; $56f2: $03
  inc hl                                          ; $56f3: $23
  ld a, [hl+]                                     ; $56f4: $2a
  ld [bc], a                                      ; $56f5: $02
  inc bc                                          ; $56f6: $03
  ld a, [hl+]                                     ; $56f7: $2a
  ld [bc], a                                      ; $56f8: $02
  inc bc                                          ; $56f9: $03
  ret                                             ; $56fa: $c9


  push bc                                         ; $56fb: $c5
  ld a, [$cc2a]                                   ; $56fc: $fa $2a $cc
  dec a                                           ; $56ff: $3d
  ld e, a                                         ; $5700: $5f
  ld a, $7b                                       ; $5701: $3e $7b
  call Call_000_0a46                              ; $5703: $cd $46 $0a
  ld bc, $002b                                    ; $5706: $01 $2b $00
  add hl, bc                                      ; $5709: $09
  set 5, [hl]                                     ; $570a: $cb $ee
  pop bc                                          ; $570c: $c1
  ret                                             ; $570d: $c9


  push bc                                         ; $570e: $c5
  ld a, [$cc2a]                                   ; $570f: $fa $2a $cc
  dec a                                           ; $5712: $3d
  ld e, a                                         ; $5713: $5f
  ld a, $7b                                       ; $5714: $3e $7b
  call Call_000_0a46                              ; $5716: $cd $46 $0a
  ld bc, $002b                                    ; $5719: $01 $2b $00
  add hl, bc                                      ; $571c: $09
  res 5, [hl]                                     ; $571d: $cb $ae
  pop bc                                          ; $571f: $c1
  ret                                             ; $5720: $c9


  ld a, $03                                       ; $5721: $3e $03
  call Call_007_5731                              ; $5723: $cd $31 $57
  ld a, $04                                       ; $5726: $3e $04
  call Call_007_5731                              ; $5728: $cd $31 $57
  ld a, $05                                       ; $572b: $3e $05
  call Call_007_5731                              ; $572d: $cd $31 $57
  ret                                             ; $5730: $c9


Call_007_5731:
  push bc                                         ; $5731: $c5
  ld e, a                                         ; $5732: $5f
  ld a, $7b                                       ; $5733: $3e $7b
  call Call_000_0a46                              ; $5735: $cd $46 $0a
  jr nz, jr_007_5746                              ; $5738: $20 $0c

  ld c, l                                         ; $573a: $4d
  ld b, h                                         ; $573b: $44
  ld hl, $000f                                    ; $573c: $21 $0f $00
  add hl, bc                                      ; $573f: $09
  ld bc, $fe00                                    ; $5740: $01 $00 $fe
  ld [hl], c                                      ; $5743: $71
  inc hl                                          ; $5744: $23
  ld [hl], b                                      ; $5745: $70

jr_007_5746:
  pop bc                                          ; $5746: $c1
  ret                                             ; $5747: $c9


  push bc                                         ; $5748: $c5
  ld a, [$cc2a]                                   ; $5749: $fa $2a $cc
  dec a                                           ; $574c: $3d
  ld e, a                                         ; $574d: $5f
  ld a, $7b                                       ; $574e: $3e $7b
  call Call_000_0a46                              ; $5750: $cd $46 $0a
  ld c, l                                         ; $5753: $4d
  ld b, h                                         ; $5754: $44
  ld hl, $0011                                    ; $5755: $21 $11 $00
  add hl, bc                                      ; $5758: $09
  ld bc, $ffab                                    ; $5759: $01 $ab $ff
  ld [hl], c                                      ; $575c: $71
  inc hl                                          ; $575d: $23
  ld [hl], b                                      ; $575e: $70
  ld a, $2d                                       ; $575f: $3e $2d
  ld [$cdac], a                                   ; $5761: $ea $ac $cd
  pop bc                                          ; $5764: $c1
  ret                                             ; $5765: $c9


  push bc                                         ; $5766: $c5
  ld a, [$cc2a]                                   ; $5767: $fa $2a $cc
  dec a                                           ; $576a: $3d
  ld e, a                                         ; $576b: $5f
  ld a, $7b                                       ; $576c: $3e $7b
  call Call_000_0a46                              ; $576e: $cd $46 $0a
  ld c, l                                         ; $5771: $4d
  ld b, h                                         ; $5772: $44
  ld hl, $000f                                    ; $5773: $21 $0f $00
  add hl, bc                                      ; $5776: $09
  xor a                                           ; $5777: $af
  ld [hl+], a                                     ; $5778: $22
  ld [hl+], a                                     ; $5779: $22
  ld [hl+], a                                     ; $577a: $22
  ld [hl], a                                      ; $577b: $77
  pop bc                                          ; $577c: $c1
  ret                                             ; $577d: $c9


  ld a, [$cc2a]                                   ; $577e: $fa $2a $cc
  cp $07                                          ; $5781: $fe $07
  jr z, jr_007_57c6                               ; $5783: $28 $41

  dec a                                           ; $5785: $3d
  ld e, a                                         ; $5786: $5f
  push bc                                         ; $5787: $c5
  ld a, $7b                                       ; $5788: $3e $7b
  call Call_000_0a46                              ; $578a: $cd $46 $0a
  ld c, l                                         ; $578d: $4d
  ld b, h                                         ; $578e: $44
  ld hl, $000f                                    ; $578f: $21 $0f $00
  add hl, bc                                      ; $5792: $09
  xor a                                           ; $5793: $af
  ld [hl+], a                                     ; $5794: $22
  ld [hl+], a                                     ; $5795: $22
  ld [hl+], a                                     ; $5796: $22
  ld [hl+], a                                     ; $5797: $22
  ld hl, $0030                                    ; $5798: $21 $30 $00
  add hl, bc                                      ; $579b: $09
  push bc                                         ; $579c: $c5
  ld bc, $000a                                    ; $579d: $01 $0a $00
  call Call_000_1248                              ; $57a0: $cd $48 $12
  pop bc                                          ; $57a3: $c1
  ld a, [$cb56]                                   ; $57a4: $fa $56 $cb
  ld e, a                                         ; $57a7: $5f
  ld a, [$cb57]                                   ; $57a8: $fa $57 $cb
  ld d, a                                         ; $57ab: $57
  ld hl, $0006                                    ; $57ac: $21 $06 $00
  add hl, bc                                      ; $57af: $09
  ld a, e                                         ; $57b0: $7b
  ld [hl+], a                                     ; $57b1: $22
  ld a, d                                         ; $57b2: $7a
  ld [hl], a                                      ; $57b3: $77
  ld a, [$cb58]                                   ; $57b4: $fa $58 $cb
  ld e, a                                         ; $57b7: $5f
  ld a, [$cb59]                                   ; $57b8: $fa $59 $cb
  ld d, a                                         ; $57bb: $57
  ld hl, $0009                                    ; $57bc: $21 $09 $00
  add hl, bc                                      ; $57bf: $09
  ld a, e                                         ; $57c0: $7b
  ld [hl+], a                                     ; $57c1: $22
  ld a, d                                         ; $57c2: $7a
  ld [hl], a                                      ; $57c3: $77
  pop bc                                          ; $57c4: $c1
  ret                                             ; $57c5: $c9


jr_007_57c6:
  push bc                                         ; $57c6: $c5
  ld e, $03                                       ; $57c7: $1e $03
  call Call_007_57d8                              ; $57c9: $cd $d8 $57
  ld e, $04                                       ; $57cc: $1e $04
  call Call_007_57d8                              ; $57ce: $cd $d8 $57
  ld e, $05                                       ; $57d1: $1e $05
  call Call_007_57d8                              ; $57d3: $cd $d8 $57
  pop bc                                          ; $57d6: $c1
  ret                                             ; $57d7: $c9


Call_007_57d8:
  ld hl, $cb56                                    ; $57d8: $21 $56 $cb
  ld a, e                                         ; $57db: $7b
  call Call_000_316b                              ; $57dc: $cd $6b $31
  push hl                                         ; $57df: $e5
  ld a, $7b                                       ; $57e0: $3e $7b
  call Call_000_0a46                              ; $57e2: $cd $46 $0a
  ld c, l                                         ; $57e5: $4d
  ld b, h                                         ; $57e6: $44
  ld hl, $000f                                    ; $57e7: $21 $0f $00
  add hl, bc                                      ; $57ea: $09
  xor a                                           ; $57eb: $af
  ld [hl+], a                                     ; $57ec: $22
  ld [hl+], a                                     ; $57ed: $22
  ld [hl+], a                                     ; $57ee: $22
  ld [hl+], a                                     ; $57ef: $22
  pop hl                                          ; $57f0: $e1
  ld a, [hl+]                                     ; $57f1: $2a
  ld d, [hl]                                      ; $57f2: $56
  ld e, a                                         ; $57f3: $5f
  inc hl                                          ; $57f4: $23
  push hl                                         ; $57f5: $e5
  ld hl, $0006                                    ; $57f6: $21 $06 $00
  add hl, bc                                      ; $57f9: $09
  ld a, e                                         ; $57fa: $7b
  ld [hl+], a                                     ; $57fb: $22
  ld a, d                                         ; $57fc: $7a
  ld [hl], a                                      ; $57fd: $77
  pop hl                                          ; $57fe: $e1
  ld a, [hl+]                                     ; $57ff: $2a
  ld d, [hl]                                      ; $5800: $56
  ld e, a                                         ; $5801: $5f
  ld hl, $0009                                    ; $5802: $21 $09 $00
  add hl, bc                                      ; $5805: $09
  ld a, e                                         ; $5806: $7b
  ld [hl+], a                                     ; $5807: $22
  ld a, d                                         ; $5808: $7a
  ld [hl], a                                      ; $5809: $77
  ret                                             ; $580a: $c9


  nop                                             ; $580b: $00
  ld b, $00                                       ; $580c: $06 $00
  nop                                             ; $580e: $00
  nop                                             ; $580f: $00
  inc b                                           ; $5810: $04
  nop                                             ; $5811: $00
  ret nz                                          ; $5812: $c0

  dec b                                           ; $5813: $05
  dec b                                           ; $5814: $05
  push bc                                         ; $5815: $c5
  ld a, [$cc2a]                                   ; $5816: $fa $2a $cc
  dec a                                           ; $5819: $3d
  ld e, a                                         ; $581a: $5f
  ld a, $7b                                       ; $581b: $3e $7b
  call Call_000_0a46                              ; $581d: $cd $46 $0a
  ld bc, $000f                                    ; $5820: $01 $0f $00
  add hl, bc                                      ; $5823: $09
  xor a                                           ; $5824: $af
  ld [hl+], a                                     ; $5825: $22
  ld [hl+], a                                     ; $5826: $22
  ld [hl+], a                                     ; $5827: $22
  ld [hl], a                                      ; $5828: $77
  pop bc                                          ; $5829: $c1
  ret                                             ; $582a: $c9


  push bc                                         ; $582b: $c5
  ldh a, [rSVBK]                                  ; $582c: $f0 $70
  push af                                         ; $582e: $f5
  ld a, $02                                       ; $582f: $3e $02
  ldh [rSVBK], a                                  ; $5831: $e0 $70
  ld de, $da80                                    ; $5833: $11 $80 $da
  ld hl, $d080                                    ; $5836: $21 $80 $d0
  ld c, $80                                       ; $5839: $0e $80
  call Call_000_12a6                              ; $583b: $cd $a6 $12
  xor a                                           ; $583e: $af
  call Call_000_33f3                              ; $583f: $cd $f3 $33
  dec b                                           ; $5842: $05
  dec sp                                          ; $5843: $3b
  halt                                            ; $5844: $76
  pop af                                          ; $5845: $f1
  ldh [rSVBK], a                                  ; $5846: $e0 $70
  call Call_000_33f3                              ; $5848: $cd $f3 $33
  inc bc                                          ; $584b: $03
  ld e, d                                         ; $584c: $5a
  ld a, c                                         ; $584d: $79
  ld a, $08                                       ; $584e: $3e $08
  ld [$cdac], a                                   ; $5850: $ea $ac $cd
  pop bc                                          ; $5853: $c1
  ret                                             ; $5854: $c9


  push bc                                         ; $5855: $c5
  ldh a, [rSVBK]                                  ; $5856: $f0 $70
  push af                                         ; $5858: $f5
  ld a, $02                                       ; $5859: $3e $02
  ldh [rSVBK], a                                  ; $585b: $e0 $70
  ld de, $d000                                    ; $585d: $11 $00 $d0
  ld hl, $da80                                    ; $5860: $21 $80 $da
  ld c, $80                                       ; $5863: $0e $80
  call Call_000_12a6                              ; $5865: $cd $a6 $12
  pop af                                          ; $5868: $f1
  ldh [rSVBK], a                                  ; $5869: $e0 $70
  call Call_000_33f3                              ; $586b: $cd $f3 $33
  inc bc                                          ; $586e: $03
  ld e, d                                         ; $586f: $5a
  ld a, c                                         ; $5870: $79
  ld a, $10                                       ; $5871: $3e $10
  ld [$cdac], a                                   ; $5873: $ea $ac $cd
  pop bc                                          ; $5876: $c1
  ret                                             ; $5877: $c9


  push bc                                         ; $5878: $c5
  ld a, $01                                       ; $5879: $3e $01
  call Call_000_33f3                              ; $587b: $cd $f3 $33
  inc bc                                          ; $587e: $03
  cp l                                            ; $587f: $bd
  ld a, c                                         ; $5880: $79
  pop bc                                          ; $5881: $c1
  ret                                             ; $5882: $c9


  push bc                                         ; $5883: $c5
  ldh a, [rSVBK]                                  ; $5884: $f0 $70
  push af                                         ; $5886: $f5
  ld a, $02                                       ; $5887: $3e $02
  ldh [rSVBK], a                                  ; $5889: $e0 $70
  ld hl, $d080                                    ; $588b: $21 $80 $d0
  ld a, $ff                                       ; $588e: $3e $ff
  ld bc, $0040                                    ; $5890: $01 $40 $00
  call Call_000_1249                              ; $5893: $cd $49 $12
  call Call_000_28b5                              ; $5896: $cd $b5 $28
  pop af                                          ; $5899: $f1
  ldh [rSVBK], a                                  ; $589a: $e0 $70
  pop bc                                          ; $589c: $c1
  ret                                             ; $589d: $c9


  push bc                                         ; $589e: $c5
  ldh a, [rSVBK]                                  ; $589f: $f0 $70
  push af                                         ; $58a1: $f5
  ld a, $02                                       ; $58a2: $3e $02
  ldh [rSVBK], a                                  ; $58a4: $e0 $70
  ld hl, $d000                                    ; $58a6: $21 $00 $d0
  ld de, $d080                                    ; $58a9: $11 $80 $d0
  call Call_000_0212                              ; $58ac: $cd $12 $02
  call Call_000_28b5                              ; $58af: $cd $b5 $28
  pop af                                          ; $58b2: $f1
  ldh [rSVBK], a                                  ; $58b3: $e0 $70
  pop bc                                          ; $58b5: $c1
  ret                                             ; $58b6: $c9


  push bc                                         ; $58b7: $c5
  ld de, $0000                                    ; $58b8: $11 $00 $00
  ld hl, $0044                                    ; $58bb: $21 $44 $00
  add hl, bc                                      ; $58be: $09
  ld a, $14                                       ; $58bf: $3e $14
  ld [hl], a                                      ; $58c1: $77
  ld [$cdac], a                                   ; $58c2: $ea $ac $cd
  jp Jump_007_5960                                ; $58c5: $c3 $60 $59


  push bc                                         ; $58c8: $c5
  ld de, $0000                                    ; $58c9: $11 $00 $00
  ld hl, $0044                                    ; $58cc: $21 $44 $00
  add hl, bc                                      ; $58cf: $09
  ld a, $0c                                       ; $58d0: $3e $0c
  ld [hl], a                                      ; $58d2: $77
  ld [$cdac], a                                   ; $58d3: $ea $ac $cd
  jp Jump_007_5960                                ; $58d6: $c3 $60 $59


  push bc                                         ; $58d9: $c5
  ld de, $0000                                    ; $58da: $11 $00 $00
  ld hl, $0044                                    ; $58dd: $21 $44 $00
  add hl, bc                                      ; $58e0: $09
  ld a, $06                                       ; $58e1: $3e $06
  ld [hl], a                                      ; $58e3: $77
  ld [$cdac], a                                   ; $58e4: $ea $ac $cd
  jr jr_007_5960                                  ; $58e7: $18 $77

  push bc                                         ; $58e9: $c5
  ld de, $0000                                    ; $58ea: $11 $00 $00
  jr jr_007_5960                                  ; $58ed: $18 $71

  push bc                                         ; $58ef: $c5
  ld de, $0000                                    ; $58f0: $11 $00 $00
  ld hl, $0044                                    ; $58f3: $21 $44 $00
  add hl, bc                                      ; $58f6: $09
  ld a, $19                                       ; $58f7: $3e $19
  ld [hl], a                                      ; $58f9: $77
  ld [$cdac], a                                   ; $58fa: $ea $ac $cd
  jr jr_007_5960                                  ; $58fd: $18 $61

  push bc                                         ; $58ff: $c5
  ld de, $0000                                    ; $5900: $11 $00 $00
  ld hl, $0044                                    ; $5903: $21 $44 $00
  add hl, bc                                      ; $5906: $09
  ld a, $16                                       ; $5907: $3e $16
  ld [hl], a                                      ; $5909: $77
  ld [$cdac], a                                   ; $590a: $ea $ac $cd
  jr jr_007_5960                                  ; $590d: $18 $51

  push bc                                         ; $590f: $c5
  ld d, $00                                       ; $5910: $16 $00
  ld e, $10                                       ; $5912: $1e $10
  ld hl, $0044                                    ; $5914: $21 $44 $00
  add hl, bc                                      ; $5917: $09
  ld a, $19                                       ; $5918: $3e $19
  ld [hl], a                                      ; $591a: $77
  ld [$cdac], a                                   ; $591b: $ea $ac $cd
  jr jr_007_5960                                  ; $591e: $18 $40

  push bc                                         ; $5920: $c5
  ld d, $f4                                       ; $5921: $16 $f4
  ld e, $0c                                       ; $5923: $1e $0c
  ld hl, $0044                                    ; $5925: $21 $44 $00
  add hl, bc                                      ; $5928: $09
  ld a, $19                                       ; $5929: $3e $19
  ld [hl], a                                      ; $592b: $77
  ld [$cdac], a                                   ; $592c: $ea $ac $cd
  jr jr_007_5960                                  ; $592f: $18 $2f

  push bc                                         ; $5931: $c5
  ld d, $0c                                       ; $5932: $16 $0c
  ld e, $0c                                       ; $5934: $1e $0c
  ld hl, $0044                                    ; $5936: $21 $44 $00
  add hl, bc                                      ; $5939: $09
  ld a, $19                                       ; $593a: $3e $19
  ld [hl], a                                      ; $593c: $77
  ld [$cdac], a                                   ; $593d: $ea $ac $cd
  jr jr_007_5960                                  ; $5940: $18 $1e

  push bc                                         ; $5942: $c5
  ld de, $0000                                    ; $5943: $11 $00 $00
  ld hl, $0044                                    ; $5946: $21 $44 $00
  add hl, bc                                      ; $5949: $09
  ld a, $19                                       ; $594a: $3e $19
  ld [hl], a                                      ; $594c: $77
  ld [$cdac], a                                   ; $594d: $ea $ac $cd
  ld a, $08                                       ; $5950: $3e $08
  ld [$cc2a], a                                   ; $5952: $ea $2a $cc
  jr jr_007_5960                                  ; $5955: $18 $09

  push bc                                         ; $5957: $c5
  ld a, [$cc37]                                   ; $5958: $fa $37 $cc
  ld e, a                                         ; $595b: $5f
  ld a, [$cc38]                                   ; $595c: $fa $38 $cc
  ld d, a                                         ; $595f: $57

Jump_007_5960:
jr_007_5960:
  ld a, [$cc2a]                                   ; $5960: $fa $2a $cc
  dec a                                           ; $5963: $3d
  ld hl, $5434                                    ; $5964: $21 $34 $54
  call Call_000_317a                              ; $5967: $cd $7a $31
  push bc                                         ; $596a: $c5
  ld c, e                                         ; $596b: $4b
  ld a, [hl+]                                     ; $596c: $2a
  add d                                           ; $596d: $82
  ld e, a                                         ; $596e: $5f
  ld d, $00                                       ; $596f: $16 $00
  ld a, $f8                                       ; $5971: $3e $f8
  add [hl]                                        ; $5973: $86
  add c                                           ; $5974: $81
  ld l, a                                         ; $5975: $6f
  ld h, d                                         ; $5976: $62
  pop bc                                          ; $5977: $c1
  call Call_000_33f3                              ; $5978: $cd $f3 $33

  db $03, $a8, $70

  pop bc                                          ; $597e: $c1
  ret                                             ; $597f: $c9


  push bc                                         ; $5980: $c5
  ld a, [$cc25]                                   ; $5981: $fa $25 $cc
  jr jr_007_59b0                                  ; $5984: $18 $2a

  push bc                                         ; $5986: $c5
  call Call_000_2fc9                              ; $5987: $cd $c9 $2f
  inc a                                           ; $598a: $3c
  jr jr_007_59b0                                  ; $598b: $18 $23

  push bc                                         ; $598d: $c5
  ld a, $00                                       ; $598e: $3e $00
  jr jr_007_59b0                                  ; $5990: $18 $1e

  push bc                                         ; $5992: $c5
  ld a, $01                                       ; $5993: $3e $01
  jr jr_007_59b0                                  ; $5995: $18 $19

  push bc                                         ; $5997: $c5
  ld a, $02                                       ; $5998: $3e $02
  jr jr_007_59b0                                  ; $599a: $18 $14

  push bc                                         ; $599c: $c5
  ld a, $03                                       ; $599d: $3e $03
  jr jr_007_59b0                                  ; $599f: $18 $0f

  push bc                                         ; $59a1: $c5
  ld a, $04                                       ; $59a2: $3e $04
  jr jr_007_59b0                                  ; $59a4: $18 $0a

  push bc                                         ; $59a6: $c5
  ld a, $05                                       ; $59a7: $3e $05
  jr jr_007_59b0                                  ; $59a9: $18 $05

  push bc                                         ; $59ab: $c5
  ld a, [$cc2a]                                   ; $59ac: $fa $2a $cc
  dec a                                           ; $59af: $3d

jr_007_59b0:
  ld hl, $5434                                    ; $59b0: $21 $34 $54
  call Call_000_317a                              ; $59b3: $cd $7a $31
  ld a, [hl+]                                     ; $59b6: $2a
  ld e, a                                         ; $59b7: $5f
  ld d, $00                                       ; $59b8: $16 $00
  push hl                                         ; $59ba: $e5
  ld hl, $0006                                    ; $59bb: $21 $06 $00
  add hl, bc                                      ; $59be: $09
  ld [hl], e                                      ; $59bf: $73
  inc hl                                          ; $59c0: $23
  ld [hl], d                                      ; $59c1: $72
  ld hl, $000b                                    ; $59c2: $21 $0b $00
  add hl, bc                                      ; $59c5: $09
  ld [hl], e                                      ; $59c6: $73
  inc hl                                          ; $59c7: $23
  ld [hl], d                                      ; $59c8: $72
  pop hl                                          ; $59c9: $e1
  ld a, $f8                                       ; $59ca: $3e $f8
  add [hl]                                        ; $59cc: $86
  ld e, a                                         ; $59cd: $5f
  ld hl, $0009                                    ; $59ce: $21 $09 $00
  add hl, bc                                      ; $59d1: $09
  ld [hl], e                                      ; $59d2: $73
  inc hl                                          ; $59d3: $23
  ld [hl], d                                      ; $59d4: $72
  ld hl, $000d                                    ; $59d5: $21 $0d $00
  add hl, bc                                      ; $59d8: $09
  ld [hl], e                                      ; $59d9: $73
  inc hl                                          ; $59da: $23
  ld [hl], d                                      ; $59db: $72
  pop bc                                          ; $59dc: $c1
  ret                                             ; $59dd: $c9


  push bc                                         ; $59de: $c5
  ld a, [$cc2a]                                   ; $59df: $fa $2a $cc
  dec a                                           ; $59e2: $3d
  ld hl, $5434                                    ; $59e3: $21 $34 $54
  call Call_000_317a                              ; $59e6: $cd $7a $31
  ld a, [hl+]                                     ; $59e9: $2a
  ld e, a                                         ; $59ea: $5f
  ld d, $00                                       ; $59eb: $16 $00
  push hl                                         ; $59ed: $e5
  ld a, [$cc37]                                   ; $59ee: $fa $37 $cc
  ld l, a                                         ; $59f1: $6f
  ld h, $00                                       ; $59f2: $26 $00
  add hl, de                                      ; $59f4: $19
  ld e, l                                         ; $59f5: $5d
  ld d, h                                         ; $59f6: $54
  ld hl, $0006                                    ; $59f7: $21 $06 $00
  add hl, bc                                      ; $59fa: $09
  ld [hl], e                                      ; $59fb: $73
  inc hl                                          ; $59fc: $23
  ld [hl], d                                      ; $59fd: $72
  pop hl                                          ; $59fe: $e1
  ld a, $f8                                       ; $59ff: $3e $f8
  add [hl]                                        ; $5a01: $86
  ld e, a                                         ; $5a02: $5f
  ld a, [$cc38]                                   ; $5a03: $fa $38 $cc
  ld l, a                                         ; $5a06: $6f
  ld h, $00                                       ; $5a07: $26 $00
  add hl, de                                      ; $5a09: $19
  ld e, l                                         ; $5a0a: $5d
  ld d, h                                         ; $5a0b: $54
  ld hl, $0009                                    ; $5a0c: $21 $09 $00
  add hl, bc                                      ; $5a0f: $09
  ld [hl], e                                      ; $5a10: $73
  inc hl                                          ; $5a11: $23
  ld [hl], d                                      ; $5a12: $72
  pop bc                                          ; $5a13: $c1
  ret                                             ; $5a14: $c9


  ld hl, $0002                                    ; $5a15: $21 $02 $00
  add hl, bc                                      ; $5a18: $09
  ld a, [hl]                                      ; $5a19: $7e
  dec a                                           ; $5a1a: $3d
  ld hl, $5444                                    ; $5a1b: $21 $44 $54
  call Call_007_609c                              ; $5a1e: $cd $9c $60
  call Call_000_2fc1                              ; $5a21: $cd $c1 $2f
  ld e, a                                         ; $5a24: $5f
  and $0f                                         ; $5a25: $e6 $0f
  call Call_000_0864                              ; $5a27: $cd $64 $08
  ld d, $08                                       ; $5a2a: $16 $08
  ld hl, $0004                                    ; $5a2c: $21 $04 $00
  add hl, bc                                      ; $5a2f: $09
  ld a, [hl-]                                     ; $5a30: $3a
  ld l, [hl]                                      ; $5a31: $6e
  or a                                            ; $5a32: $b7
  jr nz, jr_007_5a3f                              ; $5a33: $20 $0a

  ld a, l                                         ; $5a35: $7d
  cp $0a                                          ; $5a36: $fe $0a
  ret c                                           ; $5a38: $d8

  cp $64                                          ; $5a39: $fe $64
  jr nc, jr_007_5a3f                              ; $5a3b: $30 $02

  ld d, $04                                       ; $5a3d: $16 $04

jr_007_5a3f:
  ld a, e                                         ; $5a3f: $7b
  and $f0                                         ; $5a40: $e6 $f0
  rra                                             ; $5a42: $1f
  cpl                                             ; $5a43: $2f
  inc a                                           ; $5a44: $3c
  add d                                           ; $5a45: $82
  ld hl, $0006                                    ; $5a46: $21 $06 $00
  add hl, bc                                      ; $5a49: $09
  add [hl]                                        ; $5a4a: $86
  ld [hl], a                                      ; $5a4b: $77
  ret                                             ; $5a4c: $c9


  ld a, [$cc29]                                   ; $5a4d: $fa $29 $cc
  ld hl, $6949                                    ; $5a50: $21 $49 $69
  jp Jump_007_5cf6                                ; $5a53: $c3 $f6 $5c


  ld a, [$cc25]                                   ; $5a56: $fa $25 $cc
  or a                                            ; $5a59: $b7
  jr z, jr_007_5a75                               ; $5a5a: $28 $19

  cp $01                                          ; $5a5c: $fe $01
  jr z, jr_007_5a8a                               ; $5a5e: $28 $2a

  ld de, $01fe                                    ; $5a60: $11 $fe $01
  call Call_000_33f3                              ; $5a63: $cd $f3 $33

  db $02, $8e, $68

  ld de, $6bfa                                    ; $5a69: $11 $fa $6b
  call Call_000_09f4                              ; $5a6c: $cd $f4 $09
  ld a, $18                                       ; $5a6f: $3e $18
  ld [$cdac], a                                   ; $5a71: $ea $ac $cd
  ret                                             ; $5a74: $c9


jr_007_5a75:
  ld de, $01f6                                    ; $5a75: $11 $f6 $01
  call Call_000_33f3                              ; $5a78: $cd $f3 $33

  db $02, $8e, $68

  ld de, $6c0a                                    ; $5a7e: $11 $0a $6c
  call Call_000_09f4                              ; $5a81: $cd $f4 $09
  ld a, $1b                                       ; $5a84: $3e $1b
  ld [$cdac], a                                   ; $5a86: $ea $ac $cd
  ret                                             ; $5a89: $c9


jr_007_5a8a:
  ld de, $01ef                                    ; $5a8a: $11 $ef $01
  call Call_000_33f3                              ; $5a8d: $cd $f3 $33

  db $02, $8e, $68

  ld de, $6bec                                    ; $5a93: $11 $ec $6b
  call Call_000_09f4                              ; $5a96: $cd $f4 $09
  ld a, $15                                       ; $5a99: $3e $15
  ld [$cdac], a                                   ; $5a9b: $ea $ac $cd
  ret                                             ; $5a9e: $c9


  ld a, [$cc25]                                   ; $5a9f: $fa $25 $cc
  or a                                            ; $5aa2: $b7
  jr z, jr_007_5aaf                               ; $5aa3: $28 $0a

  cp $01                                          ; $5aa5: $fe $01
  jr z, jr_007_5ab5                               ; $5aa7: $28 $0c

  ld a, $01                                       ; $5aa9: $3e $01
  ld [$cdac], a                                   ; $5aab: $ea $ac $cd
  ret                                             ; $5aae: $c9


jr_007_5aaf:
  ld a, $03                                       ; $5aaf: $3e $03
  ld [$cdac], a                                   ; $5ab1: $ea $ac $cd
  ret                                             ; $5ab4: $c9


jr_007_5ab5:
  ld a, $03                                       ; $5ab5: $3e $03
  ld [$cdac], a                                   ; $5ab7: $ea $ac $cd
  ret                                             ; $5aba: $c9


  call Call_000_2fc1                              ; $5abb: $cd $c1 $2f
  ld d, a                                         ; $5abe: $57
  ld e, $03                                       ; $5abf: $1e $03
  ld a, [$cc29]                                   ; $5ac1: $fa $29 $cc
  ld hl, $6a39                                    ; $5ac4: $21 $39 $6a
  jp Jump_007_5cf6                                ; $5ac7: $c3 $f6 $5c


  inc bc                                          ; $5aca: $03
  ld a, [bc]                                      ; $5acb: $0a
  ld [$cc29], a                                   ; $5acc: $ea $29 $cc
  dec bc                                          ; $5acf: $0b
  ret                                             ; $5ad0: $c9


  call Call_000_2fc1                              ; $5ad1: $cd $c1 $2f
  ld d, a                                         ; $5ad4: $57
  ld e, $03                                       ; $5ad5: $1e $03
  ld hl, $68f8                                    ; $5ad7: $21 $f8 $68
  call Call_000_34ed                              ; $5ada: $cd $ed $34
  call Call_000_392b                              ; $5add: $cd $2b $39
  ret                                             ; $5ae0: $c9


  call Call_000_2fc1                              ; $5ae1: $cd $c1 $2f
  ld d, a                                         ; $5ae4: $57
  ld e, $03                                       ; $5ae5: $1e $03
  ld hl, $6921                                    ; $5ae7: $21 $21 $69
  call Call_000_34ed                              ; $5aea: $cd $ed $34
  call Call_000_392b                              ; $5aed: $cd $2b $39
  ret                                             ; $5af0: $c9


  ld a, [$cc29]                                   ; $5af1: $fa $29 $cc
  ld hl, $6b29                                    ; $5af4: $21 $29 $6b
  jp Jump_007_5cf6                                ; $5af7: $c3 $f6 $5c


  ld hl, $67d4                                    ; $5afa: $21 $d4 $67
  jp Jump_007_5cf3                                ; $5afd: $c3 $f3 $5c


  call Call_000_38e8                              ; $5b00: $cd $e8 $38
  ld a, l                                         ; $5b03: $7d
  ld [$cc5e], a                                   ; $5b04: $ea $5e $cc
  ld a, h                                         ; $5b07: $7c
  ld [$cc5f], a                                   ; $5b08: $ea $5f $cc
  ld hl, $012c                                    ; $5b0b: $21 $2c $01
  call Call_000_3916                              ; $5b0e: $cd $16 $39
  ld hl, $67f0                                    ; $5b11: $21 $f0 $67
  jp Jump_007_5cf3                                ; $5b14: $c3 $f3 $5c


Call_007_5b17:
  ldh a, [rSVBK]                                  ; $5b17: $f0 $70
  push af                                         ; $5b19: $f5
  ld a, $05                                       ; $5b1a: $3e $05
  ldh [rSVBK], a                                  ; $5b1c: $e0 $70
  call Call_007_5f0f                              ; $5b1e: $cd $0f $5f
  ld a, [hl]                                      ; $5b21: $7e
  cp $07                                          ; $5b22: $fe $07
  jr c, jr_007_5b36                               ; $5b24: $38 $10

  ld a, [$cc49]                                   ; $5b26: $fa $49 $cc
  cp $05                                          ; $5b29: $fe $05
  call z, Call_007_5b61                           ; $5b2b: $cc $61 $5b
  call Call_000_33f3                              ; $5b2e: $cd $f3 $33

  db $1e, $92, $5f

  jr jr_007_5b38                                  ; $5b34: $18 $02

jr_007_5b36:
  ld a, $13                                       ; $5b36: $3e $13

jr_007_5b38:
  call Call_000_392b                              ; $5b38: $cd $2b $39
  ld de, $000a                                    ; $5b3b: $11 $0a $00
  add hl, de                                      ; $5b3e: $19
  bit 3, [hl]                                     ; $5b3f: $cb $5e
  jr z, jr_007_5b54                               ; $5b41: $28 $11

  push hl                                         ; $5b43: $e5
  ld de, $000a                                    ; $5b44: $11 $0a $00
  add hl, de                                      ; $5b47: $19
  bit 1, [hl]                                     ; $5b48: $cb $4e
  pop hl                                          ; $5b4a: $e1
  jr nz, jr_007_5b54                              ; $5b4b: $20 $07

  res 3, [hl]                                     ; $5b4d: $cb $9e
  set 0, [hl]                                     ; $5b4f: $cb $c6
  call Call_007_5c2f                              ; $5b51: $cd $2f $5c

jr_007_5b54:
  ldh [$ffbd], a                                  ; $5b54: $e0 $bd
  pop af                                          ; $5b56: $f1
  ldh [rSVBK], a                                  ; $5b57: $e0 $70
  ldh a, [$ffbd]                                  ; $5b59: $f0 $bd
  ld hl, $64a0                                    ; $5b5b: $21 $a0 $64
  jp Jump_007_5cf3                                ; $5b5e: $c3 $f3 $5c


Call_007_5b61:
  ld a, $98                                       ; $5b61: $3e $98
  call Call_000_3427                              ; $5b63: $cd $27 $34

  db $01, $21, $69

  push bc                                         ; $5b69: $c5
  ldh a, [rSVBK]                                  ; $5b6a: $f0 $70
  push af                                         ; $5b6c: $f5
  ld a, $05                                       ; $5b6d: $3e $05
  ldh [rSVBK], a                                  ; $5b6f: $e0 $70
  call Call_007_5f0f                              ; $5b71: $cd $0f $5f
  ld de, $000a                                    ; $5b74: $11 $0a $00
  add hl, de                                      ; $5b77: $19
  bit 3, [hl]                                     ; $5b78: $cb $5e
  jr z, jr_007_5bc8                               ; $5b7a: $28 $4c

  ld de, $000a                                    ; $5b7c: $11 $0a $00
  add hl, de                                      ; $5b7f: $19
  bit 1, [hl]                                     ; $5b80: $cb $4e
  jr z, jr_007_5bc8                               ; $5b82: $28 $44

  pop af                                          ; $5b84: $f1
  ldh [rSVBK], a                                  ; $5b85: $e0 $70
  pop bc                                          ; $5b87: $c1
  ld hl, $0023                                    ; $5b88: $21 $23 $00
  add hl, bc                                      ; $5b8b: $09
  xor a                                           ; $5b8c: $af
  ld [hl], a                                      ; $5b8d: $77
  call Call_000_2fc1                              ; $5b8e: $cd $c1 $2f
  ld l, $0b                                       ; $5b91: $2e $0b
  call Call_000_33f3                              ; $5b93: $cd $f3 $33
  inc bc                                          ; $5b96: $03
  sbc $48                                         ; $5b97: $de $48
  call Call_007_5f0f                              ; $5b99: $cd $0f $5f
  ld de, $0005                                    ; $5b9c: $11 $05 $00
  add hl, de                                      ; $5b9f: $19
  ldh a, [rSVBK]                                  ; $5ba0: $f0 $70
  push af                                         ; $5ba2: $f5
  ld a, $05                                       ; $5ba3: $3e $05
  ldh [rSVBK], a                                  ; $5ba5: $e0 $70
  ld a, [hl+]                                     ; $5ba7: $2a
  ld h, [hl]                                      ; $5ba8: $66
  ld l, a                                         ; $5ba9: $6f
  pop af                                          ; $5baa: $f1
  ldh [rSVBK], a                                  ; $5bab: $e0 $70
  ld a, l                                         ; $5bad: $7d
  or h                                            ; $5bae: $b4
  jp nz, Jump_007_5643                            ; $5baf: $c2 $43 $56

  call Call_000_2fc1                              ; $5bb2: $cd $c1 $2f
  or a                                            ; $5bb5: $b7
  jr z, jr_007_5bc0                               ; $5bb6: $28 $08

  ld l, $03                                       ; $5bb8: $2e $03
  call Call_000_3427                              ; $5bba: $cd $27 $34
  inc bc                                          ; $5bbd: $03
  sbc $48                                         ; $5bbe: $de $48

jr_007_5bc0:
  ld l, $03                                       ; $5bc0: $2e $03
  call Call_000_3427                              ; $5bc2: $cd $27 $34
  inc bc                                          ; $5bc5: $03
  sbc $48                                         ; $5bc6: $de $48

jr_007_5bc8:
  pop af                                          ; $5bc8: $f1
  ldh [rSVBK], a                                  ; $5bc9: $e0 $70
  pop bc                                          ; $5bcb: $c1
  ret                                             ; $5bcc: $c9


  inc bc                                          ; $5bcd: $03
  ld a, [bc]                                      ; $5bce: $0a
  dec bc                                          ; $5bcf: $0b
  ld hl, $cc4e                                    ; $5bd0: $21 $4e $cc
  rst $08                                         ; $5bd3: $cf
  ld a, $01                                       ; $5bd4: $3e $01
  ld [hl], a                                      ; $5bd6: $77
  ret                                             ; $5bd7: $c9


  ld hl, $cc4e                                    ; $5bd8: $21 $4e $cc
  inc bc                                          ; $5bdb: $03
  ld a, [bc]                                      ; $5bdc: $0a
  dec bc                                          ; $5bdd: $0b
  rst $08                                         ; $5bde: $cf
  xor a                                           ; $5bdf: $af
  ld [hl], a                                      ; $5be0: $77
  ret                                             ; $5be1: $c9


  ld hl, $cc4e                                    ; $5be2: $21 $4e $cc
  xor a                                           ; $5be5: $af
  ld [hl+], a                                     ; $5be6: $22
  ld [hl+], a                                     ; $5be7: $22
  ld [hl+], a                                     ; $5be8: $22
  ld [hl+], a                                     ; $5be9: $22
  ld [hl+], a                                     ; $5bea: $22
  ld [hl+], a                                     ; $5beb: $22
  ret                                             ; $5bec: $c9


  ld hl, $002d                                    ; $5bed: $21 $2d $00
  add hl, bc                                      ; $5bf0: $09
  set 3, [hl]                                     ; $5bf1: $cb $de
  call Call_000_2fc1                              ; $5bf3: $cd $c1 $2f
  cp $03                                          ; $5bf6: $fe $03
  ret nc                                          ; $5bf8: $d0

  ld hl, $002d                                    ; $5bf9: $21 $2d $00
  add hl, bc                                      ; $5bfc: $09
  res 3, [hl]                                     ; $5bfd: $cb $9e
  set 5, [hl]                                     ; $5bff: $cb $ee
  ret                                             ; $5c01: $c9


  push bc                                         ; $5c02: $c5
  ld e, $00                                       ; $5c03: $1e $00
  ld a, $7b                                       ; $5c05: $3e $7b
  call Call_000_0a46                              ; $5c07: $cd $46 $0a
  ld b, h                                         ; $5c0a: $44
  ld c, l                                         ; $5c0b: $4d
  ld hl, $662c                                    ; $5c0c: $21 $2c $66
  call Call_007_5cf3                              ; $5c0f: $cd $f3 $5c
  pop bc                                          ; $5c12: $c1
  ret                                             ; $5c13: $c9


  ld hl, $662c                                    ; $5c14: $21 $2c $66
  jp Jump_007_5cf3                                ; $5c17: $c3 $f3 $5c


  call Call_007_5f18                              ; $5c1a: $cd $18 $5f
  cp $07                                          ; $5c1d: $fe $07
  jr c, jr_007_5c29                               ; $5c1f: $38 $08

  ld a, [$cc49]                                   ; $5c21: $fa $49 $cc
  cp $05                                          ; $5c24: $fe $05
  call z, Call_007_5ceb                           ; $5c26: $cc $eb $5c

jr_007_5c29:
  ld hl, $6648                                    ; $5c29: $21 $48 $66
  jp Jump_007_5cf3                                ; $5c2c: $c3 $f3 $5c


Call_007_5c2f:
  call Call_007_5f18                              ; $5c2f: $cd $18 $5f
  cp $07                                          ; $5c32: $fe $07
  jr c, jr_007_5c60                               ; $5c34: $38 $2a

  ld a, [$cc49]                                   ; $5c36: $fa $49 $cc
  cp $05                                          ; $5c39: $fe $05
  call z, Call_007_5c51                           ; $5c3b: $cc $51 $5c
  ld hl, $cc4a                                    ; $5c3e: $21 $4a $cc
  bit 6, [hl]                                     ; $5c41: $cb $76
  jr z, jr_007_5c4b                               ; $5c43: $28 $06

  ld de, $68c2                                    ; $5c45: $11 $c2 $68
  jp Jump_000_09f4                                ; $5c48: $c3 $f4 $09


jr_007_5c4b:
  ld de, $68b4                                    ; $5c4b: $11 $b4 $68
  jp Jump_000_09f4                                ; $5c4e: $c3 $f4 $09


Call_007_5c51:
  ld a, $88                                       ; $5c51: $3e $88
  call Call_000_3427                              ; $5c53: $cd $27 $34

  db $01, $21, $69

  ld de, $69af                                    ; $5c59: $11 $af $69
  call Call_000_09f4                              ; $5c5c: $cd $f4 $09
  ret                                             ; $5c5f: $c9


jr_007_5c60:
  ldh a, [rSVBK]                                  ; $5c60: $f0 $70
  push af                                         ; $5c62: $f5
  ld a, $05                                       ; $5c63: $3e $05
  ldh [rSVBK], a                                  ; $5c65: $e0 $70
  call Call_007_5f0f                              ; $5c67: $cd $0f $5f
  ld de, $000a                                    ; $5c6a: $11 $0a $00
  add hl, de                                      ; $5c6d: $19
  ld a, [hl]                                      ; $5c6e: $7e
  ldh [$ffbd], a                                  ; $5c6f: $e0 $bd
  pop af                                          ; $5c71: $f1
  ldh [rSVBK], a                                  ; $5c72: $e0 $70
  ldh a, [$ffbd]                                  ; $5c74: $f0 $bd
  bit 3, a                                        ; $5c76: $cb $5f
  jr nz, jr_007_5c85                              ; $5c78: $20 $0b

  bit 2, a                                        ; $5c7a: $cb $57
  jr nz, jr_007_5c8c                              ; $5c7c: $20 $0e

jr_007_5c7e:
  ld de, $69af                                    ; $5c7e: $11 $af $69
  call Call_000_09f4                              ; $5c81: $cd $f4 $09
  ret                                             ; $5c84: $c9


jr_007_5c85:
  ld de, $69b1                                    ; $5c85: $11 $b1 $69
  call Call_000_09f4                              ; $5c88: $cd $f4 $09
  ret                                             ; $5c8b: $c9


jr_007_5c8c:
  ldh a, [rSVBK]                                  ; $5c8c: $f0 $70
  push af                                         ; $5c8e: $f5
  ld a, $05                                       ; $5c8f: $3e $05
  ldh [rSVBK], a                                  ; $5c91: $e0 $70
  call Call_007_5f0f                              ; $5c93: $cd $0f $5f
  ld de, $0015                                    ; $5c96: $11 $15 $00
  add hl, de                                      ; $5c99: $19
  ld a, [hl+]                                     ; $5c9a: $2a
  ld h, [hl]                                      ; $5c9b: $66
  ld l, a                                         ; $5c9c: $6f
  pop af                                          ; $5c9d: $f1
  ldh [rSVBK], a                                  ; $5c9e: $e0 $70
  ld de, $0000                                    ; $5ca0: $11 $00 $00
  call Call_000_312d                              ; $5ca3: $cd $2d $31
  jr nc, jr_007_5c7e                              ; $5ca6: $30 $d6

  ld de, $69c1                                    ; $5ca8: $11 $c1 $69
  call Call_000_09f4                              ; $5cab: $cd $f4 $09
  ret                                             ; $5cae: $c9


  ldh a, [rSVBK]                                  ; $5caf: $f0 $70
  push af                                         ; $5cb1: $f5
  ld a, $05                                       ; $5cb2: $3e $05
  ldh [rSVBK], a                                  ; $5cb4: $e0 $70
  call Call_007_5f0f                              ; $5cb6: $cd $0f $5f
  ld de, $000a                                    ; $5cb9: $11 $0a $00
  add hl, de                                      ; $5cbc: $19
  ld a, [hl]                                      ; $5cbd: $7e
  ldh [$ffbd], a                                  ; $5cbe: $e0 $bd
  pop af                                          ; $5cc0: $f1
  ldh [rSVBK], a                                  ; $5cc1: $e0 $70
  ldh a, [$ffbd]                                  ; $5cc3: $f0 $bd
  bit 3, a                                        ; $5cc5: $cb $5f
  jr nz, jr_007_5c85                              ; $5cc7: $20 $bc

  bit 2, a                                        ; $5cc9: $cb $57
  jr nz, jr_007_5c8c                              ; $5ccb: $20 $bf

  ld de, $69b3                                    ; $5ccd: $11 $b3 $69
  call Call_000_09f4                              ; $5cd0: $cd $f4 $09
  ret                                             ; $5cd3: $c9


  call Call_007_5f18                              ; $5cd4: $cd $18 $5f
  cp $07                                          ; $5cd7: $fe $07
  jr c, jr_007_5ce3                               ; $5cd9: $38 $08

  ld a, [$cc49]                                   ; $5cdb: $fa $49 $cc
  cp $05                                          ; $5cde: $fe $05
  call z, Call_007_5ceb                           ; $5ce0: $cc $eb $5c

jr_007_5ce3:
  ld hl, $6314                                    ; $5ce3: $21 $14 $63
  call Call_007_5f18                              ; $5ce6: $cd $18 $5f
  jr jr_007_5cf6                                  ; $5ce9: $18 $0b

Call_007_5ceb:
  ld a, $90                                       ; $5ceb: $3e $90
  call Call_000_3427                              ; $5ced: $cd $27 $34

  db $01, $21, $69

Call_007_5cf3:
Jump_007_5cf3:
  call Call_007_5f18                              ; $5cf3: $cd $18 $5f

Jump_007_5cf6:
jr_007_5cf6:
  call Call_000_316b                              ; $5cf6: $cd $6b $31
  call Call_000_33f3                              ; $5cf9: $cd $f3 $33

  db $03, $3c, $6c

  push hl                                         ; $5cff: $e5
  call Call_000_09f4                              ; $5d00: $cd $f4 $09
  call Call_000_33f3                              ; $5d03: $cd $f3 $33

  db $00, $3d, $2f

  pop de                                          ; $5d09: $d1
  dec de                                          ; $5d0a: $1b
  ld a, e                                         ; $5d0b: $7b
  ld [$cdac], a                                   ; $5d0c: $ea $ac $cd
  ret                                             ; $5d0f: $c9


  call Call_000_33f3                              ; $5d10: $cd $f3 $33

  db $05, $a6, $7e

  ld hl, $cc5e                                    ; $5d16: $21 $5e $cc
  ld a, [hl+]                                     ; $5d19: $2a
  ld h, [hl]                                      ; $5d1a: $66
  ld l, a                                         ; $5d1b: $6f
  call Call_000_38fe                              ; $5d1c: $cd $fe $38
  xor a                                           ; $5d1f: $af
  ld [$cc4d], a                                   ; $5d20: $ea $4d $cc
  ld a, $23                                       ; $5d23: $3e $23
  jp Jump_000_261e                                ; $5d25: $c3 $1e $26


  xor a                                           ; $5d28: $af
  ld [$cc49], a                                   ; $5d29: $ea $49 $cc
  ld [$cc4d], a                                   ; $5d2c: $ea $4d $cc
  call Call_000_33f3                              ; $5d2f: $cd $f3 $33

  db $05, $a6, $7e

  ld a, $02                                       ; $5d35: $3e $02
  ld [$c0a0], a                                   ; $5d37: $ea $a0 $c0
  ld hl, $cc5e                                    ; $5d3a: $21 $5e $cc
  ld a, [hl+]                                     ; $5d3d: $2a
  ld h, [hl]                                      ; $5d3e: $66
  ld l, a                                         ; $5d3f: $6f
  call Call_000_38fe                              ; $5d40: $cd $fe $38
  ld a, $0b                                       ; $5d43: $3e $0b
  jp Jump_000_261e                                ; $5d45: $c3 $1e $26


  ret                                             ; $5d48: $c9


  ldh a, [rSVBK]                                  ; $5d49: $f0 $70
  push af                                         ; $5d4b: $f5
  ld a, $06                                       ; $5d4c: $3e $06
  ldh [rSVBK], a                                  ; $5d4e: $e0 $70
  xor a                                           ; $5d50: $af
  ld [$cc49], a                                   ; $5d51: $ea $49 $cc
  ld [$cc4d], a                                   ; $5d54: $ea $4d $cc
  ld a, [$ddc7]                                   ; $5d57: $fa $c7 $dd
  cp $04                                          ; $5d5a: $fe $04
  jr nz, jr_007_5d65                              ; $5d5c: $20 $07

  xor a                                           ; $5d5e: $af
  ld [$ddc7], a                                   ; $5d5f: $ea $c7 $dd
  ld [$cebf], a                                   ; $5d62: $ea $bf $ce

jr_007_5d65:
  call Call_000_33f3                              ; $5d65: $cd $f3 $33

  db $05, $a6, $7e

  ld a, [$dcc8]                                   ; $5d6b: $fa $c8 $dc
  ld hl, $52da                                    ; $5d6e: $21 $da $52
  call ResolveIndexedPointer16                              ; $5d71: $cd $8b $31
  ldh a, [$ffd6]                                  ; $5d74: $f0 $d6
  cp $48                                          ; $5d76: $fe $48
  jp nz, Jump_007_5dfd                            ; $5d78: $c2 $fd $5d

  ld hl, $cdd2                                    ; $5d7b: $21 $d2 $cd
  ld a, [hl+]                                     ; $5d7e: $2a
  ld h, [hl]                                      ; $5d7f: $66
  ld l, a                                         ; $5d80: $6f
  ld [$cdd6], a                                   ; $5d81: $ea $d6 $cd
  ld a, h                                         ; $5d84: $7c
  ld [$cdd7], a                                   ; $5d85: $ea $d7 $cd
  ld hl, $cdd4                                    ; $5d88: $21 $d4 $cd
  ld a, [hl+]                                     ; $5d8b: $2a
  ld h, [hl]                                      ; $5d8c: $66
  ld l, a                                         ; $5d8d: $6f
  ld [$cdd8], a                                   ; $5d8e: $ea $d8 $cd
  ld a, h                                         ; $5d91: $7c
  ld [$cdd9], a                                   ; $5d92: $ea $d9 $cd
  ld hl, $cdeb                                    ; $5d95: $21 $eb $cd
  ld a, [hl+]                                     ; $5d98: $2a
  ld h, [hl]                                      ; $5d99: $66
  ld l, a                                         ; $5d9a: $6f
  ld [$cdef], a                                   ; $5d9b: $ea $ef $cd
  ld a, h                                         ; $5d9e: $7c
  ld [$cdf0], a                                   ; $5d9f: $ea $f0 $cd
  ld hl, $cded                                    ; $5da2: $21 $ed $cd
  ld a, [hl+]                                     ; $5da5: $2a
  ld h, [hl]                                      ; $5da6: $66
  ld l, a                                         ; $5da7: $6f
  ld [$cdf1], a                                   ; $5da8: $ea $f1 $cd
  ld a, h                                         ; $5dab: $7c
  ld [$cdf2], a                                   ; $5dac: $ea $f2 $cd
  ld hl, $ce04                                    ; $5daf: $21 $04 $ce
  ld a, [hl+]                                     ; $5db2: $2a
  ld h, [hl]                                      ; $5db3: $66
  ld l, a                                         ; $5db4: $6f
  ld [$ce08], a                                   ; $5db5: $ea $08 $ce
  ld a, h                                         ; $5db8: $7c
  ld [$ce09], a                                   ; $5db9: $ea $09 $ce
  ld hl, $ce06                                    ; $5dbc: $21 $06 $ce
  ld a, [hl+]                                     ; $5dbf: $2a
  ld h, [hl]                                      ; $5dc0: $66
  ld l, a                                         ; $5dc1: $6f
  ld [$ce0a], a                                   ; $5dc2: $ea $0a $ce
  ld a, h                                         ; $5dc5: $7c
  ld [$ce0b], a                                   ; $5dc6: $ea $0b $ce
  ld hl, $ce1d                                    ; $5dc9: $21 $1d $ce
  ld a, [hl+]                                     ; $5dcc: $2a
  ld h, [hl]                                      ; $5dcd: $66
  ld l, a                                         ; $5dce: $6f
  ld [$ce21], a                                   ; $5dcf: $ea $21 $ce
  ld a, h                                         ; $5dd2: $7c
  ld [$ce22], a                                   ; $5dd3: $ea $22 $ce
  ld hl, $ce1f                                    ; $5dd6: $21 $1f $ce
  ld a, [hl+]                                     ; $5dd9: $2a
  ld h, [hl]                                      ; $5dda: $66
  ld l, a                                         ; $5ddb: $6f
  ld [$ce23], a                                   ; $5ddc: $ea $23 $ce
  ld a, h                                         ; $5ddf: $7c
  ld [$ce24], a                                   ; $5de0: $ea $24 $ce
  ldh [$ffbd], a                                  ; $5de3: $e0 $bd
  pop af                                          ; $5de5: $f1
  ldh [rSVBK], a                                  ; $5de6: $e0 $70
  ldh a, [$ffbd]                                  ; $5de8: $f0 $bd
  ld a, $02                                       ; $5dea: $3e $02
  ld [$c0a0], a                                   ; $5dec: $ea $a0 $c0
  ld hl, $cc5e                                    ; $5def: $21 $5e $cc
  ld a, [hl+]                                     ; $5df2: $2a
  ld h, [hl]                                      ; $5df3: $66
  ld l, a                                         ; $5df4: $6f
  call Call_000_38fe                              ; $5df5: $cd $fe $38
  ld a, $0b                                       ; $5df8: $3e $0b
  jp Jump_000_261e                                ; $5dfa: $c3 $1e $26


Jump_007_5dfd:
  ld a, l                                         ; $5dfd: $7d
  ldh [$ffd8], a                                  ; $5dfe: $e0 $d8
  ld [$ddc5], a                                   ; $5e00: $ea $c5 $dd
  ldh [$ffd6], a                                  ; $5e03: $e0 $d6
  ld [$ddc4], a                                   ; $5e05: $ea $c4 $dd
  cp $04                                          ; $5e08: $fe $04
  jr z, jr_007_5e14                               ; $5e0a: $28 $08

  cp $33                                          ; $5e0c: $fe $33
  jr z, jr_007_5e1a                               ; $5e0e: $28 $0a

  cp $4d                                          ; $5e10: $fe $4d
  jr nz, jr_007_5e1f                              ; $5e12: $20 $0b

jr_007_5e14:
  xor a                                           ; $5e14: $af
  ld [$ddc0], a                                   ; $5e15: $ea $c0 $dd
  jr jr_007_5e1f                                  ; $5e18: $18 $05

jr_007_5e1a:
  ld a, $01                                       ; $5e1a: $3e $01
  ld [$ddc0], a                                   ; $5e1c: $ea $c0 $dd

jr_007_5e1f:
  ld a, h                                         ; $5e1f: $7c
  ldh [$ffd7], a                                  ; $5e20: $e0 $d7
  ld hl, $cdd2                                    ; $5e22: $21 $d2 $cd
  ld a, [hl+]                                     ; $5e25: $2a
  ld h, [hl]                                      ; $5e26: $66
  ld l, a                                         ; $5e27: $6f
  ld [$cdd6], a                                   ; $5e28: $ea $d6 $cd
  ld a, h                                         ; $5e2b: $7c
  ld [$cdd7], a                                   ; $5e2c: $ea $d7 $cd
  ld hl, $cdd4                                    ; $5e2f: $21 $d4 $cd
  ld a, [hl+]                                     ; $5e32: $2a
  ld h, [hl]                                      ; $5e33: $66
  ld l, a                                         ; $5e34: $6f
  ld [$cdd8], a                                   ; $5e35: $ea $d8 $cd
  ld a, h                                         ; $5e38: $7c
  ld [$cdd9], a                                   ; $5e39: $ea $d9 $cd
  ld hl, $cdeb                                    ; $5e3c: $21 $eb $cd
  ld a, [hl+]                                     ; $5e3f: $2a
  ld h, [hl]                                      ; $5e40: $66
  ld l, a                                         ; $5e41: $6f
  ld [$cdef], a                                   ; $5e42: $ea $ef $cd
  ld a, h                                         ; $5e45: $7c
  ld [$cdf0], a                                   ; $5e46: $ea $f0 $cd
  ld hl, $cded                                    ; $5e49: $21 $ed $cd
  ld a, [hl+]                                     ; $5e4c: $2a
  ld h, [hl]                                      ; $5e4d: $66
  ld l, a                                         ; $5e4e: $6f
  ld [$cdf1], a                                   ; $5e4f: $ea $f1 $cd
  ld a, h                                         ; $5e52: $7c
  ld [$cdf2], a                                   ; $5e53: $ea $f2 $cd
  ld hl, $ce04                                    ; $5e56: $21 $04 $ce
  ld a, [hl+]                                     ; $5e59: $2a
  ld h, [hl]                                      ; $5e5a: $66
  ld l, a                                         ; $5e5b: $6f
  ld [$ce08], a                                   ; $5e5c: $ea $08 $ce
  ld a, h                                         ; $5e5f: $7c
  ld [$ce09], a                                   ; $5e60: $ea $09 $ce
  ld hl, $ce06                                    ; $5e63: $21 $06 $ce
  ld a, [hl+]                                     ; $5e66: $2a
  ld h, [hl]                                      ; $5e67: $66
  ld l, a                                         ; $5e68: $6f
  ld [$ce0a], a                                   ; $5e69: $ea $0a $ce
  ld a, h                                         ; $5e6c: $7c
  ld [$ce0b], a                                   ; $5e6d: $ea $0b $ce
  ld hl, $ce1d                                    ; $5e70: $21 $1d $ce
  ld a, [hl+]                                     ; $5e73: $2a
  ld h, [hl]                                      ; $5e74: $66
  ld l, a                                         ; $5e75: $6f
  ld [$ce21], a                                   ; $5e76: $ea $21 $ce
  ld a, h                                         ; $5e79: $7c
  ld [$ce22], a                                   ; $5e7a: $ea $22 $ce
  ld hl, $ce1f                                    ; $5e7d: $21 $1f $ce
  ld a, [hl+]                                     ; $5e80: $2a
  ld h, [hl]                                      ; $5e81: $66
  ld l, a                                         ; $5e82: $6f
  ld [$ce23], a                                   ; $5e83: $ea $23 $ce
  ld a, h                                         ; $5e86: $7c
  ld [$ce24], a                                   ; $5e87: $ea $24 $ce
  ldh [$ffbd], a                                  ; $5e8a: $e0 $bd
  pop af                                          ; $5e8c: $f1
  ldh [rSVBK], a                                  ; $5e8d: $e0 $70
  ldh a, [$ffbd]                                  ; $5e8f: $f0 $bd
  xor a                                           ; $5e91: $af
  ld [$c0a0], a                                   ; $5e92: $ea $a0 $c0
  ld hl, $cc5e                                    ; $5e95: $21 $5e $cc
  ld a, [hl+]                                     ; $5e98: $2a
  ld h, [hl]                                      ; $5e99: $66
  ld l, a                                         ; $5e9a: $6f
  call Call_000_38fe                              ; $5e9b: $cd $fe $38
  ld a, $0b                                       ; $5e9e: $3e $0b
  jp Jump_000_261e                                ; $5ea0: $c3 $1e $26


  call Call_000_2fc1                              ; $5ea3: $cd $c1 $2f
  ld l, $00                                       ; $5ea6: $2e $00
  call Call_000_3427                              ; $5ea8: $cd $27 $34

  db $03, $de, $48

  xor a                                           ; $5eae: $af
  ld [$cb54], a                                   ; $5eaf: $ea $54 $cb
  call Call_000_3427                              ; $5eb2: $cd $27 $34

  db $03, $49, $49

  ld a, [$cc25]                                   ; $5eb8: $fa $25 $cc
  call Call_000_33f3                              ; $5ebb: $cd $f3 $33

  db $03, $c5, $48

  cp $09                                          ; $5ec1: $fe $09
  jr z, jr_007_5ed3                               ; $5ec3: $28 $0e

  cp $0a                                          ; $5ec5: $fe $0a
  ret z                                           ; $5ec7: $c8

  ld a, [$cc25]                                   ; $5ec8: $fa $25 $cc
  ld l, $07                                       ; $5ecb: $2e $07
  call Call_000_3427                              ; $5ecd: $cd $27 $34

  db $03, $de, $48

jr_007_5ed3:
  ld a, [$cc25]                                   ; $5ed3: $fa $25 $cc
  ld l, $0a                                       ; $5ed6: $2e $0a
  call Call_000_3427                              ; $5ed8: $cd $27 $34

  db $03, $de, $48

  push bc                                         ; $5ede: $c5
  ld c, $00                                       ; $5edf: $0e $00
  call Call_000_33f3                              ; $5ee1: $cd $f3 $33

  db $03, $e8, $45

  pop bc                                          ; $5ee7: $c1
  ret                                             ; $5ee8: $c9


  push bc                                         ; $5ee9: $c5
  ld a, [$cc29]                                   ; $5eea: $fa $29 $cc
  call Call_000_33f3                              ; $5eed: $cd $f3 $33

  db $03, $1c, $43

  ld c, a                                         ; $5ef3: $4f
  call Call_000_33f3                              ; $5ef4: $cd $f3 $33

  db $03, $d3, $45

  pop bc                                          ; $5efa: $c1
  ret                                             ; $5efb: $c9


  push bc                                         ; $5efc: $c5
  ld a, [$cc29]                                   ; $5efd: $fa $29 $cc
  call Call_000_33f3                              ; $5f00: $cd $f3 $33
  inc bc                                          ; $5f03: $03
  inc e                                           ; $5f04: $1c
  ld b, e                                         ; $5f05: $43
  ld c, a                                         ; $5f06: $4f
  call Call_000_33f3                              ; $5f07: $cd $f3 $33
  inc bc                                          ; $5f0a: $03
  dec l                                           ; $5f0b: $2d
  ld b, [hl]                                      ; $5f0c: $46
  pop bc                                          ; $5f0d: $c1
  ret                                             ; $5f0e: $c9


Call_007_5f0f:
  call Call_000_2fc1                              ; $5f0f: $cd $c1 $2f
  call Call_000_3427                              ; $5f12: $cd $27 $34

  db $03, $76, $49

Call_007_5f18:
  ldh a, [rSVBK]                                  ; $5f18: $f0 $70
  push af                                         ; $5f1a: $f5
  ld a, $05                                       ; $5f1b: $3e $05
  ldh [rSVBK], a                                  ; $5f1d: $e0 $70
  push hl                                         ; $5f1f: $e5
  call Call_007_5f0f                              ; $5f20: $cd $0f $5f
  ld a, [hl]                                      ; $5f23: $7e
  pop hl                                          ; $5f24: $e1
  ldh [$ffbd], a                                  ; $5f25: $e0 $bd
  pop af                                          ; $5f27: $f1
  ldh [rSVBK], a                                  ; $5f28: $e0 $70
  ldh a, [$ffbd]                                  ; $5f2a: $f0 $bd
  ret                                             ; $5f2c: $c9


  call Call_007_5f0f                              ; $5f2d: $cd $0f $5f
  ld de, $0005                                    ; $5f30: $11 $05 $00
  add hl, de                                      ; $5f33: $19
  ldh a, [rSVBK]                                  ; $5f34: $f0 $70
  push af                                         ; $5f36: $f5
  ld a, $05                                       ; $5f37: $3e $05
  ldh [rSVBK], a                                  ; $5f39: $e0 $70
  ld a, [hl+]                                     ; $5f3b: $2a
  ld h, [hl]                                      ; $5f3c: $66
  ld l, a                                         ; $5f3d: $6f
  pop af                                          ; $5f3e: $f1
  ldh [rSVBK], a                                  ; $5f3f: $e0 $70
  ld a, l                                         ; $5f41: $7d
  or h                                            ; $5f42: $b4
  jr nz, jr_007_5f5f                              ; $5f43: $20 $1a

  call Call_000_2fc1                              ; $5f45: $cd $c1 $2f
  ld l, $03                                       ; $5f48: $2e $03
  call Call_000_33f3                              ; $5f4a: $cd $f3 $33

  db $03, $de, $48

  xor a                                           ; $5f50: $af
  jp StoreCPUFlags                                ; $5f51: $c3 $39 $00


  ld a, [$cc25]                                   ; $5f54: $fa $25 $cc
  ld l, $0a                                       ; $5f57: $2e $0a
  call Call_000_3427                              ; $5f59: $cd $27 $34
  inc bc                                          ; $5f5c: $03
  sbc $48                                         ; $5f5d: $de $48

jr_007_5f5f:
  call Call_000_2fc1                              ; $5f5f: $cd $c1 $2f
  call Call_000_33f3                              ; $5f62: $cd $f3 $33

  db $03, $c5, $48

  cp $02                                          ; $5f68: $fe $02
  jr nz, jr_007_5f7d                              ; $5f6a: $20 $11

  call Call_000_2fc1                              ; $5f6c: $cd $c1 $2f
  ld l, $08                                       ; $5f6f: $2e $08
  call Call_000_33f3                              ; $5f71: $cd $f3 $33

  db $03, $de, $48

  ld a, $02                                       ; $5f77: $3e $02
  dec a                                           ; $5f79: $3d
  jp StoreCPUFlags                                ; $5f7a: $c3 $39 $00


jr_007_5f7d:
  ld a, $02                                       ; $5f7d: $3e $02
  dec a                                           ; $5f7f: $3d
  call StoreCPUFlags                              ; $5f80: $cd $39 $00
  jp Jump_007_5643                                ; $5f83: $c3 $43 $56


  ldh a, [rSVBK]                                  ; $5f86: $f0 $70
  push af                                         ; $5f88: $f5
  ld a, $05                                       ; $5f89: $3e $05
  ldh [rSVBK], a                                  ; $5f8b: $e0 $70
  call Call_007_5f0f                              ; $5f8d: $cd $0f $5f
  ld de, $000a                                    ; $5f90: $11 $0a $00
  add hl, de                                      ; $5f93: $19
  ld a, $02                                       ; $5f94: $3e $02
  or [hl]                                         ; $5f96: $b6
  ld [hl], a                                      ; $5f97: $77
  ld hl, $cb6c                                    ; $5f98: $21 $6c $cb
  dec [hl]                                        ; $5f9b: $35
  pop af                                          ; $5f9c: $f1
  ldh [rSVBK], a                                  ; $5f9d: $e0 $70
  ret                                             ; $5f9f: $c9


  ldh a, [rSVBK]                                  ; $5fa0: $f0 $70
  push af                                         ; $5fa2: $f5
  ld a, $05                                       ; $5fa3: $3e $05
  ldh [rSVBK], a                                  ; $5fa5: $e0 $70
  call Call_007_5f0f                              ; $5fa7: $cd $0f $5f
  ld de, $000a                                    ; $5faa: $11 $0a $00
  add hl, de                                      ; $5fad: $19
  ld a, $02                                       ; $5fae: $3e $02
  or [hl]                                         ; $5fb0: $b6
  ld [hl], a                                      ; $5fb1: $77
  push bc                                         ; $5fb2: $c5
  call Call_000_33f3                              ; $5fb3: $cd $f3 $33

  db $03, $e3, $49

  pop bc                                          ; $5fb9: $c1
  pop af                                          ; $5fba: $f1
  ldh [rSVBK], a                                  ; $5fbb: $e0 $70
  ret                                             ; $5fbd: $c9


  ldh a, [rSVBK]                                  ; $5fbe: $f0 $70
  push af                                         ; $5fc0: $f5
  ld a, $05                                       ; $5fc1: $3e $05
  ldh [rSVBK], a                                  ; $5fc3: $e0 $70
  call Call_007_5f0f                              ; $5fc5: $cd $0f $5f
  push hl                                         ; $5fc8: $e5
  ld de, $0014                                    ; $5fc9: $11 $14 $00
  add hl, de                                      ; $5fcc: $19
  set 0, [hl]                                     ; $5fcd: $cb $c6
  pop hl                                          ; $5fcf: $e1
  ld de, $000a                                    ; $5fd0: $11 $0a $00
  add hl, de                                      ; $5fd3: $19
  ld a, $08                                       ; $5fd4: $3e $08
  or [hl]                                         ; $5fd6: $b6
  ld [hl], a                                      ; $5fd7: $77
  pop af                                          ; $5fd8: $f1
  ldh [rSVBK], a                                  ; $5fd9: $e0 $70
  ld a, [$cc2a]                                   ; $5fdb: $fa $2a $cc
  dec a                                           ; $5fde: $3d
  cp $03                                          ; $5fdf: $fe $03
  ret nc                                          ; $5fe1: $d0

  call Call_007_6d75                              ; $5fe2: $cd $75 $6d
  ret                                             ; $5fe5: $c9


  ldh a, [rSVBK]                                  ; $5fe6: $f0 $70
  push af                                         ; $5fe8: $f5
  ld a, $05                                       ; $5fe9: $3e $05
  ldh [rSVBK], a                                  ; $5feb: $e0 $70
  call Call_007_5f0f                              ; $5fed: $cd $0f $5f
  ld de, $0012                                    ; $5ff0: $11 $12 $00
  add hl, de                                      ; $5ff3: $19
  ld a, [hl]                                      ; $5ff4: $7e
  ldh [$ffbd], a                                  ; $5ff5: $e0 $bd
  pop af                                          ; $5ff7: $f1
  ldh [rSVBK], a                                  ; $5ff8: $e0 $70
  ldh a, [$ffbd]                                  ; $5ffa: $f0 $bd
  ld hl, $0002                                    ; $5ffc: $21 $02 $00
  add hl, bc                                      ; $5fff: $09
  cp [hl]                                         ; $6000: $be
  jp z, StoreCPUFlags                             ; $6001: $ca $39 $00

  ld [hl], a                                      ; $6004: $77
  jp StoreCPUFlags                                ; $6005: $c3 $39 $00


Call_007_6008:
  push bc                                         ; $6008: $c5
  ld b, $ff                                       ; $6009: $06 $ff
  ld hl, $cfe7                                    ; $600b: $21 $e7 $cf
  ld de, $0019                                    ; $600e: $11 $19 $00

jr_007_6011:
  inc b                                           ; $6011: $04
  add hl, de                                      ; $6012: $19
  ld a, [hl]                                      ; $6013: $7e
  inc a                                           ; $6014: $3c
  jr nz, jr_007_6011                              ; $6015: $20 $fa

  cp $ff                                          ; $6017: $fe $ff
  jr z, jr_007_6011                               ; $6019: $28 $f6

  ld a, b                                         ; $601b: $78
  pop bc                                          ; $601c: $c1
  ret                                             ; $601d: $c9


  ldh a, [$ffd2]                                  ; $601e: $f0 $d2
  or a                                            ; $6020: $b7
  jr z, jr_007_6056                               ; $6021: $28 $33

  ldh a, [rSVBK]                                  ; $6023: $f0 $70
  push af                                         ; $6025: $f5
  ld a, $05                                       ; $6026: $3e $05
  ldh [rSVBK], a                                  ; $6028: $e0 $70
  inc bc                                          ; $602a: $03
  inc bc                                          ; $602b: $03
  ld a, [bc]                                      ; $602c: $0a
  ld d, a                                         ; $602d: $57
  dec bc                                          ; $602e: $0b
  ld a, [bc]                                      ; $602f: $0a
  push af                                         ; $6030: $f5
  ld a, d                                         ; $6031: $7a
  ld [bc], a                                      ; $6032: $02
  dec bc                                          ; $6033: $0b
  ld hl, $5434                                    ; $6034: $21 $34 $54
  call Call_007_609c                              ; $6037: $cd $9c $60
  call Call_000_2fc1                              ; $603a: $cd $c1 $2f
  ld d, a                                         ; $603d: $57
  ld e, $01                                       ; $603e: $1e $01
  ld a, $00                                       ; $6040: $3e $00
  call Call_000_2fdd                              ; $6042: $cd $dd $2f
  pop af                                          ; $6045: $f1
  ld hl, $5360                                    ; $6046: $21 $60 $53
  call Call_000_3182                              ; $6049: $cd $82 $31
  call Call_000_33f3                              ; $604c: $cd $f3 $33

  db $03, $63, $78

  pop af                                          ; $6052: $f1
  ldh [rSVBK], a                                  ; $6053: $e0 $70
  ret                                             ; $6055: $c9


jr_007_6056:
  ldh a, [rSVBK]                                  ; $6056: $f0 $70
  push af                                         ; $6058: $f5
  ld a, $05                                       ; $6059: $3e $05
  ldh [rSVBK], a                                  ; $605b: $e0 $70
  ld a, [$cc25]                                   ; $605d: $fa $25 $cc
  ld [$cb56], a                                   ; $6060: $ea $56 $cb
  call Call_007_6008                              ; $6063: $cd $08 $60
  ld [$cc25], a                                   ; $6066: $ea $25 $cc
  inc bc                                          ; $6069: $03
  ld a, [bc]                                      ; $606a: $0a
  ld [hl], a                                      ; $606b: $77
  ld a, [$cc25]                                   ; $606c: $fa $25 $cc
  ld [bc], a                                      ; $606f: $02
  dec bc                                          ; $6070: $0b
  push hl                                         ; $6071: $e5
  ld hl, $5434                                    ; $6072: $21 $34 $54
  call Call_007_609c                              ; $6075: $cd $9c $60
  ld a, [$cc25]                                   ; $6078: $fa $25 $cc
  ld d, a                                         ; $607b: $57
  ld e, $01                                       ; $607c: $1e $01
  pop hl                                          ; $607e: $e1
  ld a, [hl]                                      ; $607f: $7e
  ld hl, $5360                                    ; $6080: $21 $60 $53
  call Call_000_3182                              ; $6083: $cd $82 $31
  call Call_000_33f3                              ; $6086: $cd $f3 $33

  db $03, $63, $78

  call Call_000_33f3                              ; $608c: $cd $f3 $33

  db $03, $46, $45

  ld a, [$cb56]                                   ; $6092: $fa $56 $cb
  ld [$cc25], a                                   ; $6095: $ea $25 $cc
  pop af                                          ; $6098: $f1
  ldh [rSVBK], a                                  ; $6099: $e0 $70
  ret                                             ; $609b: $c9


Call_007_609c:
  call Call_000_3182                              ; $609c: $cd $82 $31
  jp Jump_000_0885                                ; $609f: $c3 $85 $08


  db $03, $82, $03, $7c

  ld hl, $002a                                    ; $60a6: $21 $2a $00
  add hl, bc                                      ; $60a9: $09
  set 0, [hl]                                     ; $60aa: $cb $c6
  ld a, [$cc2c]                                   ; $60ac: $fa $2c $cc
  and $10                                         ; $60af: $e6 $10
  ret z                                           ; $60b1: $c8

  res 0, [hl]                                     ; $60b2: $cb $86
  xor a                                           ; $60b4: $af
  call Call_000_082f                              ; $60b5: $cd $2f $08
  ld l, $00                                       ; $60b8: $2e $00
  ld a, [$cb70]                                   ; $60ba: $fa $70 $cb
  cp $09                                          ; $60bd: $fe $09
  jr z, jr_007_60c6                               ; $60bf: $28 $05

  cp $07                                          ; $60c1: $fe $07
  jr z, jr_007_60c6                               ; $60c3: $28 $01

  inc l                                           ; $60c5: $2c

jr_007_60c6:
  ld a, l                                         ; $60c6: $7d
  or a                                            ; $60c7: $b7
  push af                                         ; $60c8: $f5
  ld hl, $60a2                                    ; $60c9: $21 $a2 $60
  call Call_000_3182                              ; $60cc: $cd $82 $31
  call Call_000_0885                              ; $60cf: $cd $85 $08
  pop af                                          ; $60d2: $f1
  ret z                                           ; $60d3: $c8

  ld a, $40                                       ; $60d4: $3e $40
  jp Jump_000_082f                                ; $60d6: $c3 $2f $08


  ld a, [$cc2c]                                   ; $60d9: $fa $2c $cc
  and $01                                         ; $60dc: $e6 $01
  jr z, jr_007_60ef                               ; $60de: $28 $0f

  ld a, [$cc2c]                                   ; $60e0: $fa $2c $cc
  ld hl, $002a                                    ; $60e3: $21 $2a $00
  add hl, bc                                      ; $60e6: $09
  res 0, [hl]                                     ; $60e7: $cb $86
  call Call_000_3427                              ; $60e9: $cd $27 $34

  db $05, $fe, $77

jr_007_60ef:
  ld hl, $002a                                    ; $60ef: $21 $2a $00
  add hl, bc                                      ; $60f2: $09
  set 0, [hl]                                     ; $60f3: $cb $c6
  ret                                             ; $60f5: $c9


  ld a, [$cc2c]                                   ; $60f6: $fa $2c $cc
  and $02                                         ; $60f9: $e6 $02
  jr z, jr_007_614e                               ; $60fb: $28 $51

  ld hl, $002a                                    ; $60fd: $21 $2a $00
  add hl, bc                                      ; $6100: $09
  res 0, [hl]                                     ; $6101: $cb $86
  ld a, [$cc2a]                                   ; $6103: $fa $2a $cc
  or a                                            ; $6106: $b7
  jr z, jr_007_611b                               ; $6107: $28 $12

  cp $07                                          ; $6109: $fe $07
  jr z, jr_007_6116                               ; $610b: $28 $09

  cp $08                                          ; $610d: $fe $08
  jr nz, jr_007_613b                              ; $610f: $20 $2a

  ld de, $0006                                    ; $6111: $11 $06 $00
  jr jr_007_611e                                  ; $6114: $18 $08

jr_007_6116:
  ld de, $0306                                    ; $6116: $11 $06 $03
  jr jr_007_611e                                  ; $6119: $18 $03

jr_007_611b:
  ld de, $0003                                    ; $611b: $11 $03 $00

jr_007_611e:
  ld hl, $0002                                    ; $611e: $21 $02 $00
  add hl, bc                                      ; $6121: $09
  ld a, [hl]                                      ; $6122: $7e
  inc a                                           ; $6123: $3c
  cp e                                            ; $6124: $bb
  jr nz, jr_007_6128                              ; $6125: $20 $01

  ld a, d                                         ; $6127: $7a

jr_007_6128:
  ld [hl], a                                      ; $6128: $77
  call Call_000_33f3                              ; $6129: $cd $f3 $33
  inc bc                                          ; $612c: $03
  ld c, d                                         ; $612d: $4a
  ld c, b                                         ; $612e: $48
  and $02                                         ; $612f: $e6 $02
  jr nz, jr_007_611e                              ; $6131: $20 $eb

  call Call_000_2fc9                              ; $6133: $cd $c9 $2f
  ld hl, $5450                                    ; $6136: $21 $50 $54
  jr jr_007_6155                                  ; $6139: $18 $1a

jr_007_613b:
  cp $04                                          ; $613b: $fe $04
  ld a, $20                                       ; $613d: $3e $20
  jr nc, jr_007_6142                              ; $613f: $30 $01

  xor a                                           ; $6141: $af

jr_007_6142:
  call Call_000_0818                              ; $6142: $cd $18 $08
  ld hl, $5450                                    ; $6145: $21 $50 $54
  ld a, [$cc2a]                                   ; $6148: $fa $2a $cc
  dec a                                           ; $614b: $3d
  jr jr_007_6155                                  ; $614c: $18 $07

jr_007_614e:
  ld hl, $002a                                    ; $614e: $21 $2a $00
  add hl, bc                                      ; $6151: $09
  set 0, [hl]                                     ; $6152: $cb $c6
  ret                                             ; $6154: $c9


jr_007_6155:
  call Call_000_3182                              ; $6155: $cd $82 $31
  jp Jump_000_0885                                ; $6158: $c3 $85 $08


  ldh a, [rSVBK]                                  ; $615b: $f0 $70
  push af                                         ; $615d: $f5
  ld a, $05                                       ; $615e: $3e $05
  ldh [rSVBK], a                                  ; $6160: $e0 $70
  call Call_000_33f3                              ; $6162: $cd $f3 $33

  db $03, $73, $49

  ld a, [hl]                                      ; $6168: $7e
  cp $07                                          ; $6169: $fe $07
  ret nc                                          ; $616b: $d0

  or a                                            ; $616c: $b7
  jr z, jr_007_617e                               ; $616d: $28 $0f

  dec a                                           ; $616f: $3d
  jr z, jr_007_617e                               ; $6170: $28 $0c

  dec a                                           ; $6172: $3d
  jr z, jr_007_6183                               ; $6173: $28 $0e

  dec a                                           ; $6175: $3d
  jr z, jr_007_6183                               ; $6176: $28 $0b

  dec a                                           ; $6178: $3d
  jr z, jr_007_6188                               ; $6179: $28 $0d

  dec a                                           ; $617b: $3d
  jr z, jr_007_618d                               ; $617c: $28 $0f

jr_007_617e:
  ld hl, $ce3f                                    ; $617e: $21 $3f $ce
  jr jr_007_6190                                  ; $6181: $18 $0d

jr_007_6183:
  ld hl, $ce71                                    ; $6183: $21 $71 $ce
  jr jr_007_6190                                  ; $6186: $18 $08

jr_007_6188:
  ld hl, $ce82                                    ; $6188: $21 $82 $ce
  jr jr_007_6190                                  ; $618b: $18 $03

jr_007_618d:
  ld hl, $ce93                                    ; $618d: $21 $93 $ce

jr_007_6190:
  pop af                                          ; $6190: $f1
  ldh [rSVBK], a                                  ; $6191: $e0 $70
  ld a, [$cc29]                                   ; $6193: $fa $29 $cc
  cp $15                                          ; $6196: $fe $15
  ret nc                                          ; $6198: $d0

  push hl                                         ; $6199: $e5
  ld h, a                                         ; $619a: $67
  ld l, $03                                       ; $619b: $2e $03
  call $00b0                                      ; $619d: $cd $b0 $00
  ld a, h                                         ; $61a0: $7c
  pop hl                                          ; $61a1: $e1
  call Call_000_3427                              ; $61a2: $cd $27 $34

  db $06, $ce, $6c

  ld a, $01                                       ; $61a8: $3e $01
  ld [$cd3c], a                                   ; $61aa: $ea $3c $cd
  ret                                             ; $61ad: $c9


  call Call_007_5f0f                              ; $61ae: $cd $0f $5f
  ld de, $0001                                    ; $61b1: $11 $01 $00
  add hl, de                                      ; $61b4: $19
  ldh a, [rSVBK]                                  ; $61b5: $f0 $70
  push af                                         ; $61b7: $f5
  ld a, $05                                       ; $61b8: $3e $05
  ldh [rSVBK], a                                  ; $61ba: $e0 $70
  ld a, [hl+]                                     ; $61bc: $2a
  ld d, [hl]                                      ; $61bd: $56
  ld e, a                                         ; $61be: $5f
  pop af                                          ; $61bf: $f1
  ldh [rSVBK], a                                  ; $61c0: $e0 $70
  jp Jump_000_2fe3                                ; $61c2: $c3 $e3 $2f


  ldh a, [rSVBK]                                  ; $61c5: $f0 $70
  push af                                         ; $61c7: $f5
  ld a, $05                                       ; $61c8: $3e $05
  ldh [rSVBK], a                                  ; $61ca: $e0 $70
  call Call_007_5f0f                              ; $61cc: $cd $0f $5f
  ld de, $000a                                    ; $61cf: $11 $0a $00
  add hl, de                                      ; $61d2: $19
  ld a, [hl]                                      ; $61d3: $7e
  ldh [$ffbd], a                                  ; $61d4: $e0 $bd
  pop af                                          ; $61d6: $f1
  ldh [rSVBK], a                                  ; $61d7: $e0 $70
  ldh a, [$ffbd]                                  ; $61d9: $f0 $bd
  push af                                         ; $61db: $f5
  and $80                                         ; $61dc: $e6 $80
  jr z, jr_007_61ee                               ; $61de: $28 $0e

  ld hl, $002a                                    ; $61e0: $21 $2a $00
  add hl, bc                                      ; $61e3: $09
  bit 0, [hl]                                     ; $61e4: $cb $46
  jr z, jr_007_61ec                               ; $61e6: $28 $04

  res 0, [hl]                                     ; $61e8: $cb $86
  jr jr_007_61ee                                  ; $61ea: $18 $02

jr_007_61ec:
  set 0, [hl]                                     ; $61ec: $cb $c6

jr_007_61ee:
  pop af                                          ; $61ee: $f1
  and $08                                         ; $61ef: $e6 $08
  ret z                                           ; $61f1: $c8

  ld hl, $0023                                    ; $61f2: $21 $23 $00
  add hl, bc                                      ; $61f5: $09
  xor a                                           ; $61f6: $af
  ld [hl], a                                      ; $61f7: $77
  ret                                             ; $61f8: $c9


  ld a, [$cc2a]                                   ; $61f9: $fa $2a $cc
  dec a                                           ; $61fc: $3d
  ldh [$ffbd], a                                  ; $61fd: $e0 $bd
  ldh a, [rSVBK]                                  ; $61ff: $f0 $70
  push af                                         ; $6201: $f5
  ld a, $05                                       ; $6202: $3e $05
  ldh [rSVBK], a                                  ; $6204: $e0 $70
  ldh a, [$ffbd]                                  ; $6206: $f0 $bd
  call Call_000_33f3                              ; $6208: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $620e: $11 $0a $00
  add hl, de                                      ; $6211: $19
  set 7, [hl]                                     ; $6212: $cb $fe
  ldh [$ffbd], a                                  ; $6214: $e0 $bd
  pop af                                          ; $6216: $f1
  ldh [rSVBK], a                                  ; $6217: $e0 $70
  ldh a, [$ffbd]                                  ; $6219: $f0 $bd
  ret                                             ; $621b: $c9


  ld a, [$cc2a]                                   ; $621c: $fa $2a $cc
  dec a                                           ; $621f: $3d
  ldh [$ffbd], a                                  ; $6220: $e0 $bd
  ldh a, [rSVBK]                                  ; $6222: $f0 $70
  push af                                         ; $6224: $f5
  ld a, $05                                       ; $6225: $3e $05
  ldh [rSVBK], a                                  ; $6227: $e0 $70
  ldh a, [$ffbd]                                  ; $6229: $f0 $bd
  call Call_000_33f3                              ; $622b: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $6231: $11 $0a $00
  add hl, de                                      ; $6234: $19
  set 2, [hl]                                     ; $6235: $cb $d6
  ld de, $000b                                    ; $6237: $11 $0b $00
  add hl, de                                      ; $623a: $19
  ld a, [hl]                                      ; $623b: $7e
  cp $ff                                          ; $623c: $fe $ff
  jr z, jr_007_6258                               ; $623e: $28 $18

  ld de, $000f                                    ; $6240: $11 $0f $00
  ld [hl], e                                      ; $6243: $73
  inc hl                                          ; $6244: $23
  ld [hl], d                                      ; $6245: $72
  ldh [$ffbd], a                                  ; $6246: $e0 $bd
  pop af                                          ; $6248: $f1
  ldh [rSVBK], a                                  ; $6249: $e0 $70
  ldh a, [$ffbd]                                  ; $624b: $f0 $bd
  ld a, [$cc2a]                                   ; $624d: $fa $2a $cc
  dec a                                           ; $6250: $3d
  cp $03                                          ; $6251: $fe $03
  ret nc                                          ; $6253: $d0

  call Call_007_6d8e                              ; $6254: $cd $8e $6d
  ret                                             ; $6257: $c9


Jump_007_6258:
jr_007_6258:
  ld a, [$cc2a]                                   ; $6258: $fa $2a $cc
  dec a                                           ; $625b: $3d
  call Call_000_33f3                              ; $625c: $cd $f3 $33
  inc bc                                          ; $625f: $03
  halt                                            ; $6260: $76
  ld c, c                                         ; $6261: $49
  ld de, $000a                                    ; $6262: $11 $0a $00
  add hl, de                                      ; $6265: $19
  res 2, [hl]                                     ; $6266: $cb $96
  ldh [$ffbd], a                                  ; $6268: $e0 $bd
  pop af                                          ; $626a: $f1
  ldh [rSVBK], a                                  ; $626b: $e0 $70
  ldh a, [$ffbd]                                  ; $626d: $f0 $bd
  ret                                             ; $626f: $c9


  ld a, [$cc2a]                                   ; $6270: $fa $2a $cc
  dec a                                           ; $6273: $3d
  ldh [$ffbd], a                                  ; $6274: $e0 $bd
  ldh a, [rSVBK]                                  ; $6276: $f0 $70
  push af                                         ; $6278: $f5
  ld a, $05                                       ; $6279: $3e $05
  ldh [rSVBK], a                                  ; $627b: $e0 $70
  ldh a, [$ffbd]                                  ; $627d: $f0 $bd
  call Call_000_33f3                              ; $627f: $cd $f3 $33
  inc bc                                          ; $6282: $03
  halt                                            ; $6283: $76
  ld c, c                                         ; $6284: $49
  ld de, $000a                                    ; $6285: $11 $0a $00
  add hl, de                                      ; $6288: $19
  set 2, [hl]                                     ; $6289: $cb $d6
  ld de, $000b                                    ; $628b: $11 $0b $00
  add hl, de                                      ; $628e: $19
  ld a, [hl]                                      ; $628f: $7e
  cp $ff                                          ; $6290: $fe $ff
  jr z, jr_007_6258                               ; $6292: $28 $c4

  ld de, $0014                                    ; $6294: $11 $14 $00
  ld [hl], e                                      ; $6297: $73
  inc hl                                          ; $6298: $23
  ld [hl], d                                      ; $6299: $72
  ldh [$ffbd], a                                  ; $629a: $e0 $bd
  pop af                                          ; $629c: $f1
  ldh [rSVBK], a                                  ; $629d: $e0 $70
  ldh a, [$ffbd]                                  ; $629f: $f0 $bd
  ld a, [$cc2a]                                   ; $62a1: $fa $2a $cc
  dec a                                           ; $62a4: $3d
  cp $03                                          ; $62a5: $fe $03
  ret nc                                          ; $62a7: $d0

  call Call_007_6d8e                              ; $62a8: $cd $8e $6d
  ret                                             ; $62ab: $c9


  ld a, [$cc2a]                                   ; $62ac: $fa $2a $cc
  dec a                                           ; $62af: $3d
  ldh [$ffbd], a                                  ; $62b0: $e0 $bd
  ldh a, [rSVBK]                                  ; $62b2: $f0 $70
  push af                                         ; $62b4: $f5
  ld a, $05                                       ; $62b5: $3e $05
  ldh [rSVBK], a                                  ; $62b7: $e0 $70
  ldh a, [$ffbd]                                  ; $62b9: $f0 $bd
  call Call_000_33f3                              ; $62bb: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $62c1: $11 $0a $00
  add hl, de                                      ; $62c4: $19
  set 2, [hl]                                     ; $62c5: $cb $d6
  ld de, $000b                                    ; $62c7: $11 $0b $00
  add hl, de                                      ; $62ca: $19
  ld a, [hl]                                      ; $62cb: $7e
  push hl                                         ; $62cc: $e5
  ld a, [hl+]                                     ; $62cd: $2a
  ld h, [hl]                                      ; $62ce: $66
  ld l, a                                         ; $62cf: $6f
  ld de, $000a                                    ; $62d0: $11 $0a $00
  add hl, de                                      ; $62d3: $19
  ld d, h                                         ; $62d4: $54
  ld e, l                                         ; $62d5: $5d
  pop hl                                          ; $62d6: $e1
  ld [hl], e                                      ; $62d7: $73
  inc hl                                          ; $62d8: $23
  ld [hl], d                                      ; $62d9: $72
  ldh [$ffbd], a                                  ; $62da: $e0 $bd
  pop af                                          ; $62dc: $f1
  ldh [rSVBK], a                                  ; $62dd: $e0 $70
  ldh a, [$ffbd]                                  ; $62df: $f0 $bd
  ld a, [$cc2a]                                   ; $62e1: $fa $2a $cc
  dec a                                           ; $62e4: $3d
  cp $03                                          ; $62e5: $fe $03
  ret nc                                          ; $62e7: $d0

  call Call_007_6d8e                              ; $62e8: $cd $8e $6d
  ret                                             ; $62eb: $c9


  ld a, [$cc2a]                                   ; $62ec: $fa $2a $cc
  dec a                                           ; $62ef: $3d
  ldh [$ffbd], a                                  ; $62f0: $e0 $bd
  ldh a, [rSVBK]                                  ; $62f2: $f0 $70
  push af                                         ; $62f4: $f5
  ld a, $05                                       ; $62f5: $3e $05
  ldh [rSVBK], a                                  ; $62f7: $e0 $70
  ldh a, [$ffbd]                                  ; $62f9: $f0 $bd
  call Call_000_33f3                              ; $62fb: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $6301: $11 $0a $00
  add hl, de                                      ; $6304: $19
  set 2, [hl]                                     ; $6305: $cb $d6
  ld de, $000b                                    ; $6307: $11 $0b $00
  add hl, de                                      ; $630a: $19
  ld a, [hl]                                      ; $630b: $7e
  cp $ff                                          ; $630c: $fe $ff
  jp z, Jump_007_6258                             ; $630e: $ca $58 $62

  push hl                                         ; $6311: $e5
  ld a, [hl+]                                     ; $6312: $2a
  ld h, [hl]                                      ; $6313: $66
  ld l, a                                         ; $6314: $6f
  ld de, $000f                                    ; $6315: $11 $0f $00
  add hl, de                                      ; $6318: $19
  ld d, h                                         ; $6319: $54
  ld e, l                                         ; $631a: $5d
  pop hl                                          ; $631b: $e1
  ld [hl], e                                      ; $631c: $73
  inc hl                                          ; $631d: $23
  ld [hl], d                                      ; $631e: $72
  ldh [$ffbd], a                                  ; $631f: $e0 $bd
  pop af                                          ; $6321: $f1
  ldh [rSVBK], a                                  ; $6322: $e0 $70
  ldh a, [$ffbd]                                  ; $6324: $f0 $bd
  ld a, [$cc2a]                                   ; $6326: $fa $2a $cc
  dec a                                           ; $6329: $3d
  cp $03                                          ; $632a: $fe $03
  ret nc                                          ; $632c: $d0

  call Call_007_6d8e                              ; $632d: $cd $8e $6d
  ret                                             ; $6330: $c9


  ld a, [$cc2a]                                   ; $6331: $fa $2a $cc
  dec a                                           ; $6334: $3d
  ldh [$ffbd], a                                  ; $6335: $e0 $bd
  ldh a, [rSVBK]                                  ; $6337: $f0 $70
  push af                                         ; $6339: $f5
  ld a, $05                                       ; $633a: $3e $05
  ldh [rSVBK], a                                  ; $633c: $e0 $70
  ldh a, [$ffbd]                                  ; $633e: $f0 $bd
  call Call_000_33f3                              ; $6340: $cd $f3 $33
  inc bc                                          ; $6343: $03
  halt                                            ; $6344: $76
  ld c, c                                         ; $6345: $49
  ld de, $000a                                    ; $6346: $11 $0a $00
  add hl, de                                      ; $6349: $19
  set 2, [hl]                                     ; $634a: $cb $d6
  ld de, $000b                                    ; $634c: $11 $0b $00
  add hl, de                                      ; $634f: $19
  ld a, [hl]                                      ; $6350: $7e
  cp $ff                                          ; $6351: $fe $ff
  jp z, Jump_007_6258                             ; $6353: $ca $58 $62

  push hl                                         ; $6356: $e5
  ld a, [hl+]                                     ; $6357: $2a
  ld h, [hl]                                      ; $6358: $66
  ld l, a                                         ; $6359: $6f
  ld de, $0023                                    ; $635a: $11 $23 $00
  add hl, de                                      ; $635d: $19
  ld d, h                                         ; $635e: $54
  ld e, l                                         ; $635f: $5d
  pop hl                                          ; $6360: $e1
  ld [hl], e                                      ; $6361: $73
  inc hl                                          ; $6362: $23
  ld [hl], d                                      ; $6363: $72
  ldh [$ffbd], a                                  ; $6364: $e0 $bd
  pop af                                          ; $6366: $f1
  ldh [rSVBK], a                                  ; $6367: $e0 $70
  ldh a, [$ffbd]                                  ; $6369: $f0 $bd
  ld a, [$cc2a]                                   ; $636b: $fa $2a $cc
  dec a                                           ; $636e: $3d
  cp $03                                          ; $636f: $fe $03
  ret nc                                          ; $6371: $d0

  call Call_007_6d75                              ; $6372: $cd $75 $6d
  ret                                             ; $6375: $c9


  ld a, [$cc2a]                                   ; $6376: $fa $2a $cc
  dec a                                           ; $6379: $3d
  ldh [$ffbd], a                                  ; $637a: $e0 $bd
  ldh a, [rSVBK]                                  ; $637c: $f0 $70
  push af                                         ; $637e: $f5
  ld a, $05                                       ; $637f: $3e $05
  ldh [rSVBK], a                                  ; $6381: $e0 $70
  ldh a, [$ffbd]                                  ; $6383: $f0 $bd
  call Call_000_33f3                              ; $6385: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $638b: $11 $0a $00
  add hl, de                                      ; $638e: $19
  set 2, [hl]                                     ; $638f: $cb $d6
  ld de, $000b                                    ; $6391: $11 $0b $00
  add hl, de                                      ; $6394: $19
  ld a, [hl]                                      ; $6395: $7e
  cp $ff                                          ; $6396: $fe $ff
  jp z, Jump_007_6258                             ; $6398: $ca $58 $62

  push hl                                         ; $639b: $e5
  ld a, [hl+]                                     ; $639c: $2a
  ld h, [hl]                                      ; $639d: $66
  ld l, a                                         ; $639e: $6f
  ld de, $0005                                    ; $639f: $11 $05 $00
  add hl, de                                      ; $63a2: $19
  ld d, h                                         ; $63a3: $54
  ld e, l                                         ; $63a4: $5d
  pop hl                                          ; $63a5: $e1
  ld [hl], e                                      ; $63a6: $73
  inc hl                                          ; $63a7: $23
  ld [hl], d                                      ; $63a8: $72
  ldh [$ffbd], a                                  ; $63a9: $e0 $bd
  pop af                                          ; $63ab: $f1
  ldh [rSVBK], a                                  ; $63ac: $e0 $70
  ldh a, [$ffbd]                                  ; $63ae: $f0 $bd
  ld a, [$cc2a]                                   ; $63b0: $fa $2a $cc
  dec a                                           ; $63b3: $3d
  cp $03                                          ; $63b4: $fe $03
  ret nc                                          ; $63b6: $d0

  call Call_007_6d8e                              ; $63b7: $cd $8e $6d
  ret                                             ; $63ba: $c9


  ld a, [$cc2a]                                   ; $63bb: $fa $2a $cc
  dec a                                           ; $63be: $3d
  ldh [$ffbd], a                                  ; $63bf: $e0 $bd
  ldh a, [rSVBK]                                  ; $63c1: $f0 $70
  push af                                         ; $63c3: $f5
  ld a, $05                                       ; $63c4: $3e $05
  ldh [rSVBK], a                                  ; $63c6: $e0 $70
  ldh a, [$ffbd]                                  ; $63c8: $f0 $bd
  call Call_000_33f3                              ; $63ca: $cd $f3 $33
  inc bc                                          ; $63cd: $03
  halt                                            ; $63ce: $76
  ld c, c                                         ; $63cf: $49
  ld de, $000a                                    ; $63d0: $11 $0a $00
  add hl, de                                      ; $63d3: $19
  set 2, [hl]                                     ; $63d4: $cb $d6
  ld de, $000b                                    ; $63d6: $11 $0b $00
  add hl, de                                      ; $63d9: $19
  ld a, [hl]                                      ; $63da: $7e
  cp $ff                                          ; $63db: $fe $ff
  jp z, Jump_007_6258                             ; $63dd: $ca $58 $62

  push hl                                         ; $63e0: $e5
  ld a, [hl+]                                     ; $63e1: $2a
  ld h, [hl]                                      ; $63e2: $66
  ld l, a                                         ; $63e3: $6f
  ld de, $0014                                    ; $63e4: $11 $14 $00
  add hl, de                                      ; $63e7: $19
  ld d, h                                         ; $63e8: $54
  ld e, l                                         ; $63e9: $5d
  pop hl                                          ; $63ea: $e1
  ld [hl], e                                      ; $63eb: $73
  inc hl                                          ; $63ec: $23
  ld [hl], d                                      ; $63ed: $72
  ldh [$ffbd], a                                  ; $63ee: $e0 $bd
  pop af                                          ; $63f0: $f1
  ldh [rSVBK], a                                  ; $63f1: $e0 $70
  ldh a, [$ffbd]                                  ; $63f3: $f0 $bd
  ld a, [$cc2a]                                   ; $63f5: $fa $2a $cc
  dec a                                           ; $63f8: $3d
  cp $03                                          ; $63f9: $fe $03
  ret nc                                          ; $63fb: $d0

  call Call_007_6d8e                              ; $63fc: $cd $8e $6d
  ret                                             ; $63ff: $c9


  ldh [$ffbd], a                                  ; $6400: $e0 $bd
  ldh a, [rSVBK]                                  ; $6402: $f0 $70
  push af                                         ; $6404: $f5
  ld a, $05                                       ; $6405: $3e $05
  ldh [rSVBK], a                                  ; $6407: $e0 $70
  ldh a, [$ffbd]                                  ; $6409: $f0 $bd
  ld a, [$cc2a]                                   ; $640b: $fa $2a $cc
  dec a                                           ; $640e: $3d
  call Call_000_33f3                              ; $640f: $cd $f3 $33

  db $03, $76, $49

  ld de, $0005                                    ; $6415: $11 $05 $00
  add hl, de                                      ; $6418: $19
  ld a, [hl+]                                     ; $6419: $2a
  ld h, [hl]                                      ; $641a: $66
  ld l, a                                         ; $641b: $6f
  ldh [$ffbd], a                                  ; $641c: $e0 $bd
  pop af                                          ; $641e: $f1
  ldh [rSVBK], a                                  ; $641f: $e0 $70
  ldh a, [$ffbd]                                  ; $6421: $f0 $bd
  ld a, h                                         ; $6423: $7c
  or l                                            ; $6424: $b5
  ret z                                           ; $6425: $c8

  ld a, [$cc2a]                                   ; $6426: $fa $2a $cc
  dec a                                           ; $6429: $3d
  push af                                         ; $642a: $f5
  ld l, $0b                                       ; $642b: $2e $0b
  call Call_000_33f3                              ; $642d: $cd $f3 $33

  db $03, $de, $48

  pop af                                          ; $6433: $f1
  ldh [$ffbd], a                                  ; $6434: $e0 $bd
  ldh a, [rSVBK]                                  ; $6436: $f0 $70
  push af                                         ; $6438: $f5
  ld a, $05                                       ; $6439: $3e $05
  ldh [rSVBK], a                                  ; $643b: $e0 $70
  ldh a, [$ffbd]                                  ; $643d: $f0 $bd
  call Call_000_33f3                              ; $643f: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $6445: $11 $0a $00
  add hl, de                                      ; $6448: $19
  set 3, [hl]                                     ; $6449: $cb $de
  ld de, $0007                                    ; $644b: $11 $07 $00
  add hl, de                                      ; $644e: $19
  ld a, $02                                       ; $644f: $3e $02
  ld [hl], a                                      ; $6451: $77
  ldh [$ffbd], a                                  ; $6452: $e0 $bd
  pop af                                          ; $6454: $f1
  ldh [rSVBK], a                                  ; $6455: $e0 $70
  ldh a, [$ffbd]                                  ; $6457: $f0 $bd
  ld a, [$cc2a]                                   ; $6459: $fa $2a $cc
  dec a                                           ; $645c: $3d
  cp $03                                          ; $645d: $fe $03
  ret nc                                          ; $645f: $d0

  call Call_007_6d75                              ; $6460: $cd $75 $6d
  ret                                             ; $6463: $c9


  ldh [$ffbd], a                                  ; $6464: $e0 $bd
  ldh a, [rSVBK]                                  ; $6466: $f0 $70
  push af                                         ; $6468: $f5
  ld a, $05                                       ; $6469: $3e $05
  ldh [rSVBK], a                                  ; $646b: $e0 $70
  ldh a, [$ffbd]                                  ; $646d: $f0 $bd
  ld a, [$cc2a]                                   ; $646f: $fa $2a $cc
  dec a                                           ; $6472: $3d
  call Call_000_33f3                              ; $6473: $cd $f3 $33

  db $03, $76, $49

  ld de, $0005                                    ; $6479: $11 $05 $00
  add hl, de                                      ; $647c: $19
  ld a, [hl+]                                     ; $647d: $2a
  ld h, [hl]                                      ; $647e: $66
  ld l, a                                         ; $647f: $6f
  ldh [$ffbd], a                                  ; $6480: $e0 $bd
  pop af                                          ; $6482: $f1
  ldh [rSVBK], a                                  ; $6483: $e0 $70
  ldh a, [$ffbd]                                  ; $6485: $f0 $bd
  ld a, h                                         ; $6487: $7c
  or l                                            ; $6488: $b5
  ret z                                           ; $6489: $c8

  ld a, [$cc2a]                                   ; $648a: $fa $2a $cc
  dec a                                           ; $648d: $3d
  push af                                         ; $648e: $f5
  ld l, $0b                                       ; $648f: $2e $0b
  call Call_000_33f3                              ; $6491: $cd $f3 $33

  db $03, $de, $48

  pop af                                          ; $6497: $f1
  ldh [$ffbd], a                                  ; $6498: $e0 $bd
  ldh a, [rSVBK]                                  ; $649a: $f0 $70
  push af                                         ; $649c: $f5
  ld a, $05                                       ; $649d: $3e $05
  ldh [rSVBK], a                                  ; $649f: $e0 $70
  ldh a, [$ffbd]                                  ; $64a1: $f0 $bd
  call Call_000_33f3                              ; $64a3: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $64a9: $11 $0a $00
  add hl, de                                      ; $64ac: $19
  set 3, [hl]                                     ; $64ad: $cb $de
  ld de, $0007                                    ; $64af: $11 $07 $00
  add hl, de                                      ; $64b2: $19
  ld a, $03                                       ; $64b3: $3e $03
  ld [hl], a                                      ; $64b5: $77
  ldh [$ffbd], a                                  ; $64b6: $e0 $bd
  pop af                                          ; $64b8: $f1
  ldh [rSVBK], a                                  ; $64b9: $e0 $70
  ldh a, [$ffbd]                                  ; $64bb: $f0 $bd
  ld a, [$cc2a]                                   ; $64bd: $fa $2a $cc
  dec a                                           ; $64c0: $3d
  cp $03                                          ; $64c1: $fe $03
  ret nc                                          ; $64c3: $d0

  call Call_007_6d75                              ; $64c4: $cd $75 $6d
  ret                                             ; $64c7: $c9


  ldh [$ffbd], a                                  ; $64c8: $e0 $bd
  ldh a, [rSVBK]                                  ; $64ca: $f0 $70
  push af                                         ; $64cc: $f5
  ld a, $05                                       ; $64cd: $3e $05
  ldh [rSVBK], a                                  ; $64cf: $e0 $70
  ldh a, [$ffbd]                                  ; $64d1: $f0 $bd
  ld a, [$cc2a]                                   ; $64d3: $fa $2a $cc
  dec a                                           ; $64d6: $3d
  call Call_000_33f3                              ; $64d7: $cd $f3 $33

  db $03, $76, $49

  ld de, $0005                                    ; $64dd: $11 $05 $00
  add hl, de                                      ; $64e0: $19
  ld a, [hl+]                                     ; $64e1: $2a
  ld h, [hl]                                      ; $64e2: $66
  ld l, a                                         ; $64e3: $6f
  ldh [$ffbd], a                                  ; $64e4: $e0 $bd
  pop af                                          ; $64e6: $f1
  ldh [rSVBK], a                                  ; $64e7: $e0 $70
  ldh a, [$ffbd]                                  ; $64e9: $f0 $bd
  ld a, h                                         ; $64eb: $7c
  or l                                            ; $64ec: $b5
  ret z                                           ; $64ed: $c8

  ld a, [$cc2a]                                   ; $64ee: $fa $2a $cc
  dec a                                           ; $64f1: $3d
  push af                                         ; $64f2: $f5
  ld l, $0b                                       ; $64f3: $2e $0b
  call Call_000_33f3                              ; $64f5: $cd $f3 $33

  db $03, $de, $48

  pop af                                          ; $64fb: $f1
  ldh [$ffbd], a                                  ; $64fc: $e0 $bd
  ldh a, [rSVBK]                                  ; $64fe: $f0 $70
  push af                                         ; $6500: $f5
  ld a, $05                                       ; $6501: $3e $05
  ldh [rSVBK], a                                  ; $6503: $e0 $70
  ldh a, [$ffbd]                                  ; $6505: $f0 $bd
  call Call_000_33f3                              ; $6507: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $650d: $11 $0a $00
  add hl, de                                      ; $6510: $19
  set 3, [hl]                                     ; $6511: $cb $de
  ld de, $0007                                    ; $6513: $11 $07 $00
  add hl, de                                      ; $6516: $19
  ld a, $01                                       ; $6517: $3e $01
  ld [hl], a                                      ; $6519: $77
  ldh [$ffbd], a                                  ; $651a: $e0 $bd
  pop af                                          ; $651c: $f1
  ldh [rSVBK], a                                  ; $651d: $e0 $70
  ldh a, [$ffbd]                                  ; $651f: $f0 $bd
  ld a, [$cc2a]                                   ; $6521: $fa $2a $cc
  dec a                                           ; $6524: $3d
  cp $03                                          ; $6525: $fe $03
  ret nc                                          ; $6527: $d0

  call Call_007_6d75                              ; $6528: $cd $75 $6d
  ret                                             ; $652b: $c9


  xor a                                           ; $652c: $af
  ld [$cda5], a                                   ; $652d: $ea $a5 $cd
  jp Jump_007_654b                                ; $6530: $c3 $4b $65


  ld a, $01                                       ; $6533: $3e $01
  ld [$cda5], a                                   ; $6535: $ea $a5 $cd
  jp Jump_007_654b                                ; $6538: $c3 $4b $65


  ld a, $02                                       ; $653b: $3e $02
  ld [$cda5], a                                   ; $653d: $ea $a5 $cd
  jp Jump_007_654b                                ; $6540: $c3 $4b $65


  ld a, $03                                       ; $6543: $3e $03
  ld [$cda5], a                                   ; $6545: $ea $a5 $cd
  jr jr_007_654b                                  ; $6548: $18 $01

  ret                                             ; $654a: $c9


Jump_007_654b:
jr_007_654b:
  push bc                                         ; $654b: $c5
  ld de, $02c0                                    ; $654c: $11 $c0 $02
  ld hl, $ffb9                                    ; $654f: $21 $b9 $ff
  ld [hl], e                                      ; $6552: $73
  inc hl                                          ; $6553: $23
  ld [hl], d                                      ; $6554: $72
  ld hl, $5e82                                    ; $6555: $21 $82 $5e
  ld a, [$cda5]                                   ; $6558: $fa $a5 $cd
  call Call_000_33f3                              ; $655b: $cd $f3 $33
  nop                                             ; $655e: $00
  ld h, b                                         ; $655f: $60
  ld a, [hl+]                                     ; $6560: $2a
  ld a, $03                                       ; $6561: $3e $03
  ld [$c1d8], a                                   ; $6563: $ea $d8 $c1
  ld a, $04                                       ; $6566: $3e $04
  ld [$c1d9], a                                   ; $6568: $ea $d9 $c1
  ld hl, $d000                                    ; $656b: $21 $00 $d0
  ld de, $d000                                    ; $656e: $11 $00 $d0
  ld bc, $0400                                    ; $6571: $01 $00 $04
  call Call_000_33f3                              ; $6574: $cd $f3 $33
  inc bc                                          ; $6577: $03
  rst $20                                         ; $6578: $e7
  halt                                            ; $6579: $76
  ld hl, $d500                                    ; $657a: $21 $00 $d5
  ld de, $d400                                    ; $657d: $11 $00 $d4
  ld bc, $0400                                    ; $6580: $01 $00 $04
  call Call_000_33f3                              ; $6583: $cd $f3 $33
  inc bc                                          ; $6586: $03
  rst $20                                         ; $6587: $e7
  halt                                            ; $6588: $76
  call Call_000_35e1                              ; $6589: $cd $e1 $35
  nop                                             ; $658c: $00
  nop                                             ; $658d: $00
  jr nz, jr_007_65b0                              ; $658e: $20 $20

  ldh a, [rSVBK]                                  ; $6590: $f0 $70
  push af                                         ; $6592: $f5
  ld a, $01                                       ; $6593: $3e $01
  ldh [rSVBK], a                                  ; $6595: $e0 $70
  ld hl, $c0aa                                    ; $6597: $21 $aa $c0
  set 2, [hl]                                     ; $659a: $cb $d6
  call Call_000_3363                              ; $659c: $cd $63 $33
  rst $18                                         ; $659f: $df
  ld a, [$cda5]                                   ; $65a0: $fa $a5 $cd
  ld de, $d000                                    ; $65a3: $11 $00 $d0
  ld bc, $0000                                    ; $65a6: $01 $00 $00
  ld hl, $5e97                                    ; $65a9: $21 $97 $5e
  call Call_000_33f3                              ; $65ac: $cd $f3 $33
  nop                                             ; $65af: $00

jr_007_65b0:
  cp [hl]                                         ; $65b0: $be
  inc sp                                          ; $65b1: $33
  ld a, $05                                       ; $65b2: $3e $05
  ldh [$ffa9], a                                  ; $65b4: $e0 $a9
  xor a                                           ; $65b6: $af
  ldh [$ffa7], a                                  ; $65b7: $e0 $a7
  call Call_000_3363                              ; $65b9: $cd $63 $33
  ld hl, $c0aa                                    ; $65bc: $21 $aa $c0
  res 2, [hl]                                     ; $65bf: $cb $96
  xor a                                           ; $65c1: $af
  ldh [$ffa9], a                                  ; $65c2: $e0 $a9
  ld a, $04                                       ; $65c4: $3e $04
  ld [$c1d8], a                                   ; $65c6: $ea $d8 $c1
  ld a, $03                                       ; $65c9: $3e $03
  ld [$c1d9], a                                   ; $65cb: $ea $d9 $c1
  ld de, $d000                                    ; $65ce: $11 $00 $d0
  ld hl, $d000                                    ; $65d1: $21 $00 $d0
  ld bc, $0400                                    ; $65d4: $01 $00 $04
  call Call_000_33f3                              ; $65d7: $cd $f3 $33
  inc bc                                          ; $65da: $03
  rst $20                                         ; $65db: $e7
  halt                                            ; $65dc: $76
  ld de, $d500                                    ; $65dd: $11 $00 $d5
  ld hl, $d400                                    ; $65e0: $21 $00 $d4
  ld bc, $0400                                    ; $65e3: $01 $00 $04
  call Call_000_33f3                              ; $65e6: $cd $f3 $33
  inc bc                                          ; $65e9: $03
  rst $20                                         ; $65ea: $e7
  halt                                            ; $65eb: $76
  rst $20                                         ; $65ec: $e7
  pop af                                          ; $65ed: $f1
  ldh [rSVBK], a                                  ; $65ee: $e0 $70
  ldh a, [rSVBK]                                  ; $65f0: $f0 $70
  push af                                         ; $65f2: $f5
  ld a, $02                                       ; $65f3: $3e $02
  ldh [rSVBK], a                                  ; $65f5: $e0 $70
  ld hl, $d080                                    ; $65f7: $21 $80 $d0
  ld de, $da80                                    ; $65fa: $11 $80 $da
  call Call_000_0212                              ; $65fd: $cd $12 $02
  pop af                                          ; $6600: $f1
  ldh [rSVBK], a                                  ; $6601: $e0 $70
  ld e, $01                                       ; $6603: $1e $01
  ld a, $0b                                       ; $6605: $3e $0b
  call Call_000_33f3                              ; $6607: $cd $f3 $33
  dec b                                           ; $660a: $05
  rst $28                                         ; $660b: $ef
  ld [hl], c                                      ; $660c: $71
  pop bc                                          ; $660d: $c1
  ret                                             ; $660e: $c9


  push bc                                         ; $660f: $c5
  ld hl, $c0aa                                    ; $6610: $21 $aa $c0
  set 3, [hl]                                     ; $6613: $cb $de
  ld a, [$cda5]                                   ; $6615: $fa $a5 $cd
  ld hl, $5eac                                    ; $6618: $21 $ac $5e
  call Call_000_33f3                              ; $661b: $cd $f3 $33
  nop                                             ; $661e: $00
  ld b, e                                         ; $661f: $43
  dec [hl]                                        ; $6620: $35
  ld e, $00                                       ; $6621: $1e $00
  ld a, $0a                                       ; $6623: $3e $0a
  call Call_000_33f3                              ; $6625: $cd $f3 $33
  dec b                                           ; $6628: $05
  inc hl                                          ; $6629: $23
  ld [hl], d                                      ; $662a: $72
  pop bc                                          ; $662b: $c1
  ret                                             ; $662c: $c9


  push bc                                         ; $662d: $c5
  ld e, $01                                       ; $662e: $1e $01
  ld a, $0b                                       ; $6630: $3e $0b
  call Call_000_33f3                              ; $6632: $cd $f3 $33
  dec b                                           ; $6635: $05
  rst $28                                         ; $6636: $ef
  ld [hl], c                                      ; $6637: $71
  call RST_18                                     ; $6638: $cd $18 $00
  ld hl, $c0aa                                    ; $663b: $21 $aa $c0
  res 3, [hl]                                     ; $663e: $cb $9e
  res 2, [hl]                                     ; $6640: $cb $96
  ldh a, [rSVBK]                                  ; $6642: $f0 $70
  push af                                         ; $6644: $f5
  ld a, $02                                       ; $6645: $3e $02
  ldh [rSVBK], a                                  ; $6647: $e0 $70
  ld de, $d000                                    ; $6649: $11 $00 $d0
  ld hl, $da80                                    ; $664c: $21 $80 $da
  call Call_000_0212                              ; $664f: $cd $12 $02
  pop af                                          ; $6652: $f1
  ldh [rSVBK], a                                  ; $6653: $e0 $70
  ld e, $01                                       ; $6655: $1e $01
  ld a, $09                                       ; $6657: $3e $09
  call Call_000_33f3                              ; $6659: $cd $f3 $33
  dec b                                           ; $665c: $05
  inc hl                                          ; $665d: $23
  ld [hl], d                                      ; $665e: $72
  pop bc                                          ; $665f: $c1
  ret                                             ; $6660: $c9


  push bc                                         ; $6661: $c5
  ld e, $01                                       ; $6662: $1e $01
  ld a, $0a                                       ; $6664: $3e $0a
  call Call_000_33f3                              ; $6666: $cd $f3 $33
  dec b                                           ; $6669: $05
  rst $28                                         ; $666a: $ef
  ld [hl], c                                      ; $666b: $71
  call RST_18                                     ; $666c: $cd $18 $00
  ld hl, $c0aa                                    ; $666f: $21 $aa $c0
  res 3, [hl]                                     ; $6672: $cb $9e
  res 2, [hl]                                     ; $6674: $cb $96
  ldh a, [rSVBK]                                  ; $6676: $f0 $70
  push af                                         ; $6678: $f5
  ld a, $02                                       ; $6679: $3e $02
  ldh [rSVBK], a                                  ; $667b: $e0 $70
  ld de, $d000                                    ; $667d: $11 $00 $d0
  ld hl, $da80                                    ; $6680: $21 $80 $da
  call Call_000_0212                              ; $6683: $cd $12 $02
  pop af                                          ; $6686: $f1
  ldh [rSVBK], a                                  ; $6687: $e0 $70
  ld a, $01                                       ; $6689: $3e $01
  ld [$cc24], a                                   ; $668b: $ea $24 $cc
  ld e, $01                                       ; $668e: $1e $01
  ld a, $09                                       ; $6690: $3e $09
  call Call_000_33f3                              ; $6692: $cd $f3 $33
  dec b                                           ; $6695: $05
  inc hl                                          ; $6696: $23
  ld [hl], d                                      ; $6697: $72
  pop bc                                          ; $6698: $c1
  ret                                             ; $6699: $c9


  ldh a, [rSVBK]                                  ; $669a: $f0 $70
  push af                                         ; $669c: $f5
  ld a, $05                                       ; $669d: $3e $05
  ldh [rSVBK], a                                  ; $669f: $e0 $70
  ld a, $5a                                       ; $66a1: $3e $5a
  ld [$d097], a                                   ; $66a3: $ea $97 $d0
  xor a                                           ; $66a6: $af
  ld [$d096], a                                   ; $66a7: $ea $96 $d0
  ld a, $01                                       ; $66aa: $3e $01
  ld [$d099], a                                   ; $66ac: $ea $99 $d0
  ld a, $02                                       ; $66af: $3e $02
  ld [$d098], a                                   ; $66b1: $ea $98 $d0
  pop af                                          ; $66b4: $f1
  ldh [rSVBK], a                                  ; $66b5: $e0 $70
  ret                                             ; $66b7: $c9


  ldh a, [rSVBK]                                  ; $66b8: $f0 $70
  push af                                         ; $66ba: $f5
  ld a, $05                                       ; $66bb: $3e $05
  ldh [rSVBK], a                                  ; $66bd: $e0 $70
  ld a, $01                                       ; $66bf: $3e $01
  ld [$d099], a                                   ; $66c1: $ea $99 $d0
  pop af                                          ; $66c4: $f1
  ldh [rSVBK], a                                  ; $66c5: $e0 $70
  ret                                             ; $66c7: $c9


  ldh a, [rSVBK]                                  ; $66c8: $f0 $70
  push af                                         ; $66ca: $f5
  ld a, $05                                       ; $66cb: $3e $05
  ldh [rSVBK], a                                  ; $66cd: $e0 $70
  ld a, $ff                                       ; $66cf: $3e $ff
  ld [$d099], a                                   ; $66d1: $ea $99 $d0
  pop af                                          ; $66d4: $f1
  ldh [rSVBK], a                                  ; $66d5: $e0 $70
  ret                                             ; $66d7: $c9


  ld hl, $7ce0                                    ; $66d8: $21 $e0 $7c
  call Call_000_33f3                              ; $66db: $cd $f3 $33
  inc bc                                          ; $66de: $03
  adc b                                           ; $66df: $88
  ld a, [hl]                                      ; $66e0: $7e
  ret                                             ; $66e1: $c9


  ld hl, $7d0a                                    ; $66e2: $21 $0a $7d
  call Call_000_33f3                              ; $66e5: $cd $f3 $33
  inc bc                                          ; $66e8: $03
  adc b                                           ; $66e9: $88
  ld a, [hl]                                      ; $66ea: $7e
  ret                                             ; $66eb: $c9


  ldh a, [rSVBK]                                  ; $66ec: $f0 $70
  push af                                         ; $66ee: $f5
  ld a, $05                                       ; $66ef: $3e $05
  ldh [rSVBK], a                                  ; $66f1: $e0 $70
  ld a, [$d096]                                   ; $66f3: $fa $96 $d0
  ld e, a                                         ; $66f6: $5f
  ld a, $96                                       ; $66f7: $3e $96
  sub e                                           ; $66f9: $93
  ld e, a                                         ; $66fa: $5f
  ld a, [$d097]                                   ; $66fb: $fa $97 $d0
  ld d, a                                         ; $66fe: $57
  ld a, $ac                                       ; $66ff: $3e $ac
  sub d                                           ; $6701: $92
  ld d, a                                         ; $6702: $57
  call Call_000_0885                              ; $6703: $cd $85 $08
  pop af                                          ; $6706: $f1
  ldh [rSVBK], a                                  ; $6707: $e0 $70
  ret                                             ; $6709: $c9


  ldh a, [rSVBK]                                  ; $670a: $f0 $70
  push af                                         ; $670c: $f5
  ld a, $05                                       ; $670d: $3e $05
  ldh [rSVBK], a                                  ; $670f: $e0 $70
  push de                                         ; $6711: $d5
  ld a, [$cc2a]                                   ; $6712: $fa $2a $cc
  dec a                                           ; $6715: $3d
  call Call_000_33f3                              ; $6716: $cd $f3 $33

  db $03, $76, $49

  ld de, $0005                                    ; $671c: $11 $05 $00
  add hl, de                                      ; $671f: $19
  pop de                                          ; $6720: $d1
  ld a, [hl+]                                     ; $6721: $2a
  or [hl]                                         ; $6722: $b6
  pop af                                          ; $6723: $f1
  ldh [rSVBK], a                                  ; $6724: $e0 $70
  ret z                                           ; $6726: $c8

  ld hl, $0050                                    ; $6727: $21 $50 $00
  call Call_000_3427                              ; $672a: $cd $27 $34

  db $03, $75, $46

  ldh a, [rSVBK]                                  ; $6730: $f0 $70
  push af                                         ; $6732: $f5
  ld a, $05                                       ; $6733: $3e $05
  ldh [rSVBK], a                                  ; $6735: $e0 $70
  push de                                         ; $6737: $d5
  ld a, [$cc2a]                                   ; $6738: $fa $2a $cc
  dec a                                           ; $673b: $3d
  call Call_000_33f3                              ; $673c: $cd $f3 $33
  inc bc                                          ; $673f: $03
  halt                                            ; $6740: $76
  ld c, c                                         ; $6741: $49
  ld de, $0005                                    ; $6742: $11 $05 $00
  add hl, de                                      ; $6745: $19
  pop de                                          ; $6746: $d1
  ld a, [hl+]                                     ; $6747: $2a
  or [hl]                                         ; $6748: $b6
  pop af                                          ; $6749: $f1
  ldh [rSVBK], a                                  ; $674a: $e0 $70
  ret z                                           ; $674c: $c8

  call Call_000_33f3                              ; $674d: $cd $f3 $33
  inc bc                                          ; $6750: $03
  dec c                                           ; $6751: $0d
  ld b, a                                         ; $6752: $47
  jr z, jr_007_6763                               ; $6753: $28 $0e

  ld a, [$ce37]                                   ; $6755: $fa $37 $ce
  sla a                                           ; $6758: $cb $27
  ld l, a                                         ; $675a: $6f
  ld h, $00                                       ; $675b: $26 $00
  call Call_000_3427                              ; $675d: $cd $27 $34
  inc bc                                          ; $6760: $03
  ld [hl], l                                      ; $6761: $75
  ld b, [hl]                                      ; $6762: $46

jr_007_6763:
  ld hl, $0000                                    ; $6763: $21 $00 $00
  call Call_000_3427                              ; $6766: $cd $27 $34
  inc bc                                          ; $6769: $03
  ld [hl], l                                      ; $676a: $75
  ld b, [hl]                                      ; $676b: $46
  ldh a, [rSVBK]                                  ; $676c: $f0 $70
  push af                                         ; $676e: $f5
  ld a, $05                                       ; $676f: $3e $05
  ldh [rSVBK], a                                  ; $6771: $e0 $70
  push de                                         ; $6773: $d5
  ld a, [$cc2a]                                   ; $6774: $fa $2a $cc
  dec a                                           ; $6777: $3d
  call Call_000_33f3                              ; $6778: $cd $f3 $33
  inc bc                                          ; $677b: $03
  halt                                            ; $677c: $76
  ld c, c                                         ; $677d: $49
  ld de, $0005                                    ; $677e: $11 $05 $00
  add hl, de                                      ; $6781: $19
  pop de                                          ; $6782: $d1
  ld a, [hl+]                                     ; $6783: $2a
  or [hl]                                         ; $6784: $b6
  pop af                                          ; $6785: $f1
  ldh [rSVBK], a                                  ; $6786: $e0 $70
  ret z                                           ; $6788: $c8

  ld hl, $0014                                    ; $6789: $21 $14 $00
  call Call_000_3427                              ; $678c: $cd $27 $34
  inc bc                                          ; $678f: $03
  ld [hl], l                                      ; $6790: $75
  ld b, [hl]                                      ; $6791: $46
  ld a, $8c                                       ; $6792: $3e $8c
  call Call_000_28e6                              ; $6794: $cd $e6 $28
  add $14                                         ; $6797: $c6 $14
  ld hl, $0006                                    ; $6799: $21 $06 $00
  add hl, bc                                      ; $679c: $09
  ld [hl+], a                                     ; $679d: $22
  ld [hl], $00                                    ; $679e: $36 $00
  ret                                             ; $67a0: $c9


  ld a, $07                                       ; $67a1: $3e $07
  call Call_000_28e6                              ; $67a3: $cd $e6 $28
  add $8e                                         ; $67a6: $c6 $8e
  call Call_000_33f3                              ; $67a8: $cd $f3 $33

  db $04, $2b, $6d

  ret                                             ; $67ae: $c9


  ld a, $02                                       ; $67af: $3e $02
  call Call_000_28e6                              ; $67b1: $cd $e6 $28
  ld d, $95                                       ; $67b4: $16 $95
  add d                                           ; $67b6: $82
  call Call_000_33f3                              ; $67b7: $cd $f3 $33
  inc b                                           ; $67ba: $04
  dec hl                                          ; $67bb: $2b
  ld l, l                                         ; $67bc: $6d
  ret                                             ; $67bd: $c9


  ldh a, [rSVBK]                                  ; $67be: $f0 $70
  push af                                         ; $67c0: $f5
  ld a, $05                                       ; $67c1: $3e $05
  ldh [rSVBK], a                                  ; $67c3: $e0 $70
  ld a, [$cc2a]                                   ; $67c5: $fa $2a $cc
  dec a                                           ; $67c8: $3d
  call Call_000_33f3                              ; $67c9: $cd $f3 $33
  inc bc                                          ; $67cc: $03
  halt                                            ; $67cd: $76
  ld c, c                                         ; $67ce: $49
  ld de, $000a                                    ; $67cf: $11 $0a $00
  add hl, de                                      ; $67d2: $19
  set 5, [hl]                                     ; $67d3: $cb $ee
  pop af                                          ; $67d5: $f1
  ldh [rSVBK], a                                  ; $67d6: $e0 $70
  ret                                             ; $67d8: $c9


  ldh a, [rSVBK]                                  ; $67d9: $f0 $70
  push af                                         ; $67db: $f5
  ld a, $05                                       ; $67dc: $3e $05
  ldh [rSVBK], a                                  ; $67de: $e0 $70
  ld a, $01                                       ; $67e0: $3e $01
  call Call_000_33f3                              ; $67e2: $cd $f3 $33
  inc bc                                          ; $67e5: $03
  halt                                            ; $67e6: $76
  ld c, c                                         ; $67e7: $49
  push hl                                         ; $67e8: $e5
  ld de, $0003                                    ; $67e9: $11 $03 $00
  add hl, de                                      ; $67ec: $19
  ld a, [hl+]                                     ; $67ed: $2a
  ld h, [hl]                                      ; $67ee: $66
  ld l, a                                         ; $67ef: $6f
  add hl, hl                                      ; $67f0: $29
  pop de                                          ; $67f1: $d1
  push de                                         ; $67f2: $d5
  push hl                                         ; $67f3: $e5
  ld hl, $0007                                    ; $67f4: $21 $07 $00
  add hl, de                                      ; $67f7: $19
  push hl                                         ; $67f8: $e5
  pop de                                          ; $67f9: $d1
  pop hl                                          ; $67fa: $e1
  ld a, l                                         ; $67fb: $7d
  ld [de], a                                      ; $67fc: $12
  inc de                                          ; $67fd: $13
  ld a, h                                         ; $67fe: $7c
  ld [de], a                                      ; $67ff: $12
  pop de                                          ; $6800: $d1
  pop af                                          ; $6801: $f1
  ldh [rSVBK], a                                  ; $6802: $e0 $70
  ret                                             ; $6804: $c9


  ld a, [$cc4a]                                   ; $6805: $fa $4a $cc
  set 0, a                                        ; $6808: $cb $c7
  ld [$cc4a], a                                   ; $680a: $ea $4a $cc
  ret                                             ; $680d: $c9


  ld a, [$cc4a]                                   ; $680e: $fa $4a $cc
  set 7, a                                        ; $6811: $cb $ff
  ld [$cc4a], a                                   ; $6813: $ea $4a $cc
  ret                                             ; $6816: $c9


  ld a, $28                                       ; $6817: $3e $28
  call Call_000_28e6                              ; $6819: $cd $e6 $28
  add $50                                         ; $681c: $c6 $50
  ld hl, $0006                                    ; $681e: $21 $06 $00
  add hl, bc                                      ; $6821: $09
  ld [hl+], a                                     ; $6822: $22
  ld [hl], $00                                    ; $6823: $36 $00
  ld hl, $000b                                    ; $6825: $21 $0b $00
  add hl, bc                                      ; $6828: $09
  ld [hl+], a                                     ; $6829: $22
  ld [hl], $00                                    ; $682a: $36 $00
  ld a, $23                                       ; $682c: $3e $23
  call Call_000_28e6                              ; $682e: $cd $e6 $28
  add $38                                         ; $6831: $c6 $38
  ld hl, $0009                                    ; $6833: $21 $09 $00
  add hl, bc                                      ; $6836: $09
  ld [hl+], a                                     ; $6837: $22
  ld [hl], $00                                    ; $6838: $36 $00
  ld hl, $000d                                    ; $683a: $21 $0d $00
  add hl, bc                                      ; $683d: $09
  ld [hl+], a                                     ; $683e: $22
  ld [hl], $00                                    ; $683f: $36 $00
  ret                                             ; $6841: $c9


  ld a, $05                                       ; $6842: $3e $05
  ld [$caf9], a                                   ; $6844: $ea $f9 $ca
  ld a, $19                                       ; $6847: $3e $19
  ld [$caf4], a                                   ; $6849: $ea $f4 $ca
  ld [$caf5], a                                   ; $684c: $ea $f5 $ca
  ret                                             ; $684f: $c9


  ldh a, [rSVBK]                                  ; $6850: $f0 $70
  push af                                         ; $6852: $f5
  ld a, $05                                       ; $6853: $3e $05
  ldh [rSVBK], a                                  ; $6855: $e0 $70
  ld a, $01                                       ; $6857: $3e $01
  call Call_000_33f3                              ; $6859: $cd $f3 $33
  inc bc                                          ; $685c: $03
  halt                                            ; $685d: $76
  ld c, c                                         ; $685e: $49
  ld de, $0017                                    ; $685f: $11 $17 $00
  add hl, de                                      ; $6862: $19
  ld a, $01                                       ; $6863: $3e $01
  ld [hl], a                                      ; $6865: $77
  ldh [$ffbd], a                                  ; $6866: $e0 $bd
  pop af                                          ; $6868: $f1
  ldh [rSVBK], a                                  ; $6869: $e0 $70
  ldh a, [$ffbd]                                  ; $686b: $f0 $bd
  ret                                             ; $686d: $c9


  ldh a, [rSVBK]                                  ; $686e: $f0 $70
  push af                                         ; $6870: $f5
  ld a, $05                                       ; $6871: $3e $05
  ldh [rSVBK], a                                  ; $6873: $e0 $70
  ld a, [$cc2a]                                   ; $6875: $fa $2a $cc
  dec a                                           ; $6878: $3d
  call Call_000_33f3                              ; $6879: $cd $f3 $33
  inc bc                                          ; $687c: $03
  halt                                            ; $687d: $76
  ld c, c                                         ; $687e: $49
  push hl                                         ; $687f: $e5
  ld de, $0005                                    ; $6880: $11 $05 $00
  add hl, de                                      ; $6883: $19
  ld a, [hl+]                                     ; $6884: $2a
  ld h, [hl]                                      ; $6885: $66
  ld l, a                                         ; $6886: $6f
  ld de, $001e                                    ; $6887: $11 $1e $00
  add hl, de                                      ; $688a: $19
  pop de                                          ; $688b: $d1
  push de                                         ; $688c: $d5
  push hl                                         ; $688d: $e5
  ld hl, $0001                                    ; $688e: $21 $01 $00
  add hl, de                                      ; $6891: $19
  ld e, [hl]                                      ; $6892: $5e
  inc hl                                          ; $6893: $23
  ld d, [hl]                                      ; $6894: $56
  pop hl                                          ; $6895: $e1
  call Call_000_32b6                              ; $6896: $cd $b6 $32
  pop de                                          ; $6899: $d1
  push de                                         ; $689a: $d5
  push hl                                         ; $689b: $e5
  ld hl, $0005                                    ; $689c: $21 $05 $00
  add hl, de                                      ; $689f: $19
  push hl                                         ; $68a0: $e5
  pop de                                          ; $68a1: $d1
  pop hl                                          ; $68a2: $e1
  ld a, l                                         ; $68a3: $7d
  ld [de], a                                      ; $68a4: $12
  inc de                                          ; $68a5: $13
  ld a, h                                         ; $68a6: $7c
  ld [de], a                                      ; $68a7: $12
  pop de                                          ; $68a8: $d1
  pop af                                          ; $68a9: $f1
  ldh [rSVBK], a                                  ; $68aa: $e0 $70
  ret                                             ; $68ac: $c9


  ldh a, [rSVBK]                                  ; $68ad: $f0 $70
  push af                                         ; $68af: $f5
  ld a, $05                                       ; $68b0: $3e $05
  ldh [rSVBK], a                                  ; $68b2: $e0 $70
  ld a, [$cc2a]                                   ; $68b4: $fa $2a $cc
  dec a                                           ; $68b7: $3d
  call Call_000_33f3                              ; $68b8: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $68be: $11 $0a $00
  add hl, de                                      ; $68c1: $19
  set 2, [hl]                                     ; $68c2: $cb $d6
  ld de, $000b                                    ; $68c4: $11 $0b $00
  add hl, de                                      ; $68c7: $19
  ld de, $fff6                                    ; $68c8: $11 $f6 $ff
  ld [hl], e                                      ; $68cb: $73
  inc hl                                          ; $68cc: $23
  ld [hl], d                                      ; $68cd: $72
  ldh [$ffbd], a                                  ; $68ce: $e0 $bd
  pop af                                          ; $68d0: $f1
  ldh [rSVBK], a                                  ; $68d1: $e0 $70
  ldh a, [$ffbd]                                  ; $68d3: $f0 $bd
  ret                                             ; $68d5: $c9


  ldh a, [rSVBK]                                  ; $68d6: $f0 $70
  push af                                         ; $68d8: $f5
  ld a, $05                                       ; $68d9: $3e $05
  ldh [rSVBK], a                                  ; $68db: $e0 $70
  ld a, [$cc2a]                                   ; $68dd: $fa $2a $cc
  dec a                                           ; $68e0: $3d
  call Call_000_33f3                              ; $68e1: $cd $f3 $33
  inc bc                                          ; $68e4: $03
  halt                                            ; $68e5: $76
  ld c, c                                         ; $68e6: $49
  ld de, $000a                                    ; $68e7: $11 $0a $00
  add hl, de                                      ; $68ea: $19
  set 6, [hl]                                     ; $68eb: $cb $f6
  pop af                                          ; $68ed: $f1
  ldh [rSVBK], a                                  ; $68ee: $e0 $70
  ret                                             ; $68f0: $c9


  ldh a, [rSVBK]                                  ; $68f1: $f0 $70
  push af                                         ; $68f3: $f5
  ld a, $05                                       ; $68f4: $3e $05
  ldh [rSVBK], a                                  ; $68f6: $e0 $70
  ld a, [$cc2a]                                   ; $68f8: $fa $2a $cc
  dec a                                           ; $68fb: $3d
  call Call_000_33f3                              ; $68fc: $cd $f3 $33
  inc bc                                          ; $68ff: $03
  halt                                            ; $6900: $76
  ld c, c                                         ; $6901: $49
  push hl                                         ; $6902: $e5
  ld de, $0005                                    ; $6903: $11 $05 $00
  add hl, de                                      ; $6906: $19
  ld a, [hl+]                                     ; $6907: $2a
  ld h, [hl]                                      ; $6908: $66
  ld l, a                                         ; $6909: $6f
  ld de, $0012                                    ; $690a: $11 $12 $00
  add hl, de                                      ; $690d: $19
  pop de                                          ; $690e: $d1
  push de                                         ; $690f: $d5
  push hl                                         ; $6910: $e5
  ld hl, $0001                                    ; $6911: $21 $01 $00
  add hl, de                                      ; $6914: $19
  ld a, [hl+]                                     ; $6915: $2a
  ld h, [hl]                                      ; $6916: $66
  ld l, a                                         ; $6917: $6f
  pop de                                          ; $6918: $d1
  call Call_000_32b6                              ; $6919: $cd $b6 $32
  pop de                                          ; $691c: $d1
  push de                                         ; $691d: $d5
  push hl                                         ; $691e: $e5
  ld hl, $0005                                    ; $691f: $21 $05 $00
  add hl, de                                      ; $6922: $19
  push hl                                         ; $6923: $e5
  pop de                                          ; $6924: $d1
  pop hl                                          ; $6925: $e1
  ld a, l                                         ; $6926: $7d
  ld [de], a                                      ; $6927: $12
  inc de                                          ; $6928: $13
  ld a, h                                         ; $6929: $7c
  ld [de], a                                      ; $692a: $12
  pop de                                          ; $692b: $d1
  pop af                                          ; $692c: $f1
  ldh [rSVBK], a                                  ; $692d: $e0 $70
  ret                                             ; $692f: $c9


  ldh a, [rSVBK]                                  ; $6930: $f0 $70
  push af                                         ; $6932: $f5
  ld a, $05                                       ; $6933: $3e $05
  ldh [rSVBK], a                                  ; $6935: $e0 $70
  ld a, [$cc2a]                                   ; $6937: $fa $2a $cc
  dec a                                           ; $693a: $3d
  call Call_000_33f3                              ; $693b: $cd $f3 $33
  inc bc                                          ; $693e: $03
  halt                                            ; $693f: $76
  ld c, c                                         ; $6940: $49
  ld de, $000a                                    ; $6941: $11 $0a $00
  add hl, de                                      ; $6944: $19
  xor a                                           ; $6945: $af
  ld [hl], a                                      ; $6946: $77
  pop af                                          ; $6947: $f1
  ldh [rSVBK], a                                  ; $6948: $e0 $70
  ret                                             ; $694a: $c9


  ld a, $44                                       ; $694b: $3e $44
  ld [$cdac], a                                   ; $694d: $ea $ac $cd
  ld de, $64bf                                    ; $6950: $11 $bf $64
  jp Jump_000_09f4                                ; $6953: $c3 $f4 $09


  ldh a, [rSVBK]                                  ; $6956: $f0 $70
  push af                                         ; $6958: $f5
  ld a, $05                                       ; $6959: $3e $05
  ldh [rSVBK], a                                  ; $695b: $e0 $70
  ld a, [$cc2a]                                   ; $695d: $fa $2a $cc
  dec a                                           ; $6960: $3d
  call Call_000_33f3                              ; $6961: $cd $f3 $33
  inc bc                                          ; $6964: $03
  halt                                            ; $6965: $76
  ld c, c                                         ; $6966: $49
  ld de, $000d                                    ; $6967: $11 $0d $00
  add hl, de                                      ; $696a: $19
  ld a, [hl]                                      ; $696b: $7e
  add $0a                                         ; $696c: $c6 $0a
  ld [hl], a                                      ; $696e: $77
  pop af                                          ; $696f: $f1
  ldh [rSVBK], a                                  ; $6970: $e0 $70
  ret                                             ; $6972: $c9


  ldh a, [rSVBK]                                  ; $6973: $f0 $70
  push af                                         ; $6975: $f5
  ld a, $05                                       ; $6976: $3e $05
  ldh [rSVBK], a                                  ; $6978: $e0 $70
  push de                                         ; $697a: $d5
  ld a, [$cc2a]                                   ; $697b: $fa $2a $cc
  dec a                                           ; $697e: $3d
  call Call_000_33f3                              ; $697f: $cd $f3 $33
  inc bc                                          ; $6982: $03
  halt                                            ; $6983: $76
  ld c, c                                         ; $6984: $49
  ld de, $0005                                    ; $6985: $11 $05 $00
  add hl, de                                      ; $6988: $19
  pop de                                          ; $6989: $d1
  ld a, [hl+]                                     ; $698a: $2a
  or [hl]                                         ; $698b: $b6
  pop af                                          ; $698c: $f1
  ldh [rSVBK], a                                  ; $698d: $e0 $70
  ret z                                           ; $698f: $c8

  ld hl, $0028                                    ; $6990: $21 $28 $00
  call Call_000_3427                              ; $6993: $cd $27 $34
  inc bc                                          ; $6996: $03
  ld [hl], l                                      ; $6997: $75
  ld b, [hl]                                      ; $6998: $46
  ld a, $05                                       ; $6999: $3e $05
  ld [$cdac], a                                   ; $699b: $ea $ac $cd
  ld de, $650f                                    ; $699e: $11 $0f $65
  jp Jump_000_09f4                                ; $69a1: $c3 $f4 $09


  ld a, $05                                       ; $69a4: $3e $05
  ld [$cdac], a                                   ; $69a6: $ea $ac $cd
  ld de, $6531                                    ; $69a9: $11 $31 $65
  jp Jump_000_09f4                                ; $69ac: $c3 $f4 $09


  ld a, $0f                                       ; $69af: $3e $0f
  call Call_000_28e6                              ; $69b1: $cd $e6 $28
  inc a                                           ; $69b4: $3c
  ld [$cdac], a                                   ; $69b5: $ea $ac $cd
  ret                                             ; $69b8: $c9


  ldh a, [rSVBK]                                  ; $69b9: $f0 $70
  push af                                         ; $69bb: $f5
  ld a, $05                                       ; $69bc: $3e $05
  ldh [rSVBK], a                                  ; $69be: $e0 $70
  ld a, $01                                       ; $69c0: $3e $01
  call Call_000_33f3                              ; $69c2: $cd $f3 $33
  inc bc                                          ; $69c5: $03
  halt                                            ; $69c6: $76
  ld c, c                                         ; $69c7: $49
  ld de, $000a                                    ; $69c8: $11 $0a $00
  add hl, de                                      ; $69cb: $19
  res 3, [hl]                                     ; $69cc: $cb $9e
  res 4, [hl]                                     ; $69ce: $cb $a6
  bit 2, [hl]                                     ; $69d0: $cb $56
  jr nz, jr_007_69dc                              ; $69d2: $20 $08

  ldh [$ffbd], a                                  ; $69d4: $e0 $bd
  pop af                                          ; $69d6: $f1
  ldh [rSVBK], a                                  ; $69d7: $e0 $70
  ldh a, [$ffbd]                                  ; $69d9: $f0 $bd
  ret                                             ; $69db: $c9


jr_007_69dc:
  push hl                                         ; $69dc: $e5
  ld de, $000b                                    ; $69dd: $11 $0b $00
  add hl, de                                      ; $69e0: $19
  push hl                                         ; $69e1: $e5
  ld a, [hl+]                                     ; $69e2: $2a
  ld d, [hl]                                      ; $69e3: $56
  ld e, a                                         ; $69e4: $5f
  ld hl, $0000                                    ; $69e5: $21 $00 $00
  call Call_000_312d                              ; $69e8: $cd $2d $31
  pop hl                                          ; $69eb: $e1
  jr c, jr_007_69fc                               ; $69ec: $38 $0e

  xor a                                           ; $69ee: $af
  ld [hl+], a                                     ; $69ef: $22
  ld [hl], a                                      ; $69f0: $77
  pop hl                                          ; $69f1: $e1
  res 2, [hl]                                     ; $69f2: $cb $96
  ldh [$ffbd], a                                  ; $69f4: $e0 $bd
  pop af                                          ; $69f6: $f1
  ldh [rSVBK], a                                  ; $69f7: $e0 $70
  ldh a, [$ffbd]                                  ; $69f9: $f0 $bd
  ret                                             ; $69fb: $c9


jr_007_69fc:
  pop hl                                          ; $69fc: $e1
  ldh [$ffbd], a                                  ; $69fd: $e0 $bd
  pop af                                          ; $69ff: $f1
  ldh [rSVBK], a                                  ; $6a00: $e0 $70
  ldh a, [$ffbd]                                  ; $6a02: $f0 $bd
  ret                                             ; $6a04: $c9


  ldh a, [rSVBK]                                  ; $6a05: $f0 $70
  push af                                         ; $6a07: $f5
  ld a, $05                                       ; $6a08: $3e $05
  ldh [rSVBK], a                                  ; $6a0a: $e0 $70
  ld a, [$cc2a]                                   ; $6a0c: $fa $2a $cc
  dec a                                           ; $6a0f: $3d
  call Call_000_33f3                              ; $6a10: $cd $f3 $33
  inc bc                                          ; $6a13: $03
  halt                                            ; $6a14: $76
  ld c, c                                         ; $6a15: $49
  ld de, $000a                                    ; $6a16: $11 $0a $00
  add hl, de                                      ; $6a19: $19
  set 2, [hl]                                     ; $6a1a: $cb $d6
  ld de, $000b                                    ; $6a1c: $11 $0b $00
  add hl, de                                      ; $6a1f: $19
  ld de, $ffe7                                    ; $6a20: $11 $e7 $ff
  ld [hl], e                                      ; $6a23: $73
  inc hl                                          ; $6a24: $23
  ld [hl], d                                      ; $6a25: $72
  ldh [$ffbd], a                                  ; $6a26: $e0 $bd
  pop af                                          ; $6a28: $f1
  ldh [rSVBK], a                                  ; $6a29: $e0 $70
  ldh a, [$ffbd]                                  ; $6a2b: $f0 $bd
  ret                                             ; $6a2d: $c9


  ld a, [$cc49]                                   ; $6a2e: $fa $49 $cc
  cp $07                                          ; $6a31: $fe $07
  ret z                                           ; $6a33: $c8

  ld d, $00                                       ; $6a34: $16 $00
  ld a, d                                         ; $6a36: $7a
  call Call_000_33f3                              ; $6a37: $cd $f3 $33
  inc bc                                          ; $6a3a: $03
  ld h, a                                         ; $6a3b: $67
  ld c, b                                         ; $6a3c: $48
  jr nz, jr_007_6a4c                              ; $6a3d: $20 $0d

  ld d, $00                                       ; $6a3f: $16 $00
  ld a, d                                         ; $6a41: $7a
  call Call_000_33f3                              ; $6a42: $cd $f3 $33
  inc bc                                          ; $6a45: $03
  ld c, d                                         ; $6a46: $4a
  ld c, b                                         ; $6a47: $48
  bit 1, a                                        ; $6a48: $cb $4f
  jr nz, jr_007_6a6a                              ; $6a4a: $20 $1e

jr_007_6a4c:
  ld d, $02                                       ; $6a4c: $16 $02
  ld a, d                                         ; $6a4e: $7a
  call Call_000_33f3                              ; $6a4f: $cd $f3 $33
  inc bc                                          ; $6a52: $03
  ld h, a                                         ; $6a53: $67
  ld c, b                                         ; $6a54: $48
  jr nz, jr_007_6a64                              ; $6a55: $20 $0d

  ld d, $02                                       ; $6a57: $16 $02
  ld a, d                                         ; $6a59: $7a
  call Call_000_33f3                              ; $6a5a: $cd $f3 $33
  inc bc                                          ; $6a5d: $03
  ld c, d                                         ; $6a5e: $4a
  ld c, b                                         ; $6a5f: $48
  bit 1, a                                        ; $6a60: $cb $4f
  jr nz, jr_007_6a6a                              ; $6a62: $20 $06

jr_007_6a64:
  ld a, $01                                       ; $6a64: $3e $01
  dec a                                           ; $6a66: $3d
  jp StoreCPUFlags                                ; $6a67: $c3 $39 $00


jr_007_6a6a:
  ld a, d                                         ; $6a6a: $7a
  inc a                                           ; $6a6b: $3c
  ld [$cc2a], a                                   ; $6a6c: $ea $2a $cc
  jp StoreCPUFlags                                ; $6a6f: $c3 $39 $00


  ld a, $4f                                       ; $6a72: $3e $4f
  call Call_000_28e6                              ; $6a74: $cd $e6 $28
  add $28                                         ; $6a77: $c6 $28
  ld hl, $0006                                    ; $6a79: $21 $06 $00
  add hl, bc                                      ; $6a7c: $09
  ld [hl+], a                                     ; $6a7d: $22
  ld [hl], $00                                    ; $6a7e: $36 $00
  ld hl, $000b                                    ; $6a80: $21 $0b $00
  add hl, bc                                      ; $6a83: $09
  ld [hl+], a                                     ; $6a84: $22
  ld [hl], $00                                    ; $6a85: $36 $00
  ld a, $37                                       ; $6a87: $3e $37
  call Call_000_28e6                              ; $6a89: $cd $e6 $28
  add $38                                         ; $6a8c: $c6 $38
  ld hl, $0009                                    ; $6a8e: $21 $09 $00
  add hl, bc                                      ; $6a91: $09
  ld [hl+], a                                     ; $6a92: $22
  ld [hl], $00                                    ; $6a93: $36 $00
  ld hl, $000d                                    ; $6a95: $21 $0d $00
  add hl, bc                                      ; $6a98: $09
  ld [hl+], a                                     ; $6a99: $22
  ld [hl], $00                                    ; $6a9a: $36 $00
  ret                                             ; $6a9c: $c9


  ld a, $1d                                       ; $6a9d: $3e $1d
  ld [$cc29], a                                   ; $6a9f: $ea $29 $cc
  ret                                             ; $6aa2: $c9


  push bc                                         ; $6aa3: $c5
  ldh a, [rSVBK]                                  ; $6aa4: $f0 $70
  push af                                         ; $6aa6: $f5
  ld a, $05                                       ; $6aa7: $3e $05
  ldh [rSVBK], a                                  ; $6aa9: $e0 $70
  ld a, $01                                       ; $6aab: $3e $01
  call Call_000_33f3                              ; $6aad: $cd $f3 $33
  inc bc                                          ; $6ab0: $03
  halt                                            ; $6ab1: $76
  ld c, c                                         ; $6ab2: $49
  push hl                                         ; $6ab3: $e5
  ld de, $0001                                    ; $6ab4: $11 $01 $00
  add hl, de                                      ; $6ab7: $19
  ld a, [hl+]                                     ; $6ab8: $2a
  ld d, [hl]                                      ; $6ab9: $56
  ld e, a                                         ; $6aba: $5f
  pop hl                                          ; $6abb: $e1
  ld bc, $0005                                    ; $6abc: $01 $05 $00
  add hl, bc                                      ; $6abf: $09
  ld a, [hl+]                                     ; $6ac0: $2a
  ld h, [hl]                                      ; $6ac1: $66
  ld l, a                                         ; $6ac2: $6f
  call Call_000_01ee                              ; $6ac3: $cd $ee $01
  ld hl, $00fa                                    ; $6ac6: $21 $fa $00
  rst $10                                         ; $6ac9: $d7
  call StoreCPUFlags                              ; $6aca: $cd $39 $00
  pop af                                          ; $6acd: $f1
  ldh [rSVBK], a                                  ; $6ace: $e0 $70
  pop bc                                          ; $6ad0: $c1
  ret                                             ; $6ad1: $c9


  ldh a, [rSVBK]                                  ; $6ad2: $f0 $70
  push af                                         ; $6ad4: $f5
  ld a, $05                                       ; $6ad5: $3e $05
  ldh [rSVBK], a                                  ; $6ad7: $e0 $70
  ld a, [$cc2a]                                   ; $6ad9: $fa $2a $cc
  dec a                                           ; $6adc: $3d
  call Call_000_33f3                              ; $6add: $cd $f3 $33
  inc bc                                          ; $6ae0: $03
  halt                                            ; $6ae1: $76
  ld c, c                                         ; $6ae2: $49
  push hl                                         ; $6ae3: $e5
  ld de, $0005                                    ; $6ae4: $11 $05 $00
  add hl, de                                      ; $6ae7: $19
  ld a, [hl+]                                     ; $6ae8: $2a
  ld h, [hl]                                      ; $6ae9: $66
  ld l, a                                         ; $6aea: $6f
  ld de, $0096                                    ; $6aeb: $11 $96 $00
  add hl, de                                      ; $6aee: $19
  pop de                                          ; $6aef: $d1
  push de                                         ; $6af0: $d5
  push hl                                         ; $6af1: $e5
  ld hl, $0005                                    ; $6af2: $21 $05 $00
  add hl, de                                      ; $6af5: $19
  push hl                                         ; $6af6: $e5
  pop de                                          ; $6af7: $d1
  pop hl                                          ; $6af8: $e1
  ld a, l                                         ; $6af9: $7d
  ld [de], a                                      ; $6afa: $12
  inc de                                          ; $6afb: $13
  ld a, h                                         ; $6afc: $7c
  ld [de], a                                      ; $6afd: $12
  pop de                                          ; $6afe: $d1
  pop af                                          ; $6aff: $f1
  ldh [rSVBK], a                                  ; $6b00: $e0 $70
  ret                                             ; $6b02: $c9


  ld a, [$cc49]                                   ; $6b03: $fa $49 $cc
  cp $07                                          ; $6b06: $fe $07
  jr nz, jr_007_6b27                              ; $6b08: $20 $1d

  call Call_000_33f3                              ; $6b0a: $cd $f3 $33
  dec b                                           ; $6b0d: $05
  and [hl]                                        ; $6b0e: $a6
  ld a, [hl]                                      ; $6b0f: $7e
  ld hl, $cc5e                                    ; $6b10: $21 $5e $cc
  ld a, [hl+]                                     ; $6b13: $2a
  ld h, [hl]                                      ; $6b14: $66
  ld l, a                                         ; $6b15: $6f
  call Call_000_38fe                              ; $6b16: $cd $fe $38
  xor a                                           ; $6b19: $af
  ld [$cc4d], a                                   ; $6b1a: $ea $4d $cc
  xor a                                           ; $6b1d: $af
  ld [$cc49], a                                   ; $6b1e: $ea $49 $cc
  ld a, $53                                       ; $6b21: $3e $53
  call Call_000_261e                              ; $6b23: $cd $1e $26
  xor a                                           ; $6b26: $af

jr_007_6b27:
  jp StoreCPUFlags                                ; $6b27: $c3 $39 $00


  ldh a, [rSVBK]                                  ; $6b2a: $f0 $70
  push af                                         ; $6b2c: $f5
  ld a, $05                                       ; $6b2d: $3e $05
  ldh [rSVBK], a                                  ; $6b2f: $e0 $70
  call Call_000_2fc1                              ; $6b31: $cd $c1 $2f
  call Call_000_33f3                              ; $6b34: $cd $f3 $33

  db $03, $76, $49

  ld a, [hl]                                      ; $6b3a: $7e
  ldh [$ffbd], a                                  ; $6b3b: $e0 $bd
  pop af                                          ; $6b3d: $f1
  ldh [rSVBK], a                                  ; $6b3e: $e0 $70
  ldh a, [$ffbd]                                  ; $6b40: $f0 $bd
  cp $62                                          ; $6b42: $fe $62
  jp StoreCPUFlags                                ; $6b44: $c3 $39 $00


  ld a, [$cc5c]                                   ; $6b47: $fa $5c $cc
  ld [$cc5d], a                                   ; $6b4a: $ea $5d $cc
  ret                                             ; $6b4d: $c9


  ld a, [$cc5d]                                   ; $6b4e: $fa $5d $cc
  call Call_000_394b                              ; $6b51: $cd $4b $39
  ld hl, $012c                                    ; $6b54: $21 $2c $01
  jp Jump_000_3916                                ; $6b57: $c3 $16 $39


  ld hl, $0002                                    ; $6b5a: $21 $02 $00
  add hl, bc                                      ; $6b5d: $09
  ld a, [hl]                                      ; $6b5e: $7e
  cp $f0                                          ; $6b5f: $fe $f0
  jr z, jr_007_6b6d                               ; $6b61: $28 $0a

  ld a, [$cc2a]                                   ; $6b63: $fa $2a $cc
  dec a                                           ; $6b66: $3d
  ld hl, $0002                                    ; $6b67: $21 $02 $00
  add hl, bc                                      ; $6b6a: $09
  ld [hl], a                                      ; $6b6b: $77
  ret                                             ; $6b6c: $c9


jr_007_6b6d:
  ld a, $04                                       ; $6b6d: $3e $04
  ld [hl], a                                      ; $6b6f: $77
  ret                                             ; $6b70: $c9


  ld a, b                                         ; $6b71: $78
  cp $04                                          ; $6b72: $fe $04
  jr nc, jr_007_6b77                              ; $6b74: $30 $01

  ret                                             ; $6b76: $c9


jr_007_6b77:
  push hl                                         ; $6b77: $e5
  ld a, $06                                       ; $6b78: $3e $06
  sub b                                           ; $6b7a: $90
  ld hl, $cebc                                    ; $6b7b: $21 $bc $ce
  rst $08                                         ; $6b7e: $cf
  pop hl                                          ; $6b7f: $e1
  or a                                            ; $6b80: $b7
  ret z                                           ; $6b81: $c8

  push bc                                         ; $6b82: $c5
  push de                                         ; $6b83: $d5
  push hl                                         ; $6b84: $e5
  ld a, $06                                       ; $6b85: $3e $06
  sub b                                           ; $6b87: $90
  ldh [$ff9f], a                                  ; $6b88: $e0 $9f
  ld de, $fff6                                    ; $6b8a: $11 $f6 $ff
  add hl, de                                      ; $6b8d: $19
  ld a, [hl]                                      ; $6b8e: $7e
  ldh [$ff9a], a                                  ; $6b8f: $e0 $9a
  push bc                                         ; $6b91: $c5
  ld a, $7b                                       ; $6b92: $3e $7b
  call Call_000_04e0                              ; $6b94: $cd $e0 $04
  ldh a, [$ff9a]                                  ; $6b97: $f0 $9a
  cp $fe                                          ; $6b99: $fe $fe
  jr z, jr_007_6bba                               ; $6b9b: $28 $1d

  ld hl, $0002                                    ; $6b9d: $21 $02 $00
  add hl, de                                      ; $6ba0: $19
  ld [hl], $03                                    ; $6ba1: $36 $03
  inc de                                          ; $6ba3: $13
  ld a, [de]                                      ; $6ba4: $1a
  dec de                                          ; $6ba5: $1b
  ld hl, $d0a0                                    ; $6ba6: $21 $a0 $d0
  call Call_000_3173                              ; $6ba9: $cd $73 $31
  ld b, h                                         ; $6bac: $44
  ld c, l                                         ; $6bad: $4d
  ld hl, $0021                                    ; $6bae: $21 $21 $00
  add hl, de                                      ; $6bb1: $19
  ld a, [bc]                                      ; $6bb2: $0a
  ld [hl+], a                                     ; $6bb3: $22
  inc bc                                          ; $6bb4: $03
  ld a, [bc]                                      ; $6bb5: $0a
  ld [hl+], a                                     ; $6bb6: $22
  inc bc                                          ; $6bb7: $03
  ld a, [bc]                                      ; $6bb8: $0a
  ld [hl+], a                                     ; $6bb9: $22

jr_007_6bba:
  pop bc                                          ; $6bba: $c1
  pop hl                                          ; $6bbb: $e1
  push hl                                         ; $6bbc: $e5
  ld de, $0008                                    ; $6bbd: $11 $08 $00
  add hl, de                                      ; $6bc0: $19
  ld a, [hl]                                      ; $6bc1: $7e
  pop hl                                          ; $6bc2: $e1
  pop de                                          ; $6bc3: $d1
  pop bc                                          ; $6bc4: $c1
  ret                                             ; $6bc5: $c9


  call Call_000_2fc1                              ; $6bc6: $cd $c1 $2f
  sub $fe                                         ; $6bc9: $d6 $fe
  jp StoreCPUFlags                                ; $6bcb: $c3 $39 $00


  ldh a, [$ffd2]                                  ; $6bce: $f0 $d2
  or a                                            ; $6bd0: $b7
  ret nz                                          ; $6bd1: $c0

  ldh a, [rSVBK]                                  ; $6bd2: $f0 $70
  push af                                         ; $6bd4: $f5
  ld a, $05                                       ; $6bd5: $3e $05
  ldh [rSVBK], a                                  ; $6bd7: $e0 $70
  call Call_007_6008                              ; $6bd9: $cd $08 $60
  ld a, $fe                                       ; $6bdc: $3e $fe
  ld [hl], a                                      ; $6bde: $77
  push hl                                         ; $6bdf: $e5
  ld de, $0009                                    ; $6be0: $11 $09 $00
  add hl, de                                      ; $6be3: $19
  ld a, $ff                                       ; $6be4: $3e $ff
  ld [hl], a                                      ; $6be6: $77
  pop hl                                          ; $6be7: $e1
  push hl                                         ; $6be8: $e5
  ld de, $0005                                    ; $6be9: $11 $05 $00
  add hl, de                                      ; $6bec: $19
  xor a                                           ; $6bed: $af
  ld [hl+], a                                     ; $6bee: $22
  ld [hl], a                                      ; $6bef: $77
  pop hl                                          ; $6bf0: $e1
  ld de, $000a                                    ; $6bf1: $11 $0a $00
  add hl, de                                      ; $6bf4: $19
  ld a, $02                                       ; $6bf5: $3e $02
  ld [hl], a                                      ; $6bf7: $77
  pop af                                          ; $6bf8: $f1
  ldh [rSVBK], a                                  ; $6bf9: $e0 $70
  ret                                             ; $6bfb: $c9


  nop                                             ; $6bfc: $00

  db $06

  inc bc                                          ; $6bfe: $03

  db $09, $04, $07, $17, $0a, $05, $07, $17

  dec bc                                          ; $6c07: $0b
  inc b                                           ; $6c08: $04
  ld [$1217], sp                                  ; $6c09: $08 $17 $12
  dec bc                                          ; $6c0c: $0b
  dec b                                           ; $6c0d: $05
  ld [$0c17], sp                                  ; $6c0e: $08 $17 $0c
  dec bc                                          ; $6c11: $0b
  dec b                                           ; $6c12: $05
  ld [$120d], sp                                  ; $6c13: $08 $0d $12
  dec bc                                          ; $6c16: $0b
  dec b                                           ; $6c17: $05
  ld [$120f], sp                                  ; $6c18: $08 $0f $12
  scf                                             ; $6c1b: $37
  dec bc                                          ; $6c1c: $0b
  dec b                                           ; $6c1d: $05
  rlca                                            ; $6c1e: $07
  rla                                             ; $6c1f: $17
  inc c                                           ; $6c20: $0c

Jump_007_6c21:
  ld a, $ff                                       ; $6c21: $3e $ff
  ldh [$ff9f], a                                  ; $6c23: $e0 $9f
  ld a, [$cc49]                                   ; $6c25: $fa $49 $cc
  or a                                            ; $6c28: $b7
  ret z                                           ; $6c29: $c8

  cp $06                                          ; $6c2a: $fe $06
  jr z, jr_007_6c58                               ; $6c2c: $28 $2a

  cp $08                                          ; $6c2e: $fe $08
  jr z, jr_007_6c7e                               ; $6c30: $28 $4c

  cp $09                                          ; $6c32: $fe $09
  jr z, jr_007_6c88                               ; $6c34: $28 $52

  cp $0a                                          ; $6c36: $fe $0a
  jr z, jr_007_6c74                               ; $6c38: $28 $3a

  cp $0b                                          ; $6c3a: $fe $0b
  jr z, jr_007_6c7e                               ; $6c3c: $28 $40

  cp $0c                                          ; $6c3e: $fe $0c
  jr z, jr_007_6c88                               ; $6c40: $28 $46

  cp $0d                                          ; $6c42: $fe $0d
  jr z, jr_007_6c92                               ; $6c44: $28 $4c

  cp $0e                                          ; $6c46: $fe $0e
  jr z, jr_007_6ca7                               ; $6c48: $28 $5d

  cp $0f                                          ; $6c4a: $fe $0f
  jr z, jr_007_6cb1                               ; $6c4c: $28 $63

  cp $10                                          ; $6c4e: $fe $10
  jr z, jr_007_6cca                               ; $6c50: $28 $78

  cp $11                                          ; $6c52: $fe $11
  jp z, Jump_007_6ce3                             ; $6c54: $ca $e3 $6c

  ret                                             ; $6c57: $c9


jr_007_6c58:
  ld a, [$cbc7]                                   ; $6c58: $fa $c7 $cb
  or a                                            ; $6c5b: $b7
  jr z, jr_007_6c6c                               ; $6c5c: $28 $0e

  ld a, $64                                       ; $6c5e: $3e $64
  call Call_000_28e6                              ; $6c60: $cd $e6 $28
  cp $14                                          ; $6c63: $fe $14
  jr c, jr_007_6c6c                               ; $6c65: $38 $05

  ld a, $ff                                       ; $6c67: $3e $ff
  ldh [$ff9f], a                                  ; $6c69: $e0 $9f
  ret                                             ; $6c6b: $c9


jr_007_6c6c:
  ld a, $fe                                       ; $6c6c: $3e $fe
  ld [$cbc7], a                                   ; $6c6e: $ea $c7 $cb
  ldh [$ff9f], a                                  ; $6c71: $e0 $9f
  ret                                             ; $6c73: $c9


jr_007_6c74:
  ld hl, $6bfc                                    ; $6c74: $21 $fc $6b
  ld a, $03                                       ; $6c77: $3e $03
  call Call_000_28e6                              ; $6c79: $cd $e6 $28
  jr jr_007_6cef                                  ; $6c7c: $18 $71

jr_007_6c7e:
  ld hl, $6bff                                    ; $6c7e: $21 $ff $6b
  ld a, $04                                       ; $6c81: $3e $04
  call Call_000_28e6                              ; $6c83: $cd $e6 $28
  jr jr_007_6cef                                  ; $6c86: $18 $67

jr_007_6c88:
  ld hl, $6c03                                    ; $6c88: $21 $03 $6c
  ld a, $04                                       ; $6c8b: $3e $04
  call Call_000_28e6                              ; $6c8d: $cd $e6 $28
  jr jr_007_6cef                                  ; $6c90: $18 $5d

jr_007_6c92:
  ld hl, $6c07                                    ; $6c92: $21 $07 $6c
  ld a, $05                                       ; $6c95: $3e $05
  call Call_000_28e6                              ; $6c97: $cd $e6 $28
  cp $04                                          ; $6c9a: $fe $04
  jr nz, jr_007_6cef                              ; $6c9c: $20 $51

  push af                                         ; $6c9e: $f5
  ld a, $05                                       ; $6c9f: $3e $05
  ld [$cc2a], a                                   ; $6ca1: $ea $2a $cc
  pop af                                          ; $6ca4: $f1
  jr jr_007_6cef                                  ; $6ca5: $18 $48

jr_007_6ca7:
  ld hl, $6c0c                                    ; $6ca7: $21 $0c $6c
  ld a, $05                                       ; $6caa: $3e $05
  call Call_000_28e6                              ; $6cac: $cd $e6 $28
  jr jr_007_6cef                                  ; $6caf: $18 $3e

jr_007_6cb1:
  call Call_007_6d2d                              ; $6cb1: $cd $2d $6d
  ret nz                                          ; $6cb4: $c0

  ld hl, $6c11                                    ; $6cb5: $21 $11 $6c
  ld a, $05                                       ; $6cb8: $3e $05
  call Call_000_28e6                              ; $6cba: $cd $e6 $28
  cp $04                                          ; $6cbd: $fe $04
  jr nz, jr_007_6cef                              ; $6cbf: $20 $2e

  push af                                         ; $6cc1: $f5
  ld a, $05                                       ; $6cc2: $3e $05
  ld [$cc2a], a                                   ; $6cc4: $ea $2a $cc
  pop af                                          ; $6cc7: $f1
  jr jr_007_6cef                                  ; $6cc8: $18 $25

jr_007_6cca:
  call Call_007_6d15                              ; $6cca: $cd $15 $6d
  ret nz                                          ; $6ccd: $c0

  ld hl, $6c16                                    ; $6cce: $21 $16 $6c
  ld a, $06                                       ; $6cd1: $3e $06
  call Call_000_28e6                              ; $6cd3: $cd $e6 $28
  cp $04                                          ; $6cd6: $fe $04
  jr nz, jr_007_6cef                              ; $6cd8: $20 $15

  push af                                         ; $6cda: $f5
  ld a, $05                                       ; $6cdb: $3e $05
  ld [$cc2a], a                                   ; $6cdd: $ea $2a $cc
  pop af                                          ; $6ce0: $f1
  jr jr_007_6cef                                  ; $6ce1: $18 $0c

Jump_007_6ce3:
  call Call_007_6d2d                              ; $6ce3: $cd $2d $6d
  ret nz                                          ; $6ce6: $c0

  ld hl, $6c1c                                    ; $6ce7: $21 $1c $6c
  ld a, $05                                       ; $6cea: $3e $05
  call Call_000_28e6                              ; $6cec: $cd $e6 $28

jr_007_6cef:
  rst $08                                         ; $6cef: $cf
  ld [$cc29], a                                   ; $6cf0: $ea $29 $cc
  cp $12                                          ; $6cf3: $fe $12
  jr z, jr_007_6cfc                               ; $6cf5: $28 $05

  ld a, $f0                                       ; $6cf7: $3e $f0
  ldh [$ff9f], a                                  ; $6cf9: $e0 $9f
  ret                                             ; $6cfb: $c9


jr_007_6cfc:
  ld a, $04                                       ; $6cfc: $3e $04
  call Call_000_33f3                              ; $6cfe: $cd $f3 $33
  inc bc                                          ; $6d01: $03
  ld c, d                                         ; $6d02: $4a
  ld c, b                                         ; $6d03: $48
  bit 7, a                                        ; $6d04: $cb $7f
  jr nz, jr_007_6d0d                              ; $6d06: $20 $05

  ld a, $f0                                       ; $6d08: $3e $f0
  ldh [$ff9f], a                                  ; $6d0a: $e0 $9f
  ret                                             ; $6d0c: $c9


jr_007_6d0d:
  ld a, $02                                       ; $6d0d: $3e $02
  ld [$cc2a], a                                   ; $6d0f: $ea $2a $cc
  jp Jump_007_6c21                                ; $6d12: $c3 $21 $6c


Call_007_6d15:
  ld a, $04                                       ; $6d15: $3e $04
  call Call_000_33f3                              ; $6d17: $cd $f3 $33
  inc bc                                          ; $6d1a: $03
  ld c, d                                         ; $6d1b: $4a
  ld c, b                                         ; $6d1c: $48
  bit 2, a                                        ; $6d1d: $cb $57
  ret z                                           ; $6d1f: $c8

  ld a, $64                                       ; $6d20: $3e $64
  call Call_000_28e6                              ; $6d22: $cd $e6 $28
  cp $28                                          ; $6d25: $fe $28
  jr c, jr_007_6d43                               ; $6d27: $38 $1a

  ld a, $02                                       ; $6d29: $3e $02
  dec a                                           ; $6d2b: $3d
  ret                                             ; $6d2c: $c9


Call_007_6d2d:
  ld a, $04                                       ; $6d2d: $3e $04
  call Call_000_33f3                              ; $6d2f: $cd $f3 $33
  inc bc                                          ; $6d32: $03
  ld c, d                                         ; $6d33: $4a
  ld c, b                                         ; $6d34: $48
  bit 2, a                                        ; $6d35: $cb $57
  ret z                                           ; $6d37: $c8

  ld a, $64                                       ; $6d38: $3e $64
  call Call_000_28e6                              ; $6d3a: $cd $e6 $28
  cp $19                                          ; $6d3d: $fe $19
  jr c, jr_007_6d43                               ; $6d3f: $38 $02

  xor a                                           ; $6d41: $af
  ret                                             ; $6d42: $c9


jr_007_6d43:
  ld a, $3a                                       ; $6d43: $3e $3a
  ld [$cc29], a                                   ; $6d45: $ea $29 $cc
  ld a, $f0                                       ; $6d48: $3e $f0
  ldh [$ff9f], a                                  ; $6d4a: $e0 $9f
  dec a                                           ; $6d4c: $3d
  ret                                             ; $6d4d: $c9


  ldh a, [rSVBK]                                  ; $6d4e: $f0 $70
  push af                                         ; $6d50: $f5
  ld a, $05                                       ; $6d51: $3e $05
  ldh [rSVBK], a                                  ; $6d53: $e0 $70
  ld a, $04                                       ; $6d55: $3e $04
  call Call_000_33f3                              ; $6d57: $cd $f3 $33
  inc bc                                          ; $6d5a: $03
  halt                                            ; $6d5b: $76
  ld c, c                                         ; $6d5c: $49
  ld de, $000a                                    ; $6d5d: $11 $0a $00
  add hl, de                                      ; $6d60: $19
  res 2, [hl]                                     ; $6d61: $cb $96
  ld de, $000b                                    ; $6d63: $11 $0b $00
  add hl, de                                      ; $6d66: $19
  ld de, $0000                                    ; $6d67: $11 $00 $00
  ld [hl], e                                      ; $6d6a: $73
  inc hl                                          ; $6d6b: $23
  ld [hl], d                                      ; $6d6c: $72
  ldh [$ffbd], a                                  ; $6d6d: $e0 $bd
  pop af                                          ; $6d6f: $f1
  ldh [rSVBK], a                                  ; $6d70: $e0 $70
  ldh a, [$ffbd]                                  ; $6d72: $f0 $bd
  ret                                             ; $6d74: $c9


Call_007_6d75:
  push bc                                         ; $6d75: $c5
  push de                                         ; $6d76: $d5
  push hl                                         ; $6d77: $e5
  ld a, [$cc2a]                                   ; $6d78: $fa $2a $cc
  dec a                                           ; $6d7b: $3d
  ld e, a                                         ; $6d7c: $5f
  ld a, $7b                                       ; $6d7d: $3e $7b
  call Call_000_0a46                              ; $6d7f: $cd $46 $0a
  ld b, h                                         ; $6d82: $44
  ld c, l                                         ; $6d83: $4d
  ld de, $69b1                                    ; $6d84: $11 $b1 $69
  call Call_000_09f4                              ; $6d87: $cd $f4 $09
  pop hl                                          ; $6d8a: $e1
  pop de                                          ; $6d8b: $d1
  pop bc                                          ; $6d8c: $c1
  ret                                             ; $6d8d: $c9


Call_007_6d8e:
  push bc                                         ; $6d8e: $c5
  push de                                         ; $6d8f: $d5
  push hl                                         ; $6d90: $e5
  ld a, [$cc2a]                                   ; $6d91: $fa $2a $cc
  dec a                                           ; $6d94: $3d
  ld e, a                                         ; $6d95: $5f
  ld a, $7b                                       ; $6d96: $3e $7b
  call Call_000_0a46                              ; $6d98: $cd $46 $0a
  ld b, h                                         ; $6d9b: $44
  ld c, l                                         ; $6d9c: $4d
  ld de, $69c1                                    ; $6d9d: $11 $c1 $69
  call Call_000_09f4                              ; $6da0: $cd $f4 $09
  pop hl                                          ; $6da3: $e1
  pop de                                          ; $6da4: $d1
  pop bc                                          ; $6da5: $c1
  ret                                             ; $6da6: $c9


  ld [hl-], a                                     ; $6da7: $32

  db $4b, $64

  ld a, l                                         ; $6daa: $7d

  bit 1, [hl]                                     ; $6dab: $cb $4e
  ret nz                                          ; $6dad: $c0

  push hl                                         ; $6dae: $e5
  ld d, h                                         ; $6daf: $54
  ld e, l                                         ; $6db0: $5d
  ld hl, $0005                                    ; $6db1: $21 $05 $00
  call Call_000_01ee                              ; $6db4: $cd $ee $01
  ld a, [de]                                      ; $6db7: $1a
  ld l, a                                         ; $6db8: $6f
  inc de                                          ; $6db9: $13
  ld a, [de]                                      ; $6dba: $1a
  or l                                            ; $6dbb: $b5
  pop hl                                          ; $6dbc: $e1
  ret z                                           ; $6dbd: $c8

  push bc                                         ; $6dbe: $c5
  push hl                                         ; $6dbf: $e5
  push hl                                         ; $6dc0: $e5
  ld de, $0007                                    ; $6dc1: $11 $07 $00
  add hl, de                                      ; $6dc4: $19
  ld a, [hl]                                      ; $6dc5: $7e
  dec a                                           ; $6dc6: $3d
  ld [hl], a                                      ; $6dc7: $77
  pop hl                                          ; $6dc8: $e1
  jr z, jr_007_6dd8                               ; $6dc9: $28 $0d

  push hl                                         ; $6dcb: $e5
  ld hl, $6da7                                    ; $6dcc: $21 $a7 $6d
  rst $08                                         ; $6dcf: $cf
  pop hl                                          ; $6dd0: $e1
  call Call_000_28e6                              ; $6dd1: $cd $e6 $28
  cp $14                                          ; $6dd4: $fe $14
  jr nc, jr_007_6dfe                              ; $6dd6: $30 $26

jr_007_6dd8:
  res 3, [hl]                                     ; $6dd8: $cb $9e
  ld de, $0009                                    ; $6dda: $11 $09 $00
  add hl, de                                      ; $6ddd: $19
  ld e, [hl]                                      ; $6dde: $5e
  ld a, $06                                       ; $6ddf: $3e $06
  sub b                                           ; $6de1: $90
  ld d, a                                         ; $6de2: $57
  push de                                         ; $6de3: $d5
  ld e, a                                         ; $6de4: $5f
  ld a, $7b                                       ; $6de5: $3e $7b
  call Call_000_0a46                              ; $6de7: $cd $46 $0a
  ld b, h                                         ; $6dea: $44
  ld c, l                                         ; $6deb: $4d
  ld hl, $0023                                    ; $6dec: $21 $23 $00
  add hl, bc                                      ; $6def: $09
  ld [hl], $01                                    ; $6df0: $36 $01
  call Call_007_5c2f                              ; $6df2: $cd $2f $5c
  pop af                                          ; $6df5: $f1
  ld l, $00                                       ; $6df6: $2e $00
  call Call_000_33f3                              ; $6df8: $cd $f3 $33

  db $03, $de, $48

jr_007_6dfe:
  pop hl                                          ; $6dfe: $e1
  pop bc                                          ; $6dff: $c1
  ret                                             ; $6e00: $c9


  ld a, [$cc2a]                                   ; $6e01: $fa $2a $cc
  dec a                                           ; $6e04: $3d
  ld hl, $5434                                    ; $6e05: $21 $34 $54
  call ResolveIndexedPointer16                              ; $6e08: $cd $8b $31
  ld a, l                                         ; $6e0b: $7d
  ldh [$ff9b], a                                  ; $6e0c: $e0 $9b
  ld a, h                                         ; $6e0e: $7c
  sub $10                                         ; $6e0f: $d6 $10
  ldh [$ff9d], a                                  ; $6e11: $e0 $9d
  xor a                                           ; $6e13: $af
  ldh [$ff9c], a                                  ; $6e14: $e0 $9c
  ldh [$ff9e], a                                  ; $6e16: $e0 $9e
  ret                                             ; $6e18: $c9


  call Call_000_3978                              ; $6e19: $cd $78 $39
  ret                                             ; $6e1c: $c9


  nop                                             ; $6e1d: $00
  ld [$0000], sp                                  ; $6e1e: $08 $00 $00
  nop                                             ; $6e21: $00
  ld [$c000], sp                                  ; $6e22: $08 $00 $c0
  inc bc                                          ; $6e25: $03
  inc bc                                          ; $6e26: $03
  nop                                             ; $6e27: $00
  ld [$c000], sp                                  ; $6e28: $08 $00 $c0
  nop                                             ; $6e2b: $00
  ld [$8000], sp                                  ; $6e2c: $08 $00 $80
  inc bc                                          ; $6e2f: $03
  inc bc                                          ; $6e30: $03
  nop                                             ; $6e31: $00
  ld [$8000], sp                                  ; $6e32: $08 $00 $80
  nop                                             ; $6e35: $00
  ld [$4000], sp                                  ; $6e36: $08 $00 $40
  inc bc                                          ; $6e39: $03
  inc bc                                          ; $6e3a: $03
  nop                                             ; $6e3b: $00
  ld [$4000], sp                                  ; $6e3c: $08 $00 $40
  nop                                             ; $6e3f: $00
  ld [$0000], sp                                  ; $6e40: $08 $00 $00
  inc bc                                          ; $6e43: $03
  inc bc                                          ; $6e44: $03
  nop                                             ; $6e45: $00
  dec b                                           ; $6e46: $05
  nop                                             ; $6e47: $00
  nop                                             ; $6e48: $00
  nop                                             ; $6e49: $00
  dec b                                           ; $6e4a: $05
  nop                                             ; $6e4b: $00
  ret nz                                          ; $6e4c: $c0

  inc b                                           ; $6e4d: $04
  ld b, $00                                       ; $6e4e: $06 $00
  nop                                             ; $6e50: $00
  nop                                             ; $6e51: $00
  nop                                             ; $6e52: $00
  nop                                             ; $6e53: $00
  ld [$4000], sp                                  ; $6e54: $08 $00 $40
  nop                                             ; $6e57: $00
  inc bc                                          ; $6e58: $03
  nop                                             ; $6e59: $00
  nop                                             ; $6e5a: $00
  nop                                             ; $6e5b: $00
  nop                                             ; $6e5c: $00
  nop                                             ; $6e5d: $00
  ld [$0000], sp                                  ; $6e5e: $08 $00 $00
  nop                                             ; $6e61: $00
  inc bc                                          ; $6e62: $03
  nop                                             ; $6e63: $00
  nop                                             ; $6e64: $00
  nop                                             ; $6e65: $00
  nop                                             ; $6e66: $00
  nop                                             ; $6e67: $00
  nop                                             ; $6e68: $00
  nop                                             ; $6e69: $00
  nop                                             ; $6e6a: $00
  nop                                             ; $6e6b: $00
  nop                                             ; $6e6c: $00

  xor a                                           ; $6e6d: $af
  ld [$cd3c], a                                   ; $6e6e: $ea $3c $cd
  ret                                             ; $6e71: $c9


  ld a, [$cd3c]                                   ; $6e72: $fa $3c $cd
  or a                                            ; $6e75: $b7
  jp StoreCPUFlags                                ; $6e76: $c3 $39 $00


  db $24, $ec, $7d, $12, $04, $e7, $05, $36, $46, $e7, $05, $24, $46, $87

  rst $10                                         ; $6e87: $d7
  ld l, [hl]                                      ; $6e88: $6e
  cp $6e                                          ; $6e89: $fe $6e
  rrca                                            ; $6e8b: $0f
  ld [hl], b                                      ; $6e8c: $70
  inc sp                                          ; $6e8d: $33
  ld [hl], b                                      ; $6e8e: $70

  db $96, $70

  jp z, $e770                                     ; $6e91: $ca $70 $e7

  ld [hl], b                                      ; $6e94: $70
  dec bc                                          ; $6e95: $0b
  ld [hl], c                                      ; $6e96: $71
  and l                                           ; $6e97: $a5
  ld [hl], c                                      ; $6e98: $71
  add c                                           ; $6e99: $81
  ld [hl], d                                      ; $6e9a: $72
  xor a                                           ; $6e9b: $af
  ld [hl], d                                      ; $6e9c: $72
  cp $72                                          ; $6e9d: $fe $72
  sub a                                           ; $6e9f: $97
  ld [hl], e                                      ; $6ea0: $73
  reti                                            ; $6ea1: $d9


  ld [hl], e                                      ; $6ea2: $73
  rla                                             ; $6ea3: $17
  ld [hl], h                                      ; $6ea4: $74

  db $36, $74

  inc h                                           ; $6ea7: $24
  ld [hl], l                                      ; $6ea8: $75
  ld b, l                                         ; $6ea9: $45
  ld [hl], l                                      ; $6eaa: $75
  and l                                           ; $6eab: $a5
  ld [hl], l                                      ; $6eac: $75
  call nc, $f575                                  ; $6ead: $d4 $75 $f5
  ld [hl], l                                      ; $6eb0: $75
  inc d                                           ; $6eb1: $14
  halt                                            ; $6eb2: $76
  add d                                           ; $6eb3: $82
  halt                                            ; $6eb4: $76
  ld a, l                                         ; $6eb5: $7d
  ld [hl], a                                      ; $6eb6: $77
  sbc [hl]                                        ; $6eb7: $9e
  ld [hl], a                                      ; $6eb8: $77
  rst $10                                         ; $6eb9: $d7
  ld [hl], a                                      ; $6eba: $77
  ld b, $78                                       ; $6ebb: $06 $78
  daa                                             ; $6ebd: $27
  ld a, b                                         ; $6ebe: $78
  ld l, l                                         ; $6ebf: $6d
  ld a, b                                         ; $6ec0: $78
  cp h                                            ; $6ec1: $bc
  ld a, b                                         ; $6ec2: $78
  dec sp                                          ; $6ec3: $3b
  ld a, c                                         ; $6ec4: $79
  xor b                                           ; $6ec5: $a8
  ld a, c                                         ; $6ec6: $79
  dec bc                                          ; $6ec7: $0b
  ld a, d                                         ; $6ec8: $7a
  or d                                            ; $6ec9: $b2
  ld a, d                                         ; $6eca: $7a
  ld c, [hl]                                      ; $6ecb: $4e
  ld a, e                                         ; $6ecc: $7b
  sbc [hl]                                        ; $6ecd: $9e
  ld a, e                                         ; $6ece: $7b
  inc h                                           ; $6ecf: $24
  ld a, h                                         ; $6ed0: $7c
  ld c, b                                         ; $6ed1: $48
  ld a, h                                         ; $6ed2: $7c
  ret                                             ; $6ed3: $c9


  ld a, h                                         ; $6ed4: $7c
  sub d                                           ; $6ed5: $92
  ld a, l                                         ; $6ed6: $7d
  rst $20                                         ; $6ed7: $e7

jr_007_6ed8:
  dec b                                           ; $6ed8: $05
  ld a, l                                         ; $6ed9: $7d
  ld b, [hl]                                      ; $6eda: $46
  rst $20                                         ; $6edb: $e7
  dec b                                           ; $6edc: $05
  cp $45                                          ; $6edd: $fe $45
  ld [$05e7], a                                   ; $6edf: $ea $e7 $05
  cp e                                            ; $6ee2: $bb
  ld b, h                                         ; $6ee3: $44
  dec d                                           ; $6ee4: $15
  ld h, [hl]                                      ; $6ee5: $66
  rst $20                                         ; $6ee6: $e7
  dec b                                           ; $6ee7: $05
  ld b, [hl]                                      ; $6ee8: $46
  ld b, [hl]                                      ; $6ee9: $46
  nop                                             ; $6eea: $00
  dec d                                           ; $6eeb: $15
  dec d                                           ; $6eec: $15
  ld h, l                                         ; $6eed: $65
  nop                                             ; $6eee: $00
  jr jr_007_6ed8                                  ; $6eef: $18 $e7

  dec b                                           ; $6ef1: $05

jr_007_6ef2:
  ld a, l                                         ; $6ef2: $7d
  ld b, a                                         ; $6ef3: $47
  ld h, b                                         ; $6ef4: $60
  nop                                             ; $6ef5: $00
  dec b                                           ; $6ef6: $05
  rst $20                                         ; $6ef7: $e7
  rlca                                            ; $6ef8: $07
  xor b                                           ; $6ef9: $a8
  ld h, c                                         ; $6efa: $61
  ld d, a                                         ; $6efb: $57
  nop                                             ; $6efc: $00
  nop                                             ; $6efd: $00
  dec d                                           ; $6efe: $15
  ld h, a                                         ; $6eff: $67
  db $e4                                          ; $6f00: $e4
  nop                                             ; $6f01: $00
  ld [hl], $6f                                    ; $6f02: $36 $6f
  db $e4                                          ; $6f04: $e4
  inc b                                           ; $6f05: $04
  ld e, b                                         ; $6f06: $58
  ld l, a                                         ; $6f07: $6f
  db $e4                                          ; $6f08: $e4
  ld [$6f79], sp                                  ; $6f09: $08 $79 $6f
  db $e4                                          ; $6f0c: $e4
  inc c                                           ; $6f0d: $0c
  scf                                             ; $6f0e: $37
  ld l, a                                         ; $6f0f: $6f
  db $e4                                          ; $6f10: $e4
  db $10                                          ; $6f11: $10
  ld e, b                                         ; $6f12: $58

jr_007_6f13:
  ld l, a                                         ; $6f13: $6f
  db $e4                                          ; $6f14: $e4
  inc d                                           ; $6f15: $14
  ld a, c                                         ; $6f16: $79
  ld l, a                                         ; $6f17: $6f
  rst $20                                         ; $6f18: $e7
  dec b                                           ; $6f19: $05
  ld b, [hl]                                      ; $6f1a: $46
  ld b, [hl]                                      ; $6f1b: $46
  rst $20                                         ; $6f1c: $e7
  rlca                                            ; $6f1d: $07
  sub d                                           ; $6f1e: $92
  ld h, a                                         ; $6f1f: $67
  add h                                           ; $6f20: $84
  ld bc, $0300                                    ; $6f21: $01 $00 $03
  nop                                             ; $6f24: $00
  ld sp, hl                                       ; $6f25: $f9
  ld b, $00                                       ; $6f26: $06 $00
  rlca                                            ; $6f28: $07
  nop                                             ; $6f29: $00
  dec b                                           ; $6f2a: $05
  rst $20                                         ; $6f2b: $e7
  rlca                                            ; $6f2c: $07
  rlca                                            ; $6f2d: $07
  ld d, l                                         ; $6f2e: $55
  add hl, sp                                      ; $6f2f: $39
  ld a, a                                         ; $6f30: $7f
  nop                                             ; $6f31: $00
  ld a, [bc]                                      ; $6f32: $0a
  ld d, a                                         ; $6f33: $57
  nop                                             ; $6f34: $00
  nop                                             ; $6f35: $00
  ld [$05e7], a                                   ; $6f36: $ea $e7 $05
  ld b, [hl]                                      ; $6f39: $46
  ld b, [hl]                                      ; $6f3a: $46
  rst $20                                         ; $6f3b: $e7
  rlca                                            ; $6f3c: $07
  add $55                                         ; $6f3d: $c6 $55
  inc h                                           ; $6f3f: $24
  ld a, h                                         ; $6f40: $7c
  ld d, h                                         ; $6f41: $54
  add h                                           ; $6f42: $84
  ld bc, $2400                                    ; $6f43: $01 $00 $24
  jp hl                                           ; $6f46: $e9


  ld e, b                                         ; $6f47: $58
  ld [$0003], a                                   ; $6f48: $ea $03 $00
  nop                                             ; $6f4b: $00
  ld b, $00                                       ; $6f4c: $06 $00
  nop                                             ; $6f4e: $00
  rst $20                                         ; $6f4f: $e7
  rlca                                            ; $6f50: $07
  rlca                                            ; $6f51: $07
  ld d, l                                         ; $6f52: $55
  add hl, sp                                      ; $6f53: $39
  ld a, a                                         ; $6f54: $7f
  jr jr_007_6ef2                                  ; $6f55: $18 $9b

  ld l, a                                         ; $6f57: $6f
  rst $20                                         ; $6f58: $e7
  dec b                                           ; $6f59: $05
  ld b, [hl]                                      ; $6f5a: $46
  ld b, [hl]                                      ; $6f5b: $46
  rst $20                                         ; $6f5c: $e7
  rlca                                            ; $6f5d: $07
  call z, $2455                                   ; $6f5e: $cc $55 $24
  ld a, h                                         ; $6f61: $7c
  ld d, h                                         ; $6f62: $54
  add h                                           ; $6f63: $84
  ld bc, $2400                                    ; $6f64: $01 $00 $24
  jp hl                                           ; $6f67: $e9


  ld e, b                                         ; $6f68: $58
  ld [$0003], a                                   ; $6f69: $ea $03 $00
  nop                                             ; $6f6c: $00
  ld b, $00                                       ; $6f6d: $06 $00
  nop                                             ; $6f6f: $00
  rst $20                                         ; $6f70: $e7
  rlca                                            ; $6f71: $07
  rlca                                            ; $6f72: $07
  ld d, l                                         ; $6f73: $55
  add hl, sp                                      ; $6f74: $39
  ld a, a                                         ; $6f75: $7f
  jr jr_007_6f13                                  ; $6f76: $18 $9b

  ld l, a                                         ; $6f78: $6f
  rst $20                                         ; $6f79: $e7
  dec b                                           ; $6f7a: $05
  ld b, [hl]                                      ; $6f7b: $46
  ld b, [hl]                                      ; $6f7c: $46
  rst $20                                         ; $6f7d: $e7
  rlca                                            ; $6f7e: $07
  jp nc, $2455                                    ; $6f7f: $d2 $55 $24

  ld a, h                                         ; $6f82: $7c
  ld d, h                                         ; $6f83: $54
  add h                                           ; $6f84: $84
  ld bc, $2400                                    ; $6f85: $01 $00 $24
  jp hl                                           ; $6f88: $e9


  ld e, b                                         ; $6f89: $58
  ld [$0003], a                                   ; $6f8a: $ea $03 $00
  nop                                             ; $6f8d: $00
  ld b, $00                                       ; $6f8e: $06 $00
  nop                                             ; $6f90: $00
  db $e4                                          ; $6f91: $e4
  inc d                                           ; $6f92: $14
  sbc e                                           ; $6f93: $9b
  ld l, a                                         ; $6f94: $6f
  rst $20                                         ; $6f95: $e7
  rlca                                            ; $6f96: $07
  rlca                                            ; $6f97: $07
  ld d, l                                         ; $6f98: $55
  add hl, sp                                      ; $6f99: $39
  ld a, a                                         ; $6f9a: $7f
  rst $20                                         ; $6f9b: $e7
  dec b                                           ; $6f9c: $05
  ld e, l                                         ; $6f9d: $5d
  ld b, [hl]                                      ; $6f9e: $46
  ld [$0060], a                                   ; $6f9f: $ea $60 $00
  dec b                                           ; $6fa2: $05
  db $e4                                          ; $6fa3: $e4
  inc d                                           ; $6fa4: $14
  xor d                                           ; $6fa5: $aa
  ld l, a                                         ; $6fa6: $6f
  ld d, a                                         ; $6fa7: $57
  nop                                             ; $6fa8: $00
  nop                                             ; $6fa9: $00
  rst $20                                         ; $6faa: $e7
  dec b                                           ; $6fab: $05
  cp e                                            ; $6fac: $bb
  ld b, h                                         ; $6fad: $44
  rst $20                                         ; $6fae: $e7
  rlca                                            ; $6faf: $07
  xor b                                           ; $6fb0: $a8
  ld h, c                                         ; $6fb1: $61
  rst $20                                         ; $6fb2: $e7
  rlca                                            ; $6fb3: $07
  add $55                                         ; $6fb4: $c6 $55
  rst $20                                         ; $6fb6: $e7
  rlca                                            ; $6fb7: $07
  and $55                                         ; $6fb8: $e6 $55
  daa                                             ; $6fba: $27
  pop bc                                          ; $6fbb: $c1
  ld l, a                                         ; $6fbc: $6f
  rst $20                                         ; $6fbd: $e7
  rlca                                            ; $6fbe: $07
  ld a, [bc]                                      ; $6fbf: $0a
  ld h, a                                         ; $6fc0: $67
  rst $20                                         ; $6fc1: $e7
  rlca                                            ; $6fc2: $07
  call z, $e755                                   ; $6fc3: $cc $55 $e7
  rlca                                            ; $6fc6: $07
  and $55                                         ; $6fc7: $e6 $55
  daa                                             ; $6fc9: $27
  ret nc                                          ; $6fca: $d0

  ld l, a                                         ; $6fcb: $6f
  rst $20                                         ; $6fcc: $e7
  rlca                                            ; $6fcd: $07
  ld a, [bc]                                      ; $6fce: $0a
  ld h, a                                         ; $6fcf: $67
  rst $20                                         ; $6fd0: $e7
  rlca                                            ; $6fd1: $07
  jp nc, $e755                                    ; $6fd2: $d2 $55 $e7

  rlca                                            ; $6fd5: $07
  and $55                                         ; $6fd6: $e6 $55
  daa                                             ; $6fd8: $27
  rst $18                                         ; $6fd9: $df
  ld l, a                                         ; $6fda: $6f
  rst $20                                         ; $6fdb: $e7
  rlca                                            ; $6fdc: $07
  ld a, [bc]                                      ; $6fdd: $0a
  ld h, a                                         ; $6fde: $67
  rst $20                                         ; $6fdf: $e7
  rlca                                            ; $6fe0: $07
  or h                                            ; $6fe1: $b4
  ld d, l                                         ; $6fe2: $55
  rst $20                                         ; $6fe3: $e7
  rlca                                            ; $6fe4: $07
  and $55                                         ; $6fe5: $e6 $55
  daa                                             ; $6fe7: $27
  xor $6f                                         ; $6fe8: $ee $6f
  rst $20                                         ; $6fea: $e7
  rlca                                            ; $6feb: $07
  ld l, h                                         ; $6fec: $6c
  ld h, a                                         ; $6fed: $67
  rst $20                                         ; $6fee: $e7
  rlca                                            ; $6fef: $07
  cp d                                            ; $6ff0: $ba
  ld d, l                                         ; $6ff1: $55
  rst $20                                         ; $6ff2: $e7
  rlca                                            ; $6ff3: $07
  and $55                                         ; $6ff4: $e6 $55
  daa                                             ; $6ff6: $27
  db $fd                                          ; $6ff7: $fd
  ld l, a                                         ; $6ff8: $6f
  rst $20                                         ; $6ff9: $e7
  rlca                                            ; $6ffa: $07
  ld l, h                                         ; $6ffb: $6c
  ld h, a                                         ; $6ffc: $67
  rst $20                                         ; $6ffd: $e7
  rlca                                            ; $6ffe: $07
  ret nz                                          ; $6fff: $c0

  ld d, l                                         ; $7000: $55
  rst $20                                         ; $7001: $e7
  rlca                                            ; $7002: $07
  and $55                                         ; $7003: $e6 $55
  daa                                             ; $7005: $27
  inc c                                           ; $7006: $0c
  ld [hl], b                                      ; $7007: $70
  rst $20                                         ; $7008: $e7
  rlca                                            ; $7009: $07
  ld l, h                                         ; $700a: $6c
  ld h, a                                         ; $700b: $67
  ld d, a                                         ; $700c: $57
  nop                                             ; $700d: $00
  nop                                             ; $700e: $00
  rst $20                                         ; $700f: $e7
  dec b                                           ; $7010: $05
  ld a, l                                         ; $7011: $7d
  ld b, [hl]                                      ; $7012: $46
  rst $20                                         ; $7013: $e7
  dec b                                           ; $7014: $05
  cp $45                                          ; $7015: $fe $45
  ld [$05e7], a                                   ; $7017: $ea $e7 $05
  cp e                                            ; $701a: $bb
  ld b, h                                         ; $701b: $44
  dec d                                           ; $701c: $15
  ld l, b                                         ; $701d: $68
  rst $20                                         ; $701e: $e7
  dec b                                           ; $701f: $05
  ld b, [hl]                                      ; $7020: $46
  ld b, [hl]                                      ; $7021: $46
  ld [$05e7], a                                   ; $7022: $ea $e7 $05
  ld e, l                                         ; $7025: $5d
  ld b, [hl]                                      ; $7026: $46
  ld [$07e7], a                                   ; $7027: $ea $e7 $07
  cp [hl]                                         ; $702a: $be
  ld h, a                                         ; $702b: $67
  rst $20                                         ; $702c: $e7
  rlca                                            ; $702d: $07
  xor b                                           ; $702e: $a8
  ld h, c                                         ; $702f: $61
  ld d, a                                         ; $7030: $57
  nop                                             ; $7031: $00
  nop                                             ; $7032: $00
  db $e4                                          ; $7033: $e4
  nop                                             ; $7034: $00
  ld a, $70                                       ; $7035: $3e $70
  db $e4                                          ; $7037: $e4
  dec b                                           ; $7038: $05
  ld e, a                                         ; $7039: $5f
  ld [hl], b                                      ; $703a: $70
  jr @+$68                                        ; $703b: $18 $66

  ld [hl], b                                      ; $703d: $70
  or $05                                          ; $703e: $f6 $05
  add hl, sp                                      ; $7040: $39
  ld a, a                                         ; $7041: $7f
  ret nz                                          ; $7042: $c0

  dec l                                           ; $7043: $2d
  nop                                             ; $7044: $00
  ld [bc], a                                      ; $7045: $02
  rst $20                                         ; $7046: $e7
  ld e, $18                                       ; $7047: $1e $18
  ld e, a                                         ; $7049: $5f
  ccf                                             ; $704a: $3f
  ld a, [hl+]                                     ; $704b: $2a
  ld b, h                                         ; $704c: $44
  ld [hl], b                                      ; $704d: $70
  nop                                             ; $704e: $00
  dec b                                           ; $704f: $05
  rst $20                                         ; $7050: $e7
  add hl, bc                                      ; $7051: $09
  and c                                           ; $7052: $a1
  ld a, a                                         ; $7053: $7f
  rst $20                                         ; $7054: $e7
  dec b                                           ; $7055: $05
  cp e                                            ; $7056: $bb
  ld b, h                                         ; $7057: $44
  rst $20                                         ; $7058: $e7
  rlca                                            ; $7059: $07
  xor b                                           ; $705a: $a8
  ld h, c                                         ; $705b: $61
  ld d, a                                         ; $705c: $57
  nop                                             ; $705d: $00
  nop                                             ; $705e: $00
  add c                                           ; $705f: $81
  adc d                                           ; $7060: $8a
  nop                                             ; $7061: $00
  add h                                           ; $7062: $84
  ld h, h                                         ; $7063: $64
  nop                                             ; $7064: $00
  ld [$9b15], a                                   ; $7065: $ea $15 $9b
  rst $20                                         ; $7068: $e7
  dec b                                           ; $7069: $05
  ld b, [hl]                                      ; $706a: $46
  ld b, [hl]                                      ; $706b: $46
  db $e4                                          ; $706c: $e4
  dec b                                           ; $706d: $05
  add e                                           ; $706e: $83
  ld [hl], b                                      ; $706f: $70
  db $e4                                          ; $7070: $e4
  ld [bc], a                                      ; $7071: $02
  sub d                                           ; $7072: $92
  ld [hl], b                                      ; $7073: $70
  nop                                             ; $7074: $00
  ld [bc], a                                      ; $7075: $02
  ld c, b                                         ; $7076: $48
  db $ec                                          ; $7077: $ec
  ld c, e                                         ; $7078: $4b
  nop                                             ; $7079: $00
  or $02                                          ; $707a: $f6 $02
  add hl, sp                                      ; $707c: $39
  ld a, a                                         ; $707d: $7f
  nop                                             ; $707e: $00
  ld e, $57                                       ; $707f: $1e $57
  nop                                             ; $7081: $00
  nop                                             ; $7082: $00
  nop                                             ; $7083: $00
  inc bc                                          ; $7084: $03
  ld c, b                                         ; $7085: $48
  ld a, [bc]                                      ; $7086: $0a
  ld c, e                                         ; $7087: $4b
  nop                                             ; $7088: $00
  or $01                                          ; $7089: $f6 $01
  add hl, sp                                      ; $708b: $39
  ld a, a                                         ; $708c: $7f
  nop                                             ; $708d: $00
  dec e                                           ; $708e: $1d
  ld d, a                                         ; $708f: $57
  nop                                             ; $7090: $00
  nop                                             ; $7091: $00
  ld [$0057], a                                   ; $7092: $ea $57 $00
  nop                                             ; $7095: $00

  db $81, $54, $00, $84, $37, $00, $e4, $01, $bd, $70, $15, $6a, $e7, $05, $46, $46
  db $00, $3c, $f6, $01, $39, $7f, $00, $1e, $e7, $05, $bb, $44, $e7, $07, $a1, $67
  db $e7, $07, $a8, $61, $57, $00, $00, $bd, $e8, $04, $15, $6b, $e7, $05, $5d, $46
  db $ea, $57, $00, $00

  add c                                           ; $70ca: $81
  ld d, b                                         ; $70cb: $50
  nop                                             ; $70cc: $00
  add h                                           ; $70cd: $84
  scf                                             ; $70ce: $37
  nop                                             ; $70cf: $00
  ld [$05e7], a                                   ; $70d0: $ea $e7 $05
  cp e                                            ; $70d3: $bb
  ld b, h                                         ; $70d4: $44
  dec d                                           ; $70d5: $15
  ld l, c                                         ; $70d6: $69
  rst $20                                         ; $70d7: $e7
  dec b                                           ; $70d8: $05
  ld b, [hl]                                      ; $70d9: $46
  ld b, [hl]                                      ; $70da: $46
  ld [$07e7], a                                   ; $70db: $ea $e7 $07
  xor a                                           ; $70de: $af
  ld h, a                                         ; $70df: $67
  rst $20                                         ; $70e0: $e7
  rlca                                            ; $70e1: $07
  xor b                                           ; $70e2: $a8
  ld h, c                                         ; $70e3: $61
  ld d, a                                         ; $70e4: $57
  nop                                             ; $70e5: $00
  nop                                             ; $70e6: $00
  rst $20                                         ; $70e7: $e7
  dec b                                           ; $70e8: $05
  ld a, l                                         ; $70e9: $7d
  ld b, [hl]                                      ; $70ea: $46
  rst $20                                         ; $70eb: $e7
  dec b                                           ; $70ec: $05
  cp $45                                          ; $70ed: $fe $45
  and d                                           ; $70ef: $a2
  db $10                                          ; $70f0: $10
  ld [$05e7], a                                   ; $70f1: $ea $e7 $05
  cp e                                            ; $70f4: $bb
  ld b, h                                         ; $70f5: $44
  dec d                                           ; $70f6: $15
  add [hl]                                        ; $70f7: $86
  rst $20                                         ; $70f8: $e7
  dec b                                           ; $70f9: $05
  ld b, [hl]                                      ; $70fa: $46
  ld b, [hl]                                      ; $70fb: $46
  ld [$e760], a                                   ; $70fc: $ea $60 $e7
  dec b                                           ; $70ff: $05
  db $f4                                          ; $7100: $f4
  ld b, [hl]                                      ; $7101: $46
  nop                                             ; $7102: $00
  ld a, [bc]                                      ; $7103: $0a
  rst $20                                         ; $7104: $e7
  rlca                                            ; $7105: $07
  xor b                                           ; $7106: $a8
  ld h, c                                         ; $7107: $61
  ld d, a                                         ; $7108: $57
  nop                                             ; $7109: $00
  nop                                             ; $710a: $00
  db $e4                                          ; $710b: $e4
  ld bc, $713e                                    ; $710c: $01 $3e $71
  db $e4                                          ; $710f: $e4
  ld [bc], a                                      ; $7110: $02
  ld e, a                                         ; $7111: $5f
  ld [hl], c                                      ; $7112: $71
  db $e4                                          ; $7113: $e4
  inc bc                                          ; $7114: $03
  add d                                           ; $7115: $82
  ld [hl], c                                      ; $7116: $71
  ld h, b                                         ; $7117: $60
  rst $20                                         ; $7118: $e7
  dec b                                           ; $7119: $05
  ld a, l                                         ; $711a: $7d
  ld b, [hl]                                      ; $711b: $46
  ld [$05e7], a                                   ; $711c: $ea $e7 $05
  cp e                                            ; $711f: $bb
  ld b, h                                         ; $7120: $44
  or $01                                          ; $7121: $f6 $01
  add hl, sp                                      ; $7123: $39
  ld a, a                                         ; $7124: $7f
  nop                                             ; $7125: $00
  inc c                                           ; $7126: $0c
  or $02                                          ; $7127: $f6 $02
  add hl, sp                                      ; $7129: $39
  ld a, a                                         ; $712a: $7f
  nop                                             ; $712b: $00
  inc c                                           ; $712c: $0c
  or $03                                          ; $712d: $f6 $03
  add hl, sp                                      ; $712f: $39
  ld a, a                                         ; $7130: $7f
  nop                                             ; $7131: $00
  inc a                                           ; $7132: $3c
  rst $20                                         ; $7133: $e7
  rlca                                            ; $7134: $07
  ld h, h                                         ; $7135: $64
  ld h, h                                         ; $7136: $64
  rst $20                                         ; $7137: $e7
  rlca                                            ; $7138: $07
  xor b                                           ; $7139: $a8
  ld h, c                                         ; $713a: $61
  ld d, a                                         ; $713b: $57
  nop                                             ; $713c: $00
  nop                                             ; $713d: $00
  rst $20                                         ; $713e: $e7
  dec b                                           ; $713f: $05
  cp $45                                          ; $7140: $fe $45
  add h                                           ; $7142: $84
  ld bc, $e700                                    ; $7143: $01 $00 $e7
  dec b                                           ; $7146: $05
  ld b, [hl]                                      ; $7147: $46
  ld b, [hl]                                      ; $7148: $46
  inc h                                           ; $7149: $24
  rrca                                            ; $714a: $0f
  ld e, c                                         ; $714b: $59
  ld [$0003], a                                   ; $714c: $ea $03 $00
  nop                                             ; $714f: $00
  ld b, $00                                       ; $7150: $06 $00
  nop                                             ; $7152: $00
  dec d                                           ; $7153: $15
  ld l, h                                         ; $7154: $6c
  rst $20                                         ; $7155: $e7
  dec b                                           ; $7156: $05
  ld e, l                                         ; $7157: $5d
  ld b, [hl]                                      ; $7158: $46
  ld [$1400], a                                   ; $7159: $ea $00 $14
  ld d, a                                         ; $715c: $57
  nop                                             ; $715d: $00
  nop                                             ; $715e: $00
  rst $20                                         ; $715f: $e7
  dec b                                           ; $7160: $05
  cp $45                                          ; $7161: $fe $45
  sbc a                                           ; $7163: $9f
  db $f4                                          ; $7164: $f4
  add h                                           ; $7165: $84
  ld bc, $e700                                    ; $7166: $01 $00 $e7
  dec b                                           ; $7169: $05
  ld b, [hl]                                      ; $716a: $46
  ld b, [hl]                                      ; $716b: $46
  inc h                                           ; $716c: $24
  jr nz, jr_007_71c8                              ; $716d: $20 $59

  ld [$0003], a                                   ; $716f: $ea $03 $00
  nop                                             ; $7172: $00
  ld b, $00                                       ; $7173: $06 $00
  nop                                             ; $7175: $00
  dec d                                           ; $7176: $15
  ld l, h                                         ; $7177: $6c
  rst $20                                         ; $7178: $e7
  dec b                                           ; $7179: $05
  ld e, l                                         ; $717a: $5d
  ld b, [hl]                                      ; $717b: $46
  ld [$1400], a                                   ; $717c: $ea $00 $14
  ld d, a                                         ; $717f: $57
  nop                                             ; $7180: $00
  nop                                             ; $7181: $00
  rst $20                                         ; $7182: $e7
  dec b                                           ; $7183: $05
  cp $45                                          ; $7184: $fe $45
  sbc a                                           ; $7186: $9f
  inc c                                           ; $7187: $0c
  add h                                           ; $7188: $84
  ld bc, $e700                                    ; $7189: $01 $00 $e7
  dec b                                           ; $718c: $05
  ld b, [hl]                                      ; $718d: $46
  ld b, [hl]                                      ; $718e: $46
  inc h                                           ; $718f: $24
  ld sp, $ea59                                    ; $7190: $31 $59 $ea
  inc bc                                          ; $7193: $03
  nop                                             ; $7194: $00
  nop                                             ; $7195: $00
  ld b, $00                                       ; $7196: $06 $00
  nop                                             ; $7198: $00
  dec d                                           ; $7199: $15
  ld l, h                                         ; $719a: $6c
  rst $20                                         ; $719b: $e7
  dec b                                           ; $719c: $05
  ld e, l                                         ; $719d: $5d
  ld b, [hl]                                      ; $719e: $46
  ld [$1400], a                                   ; $719f: $ea $00 $14
  ld d, a                                         ; $71a2: $57
  nop                                             ; $71a3: $00
  nop                                             ; $71a4: $00
  db $e4                                          ; $71a5: $e4
  ld bc, $7209                                    ; $71a6: $01 $09 $72
  db $e4                                          ; $71a9: $e4
  ld [bc], a                                      ; $71aa: $02
  jr z, jr_007_721f                               ; $71ab: $28 $72

  db $e4                                          ; $71ad: $e4
  inc bc                                          ; $71ae: $03
  ld b, a                                         ; $71af: $47
  ld [hl], d                                      ; $71b0: $72
  db $e4                                          ; $71b1: $e4
  inc b                                           ; $71b2: $04
  ld h, [hl]                                      ; $71b3: $66
  ld [hl], d                                      ; $71b4: $72
  db $e4                                          ; $71b5: $e4
  dec b                                           ; $71b6: $05
  ld a, c                                         ; $71b7: $79
  ld [hl], d                                      ; $71b8: $72
  ld h, b                                         ; $71b9: $60
  rst $20                                         ; $71ba: $e7
  rlca                                            ; $71bb: $07
  ld b, a                                         ; $71bc: $47
  ld l, e                                         ; $71bd: $6b
  call z, $e714                                   ; $71be: $cc $14 $e7
  rlca                                            ; $71c1: $07
  ld d, h                                         ; $71c2: $54
  ld l, e                                         ; $71c3: $6b
  ld [$05e7], a                                   ; $71c4: $ea $e7 $05
  cp e                                            ; $71c7: $bb

jr_007_71c8:
  ld b, h                                         ; $71c8: $44
  rst $20                                         ; $71c9: $e7
  rlca                                            ; $71ca: $07
  ld c, [hl]                                      ; $71cb: $4e
  ld l, e                                         ; $71cc: $6b
  rst $20                                         ; $71cd: $e7
  rlca                                            ; $71ce: $07
  add $55                                         ; $71cf: $c6 $55
  rst $20                                         ; $71d1: $e7
  rlca                                            ; $71d2: $07
  and $55                                         ; $71d3: $e6 $55
  daa                                             ; $71d5: $27
  sbc $71                                         ; $71d6: $de $71
  or $01                                          ; $71d8: $f6 $01
  add hl, sp                                      ; $71da: $39
  ld a, a                                         ; $71db: $7f
  nop                                             ; $71dc: $00
  jr nc, @-$17                                    ; $71dd: $30 $e7

  rlca                                            ; $71df: $07
  call z, $e755                                   ; $71e0: $cc $55 $e7
  rlca                                            ; $71e3: $07
  and $55                                         ; $71e4: $e6 $55
  daa                                             ; $71e6: $27
  rst $28                                         ; $71e7: $ef
  ld [hl], c                                      ; $71e8: $71
  or $02                                          ; $71e9: $f6 $02
  add hl, sp                                      ; $71eb: $39
  ld a, a                                         ; $71ec: $7f
  nop                                             ; $71ed: $00
  jr nc, @-$17                                    ; $71ee: $30 $e7

  rlca                                            ; $71f0: $07
  jp nc, $e755                                    ; $71f1: $d2 $55 $e7

  rlca                                            ; $71f4: $07
  and $55                                         ; $71f5: $e6 $55
  daa                                             ; $71f7: $27
  nop                                             ; $71f8: $00
  ld [hl], d                                      ; $71f9: $72
  or $03                                          ; $71fa: $f6 $03
  add hl, sp                                      ; $71fc: $39
  ld a, a                                         ; $71fd: $7f
  nop                                             ; $71fe: $00
  jr nc, jr_007_7201                              ; $71ff: $30 $00

jr_007_7201:
  jr @-$17                                        ; $7201: $18 $e7

  rlca                                            ; $7203: $07
  xor b                                           ; $7204: $a8
  ld h, c                                         ; $7205: $61
  ld d, a                                         ; $7206: $57
  nop                                             ; $7207: $00
  nop                                             ; $7208: $00
  rst $20                                         ; $7209: $e7
  rlca                                            ; $720a: $07
  add $55                                         ; $720b: $c6 $55
  rst $20                                         ; $720d: $e7
  rlca                                            ; $720e: $07
  nop                                             ; $720f: $00
  ld h, h                                         ; $7210: $64
  rst $20                                         ; $7211: $e7
  dec b                                           ; $7212: $05
  cp $45                                          ; $7213: $fe $45
  rst $20                                         ; $7215: $e7
  dec b                                           ; $7216: $05
  ld b, [hl]                                      ; $7217: $46
  ld b, [hl]                                      ; $7218: $46
  nop                                             ; $7219: $00
  ld e, $f6                                       ; $721a: $1e $f6
  inc b                                           ; $721c: $04
  ld c, b                                         ; $721d: $48
  nop                                             ; $721e: $00

jr_007_721f:
  ld c, e                                         ; $721f: $4b
  nop                                             ; $7220: $00
  add hl, sp                                      ; $7221: $39
  ld a, a                                         ; $7222: $7f
  nop                                             ; $7223: $00
  ld a, [bc]                                      ; $7224: $0a
  ld d, a                                         ; $7225: $57
  nop                                             ; $7226: $00
  nop                                             ; $7227: $00
  rst $20                                         ; $7228: $e7
  rlca                                            ; $7229: $07
  call z, $e755                                   ; $722a: $cc $55 $e7
  rlca                                            ; $722d: $07
  nop                                             ; $722e: $00
  ld h, h                                         ; $722f: $64
  rst $20                                         ; $7230: $e7
  dec b                                           ; $7231: $05
  cp $45                                          ; $7232: $fe $45
  rst $20                                         ; $7234: $e7
  dec b                                           ; $7235: $05
  ld b, [hl]                                      ; $7236: $46
  ld b, [hl]                                      ; $7237: $46
  nop                                             ; $7238: $00
  ld e, $f6                                       ; $7239: $1e $f6
  inc b                                           ; $723b: $04
  ld c, b                                         ; $723c: $48
  nop                                             ; $723d: $00
  ld c, e                                         ; $723e: $4b
  nop                                             ; $723f: $00
  add hl, sp                                      ; $7240: $39
  ld a, a                                         ; $7241: $7f
  nop                                             ; $7242: $00
  ld a, [bc]                                      ; $7243: $0a
  ld d, a                                         ; $7244: $57
  nop                                             ; $7245: $00
  nop                                             ; $7246: $00
  rst $20                                         ; $7247: $e7
  rlca                                            ; $7248: $07
  jp nc, $e755                                    ; $7249: $d2 $55 $e7

  rlca                                            ; $724c: $07
  nop                                             ; $724d: $00
  ld h, h                                         ; $724e: $64
  rst $20                                         ; $724f: $e7
  dec b                                           ; $7250: $05
  cp $45                                          ; $7251: $fe $45
  rst $20                                         ; $7253: $e7
  dec b                                           ; $7254: $05
  ld b, [hl]                                      ; $7255: $46
  ld b, [hl]                                      ; $7256: $46
  nop                                             ; $7257: $00
  ld e, $f6                                       ; $7258: $1e $f6
  inc b                                           ; $725a: $04
  ld c, b                                         ; $725b: $48
  nop                                             ; $725c: $00
  ld c, e                                         ; $725d: $4b
  nop                                             ; $725e: $00
  add hl, sp                                      ; $725f: $39
  ld a, a                                         ; $7260: $7f
  nop                                             ; $7261: $00
  ld a, [bc]                                      ; $7262: $0a
  ld d, a                                         ; $7263: $57
  nop                                             ; $7264: $00
  nop                                             ; $7265: $00
  rst $20                                         ; $7266: $e7
  dec b                                           ; $7267: $05
  ld e, l                                         ; $7268: $5d
  ld b, [hl]                                      ; $7269: $46
  nop                                             ; $726a: $00
  ld b, $f6                                       ; $726b: $06 $f6
  dec b                                           ; $726d: $05
  ld c, b                                         ; $726e: $48
  nop                                             ; $726f: $00
  ld c, e                                         ; $7270: $4b
  nop                                             ; $7271: $00
  add hl, sp                                      ; $7272: $39
  ld a, a                                         ; $7273: $7f
  nop                                             ; $7274: $00
  ld a, [bc]                                      ; $7275: $0a
  ld d, a                                         ; $7276: $57
  nop                                             ; $7277: $00
  nop                                             ; $7278: $00
  rst $20                                         ; $7279: $e7
  dec b                                           ; $727a: $05
  ld e, l                                         ; $727b: $5d
  ld b, [hl]                                      ; $727c: $46
  ld [$0057], a                                   ; $727d: $ea $57 $00
  nop                                             ; $7280: $00
  rst $20                                         ; $7281: $e7
  rlca                                            ; $7282: $07
  ld b, a                                         ; $7283: $47
  ld l, e                                         ; $7284: $6b
  call z, $e713                                   ; $7285: $cc $13 $e7
  rlca                                            ; $7288: $07
  ld d, h                                         ; $7289: $54
  ld l, e                                         ; $728a: $6b
  rst $20                                         ; $728b: $e7
  dec b                                           ; $728c: $05
  ld a, l                                         ; $728d: $7d
  ld b, [hl]                                      ; $728e: $46
  rst $20                                         ; $728f: $e7
  dec b                                           ; $7290: $05
  cp $45                                          ; $7291: $fe $45
  ld [$05e7], a                                   ; $7293: $ea $e7 $05
  cp e                                            ; $7296: $bb
  ld b, h                                         ; $7297: $44
  rst $20                                         ; $7298: $e7
  dec b                                           ; $7299: $05
  ld b, [hl]                                      ; $729a: $46
  ld b, [hl]                                      ; $729b: $46
  ld [$e760], a                                   ; $729c: $ea $60 $e7
  dec b                                           ; $729f: $05
  db $f4                                          ; $72a0: $f4
  ld b, [hl]                                      ; $72a1: $46
  rst $20                                         ; $72a2: $e7
  rlca                                            ; $72a3: $07
  ld c, [hl]                                      ; $72a4: $4e
  ld l, e                                         ; $72a5: $6b
  nop                                             ; $72a6: $00
  ld a, [bc]                                      ; $72a7: $0a
  rst $20                                         ; $72a8: $e7
  rlca                                            ; $72a9: $07
  xor b                                           ; $72aa: $a8
  ld h, c                                         ; $72ab: $61
  ld d, a                                         ; $72ac: $57
  nop                                             ; $72ad: $00
  nop                                             ; $72ae: $00
  db $e4                                          ; $72af: $e4
  ld bc, $72f3                                    ; $72b0: $01 $f3 $72
  rst $20                                         ; $72b3: $e7
  rlca                                            ; $72b4: $07
  cp d                                            ; $72b5: $ba
  ld d, l                                         ; $72b6: $55
  rst $20                                         ; $72b7: $e7
  dec b                                           ; $72b8: $05
  cp $45                                          ; $72b9: $fe $45
  ld [$05e7], a                                   ; $72bb: $ea $e7 $05
  cp e                                            ; $72be: $bb
  ld b, h                                         ; $72bf: $44
  rst $20                                         ; $72c0: $e7
  dec b                                           ; $72c1: $05
  ld b, [hl]                                      ; $72c2: $46
  ld b, [hl]                                      ; $72c3: $46
  nop                                             ; $72c4: $00
  inc c                                           ; $72c5: $0c
  dec d                                           ; $72c6: $15
  sub e                                           ; $72c7: $93
  ld [$4860], a                                   ; $72c8: $ea $60 $48
  nop                                             ; $72cb: $00
  ld c, e                                         ; $72cc: $4b
  db $fc                                          ; $72cd: $fc
  or $01                                          ; $72ce: $f6 $01
  add hl, sp                                      ; $72d0: $39
  ld a, a                                         ; $72d1: $7f
  nop                                             ; $72d2: $00
  add hl, bc                                      ; $72d3: $09
  ld c, b                                         ; $72d4: $48
  nop                                             ; $72d5: $00
  ld c, e                                         ; $72d6: $4b
  nop                                             ; $72d7: $00
  or $01                                          ; $72d8: $f6 $01
  add hl, sp                                      ; $72da: $39
  ld a, a                                         ; $72db: $7f
  nop                                             ; $72dc: $00
  add hl, bc                                      ; $72dd: $09
  ld c, b                                         ; $72de: $48
  nop                                             ; $72df: $00
  ld c, e                                         ; $72e0: $4b
  inc b                                           ; $72e1: $04
  or $01                                          ; $72e2: $f6 $01
  add hl, sp                                      ; $72e4: $39
  ld a, a                                         ; $72e5: $7f
  nop                                             ; $72e6: $00
  add hl, bc                                      ; $72e7: $09
  rst $20                                         ; $72e8: $e7
  rlca                                            ; $72e9: $07
  reti                                            ; $72ea: $d9


  ld h, a                                         ; $72eb: $67
  rst $20                                         ; $72ec: $e7
  rlca                                            ; $72ed: $07
  xor b                                           ; $72ee: $a8
  ld h, c                                         ; $72ef: $61
  ld d, a                                         ; $72f0: $57
  nop                                             ; $72f1: $00
  nop                                             ; $72f2: $00
  cp l                                            ; $72f3: $bd
  jr nz, @+$07                                    ; $72f4: $20 $05

  rst $20                                         ; $72f6: $e7
  dec b                                           ; $72f7: $05
  ld e, l                                         ; $72f8: $5d
  ld b, [hl]                                      ; $72f9: $46
  ld [$0057], a                                   ; $72fa: $ea $57 $00
  nop                                             ; $72fd: $00
  db $e4                                          ; $72fe: $e4
  ld bc, $732e                                    ; $72ff: $01 $2e $73
  db $e4                                          ; $7302: $e4
  ld [bc], a                                      ; $7303: $02
  ld c, l                                         ; $7304: $4d
  ld [hl], e                                      ; $7305: $73
  db $e4                                          ; $7306: $e4
  inc bc                                          ; $7307: $03
  ld l, e                                         ; $7308: $6b
  ld [hl], e                                      ; $7309: $73
  rst $20                                         ; $730a: $e7
  rlca                                            ; $730b: $07
  cp d                                            ; $730c: $ba
  ld d, l                                         ; $730d: $55
  rst $20                                         ; $730e: $e7
  dec b                                           ; $730f: $05
  cp $45                                          ; $7310: $fe $45
  sbc a                                           ; $7312: $9f
  db $f4                                          ; $7313: $f4
  and d                                           ; $7314: $a2
  inc c                                           ; $7315: $0c
  ld [$9415], a                                   ; $7316: $ea $15 $94
  rst $20                                         ; $7319: $e7
  dec b                                           ; $731a: $05
  ld b, [hl]                                      ; $731b: $46
  ld b, [hl]                                      ; $731c: $46
  ld [$01f6], a                                   ; $731d: $ea $f6 $01
  add hl, sp                                      ; $7320: $39
  ld a, a                                         ; $7321: $7f
  nop                                             ; $7322: $00
  dec l                                           ; $7323: $2d
  dec d                                           ; $7324: $15
  sub l                                           ; $7325: $95
  rst $20                                         ; $7326: $e7
  dec b                                           ; $7327: $05
  ld e, l                                         ; $7328: $5d
  ld b, [hl]                                      ; $7329: $46
  ld [$0057], a                                   ; $732a: $ea $57 $00
  nop                                             ; $732d: $00
  dec d                                           ; $732e: $15
  sub h                                           ; $732f: $94
  rst $20                                         ; $7330: $e7
  dec b                                           ; $7331: $05
  cp $45                                          ; $7332: $fe $45
  sbc a                                           ; $7334: $9f
  inc c                                           ; $7335: $0c
  and d                                           ; $7336: $a2
  inc c                                           ; $7337: $0c
  rst $20                                         ; $7338: $e7
  dec b                                           ; $7339: $05
  ld b, [hl]                                      ; $733a: $46
  ld b, [hl]                                      ; $733b: $46
  ld [$02f6], a                                   ; $733c: $ea $f6 $02
  add hl, sp                                      ; $733f: $39
  ld a, a                                         ; $7340: $7f
  nop                                             ; $7341: $00
  dec l                                           ; $7342: $2d
  dec d                                           ; $7343: $15
  sub l                                           ; $7344: $95
  rst $20                                         ; $7345: $e7
  dec b                                           ; $7346: $05
  ld e, l                                         ; $7347: $5d
  ld b, [hl]                                      ; $7348: $46
  ld [$0057], a                                   ; $7349: $ea $57 $00
  nop                                             ; $734c: $00
  dec d                                           ; $734d: $15
  sub h                                           ; $734e: $94
  ld a, [hl]                                      ; $734f: $7e
  rst $20                                         ; $7350: $e7
  dec b                                           ; $7351: $05
  cp $45                                          ; $7352: $fe $45
  and d                                           ; $7354: $a2
  jr @-$17                                        ; $7355: $18 $e7

  dec b                                           ; $7357: $05
  ld b, [hl]                                      ; $7358: $46
  ld b, [hl]                                      ; $7359: $46
  ld [$03f6], a                                   ; $735a: $ea $f6 $03
  add hl, sp                                      ; $735d: $39
  ld a, a                                         ; $735e: $7f
  nop                                             ; $735f: $00
  dec l                                           ; $7360: $2d
  dec d                                           ; $7361: $15
  sub l                                           ; $7362: $95
  rst $20                                         ; $7363: $e7
  dec b                                           ; $7364: $05
  ld e, l                                         ; $7365: $5d
  ld b, [hl]                                      ; $7366: $46
  ld [$0057], a                                   ; $7367: $ea $57 $00
  nop                                             ; $736a: $00
  dec d                                           ; $736b: $15
  sub h                                           ; $736c: $94
  push de                                         ; $736d: $d5
  rst $20                                         ; $736e: $e7
  dec b                                           ; $736f: $05
  ld d, b                                         ; $7370: $50
  ld c, e                                         ; $7371: $4b
  rst $20                                         ; $7372: $e7
  dec b                                           ; $7373: $05
  cp $45                                          ; $7374: $fe $45
  rst $20                                         ; $7376: $e7
  dec b                                           ; $7377: $05
  ld b, [hl]                                      ; $7378: $46
  ld b, [hl]                                      ; $7379: $46
  ld [$2d00], a                                   ; $737a: $ea $00 $2d
  dec d                                           ; $737d: $15
  sub l                                           ; $737e: $95
  rst $20                                         ; $737f: $e7
  dec b                                           ; $7380: $05
  ld e, l                                         ; $7381: $5d
  ld b, [hl]                                      ; $7382: $46
  ld [$05e7], a                                   ; $7383: $ea $e7 $05
  ld h, d                                         ; $7386: $62
  ld c, e                                         ; $7387: $4b
  rst $20                                         ; $7388: $e7
  rlca                                            ; $7389: $07
  dec b                                           ; $738a: $05
  ld l, b                                         ; $738b: $68
  rst $20                                         ; $738c: $e7
  dec b                                           ; $738d: $05
  cp e                                            ; $738e: $bb
  ld b, h                                         ; $738f: $44
  rst $20                                         ; $7390: $e7
  rlca                                            ; $7391: $07
  xor b                                           ; $7392: $a8
  ld h, c                                         ; $7393: $61
  ld d, a                                         ; $7394: $57
  nop                                             ; $7395: $00
  nop                                             ; $7396: $00
  db $e4                                          ; $7397: $e4
  nop                                             ; $7398: $00
  or [hl]                                         ; $7399: $b6
  ld [hl], e                                      ; $739a: $73
  rst $20                                         ; $739b: $e7
  rlca                                            ; $739c: $07
  rla                                             ; $739d: $17
  ld l, b                                         ; $739e: $68
  rst $20                                         ; $739f: $e7
  dec b                                           ; $73a0: $05
  ld b, [hl]                                      ; $73a1: $46
  ld b, [hl]                                      ; $73a2: $46
  dec d                                           ; $73a3: $15
  ld l, l                                         ; $73a4: $6d
  nop                                             ; $73a5: $00
  dec b                                           ; $73a6: $05
  db $e4                                          ; $73a7: $e4
  dec bc                                          ; $73a8: $0b
  adc $73                                         ; $73a9: $ce $73
  rst $20                                         ; $73ab: $e7
  rlca                                            ; $73ac: $07
  rlca                                            ; $73ad: $07
  ld d, l                                         ; $73ae: $55
  nop                                             ; $73af: $00
  dec b                                           ; $73b0: $05
  add hl, sp                                      ; $73b1: $39
  ld a, a                                         ; $73b2: $7f
  ld d, a                                         ; $73b3: $57
  nop                                             ; $73b4: $00
  nop                                             ; $73b5: $00
  ld [$05e7], a                                   ; $73b6: $ea $e7 $05
  cp e                                            ; $73b9: $bb
  ld b, h                                         ; $73ba: $44
  rst $20                                         ; $73bb: $e7
  rlca                                            ; $73bc: $07
  rla                                             ; $73bd: $17
  ld l, b                                         ; $73be: $68
  rst $20                                         ; $73bf: $e7
  dec b                                           ; $73c0: $05
  ld b, [hl]                                      ; $73c1: $46
  ld b, [hl]                                      ; $73c2: $46
  nop                                             ; $73c3: $00
  dec b                                           ; $73c4: $05
  or $01                                          ; $73c5: $f6 $01
  add hl, sp                                      ; $73c7: $39
  ld a, a                                         ; $73c8: $7f
  nop                                             ; $73c9: $00
  dec b                                           ; $73ca: $05
  ld d, a                                         ; $73cb: $57
  nop                                             ; $73cc: $00
  nop                                             ; $73cd: $00
  rst $20                                         ; $73ce: $e7
  rlca                                            ; $73cf: $07
  ld b, d                                         ; $73d0: $42
  ld l, b                                         ; $73d1: $68
  rst $20                                         ; $73d2: $e7
  rlca                                            ; $73d3: $07
  xor b                                           ; $73d4: $a8
  ld h, c                                         ; $73d5: $61
  ld d, a                                         ; $73d6: $57
  nop                                             ; $73d7: $00
  nop                                             ; $73d8: $00
  inc h                                           ; $73d9: $24
  ld [hl], d                                      ; $73da: $72
  ld l, d                                         ; $73db: $6a
  rst $20                                         ; $73dc: $e7
  dec b                                           ; $73dd: $05
  ld b, [hl]                                      ; $73de: $46
  ld b, [hl]                                      ; $73df: $46
  dec d                                           ; $73e0: $15
  ld l, [hl]                                      ; $73e1: $6e
  ld [$0ee4], a                                   ; $73e2: $ea $e4 $0e
  ld [$e774], sp                                  ; $73e5: $08 $74 $e7
  rlca                                            ; $73e8: $07
  rlca                                            ; $73e9: $07
  ld d, l                                         ; $73ea: $55
  add hl, sp                                      ; $73eb: $39
  ld a, a                                         ; $73ec: $7f
  db $e4                                          ; $73ed: $e4
  dec b                                           ; $73ee: $05
  db $f4                                          ; $73ef: $f4
  ld [hl], e                                      ; $73f0: $73
  ld d, a                                         ; $73f1: $57
  nop                                             ; $73f2: $00
  nop                                             ; $73f3: $00
  dec d                                           ; $73f4: $15
  ld l, a                                         ; $73f5: $6f
  rst $20                                         ; $73f6: $e7
  rlca                                            ; $73f7: $07
  cp d                                            ; $73f8: $ba
  ld d, l                                         ; $73f9: $55
  rst $20                                         ; $73fa: $e7
  dec b                                           ; $73fb: $05
  cp $45                                          ; $73fc: $fe $45
  and d                                           ; $73fe: $a2
  db $10                                          ; $73ff: $10
  rst $20                                         ; $7400: $e7
  dec b                                           ; $7401: $05
  ld e, l                                         ; $7402: $5d
  ld b, [hl]                                      ; $7403: $46
  ld [$0057], a                                   ; $7404: $ea $57 $00
  nop                                             ; $7407: $00
  rst $20                                         ; $7408: $e7
  rlca                                            ; $7409: $07
  ld d, b                                         ; $740a: $50
  ld l, b                                         ; $740b: $68
  rst $20                                         ; $740c: $e7
  dec b                                           ; $740d: $05
  cp e                                            ; $740e: $bb
  ld b, h                                         ; $740f: $44
  rst $20                                         ; $7410: $e7
  rlca                                            ; $7411: $07
  xor b                                           ; $7412: $a8
  ld h, c                                         ; $7413: $61
  ld d, a                                         ; $7414: $57
  nop                                             ; $7415: $00
  nop                                             ; $7416: $00
  rst $20                                         ; $7417: $e7
  dec b                                           ; $7418: $05
  sub l                                           ; $7419: $95
  ld b, [hl]                                      ; $741a: $46
  rst $20                                         ; $741b: $e7
  dec b                                           ; $741c: $05
  cp $45                                          ; $741d: $fe $45
  ld [$05e7], a                                   ; $741f: $ea $e7 $05
  cp e                                            ; $7422: $bb
  ld b, h                                         ; $7423: $44
  rst $20                                         ; $7424: $e7
  dec b                                           ; $7425: $05
  ld b, [hl]                                      ; $7426: $46
  ld b, [hl]                                      ; $7427: $46
  dec d                                           ; $7428: $15
  ld [hl], c                                      ; $7429: $71
  ld [$07e7], a                                   ; $742a: $ea $e7 $07
  ld l, [hl]                                      ; $742d: $6e
  ld l, b                                         ; $742e: $68
  rst $20                                         ; $742f: $e7
  rlca                                            ; $7430: $07
  xor b                                           ; $7431: $a8
  ld h, c                                         ; $7432: $61
  ld d, a                                         ; $7433: $57
  nop                                             ; $7434: $00
  nop                                             ; $7435: $00

  db $e4, $01, $aa, $74, $e4, $02, $cd, $74, $e4, $03, $f8, $74, $f6, $01, $39, $7f
  db $f6, $02, $39, $7f, $f6, $03, $39, $7f, $ea, $e7, $07, $c0, $55, $e7, $07, $e6
  db $55, $27, $69, $74

  rst $20                                         ; $745a: $e7
  rlca                                            ; $745b: $07
  xor l                                           ; $745c: $ad
  ld l, b                                         ; $745d: $68
  rst $20                                         ; $745e: $e7
  dec b                                           ; $745f: $05
  cp $45                                          ; $7460: $fe $45
  rst $20                                         ; $7462: $e7
  dec b                                           ; $7463: $05
  ld b, [hl]                                      ; $7464: $46
  ld b, [hl]                                      ; $7465: $46
  dec d                                           ; $7466: $15
  ld [hl], b                                      ; $7467: $70
  db $ea                                          ; $7468: $ea

  db $e7, $07, $ba, $55, $e7, $07, $e6, $55, $27, $83, $74, $e7, $07, $ad, $68, $e7
  db $05, $fe, $45, $e7, $05, $46, $46, $15, $70, $ea, $e7, $07, $b4, $55, $e7, $07
  db $e6, $55, $27, $9d, $74, $e7, $07, $ad, $68, $e7, $05, $fe, $45, $e7, $05, $46
  db $46, $15, $70, $ea, $e7, $05, $bb, $44, $00, $02, $e7, $07, $a8, $61, $57, $00
  db $00, $bd, $58, $05, $e7, $05, $5d, $46, $84, $15, $00, $81, $30, $00, $00, $01
  db $81, $50, $00, $00, $01, $81, $70, $00, $00, $01, $e7, $05, $45, $47, $2a, $21
  db $75, $18, $b4, $74, $bd, $58, $05, $e7, $05, $5d, $46, $84, $26, $00, $81, $40
  db $00, $00, $01, $81, $61, $00, $00, $01, $84, $3e, $00, $81, $40, $00, $00, $01
  db $81, $61, $00, $00, $01, $e7, $05, $45, $47, $2a, $21, $75, $18, $d4, $74, $bd
  db $58, $05, $e7, $05, $5d, $46, $84, $55, $00, $81, $30, $00, $00, $01, $81, $50
  db $00, $84, $4d, $00, $00, $01, $81, $70, $00, $84, $55, $00, $00, $01, $e7, $05
  db $45, $47, $2a, $21, $75, $18, $02, $75, $57, $00, $00

  rst $20                                         ; $7524: $e7
  dec b                                           ; $7525: $05
  ld a, l                                         ; $7526: $7d
  ld b, [hl]                                      ; $7527: $46
  rst $20                                         ; $7528: $e7
  dec b                                           ; $7529: $05
  cp $45                                          ; $752a: $fe $45
  and d                                           ; $752c: $a2
  ld hl, sp-$16                                   ; $752d: $f8 $ea
  rst $20                                         ; $752f: $e7
  dec b                                           ; $7530: $05
  cp e                                            ; $7531: $bb
  ld b, h                                         ; $7532: $44
  rst $20                                         ; $7533: $e7
  dec b                                           ; $7534: $05
  ld b, [hl]                                      ; $7535: $46
  ld b, [hl]                                      ; $7536: $46
  dec d                                           ; $7537: $15
  ld [hl], d                                      ; $7538: $72
  ld [$07e7], a                                   ; $7539: $ea $e7 $07
  sub $68                                         ; $753c: $d6 $68
  rst $20                                         ; $753e: $e7
  rlca                                            ; $753f: $07
  xor b                                           ; $7540: $a8
  ld h, c                                         ; $7541: $61
  ld d, a                                         ; $7542: $57
  nop                                             ; $7543: $00
  nop                                             ; $7544: $00
  ld [$05e7], a                                   ; $7545: $ea $e7 $05
  cp e                                            ; $7548: $bb
  ld b, h                                         ; $7549: $44
  rst $20                                         ; $754a: $e7
  rlca                                            ; $754b: $07
  cp d                                            ; $754c: $ba
  ld d, l                                         ; $754d: $55
  rst $20                                         ; $754e: $e7
  rlca                                            ; $754f: $07
  and $55                                         ; $7550: $e6 $55
  daa                                             ; $7552: $27
  ld h, [hl]                                      ; $7553: $66
  ld [hl], l                                      ; $7554: $75
  rst $20                                         ; $7555: $e7
  rlca                                            ; $7556: $07
  pop af                                          ; $7557: $f1
  ld l, b                                         ; $7558: $68
  rst $20                                         ; $7559: $e7
  dec b                                           ; $755a: $05
  cp $45                                          ; $755b: $fe $45
  and d                                           ; $755d: $a2
  db $10                                          ; $755e: $10
  rst $20                                         ; $755f: $e7
  dec b                                           ; $7560: $05
  ld b, [hl]                                      ; $7561: $46
  ld b, [hl]                                      ; $7562: $46
  dec d                                           ; $7563: $15
  ld [hl], e                                      ; $7564: $73
  ld [$07e7], a                                   ; $7565: $ea $e7 $07
  or h                                            ; $7568: $b4
  ld d, l                                         ; $7569: $55
  rst $20                                         ; $756a: $e7
  rlca                                            ; $756b: $07
  and $55                                         ; $756c: $e6 $55
  daa                                             ; $756e: $27
  add d                                           ; $756f: $82
  ld [hl], l                                      ; $7570: $75
  rst $20                                         ; $7571: $e7
  rlca                                            ; $7572: $07
  pop af                                          ; $7573: $f1
  ld l, b                                         ; $7574: $68
  rst $20                                         ; $7575: $e7
  dec b                                           ; $7576: $05
  cp $45                                          ; $7577: $fe $45
  and d                                           ; $7579: $a2
  db $10                                          ; $757a: $10
  rst $20                                         ; $757b: $e7
  dec b                                           ; $757c: $05
  ld b, [hl]                                      ; $757d: $46
  ld b, [hl]                                      ; $757e: $46
  dec d                                           ; $757f: $15
  ld [hl], e                                      ; $7580: $73
  ld [$07e7], a                                   ; $7581: $ea $e7 $07
  ret nz                                          ; $7584: $c0

  ld d, l                                         ; $7585: $55
  rst $20                                         ; $7586: $e7
  rlca                                            ; $7587: $07
  and $55                                         ; $7588: $e6 $55
  daa                                             ; $758a: $27
  sbc [hl]                                        ; $758b: $9e
  ld [hl], l                                      ; $758c: $75
  rst $20                                         ; $758d: $e7
  rlca                                            ; $758e: $07
  pop af                                          ; $758f: $f1
  ld l, b                                         ; $7590: $68
  rst $20                                         ; $7591: $e7
  dec b                                           ; $7592: $05
  cp $45                                          ; $7593: $fe $45
  and d                                           ; $7595: $a2
  db $10                                          ; $7596: $10
  rst $20                                         ; $7597: $e7
  dec b                                           ; $7598: $05
  ld b, [hl]                                      ; $7599: $46
  ld b, [hl]                                      ; $759a: $46
  dec d                                           ; $759b: $15
  ld [hl], e                                      ; $759c: $73
  ld [$07e7], a                                   ; $759d: $ea $e7 $07
  xor b                                           ; $75a0: $a8
  ld h, c                                         ; $75a1: $61
  ld d, a                                         ; $75a2: $57
  nop                                             ; $75a3: $00
  nop                                             ; $75a4: $00
  rst $20                                         ; $75a5: $e7
  rlca                                            ; $75a6: $07
  ld b, a                                         ; $75a7: $47
  ld l, e                                         ; $75a8: $6b
  call z, $e70e                                   ; $75a9: $cc $0e $e7
  rlca                                            ; $75ac: $07
  ld d, h                                         ; $75ad: $54
  ld l, e                                         ; $75ae: $6b
  rst $20                                         ; $75af: $e7
  dec b                                           ; $75b0: $05
  ld a, l                                         ; $75b1: $7d
  ld b, [hl]                                      ; $75b2: $46
  rst $20                                         ; $75b3: $e7
  dec b                                           ; $75b4: $05
  cp $45                                          ; $75b5: $fe $45
  and d                                           ; $75b7: $a2
  db $f4                                          ; $75b8: $f4
  nop                                             ; $75b9: $00
  ld a, [bc]                                      ; $75ba: $0a
  rst $20                                         ; $75bb: $e7
  dec b                                           ; $75bc: $05
  ld b, [hl]                                      ; $75bd: $46
  ld b, [hl]                                      ; $75be: $46
  nop                                             ; $75bf: $00
  ld e, a                                         ; $75c0: $5f
  rst $20                                         ; $75c1: $e7
  dec b                                           ; $75c2: $05
  cp e                                            ; $75c3: $bb
  ld b, h                                         ; $75c4: $44
  rst $20                                         ; $75c5: $e7
  rlca                                            ; $75c6: $07
  ld c, [hl]                                      ; $75c7: $4e
  ld l, e                                         ; $75c8: $6b
  rst $20                                         ; $75c9: $e7
  rlca                                            ; $75ca: $07
  nop                                             ; $75cb: $00
  ld h, h                                         ; $75cc: $64
  rst $20                                         ; $75cd: $e7
  rlca                                            ; $75ce: $07
  xor b                                           ; $75cf: $a8
  ld h, c                                         ; $75d0: $61
  ld d, a                                         ; $75d1: $57
  nop                                             ; $75d2: $00
  nop                                             ; $75d3: $00
  rst $20                                         ; $75d4: $e7
  rlca                                            ; $75d5: $07
  cp d                                            ; $75d6: $ba
  ld d, l                                         ; $75d7: $55
  rst $20                                         ; $75d8: $e7
  dec b                                           ; $75d9: $05
  cp $45                                          ; $75da: $fe $45
  ld [$05e7], a                                   ; $75dc: $ea $e7 $05
  cp e                                            ; $75df: $bb
  ld b, h                                         ; $75e0: $44
  rst $20                                         ; $75e1: $e7
  dec b                                           ; $75e2: $05
  ld b, [hl]                                      ; $75e3: $46
  ld b, [hl]                                      ; $75e4: $46
  ld [$8515], a                                   ; $75e5: $ea $15 $85
  nop                                             ; $75e8: $00
  ld a, [bc]                                      ; $75e9: $0a
  rst $20                                         ; $75ea: $e7
  rlca                                            ; $75eb: $07
  jr nc, jr_007_7657                              ; $75ec: $30 $69

  rst $20                                         ; $75ee: $e7
  rlca                                            ; $75ef: $07
  xor b                                           ; $75f0: $a8
  ld h, c                                         ; $75f1: $61
  ld d, a                                         ; $75f2: $57
  nop                                             ; $75f3: $00
  nop                                             ; $75f4: $00
  rst $20                                         ; $75f5: $e7
  dec b                                           ; $75f6: $05
  sub l                                           ; $75f7: $95
  ld b, [hl]                                      ; $75f8: $46
  rst $20                                         ; $75f9: $e7
  dec b                                           ; $75fa: $05
  cp $45                                          ; $75fb: $fe $45
  and d                                           ; $75fd: $a2
  ld [$e7ea], sp                                  ; $75fe: $08 $ea $e7
  dec b                                           ; $7601: $05
  cp e                                            ; $7602: $bb
  ld b, h                                         ; $7603: $44
  rst $20                                         ; $7604: $e7
  dec b                                           ; $7605: $05
  ld b, [hl]                                      ; $7606: $46
  ld b, [hl]                                      ; $7607: $46
  ld [$05e7], a                                   ; $7608: $ea $e7 $05
  ld a, a                                         ; $760b: $7f
  ld a, [hl]                                      ; $760c: $7e
  rst $20                                         ; $760d: $e7
  rlca                                            ; $760e: $07
  xor b                                           ; $760f: $a8
  ld h, c                                         ; $7610: $61
  ld d, a                                         ; $7611: $57
  nop                                             ; $7612: $00
  nop                                             ; $7613: $00
  db $e4                                          ; $7614: $e4
  ld bc, $7655                                    ; $7615: $01 $55 $76
  db $e4                                          ; $7618: $e4
  ld [bc], a                                      ; $7619: $02
  ld h, h                                         ; $761a: $64
  halt                                            ; $761b: $76
  db $e4                                          ; $761c: $e4
  inc bc                                          ; $761d: $03
  ld [hl], e                                      ; $761e: $73
  halt                                            ; $761f: $76
  ld h, b                                         ; $7620: $60
  or $01                                          ; $7621: $f6 $01
  add hl, sp                                      ; $7623: $39
  ld a, a                                         ; $7624: $7f
  or $02                                          ; $7625: $f6 $02
  add hl, sp                                      ; $7627: $39
  ld a, a                                         ; $7628: $7f
  or $03                                          ; $7629: $f6 $03
  add hl, sp                                      ; $762b: $39
  ld a, a                                         ; $762c: $7f
  dec d                                           ; $762d: $15
  halt                                            ; $762e: $76
  nop                                             ; $762f: $00
  ld e, $e7                                       ; $7630: $1e $e7
  rlca                                            ; $7632: $07
  cp d                                            ; $7633: $ba
  ld d, l                                         ; $7634: $55
  rst $20                                         ; $7635: $e7
  dec b                                           ; $7636: $05
  cp $45                                          ; $7637: $fe $45
  and d                                           ; $7639: $a2
  inc b                                           ; $763a: $04
  rst $20                                         ; $763b: $e7
  rlca                                            ; $763c: $07
  ld c, e                                         ; $763d: $4b
  ld l, c                                         ; $763e: $69
  ld h, e                                         ; $763f: $63
  dec d                                           ; $7640: $15
  ld [hl], a                                      ; $7641: $77
  ld [$0060], a                                   ; $7642: $ea $60 $00
  ld e, $e7                                       ; $7645: $1e $e7
  dec b                                           ; $7647: $05
  cp e                                            ; $7648: $bb
  ld b, h                                         ; $7649: $44
  rst $20                                         ; $764a: $e7
  rlca                                            ; $764b: $07
  ld d, [hl]                                      ; $764c: $56
  ld l, c                                         ; $764d: $69
  rst $20                                         ; $764e: $e7
  rlca                                            ; $764f: $07
  xor b                                           ; $7650: $a8
  ld h, c                                         ; $7651: $61
  ld d, a                                         ; $7652: $57
  nop                                             ; $7653: $00
  nop                                             ; $7654: $00
  add c                                           ; $7655: $81
  ld b, e                                         ; $7656: $43

jr_007_7657:
  nop                                             ; $7657: $00
  add h                                           ; $7658: $84
  ld d, l                                         ; $7659: $55
  nop                                             ; $765a: $00
  rst $20                                         ; $765b: $e7
  dec b                                           ; $765c: $05
  ld b, [hl]                                      ; $765d: $46
  ld b, [hl]                                      ; $765e: $46
  nop                                             ; $765f: $00
  add b                                           ; $7660: $80
  ld d, a                                         ; $7661: $57
  nop                                             ; $7662: $00
  nop                                             ; $7663: $00
  add c                                           ; $7664: $81
  ld l, d                                         ; $7665: $6a
  nop                                             ; $7666: $00
  add h                                           ; $7667: $84
  add hl, hl                                      ; $7668: $29
  nop                                             ; $7669: $00
  rst $20                                         ; $766a: $e7
  dec b                                           ; $766b: $05
  ld b, [hl]                                      ; $766c: $46
  ld b, [hl]                                      ; $766d: $46
  nop                                             ; $766e: $00
  add b                                           ; $766f: $80
  ld d, a                                         ; $7670: $57
  nop                                             ; $7671: $00
  nop                                             ; $7672: $00
  add c                                           ; $7673: $81
  ld c, [hl]                                      ; $7674: $4e
  nop                                             ; $7675: $00
  add h                                           ; $7676: $84
  jr nc, jr_007_7679                              ; $7677: $30 $00

jr_007_7679:
  rst $20                                         ; $7679: $e7
  dec b                                           ; $767a: $05
  ld e, l                                         ; $767b: $5d
  ld b, [hl]                                      ; $767c: $46
  nop                                             ; $767d: $00
  add b                                           ; $767e: $80
  ld d, a                                         ; $767f: $57
  nop                                             ; $7680: $00
  nop                                             ; $7681: $00
  db $e4                                          ; $7682: $e4
  nop                                             ; $7683: $00
  jp z, $e476                                     ; $7684: $ca $76 $e4

  inc b                                           ; $7687: $04
  db $ec                                          ; $7688: $ec
  halt                                            ; $7689: $76
  db $e4                                          ; $768a: $e4
  ld [$770d], sp                                  ; $768b: $08 $0d $77
  db $e4                                          ; $768e: $e4
  inc c                                           ; $768f: $0c
  bit 6, [hl]                                     ; $7690: $cb $76
  db $e4                                          ; $7692: $e4
  db $10                                          ; $7693: $10
  db $ec                                          ; $7694: $ec
  halt                                            ; $7695: $76
  db $e4                                          ; $7696: $e4
  inc d                                           ; $7697: $14
  dec c                                           ; $7698: $0d
  ld [hl], a                                      ; $7699: $77
  rst $20                                         ; $769a: $e7
  dec b                                           ; $769b: $05
  ld e, l                                         ; $769c: $5d
  ld b, [hl]                                      ; $769d: $46
  rst $20                                         ; $769e: $e7
  rlca                                            ; $769f: $07
  sub d                                           ; $76a0: $92
  ld h, a                                         ; $76a1: $67
  add h                                           ; $76a2: $84
  ld bc, $0300                                    ; $76a3: $01 $00 $03
  nop                                             ; $76a6: $00
  ei                                              ; $76a7: $fb
  ld b, $00                                       ; $76a8: $06 $00
  dec b                                           ; $76aa: $05
  nop                                             ; $76ab: $00
  dec b                                           ; $76ac: $05
  rst $20                                         ; $76ad: $e7
  rlca                                            ; $76ae: $07
  rlca                                            ; $76af: $07
  ld d, l                                         ; $76b0: $55
  add hl, sp                                      ; $76b1: $39
  ld a, a                                         ; $76b2: $7f
  rst $20                                         ; $76b3: $e7
  rlca                                            ; $76b4: $07
  xor a                                           ; $76b5: $af
  ld l, c                                         ; $76b6: $69
  ld [$0415], a                                   ; $76b7: $ea $15 $04
  rst $20                                         ; $76ba: $e7
  rlca                                            ; $76bb: $07
  and h                                           ; $76bc: $a4
  ld l, c                                         ; $76bd: $69
  ld [$0003], a                                   ; $76be: $ea $03 $00
  db $fc                                          ; $76c1: $fc
  ld b, $00                                       ; $76c2: $06 $00
  db $fc                                          ; $76c4: $fc
  nop                                             ; $76c5: $00
  ld a, [bc]                                      ; $76c6: $0a
  ld d, a                                         ; $76c7: $57
  nop                                             ; $76c8: $00
  nop                                             ; $76c9: $00
  ld [$05e7], a                                   ; $76ca: $ea $e7 $05
  ld b, [hl]                                      ; $76cd: $46
  ld b, [hl]                                      ; $76ce: $46
  rst $20                                         ; $76cf: $e7
  rlca                                            ; $76d0: $07
  call z, $2455                                   ; $76d1: $cc $55 $24
  ld a, h                                         ; $76d4: $7c
  ld d, h                                         ; $76d5: $54
  add h                                           ; $76d6: $84
  ld bc, $2400                                    ; $76d7: $01 $00 $24
  jp hl                                           ; $76da: $e9


  ld e, b                                         ; $76db: $58
  ld [$0003], a                                   ; $76dc: $ea $03 $00
  nop                                             ; $76df: $00
  ld b, $00                                       ; $76e0: $06 $00
  nop                                             ; $76e2: $00
  rst $20                                         ; $76e3: $e7
  rlca                                            ; $76e4: $07
  rlca                                            ; $76e5: $07
  ld d, l                                         ; $76e6: $55
  add hl, sp                                      ; $76e7: $39
  ld a, a                                         ; $76e8: $7f
  jr @+$31                                        ; $76e9: $18 $2f

  ld [hl], a                                      ; $76eb: $77
  rst $20                                         ; $76ec: $e7
  dec b                                           ; $76ed: $05
  ld b, [hl]                                      ; $76ee: $46
  ld b, [hl]                                      ; $76ef: $46
  rst $20                                         ; $76f0: $e7
  rlca                                            ; $76f1: $07
  add $55                                         ; $76f2: $c6 $55
  inc h                                           ; $76f4: $24
  ld a, h                                         ; $76f5: $7c
  ld d, h                                         ; $76f6: $54
  add h                                           ; $76f7: $84
  ld bc, $2400                                    ; $76f8: $01 $00 $24
  jp hl                                           ; $76fb: $e9


  ld e, b                                         ; $76fc: $58
  ld [$0003], a                                   ; $76fd: $ea $03 $00
  nop                                             ; $7700: $00
  ld b, $00                                       ; $7701: $06 $00
  nop                                             ; $7703: $00
  rst $20                                         ; $7704: $e7
  rlca                                            ; $7705: $07
  rlca                                            ; $7706: $07
  ld d, l                                         ; $7707: $55
  add hl, sp                                      ; $7708: $39
  ld a, a                                         ; $7709: $7f
  jr jr_007_773b                                  ; $770a: $18 $2f

  ld [hl], a                                      ; $770c: $77
  rst $20                                         ; $770d: $e7
  dec b                                           ; $770e: $05
  ld b, [hl]                                      ; $770f: $46
  ld b, [hl]                                      ; $7710: $46
  rst $20                                         ; $7711: $e7
  rlca                                            ; $7712: $07
  jp nc, $2455                                    ; $7713: $d2 $55 $24

  ld a, h                                         ; $7716: $7c
  ld d, h                                         ; $7717: $54
  add h                                           ; $7718: $84
  ld bc, $2400                                    ; $7719: $01 $00 $24
  jp hl                                           ; $771c: $e9


  ld e, b                                         ; $771d: $58
  ld [$0003], a                                   ; $771e: $ea $03 $00
  nop                                             ; $7721: $00
  ld b, $00                                       ; $7722: $06 $00
  nop                                             ; $7724: $00
  db $e4                                          ; $7725: $e4
  inc d                                           ; $7726: $14
  cpl                                             ; $7727: $2f
  ld [hl], a                                      ; $7728: $77
  rst $20                                         ; $7729: $e7
  rlca                                            ; $772a: $07
  rlca                                            ; $772b: $07
  ld d, l                                         ; $772c: $55
  add hl, sp                                      ; $772d: $39
  ld a, a                                         ; $772e: $7f
  dec d                                           ; $772f: $15
  inc b                                           ; $7730: $04
  rst $20                                         ; $7731: $e7
  rlca                                            ; $7732: $07
  sbc c                                           ; $7733: $99
  ld l, c                                         ; $7734: $69
  ld [$0003], a                                   ; $7735: $ea $03 $00
  ei                                              ; $7738: $fb
  ld b, $00                                       ; $7739: $06 $00

jr_007_773b:
  ei                                              ; $773b: $fb
  nop                                             ; $773c: $00
  inc d                                           ; $773d: $14
  db $e4                                          ; $773e: $e4
  inc d                                           ; $773f: $14
  ld b, l                                         ; $7740: $45
  ld [hl], a                                      ; $7741: $77
  ld d, a                                         ; $7742: $57
  nop                                             ; $7743: $00
  nop                                             ; $7744: $00
  rst $20                                         ; $7745: $e7
  dec b                                           ; $7746: $05
  cp e                                            ; $7747: $bb
  ld b, h                                         ; $7748: $44
  rst $20                                         ; $7749: $e7
  rlca                                            ; $774a: $07
  xor b                                           ; $774b: $a8
  ld h, c                                         ; $774c: $61
  rst $20                                         ; $774d: $e7
  rlca                                            ; $774e: $07
  add $55                                         ; $774f: $c6 $55
  rst $20                                         ; $7751: $e7
  rlca                                            ; $7752: $07
  and $55                                         ; $7753: $e6 $55
  daa                                             ; $7755: $27
  ld e, h                                         ; $7756: $5c
  ld [hl], a                                      ; $7757: $77
  rst $20                                         ; $7758: $e7
  rlca                                            ; $7759: $07
  ld [hl], e                                      ; $775a: $73
  ld l, c                                         ; $775b: $69
  rst $20                                         ; $775c: $e7
  rlca                                            ; $775d: $07
  call z, $e755                                   ; $775e: $cc $55 $e7
  rlca                                            ; $7761: $07
  and $55                                         ; $7762: $e6 $55
  daa                                             ; $7764: $27
  ld l, e                                         ; $7765: $6b
  ld [hl], a                                      ; $7766: $77
  rst $20                                         ; $7767: $e7
  rlca                                            ; $7768: $07
  ld [hl], e                                      ; $7769: $73
  ld l, c                                         ; $776a: $69
  rst $20                                         ; $776b: $e7
  rlca                                            ; $776c: $07
  jp nc, $e755                                    ; $776d: $d2 $55 $e7

  rlca                                            ; $7770: $07
  and $55                                         ; $7771: $e6 $55
  daa                                             ; $7773: $27
  ld a, d                                         ; $7774: $7a
  ld [hl], a                                      ; $7775: $77
  rst $20                                         ; $7776: $e7
  rlca                                            ; $7777: $07
  ld [hl], e                                      ; $7778: $73
  ld l, c                                         ; $7779: $69
  ld d, a                                         ; $777a: $57
  nop                                             ; $777b: $00
  nop                                             ; $777c: $00
  rst $20                                         ; $777d: $e7
  rlca                                            ; $777e: $07
  cp d                                            ; $777f: $ba
  ld d, l                                         ; $7780: $55
  rst $20                                         ; $7781: $e7
  dec b                                           ; $7782: $05
  cp $45                                          ; $7783: $fe $45
  and d                                           ; $7785: $a2
  ld [de], a                                      ; $7786: $12
  ld [$05e7], a                                   ; $7787: $ea $e7 $05
  cp e                                            ; $778a: $bb
  ld b, h                                         ; $778b: $44
  rst $20                                         ; $778c: $e7
  dec b                                           ; $778d: $05
  ld b, [hl]                                      ; $778e: $46
  ld b, [hl]                                      ; $778f: $46
  dec d                                           ; $7790: $15
  ld a, e                                         ; $7791: $7b
  ld [$07e7], a                                   ; $7792: $ea $e7 $07
  cp c                                            ; $7795: $b9
  ld l, c                                         ; $7796: $69
  rst $20                                         ; $7797: $e7
  rlca                                            ; $7798: $07
  xor b                                           ; $7799: $a8
  ld h, c                                         ; $779a: $61
  ld d, a                                         ; $779b: $57
  nop                                             ; $779c: $00
  nop                                             ; $779d: $00
  db $e4                                          ; $779e: $e4
  ld bc, $77a7                                    ; $779f: $01 $a7 $77
  ld [$05e7], a                                   ; $77a2: $ea $e7 $05
  cp e                                            ; $77a5: $bb
  ld b, h                                         ; $77a6: $44
  dec d                                           ; $77a7: $15
  ld a, d                                         ; $77a8: $7a
  rst $20                                         ; $77a9: $e7
  rlca                                            ; $77aa: $07
  cp d                                            ; $77ab: $ba
  ld d, l                                         ; $77ac: $55
  rst $20                                         ; $77ad: $e7
  dec b                                           ; $77ae: $05
  cp $45                                          ; $77af: $fe $45
  sbc a                                           ; $77b1: $9f
  ld bc, $0ea2                                    ; $77b2: $01 $a2 $0e
  rst $20                                         ; $77b5: $e7
  dec b                                           ; $77b6: $05
  ld b, [hl]                                      ; $77b7: $46
  ld b, [hl]                                      ; $77b8: $46
  nop                                             ; $77b9: $00
  dec b                                           ; $77ba: $05
  ld b, $9c                                       ; $77bb: $06 $9c
  rst $38                                         ; $77bd: $ff
  ld [$01e4], a                                   ; $77be: $ea $e4 $01
  bit 6, a                                        ; $77c1: $cb $77
  or $01                                          ; $77c3: $f6 $01
  add hl, sp                                      ; $77c5: $39
  ld a, a                                         ; $77c6: $7f
  ld [$0057], a                                   ; $77c7: $ea $57 $00
  nop                                             ; $77ca: $00
  ld [$07e7], a                                   ; $77cb: $ea $e7 $07
  dec b                                           ; $77ce: $05
  ld l, d                                         ; $77cf: $6a
  rst $20                                         ; $77d0: $e7
  rlca                                            ; $77d1: $07
  xor b                                           ; $77d2: $a8
  ld h, c                                         ; $77d3: $61
  ld d, a                                         ; $77d4: $57
  nop                                             ; $77d5: $00
  nop                                             ; $77d6: $00
  rst $20                                         ; $77d7: $e7
  rlca                                            ; $77d8: $07
  ld l, $6a                                       ; $77d9: $2e $6a
  daa                                             ; $77db: $27
  ei                                              ; $77dc: $fb
  ld [hl], a                                      ; $77dd: $77
  rst $20                                         ; $77de: $e7
  dec b                                           ; $77df: $05
  cp $45                                          ; $77e0: $fe $45
  and d                                           ; $77e2: $a2
  db $10                                          ; $77e3: $10
  ld [$05e7], a                                   ; $77e4: $ea $e7 $05
  cp e                                            ; $77e7: $bb
  ld b, h                                         ; $77e8: $44
  rst $20                                         ; $77e9: $e7
  dec b                                           ; $77ea: $05
  ld b, [hl]                                      ; $77eb: $46
  ld b, [hl]                                      ; $77ec: $46
  dec d                                           ; $77ed: $15
  ld a, b                                         ; $77ee: $78
  ld [$05e7], a                                   ; $77ef: $ea $e7 $05
  bit 7, h                                        ; $77f2: $cb $7c
  rst $20                                         ; $77f4: $e7
  rlca                                            ; $77f5: $07
  xor b                                           ; $77f6: $a8
  ld h, c                                         ; $77f7: $61
  ld d, a                                         ; $77f8: $57
  nop                                             ; $77f9: $00
  nop                                             ; $77fa: $00
  rst $20                                         ; $77fb: $e7
  dec b                                           ; $77fc: $05
  cp e                                            ; $77fd: $bb
  ld b, h                                         ; $77fe: $44
  rst $20                                         ; $77ff: $e7
  rlca                                            ; $7800: $07
  xor b                                           ; $7801: $a8
  ld h, c                                         ; $7802: $61
  ld d, a                                         ; $7803: $57
  nop                                             ; $7804: $00
  nop                                             ; $7805: $00
  rst $20                                         ; $7806: $e7
  rlca                                            ; $7807: $07
  cp d                                            ; $7808: $ba
  ld d, l                                         ; $7809: $55
  rst $20                                         ; $780a: $e7
  dec b                                           ; $780b: $05
  cp $45                                          ; $780c: $fe $45
  and d                                           ; $780e: $a2
  db $10                                          ; $780f: $10
  ld [$05e7], a                                   ; $7810: $ea $e7 $05
  cp e                                            ; $7813: $bb
  ld b, h                                         ; $7814: $44
  rst $20                                         ; $7815: $e7
  dec b                                           ; $7816: $05
  ld b, [hl]                                      ; $7817: $46
  ld b, [hl]                                      ; $7818: $46
  dec d                                           ; $7819: $15
  ld a, h                                         ; $781a: $7c
  ld [$05e7], a                                   ; $781b: $ea $e7 $05
  dec e                                           ; $781e: $1d
  ld a, l                                         ; $781f: $7d
  rst $20                                         ; $7820: $e7
  rlca                                            ; $7821: $07
  xor b                                           ; $7822: $a8
  ld h, c                                         ; $7823: $61
  ld d, a                                         ; $7824: $57
  nop                                             ; $7825: $00
  nop                                             ; $7826: $00
  db $e4                                          ; $7827: $e4
  ld bc, $7840                                    ; $7828: $01 $40 $78
  db $e4                                          ; $782b: $e4
  ld [bc], a                                      ; $782c: $02
  ld d, h                                         ; $782d: $54
  ld a, b                                         ; $782e: $78
  ld h, b                                         ; $782f: $60
  ld [$05e7], a                                   ; $7830: $ea $e7 $05
  cp e                                            ; $7833: $bb
  ld b, h                                         ; $7834: $44
  or $01                                          ; $7835: $f6 $01
  add hl, sp                                      ; $7837: $39
  ld a, a                                         ; $7838: $7f
  or $02                                          ; $7839: $f6 $02
  add hl, sp                                      ; $783b: $39
  ld a, a                                         ; $783c: $7f
  ld d, a                                         ; $783d: $57
  nop                                             ; $783e: $00
  nop                                             ; $783f: $00
  rst $20                                         ; $7840: $e7
  rlca                                            ; $7841: $07
  cp d                                            ; $7842: $ba
  ld d, l                                         ; $7843: $55
  rst $20                                         ; $7844: $e7
  dec b                                           ; $7845: $05
  cp $45                                          ; $7846: $fe $45
  and d                                           ; $7848: $a2
  ld [de], a                                      ; $7849: $12
  rst $20                                         ; $784a: $e7
  dec b                                           ; $784b: $05
  ld b, [hl]                                      ; $784c: $46
  ld b, [hl]                                      ; $784d: $46
  dec d                                           ; $784e: $15
  ld a, c                                         ; $784f: $79
  ld [$0057], a                                   ; $7850: $ea $57 $00
  nop                                             ; $7853: $00
  ld h, [hl]                                      ; $7854: $66
  rst $20                                         ; $7855: $e7
  dec b                                           ; $7856: $05
  cp $45                                          ; $7857: $fe $45
  and d                                           ; $7859: $a2
  ld [de], a                                      ; $785a: $12
  rst $20                                         ; $785b: $e7
  dec b                                           ; $785c: $05
  ld b, [hl]                                      ; $785d: $46
  ld b, [hl]                                      ; $785e: $46
  dec d                                           ; $785f: $15
  ld a, c                                         ; $7860: $79
  ld [$1ee7], a                                   ; $7861: $ea $e7 $1e
  ld c, b                                         ; $7864: $48
  ld e, a                                         ; $7865: $5f
  rst $20                                         ; $7866: $e7
  rlca                                            ; $7867: $07
  xor b                                           ; $7868: $a8
  ld h, c                                         ; $7869: $61
  ld d, a                                         ; $786a: $57
  nop                                             ; $786b: $00
  nop                                             ; $786c: $00
  db $e4                                          ; $786d: $e4
  ld bc, $7899                                    ; $786e: $01 $99 $78
  rst $20                                         ; $7871: $e7
  rlca                                            ; $7872: $07
  cp d                                            ; $7873: $ba
  ld d, l                                         ; $7874: $55
  rst $20                                         ; $7875: $e7
  dec b                                           ; $7876: $05
  cp $45                                          ; $7877: $fe $45
  and d                                           ; $7879: $a2
  xor $ea                                         ; $787a: $ee $ea
  rst $20                                         ; $787c: $e7
  dec b                                           ; $787d: $05
  cp e                                            ; $787e: $bb
  ld b, h                                         ; $787f: $44
  rst $20                                         ; $7880: $e7
  dec b                                           ; $7881: $05
  ld b, [hl]                                      ; $7882: $46
  ld b, [hl]                                      ; $7883: $46
  dec d                                           ; $7884: $15
  sbc c                                           ; $7885: $99
  nop                                             ; $7886: $00
  inc h                                           ; $7887: $24
  or $01                                          ; $7888: $f6 $01
  add hl, sp                                      ; $788a: $39
  ld a, a                                         ; $788b: $7f
  nop                                             ; $788c: $00
  add b                                           ; $788d: $80
  rst $20                                         ; $788e: $e7
  ld e, $74                                       ; $788f: $1e $74
  ld e, a                                         ; $7891: $5f
  rst $20                                         ; $7892: $e7
  rlca                                            ; $7893: $07
  xor b                                           ; $7894: $a8
  ld h, c                                         ; $7895: $61
  ld d, a                                         ; $7896: $57
  nop                                             ; $7897: $00
  nop                                             ; $7898: $00
  rst $20                                         ; $7899: $e7
  dec b                                           ; $789a: $05
  cp $45                                          ; $789b: $fe $45
  sbc a                                           ; $789d: $9f
  inc c                                           ; $789e: $0c
  and d                                           ; $789f: $a2
  db $10                                          ; $78a0: $10
  rst $20                                         ; $78a1: $e7
  dec b                                           ; $78a2: $05
  ld e, l                                         ; $78a3: $5d
  ld b, [hl]                                      ; $78a4: $46
  nop                                             ; $78a5: $00
  ld a, [hl+]                                     ; $78a6: $2a
  rst $20                                         ; $78a7: $e7
  dec b                                           ; $78a8: $05
  cp $45                                          ; $78a9: $fe $45
  and d                                           ; $78ab: $a2
  inc b                                           ; $78ac: $04
  nop                                             ; $78ad: $00
  ld a, [hl+]                                     ; $78ae: $2a
  rst $20                                         ; $78af: $e7
  dec b                                           ; $78b0: $05
  cp $45                                          ; $78b1: $fe $45
  sbc a                                           ; $78b3: $9f
  db $f4                                          ; $78b4: $f4
  and d                                           ; $78b5: $a2
  ld hl, sp+$00                                   ; $78b6: $f8 $00
  ld a, [hl+]                                     ; $78b8: $2a
  ld d, a                                         ; $78b9: $57
  nop                                             ; $78ba: $00
  nop                                             ; $78bb: $00
  db $e4                                          ; $78bc: $e4
  ld bc, $792d                                    ; $78bd: $01 $2d $79
  ld h, b                                         ; $78c0: $60
  db $e4                                          ; $78c1: $e4
  ld [bc], a                                      ; $78c2: $02
  jp z, $e478                                     ; $78c3: $ca $78 $e4

  inc bc                                          ; $78c6: $03
  jp z, $ea78                                     ; $78c7: $ca $78 $ea

  inc h                                           ; $78ca: $24
  add $55                                         ; $78cb: $c6 $55
  inc h                                           ; $78cd: $24
  and $55                                         ; $78ce: $e6 $55
  daa                                             ; $78d0: $27
  sub $78                                         ; $78d1: $d6 $78
  inc c                                           ; $78d3: $0c
  rla                                             ; $78d4: $17
  ld a, c                                         ; $78d5: $79
  inc h                                           ; $78d6: $24
  call z, $2455                                   ; $78d7: $cc $55 $24
  and $55                                         ; $78da: $e6 $55
  daa                                             ; $78dc: $27
  ldh [c], a                                      ; $78dd: $e2
  ld a, b                                         ; $78de: $78
  inc c                                           ; $78df: $0c
  rla                                             ; $78e0: $17
  ld a, c                                         ; $78e1: $79
  inc h                                           ; $78e2: $24
  jp nc, $2455                                    ; $78e3: $d2 $55 $24

  and $55                                         ; $78e6: $e6 $55
  daa                                             ; $78e8: $27
  xor $78                                         ; $78e9: $ee $78
  inc c                                           ; $78eb: $0c
  rla                                             ; $78ec: $17
  ld a, c                                         ; $78ed: $79
  nop                                             ; $78ee: $00
  ld a, [bc]                                      ; $78ef: $0a
  db $e4                                          ; $78f0: $e4
  ld [bc], a                                      ; $78f1: $02
  rst $38                                         ; $78f2: $ff
  ld a, b                                         ; $78f3: $78
  db $e4                                          ; $78f4: $e4
  inc bc                                          ; $78f5: $03
  ld b, $79                                       ; $78f6: $06 $79
  or $02                                          ; $78f8: $f6 $02
  add hl, sp                                      ; $78fa: $39
  ld a, a                                         ; $78fb: $7f
  ld d, a                                         ; $78fc: $57
  nop                                             ; $78fd: $00
  nop                                             ; $78fe: $00
  or $03                                          ; $78ff: $f6 $03
  add hl, sp                                      ; $7901: $39
  ld a, a                                         ; $7902: $7f
  ld d, a                                         ; $7903: $57
  nop                                             ; $7904: $00
  nop                                             ; $7905: $00
  nop                                             ; $7906: $00
  inc d                                           ; $7907: $14
  rst $20                                         ; $7908: $e7
  dec b                                           ; $7909: $05
  ld c, c                                         ; $790a: $49
  ld a, l                                         ; $790b: $7d
  rst $20                                         ; $790c: $e7
  dec b                                           ; $790d: $05
  cp e                                            ; $790e: $bb
  ld b, h                                         ; $790f: $44
  rst $20                                         ; $7910: $e7
  rlca                                            ; $7911: $07
  xor b                                           ; $7912: $a8
  ld h, c                                         ; $7913: $61
  ld d, a                                         ; $7914: $57
  nop                                             ; $7915: $00
  nop                                             ; $7916: $00
  rst $20                                         ; $7917: $e7
  rlca                                            ; $7918: $07
  ld bc, $f66e                                    ; $7919: $01 $6e $f6
  ld bc, $c8f9                                    ; $791c: $01 $f9 $c8
  nop                                             ; $791f: $00
  add hl, sp                                      ; $7920: $39
  ld a, a                                         ; $7921: $7f
  ld sp, hl                                       ; $7922: $f9
  jr c, @+$01                                     ; $7923: $38 $ff

  or $01                                          ; $7925: $f6 $01
  add hl, sp                                      ; $7927: $39
  ld a, a                                         ; $7928: $7f
  ld sp, hl                                       ; $7929: $f9
  nop                                             ; $792a: $00
  nop                                             ; $792b: $00
  rrca                                            ; $792c: $0f
  dec de                                          ; $792d: $1b
  ld c, a                                         ; $792e: $4f
  ld l, [hl]                                      ; $792f: $6e
  rst $20                                         ; $7930: $e7
  dec b                                           ; $7931: $05
  ld b, [hl]                                      ; $7932: $46
  ld b, [hl]                                      ; $7933: $46
  dec d                                           ; $7934: $15
  ld a, l                                         ; $7935: $7d
  nop                                             ; $7936: $00
  inc d                                           ; $7937: $14
  ld d, a                                         ; $7938: $57
  nop                                             ; $7939: $00
  nop                                             ; $793a: $00
  db $e4                                          ; $793b: $e4
  ld bc, $797a                                    ; $793c: $01 $7a $79
  db $e4                                          ; $793f: $e4
  ld [bc], a                                      ; $7940: $02
  adc d                                           ; $7941: $8a
  ld a, c                                         ; $7942: $79
  db $e4                                          ; $7943: $e4
  inc bc                                          ; $7944: $03
  sbc b                                           ; $7945: $98
  ld a, c                                         ; $7946: $79
  rst $20                                         ; $7947: $e7
  dec b                                           ; $7948: $05
  ld a, l                                         ; $7949: $7d
  ld b, [hl]                                      ; $794a: $46
  rst $20                                         ; $794b: $e7
  dec b                                           ; $794c: $05
  cp $45                                          ; $794d: $fe $45
  and d                                           ; $794f: $a2
  db $f4                                          ; $7950: $f4
  ld [$05e7], a                                   ; $7951: $ea $e7 $05
  cp e                                            ; $7954: $bb
  ld b, h                                         ; $7955: $44
  rst $20                                         ; $7956: $e7
  dec b                                           ; $7957: $05
  ld b, [hl]                                      ; $7958: $46
  ld b, [hl]                                      ; $7959: $46
  nop                                             ; $795a: $00
  ld b, $f6                                       ; $795b: $06 $f6
  ld bc, $7f39                                    ; $795d: $01 $39 $7f
  or $02                                          ; $7960: $f6 $02
  add hl, sp                                      ; $7962: $39
  ld a, a                                         ; $7963: $7f
  or $03                                          ; $7964: $f6 $03
  add hl, sp                                      ; $7966: $39
  ld a, a                                         ; $7967: $7f
  dec d                                           ; $7968: $15
  ld a, [hl]                                      ; $7969: $7e
  nop                                             ; $796a: $00
  ld a, [hl+]                                     ; $796b: $2a
  ld h, b                                         ; $796c: $60
  nop                                             ; $796d: $00
  ld b, $e7                                       ; $796e: $06 $e7
  rlca                                            ; $7970: $07
  nop                                             ; $7971: $00
  ld h, h                                         ; $7972: $64
  rst $20                                         ; $7973: $e7
  rlca                                            ; $7974: $07
  xor b                                           ; $7975: $a8
  ld h, c                                         ; $7976: $61
  ld d, a                                         ; $7977: $57
  nop                                             ; $7978: $00
  nop                                             ; $7979: $00
  rst $20                                         ; $797a: $e7
  dec b                                           ; $797b: $05
  cp $45                                          ; $797c: $fe $45
  sbc a                                           ; $797e: $9f
  ld hl, sp-$5e                                   ; $797f: $f8 $a2
  db $f4                                          ; $7981: $f4
  rst $20                                         ; $7982: $e7
  dec b                                           ; $7983: $05
  ld e, l                                         ; $7984: $5d
  ld b, [hl]                                      ; $7985: $46
  ld [$0057], a                                   ; $7986: $ea $57 $00
  nop                                             ; $7989: $00
  rst $20                                         ; $798a: $e7
  dec b                                           ; $798b: $05
  cp $45                                          ; $798c: $fe $45
  and d                                           ; $798e: $a2
  db $f4                                          ; $798f: $f4
  rst $20                                         ; $7990: $e7
  dec b                                           ; $7991: $05
  ld e, l                                         ; $7992: $5d
  ld b, [hl]                                      ; $7993: $46
  ld [$0057], a                                   ; $7994: $ea $57 $00
  nop                                             ; $7997: $00
  rst $20                                         ; $7998: $e7
  dec b                                           ; $7999: $05
  cp $45                                          ; $799a: $fe $45
  sbc a                                           ; $799c: $9f
  ld [$f4a2], sp                                  ; $799d: $08 $a2 $f4
  rst $20                                         ; $79a0: $e7
  dec b                                           ; $79a1: $05
  ld e, l                                         ; $79a2: $5d
  ld b, [hl]                                      ; $79a3: $46
  ld [$0057], a                                   ; $79a4: $ea $57 $00
  nop                                             ; $79a7: $00
  ld [$c624], a                                   ; $79a8: $ea $24 $c6
  ld d, l                                         ; $79ab: $55
  inc h                                           ; $79ac: $24
  and $55                                         ; $79ad: $e6 $55
  daa                                             ; $79af: $27
  call nz, $e779                                  ; $79b0: $c4 $79 $e7
  dec b                                           ; $79b3: $05
  cp $45                                          ; $79b4: $fe $45
  and d                                           ; $79b6: $a2
  db $10                                          ; $79b7: $10
  rst $20                                         ; $79b8: $e7
  dec b                                           ; $79b9: $05
  ld b, [hl]                                      ; $79ba: $46
  ld b, [hl]                                      ; $79bb: $46
  dec d                                           ; $79bc: $15
  ld a, a                                         ; $79bd: $7f
  ld [$1ee7], a                                   ; $79be: $ea $e7 $1e
  adc d                                           ; $79c1: $8a
  ld h, b                                         ; $79c2: $60
  ld h, b                                         ; $79c3: $60
  inc h                                           ; $79c4: $24
  call z, $2455                                   ; $79c5: $cc $55 $24
  and $55                                         ; $79c8: $e6 $55
  daa                                             ; $79ca: $27
  ldh [$ff79], a                                  ; $79cb: $e0 $79
  rst $20                                         ; $79cd: $e7
  dec b                                           ; $79ce: $05
  cp $45                                          ; $79cf: $fe $45
  and d                                           ; $79d1: $a2
  db $10                                          ; $79d2: $10
  rst $20                                         ; $79d3: $e7
  dec b                                           ; $79d4: $05
  ld b, [hl]                                      ; $79d5: $46
  ld b, [hl]                                      ; $79d6: $46
  dec d                                           ; $79d7: $15
  ld a, a                                         ; $79d8: $7f
  ld h, e                                         ; $79d9: $63
  ld [$1ee7], a                                   ; $79da: $ea $e7 $1e
  adc d                                           ; $79dd: $8a
  ld h, b                                         ; $79de: $60
  ld h, b                                         ; $79df: $60
  inc h                                           ; $79e0: $24
  jp nc, $2455                                    ; $79e1: $d2 $55 $24

  and $55                                         ; $79e4: $e6 $55
  daa                                             ; $79e6: $27
  db $fc                                          ; $79e7: $fc
  ld a, c                                         ; $79e8: $79
  rst $20                                         ; $79e9: $e7
  dec b                                           ; $79ea: $05
  cp $45                                          ; $79eb: $fe $45
  and d                                           ; $79ed: $a2
  db $10                                          ; $79ee: $10
  rst $20                                         ; $79ef: $e7
  dec b                                           ; $79f0: $05
  ld b, [hl]                                      ; $79f1: $46
  ld b, [hl]                                      ; $79f2: $46
  dec d                                           ; $79f3: $15
  ld a, a                                         ; $79f4: $7f
  ld h, e                                         ; $79f5: $63
  ld [$1ee7], a                                   ; $79f6: $ea $e7 $1e
  adc d                                           ; $79f9: $8a
  ld h, b                                         ; $79fa: $60
  ld h, b                                         ; $79fb: $60
  rst $20                                         ; $79fc: $e7
  dec b                                           ; $79fd: $05
  ld c, a                                         ; $79fe: $4f
  ld a, l                                         ; $79ff: $7d
  rst $20                                         ; $7a00: $e7
  dec b                                           ; $7a01: $05
  cp e                                            ; $7a02: $bb
  ld b, h                                         ; $7a03: $44
  rst $20                                         ; $7a04: $e7
  rlca                                            ; $7a05: $07
  xor b                                           ; $7a06: $a8
  ld h, c                                         ; $7a07: $61
  ld d, a                                         ; $7a08: $57
  nop                                             ; $7a09: $00
  nop                                             ; $7a0a: $00
  db $e4                                          ; $7a0b: $e4
  ld bc, $7aa6                                    ; $7a0c: $01 $a6 $7a
  ld h, b                                         ; $7a0f: $60
  ldh a, [$ff33]                                  ; $7a10: $f0 $33
  nop                                             ; $7a12: $00
  di                                              ; $7a13: $f3
  jr nc, jr_007_7a16                              ; $7a14: $30 $00

jr_007_7a16:
  or $01                                          ; $7a16: $f6 $01
  add hl, sp                                      ; $7a18: $39
  ld a, a                                         ; $7a19: $7f
  ldh a, [rSCY]                                   ; $7a1a: $f0 $42
  nop                                             ; $7a1c: $00
  di                                              ; $7a1d: $f3
  jr nz, jr_007_7a20                              ; $7a1e: $20 $00

jr_007_7a20:
  or $01                                          ; $7a20: $f6 $01
  add hl, sp                                      ; $7a22: $39
  ld a, a                                         ; $7a23: $7f
  ldh a, [rHDMA2]                                 ; $7a24: $f0 $52
  nop                                             ; $7a26: $00
  di                                              ; $7a27: $f3
  jr z, jr_007_7a2a                               ; $7a28: $28 $00

jr_007_7a2a:
  or $01                                          ; $7a2a: $f6 $01
  add hl, sp                                      ; $7a2c: $39
  ld a, a                                         ; $7a2d: $7f
  ldh a, [$ff62]                                  ; $7a2e: $f0 $62
  nop                                             ; $7a30: $00
  di                                              ; $7a31: $f3
  jr nz, jr_007_7a34                              ; $7a32: $20 $00

jr_007_7a34:
  or $01                                          ; $7a34: $f6 $01
  add hl, sp                                      ; $7a36: $39
  ld a, a                                         ; $7a37: $7f
  ldh a, [$ff73]                                  ; $7a38: $f0 $73
  nop                                             ; $7a3a: $00
  di                                              ; $7a3b: $f3
  jr nc, jr_007_7a3e                              ; $7a3c: $30 $00

jr_007_7a3e:
  or $01                                          ; $7a3e: $f6 $01
  add hl, sp                                      ; $7a40: $39
  ld a, a                                         ; $7a41: $7f
  nop                                             ; $7a42: $00
  ld a, [bc]                                      ; $7a43: $0a
  add c                                           ; $7a44: $81
  and b                                           ; $7a45: $a0
  nop                                             ; $7a46: $00
  add h                                           ; $7a47: $84
  dec de                                          ; $7a48: $1b
  nop                                             ; $7a49: $00
  add hl, bc                                      ; $7a4a: $09
  ld bc, $d563                                    ; $7a4b: $01 $63 $d5
  inc bc                                          ; $7a4e: $03
  jr @-$02                                        ; $7a4f: $18 $fc

  nop                                             ; $7a51: $00
  inc c                                           ; $7a52: $0c
  dec de                                          ; $7a53: $1b
  ld e, c                                         ; $7a54: $59
  ld l, [hl]                                      ; $7a55: $6e
  nop                                             ; $7a56: $00
  rrca                                            ; $7a57: $0f
  dec de                                          ; $7a58: $1b
  ld h, e                                         ; $7a59: $63
  ld l, [hl]                                      ; $7a5a: $6e
  inc bc                                          ; $7a5b: $03
  nop                                             ; $7a5c: $00
  nop                                             ; $7a5d: $00
  ld b, $18                                       ; $7a5e: $06 $18
  db $fc                                          ; $7a60: $fc
  nop                                             ; $7a61: $00
  dec b                                           ; $7a62: $05
  inc bc                                          ; $7a63: $03
  add sp, $03                                     ; $7a64: $e8 $03
  nop                                             ; $7a66: $00
  dec b                                           ; $7a67: $05
  ld b, $00                                       ; $7a68: $06 $00
  nop                                             ; $7a6a: $00
  nop                                             ; $7a6b: $00
  ld a, [bc]                                      ; $7a6c: $0a
  add c                                           ; $7a6d: $81
  and b                                           ; $7a6e: $a0
  nop                                             ; $7a6f: $00
  add h                                           ; $7a70: $84
  inc [hl]                                        ; $7a71: $34
  nop                                             ; $7a72: $00
  inc bc                                          ; $7a73: $03
  ld c, b                                         ; $7a74: $48
  db $f4                                          ; $7a75: $f4
  nop                                             ; $7a76: $00
  ld a, [bc]                                      ; $7a77: $0a
  inc bc                                          ; $7a78: $03
  nop                                             ; $7a79: $00
  nop                                             ; $7a7a: $00
  ld a, [hl]                                      ; $7a7b: $7e
  rst $20                                         ; $7a7c: $e7
  dec b                                           ; $7a7d: $05
  ld a, l                                         ; $7a7e: $7d
  ld b, [hl]                                      ; $7a7f: $46
  inc h                                           ; $7a80: $24
  di                                              ; $7a81: $f3
  ld a, l                                         ; $7a82: $7d
  daa                                             ; $7a83: $27
  sub b                                           ; $7a84: $90
  ld a, d                                         ; $7a85: $7a
  inc h                                           ; $7a86: $24
  reti                                            ; $7a87: $d9


  ld e, b                                         ; $7a88: $58
  ld [$0003], a                                   ; $7a89: $ea $03 $00
  nop                                             ; $7a8c: $00
  ld b, $00                                       ; $7a8d: $06 $00
  nop                                             ; $7a8f: $00
  rst $20                                         ; $7a90: $e7
  dec b                                           ; $7a91: $05
  ld b, [hl]                                      ; $7a92: $46
  ld b, [hl]                                      ; $7a93: $46
  dec d                                           ; $7a94: $15
  ld h, a                                         ; $7a95: $67
  ld [$05e7], a                                   ; $7a96: $ea $e7 $05
  cp e                                            ; $7a99: $bb
  ld b, h                                         ; $7a9a: $44
  rst $20                                         ; $7a9b: $e7
  dec b                                           ; $7a9c: $05
  ld d, l                                         ; $7a9d: $55
  ld a, l                                         ; $7a9e: $7d
  rst $20                                         ; $7a9f: $e7
  rlca                                            ; $7aa0: $07
  xor b                                           ; $7aa1: $a8
  ld h, c                                         ; $7aa2: $61
  ld d, a                                         ; $7aa3: $57
  nop                                             ; $7aa4: $00
  nop                                             ; $7aa5: $00
  cp l                                            ; $7aa6: $bd
  ldh [rTIMA], a                                  ; $7aa7: $e0 $05
  rst $20                                         ; $7aa9: $e7
  dec b                                           ; $7aaa: $05
  ld e, l                                         ; $7aab: $5d
  ld b, [hl]                                      ; $7aac: $46
  nop                                             ; $7aad: $00
  ld e, d                                         ; $7aae: $5a
  ld d, a                                         ; $7aaf: $57
  nop                                             ; $7ab0: $00
  nop                                             ; $7ab1: $00
  db $e4                                          ; $7ab2: $e4
  ld bc, $7b05                                    ; $7ab3: $01 $05 $7b
  db $e4                                          ; $7ab6: $e4
  ld [bc], a                                      ; $7ab7: $02
  inc e                                           ; $7ab8: $1c
  ld a, e                                         ; $7ab9: $7b
  db $e4                                          ; $7aba: $e4
  inc bc                                          ; $7abb: $03
  inc sp                                          ; $7abc: $33
  ld a, e                                         ; $7abd: $7b
  ld h, b                                         ; $7abe: $60
  or $01                                          ; $7abf: $f6 $01
  add hl, sp                                      ; $7ac1: $39
  ld a, a                                         ; $7ac2: $7f
  or $02                                          ; $7ac3: $f6 $02
  add hl, sp                                      ; $7ac5: $39
  ld a, a                                         ; $7ac6: $7f
  or $03                                          ; $7ac7: $f6 $03
  add hl, sp                                      ; $7ac9: $39
  ld a, a                                         ; $7aca: $7f
  nop                                             ; $7acb: $00
  ld a, b                                         ; $7acc: $78
  rst $20                                         ; $7acd: $e7
  dec b                                           ; $7ace: $05
  cp e                                            ; $7acf: $bb
  ld b, h                                         ; $7ad0: $44
  rst $20                                         ; $7ad1: $e7
  rlca                                            ; $7ad2: $07
  add $55                                         ; $7ad3: $c6 $55
  rst $20                                         ; $7ad5: $e7
  rlca                                            ; $7ad6: $07
  and $55                                         ; $7ad7: $e6 $55
  daa                                             ; $7ad9: $27
  ldh [$ff7a], a                                  ; $7ada: $e0 $7a
  rst $20                                         ; $7adc: $e7
  dec b                                           ; $7add: $05
  ld a, e                                         ; $7ade: $7b
  ld a, l                                         ; $7adf: $7d
  rst $20                                         ; $7ae0: $e7
  rlca                                            ; $7ae1: $07
  call z, $e755                                   ; $7ae2: $cc $55 $e7
  rlca                                            ; $7ae5: $07
  and $55                                         ; $7ae6: $e6 $55
  daa                                             ; $7ae8: $27
  rst $28                                         ; $7ae9: $ef
  ld a, d                                         ; $7aea: $7a
  rst $20                                         ; $7aeb: $e7
  dec b                                           ; $7aec: $05
  ld a, e                                         ; $7aed: $7b
  ld a, l                                         ; $7aee: $7d
  rst $20                                         ; $7aef: $e7
  rlca                                            ; $7af0: $07
  jp nc, $e755                                    ; $7af1: $d2 $55 $e7

  rlca                                            ; $7af4: $07
  and $55                                         ; $7af5: $e6 $55
  daa                                             ; $7af7: $27
  cp $7a                                          ; $7af8: $fe $7a
  rst $20                                         ; $7afa: $e7

jr_007_7afb:
  dec b                                           ; $7afb: $05
  ld a, e                                         ; $7afc: $7b
  ld a, l                                         ; $7afd: $7d
  rst $20                                         ; $7afe: $e7
  rlca                                            ; $7aff: $07
  xor b                                           ; $7b00: $a8
  ld h, c                                         ; $7b01: $61
  ld d, a                                         ; $7b02: $57
  nop                                             ; $7b03: $00
  nop                                             ; $7b04: $00
  dec d                                           ; $7b05: $15
  add b                                           ; $7b06: $80
  add c                                           ; $7b07: $81
  dec a                                           ; $7b08: $3d
  nop                                             ; $7b09: $00
  add h                                           ; $7b0a: $84
  ld e, b                                         ; $7b0b: $58
  nop                                             ; $7b0c: $00
  rst $20                                         ; $7b0d: $e7
  dec b                                           ; $7b0e: $05
  ld b, [hl]                                      ; $7b0f: $46
  ld b, [hl]                                      ; $7b10: $46
  nop                                             ; $7b11: $00
  jr z, jr_007_7afb                               ; $7b12: $28 $e7

  dec b                                           ; $7b14: $05
  ld e, l                                         ; $7b15: $5d
  ld b, [hl]                                      ; $7b16: $46
  nop                                             ; $7b17: $00
  inc a                                           ; $7b18: $3c
  ld d, a                                         ; $7b19: $57
  nop                                             ; $7b1a: $00
  nop                                             ; $7b1b: $00
  dec d                                           ; $7b1c: $15
  add b                                           ; $7b1d: $80
  add c                                           ; $7b1e: $81
  ld b, l                                         ; $7b1f: $45
  nop                                             ; $7b20: $00
  add h                                           ; $7b21: $84
  jr jr_007_7b24                                  ; $7b22: $18 $00

jr_007_7b24:
  rst $20                                         ; $7b24: $e7
  dec b                                           ; $7b25: $05
  ld b, [hl]                                      ; $7b26: $46
  ld b, [hl]                                      ; $7b27: $46
  nop                                             ; $7b28: $00
  inc a                                           ; $7b29: $3c
  rst $20                                         ; $7b2a: $e7
  dec b                                           ; $7b2b: $05
  ld e, l                                         ; $7b2c: $5d
  ld b, [hl]                                      ; $7b2d: $46
  nop                                             ; $7b2e: $00
  jr z, jr_007_7b88                               ; $7b2f: $28 $57

  nop                                             ; $7b31: $00
  nop                                             ; $7b32: $00
  dec d                                           ; $7b33: $15
  add b                                           ; $7b34: $80
  add c                                           ; $7b35: $81
  ld h, l                                         ; $7b36: $65
  nop                                             ; $7b37: $00
  add h                                           ; $7b38: $84
  ld b, b                                         ; $7b39: $40
  nop                                             ; $7b3a: $00
  rst $20                                         ; $7b3b: $e7
  dec b                                           ; $7b3c: $05
  ld b, [hl]                                      ; $7b3d: $46
  ld b, [hl]                                      ; $7b3e: $46
  nop                                             ; $7b3f: $00
  ld [hl-], a                                     ; $7b40: $32
  rst $20                                         ; $7b41: $e7
  dec b                                           ; $7b42: $05
  ld e, l                                         ; $7b43: $5d
  ld b, [hl]                                      ; $7b44: $46
  nop                                             ; $7b45: $00
  ld [hl-], a                                     ; $7b46: $32
  ld d, a                                         ; $7b47: $57
  nop                                             ; $7b48: $00
  nop                                             ; $7b49: $00
  rst $20                                         ; $7b4a: $e7
  dec b                                           ; $7b4b: $05
  ld b, [hl]                                      ; $7b4c: $46
  ld b, [hl]                                      ; $7b4d: $46
  rst $20                                         ; $7b4e: $e7
  dec b                                           ; $7b4f: $05
  ld a, l                                         ; $7b50: $7d
  ld b, [hl]                                      ; $7b51: $46
  rst $20                                         ; $7b52: $e7
  dec b                                           ; $7b53: $05
  cp $45                                          ; $7b54: $fe $45
  and d                                           ; $7b56: $a2
  ld hl, sp-$19                                   ; $7b57: $f8 $e7
  dec b                                           ; $7b59: $05
  rst $00                                         ; $7b5a: $c7
  ld a, l                                         ; $7b5b: $7d
  rst $20                                         ; $7b5c: $e7
  dec b                                           ; $7b5d: $05
  ld b, [hl]                                      ; $7b5e: $46
  ld b, [hl]                                      ; $7b5f: $46
  dec d                                           ; $7b60: $15
  add c                                           ; $7b61: $81
  nop                                             ; $7b62: $00
  ld c, $15                                       ; $7b63: $0e $15
  add d                                           ; $7b65: $82
  nop                                             ; $7b66: $00
  ld [de], a                                      ; $7b67: $12
  ld h, [hl]                                      ; $7b68: $66
  rst $20                                         ; $7b69: $e7
  dec b                                           ; $7b6a: $05
  ld b, [hl]                                      ; $7b6b: $46
  ld b, [hl]                                      ; $7b6c: $46
  dec d                                           ; $7b6d: $15
  add c                                           ; $7b6e: $81
  nop                                             ; $7b6f: $00
  ld c, $15                                       ; $7b70: $0e $15
  add d                                           ; $7b72: $82
  nop                                             ; $7b73: $00
  ld [de], a                                      ; $7b74: $12
  ld l, c                                         ; $7b75: $69
  rst $20                                         ; $7b76: $e7
  dec b                                           ; $7b77: $05
  ld b, [hl]                                      ; $7b78: $46
  ld b, [hl]                                      ; $7b79: $46
  dec d                                           ; $7b7a: $15
  add c                                           ; $7b7b: $81
  nop                                             ; $7b7c: $00
  ld c, $15                                       ; $7b7d: $0e $15
  add d                                           ; $7b7f: $82
  nop                                             ; $7b80: $00
  ld [de], a                                      ; $7b81: $12
  ld h, [hl]                                      ; $7b82: $66
  rst $20                                         ; $7b83: $e7
  dec b                                           ; $7b84: $05
  ld b, [hl]                                      ; $7b85: $46
  ld b, [hl]                                      ; $7b86: $46
  dec d                                           ; $7b87: $15

jr_007_7b88:
  add c                                           ; $7b88: $81
  nop                                             ; $7b89: $00
  ld c, $15                                       ; $7b8a: $0e $15
  add d                                           ; $7b8c: $82
  nop                                             ; $7b8d: $00
  ld [de], a                                      ; $7b8e: $12
  rst $20                                         ; $7b8f: $e7
  dec b                                           ; $7b90: $05
  and c                                           ; $7b91: $a1
  ld a, l                                         ; $7b92: $7d
  rst $20                                         ; $7b93: $e7
  dec b                                           ; $7b94: $05
  cp e                                            ; $7b95: $bb
  ld b, h                                         ; $7b96: $44
  rst $20                                         ; $7b97: $e7
  rlca                                            ; $7b98: $07
  xor b                                           ; $7b99: $a8
  ld h, c                                         ; $7b9a: $61
  ld d, a                                         ; $7b9b: $57
  nop                                             ; $7b9c: $00
  nop                                             ; $7b9d: $00
  db $e4                                          ; $7b9e: $e4
  ld bc, $7bc6                                    ; $7b9f: $01 $c6 $7b
  db $e4                                          ; $7ba2: $e4
  ld [bc], a                                      ; $7ba3: $02
  db $e4                                          ; $7ba4: $e4
  ld a, e                                         ; $7ba5: $7b
  db $e4                                          ; $7ba6: $e4
  inc bc                                          ; $7ba7: $03
  nop                                             ; $7ba8: $00
  ld a, h                                         ; $7ba9: $7c
  ld [$05e7], a                                   ; $7baa: $ea $e7 $05
  cp e                                            ; $7bad: $bb
  ld b, h                                         ; $7bae: $44
  rst $20                                         ; $7baf: $e7
  dec b                                           ; $7bb0: $05
  ld a, l                                         ; $7bb1: $7d
  ld b, [hl]                                      ; $7bb2: $46
  or $01                                          ; $7bb3: $f6 $01
  add hl, sp                                      ; $7bb5: $39
  ld a, a                                         ; $7bb6: $7f
  nop                                             ; $7bb7: $00
  dec b                                           ; $7bb8: $05
  or $02                                          ; $7bb9: $f6 $02
  add hl, sp                                      ; $7bbb: $39
  ld a, a                                         ; $7bbc: $7f
  nop                                             ; $7bbd: $00
  dec b                                           ; $7bbe: $05
  or $03                                          ; $7bbf: $f6 $03
  add hl, sp                                      ; $7bc1: $39
  ld a, a                                         ; $7bc2: $7f
  ld d, a                                         ; $7bc3: $57
  nop                                             ; $7bc4: $00
  nop                                             ; $7bc5: $00
  rst $20                                         ; $7bc6: $e7
  dec b                                           ; $7bc7: $05
  cp $45                                          ; $7bc8: $fe $45
  add h                                           ; $7bca: $84
  nop                                             ; $7bcb: $00
  nop                                             ; $7bcc: $00
  rst $20                                         ; $7bcd: $e7
  dec b                                           ; $7bce: $05
  ld b, [hl]                                      ; $7bcf: $46
  ld b, [hl]                                      ; $7bd0: $46
  inc h                                           ; $7bd1: $24
  rst $28                                         ; $7bd2: $ef
  ld e, b                                         ; $7bd3: $58
  dec d                                           ; $7bd4: $15
  add h                                           ; $7bd5: $84
  ld [$0006], a                                   ; $7bd6: $ea $06 $00
  nop                                             ; $7bd9: $00
  rst $20                                         ; $7bda: $e7
  dec b                                           ; $7bdb: $05
  ld e, l                                         ; $7bdc: $5d
  ld b, [hl]                                      ; $7bdd: $46
  dec d                                           ; $7bde: $15
  add e                                           ; $7bdf: $83
  ld [$0057], a                                   ; $7be0: $ea $57 $00
  nop                                             ; $7be3: $00
  rst $20                                         ; $7be4: $e7
  dec b                                           ; $7be5: $05
  cp $45                                          ; $7be6: $fe $45
  add h                                           ; $7be8: $84
  nop                                             ; $7be9: $00
  nop                                             ; $7bea: $00
  rst $20                                         ; $7beb: $e7
  dec b                                           ; $7bec: $05
  ld b, [hl]                                      ; $7bed: $46
  ld b, [hl]                                      ; $7bee: $46
  inc h                                           ; $7bef: $24
  rst $28                                         ; $7bf0: $ef
  ld e, b                                         ; $7bf1: $58
  ld [$0006], a                                   ; $7bf2: $ea $06 $00
  nop                                             ; $7bf5: $00
  rst $20                                         ; $7bf6: $e7
  dec b                                           ; $7bf7: $05
  ld e, l                                         ; $7bf8: $5d
  ld b, [hl]                                      ; $7bf9: $46
  dec d                                           ; $7bfa: $15
  add e                                           ; $7bfb: $83
  ld [$0057], a                                   ; $7bfc: $ea $57 $00
  nop                                             ; $7bff: $00
  rst $20                                         ; $7c00: $e7
  dec b                                           ; $7c01: $05
  cp $45                                          ; $7c02: $fe $45
  add h                                           ; $7c04: $84
  nop                                             ; $7c05: $00
  nop                                             ; $7c06: $00
  rst $20                                         ; $7c07: $e7
  dec b                                           ; $7c08: $05
  ld b, [hl]                                      ; $7c09: $46
  ld b, [hl]                                      ; $7c0a: $46
  inc h                                           ; $7c0b: $24
  rst $28                                         ; $7c0c: $ef
  ld e, b                                         ; $7c0d: $58
  ld [$0006], a                                   ; $7c0e: $ea $06 $00
  nop                                             ; $7c11: $00
  rst $20                                         ; $7c12: $e7
  dec b                                           ; $7c13: $05
  ld e, l                                         ; $7c14: $5d
  ld b, [hl]                                      ; $7c15: $46
  dec d                                           ; $7c16: $15
  add e                                           ; $7c17: $83
  ld [$05e7], a                                   ; $7c18: $ea $e7 $05
  ld bc, $e77e                                    ; $7c1b: $01 $7e $e7
  rlca                                            ; $7c1e: $07
  xor b                                           ; $7c1f: $a8
  ld h, c                                         ; $7c20: $61
  ld d, a                                         ; $7c21: $57
  nop                                             ; $7c22: $00
  nop                                             ; $7c23: $00
  rst $20                                         ; $7c24: $e7
  dec b                                           ; $7c25: $05
  ld a, l                                         ; $7c26: $7d
  ld b, [hl]                                      ; $7c27: $46
  rst $20                                         ; $7c28: $e7
  dec b                                           ; $7c29: $05
  cp $45                                          ; $7c2a: $fe $45
  and d                                           ; $7c2c: $a2
  ld de, $e7ea                                    ; $7c2d: $11 $ea $e7
  dec b                                           ; $7c30: $05
  cp e                                            ; $7c31: $bb
  ld b, h                                         ; $7c32: $44
  rst $20                                         ; $7c33: $e7
  dec b                                           ; $7c34: $05
  ld b, [hl]                                      ; $7c35: $46
  ld b, [hl]                                      ; $7c36: $46
  dec d                                           ; $7c37: $15
  add a                                           ; $7c38: $87
  ld [$e760], a                                   ; $7c39: $ea $60 $e7
  dec b                                           ; $7c3c: $05
  db $f4                                          ; $7c3d: $f4
  ld b, [hl]                                      ; $7c3e: $46
  nop                                             ; $7c3f: $00
  ld a, [bc]                                      ; $7c40: $0a
  rst $20                                         ; $7c41: $e7
  rlca                                            ; $7c42: $07
  xor b                                           ; $7c43: $a8
  ld h, c                                         ; $7c44: $61
  ld d, a                                         ; $7c45: $57
  nop                                             ; $7c46: $00
  nop                                             ; $7c47: $00
  ld [$07e7], a                                   ; $7c48: $ea $e7 $07
  add $55                                         ; $7c4b: $c6 $55
  rst $20                                         ; $7c4d: $e7
  rlca                                            ; $7c4e: $07
  and $55                                         ; $7c4f: $e6 $55
  daa                                             ; $7c51: $27
  ld h, c                                         ; $7c52: $61
  ld a, h                                         ; $7c53: $7c
  rst $20                                         ; $7c54: $e7
  dec b                                           ; $7c55: $05
  cp $45                                          ; $7c56: $fe $45
  and d                                           ; $7c58: $a2
  db $f4                                          ; $7c59: $f4
  rst $20                                         ; $7c5a: $e7
  dec b                                           ; $7c5b: $05
  ld b, [hl]                                      ; $7c5c: $46
  ld b, [hl]                                      ; $7c5d: $46
  dec d                                           ; $7c5e: $15
  sub b                                           ; $7c5f: $90
  ld [$07e7], a                                   ; $7c60: $ea $e7 $07
  call z, $e755                                   ; $7c63: $cc $55 $e7
  rlca                                            ; $7c66: $07
  and $55                                         ; $7c67: $e6 $55
  daa                                             ; $7c69: $27
  ld a, c                                         ; $7c6a: $79
  ld a, h                                         ; $7c6b: $7c
  rst $20                                         ; $7c6c: $e7
  dec b                                           ; $7c6d: $05
  cp $45                                          ; $7c6e: $fe $45
  and d                                           ; $7c70: $a2
  db $f4                                          ; $7c71: $f4
  rst $20                                         ; $7c72: $e7
  dec b                                           ; $7c73: $05
  ld b, [hl]                                      ; $7c74: $46
  ld b, [hl]                                      ; $7c75: $46
  dec d                                           ; $7c76: $15
  sub b                                           ; $7c77: $90
  ld [$07e7], a                                   ; $7c78: $ea $e7 $07
  jp nc, $e755                                    ; $7c7b: $d2 $55 $e7

  rlca                                            ; $7c7e: $07
  and $55                                         ; $7c7f: $e6 $55
  daa                                             ; $7c81: $27
  sub c                                           ; $7c82: $91
  ld a, h                                         ; $7c83: $7c
  rst $20                                         ; $7c84: $e7
  dec b                                           ; $7c85: $05
  cp $45                                          ; $7c86: $fe $45
  and d                                           ; $7c88: $a2
  db $f4                                          ; $7c89: $f4
  rst $20                                         ; $7c8a: $e7
  dec b                                           ; $7c8b: $05
  ld b, [hl]                                      ; $7c8c: $46
  ld b, [hl]                                      ; $7c8d: $46
  dec d                                           ; $7c8e: $15
  sub b                                           ; $7c8f: $90
  ld [$05e7], a                                   ; $7c90: $ea $e7 $05
  cp e                                            ; $7c93: $bb
  ld b, h                                         ; $7c94: $44
  rst $20                                         ; $7c95: $e7
  rlca                                            ; $7c96: $07
  add $55                                         ; $7c97: $c6 $55
  rst $20                                         ; $7c99: $e7
  rlca                                            ; $7c9a: $07
  and $55                                         ; $7c9b: $e6 $55
  daa                                             ; $7c9d: $27
  and h                                           ; $7c9e: $a4
  ld a, h                                         ; $7c9f: $7c
  rst $20                                         ; $7ca0: $e7
  dec b                                           ; $7ca1: $05
  ld [hl-], a                                     ; $7ca2: $32
  ld a, [hl]                                      ; $7ca3: $7e
  rst $20                                         ; $7ca4: $e7
  rlca                                            ; $7ca5: $07
  call z, $e755                                   ; $7ca6: $cc $55 $e7
  rlca                                            ; $7ca9: $07
  and $55                                         ; $7caa: $e6 $55
  daa                                             ; $7cac: $27
  or e                                            ; $7cad: $b3
  ld a, h                                         ; $7cae: $7c
  rst $20                                         ; $7caf: $e7
  dec b                                           ; $7cb0: $05
  ld [hl-], a                                     ; $7cb1: $32
  ld a, [hl]                                      ; $7cb2: $7e
  rst $20                                         ; $7cb3: $e7
  rlca                                            ; $7cb4: $07
  jp nc, $e755                                    ; $7cb5: $d2 $55 $e7

  rlca                                            ; $7cb8: $07
  and $55                                         ; $7cb9: $e6 $55
  daa                                             ; $7cbb: $27
  jp nz, $e77c                                    ; $7cbc: $c2 $7c $e7

  dec b                                           ; $7cbf: $05
  ld [hl-], a                                     ; $7cc0: $32
  ld a, [hl]                                      ; $7cc1: $7e
  rst $20                                         ; $7cc2: $e7
  rlca                                            ; $7cc3: $07
  xor b                                           ; $7cc4: $a8
  ld h, c                                         ; $7cc5: $61
  ld d, a                                         ; $7cc6: $57
  nop                                             ; $7cc7: $00
  nop                                             ; $7cc8: $00
  ld [$2624], a                                   ; $7cc9: $ea $24 $26
  ld [$07e7], sp                                  ; $7ccc: $08 $e7 $07
  add $55                                         ; $7ccf: $c6 $55
  rst $20                                         ; $7cd1: $e7
  rlca                                            ; $7cd2: $07
  and $55                                         ; $7cd3: $e6 $55
  daa                                             ; $7cd5: $27
  db $e3                                          ; $7cd6: $e3
  ld a, h                                         ; $7cd7: $7c
  rst $20                                         ; $7cd8: $e7
  dec b                                           ; $7cd9: $05
  cp $45                                          ; $7cda: $fe $45
  rst $20                                         ; $7cdc: $e7
  dec b                                           ; $7cdd: $05
  ld b, [hl]                                      ; $7cde: $46
  ld b, [hl]                                      ; $7cdf: $46
  dec d                                           ; $7ce0: $15
  adc a                                           ; $7ce1: $8f
  ld [$2624], a                                   ; $7ce2: $ea $24 $26
  ld [$07e7], sp                                  ; $7ce5: $08 $e7 $07
  jp nc, $e755                                    ; $7ce8: $d2 $55 $e7

  rlca                                            ; $7ceb: $07
  and $55                                         ; $7cec: $e6 $55
  daa                                             ; $7cee: $27
  db $fc                                          ; $7cef: $fc
  ld a, h                                         ; $7cf0: $7c
  rst $20                                         ; $7cf1: $e7
  dec b                                           ; $7cf2: $05
  cp $45                                          ; $7cf3: $fe $45
  rst $20                                         ; $7cf5: $e7
  dec b                                           ; $7cf6: $05
  ld b, [hl]                                      ; $7cf7: $46
  ld b, [hl]                                      ; $7cf8: $46
  dec d                                           ; $7cf9: $15
  adc a                                           ; $7cfa: $8f
  ld [$07e7], a                                   ; $7cfb: $ea $e7 $07
  call z, $e755                                   ; $7cfe: $cc $55 $e7
  rlca                                            ; $7d01: $07
  and $55                                         ; $7d02: $e6 $55
  daa                                             ; $7d04: $27
  ld [de], a                                      ; $7d05: $12
  ld a, l                                         ; $7d06: $7d
  rst $20                                         ; $7d07: $e7
  dec b                                           ; $7d08: $05
  cp $45                                          ; $7d09: $fe $45
  rst $20                                         ; $7d0b: $e7
  dec b                                           ; $7d0c: $05
  ld e, l                                         ; $7d0d: $5d
  ld b, [hl]                                      ; $7d0e: $46
  dec d                                           ; $7d0f: $15
  adc a                                           ; $7d10: $8f
  ld [$07e7], a                                   ; $7d11: $ea $e7 $07
  jp nc, $e755                                    ; $7d14: $d2 $55 $e7

  rlca                                            ; $7d17: $07
  and $55                                         ; $7d18: $e6 $55
  daa                                             ; $7d1a: $27
  jr z, jr_007_7d9a                               ; $7d1b: $28 $7d

  rst $20                                         ; $7d1d: $e7
  dec b                                           ; $7d1e: $05
  cp $45                                          ; $7d1f: $fe $45
  rst $20                                         ; $7d21: $e7
  dec b                                           ; $7d22: $05
  ld b, [hl]                                      ; $7d23: $46
  ld b, [hl]                                      ; $7d24: $46
  dec d                                           ; $7d25: $15
  adc a                                           ; $7d26: $8f
  ld [$07e7], a                                   ; $7d27: $ea $e7 $07
  call z, $e755                                   ; $7d2a: $cc $55 $e7
  rlca                                            ; $7d2d: $07
  and $55                                         ; $7d2e: $e6 $55
  daa                                             ; $7d30: $27
  ld a, $7d                                       ; $7d31: $3e $7d
  rst $20                                         ; $7d33: $e7
  dec b                                           ; $7d34: $05
  cp $45                                          ; $7d35: $fe $45
  rst $20                                         ; $7d37: $e7
  dec b                                           ; $7d38: $05
  ld e, l                                         ; $7d39: $5d
  ld b, [hl]                                      ; $7d3a: $46
  dec d                                           ; $7d3b: $15
  adc a                                           ; $7d3c: $8f
  ld [$2624], a                                   ; $7d3d: $ea $24 $26
  ld [$07e7], sp                                  ; $7d40: $08 $e7 $07
  add $55                                         ; $7d43: $c6 $55
  rst $20                                         ; $7d45: $e7
  rlca                                            ; $7d46: $07
  and $55                                         ; $7d47: $e6 $55
  daa                                             ; $7d49: $27
  ld d, a                                         ; $7d4a: $57
  ld a, l                                         ; $7d4b: $7d
  rst $20                                         ; $7d4c: $e7
  dec b                                           ; $7d4d: $05
  cp $45                                          ; $7d4e: $fe $45
  rst $20                                         ; $7d50: $e7
  dec b                                           ; $7d51: $05
  ld b, [hl]                                      ; $7d52: $46
  ld b, [hl]                                      ; $7d53: $46
  dec d                                           ; $7d54: $15
  adc a                                           ; $7d55: $8f
  ld [$0060], a                                   ; $7d56: $ea $60 $00
  ld a, [bc]                                      ; $7d59: $0a
  rst $20                                         ; $7d5a: $e7
  dec b                                           ; $7d5b: $05
  cp e                                            ; $7d5c: $bb
  ld b, h                                         ; $7d5d: $44
  rst $20                                         ; $7d5e: $e7
  rlca                                            ; $7d5f: $07
  add $55                                         ; $7d60: $c6 $55
  rst $20                                         ; $7d62: $e7
  rlca                                            ; $7d63: $07
  and $55                                         ; $7d64: $e6 $55
  daa                                             ; $7d66: $27
  ld l, l                                         ; $7d67: $6d
  ld a, l                                         ; $7d68: $7d
  rst $20                                         ; $7d69: $e7
  dec b                                           ; $7d6a: $05
  ld [hl-], a                                     ; $7d6b: $32
  ld a, [hl]                                      ; $7d6c: $7e
  rst $20                                         ; $7d6d: $e7
  rlca                                            ; $7d6e: $07
  call z, $e755                                   ; $7d6f: $cc $55 $e7
  rlca                                            ; $7d72: $07
  and $55                                         ; $7d73: $e6 $55
  daa                                             ; $7d75: $27
  ld a, h                                         ; $7d76: $7c
  ld a, l                                         ; $7d77: $7d
  rst $20                                         ; $7d78: $e7
  dec b                                           ; $7d79: $05
  ld [hl-], a                                     ; $7d7a: $32
  ld a, [hl]                                      ; $7d7b: $7e
  rst $20                                         ; $7d7c: $e7
  rlca                                            ; $7d7d: $07
  jp nc, $e755                                    ; $7d7e: $d2 $55 $e7

  rlca                                            ; $7d81: $07
  and $55                                         ; $7d82: $e6 $55
  daa                                             ; $7d84: $27
  adc e                                           ; $7d85: $8b
  ld a, l                                         ; $7d86: $7d
  rst $20                                         ; $7d87: $e7
  dec b                                           ; $7d88: $05
  ld [hl-], a                                     ; $7d89: $32
  ld a, [hl]                                      ; $7d8a: $7e
  rst $20                                         ; $7d8b: $e7
  rlca                                            ; $7d8c: $07
  xor b                                           ; $7d8d: $a8
  ld h, c                                         ; $7d8e: $61
  ld d, a                                         ; $7d8f: $57
  nop                                             ; $7d90: $00
  nop                                             ; $7d91: $00
  ld [$05e7], a                                   ; $7d92: $ea $e7 $05
  cp e                                            ; $7d95: $bb
  ld b, h                                         ; $7d96: $44
  rst $20                                         ; $7d97: $e7
  rlca                                            ; $7d98: $07
  or h                                            ; $7d99: $b4

jr_007_7d9a:
  ld d, l                                         ; $7d9a: $55
  rst $20                                         ; $7d9b: $e7
  rlca                                            ; $7d9c: $07
  and $55                                         ; $7d9d: $e6 $55
  daa                                             ; $7d9f: $27
  or c                                            ; $7da0: $b1
  ld a, l                                         ; $7da1: $7d
  rst $20                                         ; $7da2: $e7
  dec b                                           ; $7da3: $05
  ld e, b                                         ; $7da4: $58
  ld a, [hl]                                      ; $7da5: $7e
  rst $20                                         ; $7da6: $e7
  dec b                                           ; $7da7: $05
  cp $45                                          ; $7da8: $fe $45
  and d                                           ; $7daa: $a2
  db $10                                          ; $7dab: $10
  rst $20                                         ; $7dac: $e7
  dec b                                           ; $7dad: $05
  ld b, [hl]                                      ; $7dae: $46
  ld b, [hl]                                      ; $7daf: $46
  ld [$07e7], a                                   ; $7db0: $ea $e7 $07
  cp d                                            ; $7db3: $ba
  ld d, l                                         ; $7db4: $55
  rst $20                                         ; $7db5: $e7
  rlca                                            ; $7db6: $07
  and $55                                         ; $7db7: $e6 $55
  daa                                             ; $7db9: $27
  bit 7, l                                        ; $7dba: $cb $7d
  rst $20                                         ; $7dbc: $e7
  dec b                                           ; $7dbd: $05
  ld e, b                                         ; $7dbe: $58
  ld a, [hl]                                      ; $7dbf: $7e
  rst $20                                         ; $7dc0: $e7
  dec b                                           ; $7dc1: $05
  cp $45                                          ; $7dc2: $fe $45
  and d                                           ; $7dc4: $a2
  db $10                                          ; $7dc5: $10
  rst $20                                         ; $7dc6: $e7
  dec b                                           ; $7dc7: $05
  ld b, [hl]                                      ; $7dc8: $46
  ld b, [hl]                                      ; $7dc9: $46
  ld [$07e7], a                                   ; $7dca: $ea $e7 $07
  ret nz                                          ; $7dcd: $c0

  ld d, l                                         ; $7dce: $55
  rst $20                                         ; $7dcf: $e7
  rlca                                            ; $7dd0: $07
  and $55                                         ; $7dd1: $e6 $55
  daa                                             ; $7dd3: $27
  push hl                                         ; $7dd4: $e5
  ld a, l                                         ; $7dd5: $7d
  rst $20                                         ; $7dd6: $e7
  dec b                                           ; $7dd7: $05
  ld e, b                                         ; $7dd8: $58
  ld a, [hl]                                      ; $7dd9: $7e
  rst $20                                         ; $7dda: $e7
  dec b                                           ; $7ddb: $05
  cp $45                                          ; $7ddc: $fe $45
  and d                                           ; $7dde: $a2
  db $10                                          ; $7ddf: $10
  rst $20                                         ; $7de0: $e7
  dec b                                           ; $7de1: $05
  ld b, [hl]                                      ; $7de2: $46
  ld b, [hl]                                      ; $7de3: $46
  ld [$07e7], a                                   ; $7de4: $ea $e7 $07
  xor b                                           ; $7de7: $a8
  ld h, c                                         ; $7de8: $61
  ld d, a                                         ; $7de9: $57
  nop                                             ; $7dea: $00
  nop                                             ; $7deb: $00

  ld hl, $0024                                    ; $7dec: $21 $24 $00
  add hl, bc                                      ; $7def: $09
  ld [hl], $0b                                    ; $7df0: $36 $0b
  ret                                             ; $7df2: $c9


  ld a, [$cc2a]                                   ; $7df3: $fa $2a $cc
  cp $05                                          ; $7df6: $fe $05
  jp StoreCPUFlags                                ; $7df8: $c3 $39 $00


  rst $38                                         ; $7dfb: $ff
  rst $38                                         ; $7dfc: $ff
  rst $38                                         ; $7dfd: $ff
  rst $38                                         ; $7dfe: $ff
  rst $38                                         ; $7dff: $ff
  rst $38                                         ; $7e00: $ff
  rst $38                                         ; $7e01: $ff
  rst $38                                         ; $7e02: $ff
  rst $38                                         ; $7e03: $ff
  rst $38                                         ; $7e04: $ff
  rst $38                                         ; $7e05: $ff
  rst $38                                         ; $7e06: $ff
  rst $38                                         ; $7e07: $ff
  rst $38                                         ; $7e08: $ff
  rst $38                                         ; $7e09: $ff
  rst $38                                         ; $7e0a: $ff
  rst $38                                         ; $7e0b: $ff
  rst $38                                         ; $7e0c: $ff
  rst $38                                         ; $7e0d: $ff
  rst $38                                         ; $7e0e: $ff
  rst $38                                         ; $7e0f: $ff
  rst $38                                         ; $7e10: $ff
  rst $38                                         ; $7e11: $ff
  rst $38                                         ; $7e12: $ff
  rst $38                                         ; $7e13: $ff
  rst $38                                         ; $7e14: $ff
  rst $38                                         ; $7e15: $ff
  rst $38                                         ; $7e16: $ff
  rst $38                                         ; $7e17: $ff
  rst $38                                         ; $7e18: $ff
  rst $38                                         ; $7e19: $ff
  rst $38                                         ; $7e1a: $ff
  rst $38                                         ; $7e1b: $ff
  rst $38                                         ; $7e1c: $ff
  rst $38                                         ; $7e1d: $ff
  rst $38                                         ; $7e1e: $ff
  rst $38                                         ; $7e1f: $ff
  rst $38                                         ; $7e20: $ff
  rst $38                                         ; $7e21: $ff
  rst $38                                         ; $7e22: $ff
  rst $38                                         ; $7e23: $ff
  rst $38                                         ; $7e24: $ff
  rst $38                                         ; $7e25: $ff
  rst $38                                         ; $7e26: $ff
  rst $38                                         ; $7e27: $ff
  rst $38                                         ; $7e28: $ff
  rst $38                                         ; $7e29: $ff
  rst $38                                         ; $7e2a: $ff
  rst $38                                         ; $7e2b: $ff
  rst $38                                         ; $7e2c: $ff
  rst $38                                         ; $7e2d: $ff
  rst $38                                         ; $7e2e: $ff
  rst $38                                         ; $7e2f: $ff
  rst $38                                         ; $7e30: $ff
  rst $38                                         ; $7e31: $ff
  rst $38                                         ; $7e32: $ff
  rst $38                                         ; $7e33: $ff
  rst $38                                         ; $7e34: $ff
  rst $38                                         ; $7e35: $ff
  rst $38                                         ; $7e36: $ff
  rst $38                                         ; $7e37: $ff
  rst $38                                         ; $7e38: $ff
  rst $38                                         ; $7e39: $ff
  rst $38                                         ; $7e3a: $ff
  rst $38                                         ; $7e3b: $ff
  rst $38                                         ; $7e3c: $ff
  rst $38                                         ; $7e3d: $ff
  rst $38                                         ; $7e3e: $ff
  rst $38                                         ; $7e3f: $ff
  rst $38                                         ; $7e40: $ff
  rst $38                                         ; $7e41: $ff
  rst $38                                         ; $7e42: $ff
  rst $38                                         ; $7e43: $ff
  rst $38                                         ; $7e44: $ff
  rst $38                                         ; $7e45: $ff
  rst $38                                         ; $7e46: $ff
  rst $38                                         ; $7e47: $ff
  rst $38                                         ; $7e48: $ff
  rst $38                                         ; $7e49: $ff
  rst $38                                         ; $7e4a: $ff
  rst $38                                         ; $7e4b: $ff
  rst $38                                         ; $7e4c: $ff
  rst $38                                         ; $7e4d: $ff
  rst $38                                         ; $7e4e: $ff
  rst $38                                         ; $7e4f: $ff
  rst $38                                         ; $7e50: $ff
  rst $38                                         ; $7e51: $ff
  rst $38                                         ; $7e52: $ff
  rst $38                                         ; $7e53: $ff
  rst $38                                         ; $7e54: $ff
  rst $38                                         ; $7e55: $ff
  rst $38                                         ; $7e56: $ff
  rst $38                                         ; $7e57: $ff
  rst $38                                         ; $7e58: $ff
  rst $38                                         ; $7e59: $ff
  rst $38                                         ; $7e5a: $ff
  rst $38                                         ; $7e5b: $ff
  rst $38                                         ; $7e5c: $ff
  rst $38                                         ; $7e5d: $ff
  rst $38                                         ; $7e5e: $ff
  rst $38                                         ; $7e5f: $ff
  rst $38                                         ; $7e60: $ff
  rst $38                                         ; $7e61: $ff
  rst $38                                         ; $7e62: $ff
  rst $38                                         ; $7e63: $ff
  rst $38                                         ; $7e64: $ff
  rst $38                                         ; $7e65: $ff
  rst $38                                         ; $7e66: $ff
  rst $38                                         ; $7e67: $ff
  rst $38                                         ; $7e68: $ff
  rst $38                                         ; $7e69: $ff
  rst $38                                         ; $7e6a: $ff
  rst $38                                         ; $7e6b: $ff
  rst $38                                         ; $7e6c: $ff
  rst $38                                         ; $7e6d: $ff
  rst $38                                         ; $7e6e: $ff
  rst $38                                         ; $7e6f: $ff
  rst $38                                         ; $7e70: $ff
  rst $38                                         ; $7e71: $ff
  rst $38                                         ; $7e72: $ff
  rst $38                                         ; $7e73: $ff
  rst $38                                         ; $7e74: $ff
  rst $38                                         ; $7e75: $ff
  rst $38                                         ; $7e76: $ff
  rst $38                                         ; $7e77: $ff
  rst $38                                         ; $7e78: $ff
  rst $38                                         ; $7e79: $ff
  rst $38                                         ; $7e7a: $ff
  rst $38                                         ; $7e7b: $ff
  rst $38                                         ; $7e7c: $ff
  rst $38                                         ; $7e7d: $ff
  rst $38                                         ; $7e7e: $ff
  rst $38                                         ; $7e7f: $ff
  rst $38                                         ; $7e80: $ff
  rst $38                                         ; $7e81: $ff
  rst $38                                         ; $7e82: $ff
  rst $38                                         ; $7e83: $ff
  rst $38                                         ; $7e84: $ff
  rst $38                                         ; $7e85: $ff
  rst $38                                         ; $7e86: $ff
  rst $38                                         ; $7e87: $ff
  rst $38                                         ; $7e88: $ff
  rst $38                                         ; $7e89: $ff
  rst $38                                         ; $7e8a: $ff
  rst $38                                         ; $7e8b: $ff
  rst $38                                         ; $7e8c: $ff
  rst $38                                         ; $7e8d: $ff
  rst $38                                         ; $7e8e: $ff
  rst $38                                         ; $7e8f: $ff
  rst $38                                         ; $7e90: $ff
  rst $38                                         ; $7e91: $ff
  rst $38                                         ; $7e92: $ff
  rst $38                                         ; $7e93: $ff
  rst $38                                         ; $7e94: $ff
  rst $38                                         ; $7e95: $ff
  rst $38                                         ; $7e96: $ff
  rst $38                                         ; $7e97: $ff
  rst $38                                         ; $7e98: $ff
  rst $38                                         ; $7e99: $ff
  rst $38                                         ; $7e9a: $ff
  rst $38                                         ; $7e9b: $ff
  rst $38                                         ; $7e9c: $ff
  rst $38                                         ; $7e9d: $ff
  rst $38                                         ; $7e9e: $ff
  rst $38                                         ; $7e9f: $ff
  rst $38                                         ; $7ea0: $ff
  rst $38                                         ; $7ea1: $ff
  rst $38                                         ; $7ea2: $ff
  rst $38                                         ; $7ea3: $ff
  rst $38                                         ; $7ea4: $ff
  rst $38                                         ; $7ea5: $ff
  rst $38                                         ; $7ea6: $ff
  rst $38                                         ; $7ea7: $ff
  rst $38                                         ; $7ea8: $ff
  rst $38                                         ; $7ea9: $ff
  rst $38                                         ; $7eaa: $ff
  rst $38                                         ; $7eab: $ff
  rst $38                                         ; $7eac: $ff
  rst $38                                         ; $7ead: $ff
  rst $38                                         ; $7eae: $ff
  rst $38                                         ; $7eaf: $ff
  rst $38                                         ; $7eb0: $ff
  rst $38                                         ; $7eb1: $ff
  rst $38                                         ; $7eb2: $ff
  rst $38                                         ; $7eb3: $ff
  rst $38                                         ; $7eb4: $ff
  rst $38                                         ; $7eb5: $ff
  rst $38                                         ; $7eb6: $ff
  rst $38                                         ; $7eb7: $ff
  rst $38                                         ; $7eb8: $ff
  rst $38                                         ; $7eb9: $ff
  rst $38                                         ; $7eba: $ff
  rst $38                                         ; $7ebb: $ff
  rst $38                                         ; $7ebc: $ff
  rst $38                                         ; $7ebd: $ff
  rst $38                                         ; $7ebe: $ff
  rst $38                                         ; $7ebf: $ff
  rst $38                                         ; $7ec0: $ff
  rst $38                                         ; $7ec1: $ff
  rst $38                                         ; $7ec2: $ff
  rst $38                                         ; $7ec3: $ff
  rst $38                                         ; $7ec4: $ff
  rst $38                                         ; $7ec5: $ff
  rst $38                                         ; $7ec6: $ff
  rst $38                                         ; $7ec7: $ff
  rst $38                                         ; $7ec8: $ff
  rst $38                                         ; $7ec9: $ff
  rst $38                                         ; $7eca: $ff
  rst $38                                         ; $7ecb: $ff
  rst $38                                         ; $7ecc: $ff
  rst $38                                         ; $7ecd: $ff
  rst $38                                         ; $7ece: $ff
  rst $38                                         ; $7ecf: $ff
  rst $38                                         ; $7ed0: $ff
  rst $38                                         ; $7ed1: $ff
  rst $38                                         ; $7ed2: $ff
  rst $38                                         ; $7ed3: $ff
  rst $38                                         ; $7ed4: $ff
  rst $38                                         ; $7ed5: $ff
  rst $38                                         ; $7ed6: $ff
  rst $38                                         ; $7ed7: $ff
  rst $38                                         ; $7ed8: $ff
  rst $38                                         ; $7ed9: $ff
  rst $38                                         ; $7eda: $ff
  rst $38                                         ; $7edb: $ff
  rst $38                                         ; $7edc: $ff
  rst $38                                         ; $7edd: $ff
  rst $38                                         ; $7ede: $ff
  rst $38                                         ; $7edf: $ff
  rst $38                                         ; $7ee0: $ff
  rst $38                                         ; $7ee1: $ff
  rst $38                                         ; $7ee2: $ff
  rst $38                                         ; $7ee3: $ff
  rst $38                                         ; $7ee4: $ff
  rst $38                                         ; $7ee5: $ff
  rst $38                                         ; $7ee6: $ff
  rst $38                                         ; $7ee7: $ff
  rst $38                                         ; $7ee8: $ff
  rst $38                                         ; $7ee9: $ff
  rst $38                                         ; $7eea: $ff
  rst $38                                         ; $7eeb: $ff
  rst $38                                         ; $7eec: $ff
  rst $38                                         ; $7eed: $ff
  rst $38                                         ; $7eee: $ff
  rst $38                                         ; $7eef: $ff
  rst $38                                         ; $7ef0: $ff
  rst $38                                         ; $7ef1: $ff
  rst $38                                         ; $7ef2: $ff
  rst $38                                         ; $7ef3: $ff
  rst $38                                         ; $7ef4: $ff
  rst $38                                         ; $7ef5: $ff
  rst $38                                         ; $7ef6: $ff
  rst $38                                         ; $7ef7: $ff
  rst $38                                         ; $7ef8: $ff
  rst $38                                         ; $7ef9: $ff
  rst $38                                         ; $7efa: $ff
  rst $38                                         ; $7efb: $ff
  rst $38                                         ; $7efc: $ff
  rst $38                                         ; $7efd: $ff
  rst $38                                         ; $7efe: $ff
  rst $38                                         ; $7eff: $ff
  rst $38                                         ; $7f00: $ff
  rst $38                                         ; $7f01: $ff
  rst $38                                         ; $7f02: $ff
  rst $38                                         ; $7f03: $ff
  rst $38                                         ; $7f04: $ff
  rst $38                                         ; $7f05: $ff
  rst $38                                         ; $7f06: $ff
  rst $38                                         ; $7f07: $ff
  rst $38                                         ; $7f08: $ff
  rst $38                                         ; $7f09: $ff
  rst $38                                         ; $7f0a: $ff
  rst $38                                         ; $7f0b: $ff
  rst $38                                         ; $7f0c: $ff
  rst $38                                         ; $7f0d: $ff
  rst $38                                         ; $7f0e: $ff
  rst $38                                         ; $7f0f: $ff
  rst $38                                         ; $7f10: $ff
  rst $38                                         ; $7f11: $ff
  rst $38                                         ; $7f12: $ff
  rst $38                                         ; $7f13: $ff
  rst $38                                         ; $7f14: $ff
  rst $38                                         ; $7f15: $ff
  rst $38                                         ; $7f16: $ff
  rst $38                                         ; $7f17: $ff
  rst $38                                         ; $7f18: $ff
  rst $38                                         ; $7f19: $ff
  rst $38                                         ; $7f1a: $ff
  rst $38                                         ; $7f1b: $ff
  rst $38                                         ; $7f1c: $ff
  rst $38                                         ; $7f1d: $ff
  rst $38                                         ; $7f1e: $ff
  rst $38                                         ; $7f1f: $ff
  rst $38                                         ; $7f20: $ff
  rst $38                                         ; $7f21: $ff
  rst $38                                         ; $7f22: $ff
  rst $38                                         ; $7f23: $ff
  rst $38                                         ; $7f24: $ff
  rst $38                                         ; $7f25: $ff
  rst $38                                         ; $7f26: $ff
  rst $38                                         ; $7f27: $ff
  rst $38                                         ; $7f28: $ff
  rst $38                                         ; $7f29: $ff
  rst $38                                         ; $7f2a: $ff
  rst $38                                         ; $7f2b: $ff
  rst $38                                         ; $7f2c: $ff
  rst $38                                         ; $7f2d: $ff
  rst $38                                         ; $7f2e: $ff
  rst $38                                         ; $7f2f: $ff
  rst $38                                         ; $7f30: $ff
  rst $38                                         ; $7f31: $ff
  rst $38                                         ; $7f32: $ff
  rst $38                                         ; $7f33: $ff
  rst $38                                         ; $7f34: $ff
  rst $38                                         ; $7f35: $ff
  rst $38                                         ; $7f36: $ff
  rst $38                                         ; $7f37: $ff
  rst $38                                         ; $7f38: $ff
  rst $38                                         ; $7f39: $ff
  rst $38                                         ; $7f3a: $ff
  rst $38                                         ; $7f3b: $ff
  rst $38                                         ; $7f3c: $ff
  rst $38                                         ; $7f3d: $ff
  rst $38                                         ; $7f3e: $ff
  rst $38                                         ; $7f3f: $ff
  rst $38                                         ; $7f40: $ff
  rst $38                                         ; $7f41: $ff
  rst $38                                         ; $7f42: $ff
  rst $38                                         ; $7f43: $ff
  rst $38                                         ; $7f44: $ff
  rst $38                                         ; $7f45: $ff
  rst $38                                         ; $7f46: $ff
  rst $38                                         ; $7f47: $ff
  rst $38                                         ; $7f48: $ff
  rst $38                                         ; $7f49: $ff
  rst $38                                         ; $7f4a: $ff
  rst $38                                         ; $7f4b: $ff
  rst $38                                         ; $7f4c: $ff
  rst $38                                         ; $7f4d: $ff
  rst $38                                         ; $7f4e: $ff
  rst $38                                         ; $7f4f: $ff
  rst $38                                         ; $7f50: $ff
  rst $38                                         ; $7f51: $ff
  rst $38                                         ; $7f52: $ff
  rst $38                                         ; $7f53: $ff
  rst $38                                         ; $7f54: $ff
  rst $38                                         ; $7f55: $ff
  rst $38                                         ; $7f56: $ff
  rst $38                                         ; $7f57: $ff
  rst $38                                         ; $7f58: $ff
  rst $38                                         ; $7f59: $ff
  rst $38                                         ; $7f5a: $ff
  rst $38                                         ; $7f5b: $ff
  rst $38                                         ; $7f5c: $ff
  rst $38                                         ; $7f5d: $ff
  rst $38                                         ; $7f5e: $ff
  rst $38                                         ; $7f5f: $ff
  rst $38                                         ; $7f60: $ff
  rst $38                                         ; $7f61: $ff
  rst $38                                         ; $7f62: $ff
  rst $38                                         ; $7f63: $ff
  rst $38                                         ; $7f64: $ff
  rst $38                                         ; $7f65: $ff
  rst $38                                         ; $7f66: $ff
  rst $38                                         ; $7f67: $ff
  rst $38                                         ; $7f68: $ff
  rst $38                                         ; $7f69: $ff
  rst $38                                         ; $7f6a: $ff
  rst $38                                         ; $7f6b: $ff
  rst $38                                         ; $7f6c: $ff
  rst $38                                         ; $7f6d: $ff
  rst $38                                         ; $7f6e: $ff
  rst $38                                         ; $7f6f: $ff
  rst $38                                         ; $7f70: $ff
  rst $38                                         ; $7f71: $ff
  rst $38                                         ; $7f72: $ff
  rst $38                                         ; $7f73: $ff
  rst $38                                         ; $7f74: $ff
  rst $38                                         ; $7f75: $ff
  rst $38                                         ; $7f76: $ff
  rst $38                                         ; $7f77: $ff
  rst $38                                         ; $7f78: $ff
  rst $38                                         ; $7f79: $ff
  rst $38                                         ; $7f7a: $ff
  rst $38                                         ; $7f7b: $ff
  rst $38                                         ; $7f7c: $ff
  rst $38                                         ; $7f7d: $ff
  rst $38                                         ; $7f7e: $ff
  rst $38                                         ; $7f7f: $ff
  rst $38                                         ; $7f80: $ff
  rst $38                                         ; $7f81: $ff
  rst $38                                         ; $7f82: $ff
  rst $38                                         ; $7f83: $ff
  rst $38                                         ; $7f84: $ff
  rst $38                                         ; $7f85: $ff
  rst $38                                         ; $7f86: $ff
  rst $38                                         ; $7f87: $ff
  rst $38                                         ; $7f88: $ff
  rst $38                                         ; $7f89: $ff
  rst $38                                         ; $7f8a: $ff
  rst $38                                         ; $7f8b: $ff
  rst $38                                         ; $7f8c: $ff
  rst $38                                         ; $7f8d: $ff
  rst $38                                         ; $7f8e: $ff
  rst $38                                         ; $7f8f: $ff
  rst $38                                         ; $7f90: $ff
  rst $38                                         ; $7f91: $ff
  rst $38                                         ; $7f92: $ff
  rst $38                                         ; $7f93: $ff
  rst $38                                         ; $7f94: $ff
  rst $38                                         ; $7f95: $ff
  rst $38                                         ; $7f96: $ff
  rst $38                                         ; $7f97: $ff
  rst $38                                         ; $7f98: $ff
  rst $38                                         ; $7f99: $ff
  rst $38                                         ; $7f9a: $ff
  rst $38                                         ; $7f9b: $ff
  rst $38                                         ; $7f9c: $ff
  rst $38                                         ; $7f9d: $ff
  rst $38                                         ; $7f9e: $ff
  rst $38                                         ; $7f9f: $ff
  rst $38                                         ; $7fa0: $ff
  rst $38                                         ; $7fa1: $ff
  rst $38                                         ; $7fa2: $ff
  rst $38                                         ; $7fa3: $ff
  rst $38                                         ; $7fa4: $ff
  rst $38                                         ; $7fa5: $ff
  rst $38                                         ; $7fa6: $ff
  rst $38                                         ; $7fa7: $ff
  rst $38                                         ; $7fa8: $ff
  rst $38                                         ; $7fa9: $ff
  rst $38                                         ; $7faa: $ff
  rst $38                                         ; $7fab: $ff
  rst $38                                         ; $7fac: $ff
  rst $38                                         ; $7fad: $ff
  rst $38                                         ; $7fae: $ff
  rst $38                                         ; $7faf: $ff
  rst $38                                         ; $7fb0: $ff
  rst $38                                         ; $7fb1: $ff
  rst $38                                         ; $7fb2: $ff
  rst $38                                         ; $7fb3: $ff
  rst $38                                         ; $7fb4: $ff
  rst $38                                         ; $7fb5: $ff
  rst $38                                         ; $7fb6: $ff
  rst $38                                         ; $7fb7: $ff
  rst $38                                         ; $7fb8: $ff
  rst $38                                         ; $7fb9: $ff
  rst $38                                         ; $7fba: $ff
  rst $38                                         ; $7fbb: $ff
  rst $38                                         ; $7fbc: $ff
  rst $38                                         ; $7fbd: $ff
  rst $38                                         ; $7fbe: $ff
  rst $38                                         ; $7fbf: $ff
  rst $38                                         ; $7fc0: $ff
  rst $38                                         ; $7fc1: $ff
  rst $38                                         ; $7fc2: $ff
  rst $38                                         ; $7fc3: $ff
  rst $38                                         ; $7fc4: $ff
  rst $38                                         ; $7fc5: $ff
  rst $38                                         ; $7fc6: $ff
  rst $38                                         ; $7fc7: $ff
  rst $38                                         ; $7fc8: $ff
  rst $38                                         ; $7fc9: $ff
  rst $38                                         ; $7fca: $ff
  rst $38                                         ; $7fcb: $ff
  rst $38                                         ; $7fcc: $ff
  rst $38                                         ; $7fcd: $ff
  rst $38                                         ; $7fce: $ff
  rst $38                                         ; $7fcf: $ff
  rst $38                                         ; $7fd0: $ff
  rst $38                                         ; $7fd1: $ff
  rst $38                                         ; $7fd2: $ff
  rst $38                                         ; $7fd3: $ff
  rst $38                                         ; $7fd4: $ff
  rst $38                                         ; $7fd5: $ff
  rst $38                                         ; $7fd6: $ff
  rst $38                                         ; $7fd7: $ff
  rst $38                                         ; $7fd8: $ff
  rst $38                                         ; $7fd9: $ff
  rst $38                                         ; $7fda: $ff
  rst $38                                         ; $7fdb: $ff
  rst $38                                         ; $7fdc: $ff
  rst $38                                         ; $7fdd: $ff
  rst $38                                         ; $7fde: $ff
  rst $38                                         ; $7fdf: $ff
  rst $38                                         ; $7fe0: $ff
  rst $38                                         ; $7fe1: $ff
  rst $38                                         ; $7fe2: $ff
  rst $38                                         ; $7fe3: $ff
  rst $38                                         ; $7fe4: $ff
  rst $38                                         ; $7fe5: $ff
  rst $38                                         ; $7fe6: $ff
  rst $38                                         ; $7fe7: $ff
  rst $38                                         ; $7fe8: $ff
  rst $38                                         ; $7fe9: $ff
  rst $38                                         ; $7fea: $ff
  rst $38                                         ; $7feb: $ff
  rst $38                                         ; $7fec: $ff
  rst $38                                         ; $7fed: $ff
  rst $38                                         ; $7fee: $ff
  rst $38                                         ; $7fef: $ff
  rst $38                                         ; $7ff0: $ff
  rst $38                                         ; $7ff1: $ff
  rst $38                                         ; $7ff2: $ff
  rst $38                                         ; $7ff3: $ff
  rst $38                                         ; $7ff4: $ff
  rst $38                                         ; $7ff5: $ff
  rst $38                                         ; $7ff6: $ff
  rst $38                                         ; $7ff7: $ff
  rst $38                                         ; $7ff8: $ff
  rst $38                                         ; $7ff9: $ff
  rst $38                                         ; $7ffa: $ff
  rst $38                                         ; $7ffb: $ff
  rst $38                                         ; $7ffc: $ff
  rst $38                                         ; $7ffd: $ff
  rst $38                                         ; $7ffe: $ff
  rst $38                                         ; $7fff: $ff
