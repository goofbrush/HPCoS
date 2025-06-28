; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

  db $08

  ld hl, $0030                                    ; $4001: $21 $30 $00
  add hl, bc                                      ; $4004: $09
  ld a, [hl]                                      ; $4005: $7e
  inc hl                                          ; $4006: $23
  ld d, [hl]                                      ; $4007: $56
  inc hl                                          ; $4008: $23
  add [hl]                                        ; $4009: $86
  ld [hl], a                                      ; $400a: $77
  inc hl                                          ; $400b: $23
  ld a, d                                         ; $400c: $7a
  adc [hl]                                        ; $400d: $8e
  ld [hl], a                                      ; $400e: $77
  inc hl                                          ; $400f: $23
  ld a, [hl]                                      ; $4010: $7e
  inc hl                                          ; $4011: $23
  ld d, [hl]                                      ; $4012: $56
  inc hl                                          ; $4013: $23
  add [hl]                                        ; $4014: $86
  ld [hl], a                                      ; $4015: $77
  inc hl                                          ; $4016: $23
  ld a, d                                         ; $4017: $7a
  adc [hl]                                        ; $4018: $8e
  ld [hl], a                                      ; $4019: $77
  ret                                             ; $401a: $c9


  ld hl, $0033                                    ; $401b: $21 $33 $00
  call Call_008_4054                              ; $401e: $cd $54 $40
  ld hl, $0038                                    ; $4021: $21 $38 $00
  call Call_008_406e                              ; $4024: $cd $6e $40
  ld hl, $0006                                    ; $4027: $21 $06 $00
  add hl, bc                                      ; $402a: $09
  add [hl]                                        ; $402b: $86
  ld e, a                                         ; $402c: $5f
  inc hl                                          ; $402d: $23
  ld a, [hl]                                      ; $402e: $7e
  adc d                                           ; $402f: $8a
  ld hl, $000b                                    ; $4030: $21 $0b $00
  add hl, bc                                      ; $4033: $09
  ld [hl], e                                      ; $4034: $73
  inc hl                                          ; $4035: $23
  ld [hl], a                                      ; $4036: $77
  ld hl, $0037                                    ; $4037: $21 $37 $00
  call Call_008_4054                              ; $403a: $cd $54 $40
  ld hl, $0039                                    ; $403d: $21 $39 $00
  call Call_008_406e                              ; $4040: $cd $6e $40
  ld hl, $0009                                    ; $4043: $21 $09 $00
  add hl, bc                                      ; $4046: $09
  add [hl]                                        ; $4047: $86
  ld e, a                                         ; $4048: $5f
  inc hl                                          ; $4049: $23
  ld a, [hl]                                      ; $404a: $7e
  adc d                                           ; $404b: $8a
  ld hl, $000d                                    ; $404c: $21 $0d $00
  add hl, bc                                      ; $404f: $09
  ld [hl], e                                      ; $4050: $73
  inc hl                                          ; $4051: $23
  ld [hl], a                                      ; $4052: $77
  ret                                             ; $4053: $c9


Call_008_4054:
  add hl, bc                                      ; $4054: $09
  ld l, [hl]                                      ; $4055: $6e
  ld h, $41                                       ; $4056: $26 $41
  ld a, [hl]                                      ; $4058: $7e
  ret                                             ; $4059: $c9


  add $40                                         ; $405a: $c6 $40
  push hl                                         ; $405c: $e5
  ld l, a                                         ; $405d: $6f
  ld h, $41                                       ; $405e: $26 $41
  ld a, [hl]                                      ; $4060: $7e
  pop hl                                          ; $4061: $e1
  ret                                             ; $4062: $c9


  add $40                                         ; $4063: $c6 $40
  ld l, a                                         ; $4065: $6f
  ld h, $41                                       ; $4066: $26 $41
  ld a, [hl]                                      ; $4068: $7e
  add a                                           ; $4069: $87
  ld l, a                                         ; $406a: $6f
  sbc a                                           ; $406b: $9f
  ld h, a                                         ; $406c: $67
  ret                                             ; $406d: $c9


Call_008_406e:
  add hl, bc                                      ; $406e: $09
  ld l, [hl]                                      ; $406f: $6e

jr_008_4070:
  dec l                                           ; $4070: $2d
  bit 7, l                                        ; $4071: $cb $7d
  jr nz, jr_008_4079                              ; $4073: $20 $04

  sra a                                           ; $4075: $cb $2f
  jr jr_008_4070                                  ; $4077: $18 $f7

jr_008_4079:
  ld d, $00                                       ; $4079: $16 $00
  bit 7, a                                        ; $407b: $cb $7f
  ret z                                           ; $407d: $c8

  dec d                                           ; $407e: $15
  ret                                             ; $407f: $c9


  rst $38                                         ; $4080: $ff
  rst $38                                         ; $4081: $ff
  rst $38                                         ; $4082: $ff
  rst $38                                         ; $4083: $ff
  rst $38                                         ; $4084: $ff
  rst $38                                         ; $4085: $ff
  rst $38                                         ; $4086: $ff
  rst $38                                         ; $4087: $ff
  rst $38                                         ; $4088: $ff
  rst $38                                         ; $4089: $ff
  rst $38                                         ; $408a: $ff
  rst $38                                         ; $408b: $ff
  rst $38                                         ; $408c: $ff
  rst $38                                         ; $408d: $ff
  rst $38                                         ; $408e: $ff
  rst $38                                         ; $408f: $ff
  rst $38                                         ; $4090: $ff
  rst $38                                         ; $4091: $ff
  rst $38                                         ; $4092: $ff
  rst $38                                         ; $4093: $ff
  rst $38                                         ; $4094: $ff
  rst $38                                         ; $4095: $ff
  rst $38                                         ; $4096: $ff
  rst $38                                         ; $4097: $ff
  rst $38                                         ; $4098: $ff
  rst $38                                         ; $4099: $ff
  rst $38                                         ; $409a: $ff
  rst $38                                         ; $409b: $ff
  rst $38                                         ; $409c: $ff
  rst $38                                         ; $409d: $ff
  rst $38                                         ; $409e: $ff
  rst $38                                         ; $409f: $ff
  rst $38                                         ; $40a0: $ff
  rst $38                                         ; $40a1: $ff
  rst $38                                         ; $40a2: $ff
  rst $38                                         ; $40a3: $ff
  rst $38                                         ; $40a4: $ff
  rst $38                                         ; $40a5: $ff
  rst $38                                         ; $40a6: $ff
  rst $38                                         ; $40a7: $ff
  rst $38                                         ; $40a8: $ff
  rst $38                                         ; $40a9: $ff
  rst $38                                         ; $40aa: $ff
  rst $38                                         ; $40ab: $ff
  rst $38                                         ; $40ac: $ff
  rst $38                                         ; $40ad: $ff
  rst $38                                         ; $40ae: $ff
  rst $38                                         ; $40af: $ff
  rst $38                                         ; $40b0: $ff
  rst $38                                         ; $40b1: $ff
  rst $38                                         ; $40b2: $ff
  rst $38                                         ; $40b3: $ff
  rst $38                                         ; $40b4: $ff
  rst $38                                         ; $40b5: $ff
  rst $38                                         ; $40b6: $ff
  rst $38                                         ; $40b7: $ff
  rst $38                                         ; $40b8: $ff
  rst $38                                         ; $40b9: $ff
  rst $38                                         ; $40ba: $ff
  rst $38                                         ; $40bb: $ff
  rst $38                                         ; $40bc: $ff
  rst $38                                         ; $40bd: $ff
  rst $38                                         ; $40be: $ff
  rst $38                                         ; $40bf: $ff
  rst $38                                         ; $40c0: $ff
  rst $38                                         ; $40c1: $ff
  rst $38                                         ; $40c2: $ff
  rst $38                                         ; $40c3: $ff
  rst $38                                         ; $40c4: $ff
  rst $38                                         ; $40c5: $ff
  rst $38                                         ; $40c6: $ff
  rst $38                                         ; $40c7: $ff
  rst $38                                         ; $40c8: $ff
  rst $38                                         ; $40c9: $ff
  rst $38                                         ; $40ca: $ff
  rst $38                                         ; $40cb: $ff
  rst $38                                         ; $40cc: $ff
  rst $38                                         ; $40cd: $ff
  rst $38                                         ; $40ce: $ff
  rst $38                                         ; $40cf: $ff
  rst $38                                         ; $40d0: $ff
  rst $38                                         ; $40d1: $ff
  rst $38                                         ; $40d2: $ff
  rst $38                                         ; $40d3: $ff
  rst $38                                         ; $40d4: $ff
  rst $38                                         ; $40d5: $ff
  rst $38                                         ; $40d6: $ff
  rst $38                                         ; $40d7: $ff
  rst $38                                         ; $40d8: $ff
  rst $38                                         ; $40d9: $ff
  rst $38                                         ; $40da: $ff
  rst $38                                         ; $40db: $ff
  rst $38                                         ; $40dc: $ff
  rst $38                                         ; $40dd: $ff
  rst $38                                         ; $40de: $ff
  rst $38                                         ; $40df: $ff
  rst $38                                         ; $40e0: $ff
  rst $38                                         ; $40e1: $ff
  rst $38                                         ; $40e2: $ff
  rst $38                                         ; $40e3: $ff
  rst $38                                         ; $40e4: $ff
  rst $38                                         ; $40e5: $ff
  rst $38                                         ; $40e6: $ff
  rst $38                                         ; $40e7: $ff
  rst $38                                         ; $40e8: $ff
  rst $38                                         ; $40e9: $ff
  rst $38                                         ; $40ea: $ff
  rst $38                                         ; $40eb: $ff
  rst $38                                         ; $40ec: $ff
  rst $38                                         ; $40ed: $ff
  rst $38                                         ; $40ee: $ff
  rst $38                                         ; $40ef: $ff
  rst $38                                         ; $40f0: $ff
  rst $38                                         ; $40f1: $ff
  rst $38                                         ; $40f2: $ff
  rst $38                                         ; $40f3: $ff
  rst $38                                         ; $40f4: $ff
  rst $38                                         ; $40f5: $ff
  rst $38                                         ; $40f6: $ff
  rst $38                                         ; $40f7: $ff
  rst $38                                         ; $40f8: $ff
  rst $38                                         ; $40f9: $ff
  rst $38                                         ; $40fa: $ff
  rst $38                                         ; $40fb: $ff
  rst $38                                         ; $40fc: $ff
  rst $38                                         ; $40fd: $ff
  rst $38                                         ; $40fe: $ff
  rst $38                                         ; $40ff: $ff

  db $00, $03, $06, $09, $0c, $0f, $12, $15, $18, $1b, $1e, $21, $24, $27, $2a, $2d
  db $30, $33, $36, $39, $3b, $3e, $41, $43, $46, $49, $4b, $4e, $50, $52, $55, $57
  db $59, $5b, $5e, $60, $62, $64, $66, $67, $69, $6b, $6c, $6e, $70, $71, $72, $74
  db $75, $76, $77, $78, $79, $7a, $7b, $7b, $7c, $7d, $7d, $7e, $7e, $7e, $7e, $7e
  db $7f, $7e, $7e, $7e, $7e, $7e, $7d, $7d, $7c, $7b, $7b, $7a, $79, $78, $77, $76
  db $75, $74, $72, $71, $70, $6e, $6c, $6b, $69, $67, $66, $64, $62, $60, $5e, $5b
  db $59, $57, $55, $52, $50, $4e, $4b, $49, $46, $43, $41, $3e, $3b, $39, $36, $33
  db $30, $2d, $2a, $27, $24, $21, $1e, $1b, $18, $15, $12, $0f, $0c, $09, $06, $03
  db $00, $fd, $fa, $f7, $f4, $f1, $ee, $eb, $e8, $e5, $e2, $df, $dc, $d9, $d6, $d3
  db $d0, $cd, $ca, $c7, $c5, $c2, $bf, $bd, $ba, $b7, $b5, $b2, $b0, $ae, $ab, $a9
  db $a7, $a5, $a2, $a0, $9e, $9c, $9a, $99, $97, $95, $94, $92, $90, $8f, $8e, $8c
  db $8b, $8a, $89, $88, $87, $86, $85, $85, $84, $83, $83, $82, $82, $82, $82, $82
  db $81, $82, $82, $82, $82, $82, $83, $83, $84, $85, $85, $86, $87, $88, $89, $8a
  db $8b, $8c, $8e, $8f, $90, $92, $94, $95, $97, $99, $9a, $9c, $9e, $a0, $a2, $a5
  db $a7, $a9, $ab, $ae, $b0, $b2, $b5, $b7, $ba, $bd, $bf, $c2, $c5, $c7, $ca, $cd
  db $d0, $d3, $d6, $d9, $dc, $df, $e2, $e5, $e8, $eb, $ee, $f1, $f4, $f7, $fa, $fd
  db $01, $07, $80, $00, $00, $00, $99, $26, $01, $02, $01, $02

  db $10                                          ; $420c: $10
  ld b, d                                         ; $420d: $42

  db $1f, $42

  ld [bc], a                                      ; $4210: $02
  nop                                             ; $4211: $00
  nop                                             ; $4212: $00
  inc d                                           ; $4213: $14
  nop                                             ; $4214: $00
  ld a, [bc]                                      ; $4215: $0a
  ld a, [bc]                                      ; $4216: $0a
  ld bc, $0a01                                    ; $4217: $01 $01 $0a
  ld [de], a                                      ; $421a: $12
  ld a, [bc]                                      ; $421b: $0a
  ld a, [bc]                                      ; $421c: $0a
  ld a, [bc]                                      ; $421d: $0a
  db $01                                          ; $421e: $01

  db $02, $00, $00, $14, $0a, $0a, $0a, $01, $01, $00, $12, $0a, $0a, $0a, $01, $20
  db $01, $35, $42, $80, $02, $40, $8a, $d1, $23, $01, $3e, $42, $94, $02, $40, $ca
  db $d1, $ea, $d1, $21, $00, $42, $c3, $52, $29, $21, $8d, $7b, $cd, $f3, $33, $03
  db $88, $7e, $3e, $10, $cd, $f3, $33, $01, $21, $69, $21, $2e, $42, $cd, $13, $30
  db $3e, $78, $ea, $59, $c1, $3e, $02, $ea, $a2, $c1, $21, $d7, $20, $cd, $f3, $33
  db $01, $28, $66, $fa, $3d, $ce, $e6, $01, $e0, $d3, $e0, $cf, $21, $b8, $46

  call Call_000_33f3                              ; $427e: $cd $f3 $33

  db $06, $f0, $50

jr_008_4284:
  rst $18                                         ; $4284: $df
  ld bc, $0095                                    ; $4285: $01 $95 $00
  ld de, $0310                                    ; $4288: $11 $10 $03
  ld hl, $01a2                                    ; $428b: $21 $a2 $01
  call Call_000_14a1                              ; $428e: $cd $a1 $14
  ld hl, $4237                                    ; $4291: $21 $37 $42
  call Call_000_3013                              ; $4294: $cd $13 $30
  ld a, $78                                       ; $4297: $3e $78
  ld [$c159], a                                   ; $4299: $ea $59 $c1
  ld a, $02                                       ; $429c: $3e $02
  ld [$c1a2], a                                   ; $429e: $ea $a2 $c1
  ld hl, $20da                                    ; $42a1: $21 $da $20
  ldh a, [$ffd3]                                  ; $42a4: $f0 $d3
  call Call_000_3173                              ; $42a6: $cd $73 $31
  call Call_000_33f3                              ; $42a9: $cd $f3 $33

  db $01, $28, $66

  ldh a, [$ffd3]                                  ; $42af: $f0 $d3
  ld hl, $420c                                    ; $42b1: $21 $0c $42
  call Call_000_3182                              ; $42b4: $cd $82 $31
  call Call_000_1411                              ; $42b7: $cd $11 $14
  jp RST_20                                       ; $42ba: $c3 $20 $00


  ldh a, [$ffa6]                                  ; $42bd: $f0 $a6
  bit 0, a                                        ; $42bf: $cb $47
  jr nz, jr_008_42d4                              ; $42c1: $20 $11

  and $30                                         ; $42c3: $e6 $30
  ret z                                           ; $42c5: $c8

  call Call_000_33f3                              ; $42c6: $cd $f3 $33
  ld b, $17                                       ; $42c9: $06 $17
  ld d, c                                         ; $42cb: $51
  ld hl, $ffcf                                    ; $42cc: $21 $cf $ff
  cp [hl]                                         ; $42cf: $be
  ret z                                           ; $42d0: $c8

  ld [hl], a                                      ; $42d1: $77
  jr jr_008_4284                                  ; $42d2: $18 $b0

jr_008_42d4:
  ld a, $00                                       ; $42d4: $3e $00
  call Call_000_392b                              ; $42d6: $cd $2b $39
  ldh a, [rSVBK]                                  ; $42d9: $f0 $70
  push af                                         ; $42db: $f5
  ld a, $06                                       ; $42dc: $3e $06
  ldh [rSVBK], a                                  ; $42de: $e0 $70
  ldh a, [$ffd3]                                  ; $42e0: $f0 $d3
  ld [$ce3d], a                                   ; $42e2: $ea $3d $ce
  ld [$ddbb], a                                   ; $42e5: $ea $bb $dd
  pop af                                          ; $42e8: $f1
  ldh [rSVBK], a                                  ; $42e9: $e0 $70
  ld a, $0b                                       ; $42eb: $3e $0b
  call Call_000_261e                              ; $42ed: $cd $1e $26
  ld a, $02                                       ; $42f0: $3e $02
  ld [$c0a0], a                                   ; $42f2: $ea $a0 $c0
  ldh a, [rSVBK]                                  ; $42f5: $f0 $70
  push af                                         ; $42f7: $f5
  ld a, $06                                       ; $42f8: $3e $06
  ldh [rSVBK], a                                  ; $42fa: $e0 $70
  ld hl, $dcb3                                    ; $42fc: $21 $b3 $dc
  ld a, [$ce3d]                                   ; $42ff: $fa $3d $ce
  or a                                            ; $4302: $b7
  jr nz, jr_008_4328                              ; $4303: $20 $23

  ld a, $1b                                       ; $4305: $3e $1b
  call Call_000_32c0                              ; $4307: $cd $c0 $32
  ld a, $25                                       ; $430a: $3e $25
  call Call_000_32c0                              ; $430c: $cd $c0 $32
  ld a, $01                                       ; $430f: $3e $01
  ld [$dc7d], a                                   ; $4311: $ea $7d $dc
  inc a                                           ; $4314: $3c
  ld [$dc80], a                                   ; $4315: $ea $80 $dc
  ld [$dc82], a                                   ; $4318: $ea $82 $dc
  ld [$dc8d], a                                   ; $431b: $ea $8d $dc
  ld [$dca7], a                                   ; $431e: $ea $a7 $dc
  ld [$dca8], a                                   ; $4321: $ea $a8 $dc
  pop af                                          ; $4324: $f1
  ldh [rSVBK], a                                  ; $4325: $e0 $70
  ret                                             ; $4327: $c9


jr_008_4328:
  ld a, $04                                       ; $4328: $3e $04
  call Call_000_32c0                              ; $432a: $cd $c0 $32
  ld a, $0f                                       ; $432d: $3e $0f
  call Call_000_32c0                              ; $432f: $cd $c0 $32
  ld a, $01                                       ; $4332: $3e $01
  ld [$dc4e], a                                   ; $4334: $ea $4e $dc
  inc a                                           ; $4337: $3c
  ld [$dc51], a                                   ; $4338: $ea $51 $dc
  ld [$dc54], a                                   ; $433b: $ea $54 $dc
  ld [$dc78], a                                   ; $433e: $ea $78 $dc
  ld [$dc84], a                                   ; $4341: $ea $84 $dc
  ld [$dc89], a                                   ; $4344: $ea $89 $dc
  pop af                                          ; $4347: $f1
  ldh [rSVBK], a                                  ; $4348: $e0 $70
  ret                                             ; $434a: $c9


  db $60, $24, $85, $4a, $24, $d0, $10, $87

  add e                                           ; $4353: $83
  ld c, d                                         ; $4354: $4a

  db $6d, $4a

  ld d, b                                         ; $4357: $50
  ld c, d                                         ; $4358: $4a
  ld d, b                                         ; $4359: $50
  ld c, d                                         ; $435a: $4a

  db $3f, $4a, $30, $4a, $17, $4a, $ec, $49, $dd, $49, $ce, $49, $bf, $49, $bf, $49
  db $a2, $49, $4c, $49

  dec e                                           ; $436f: $1d
  ld c, c                                         ; $4370: $49
  ld b, $49                                       ; $4371: $06 $49
  jp nc, $b648                                    ; $4373: $d2 $48 $b6

  ld c, b                                         ; $4376: $48

  db $76, $48

  sbc d                                           ; $4379: $9a
  ld b, h                                         ; $437a: $44

  db $71, $44, $3a, $44, $c3, $43, $b1, $43, $99, $43, $99, $43, $99, $43, $99, $43
  db $99, $43, $99, $43, $99, $43, $99, $43, $99, $43, $99, $43, $99, $43, $24, $5e
  db $4b, $2a, $a4, $43, $00, $01, $18, $99, $43

  inc h                                           ; $43a4: $24
  ld h, l                                         ; $43a5: $65
  ld de, $20a2                                    ; $43a6: $11 $a2 $20
  inc h                                           ; $43a9: $24
  ld h, l                                         ; $43aa: $65
  ld de, $e0a2                                    ; $43ab: $11 $a2 $e0
  ld d, a                                         ; $43ae: $57
  nop                                             ; $43af: $00
  nop                                             ; $43b0: $00

  db $12, $04, $24, $fe, $4a, $2a, $c1, $43

  inc h                                           ; $43b9: $24
  ld h, l                                         ; $43ba: $65
  ld de, $e0a2                                    ; $43bb: $11 $a2 $e0
  inc h                                           ; $43be: $24
  ld h, l                                         ; $43bf: $65
  db $11                                          ; $43c0: $11

  db $00, $00, $12, $04, $24, $fe, $4a, $27, $38, $44, $00, $01, $24, $f8, $4a, $27
  db $cb, $43

  inc h                                           ; $43d3: $24
  ld h, l                                         ; $43d4: $65
  ld de, $20a2                                    ; $43d5: $11 $a2 $20
  inc h                                           ; $43d8: $24
  ld h, l                                         ; $43d9: $65
  ld de, $0200                                    ; $43da: $11 $00 $02
  inc h                                           ; $43dd: $24
  ld h, l                                         ; $43de: $65
  ld de, $e0a2                                    ; $43df: $11 $a2 $e0
  inc h                                           ; $43e2: $24
  ld h, l                                         ; $43e3: $65
  ld de, $0200                                    ; $43e4: $11 $00 $02
  inc h                                           ; $43e7: $24
  ld h, l                                         ; $43e8: $65
  ld de, $20a2                                    ; $43e9: $11 $a2 $20
  inc h                                           ; $43ec: $24
  ld h, l                                         ; $43ed: $65
  ld de, $0200                                    ; $43ee: $11 $00 $02
  inc h                                           ; $43f1: $24
  ld h, l                                         ; $43f2: $65
  ld de, $e0a2                                    ; $43f3: $11 $a2 $e0
  inc h                                           ; $43f6: $24
  ld h, l                                         ; $43f7: $65
  ld de, $0200                                    ; $43f8: $11 $00 $02
  inc h                                           ; $43fb: $24
  ld h, l                                         ; $43fc: $65
  ld de, $20a2                                    ; $43fd: $11 $a2 $20
  inc h                                           ; $4400: $24
  ld h, l                                         ; $4401: $65
  ld de, $0200                                    ; $4402: $11 $00 $02
  inc h                                           ; $4405: $24
  ld h, l                                         ; $4406: $65
  ld de, $e0a2                                    ; $4407: $11 $a2 $e0
  inc h                                           ; $440a: $24
  ld h, l                                         ; $440b: $65
  ld de, $0200                                    ; $440c: $11 $00 $02
  inc h                                           ; $440f: $24
  ld h, l                                         ; $4410: $65
  ld de, $20a2                                    ; $4411: $11 $a2 $20
  inc h                                           ; $4414: $24
  ld h, l                                         ; $4415: $65
  ld de, $0200                                    ; $4416: $11 $00 $02
  inc h                                           ; $4419: $24
  ld h, l                                         ; $441a: $65
  ld de, $e0a2                                    ; $441b: $11 $a2 $e0
  inc h                                           ; $441e: $24
  ld h, l                                         ; $441f: $65
  ld de, $0200                                    ; $4420: $11 $00 $02
  inc h                                           ; $4423: $24
  ld h, l                                         ; $4424: $65
  ld de, $20a2                                    ; $4425: $11 $a2 $20
  inc h                                           ; $4428: $24
  ld h, l                                         ; $4429: $65
  ld de, $0200                                    ; $442a: $11 $00 $02
  inc h                                           ; $442d: $24
  ld h, l                                         ; $442e: $65
  ld de, $e0a2                                    ; $442f: $11 $a2 $e0
  inc h                                           ; $4432: $24
  ld h, l                                         ; $4433: $65
  ld de, $0424                                    ; $4434: $11 $24 $04
  ld c, e                                         ; $4437: $4b
  nop                                             ; $4438: $00
  nop                                             ; $4439: $00

  db $12, $04, $24, $65, $11, $a2, $20, $24, $65, $11, $9f, $20, $24, $65, $11, $9f
  db $e0, $a2, $e0, $00, $01, $24, $1e, $4b, $27, $4d, $44

  inc h                                           ; $4455: $24
  ld h, l                                         ; $4456: $65
  ld de, $20a2                                    ; $4457: $11 $a2 $20
  inc h                                           ; $445a: $24
  ld h, l                                         ; $445b: $65
  ld de, $209f                                    ; $445c: $11 $9f $20
  inc h                                           ; $445f: $24
  ld h, l                                         ; $4460: $65
  ld de, $e09f                                    ; $4461: $11 $9f $e0
  and d                                           ; $4464: $a2
  ldh [rP1], a                                    ; $4465: $e0 $00
  ld bc, $1e24                                    ; $4467: $01 $24 $1e
  ld c, e                                         ; $446a: $4b
  ld a, [hl+]                                     ; $446b: $2a
  ld h, [hl]                                      ; $446c: $66
  ld b, h                                         ; $446d: $44
  jr jr_008_44aa                                  ; $446e: $18 $3a

  ld b, h                                         ; $4470: $44

  db $12, $04, $24, $65, $11, $a2, $20, $24, $65, $11, $a2, $e0, $00, $01, $24, $18
  db $4b, $27, $7d, $44

  inc h                                           ; $4485: $24
  ld h, l                                         ; $4486: $65
  ld de, $20a2                                    ; $4487: $11 $a2 $20
  inc h                                           ; $448a: $24
  ld h, l                                         ; $448b: $65
  ld de, $e0a2                                    ; $448c: $11 $a2 $e0
  nop                                             ; $448f: $00
  ld bc, $1824                                    ; $4490: $01 $24 $18
  ld c, e                                         ; $4493: $4b
  ld a, [hl+]                                     ; $4494: $2a
  adc a                                           ; $4495: $8f
  ld b, h                                         ; $4496: $44
  jr jr_008_450a                                  ; $4497: $18 $71

  ld b, h                                         ; $4499: $44
  ld [de], a                                      ; $449a: $12
  inc b                                           ; $449b: $04
  nop                                             ; $449c: $00
  ld bc, $ec24                                    ; $449d: $01 $24 $ec
  ld c, d                                         ; $44a0: $4a
  daa                                             ; $44a1: $27
  sbc h                                           ; $44a2: $9c
  ld b, h                                         ; $44a3: $44
  inc h                                           ; $44a4: $24
  ld h, l                                         ; $44a5: $65
  ld de, $20a2                                    ; $44a6: $11 $a2 $20
  inc h                                           ; $44a9: $24

jr_008_44aa:
  ld h, l                                         ; $44aa: $65
  ld de, $e0a2                                    ; $44ab: $11 $a2 $e0
  nop                                             ; $44ae: $00
  ld bc, $6524                                    ; $44af: $01 $24 $65
  ld de, $20a2                                    ; $44b2: $11 $a2 $20
  inc h                                           ; $44b5: $24
  ld h, l                                         ; $44b6: $65
  ld de, $e0a2                                    ; $44b7: $11 $a2 $e0
  nop                                             ; $44ba: $00
  ld [bc], a                                      ; $44bb: $02
  inc h                                           ; $44bc: $24
  ld h, l                                         ; $44bd: $65
  ld de, $20a2                                    ; $44be: $11 $a2 $20
  inc h                                           ; $44c1: $24
  ld h, l                                         ; $44c2: $65
  ld de, $e0a2                                    ; $44c3: $11 $a2 $e0
  nop                                             ; $44c6: $00
  ld bc, $6524                                    ; $44c7: $01 $24 $65
  ld de, $209f                                    ; $44ca: $11 $9f $20
  inc h                                           ; $44cd: $24
  ld h, l                                         ; $44ce: $65
  ld de, $e09f                                    ; $44cf: $11 $9f $e0
  and d                                           ; $44d2: $a2
  jr nz, jr_008_44f9                              ; $44d3: $20 $24

  ld h, l                                         ; $44d5: $65
  ld de, $209f                                    ; $44d6: $11 $9f $20
  inc h                                           ; $44d9: $24
  ld h, l                                         ; $44da: $65
  ld de, $e09f                                    ; $44db: $11 $9f $e0
  and d                                           ; $44de: $a2
  ldh [rP1], a                                    ; $44df: $e0 $00
  ld [bc], a                                      ; $44e1: $02
  inc h                                           ; $44e2: $24
  ld h, l                                         ; $44e3: $65
  ld de, $209f                                    ; $44e4: $11 $9f $20
  inc h                                           ; $44e7: $24
  ld h, l                                         ; $44e8: $65
  ld de, $e09f                                    ; $44e9: $11 $9f $e0
  and d                                           ; $44ec: $a2
  jr nz, jr_008_4513                              ; $44ed: $20 $24

  ld h, l                                         ; $44ef: $65
  ld de, $209f                                    ; $44f0: $11 $9f $20
  inc h                                           ; $44f3: $24
  ld h, l                                         ; $44f4: $65
  ld de, $e09f                                    ; $44f5: $11 $9f $e0
  and d                                           ; $44f8: $a2

jr_008_44f9:
  ldh [rP1], a                                    ; $44f9: $e0 $00
  ld bc, $6524                                    ; $44fb: $01 $24 $65
  ld de, $209f                                    ; $44fe: $11 $9f $20
  inc h                                           ; $4501: $24
  ld h, l                                         ; $4502: $65
  ld de, $e09f                                    ; $4503: $11 $9f $e0
  and d                                           ; $4506: $a2
  jr nz, jr_008_452d                              ; $4507: $20 $24

  ld h, l                                         ; $4509: $65

jr_008_450a:
  ld de, $209f                                    ; $450a: $11 $9f $20
  inc h                                           ; $450d: $24
  ld h, l                                         ; $450e: $65
  ld de, $e09f                                    ; $450f: $11 $9f $e0
  and d                                           ; $4512: $a2

jr_008_4513:
  ldh [rP1], a                                    ; $4513: $e0 $00
  ld [bc], a                                      ; $4515: $02
  inc h                                           ; $4516: $24
  ld h, l                                         ; $4517: $65
  ld de, $209f                                    ; $4518: $11 $9f $20
  inc h                                           ; $451b: $24
  ld h, l                                         ; $451c: $65
  ld de, $e09f                                    ; $451d: $11 $9f $e0
  and d                                           ; $4520: $a2
  jr nz, jr_008_4547                              ; $4521: $20 $24

  ld h, l                                         ; $4523: $65
  ld de, $209f                                    ; $4524: $11 $9f $20
  inc h                                           ; $4527: $24
  ld h, l                                         ; $4528: $65
  ld de, $e09f                                    ; $4529: $11 $9f $e0
  and d                                           ; $452c: $a2

jr_008_452d:
  ldh [rP1], a                                    ; $452d: $e0 $00
  ld bc, $6524                                    ; $452f: $01 $24 $65
  ld de, $209f                                    ; $4532: $11 $9f $20
  inc h                                           ; $4535: $24
  ld h, l                                         ; $4536: $65
  ld de, $209f                                    ; $4537: $11 $9f $20
  inc h                                           ; $453a: $24
  ld h, l                                         ; $453b: $65
  ld de, $c09f                                    ; $453c: $11 $9f $c0
  and d                                           ; $453f: $a2
  jr nz, jr_008_4566                              ; $4540: $20 $24

  ld h, l                                         ; $4542: $65
  ld de, $209f                                    ; $4543: $11 $9f $20
  inc h                                           ; $4546: $24

jr_008_4547:
  ld h, l                                         ; $4547: $65
  ld de, $209f                                    ; $4548: $11 $9f $20
  inc h                                           ; $454b: $24
  ld h, l                                         ; $454c: $65
  ld de, $c09f                                    ; $454d: $11 $9f $c0
  and d                                           ; $4550: $a2
  ldh [rP1], a                                    ; $4551: $e0 $00
  ld [bc], a                                      ; $4553: $02
  inc h                                           ; $4554: $24
  ld h, l                                         ; $4555: $65
  ld de, $209f                                    ; $4556: $11 $9f $20
  inc h                                           ; $4559: $24
  ld h, l                                         ; $455a: $65
  ld de, $209f                                    ; $455b: $11 $9f $20
  inc h                                           ; $455e: $24
  ld h, l                                         ; $455f: $65
  ld de, $c09f                                    ; $4560: $11 $9f $c0
  and d                                           ; $4563: $a2
  jr nz, jr_008_458a                              ; $4564: $20 $24

jr_008_4566:
  ld h, l                                         ; $4566: $65
  ld de, $209f                                    ; $4567: $11 $9f $20
  inc h                                           ; $456a: $24
  ld h, l                                         ; $456b: $65
  ld de, $209f                                    ; $456c: $11 $9f $20
  inc h                                           ; $456f: $24
  ld h, l                                         ; $4570: $65
  ld de, $c09f                                    ; $4571: $11 $9f $c0
  and d                                           ; $4574: $a2
  ldh [rP1], a                                    ; $4575: $e0 $00
  ld bc, $6524                                    ; $4577: $01 $24 $65
  ld de, $209f                                    ; $457a: $11 $9f $20
  inc h                                           ; $457d: $24
  ld h, l                                         ; $457e: $65
  ld de, $209f                                    ; $457f: $11 $9f $20
  inc h                                           ; $4582: $24
  ld h, l                                         ; $4583: $65
  ld de, $c09f                                    ; $4584: $11 $9f $c0
  and d                                           ; $4587: $a2
  jr nz, jr_008_45ae                              ; $4588: $20 $24

jr_008_458a:
  ld h, l                                         ; $458a: $65
  ld de, $209f                                    ; $458b: $11 $9f $20
  inc h                                           ; $458e: $24
  ld h, l                                         ; $458f: $65
  ld de, $209f                                    ; $4590: $11 $9f $20
  inc h                                           ; $4593: $24
  ld h, l                                         ; $4594: $65
  ld de, $c09f                                    ; $4595: $11 $9f $c0
  and d                                           ; $4598: $a2
  ldh [rP1], a                                    ; $4599: $e0 $00
  ld [bc], a                                      ; $459b: $02
  inc h                                           ; $459c: $24
  ld h, l                                         ; $459d: $65
  ld de, $209f                                    ; $459e: $11 $9f $20
  inc h                                           ; $45a1: $24
  ld h, l                                         ; $45a2: $65
  ld de, $209f                                    ; $45a3: $11 $9f $20
  inc h                                           ; $45a6: $24
  ld h, l                                         ; $45a7: $65
  ld de, $c09f                                    ; $45a8: $11 $9f $c0
  and d                                           ; $45ab: $a2
  jr nz, jr_008_45d2                              ; $45ac: $20 $24

jr_008_45ae:
  ld h, l                                         ; $45ae: $65
  ld de, $209f                                    ; $45af: $11 $9f $20
  inc h                                           ; $45b2: $24
  ld h, l                                         ; $45b3: $65
  ld de, $209f                                    ; $45b4: $11 $9f $20
  inc h                                           ; $45b7: $24
  ld h, l                                         ; $45b8: $65
  ld de, $e09f                                    ; $45b9: $11 $9f $e0
  and d                                           ; $45bc: $a2
  jr nz, jr_008_45e3                              ; $45bd: $20 $24

  ld h, l                                         ; $45bf: $65
  ld de, $209f                                    ; $45c0: $11 $9f $20
  inc h                                           ; $45c3: $24
  ld h, l                                         ; $45c4: $65
  ld de, $c09f                                    ; $45c5: $11 $9f $c0
  and d                                           ; $45c8: $a2
  ret nz                                          ; $45c9: $c0

  nop                                             ; $45ca: $00
  ld bc, $6524                                    ; $45cb: $01 $24 $65
  ld de, $209f                                    ; $45ce: $11 $9f $20
  inc h                                           ; $45d1: $24

jr_008_45d2:
  ld h, l                                         ; $45d2: $65
  ld de, $209f                                    ; $45d3: $11 $9f $20
  inc h                                           ; $45d6: $24
  ld h, l                                         ; $45d7: $65
  ld de, $c09f                                    ; $45d8: $11 $9f $c0
  and d                                           ; $45db: $a2
  jr nz, jr_008_4602                              ; $45dc: $20 $24

  ld h, l                                         ; $45de: $65
  ld de, $209f                                    ; $45df: $11 $9f $20
  inc h                                           ; $45e2: $24

jr_008_45e3:
  ld h, l                                         ; $45e3: $65
  ld de, $209f                                    ; $45e4: $11 $9f $20
  inc h                                           ; $45e7: $24
  ld h, l                                         ; $45e8: $65
  ld de, $e09f                                    ; $45e9: $11 $9f $e0
  and d                                           ; $45ec: $a2
  jr nz, jr_008_4613                              ; $45ed: $20 $24

  ld h, l                                         ; $45ef: $65
  ld de, $209f                                    ; $45f0: $11 $9f $20
  inc h                                           ; $45f3: $24
  ld h, l                                         ; $45f4: $65
  ld de, $c09f                                    ; $45f5: $11 $9f $c0
  and d                                           ; $45f8: $a2
  ret nz                                          ; $45f9: $c0

  nop                                             ; $45fa: $00
  ld [bc], a                                      ; $45fb: $02
  inc h                                           ; $45fc: $24
  ld h, l                                         ; $45fd: $65
  ld de, $209f                                    ; $45fe: $11 $9f $20
  inc h                                           ; $4601: $24

jr_008_4602:
  ld h, l                                         ; $4602: $65
  ld de, $209f                                    ; $4603: $11 $9f $20
  inc h                                           ; $4606: $24
  ld h, l                                         ; $4607: $65
  ld de, $c09f                                    ; $4608: $11 $9f $c0
  and d                                           ; $460b: $a2
  jr nz, @+$26                                    ; $460c: $20 $24

  ld h, l                                         ; $460e: $65
  ld de, $209f                                    ; $460f: $11 $9f $20
  inc h                                           ; $4612: $24

jr_008_4613:
  ld h, l                                         ; $4613: $65
  ld de, $209f                                    ; $4614: $11 $9f $20
  inc h                                           ; $4617: $24
  ld h, l                                         ; $4618: $65
  ld de, $e09f                                    ; $4619: $11 $9f $e0
  and d                                           ; $461c: $a2
  jr nz, @+$26                                    ; $461d: $20 $24

  ld h, l                                         ; $461f: $65
  ld de, $209f                                    ; $4620: $11 $9f $20
  inc h                                           ; $4623: $24
  ld h, l                                         ; $4624: $65
  ld de, $c09f                                    ; $4625: $11 $9f $c0
  and d                                           ; $4628: $a2
  ret nz                                          ; $4629: $c0

  nop                                             ; $462a: $00
  ld bc, $209f                                    ; $462b: $01 $9f $20
  inc h                                           ; $462e: $24
  ld h, l                                         ; $462f: $65
  ld de, $209f                                    ; $4630: $11 $9f $20
  inc h                                           ; $4633: $24
  ld h, l                                         ; $4634: $65
  ld de, $e09f                                    ; $4635: $11 $9f $e0
  and d                                           ; $4638: $a2
  jr nz, jr_008_465f                              ; $4639: $20 $24

  ld h, l                                         ; $463b: $65
  ld de, $209f                                    ; $463c: $11 $9f $20
  inc h                                           ; $463f: $24
  ld h, l                                         ; $4640: $65
  ld de, $e09f                                    ; $4641: $11 $9f $e0
  and d                                           ; $4644: $a2
  jr nz, jr_008_466b                              ; $4645: $20 $24

  ld h, l                                         ; $4647: $65
  ld de, $209f                                    ; $4648: $11 $9f $20
  inc h                                           ; $464b: $24
  ld h, l                                         ; $464c: $65
  ld de, $e09f                                    ; $464d: $11 $9f $e0
  and d                                           ; $4650: $a2
  ret nz                                          ; $4651: $c0

  nop                                             ; $4652: $00
  ld [bc], a                                      ; $4653: $02
  inc h                                           ; $4654: $24
  ld h, l                                         ; $4655: $65
  ld de, $209f                                    ; $4656: $11 $9f $20
  inc h                                           ; $4659: $24
  ld h, l                                         ; $465a: $65
  ld de, $e09f                                    ; $465b: $11 $9f $e0
  and d                                           ; $465e: $a2

jr_008_465f:
  jr nz, jr_008_4685                              ; $465f: $20 $24

  ld h, l                                         ; $4661: $65
  ld de, $209f                                    ; $4662: $11 $9f $20
  inc h                                           ; $4665: $24
  ld h, l                                         ; $4666: $65
  ld de, $e09f                                    ; $4667: $11 $9f $e0
  and d                                           ; $466a: $a2

jr_008_466b:
  jr nz, jr_008_4691                              ; $466b: $20 $24

  ld h, l                                         ; $466d: $65
  ld de, $209f                                    ; $466e: $11 $9f $20
  inc h                                           ; $4671: $24
  ld h, l                                         ; $4672: $65
  ld de, $e09f                                    ; $4673: $11 $9f $e0
  and d                                           ; $4676: $a2
  ret nz                                          ; $4677: $c0

  nop                                             ; $4678: $00
  ld bc, $6524                                    ; $4679: $01 $24 $65
  ld de, $209f                                    ; $467c: $11 $9f $20
  inc h                                           ; $467f: $24
  ld h, l                                         ; $4680: $65
  ld de, $e09f                                    ; $4681: $11 $9f $e0
  and d                                           ; $4684: $a2

jr_008_4685:
  jr nz, jr_008_46ab                              ; $4685: $20 $24

  ld h, l                                         ; $4687: $65
  ld de, $209f                                    ; $4688: $11 $9f $20
  inc h                                           ; $468b: $24
  ld h, l                                         ; $468c: $65
  ld de, $e09f                                    ; $468d: $11 $9f $e0
  and d                                           ; $4690: $a2

jr_008_4691:
  jr nz, jr_008_46b7                              ; $4691: $20 $24

jr_008_4693:
  ld h, l                                         ; $4693: $65
  ld de, $209f                                    ; $4694: $11 $9f $20
  inc h                                           ; $4697: $24
  ld h, l                                         ; $4698: $65
  ld de, $e09f                                    ; $4699: $11 $9f $e0
  and d                                           ; $469c: $a2
  ret nz                                          ; $469d: $c0

  nop                                             ; $469e: $00
  ld [bc], a                                      ; $469f: $02
  inc h                                           ; $46a0: $24
  ld h, l                                         ; $46a1: $65
  ld de, $209f                                    ; $46a2: $11 $9f $20
  inc h                                           ; $46a5: $24
  ld h, l                                         ; $46a6: $65
  ld de, $e09f                                    ; $46a7: $11 $9f $e0
  and d                                           ; $46aa: $a2

jr_008_46ab:
  jr nz, jr_008_46d1                              ; $46ab: $20 $24

  ld h, l                                         ; $46ad: $65
  ld de, $209f                                    ; $46ae: $11 $9f $20
  inc h                                           ; $46b1: $24
  ld h, l                                         ; $46b2: $65
  ld de, $e09f                                    ; $46b3: $11 $9f $e0
  and d                                           ; $46b6: $a2

jr_008_46b7:
  jr nz, jr_008_46dd                              ; $46b7: $20 $24

  ld h, l                                         ; $46b9: $65
  ld de, $209f                                    ; $46ba: $11 $9f $20
  inc h                                           ; $46bd: $24
  ld h, l                                         ; $46be: $65
  ld de, $e09f                                    ; $46bf: $11 $9f $e0
  and d                                           ; $46c2: $a2
  ret nz                                          ; $46c3: $c0

  nop                                             ; $46c4: $00
  ld bc, $6524                                    ; $46c5: $01 $24 $65
  ld de, $209f                                    ; $46c8: $11 $9f $20
  inc h                                           ; $46cb: $24
  ld h, l                                         ; $46cc: $65
  ld de, $e09f                                    ; $46cd: $11 $9f $e0
  and d                                           ; $46d0: $a2

jr_008_46d1:
  jr nz, @+$26                                    ; $46d1: $20 $24

  ld h, l                                         ; $46d3: $65
  ld de, $209f                                    ; $46d4: $11 $9f $20
  inc h                                           ; $46d7: $24
  ld h, l                                         ; $46d8: $65
  ld de, $e09f                                    ; $46d9: $11 $9f $e0
  and d                                           ; $46dc: $a2

jr_008_46dd:
  jr nz, @+$26                                    ; $46dd: $20 $24

  ld h, l                                         ; $46df: $65
  ld de, $209f                                    ; $46e0: $11 $9f $20
  inc h                                           ; $46e3: $24
  ld h, l                                         ; $46e4: $65
  ld de, $e09f                                    ; $46e5: $11 $9f $e0
  and d                                           ; $46e8: $a2
  ret nz                                          ; $46e9: $c0

  nop                                             ; $46ea: $00
  ld [bc], a                                      ; $46eb: $02
  nop                                             ; $46ec: $00
  ld a, [bc]                                      ; $46ed: $0a
  sbc a                                           ; $46ee: $9f
  jr nz, jr_008_4693                              ; $46ef: $20 $a2

  jr nz, jr_008_46f3                              ; $46f1: $20 $00

jr_008_46f3:
  ld bc, $6524                                    ; $46f3: $01 $24 $65
  ld de, $209f                                    ; $46f6: $11 $9f $20
  inc h                                           ; $46f9: $24
  ld h, l                                         ; $46fa: $65
  ld de, $e09f                                    ; $46fb: $11 $9f $e0
  nop                                             ; $46fe: $00
  ld bc, $6524                                    ; $46ff: $01 $24 $65
  ld de, $209f                                    ; $4702: $11 $9f $20
  inc h                                           ; $4705: $24
  ld h, l                                         ; $4706: $65
  ld de, $e09f                                    ; $4707: $11 $9f $e0
  nop                                             ; $470a: $00
  ld [bc], a                                      ; $470b: $02
  nop                                             ; $470c: $00
  ld bc, $f224                                    ; $470d: $01 $24 $f2
  ld c, d                                         ; $4710: $4a
  daa                                             ; $4711: $27
  inc c                                           ; $4712: $0c
  ld b, a                                         ; $4713: $47
  inc h                                           ; $4714: $24
  ld h, l                                         ; $4715: $65
  ld de, $209f                                    ; $4716: $11 $9f $20
  inc h                                           ; $4719: $24
  ld h, l                                         ; $471a: $65
  ld de, $e09f                                    ; $471b: $11 $9f $e0
  nop                                             ; $471e: $00
  ld [bc], a                                      ; $471f: $02
  inc h                                           ; $4720: $24
  ld h, l                                         ; $4721: $65
  ld de, $209f                                    ; $4722: $11 $9f $20
  inc h                                           ; $4725: $24
  ld h, l                                         ; $4726: $65
  ld de, $c09f                                    ; $4727: $11 $9f $c0
  and d                                           ; $472a: $a2
  ldh [rP1], a                                    ; $472b: $e0 $00
  ld a, [bc]                                      ; $472d: $0a
  inc h                                           ; $472e: $24
  ld h, l                                         ; $472f: $65
  ld de, $209f                                    ; $4730: $11 $9f $20
  inc h                                           ; $4733: $24
  ld h, l                                         ; $4734: $65
  ld de, $e09f                                    ; $4735: $11 $9f $e0
  and d                                           ; $4738: $a2
  jr nz, jr_008_475f                              ; $4739: $20 $24

  ld h, l                                         ; $473b: $65
  ld de, $209f                                    ; $473c: $11 $9f $20
  inc h                                           ; $473f: $24
  ld h, l                                         ; $4740: $65
  ld de, $e09f                                    ; $4741: $11 $9f $e0
  and d                                           ; $4744: $a2
  jr nz, jr_008_476b                              ; $4745: $20 $24

  ld h, l                                         ; $4747: $65
  ld de, $209f                                    ; $4748: $11 $9f $20
  inc h                                           ; $474b: $24
  ld h, l                                         ; $474c: $65
  ld de, $e09f                                    ; $474d: $11 $9f $e0
  and d                                           ; $4750: $a2
  ldh [rP1], a                                    ; $4751: $e0 $00
  ld [bc], a                                      ; $4753: $02
  inc h                                           ; $4754: $24
  ld h, l                                         ; $4755: $65
  ld de, $209f                                    ; $4756: $11 $9f $20
  inc h                                           ; $4759: $24
  ld h, l                                         ; $475a: $65
  ld de, $e09f                                    ; $475b: $11 $9f $e0
  and d                                           ; $475e: $a2

jr_008_475f:
  jr nz, jr_008_4785                              ; $475f: $20 $24

  ld h, l                                         ; $4761: $65
  ld de, $209f                                    ; $4762: $11 $9f $20
  inc h                                           ; $4765: $24
  ld h, l                                         ; $4766: $65
  ld de, $e09f                                    ; $4767: $11 $9f $e0
  and d                                           ; $476a: $a2

jr_008_476b:
  ldh [rP1], a                                    ; $476b: $e0 $00
  ld bc, $6524                                    ; $476d: $01 $24 $65
  ld de, $209f                                    ; $4770: $11 $9f $20
  inc h                                           ; $4773: $24
  ld h, l                                         ; $4774: $65
  ld de, $e09f                                    ; $4775: $11 $9f $e0
  and d                                           ; $4778: $a2
  jr nz, jr_008_479f                              ; $4779: $20 $24

  ld h, l                                         ; $477b: $65
  ld de, $209f                                    ; $477c: $11 $9f $20
  inc h                                           ; $477f: $24
  ld h, l                                         ; $4780: $65
  ld de, $e09f                                    ; $4781: $11 $9f $e0
  and d                                           ; $4784: $a2

jr_008_4785:
  jr nz, jr_008_47ab                              ; $4785: $20 $24

  ld h, l                                         ; $4787: $65
  ld de, $209f                                    ; $4788: $11 $9f $20
  inc h                                           ; $478b: $24
  ld h, l                                         ; $478c: $65
  ld de, $e09f                                    ; $478d: $11 $9f $e0
  and d                                           ; $4790: $a2
  ret nz                                          ; $4791: $c0

  nop                                             ; $4792: $00
  ld [bc], a                                      ; $4793: $02
  inc h                                           ; $4794: $24
  ld h, l                                         ; $4795: $65
  ld de, $209f                                    ; $4796: $11 $9f $20
  inc h                                           ; $4799: $24
  ld h, l                                         ; $479a: $65
  ld de, $e09f                                    ; $479b: $11 $9f $e0
  and d                                           ; $479e: $a2

jr_008_479f:
  jr nz, jr_008_47c5                              ; $479f: $20 $24

  ld h, l                                         ; $47a1: $65
  ld de, $209f                                    ; $47a2: $11 $9f $20
  inc h                                           ; $47a5: $24
  ld h, l                                         ; $47a6: $65
  ld de, $e09f                                    ; $47a7: $11 $9f $e0
  and d                                           ; $47aa: $a2

jr_008_47ab:
  jr nz, jr_008_47d1                              ; $47ab: $20 $24

  ld h, l                                         ; $47ad: $65
  ld de, $209f                                    ; $47ae: $11 $9f $20
  inc h                                           ; $47b1: $24
  ld h, l                                         ; $47b2: $65
  ld de, $e09f                                    ; $47b3: $11 $9f $e0
  and d                                           ; $47b6: $a2
  ret nz                                          ; $47b7: $c0

  nop                                             ; $47b8: $00
  ld bc, $6524                                    ; $47b9: $01 $24 $65
  ld de, $209f                                    ; $47bc: $11 $9f $20
  inc h                                           ; $47bf: $24
  ld h, l                                         ; $47c0: $65
  ld de, $e09f                                    ; $47c1: $11 $9f $e0
  and d                                           ; $47c4: $a2

jr_008_47c5:
  jr nz, jr_008_47eb                              ; $47c5: $20 $24

  ld h, l                                         ; $47c7: $65
  ld de, $209f                                    ; $47c8: $11 $9f $20
  inc h                                           ; $47cb: $24
  ld h, l                                         ; $47cc: $65
  ld de, $e09f                                    ; $47cd: $11 $9f $e0
  and d                                           ; $47d0: $a2

jr_008_47d1:
  jr nz, jr_008_47f7                              ; $47d1: $20 $24

  ld h, l                                         ; $47d3: $65
  ld de, $209f                                    ; $47d4: $11 $9f $20
  inc h                                           ; $47d7: $24
  ld h, l                                         ; $47d8: $65
  ld de, $e09f                                    ; $47d9: $11 $9f $e0
  and d                                           ; $47dc: $a2
  ldh [rP1], a                                    ; $47dd: $e0 $00
  ld [bc], a                                      ; $47df: $02
  inc h                                           ; $47e0: $24
  ld h, l                                         ; $47e1: $65
  ld de, $209f                                    ; $47e2: $11 $9f $20
  inc h                                           ; $47e5: $24
  ld h, l                                         ; $47e6: $65
  ld de, $e09f                                    ; $47e7: $11 $9f $e0
  and d                                           ; $47ea: $a2

jr_008_47eb:
  jr nz, jr_008_4811                              ; $47eb: $20 $24

  ld h, l                                         ; $47ed: $65
  ld de, $209f                                    ; $47ee: $11 $9f $20
  inc h                                           ; $47f1: $24
  ld h, l                                         ; $47f2: $65
  ld de, $e09f                                    ; $47f3: $11 $9f $e0
  and d                                           ; $47f6: $a2

jr_008_47f7:
  ldh [rP1], a                                    ; $47f7: $e0 $00
  ld bc, $6524                                    ; $47f9: $01 $24 $65
  ld de, $209f                                    ; $47fc: $11 $9f $20
  inc h                                           ; $47ff: $24
  ld h, l                                         ; $4800: $65
  ld de, $e09f                                    ; $4801: $11 $9f $e0
  and d                                           ; $4804: $a2
  jr nz, jr_008_482b                              ; $4805: $20 $24

  ld h, l                                         ; $4807: $65
  ld de, $209f                                    ; $4808: $11 $9f $20
  inc h                                           ; $480b: $24
  ld h, l                                         ; $480c: $65
  ld de, $e09f                                    ; $480d: $11 $9f $e0
  and d                                           ; $4810: $a2

jr_008_4811:
  ldh [rP1], a                                    ; $4811: $e0 $00
  ld [bc], a                                      ; $4813: $02
  inc h                                           ; $4814: $24
  ld h, l                                         ; $4815: $65
  ld de, $209f                                    ; $4816: $11 $9f $20
  inc h                                           ; $4819: $24
  ld h, l                                         ; $481a: $65
  ld de, $e09f                                    ; $481b: $11 $9f $e0
  and d                                           ; $481e: $a2
  jr nz, jr_008_4845                              ; $481f: $20 $24

  ld h, l                                         ; $4821: $65
  ld de, $209f                                    ; $4822: $11 $9f $20
  inc h                                           ; $4825: $24
  ld h, l                                         ; $4826: $65
  ld de, $e09f                                    ; $4827: $11 $9f $e0
  and d                                           ; $482a: $a2

jr_008_482b:
  ldh [rP1], a                                    ; $482b: $e0 $00
  ld bc, $6524                                    ; $482d: $01 $24 $65
  ld de, $209f                                    ; $4830: $11 $9f $20
  inc h                                           ; $4833: $24
  ld h, l                                         ; $4834: $65
  ld de, $e09f                                    ; $4835: $11 $9f $e0
  and d                                           ; $4838: $a2
  jr nz, jr_008_485f                              ; $4839: $20 $24

  ld h, l                                         ; $483b: $65
  ld de, $209f                                    ; $483c: $11 $9f $20
  inc h                                           ; $483f: $24
  ld h, l                                         ; $4840: $65
  ld de, $e09f                                    ; $4841: $11 $9f $e0
  nop                                             ; $4844: $00

jr_008_4845:
  ld [bc], a                                      ; $4845: $02
  inc h                                           ; $4846: $24
  ld h, l                                         ; $4847: $65
  ld de, $209f                                    ; $4848: $11 $9f $20
  inc h                                           ; $484b: $24
  ld h, l                                         ; $484c: $65
  ld de, $e09f                                    ; $484d: $11 $9f $e0
  nop                                             ; $4850: $00
  ld bc, $6524                                    ; $4851: $01 $24 $65
  ld de, $209f                                    ; $4854: $11 $9f $20
  inc h                                           ; $4857: $24
  ld h, l                                         ; $4858: $65
  ld de, $e09f                                    ; $4859: $11 $9f $e0
  nop                                             ; $485c: $00
  ld [bc], a                                      ; $485d: $02
  inc h                                           ; $485e: $24

jr_008_485f:
  ld h, l                                         ; $485f: $65
  ld de, $209f                                    ; $4860: $11 $9f $20
  inc h                                           ; $4863: $24
  ld h, l                                         ; $4864: $65
  ld de, $e09f                                    ; $4865: $11 $9f $e0
  nop                                             ; $4868: $00
  ld bc, $6524                                    ; $4869: $01 $24 $65
  ld de, $209f                                    ; $486c: $11 $9f $20
  inc h                                           ; $486f: $24
  ld h, l                                         ; $4870: $65
  ld de, $e09f                                    ; $4871: $11 $9f $e0
  nop                                             ; $4874: $00
  nop                                             ; $4875: $00

  db $12, $04, $24, $65, $11, $a2, $e0, $24, $65, $11, $9f, $20, $24, $65, $11, $a2
  db $20, $24, $65, $11, $9f, $e0, $24, $e6, $4a, $27, $97, $48, $00, $01, $18, $8c
  db $48, $24, $65, $11, $a2, $e0, $24, $65, $11, $9f, $20, $24, $65, $11, $a2, $20
  db $24, $65, $11, $9f, $e0, $24, $e6, $4a, $2a, $76, $48, $00, $01, $18, $ab, $48

  ld [de], a                                      ; $48b6: $12
  inc b                                           ; $48b7: $04
  inc h                                           ; $48b8: $24
  add $4a                                         ; $48b9: $c6 $4a
  ld a, [hl+]                                     ; $48bb: $2a
  ret nc                                          ; $48bc: $d0

  ld c, b                                         ; $48bd: $48
  inc h                                           ; $48be: $24
  ld h, l                                         ; $48bf: $65
  ld de, $209f                                    ; $48c0: $11 $9f $20
  inc h                                           ; $48c3: $24
  ld h, l                                         ; $48c4: $65
  ld de, $e0a2                                    ; $48c5: $11 $a2 $e0
  inc h                                           ; $48c8: $24
  ld h, l                                         ; $48c9: $65
  ld de, $e09f                                    ; $48ca: $11 $9f $e0
  inc h                                           ; $48cd: $24
  ld h, l                                         ; $48ce: $65
  ld de, $0000                                    ; $48cf: $11 $00 $00
  ld [de], a                                      ; $48d2: $12
  inc b                                           ; $48d3: $04
  inc h                                           ; $48d4: $24
  add $4a                                         ; $48d5: $c6 $4a
  daa                                             ; $48d7: $27
  inc b                                           ; $48d8: $04
  ld c, c                                         ; $48d9: $49
  inc h                                           ; $48da: $24
  call z, $2a4a                                   ; $48db: $cc $4a $2a
  push hl                                         ; $48de: $e5
  ld c, b                                         ; $48df: $48
  nop                                             ; $48e0: $00
  ld bc, $da18                                    ; $48e1: $01 $18 $da
  ld c, b                                         ; $48e4: $48
  ret nz                                          ; $48e5: $c0

  ld b, $24                                       ; $48e6: $06 $24
  ld h, l                                         ; $48e8: $65
  ld de, $e09f                                    ; $48e9: $11 $9f $e0
  inc h                                           ; $48ec: $24
  ld h, l                                         ; $48ed: $65
  ld de, $e0a2                                    ; $48ee: $11 $a2 $e0
  inc h                                           ; $48f1: $24
  ld h, l                                         ; $48f2: $65
  ld de, $209f                                    ; $48f3: $11 $9f $20
  inc h                                           ; $48f6: $24
  ld h, l                                         ; $48f7: $65
  ld de, $20a2                                    ; $48f8: $11 $a2 $20
  nop                                             ; $48fb: $00
  ld b, $3f                                       ; $48fc: $06 $3f
  ld a, [hl+]                                     ; $48fe: $2a
  rst $20                                         ; $48ff: $e7
  ld c, b                                         ; $4900: $48
  inc h                                           ; $4901: $24
  jp nc, $004a                                    ; $4902: $d2 $4a $00

  nop                                             ; $4905: $00
  ld [de], a                                      ; $4906: $12
  inc b                                           ; $4907: $04
  inc h                                           ; $4908: $24
  and [hl]                                        ; $4909: $a6
  ld c, d                                         ; $490a: $4a
  ld a, [hl+]                                     ; $490b: $2a
  dec de                                          ; $490c: $1b
  ld c, c                                         ; $490d: $49
  inc h                                           ; $490e: $24
  ld h, l                                         ; $490f: $65
  ld de, $20a2                                    ; $4910: $11 $a2 $20
  inc h                                           ; $4913: $24
  ld h, l                                         ; $4914: $65
  ld de, $20a2                                    ; $4915: $11 $a2 $20
  inc h                                           ; $4918: $24
  ld h, l                                         ; $4919: $65
  ld de, $0000                                    ; $491a: $11 $00 $00
  ld [de], a                                      ; $491d: $12
  inc b                                           ; $491e: $04
  inc h                                           ; $491f: $24
  and [hl]                                        ; $4920: $a6
  ld c, d                                         ; $4921: $4a
  daa                                             ; $4922: $27
  ld c, d                                         ; $4923: $4a
  ld c, c                                         ; $4924: $49
  inc h                                           ; $4925: $24
  xor h                                           ; $4926: $ac
  ld c, d                                         ; $4927: $4a
  ld a, [hl+]                                     ; $4928: $2a
  jr nc, @+$4b                                    ; $4929: $30 $49

  nop                                             ; $492b: $00
  ld bc, $2518                                    ; $492c: $01 $18 $25
  ld c, c                                         ; $492f: $49
  ret nz                                          ; $4930: $c0

  ld d, $24                                       ; $4931: $16 $24
  ld h, l                                         ; $4933: $65
  ld de, $e0a2                                    ; $4934: $11 $a2 $e0
  inc h                                           ; $4937: $24
  ld h, l                                         ; $4938: $65
  ld de, $e0a2                                    ; $4939: $11 $a2 $e0
  inc h                                           ; $493c: $24
  ld h, l                                         ; $493d: $65
  ld de, $40a2                                    ; $493e: $11 $a2 $40
  nop                                             ; $4941: $00
  ld bc, $2a3f                                    ; $4942: $01 $3f $2a
  ld [hl-], a                                     ; $4945: $32
  ld c, c                                         ; $4946: $49
  inc h                                           ; $4947: $24
  or d                                            ; $4948: $b2
  ld c, d                                         ; $4949: $4a
  nop                                             ; $494a: $00
  nop                                             ; $494b: $00

  db $12, $04, $24, $8b, $4a, $2a, $59, $49, $00, $01, $18, $4c, $49, $24, $65, $11
  db $9f, $e0, $24, $65, $11, $a2, $e0, $24, $65, $11, $a2, $e0, $24, $65, $11, $9f
  db $20, $24, $65, $11, $a2, $20, $24, $65, $11, $a2, $20, $24, $91, $4a, $2a, $82
  db $49, $00, $01, $18, $77, $49, $24, $65, $11, $9f, $e0, $24, $65, $11, $a2, $e0
  db $24, $65, $11, $a2, $e0, $24, $65, $11, $9f, $20, $24, $65, $11, $a2, $20, $24
  db $65, $11, $a2, $20, $00, $00, $24, $65, $11, $9f, $e0, $24, $65, $11, $a2, $e0
  db $9f, $20, $24, $65, $11, $a2, $20, $9f, $20, $24, $65, $11, $9f, $e0, $00, $08
  db $18, $a2, $49, $24, $65, $11, $a2, $20, $24, $65, $11, $a2, $e0, $00, $0a, $18
  db $bf, $49, $24, $65, $11, $9f, $20, $24, $65, $11, $9f, $e0, $00, $0a, $18, $dd
  db $49, $24, $65, $11, $9f, $20, $24, $65, $11, $9f, $e0, $00, $10, $18, $dd, $49
  db $12, $04, $24, $65, $11, $9f, $20, $24, $65, $11, $a2, $20, $9f, $e0, $24, $65
  db $11, $9f, $20, $24, $65, $11, $a2, $20, $9f, $e0, $24, $65, $11, $9f, $20, $24
  db $65, $11, $a2, $c0, $9f, $e0, $00, $0a, $18, $ee, $49, $24, $65, $11, $9f, $20
  db $24, $65, $11, $a2, $e0, $24, $65, $11, $9f, $e0, $24, $65, $11, $a2, $20, $00
  db $04, $18, $17, $4a, $24, $65, $11, $9f, $20, $24, $65, $11, $9f, $e0, $00, $0a
  db $18, $30, $4a, $00, $00, $24, $65, $11, $9f, $20, $24, $65, $11, $9f, $20, $24
  db $65, $11, $00, $00

  inc h                                           ; $4a50: $24
  ld h, l                                         ; $4a51: $65
  ld de, $209f                                    ; $4a52: $11 $9f $20
  inc h                                           ; $4a55: $24
  ld h, l                                         ; $4a56: $65
  ld de, $e09f                                    ; $4a57: $11 $9f $e0
  and d                                           ; $4a5a: $a2
  jr nz, @+$26                                    ; $4a5b: $20 $24

  ld h, l                                         ; $4a5d: $65
  ld de, $209f                                    ; $4a5e: $11 $9f $20
  inc h                                           ; $4a61: $24
  ld h, l                                         ; $4a62: $65
  ld de, $e09f                                    ; $4a63: $11 $9f $e0
  and d                                           ; $4a66: $a2
  ldh [rP1], a                                    ; $4a67: $e0 $00
  inc b                                           ; $4a69: $04
  jr @+$52                                        ; $4a6a: $18 $50

  ld c, d                                         ; $4a6c: $4a

  db $00, $00, $c0, $11, $24, $65, $11, $9f, $20, $24, $65, $11, $9f, $e0, $00, $04
  db $3f, $2a, $71, $4a, $00, $00

  nop                                             ; $4a83: $00
  nop                                             ; $4a84: $00

  ld de, $00ff                                    ; $4a85: $11 $ff $00
  jp Jump_000_2fe3                                ; $4a88: $c3 $e3 $2f


  ld hl, $ddb9                                    ; $4a8b: $21 $b9 $dd
  jp Jump_008_4b24                                ; $4a8e: $c3 $24 $4b


  ldh a, [rSVBK]                                  ; $4a91: $f0 $70
  push af                                         ; $4a93: $f5
  ld a, $06                                       ; $4a94: $3e $06
  ldh [rSVBK], a                                  ; $4a96: $e0 $70
  ld a, [$ddb9]                                   ; $4a98: $fa $b9 $dd
  ldh [$ffbd], a                                  ; $4a9b: $e0 $bd
  pop af                                          ; $4a9d: $f1
  ldh [rSVBK], a                                  ; $4a9e: $e0 $70
  ldh a, [$ffbd]                                  ; $4aa0: $f0 $bd
  dec a                                           ; $4aa2: $3d
  jp StoreCPUFlags                                ; $4aa3: $c3 $39 $00


  ld hl, $ddb7                                    ; $4aa6: $21 $b7 $dd
  jp Jump_008_4b4a                                ; $4aa9: $c3 $4a $4b


  ld hl, $ddb7                                    ; $4aac: $21 $b7 $dd
  jp Jump_008_4b24                                ; $4aaf: $c3 $24 $4b


  ldh a, [rSVBK]                                  ; $4ab2: $f0 $70
  push af                                         ; $4ab4: $f5
  ld a, $06                                       ; $4ab5: $3e $06
  ldh [rSVBK], a                                  ; $4ab7: $e0 $70
  ld a, $02                                       ; $4ab9: $3e $02
  ld [$ddb7], a                                   ; $4abb: $ea $b7 $dd
  ldh [$ffbd], a                                  ; $4abe: $e0 $bd
  pop af                                          ; $4ac0: $f1
  ldh [rSVBK], a                                  ; $4ac1: $e0 $70
  ldh a, [$ffbd]                                  ; $4ac3: $f0 $bd
  ret                                             ; $4ac5: $c9


  ld hl, $ddb6                                    ; $4ac6: $21 $b6 $dd
  jp Jump_008_4b4a                                ; $4ac9: $c3 $4a $4b


  ld hl, $ddb6                                    ; $4acc: $21 $b6 $dd
  jp Jump_008_4b24                                ; $4acf: $c3 $24 $4b


  ldh a, [rSVBK]                                  ; $4ad2: $f0 $70
  push af                                         ; $4ad4: $f5
  ld a, $06                                       ; $4ad5: $3e $06
  ldh [rSVBK], a                                  ; $4ad7: $e0 $70
  ld a, $02                                       ; $4ad9: $3e $02
  ld [$ddb6], a                                   ; $4adb: $ea $b6 $dd
  ldh [$ffbd], a                                  ; $4ade: $e0 $bd
  pop af                                          ; $4ae0: $f1
  ldh [rSVBK], a                                  ; $4ae1: $e0 $70
  ldh a, [$ffbd]                                  ; $4ae3: $f0 $bd
  ret                                             ; $4ae5: $c9


  ld hl, $ddb5                                    ; $4ae6: $21 $b5 $dd
  jp Jump_008_4b37                                ; $4ae9: $c3 $37 $4b


  ld hl, $ddb4                                    ; $4aec: $21 $b4 $dd
  jp Jump_008_4b24                                ; $4aef: $c3 $24 $4b


  ld hl, $ddb4                                    ; $4af2: $21 $b4 $dd
  jp Jump_008_4b37                                ; $4af5: $c3 $37 $4b


  ld hl, $ddb1                                    ; $4af8: $21 $b1 $dd
  jp Jump_008_4b24                                ; $4afb: $c3 $24 $4b


  ld hl, $ddb1                                    ; $4afe: $21 $b1 $dd
  jp Jump_008_4b4a                                ; $4b01: $c3 $4a $4b


  ldh a, [rSVBK]                                  ; $4b04: $f0 $70
  push af                                         ; $4b06: $f5
  ld a, $06                                       ; $4b07: $3e $06
  ldh [rSVBK], a                                  ; $4b09: $e0 $70
  ld a, $02                                       ; $4b0b: $3e $02
  ld [$ddb1], a                                   ; $4b0d: $ea $b1 $dd
  ldh [$ffbd], a                                  ; $4b10: $e0 $bd
  pop af                                          ; $4b12: $f1
  ldh [rSVBK], a                                  ; $4b13: $e0 $70
  ldh a, [$ffbd]                                  ; $4b15: $f0 $bd
  ret                                             ; $4b17: $c9


  ld hl, $ddb3                                    ; $4b18: $21 $b3 $dd
  jp Jump_008_4b24                                ; $4b1b: $c3 $24 $4b


  ld hl, $ddb2                                    ; $4b1e: $21 $b2 $dd
  jp Jump_008_4b24                                ; $4b21: $c3 $24 $4b


Jump_008_4b24:
  ldh a, [rSVBK]                                  ; $4b24: $f0 $70
  push af                                         ; $4b26: $f5
  ld a, $06                                       ; $4b27: $3e $06
  ldh [rSVBK], a                                  ; $4b29: $e0 $70
  ld a, [hl]                                      ; $4b2b: $7e
  ldh [$ffbd], a                                  ; $4b2c: $e0 $bd
  pop af                                          ; $4b2e: $f1
  ldh [rSVBK], a                                  ; $4b2f: $e0 $70
  ldh a, [$ffbd]                                  ; $4b31: $f0 $bd
  or a                                            ; $4b33: $b7
  jp StoreCPUFlags                                ; $4b34: $c3 $39 $00


Jump_008_4b37:
  ldh a, [rSVBK]                                  ; $4b37: $f0 $70
  push af                                         ; $4b39: $f5
  ld a, $06                                       ; $4b3a: $3e $06
  ldh [rSVBK], a                                  ; $4b3c: $e0 $70
  ld a, [hl]                                      ; $4b3e: $7e
  ldh [$ffbd], a                                  ; $4b3f: $e0 $bd
  pop af                                          ; $4b41: $f1
  ldh [rSVBK], a                                  ; $4b42: $e0 $70
  ldh a, [$ffbd]                                  ; $4b44: $f0 $bd
  dec a                                           ; $4b46: $3d
  jp StoreCPUFlags                                ; $4b47: $c3 $39 $00


Jump_008_4b4a:
  ldh a, [rSVBK]                                  ; $4b4a: $f0 $70
  push af                                         ; $4b4c: $f5
  ld a, $06                                       ; $4b4d: $3e $06
  ldh [rSVBK], a                                  ; $4b4f: $e0 $70
  ld a, [hl]                                      ; $4b51: $7e
  ldh [$ffbd], a                                  ; $4b52: $e0 $bd
  pop af                                          ; $4b54: $f1
  ldh [rSVBK], a                                  ; $4b55: $e0 $70
  ldh a, [$ffbd]                                  ; $4b57: $f0 $bd
  cp $02                                          ; $4b59: $fe $02
  jp StoreCPUFlags                                ; $4b5b: $c3 $39 $00


  ldh a, [rSVBK]                                  ; $4b5e: $f0 $70
  push af                                         ; $4b60: $f5
  ld a, $06                                       ; $4b61: $3e $06
  ldh [rSVBK], a                                  ; $4b63: $e0 $70
  inc bc                                          ; $4b65: $03
  ld a, [bc]                                      ; $4b66: $0a
  dec bc                                          ; $4b67: $0b
  ld hl, $dd82                                    ; $4b68: $21 $82 $dd
  rst $08                                         ; $4b6b: $cf
  ldh [$ffbd], a                                  ; $4b6c: $e0 $bd
  pop af                                          ; $4b6e: $f1
  ldh [rSVBK], a                                  ; $4b6f: $e0 $70
  ldh a, [$ffbd]                                  ; $4b71: $f0 $bd
  or a                                            ; $4b73: $b7
  jp StoreCPUFlags                                ; $4b74: $c3 $39 $00


  db $01, $56, $80, $00, $00, $00, $99, $26, $01, $02, $00, $01

  ld hl, $4b77                                    ; $4b83: $21 $77 $4b
  jp Jump_000_2952                                ; $4b86: $c3 $52 $29


  ld a, $01                                       ; $4b89: $3e $01
  ldh [$ffaa], a                                  ; $4b8b: $e0 $aa
  ld hl, $7b8d                                    ; $4b8d: $21 $8d $7b
  call Call_000_33f3                              ; $4b90: $cd $f3 $33

  db $03, $88, $7e

  call Call_000_3663                              ; $4b96: $cd $63 $36
  ld hl, $53d7                                    ; $4b99: $21 $d7 $53
  call Call_000_33f3                              ; $4b9c: $cd $f3 $33

  db $01, $33, $55

  ld a, $25                                       ; $4ba2: $3e $25
  call Call_000_394b                              ; $4ba4: $cd $4b $39
  ld a, $02                                       ; $4ba7: $3e $02
  ldh [$ff9a], a                                  ; $4ba9: $e0 $9a
  ld a, $a8                                       ; $4bab: $3e $a8
  call Call_000_04e0                              ; $4bad: $cd $e0 $04
  ld de, $0028                                    ; $4bb0: $11 $28 $00
  call Call_000_01ca                              ; $4bb3: $cd $ca $01
  jp Jump_000_3374                                ; $4bb6: $c3 $74 $33


  ld hl, $ff8f                                    ; $4bb9: $21 $8f $ff
  ld a, [hl+]                                     ; $4bbc: $2a
  ld h, [hl]                                      ; $4bbd: $66
  ld l, a                                         ; $4bbe: $6f
  ld de, $0150                                    ; $4bbf: $11 $50 $01
  rst $10                                         ; $4bc2: $d7
  jr z, jr_008_4bcf                               ; $4bc3: $28 $0a

  inc hl                                          ; $4bc5: $23
  ld a, l                                         ; $4bc6: $7d
  ldh [$ff8f], a                                  ; $4bc7: $e0 $8f
  ld a, h                                         ; $4bc9: $7c
  ldh [$ff90], a                                  ; $4bca: $e0 $90
  call Call_008_4c3b                              ; $4bcc: $cd $3b $4c

jr_008_4bcf:
  call Call_000_01dc                              ; $4bcf: $cd $dc $01
  ret nz                                          ; $4bd2: $c0

  ret                                             ; $4bd3: $c9


  ld hl, $000b                                    ; $4bd4: $21 $0b $00
  add hl, bc                                      ; $4bd7: $09
  ld a, [hl]                                      ; $4bd8: $7e
  ld d, a                                         ; $4bd9: $57
  ld hl, $0006                                    ; $4bda: $21 $06 $00
  add hl, bc                                      ; $4bdd: $09
  ld [hl], d                                      ; $4bde: $72
  ld hl, $000d                                    ; $4bdf: $21 $0d $00
  add hl, bc                                      ; $4be2: $09
  ld a, [hl]                                      ; $4be3: $7e
  ld d, a                                         ; $4be4: $57
  ld hl, $0009                                    ; $4be5: $21 $09 $00
  add hl, bc                                      ; $4be8: $09
  ld [hl], d                                      ; $4be9: $72
  ld hl, $0034                                    ; $4bea: $21 $34 $00
  add hl, bc                                      ; $4bed: $09
  xor a                                           ; $4bee: $af
  ld [hl+], a                                     ; $4bef: $22
  ld [hl+], a                                     ; $4bf0: $22
  ld [hl+], a                                     ; $4bf1: $22
  ld [hl+], a                                     ; $4bf2: $22
  ld hl, $0030                                    ; $4bf3: $21 $30 $00
  add hl, bc                                      ; $4bf6: $09
  xor a                                           ; $4bf7: $af
  ld [hl+], a                                     ; $4bf8: $22
  ld [hl+], a                                     ; $4bf9: $22
  ld [hl+], a                                     ; $4bfa: $22
  ld [hl+], a                                     ; $4bfb: $22
  ret                                             ; $4bfc: $c9


  ld a, $22                                       ; $4bfd: $3e $22
  ldh [$ffd8], a                                  ; $4bff: $e0 $d8
  ld [$ddc5], a                                   ; $4c01: $ea $c5 $dd
  ldh [$ffd6], a                                  ; $4c04: $e0 $d6
  ld [$ddc4], a                                   ; $4c06: $ea $c4 $dd
  ld a, $03                                       ; $4c09: $3e $03
  ldh [$ffd7], a                                  ; $4c0b: $e0 $d7
  xor a                                           ; $4c0d: $af
  ld [$c0a0], a                                   ; $4c0e: $ea $a0 $c0
  ldh [$ffaa], a                                  ; $4c11: $e0 $aa
  ld a, $0b                                       ; $4c13: $3e $0b
  jp Jump_000_261e                                ; $4c15: $c3 $1e $26


  ld hl, $ff91                                    ; $4c18: $21 $91 $ff
  ld a, [hl+]                                     ; $4c1b: $2a
  ld h, [hl]                                      ; $4c1c: $66
  ld l, a                                         ; $4c1d: $6f
  ld a, h                                         ; $4c1e: $7c
  or l                                            ; $4c1f: $b5
  jr nz, jr_008_4c32                              ; $4c20: $20 $10

  push hl                                         ; $4c22: $e5
  ld a, $03                                       ; $4c23: $3e $03
  call Call_000_28e6                              ; $4c25: $cd $e6 $28
  inc a                                           ; $4c28: $3c
  pop hl                                          ; $4c29: $e1
  rst $08                                         ; $4c2a: $cf
  ld a, l                                         ; $4c2b: $7d
  ldh [$ff91], a                                  ; $4c2c: $e0 $91
  ld a, h                                         ; $4c2e: $7c
  ldh [$ff92], a                                  ; $4c2f: $e0 $92
  ret                                             ; $4c31: $c9


jr_008_4c32:
  ld hl, $ff91                                    ; $4c32: $21 $91 $ff
  ld [hl], $00                                    ; $4c35: $36 $00
  inc hl                                          ; $4c37: $23
  ld [hl], $00                                    ; $4c38: $36 $00
  ret                                             ; $4c3a: $c9


Call_008_4c3b:
  ldh a, [$ff8f]                                  ; $4c3b: $f0 $8f
  and $3f                                         ; $4c3d: $e6 $3f
  ret nz                                          ; $4c3f: $c0

  ld hl, $ff8f                                    ; $4c40: $21 $8f $ff
  ld a, [hl+]                                     ; $4c43: $2a
  ld h, [hl]                                      ; $4c44: $66
  ld l, a                                         ; $4c45: $6f
  sra h                                           ; $4c46: $cb $2c
  rr l                                            ; $4c48: $cb $1d
  sra h                                           ; $4c4a: $cb $2c
  rr l                                            ; $4c4c: $cb $1d
  sra h                                           ; $4c4e: $cb $2c
  rr l                                            ; $4c50: $cb $1d
  ld a, $18                                       ; $4c52: $3e $18
  rst $08                                         ; $4c54: $cf
  ld a, l                                         ; $4c55: $7d
  ldh [$fff5], a                                  ; $4c56: $e0 $f5
  and $1f                                         ; $4c58: $e6 $1f
  ld hl, $d000                                    ; $4c5a: $21 $00 $d0
  rst $08                                         ; $4c5d: $cf
  ld e, l                                         ; $4c5e: $5d
  ld d, h                                         ; $4c5f: $54
  ld a, $08                                       ; $4c60: $3e $08
  ldh [$fff7], a                                  ; $4c62: $e0 $f7
  ld a, $13                                       ; $4c64: $3e $13
  ldh [$fff8], a                                  ; $4c66: $e0 $f8
  xor a                                           ; $4c68: $af
  ldh [$fff6], a                                  ; $4c69: $e0 $f6
  ld a, $57                                       ; $4c6b: $3e $57
  ld bc, $0000                                    ; $4c6d: $01 $00 $00
  ld hl, $56d8                                    ; $4c70: $21 $d8 $56
  call Call_000_33f3                              ; $4c73: $cd $f3 $33

  db $00, $7c, $33

  rst $20                                         ; $4c79: $e7
  ret                                             ; $4c7a: $c9


  db $01, $52, $80, $00, $00, $00, $99, $26, $01, $03, $01, $02

  ld hl, $4c7b                                    ; $4c87: $21 $7b $4c
  jp Jump_000_2952                                ; $4c8a: $c3 $52 $29


  ld de, $00f0                                    ; $4c8d: $11 $f0 $00
  call Call_000_01ca                              ; $4c90: $cd $ca $01
  ld a, $3f                                       ; $4c93: $3e $3f
  call Call_000_394b                              ; $4c95: $cd $4b $39
  ld hl, $7b8d                                    ; $4c98: $21 $8d $7b
  call Call_000_33f3                              ; $4c9b: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $ffb9                                    ; $4ca1: $21 $b9 $ff
  ld [hl], $00                                    ; $4ca4: $36 $00
  inc hl                                          ; $4ca6: $23
  ld [hl], $00                                    ; $4ca7: $36 $00
  ld a, $a7                                       ; $4ca9: $3e $a7
  call Call_000_33f3                              ; $4cab: $cd $f3 $33

  db $00, $3c, $12

  xor a                                           ; $4cb1: $af
  ldh [$ff9a], a                                  ; $4cb2: $e0 $9a
  ldh a, [$ffce]                                  ; $4cb4: $f0 $ce
  ldh [$ff9f], a                                  ; $4cb6: $e0 $9f
  ld a, $a7                                       ; $4cb8: $3e $a7
  call Call_000_04e0                              ; $4cba: $cd $e0 $04
  ld a, $01                                       ; $4cbd: $3e $01
  ldh [$ff9a], a                                  ; $4cbf: $e0 $9a
  ldh a, [$ffce]                                  ; $4cc1: $f0 $ce
  ldh [$ff9f], a                                  ; $4cc3: $e0 $9f
  ld a, $a7                                       ; $4cc5: $3e $a7
  call Call_000_04e0                              ; $4cc7: $cd $e0 $04
  ld a, $02                                       ; $4cca: $3e $02
  ldh [$ff9a], a                                  ; $4ccc: $e0 $9a
  ldh a, [$ffce]                                  ; $4cce: $f0 $ce
  ldh [$ff9f], a                                  ; $4cd0: $e0 $9f
  ld a, $a7                                       ; $4cd2: $3e $a7
  call Call_000_04e0                              ; $4cd4: $cd $e0 $04
  ld a, $01                                       ; $4cd7: $3e $01
  ldh [$ffaa], a                                  ; $4cd9: $e0 $aa
  ld a, $8c                                       ; $4cdb: $3e $8c
  ldh [$ff91], a                                  ; $4cdd: $e0 $91
  ret                                             ; $4cdf: $c9


  ldh a, [$ffce]                                  ; $4ce0: $f0 $ce
  or a                                            ; $4ce2: $b7
  jr nz, jr_008_4cee                              ; $4ce3: $20 $09

  ld hl, $ff8f                                    ; $4ce5: $21 $8f $ff
  inc [hl]                                        ; $4ce8: $34
  inc hl                                          ; $4ce9: $23
  inc hl                                          ; $4cea: $23
  dec [hl]                                        ; $4ceb: $35
  jr jr_008_4cf5                                  ; $4cec: $18 $07

jr_008_4cee:
  ld hl, $ff8f                                    ; $4cee: $21 $8f $ff
  dec [hl]                                        ; $4cf1: $35
  inc hl                                          ; $4cf2: $23
  inc hl                                          ; $4cf3: $23
  inc [hl]                                        ; $4cf4: $34

jr_008_4cf5:
  call Call_000_01dc                              ; $4cf5: $cd $dc $01
  ret nz                                          ; $4cf8: $c0

  xor a                                           ; $4cf9: $af
  ld [$c0a0], a                                   ; $4cfa: $ea $a0 $c0
  ld a, $0b                                       ; $4cfd: $3e $0b
  call Call_000_261e                              ; $4cff: $cd $1e $26
  ldh a, [rSVBK]                                  ; $4d02: $f0 $70
  push af                                         ; $4d04: $f5
  ld a, $06                                       ; $4d05: $3e $06
  ldh [rSVBK], a                                  ; $4d07: $e0 $70
  ldh a, [$ffce]                                  ; $4d09: $f0 $ce
  rst $00                                         ; $4d0b: $c7

  db $10, $4d, $26, $4d

  ld a, $1c                                       ; $4d10: $3e $1c
  ld [$ddc4], a                                   ; $4d12: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $4d15: $e0 $d6
  ld a, $01                                       ; $4d17: $3e $01
  ldh [$ffd7], a                                  ; $4d19: $e0 $d7
  ld a, $1d                                       ; $4d1b: $3e $1d
  ldh [$ffd8], a                                  ; $4d1d: $e0 $d8
  ld [$ddc5], a                                   ; $4d1f: $ea $c5 $dd
  pop af                                          ; $4d22: $f1
  ldh [rSVBK], a                                  ; $4d23: $e0 $70
  ret                                             ; $4d25: $c9


  ld a, $1d                                       ; $4d26: $3e $1d
  ld [$ddc4], a                                   ; $4d28: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $4d2b: $e0 $d6
  ld a, $02                                       ; $4d2d: $3e $02
  ldh [$ffd7], a                                  ; $4d2f: $e0 $d7
  ld a, $1c                                       ; $4d31: $3e $1c
  ldh [$ffd8], a                                  ; $4d33: $e0 $d8
  ld [$ddc5], a                                   ; $4d35: $ea $c5 $dd
  pop af                                          ; $4d38: $f1
  ldh [rSVBK], a                                  ; $4d39: $e0 $70
  ret                                             ; $4d3b: $c9


  db $01, $2c, $80, $00, $00, $00, $99, $26, $01, $03, $01, $02

  ld hl, $4d3c                                    ; $4d48: $21 $3c $4d
  jp Jump_000_2952                                ; $4d4b: $c3 $52 $29


  ld hl, $7b8d                                    ; $4d4e: $21 $8d $7b
  call Call_000_33f3                              ; $4d51: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $5445                                    ; $4d57: $21 $45 $54
  call Call_000_33f3                              ; $4d5a: $cd $f3 $33

  db $01, $33, $55

  xor a                                           ; $4d60: $af
  ld [$cb4b], a                                   ; $4d61: $ea $4b $cb
  ld [$cb4a], a                                   ; $4d64: $ea $4a $cb
  ld hl, $cb4c                                    ; $4d67: $21 $4c $cb
  ld [hl], $1c                                    ; $4d6a: $36 $1c
  inc hl                                          ; $4d6c: $23
  ld [hl], $00                                    ; $4d6d: $36 $00
  ld hl, $cb48                                    ; $4d6f: $21 $48 $cb
  ld [hl], $ae                                    ; $4d72: $36 $ae
  inc hl                                          ; $4d74: $23
  ld [hl], $01                                    ; $4d75: $36 $01
  ld a, $78                                       ; $4d77: $3e $78
  call Call_000_33f3                              ; $4d79: $cd $f3 $33

  db $01, $21, $69

  ld a, $b5                                       ; $4d7f: $3e $b5
  call Call_000_04e0                              ; $4d81: $cd $e0 $04
  call Call_008_4ddd                              ; $4d84: $cd $dd $4d
  ld bc, $8080                                    ; $4d87: $01 $80 $80
  ld de, $1214                                    ; $4d8a: $11 $14 $12
  ld hl, $d500                                    ; $4d8d: $21 $00 $d5
  call Call_000_1463                              ; $4d90: $cd $63 $14
  ld bc, $8000                                    ; $4d93: $01 $00 $80
  ld de, $090c                                    ; $4d96: $11 $0c $09
  ld hl, $d584                                    ; $4d99: $21 $84 $d5
  call Call_000_1463                              ; $4d9c: $cd $63 $14
  rst $20                                         ; $4d9f: $e7
  ld a, $2e                                       ; $4da0: $3e $2e
  jp Jump_000_394b                                ; $4da2: $c3 $4b $39


  ld hl, $cb4c                                    ; $4da5: $21 $4c $cb
  ld a, [hl+]                                     ; $4da8: $2a
  ld h, [hl]                                      ; $4da9: $66
  ld l, a                                         ; $4daa: $6f
  ld a, h                                         ; $4dab: $7c
  or l                                            ; $4dac: $b5
  jr z, jr_008_4db9                               ; $4dad: $28 $0a

  dec hl                                          ; $4daf: $2b
  ld a, l                                         ; $4db0: $7d
  ld [$cb4c], a                                   ; $4db1: $ea $4c $cb
  ld a, h                                         ; $4db4: $7c
  ld [$cb4d], a                                   ; $4db5: $ea $4d $cb
  ret                                             ; $4db8: $c9


jr_008_4db9:
  ld a, [$cb4a]                                   ; $4db9: $fa $4a $cb
  cp $02                                          ; $4dbc: $fe $02
  call nz, Call_008_4ddd                          ; $4dbe: $c4 $dd $4d
  ld hl, $cb48                                    ; $4dc1: $21 $48 $cb
  ld a, [hl+]                                     ; $4dc4: $2a
  ld h, [hl]                                      ; $4dc5: $66
  ld l, a                                         ; $4dc6: $6f
  dec hl                                          ; $4dc7: $2b
  ld a, l                                         ; $4dc8: $7d
  ld [$cb48], a                                   ; $4dc9: $ea $48 $cb
  ld a, h                                         ; $4dcc: $7c
  ld [$cb49], a                                   ; $4dcd: $ea $49 $cb
  ld de, $0028                                    ; $4dd0: $11 $28 $00
  rst $10                                         ; $4dd3: $d7
  jp z, Jump_008_4e31                             ; $4dd4: $ca $31 $4e

  ld a, h                                         ; $4dd7: $7c
  or l                                            ; $4dd8: $b5
  ret nz                                          ; $4dd9: $c0

  jp Jump_008_4e3e                                ; $4dda: $c3 $3e $4e


Call_008_4ddd:
  ld a, [$cb4b]                                   ; $4ddd: $fa $4b $cb
  ldh [$ff9a], a                                  ; $4de0: $e0 $9a
  xor $01                                         ; $4de2: $ee $01
  ld [$cb4b], a                                   ; $4de4: $ea $4b $cb
  ld a, [$cb4a]                                   ; $4de7: $fa $4a $cb
  inc a                                           ; $4dea: $3c
  ld [$cb4a], a                                   ; $4deb: $ea $4a $cb
  ld a, $04                                       ; $4dee: $3e $04
  call Call_000_28e6                              ; $4df0: $cd $e6 $28
  ldh [$ff9f], a                                  ; $4df3: $e0 $9f
  ld a, $b6                                       ; $4df5: $3e $b6
  jp Jump_000_04e0                                ; $4df7: $c3 $e0 $04


  ld a, [$cb4a]                                   ; $4dfa: $fa $4a $cb
  dec a                                           ; $4dfd: $3d
  ld [$cb4a], a                                   ; $4dfe: $ea $4a $cb
  ret                                             ; $4e01: $c9


  db $01, $2d, $70, $01, $00, $00, $99, $26, $01, $02, $01, $02

  ld hl, $4e02                                    ; $4e0e: $21 $02 $4e
  jp Jump_000_2952                                ; $4e11: $c3 $52 $29


  ld a, $3f                                       ; $4e14: $3e $3f
  call Call_000_394b                              ; $4e16: $cd $4b $39
  ld hl, $7b8d                                    ; $4e19: $21 $8d $7b
  call Call_000_33f3                              ; $4e1c: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $5440                                    ; $4e22: $21 $40 $54
  call Call_000_33f3                              ; $4e25: $cd $f3 $33

  db $01, $33, $55

  ld a, $a1                                       ; $4e2b: $3e $a1
  jp Jump_000_04e0                                ; $4e2d: $c3 $e0 $04


  ret                                             ; $4e30: $c9


Jump_008_4e31:
  push bc                                         ; $4e31: $c5
  ld a, $01                                       ; $4e32: $3e $01
  ld e, $02                                       ; $4e34: $1e $02
  call Call_000_33f3                              ; $4e36: $cd $f3 $33

  db $05, $ef, $71

  pop bc                                          ; $4e3c: $c1
  ret                                             ; $4e3d: $c9


Jump_008_4e3e:
  ld a, $0b                                       ; $4e3e: $3e $0b
  call Call_000_261e                              ; $4e40: $cd $1e $26
  ld a, $02                                       ; $4e43: $3e $02
  ld [$c0a0], a                                   ; $4e45: $ea $a0 $c0
  ret                                             ; $4e48: $c9


  db $10, $01, $50, $4e, $a8, $00, $41, $c1, $d0, $e1, $d0, $01, $d1, $21, $d1, $41
  db $d1, $61, $d1, $81, $d1, $a1, $d1, $af, $ea, $2c, $cc, $df, $0e, $7f, $11, $11
  db $06, $21, $a1, $00, $cd, $9f, $14, $e7, $cd, $63, $33, $df, $21, $49, $4e, $cd
  db $13, $30

  ld a, $7c                                       ; $4e7b: $3e $7c
  ld [$c159], a                                   ; $4e7d: $ea $59 $c1
  ld a, $02                                       ; $4e80: $3e $02
  ld [$c1a2], a                                   ; $4e82: $ea $a2 $c1
  ld hl, $cbe2                                    ; $4e85: $21 $e2 $cb
  ld a, [hl+]                                     ; $4e88: $2a
  ld h, [hl]                                      ; $4e89: $66
  ld l, a                                         ; $4e8a: $6f
  call Call_000_33f3                              ; $4e8b: $cd $f3 $33

  db $01, $a2, $66

  call Call_000_33f3                              ; $4e91: $cd $f3 $33

  db $01, $bd, $64

  call Call_000_33f3                              ; $4e97: $cd $f3 $33

  db $01, $bd, $64

  ld hl, $17e9                                    ; $4e9d: $21 $e9 $17
  call Call_000_33f3                              ; $4ea0: $cd $f3 $33

  db $01, $28, $66

  jp RST_20                                       ; $4ea6: $c3 $20 $00


  ldh a, [$ffa6]                                  ; $4ea9: $f0 $a6
  or a                                            ; $4eab: $b7
  ret z                                           ; $4eac: $c8

  call Call_000_33f3                              ; $4ead: $cd $f3 $33

  db $04, $a0, $61

  ld a, [$cbd0]                                   ; $4eb3: $fa $d0 $cb
  ld de, $0400                                    ; $4eb6: $11 $00 $04
  call Call_000_33f3                              ; $4eb9: $cd $f3 $33

  db $04, $be, $6c

  ld a, $14                                       ; $4ebf: $3e $14
  jp Jump_000_261e                                ; $4ec1: $c3 $1e $26


  ld a, $02                                       ; $4ec4: $3e $02
  ld [$cc2c], a                                   ; $4ec6: $ea $2c $cc
  ld a, [$cc25]                                   ; $4ec9: $fa $25 $cc
  inc a                                           ; $4ecc: $3c
  ld [$cc2a], a                                   ; $4ecd: $ea $2a $cc
  ret                                             ; $4ed0: $c9


  ldh a, [rSVBK]                                  ; $4ed1: $f0 $70
  push af                                         ; $4ed3: $f5
  ld a, $05                                       ; $4ed4: $3e $05
  ldh [rSVBK], a                                  ; $4ed6: $e0 $70
  ld a, [$d000]                                   ; $4ed8: $fa $00 $d0
  ld b, a                                         ; $4edb: $47
  ld a, [$d019]                                   ; $4edc: $fa $19 $d0
  ld c, a                                         ; $4edf: $4f
  pop af                                          ; $4ee0: $f1
  ldh [rSVBK], a                                  ; $4ee1: $e0 $70
  ld a, $02                                       ; $4ee3: $3e $02
  ld [$cc2c], a                                   ; $4ee5: $ea $2c $cc
  ld a, c                                         ; $4ee8: $79
  cp $fe                                          ; $4ee9: $fe $fe
  jr nc, jr_008_4efd                              ; $4eeb: $30 $10

  ld a, $01                                       ; $4eed: $3e $01
  call Call_000_33f3                              ; $4eef: $cd $f3 $33
  inc bc                                          ; $4ef2: $03
  ld c, d                                         ; $4ef3: $4a
  ld c, b                                         ; $4ef4: $48
  and $02                                         ; $4ef5: $e6 $02
  ld a, $02                                       ; $4ef7: $3e $02
  ld [$cc2a], a                                   ; $4ef9: $ea $2a $cc
  ret nz                                          ; $4efc: $c0

jr_008_4efd:
  ld a, b                                         ; $4efd: $78
  cp $fe                                          ; $4efe: $fe $fe
  jr nc, jr_008_4f12                              ; $4f00: $30 $10

  ld a, $00                                       ; $4f02: $3e $00
  call Call_000_33f3                              ; $4f04: $cd $f3 $33
  inc bc                                          ; $4f07: $03
  ld c, d                                         ; $4f08: $4a
  ld c, b                                         ; $4f09: $48
  and $02                                         ; $4f0a: $e6 $02
  ld a, $01                                       ; $4f0c: $3e $01
  ld [$cc2a], a                                   ; $4f0e: $ea $2a $cc
  ret nz                                          ; $4f11: $c0

jr_008_4f12:
  ld a, $03                                       ; $4f12: $3e $03
  ld [$cc2a], a                                   ; $4f14: $ea $2a $cc
  ret                                             ; $4f17: $c9


  ld a, [$cc2c]                                   ; $4f18: $fa $2c $cc
  or a                                            ; $4f1b: $b7
  ret z                                           ; $4f1c: $c8

  ldh a, [$ffa6]                                  ; $4f1d: $f0 $a6
  bit 0, a                                        ; $4f1f: $cb $47
  jr nz, jr_008_4f4a                              ; $4f21: $20 $27

  bit 1, a                                        ; $4f23: $cb $4f
  jr nz, jr_008_4f58                              ; $4f25: $20 $31

  bit 7, a                                        ; $4f27: $cb $7f
  jr nz, jr_008_4f3c                              ; $4f29: $20 $11

  bit 6, a                                        ; $4f2b: $cb $77
  ret z                                           ; $4f2d: $c8

  ld a, $01                                       ; $4f2e: $3e $01
  call Call_000_392b                              ; $4f30: $cd $2b $39
  ld a, [$cc2a]                                   ; $4f33: $fa $2a $cc
  call Call_000_3427                              ; $4f36: $cd $27 $34
  inc bc                                          ; $4f39: $03
  ld a, b                                         ; $4f3a: $78
  ld d, [hl]                                      ; $4f3b: $56

jr_008_4f3c:
  ld a, $01                                       ; $4f3c: $3e $01
  call Call_000_392b                              ; $4f3e: $cd $2b $39
  ld a, [$cc2a]                                   ; $4f41: $fa $2a $cc
  call Call_000_3427                              ; $4f44: $cd $27 $34

  db $03, $57, $56

jr_008_4f4a:
  ld a, $00                                       ; $4f4a: $3e $00
  call Call_000_392b                              ; $4f4c: $cd $2b $39
  call Call_008_4fb2                              ; $4f4f: $cd $b2 $4f
  call Call_000_3427                              ; $4f52: $cd $27 $34

  db $03, $cd, $4b

jr_008_4f58:
  ld a, $03                                       ; $4f58: $3e $03
  call Call_000_392b                              ; $4f5a: $cd $2b $39
  ld a, $1a                                       ; $4f5d: $3e $1a
  jp Jump_000_261e                                ; $4f5f: $c3 $1e $26


  ldh a, [rSVBK]                                  ; $4f62: $f0 $70
  push af                                         ; $4f64: $f5
  ld a, $05                                       ; $4f65: $3e $05
  ldh [rSVBK], a                                  ; $4f67: $e0 $70
  ld a, [$d000]                                   ; $4f69: $fa $00 $d0
  cp $fe                                          ; $4f6c: $fe $fe
  jr z, jr_008_4f7c                               ; $4f6e: $28 $0c

  ld a, $00                                       ; $4f70: $3e $00
  call Call_000_33f3                              ; $4f72: $cd $f3 $33
  inc bc                                          ; $4f75: $03
  ld c, d                                         ; $4f76: $4a
  ld c, b                                         ; $4f77: $48
  and $02                                         ; $4f78: $e6 $02
  jr nz, jr_008_4fab                              ; $4f7a: $20 $2f

jr_008_4f7c:
  ld a, [$d019]                                   ; $4f7c: $fa $19 $d0
  cp $fe                                          ; $4f7f: $fe $fe
  jr z, jr_008_4f8f                               ; $4f81: $28 $0c

  ld a, $01                                       ; $4f83: $3e $01
  call Call_000_33f3                              ; $4f85: $cd $f3 $33
  inc bc                                          ; $4f88: $03
  ld c, d                                         ; $4f89: $4a
  ld c, b                                         ; $4f8a: $48
  and $02                                         ; $4f8b: $e6 $02
  jr nz, jr_008_4fab                              ; $4f8d: $20 $1c

jr_008_4f8f:
  ld a, [$d032]                                   ; $4f8f: $fa $32 $d0
  cp $fe                                          ; $4f92: $fe $fe
  jr z, jr_008_4fa6                               ; $4f94: $28 $10

  cp $62                                          ; $4f96: $fe $62
  jr z, jr_008_4fa6                               ; $4f98: $28 $0c

  ld a, $02                                       ; $4f9a: $3e $02
  call Call_000_33f3                              ; $4f9c: $cd $f3 $33
  inc bc                                          ; $4f9f: $03
  ld c, d                                         ; $4fa0: $4a
  ld c, b                                         ; $4fa1: $48
  and $02                                         ; $4fa2: $e6 $02
  jr nz, jr_008_4fab                              ; $4fa4: $20 $05

jr_008_4fa6:
  pop af                                          ; $4fa6: $f1
  ldh [rSVBK], a                                  ; $4fa7: $e0 $70
  xor a                                           ; $4fa9: $af
  ret                                             ; $4faa: $c9


jr_008_4fab:
  pop af                                          ; $4fab: $f1
  ldh [rSVBK], a                                  ; $4fac: $e0 $70
  ld a, $01                                       ; $4fae: $3e $01
  or a                                            ; $4fb0: $b7
  ret                                             ; $4fb1: $c9


Call_008_4fb2:
  ld a, [$cc2a]                                   ; $4fb2: $fa $2a $cc
  dec a                                           ; $4fb5: $3d
  rst $00                                         ; $4fb6: $c7

  db $bd, $4f, $c3, $4f

  ret z                                           ; $4fbb: $c8

  ld c, a                                         ; $4fbc: $4f

  ld a, $01                                       ; $4fbd: $3e $01
  ld [$cec3], a                                   ; $4fbf: $ea $c3 $ce
  ret                                             ; $4fc2: $c9


  xor a                                           ; $4fc3: $af
  ld [$cec3], a                                   ; $4fc4: $ea $c3 $ce
  ret                                             ; $4fc7: $c9


  ld hl, $cec3                                    ; $4fc8: $21 $c3 $ce
  ld [hl], $02                                    ; $4fcb: $36 $02
  ld a, [$cebe]                                   ; $4fcd: $fa $be $ce
  or a                                            ; $4fd0: $b7
  ret nz                                          ; $4fd1: $c0

  inc [hl]                                        ; $4fd2: $34
  ret                                             ; $4fd3: $c9


  db $01, $41, $00, $01, $00, $00, $99, $26, $01, $02, $00, $02, $00, $01, $e7, $4f
  db $00, $02, $00, $4a, $d1, $6a, $d1, $8a, $d1, $aa, $d1, $ca, $d1, $ea, $d1, $0a
  db $d2, $2a, $d2, $2a, $2f, $18, $15, $12, $11, $2b, $2f, $18, $15, $12, $11, $2b
  db $2f, $18, $15, $12, $11, $2b, $2f, $1d, $1d, $1d, $1d, $1d, $1d, $1d, $1d, $1d
  db $1d, $1d, $21, $d4, $4f, $c3, $52, $29, $3e, $04, $e0, $8f, $21, $f7, $4f, $f0
  db $cf, $cf, $cd

  ld c, e                                         ; $5027: $4b
  add hl, sp                                      ; $5028: $39

  call Call_000_38e8                              ; $5029: $cd $e8 $38
  ld a, l                                         ; $502c: $7d
  ld [$cc5e], a                                   ; $502d: $ea $5e $cc
  ld a, h                                         ; $5030: $7c
  ld [$cc5f], a                                   ; $5031: $ea $5f $cc
  ld hl, $7e2a                                    ; $5034: $21 $2a $7e
  call Call_000_33f3                              ; $5037: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $0168                                    ; $503d: $21 $68 $01
  call Call_000_3916                              ; $5040: $cd $16 $39
  call Call_008_5058                              ; $5043: $cd $58 $50
  jp Jump_008_5116                                ; $5046: $c3 $16 $51


  ldh a, [$ffa6]                                  ; $5049: $f0 $a6
  and $03                                         ; $504b: $e6 $03
  ret z                                           ; $504d: $c8

  ld a, $02                                       ; $504e: $3e $02
  ld [$c0a0], a                                   ; $5050: $ea $a0 $c0
  ld a, $0b                                       ; $5053: $3e $0b
  jp Jump_000_261e                                ; $5055: $c3 $1e $26


Call_008_5058:
  ld hl, $ffb9                                    ; $5058: $21 $b9 $ff
  ld [hl], $80                                    ; $505b: $36 $80
  inc hl                                          ; $505d: $23
  ld [hl], $00                                    ; $505e: $36 $00
  ldh a, [$ffce]                                  ; $5060: $f0 $ce
  ld hl, $5558                                    ; $5062: $21 $58 $55
  call Call_000_33f3                              ; $5065: $cd $f3 $33

  db $00, $76, $2a

  call Call_000_35e1                              ; $506b: $cd $e1 $35

  db $00, $00, $07, $07

  ld bc, $0000                                    ; $5072: $01 $00 $00
  ld de, $d027                                    ; $5075: $11 $27 $d0
  ldh a, [rSVBK]                                  ; $5078: $f0 $70
  push af                                         ; $507a: $f5
  ld a, $01                                       ; $507b: $3e $01
  ldh [rSVBK], a                                  ; $507d: $e0 $70
  xor a                                           ; $507f: $af
  ld hl, $5570                                    ; $5080: $21 $70 $55
  call Call_000_33f3                              ; $5083: $cd $f3 $33

  db $00, $7c, $33

  pop af                                          ; $5089: $f1
  ldh [rSVBK], a                                  ; $508a: $e0 $70
  call Call_008_50bf                              ; $508c: $cd $bf $50
  ld a, $38                                       ; $508f: $3e $38
  ld [$c07f], a                                   ; $5091: $ea $7f $c0
  ldh a, [$ffce]                                  ; $5094: $f0 $ce
  ld hl, $5573                                    ; $5096: $21 $73 $55
  call Call_000_3427                              ; $5099: $cd $27 $34

  db $00, $b1, $10, $5e, $c0, $04, $80, $00, $00, $e8, $58, $64, $c0, $04, $a0, $20
  db $00, $e8, $58

  ld e, [hl]                                      ; $50af: $5e
  ret nz                                          ; $50b0: $c0

  inc b                                           ; $50b1: $04
  add b                                           ; $50b2: $80
  nop                                             ; $50b3: $00
  nop                                             ; $50b4: $00
  add b                                           ; $50b5: $80
  rst $18                                         ; $50b6: $df
  ld h, h                                         ; $50b7: $64
  ret nz                                          ; $50b8: $c0

  inc b                                           ; $50b9: $04
  and b                                           ; $50ba: $a0
  jr nz, jr_008_50bd                              ; $50bb: $20 $00

jr_008_50bd:
  ret nz                                          ; $50bd: $c0

  rst $18                                         ; $50be: $df

Call_008_50bf:
  ld a, [$cafa]                                   ; $50bf: $fa $fa $ca
  or a                                            ; $50c2: $b7
  jr z, jr_008_50e9                               ; $50c3: $28 $24

  ld hl, $58e8                                    ; $50c5: $21 $e8 $58
  ld de, $df80                                    ; $50c8: $11 $80 $df
  ld bc, $0040                                    ; $50cb: $01 $40 $00
  call Call_000_2851                              ; $50ce: $cd $51 $28
  ld hl, $50af                                    ; $50d1: $21 $af $50
  call Call_000_1a84                              ; $50d4: $cd $84 $1a
  ld hl, $58e8                                    ; $50d7: $21 $e8 $58
  ld de, $dfc0                                    ; $50da: $11 $c0 $df
  ld bc, $0040                                    ; $50dd: $01 $40 $00
  call Call_000_2851                              ; $50e0: $cd $51 $28
  ld hl, $50b7                                    ; $50e3: $21 $b7 $50
  jp Jump_000_1a89                                ; $50e6: $c3 $89 $1a


jr_008_50e9:
  ld hl, $509f                                    ; $50e9: $21 $9f $50
  call Call_000_1a5c                              ; $50ec: $cd $5c $1a
  ld hl, $50a7                                    ; $50ef: $21 $a7 $50
  jp Jump_000_1a61                                ; $50f2: $c3 $61 $1a


  ldh a, [rSVBK]                                  ; $50f5: $f0 $70
  push af                                         ; $50f7: $f5
  ld a, $03                                       ; $50f8: $3e $03
  ldh [rSVBK], a                                  ; $50fa: $e0 $70
  ld b, $07                                       ; $50fc: $06 $07
  ld a, $86                                       ; $50fe: $3e $86
  ld hl, $d020                                    ; $5100: $21 $20 $d0
  ld de, $000c                                    ; $5103: $11 $0c $00

jr_008_5106:
  ld c, $14                                       ; $5106: $0e $14

jr_008_5108:
  ld [hl+], a                                     ; $5108: $22
  dec c                                           ; $5109: $0d
  jr nz, jr_008_5108                              ; $510a: $20 $fc

  add $07                                         ; $510c: $c6 $07
  add hl, de                                      ; $510e: $19
  dec b                                           ; $510f: $05
  jr nz, jr_008_5106                              ; $5110: $20 $f4

  pop af                                          ; $5112: $f1
  ldh [rSVBK], a                                  ; $5113: $e0 $70
  ret                                             ; $5115: $c9


Jump_008_5116:
  ld c, $00                                       ; $5116: $0e $00
  ld e, $14                                       ; $5118: $1e $14
  ld d, $09                                       ; $511a: $16 $09
  ld hl, $0140                                    ; $511c: $21 $40 $01
  call Call_000_149f                              ; $511f: $cd $9f $14
  ld hl, $4fe0                                    ; $5122: $21 $e0 $4f
  call Call_000_3013                              ; $5125: $cd $13 $30
  ld a, $98                                       ; $5128: $3e $98
  ld [$c159], a                                   ; $512a: $ea $59 $c1
  ld a, $08                                       ; $512d: $3e $08
  ld [$c1a2], a                                   ; $512f: $ea $a2 $c1
  ldh a, [$ffcf]                                  ; $5132: $f0 $cf
  ld hl, $2b93                                    ; $5134: $21 $93 $2b
  call Call_000_3427                              ; $5137: $cd $27 $34

  db $01, $75, $66

  ld bc, $005b                                    ; $513d: $01 $5b $00
  ld bc, $0000                                    ; $5140: $01 $00 $00
  sbc c                                           ; $5143: $99
  ld h, $01                                       ; $5144: $26 $01
  ld [bc], a                                      ; $5146: $02
  ld bc, $a102                                    ; $5147: $01 $02 $a1
  ret nc                                          ; $514a: $d0

  pop bc                                          ; $514b: $c1
  ret nc                                          ; $514c: $d0

  pop hl                                          ; $514d: $e1
  ret nc                                          ; $514e: $d0

  ld bc, $21d1                                    ; $514f: $01 $d1 $21
  pop de                                          ; $5152: $d1
  ld b, c                                         ; $5153: $41
  pop de                                          ; $5154: $d1
  ld h, c                                         ; $5155: $61
  pop de                                          ; $5156: $d1
  add c                                           ; $5157: $81
  pop de                                          ; $5158: $d1
  and c                                           ; $5159: $a1
  pop de                                          ; $515a: $d1
  ld l, l                                         ; $515b: $6d
  nop                                             ; $515c: $00
  dec b                                           ; $515d: $05
  ld l, e                                         ; $515e: $6b
  ld d, c                                         ; $515f: $51
  adc d                                           ; $5160: $8a
  ld d, c                                         ; $5161: $51
  nop                                             ; $5162: $00
  ld a, h                                         ; $5163: $7c
  nop                                             ; $5164: $00
  ld b, $6b                                       ; $5165: $06 $6b
  ld d, c                                         ; $5167: $51
  adc d                                           ; $5168: $8a
  ld d, c                                         ; $5169: $51
  nop                                             ; $516a: $00
  inc b                                           ; $516b: $04
  ld b, $08                                       ; $516c: $06 $08
  ld a, [bc]                                      ; $516e: $0a
  inc c                                           ; $516f: $0c
  ld c, $01                                       ; $5170: $0e $01
  ld bc, $5178                                    ; $5172: $01 $78 $51
  add b                                           ; $5175: $80
  nop                                             ; $5176: $00
  ld b, c                                         ; $5177: $41
  add e                                           ; $5178: $83
  ret nc                                          ; $5179: $d0

  jp $e3d0                                        ; $517a: $c3 $d0 $e3


  ret nc                                          ; $517d: $d0

  inc bc                                          ; $517e: $03
  pop de                                          ; $517f: $d1
  inc hl                                          ; $5180: $23
  pop de                                          ; $5181: $d1
  ld b, e                                         ; $5182: $43
  pop de                                          ; $5183: $d1
  ld h, e                                         ; $5184: $63
  pop de                                          ; $5185: $d1
  add e                                           ; $5186: $83
  pop de                                          ; $5187: $d1
  and e                                           ; $5188: $a3
  pop de                                          ; $5189: $d1
  ld bc, $9102                                    ; $518a: $01 $02 $91
  ld d, c                                         ; $518d: $51
  add b                                           ; $518e: $80
  nop                                             ; $518f: $00
  ld b, c                                         ; $5190: $41
  add e                                           ; $5191: $83
  ret nc                                          ; $5192: $d0

  jp Jump_000_03d0                                ; $5193: $c3 $d0 $03


  pop de                                          ; $5196: $d1
  ld b, e                                         ; $5197: $43
  pop de                                          ; $5198: $d1
  add e                                           ; $5199: $83
  pop de                                          ; $519a: $d1
  jp $afd1                                        ; $519b: $c3 $d1 $af


  ld [$cbcf], a                                   ; $519e: $ea $cf $cb
  ld hl, $513d                                    ; $51a1: $21 $3d $51
  jp Jump_000_2952                                ; $51a4: $c3 $52 $29


  ld hl, $7b8d                                    ; $51a7: $21 $8d $7b
  call Call_000_33f3                              ; $51aa: $cd $f3 $33
  inc bc                                          ; $51ad: $03
  adc b                                           ; $51ae: $88
  ld a, [hl]                                      ; $51af: $7e
  rst $18                                         ; $51b0: $df
  call Call_008_5243                              ; $51b1: $cd $43 $52
  call Call_008_5210                              ; $51b4: $cd $10 $52
  call Call_008_5285                              ; $51b7: $cd $85 $52
  jp RST_20                                       ; $51ba: $c3 $20 $00


  ldh a, [$ffa6]                                  ; $51bd: $f0 $a6
  bit 0, a                                        ; $51bf: $cb $47
  jr nz, jr_008_51ed                              ; $51c1: $20 $2a

  bit 1, a                                        ; $51c3: $cb $4f
  jr nz, jr_008_51ed                              ; $51c5: $20 $26

  and $f0                                         ; $51c7: $e6 $f0
  ret z                                           ; $51c9: $c8

  ld hl, $51e4                                    ; $51ca: $21 $e4 $51
  ld a, [$cbcf]                                   ; $51cd: $fa $cf $cb
  rst $08                                         ; $51d0: $cf
  ld b, a                                         ; $51d1: $47
  ldh a, [$ffa6]                                  ; $51d2: $f0 $a6
  cp b                                            ; $51d4: $b8
  jr z, jr_008_51dc                               ; $51d5: $28 $05

jr_008_51d7:
  xor a                                           ; $51d7: $af
  ld [$cbcf], a                                   ; $51d8: $ea $cf $cb
  ret                                             ; $51db: $c9


jr_008_51dc:
  ld a, [$cbcf]                                   ; $51dc: $fa $cf $cb
  inc a                                           ; $51df: $3c
  ld [$cbcf], a                                   ; $51e0: $ea $cf $cb
  ret                                             ; $51e3: $c9


  ld b, b                                         ; $51e4: $40
  ld b, b                                         ; $51e5: $40
  add b                                           ; $51e6: $80
  add b                                           ; $51e7: $80
  jr nz, @+$12                                    ; $51e8: $20 $10

  jr nz, jr_008_51fc                              ; $51ea: $20 $10

  nop                                             ; $51ec: $00

jr_008_51ed:
  jr jr_008_520b                                  ; $51ed: $18 $1c

  ld hl, $51e4                                    ; $51ef: $21 $e4 $51
  ld a, [$cbcf]                                   ; $51f2: $fa $cf $cb
  rst $08                                         ; $51f5: $cf
  or a                                            ; $51f6: $b7
  jr nz, jr_008_520b                              ; $51f7: $20 $12

  call Call_000_35e1                              ; $51f9: $cd $e1 $35

jr_008_51fc:
  nop                                             ; $51fc: $00
  ld [de], a                                      ; $51fd: $12
  db $10                                          ; $51fe: $10
  inc c                                           ; $51ff: $0c
  ld bc, $0000                                    ; $5200: $01 $00 $00
  ld de, $d062                                    ; $5203: $11 $62 $d0
  call Call_000_1380                              ; $5206: $cd $80 $13
  jr jr_008_51d7                                  ; $5209: $18 $cc

jr_008_520b:
  ld a, $0e                                       ; $520b: $3e $0e
  jp Jump_000_261e                                ; $520d: $c3 $1e $26


Call_008_5210:
  ld a, [$cbe6]                                   ; $5210: $fa $e6 $cb
  ld hl, $515d                                    ; $5213: $21 $5d $51
  call Call_000_3153                              ; $5216: $cd $53 $31
  ld c, [hl]                                      ; $5219: $4e
  push bc                                         ; $521a: $c5
  inc hl                                          ; $521b: $23
  ld a, [hl+]                                     ; $521c: $2a
  ld h, [hl]                                      ; $521d: $66
  ld l, a                                         ; $521e: $6f
  pop bc                                          ; $521f: $c1
  ldh a, [rSVBK]                                  ; $5220: $f0 $70
  push af                                         ; $5222: $f5
  ld a, $03                                       ; $5223: $3e $03
  ldh [rSVBK], a                                  ; $5225: $e0 $70
  ld b, $00                                       ; $5227: $06 $00

jr_008_5229:
  ld a, [hl+]                                     ; $5229: $2a
  push hl                                         ; $522a: $e5
  push bc                                         ; $522b: $c5
  ld l, a                                         ; $522c: $6f
  ld h, $00                                       ; $522d: $26 $00
  call Call_000_01f5                              ; $522f: $cd $f5 $01
  ld de, $d001                                    ; $5232: $11 $01 $d0
  add hl, de                                      ; $5235: $19
  ld [hl], $31                                    ; $5236: $36 $31
  pop bc                                          ; $5238: $c1
  pop hl                                          ; $5239: $e1
  inc b                                           ; $523a: $04
  ld a, b                                         ; $523b: $78
  cp c                                            ; $523c: $b9
  jr nz, jr_008_5229                              ; $523d: $20 $ea

  pop af                                          ; $523f: $f1
  ldh [rSVBK], a                                  ; $5240: $e0 $70
  ret                                             ; $5242: $c9


Call_008_5243:
  ld a, [$cbe6]                                   ; $5243: $fa $e6 $cb
  ld hl, $5160                                    ; $5246: $21 $60 $51
  call Call_000_3153                              ; $5249: $cd $53 $31
  ld a, [hl+]                                     ; $524c: $2a
  ld h, [hl]                                      ; $524d: $66
  ld l, a                                         ; $524e: $6f
  call Call_000_3013                              ; $524f: $cd $13 $30
  ld a, $7c                                       ; $5252: $3e $7c
  ld [$c159], a                                   ; $5254: $ea $59 $c1
  ld a, $01                                       ; $5257: $3e $01
  ld [$c1a2], a                                   ; $5259: $ea $a2 $c1
  ld b, $00                                       ; $525c: $06 $00
  ld a, [$cbe6]                                   ; $525e: $fa $e6 $cb
  ld hl, $515d                                    ; $5261: $21 $5d $51
  call Call_000_3153                              ; $5264: $cd $53 $31
  ld c, [hl]                                      ; $5267: $4e
  ld a, [$cbe6]                                   ; $5268: $fa $e6 $cb
  ld hl, $515b                                    ; $526b: $21 $5b $51
  call Call_000_3153                              ; $526e: $cd $53 $31
  ld a, [hl+]                                     ; $5271: $2a
  ld h, [hl]                                      ; $5272: $66
  ld l, a                                         ; $5273: $6f

jr_008_5274:
  push hl                                         ; $5274: $e5
  call Call_000_33f3                              ; $5275: $cd $f3 $33
  ld bc, $6628                                    ; $5278: $01 $28 $66
  pop hl                                          ; $527b: $e1
  inc hl                                          ; $527c: $23
  inc hl                                          ; $527d: $23
  inc hl                                          ; $527e: $23
  inc b                                           ; $527f: $04
  ld a, b                                         ; $5280: $78
  cp c                                            ; $5281: $b9
  jr nz, jr_008_5274                              ; $5282: $20 $f0

  ret                                             ; $5284: $c9


Call_008_5285:
  ld a, [$cbe6]                                   ; $5285: $fa $e6 $cb
  rst $00                                         ; $5288: $c7
  adc l                                           ; $5289: $8d
  ld d, d                                         ; $528a: $52
  sub d                                           ; $528b: $92
  ld d, d                                         ; $528c: $52
  call Call_008_52b6                              ; $528d: $cd $b6 $52
  jr jr_008_5295                                  ; $5290: $18 $03

  call Call_008_52ed                              ; $5292: $cd $ed $52

jr_008_5295:
  ld a, [$cd3b]                                   ; $5295: $fa $3b $cd
  ld d, a                                         ; $5298: $57
  ld b, $00                                       ; $5299: $06 $00
  ld a, [$cbe6]                                   ; $529b: $fa $e6 $cb
  ld hl, $515d                                    ; $529e: $21 $5d $51
  call Call_000_3153                              ; $52a1: $cd $53 $31
  ld c, [hl]                                      ; $52a4: $4e

jr_008_52a5:
  srl d                                           ; $52a5: $cb $3a
  jr nc, jr_008_52b0                              ; $52a7: $30 $07

  push bc                                         ; $52a9: $c5
  push de                                         ; $52aa: $d5
  call Call_008_532c                              ; $52ab: $cd $2c $53
  pop de                                          ; $52ae: $d1
  pop bc                                          ; $52af: $c1

jr_008_52b0:
  inc b                                           ; $52b0: $04
  ld a, b                                         ; $52b1: $78
  cp c                                            ; $52b2: $b9
  jr nz, jr_008_52a5                              ; $52b3: $20 $f0

  ret                                             ; $52b5: $c9


Call_008_52b6:
  ld a, $06                                       ; $52b6: $3e $06
  ldh [rSVBK], a                                  ; $52b8: $e0 $70
  ld b, $00                                       ; $52ba: $06 $00
  ld a, [$d9cb]                                   ; $52bc: $fa $cb $d9
  or a                                            ; $52bf: $b7
  jr z, jr_008_52c4                               ; $52c0: $28 $02

  set 0, b                                        ; $52c2: $cb $c0

jr_008_52c4:
  ld a, [$d9cc]                                   ; $52c4: $fa $cc $d9
  or a                                            ; $52c7: $b7
  jr z, jr_008_52cc                               ; $52c8: $28 $02

  set 1, b                                        ; $52ca: $cb $c8

jr_008_52cc:
  ld a, [$d9cd]                                   ; $52cc: $fa $cd $d9
  or a                                            ; $52cf: $b7
  jr z, jr_008_52d4                               ; $52d0: $28 $02

  set 2, b                                        ; $52d2: $cb $d0

jr_008_52d4:
  ld a, [$d9ce]                                   ; $52d4: $fa $ce $d9
  or a                                            ; $52d7: $b7
  jr z, jr_008_52dc                               ; $52d8: $28 $02

  set 3, b                                        ; $52da: $cb $d8

jr_008_52dc:
  ld a, [$d9cf]                                   ; $52dc: $fa $cf $d9
  or a                                            ; $52df: $b7
  jr z, jr_008_52e4                               ; $52e0: $28 $02

  set 4, b                                        ; $52e2: $cb $e0

jr_008_52e4:
  ld a, b                                         ; $52e4: $78
  ld [$cd3b], a                                   ; $52e5: $ea $3b $cd
  ld a, $01                                       ; $52e8: $3e $01
  ldh [rSVBK], a                                  ; $52ea: $e0 $70
  ret                                             ; $52ec: $c9


Call_008_52ed:
  ld a, $06                                       ; $52ed: $3e $06
  ldh [rSVBK], a                                  ; $52ef: $e0 $70
  ld b, $00                                       ; $52f1: $06 $00
  ld a, [$dc4d]                                   ; $52f3: $fa $4d $dc
  or a                                            ; $52f6: $b7
  jr z, jr_008_52fb                               ; $52f7: $28 $02

  set 0, b                                        ; $52f9: $cb $c0

jr_008_52fb:
  ld a, [$dc4e]                                   ; $52fb: $fa $4e $dc
  or a                                            ; $52fe: $b7
  jr z, jr_008_5303                               ; $52ff: $28 $02

  set 1, b                                        ; $5301: $cb $c8

jr_008_5303:
  ld a, [$dc4f]                                   ; $5303: $fa $4f $dc
  or a                                            ; $5306: $b7
  jr z, jr_008_530b                               ; $5307: $28 $02

  set 2, b                                        ; $5309: $cb $d0

jr_008_530b:
  ld a, [$dc5d]                                   ; $530b: $fa $5d $dc
  or a                                            ; $530e: $b7
  jr z, jr_008_5313                               ; $530f: $28 $02

  set 3, b                                        ; $5311: $cb $d8

jr_008_5313:
  ld a, [$dc7f]                                   ; $5313: $fa $7f $dc
  or a                                            ; $5316: $b7
  jr z, jr_008_531b                               ; $5317: $28 $02

  set 4, b                                        ; $5319: $cb $e0

jr_008_531b:
  ld a, [$dc9e]                                   ; $531b: $fa $9e $dc
  or a                                            ; $531e: $b7
  jr z, jr_008_5323                               ; $531f: $28 $02

  set 5, b                                        ; $5321: $cb $e8

jr_008_5323:
  ld a, b                                         ; $5323: $78
  ld [$cd3b], a                                   ; $5324: $ea $3b $cd
  ld a, $01                                       ; $5327: $3e $01
  ldh [rSVBK], a                                  ; $5329: $e0 $70
  ret                                             ; $532b: $c9


Call_008_532c:
  ld a, [$cbe6]                                   ; $532c: $fa $e6 $cb
  ld hl, $515e                                    ; $532f: $21 $5e $51
  call Call_000_3153                              ; $5332: $cd $53 $31
  ld a, [hl+]                                     ; $5335: $2a
  ld h, [hl]                                      ; $5336: $66
  ld l, a                                         ; $5337: $6f
  ld a, b                                         ; $5338: $78
  rst $08                                         ; $5339: $cf
  ld l, a                                         ; $533a: $6f
  ld h, $00                                       ; $533b: $26 $00
  call Call_000_01f5                              ; $533d: $cd $f5 $01
  ldh a, [rSVBK]                                  ; $5340: $f0 $70
  push af                                         ; $5342: $f5
  ld a, $03                                       ; $5343: $3e $03
  ldh [rSVBK], a                                  ; $5345: $e0 $70
  ld de, $d001                                    ; $5347: $11 $01 $d0
  add hl, de                                      ; $534a: $19
  ld [hl], $0f                                    ; $534b: $36 $0f
  pop af                                          ; $534d: $f1
  ldh [rSVBK], a                                  ; $534e: $e0 $70
  ret                                             ; $5350: $c9


  db $01, $5c, $80, $00, $00, $00, $99, $26, $01, $02, $01, $02, $3e, $00, $38, $00
  db $4a, $00, $38, $00, $56, $00, $38, $00, $62, $00, $38, $00, $44, $00, $3a, $00
  db $50, $00, $3a, $00, $5c, $00, $3a, $00, $4a, $00, $3c, $00, $56, $00, $3c, $00
  db $50, $00, $3e, $00, $6a, $00, $02, $00, $70, $00, $02, $00, $76, $00, $02, $00
  db $7c, $00, $02, $00, $6d, $00, $08, $00, $73, $00, $08, $00, $79, $00, $08, $00
  db $70, $00, $0e, $00, $76, $00, $0e, $00, $73, $00, $14, $00, $01, $00, $00, $07
  db $13, $02, $02, $0b, $00

  ld bc, $0000                                    ; $53b6: $01 $00 $00
  inc b                                           ; $53b9: $04
  inc de                                          ; $53ba: $13
  ld [bc], a                                      ; $53bb: $02
  ld [bc], a                                      ; $53bc: $02
  dec bc                                          ; $53bd: $0b
  nop                                             ; $53be: $00

  db $03, $00, $00, $07, $00, $03, $03, $04, $00, $0a, $00, $03, $03, $07, $00, $00
  db $13, $03, $03, $0a, $00

  ld hl, $5351                                    ; $53d4: $21 $51 $53
  jp Jump_000_2952                                ; $53d7: $c3 $52 $29


  ld a, $07                                       ; $53da: $3e $07
  call Call_000_33f3                              ; $53dc: $cd $f3 $33

  db $07, $e5, $4d

  ld a, $02                                       ; $53e2: $3e $02
  ld [$c0ab], a                                   ; $53e4: $ea $ab $c0
  call Call_000_3663                              ; $53e7: $cd $63 $36
  ld a, $32                                       ; $53ea: $3e $32
  call Call_000_394b                              ; $53ec: $cd $4b $39
  ld hl, $7b8d                                    ; $53ef: $21 $8d $7b
  call Call_000_33f3                              ; $53f2: $cd $f3 $33

  db $03, $88, $7e

  xor a                                           ; $53f8: $af
  ld [$cbd6], a                                   ; $53f9: $ea $d6 $cb
  ld [$cbd7], a                                   ; $53fc: $ea $d7 $cb
  ld [$cb4c], a                                   ; $53ff: $ea $4c $cb
  ld [$cb4d], a                                   ; $5402: $ea $4d $cb
  dec a                                           ; $5405: $3d
  ld [$cb4b], a                                   ; $5406: $ea $4b $cb
  ld bc, $0019                                    ; $5409: $01 $19 $00
  ld hl, $cb4e                                    ; $540c: $21 $4e $cb
  call Call_000_1249                              ; $540f: $cd $49 $12
  ld a, $01                                       ; $5412: $3e $01
  ld [$c2ae], a                                   ; $5414: $ea $ae $c2
  call Call_008_5fa9                              ; $5417: $cd $a9 $5f
  ld a, [$cbdd]                                   ; $541a: $fa $dd $cb
  ld c, a                                         ; $541d: $4f
  ld a, $03                                       ; $541e: $3e $03
  sub c                                           ; $5420: $91
  add a                                           ; $5421: $87
  ld [$cb8b], a                                   ; $5422: $ea $8b $cb
  ld a, $00                                       ; $5425: $3e $00
  ld [$cb77], a                                   ; $5427: $ea $77 $cb
  jp Jump_008_56a4                                ; $542a: $c3 $a4 $56


  ld a, [$cd9a]                                   ; $542d: $fa $9a $cd
  or a                                            ; $5430: $b7
  ret nz                                          ; $5431: $c0

  call Call_000_33f3                              ; $5432: $cd $f3 $33

  db $06, $40, $52

  ret nz                                          ; $5438: $c0

  call Call_000_33f3                              ; $5439: $cd $f3 $33

  db $06, $22, $52

  jr nz, jr_008_5458                              ; $543f: $20 $17

  ld a, [$cb77]                                   ; $5441: $fa $77 $cb
  rst $00                                         ; $5444: $c7

  db $86, $54, $f8, $54, $21, $55, $37, $55, $8e, $55, $21, $56, $53, $54

  ldh a, [$ffa6]                                  ; $5453: $f0 $a6
  bit 0, a                                        ; $5455: $cb $47
  ret z                                           ; $5457: $c8

jr_008_5458:
  ld a, [$cbde]                                   ; $5458: $fa $de $cb
  or a                                            ; $545b: $b7
  ld a, $3d                                       ; $545c: $3e $3d
  jp nz, Jump_000_261e                            ; $545e: $c2 $1e $26

  xor a                                           ; $5461: $af
  ld [$c0a0], a                                   ; $5462: $ea $a0 $c0
  ldh a, [rSVBK]                                  ; $5465: $f0 $70
  push af                                         ; $5467: $f5
  ld a, $06                                       ; $5468: $3e $06
  ldh [rSVBK], a                                  ; $546a: $e0 $70
  ld a, $3d                                       ; $546c: $3e $3d
  ld [$ddc4], a                                   ; $546e: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $5471: $e0 $d6
  ld a, $02                                       ; $5473: $3e $02
  ldh [$ffd7], a                                  ; $5475: $e0 $d7
  ld a, $40                                       ; $5477: $3e $40
  ldh [$ffd8], a                                  ; $5479: $e0 $d8
  ld [$ddc5], a                                   ; $547b: $ea $c5 $dd
  pop af                                          ; $547e: $f1
  ldh [rSVBK], a                                  ; $547f: $e0 $70
  ld a, $0b                                       ; $5481: $3e $0b
  jp Jump_000_261e                                ; $5483: $c3 $1e $26


  ldh a, [$ffa6]                                  ; $5486: $f0 $a6
  bit 0, a                                        ; $5488: $cb $47
  jr nz, jr_008_5494                              ; $548a: $20 $08

  ld hl, $ffa5                                    ; $548c: $21 $a5 $ff
  or [hl]                                         ; $548f: $b6
  jr nz, jr_008_54bf                              ; $5490: $20 $2d

  jr jr_008_54b0                                  ; $5492: $18 $1c

jr_008_5494:
  ld hl, $cb6a                                    ; $5494: $21 $6a $cb
  ld c, [hl]                                      ; $5497: $4e
  inc hl                                          ; $5498: $23
  ld b, [hl]                                      ; $5499: $46
  ld hl, $000f                                    ; $549a: $21 $0f $00
  add hl, bc                                      ; $549d: $09
  xor a                                           ; $549e: $af
  ld [hl+], a                                     ; $549f: $22
  ld [hl], a                                      ; $54a0: $77
  call Call_000_0864                              ; $54a1: $cd $64 $08
  ld a, $01                                       ; $54a4: $3e $01
  ld [$cb77], a                                   ; $54a6: $ea $77 $cb
  ld hl, $0002                                    ; $54a9: $21 $02 $00
  add hl, bc                                      ; $54ac: $09
  ld [hl], $03                                    ; $54ad: $36 $03
  ret                                             ; $54af: $c9


jr_008_54b0:
  ld hl, $cb6a                                    ; $54b0: $21 $6a $cb
  ld a, [hl+]                                     ; $54b3: $2a
  ld h, [hl]                                      ; $54b4: $66
  ld l, a                                         ; $54b5: $6f
  ld de, $0001                                    ; $54b6: $11 $01 $00
  add hl, de                                      ; $54b9: $19
  ld a, $00                                       ; $54ba: $3e $00
  ld [hl+], a                                     ; $54bc: $22
  ld [hl], a                                      ; $54bd: $77
  ret                                             ; $54be: $c9


jr_008_54bf:
  call Call_000_33f3                              ; $54bf: $cd $f3 $33

  db $03, $c0, $6f

  cp $02                                          ; $54c5: $fe $02
  jr z, jr_008_54e2                               ; $54c7: $28 $19

  cp $06                                          ; $54c9: $fe $06
  ret nz                                          ; $54cb: $c0

  ld hl, $cb6a                                    ; $54cc: $21 $6a $cb
  ld e, [hl]                                      ; $54cf: $5e
  inc hl                                          ; $54d0: $23
  ld d, [hl]                                      ; $54d1: $56
  ld hl, $0006                                    ; $54d2: $21 $06 $00
  add hl, de                                      ; $54d5: $19
  ld a, [hl]                                      ; $54d6: $7e
  cp $08                                          ; $54d7: $fe $08
  jr c, jr_008_54b0                               ; $54d9: $38 $d5

  ld hl, $0002                                    ; $54db: $21 $02 $00
  add hl, de                                      ; $54de: $19
  ld [hl], $01                                    ; $54df: $36 $01
  ret                                             ; $54e1: $c9


jr_008_54e2:
  ld hl, $cb6a                                    ; $54e2: $21 $6a $cb
  ld e, [hl]                                      ; $54e5: $5e
  inc hl                                          ; $54e6: $23
  ld d, [hl]                                      ; $54e7: $56
  ld hl, $0006                                    ; $54e8: $21 $06 $00
  add hl, de                                      ; $54eb: $19
  ld a, [hl]                                      ; $54ec: $7e
  cp $98                                          ; $54ed: $fe $98
  jr nc, jr_008_54b0                              ; $54ef: $30 $bf

  ld hl, $0002                                    ; $54f1: $21 $02 $00
  add hl, de                                      ; $54f4: $19
  ld [hl], $02                                    ; $54f5: $36 $02
  ret                                             ; $54f7: $c9


  ldh a, [$ffa6]                                  ; $54f8: $f0 $a6
  bit 0, a                                        ; $54fa: $cb $47
  ret z                                           ; $54fc: $c8

  call Call_008_5636                              ; $54fd: $cd $36 $56
  ret nz                                          ; $5500: $c0

  ld hl, $cb6a                                    ; $5501: $21 $6a $cb
  ld c, [hl]                                      ; $5504: $4e
  inc hl                                          ; $5505: $23
  ld b, [hl]                                      ; $5506: $46
  ld hl, $0027                                    ; $5507: $21 $27 $00
  add hl, bc                                      ; $550a: $09
  ld a, $0f                                       ; $550b: $3e $0f
  sub [hl]                                        ; $550d: $96
  srl a                                           ; $550e: $cb $3f
  ld hl, $6348                                    ; $5510: $21 $48 $63
  call Call_000_317a                              ; $5513: $cd $7a $31
  ld e, l                                         ; $5516: $5d
  ld d, h                                         ; $5517: $54
  call Call_000_09f4                              ; $5518: $cd $f4 $09
  ld a, $02                                       ; $551b: $3e $02
  ld [$cb77], a                                   ; $551d: $ea $77 $cb
  ret                                             ; $5520: $c9


  ld hl, $cb6a                                    ; $5521: $21 $6a $cb
  ld a, [hl+]                                     ; $5524: $2a
  ld h, [hl]                                      ; $5525: $66
  ld l, a                                         ; $5526: $6f
  ld de, $0027                                    ; $5527: $11 $27 $00
  add hl, de                                      ; $552a: $19
  ld a, [hl]                                      ; $552b: $7e
  cp $12                                          ; $552c: $fe $12
  ret c                                           ; $552e: $d8

  ld a, $03                                       ; $552f: $3e $03
  ld [$cb77], a                                   ; $5531: $ea $77 $cb
  jp Jump_008_585e                                ; $5534: $c3 $5e $58


  ld hl, $cb6e                                    ; $5537: $21 $6e $cb
  ld a, [hl+]                                     ; $553a: $2a
  ld h, [hl]                                      ; $553b: $66
  ld l, a                                         ; $553c: $6f
  ld de, $002a                                    ; $553d: $11 $2a $00
  add hl, de                                      ; $5540: $19
  bit 0, [hl]                                     ; $5541: $cb $46
  push af                                         ; $5543: $f5
  call z, Call_008_5b2a                           ; $5544: $cc $2a $5b
  pop af                                          ; $5547: $f1
  call z, Call_008_5801                           ; $5548: $cc $01 $58
  ld a, [$cb78]                                   ; $554b: $fa $78 $cb
  or a                                            ; $554e: $b7
  ret nz                                          ; $554f: $c0

  ldh a, [$ffa6]                                  ; $5550: $f0 $a6
  ld hl, $ffa5                                    ; $5552: $21 $a5 $ff
  or [hl]                                         ; $5555: $b6
  ret z                                           ; $5556: $c8

  call Call_000_33f3                              ; $5557: $cd $f3 $33

  db $03, $c0, $6f

  cp $02                                          ; $555d: $fe $02
  jr z, jr_008_557b                               ; $555f: $28 $1a

  cp $06                                          ; $5561: $fe $06
  ret nz                                          ; $5563: $c0

  ld hl, $cb79                                    ; $5564: $21 $79 $cb
  ld a, [hl+]                                     ; $5567: $2a
  ld h, [hl]                                      ; $5568: $66
  ld l, a                                         ; $5569: $6f
  ld a, [$cb8b]                                   ; $556a: $fa $8b $cb
  cpl                                             ; $556d: $2f
  inc a                                           ; $556e: $3c
  call Call_000_3196                              ; $556f: $cd $96 $31
  ld a, l                                         ; $5572: $7d
  ld [$cb79], a                                   ; $5573: $ea $79 $cb
  ld a, h                                         ; $5576: $7c
  ld [$cb7a], a                                   ; $5577: $ea $7a $cb
  ret                                             ; $557a: $c9


jr_008_557b:
  ld hl, $cb79                                    ; $557b: $21 $79 $cb
  ld a, [hl+]                                     ; $557e: $2a
  ld h, [hl]                                      ; $557f: $66
  ld l, a                                         ; $5580: $6f
  ld a, [$cb8b]                                   ; $5581: $fa $8b $cb
  rst $08                                         ; $5584: $cf
  ld a, l                                         ; $5585: $7d
  ld [$cb79], a                                   ; $5586: $ea $79 $cb
  ld a, h                                         ; $5589: $7c
  ld [$cb7a], a                                   ; $558a: $ea $7a $cb
  ret                                             ; $558d: $c9


  call Call_008_57c7                              ; $558e: $cd $c7 $57
  call Call_008_565c                              ; $5591: $cd $5c $56
  ld hl, $cb6a                                    ; $5594: $21 $6a $cb
  ld e, [hl]                                      ; $5597: $5e
  inc hl                                          ; $5598: $23
  ld d, [hl]                                      ; $5599: $56
  ld hl, $0002                                    ; $559a: $21 $02 $00
  add hl, de                                      ; $559d: $19
  ld [hl], $04                                    ; $559e: $36 $04
  ld hl, $001c                                    ; $55a0: $21 $1c $00
  add hl, de                                      ; $55a3: $19
  ld [hl], $01                                    ; $55a4: $36 $01
  ld a, [$cb4b]                                   ; $55a6: $fa $4b $cb
  cp $0b                                          ; $55a9: $fe $0b
  jr z, jr_008_55e1                               ; $55ab: $28 $34

  ld a, [$cb4b]                                   ; $55ad: $fa $4b $cb
  cp $09                                          ; $55b0: $fe $09
  jr nz, jr_008_55c1                              ; $55b2: $20 $0d

  ld a, [$cb61]                                   ; $55b4: $fa $61 $cb
  cp $ff                                          ; $55b7: $fe $ff
  jr z, jr_008_55ea                               ; $55b9: $28 $2f

  cp $0a                                          ; $55bb: $fe $0a
  jr nz, jr_008_55e1                              ; $55bd: $20 $22

  jr jr_008_55ea                                  ; $55bf: $18 $29

jr_008_55c1:
  ld a, [$cb4b]                                   ; $55c1: $fa $4b $cb
  cp $0a                                          ; $55c4: $fe $0a
  jr nz, jr_008_55ea                              ; $55c6: $20 $22

  ld a, [$cb60]                                   ; $55c8: $fa $60 $cb
  cp $0a                                          ; $55cb: $fe $0a
  jr z, jr_008_55d8                               ; $55cd: $28 $09

  ld a, [$cb61]                                   ; $55cf: $fa $61 $cb
  cp $ff                                          ; $55d2: $fe $ff
  jr nz, jr_008_55e1                              ; $55d4: $20 $0b

  jr jr_008_55ea                                  ; $55d6: $18 $12

jr_008_55d8:
  ld a, [$cb63]                                   ; $55d8: $fa $63 $cb
  cp $ff                                          ; $55db: $fe $ff
  jr nz, jr_008_55e1                              ; $55dd: $20 $02

  jr jr_008_55ea                                  ; $55df: $18 $09

jr_008_55e1:
  call Call_008_582d                              ; $55e1: $cd $2d $58
  ld a, $06                                       ; $55e4: $3e $06
  ld [$cb77], a                                   ; $55e6: $ea $77 $cb
  ret                                             ; $55e9: $c9


jr_008_55ea:
  ld a, [$cb7b]                                   ; $55ea: $fa $7b $cb
  or a                                            ; $55ed: $b7
  jr z, jr_008_55f6                               ; $55ee: $28 $06

  ld a, [$cb7b]                                   ; $55f0: $fa $7b $cb
  dec a                                           ; $55f3: $3d
  jr z, jr_008_5612                               ; $55f4: $28 $1c

jr_008_55f6:
  call Call_008_58b3                              ; $55f6: $cd $b3 $58
  ld a, [$cb4b]                                   ; $55f9: $fa $4b $cb
  ld hl, $cb4e                                    ; $55fc: $21 $4e $cb
  call Call_000_317a                              ; $55ff: $cd $7a $31
  ld a, [hl]                                      ; $5602: $7e
  cp $0a                                          ; $5603: $fe $0a
  jr z, jr_008_5612                               ; $5605: $28 $0b

  ld a, $01                                       ; $5607: $3e $01
  ld [$cb7b], a                                   ; $5609: $ea $7b $cb
  ld a, $05                                       ; $560c: $3e $05
  ld [$cb77], a                                   ; $560e: $ea $77 $cb
  ret                                             ; $5611: $c9


jr_008_5612:
  call Call_008_58b3                              ; $5612: $cd $b3 $58
  call Call_008_582d                              ; $5615: $cd $2d $58
  call Call_008_58c9                              ; $5618: $cd $c9 $58
  ld a, $05                                       ; $561b: $3e $05
  ld [$cb77], a                                   ; $561d: $ea $77 $cb
  ret                                             ; $5620: $c9


  xor a                                           ; $5621: $af
  ld [$cb78], a                                   ; $5622: $ea $78 $cb
  ld hl, $cb6a                                    ; $5625: $21 $6a $cb
  ld e, [hl]                                      ; $5628: $5e
  inc hl                                          ; $5629: $23
  ld d, [hl]                                      ; $562a: $56
  ld hl, $0002                                    ; $562b: $21 $02 $00
  add hl, de                                      ; $562e: $19
  ld a, [hl]                                      ; $562f: $7e
  or a                                            ; $5630: $b7
  ret nz                                          ; $5631: $c0

  ld [$cb77], a                                   ; $5632: $ea $77 $cb
  ret                                             ; $5635: $c9


Call_008_5636:
  ld hl, $cb6a                                    ; $5636: $21 $6a $cb
  ld c, [hl]                                      ; $5639: $4e
  inc hl                                          ; $563a: $23
  ld b, [hl]                                      ; $563b: $46
  ld hl, $0027                                    ; $563c: $21 $27 $00
  add hl, bc                                      ; $563f: $09
  ld a, $0f                                       ; $5640: $3e $0f
  sub [hl]                                        ; $5642: $96
  ld l, a                                         ; $5643: $6f
  ld h, $80                                       ; $5644: $26 $80
  call Call_000_009c                              ; $5646: $cd $9c $00
  call Call_000_007b                              ; $5649: $cd $7b $00
  ld de, $0600                                    ; $564c: $11 $00 $06
  add hl, de                                      ; $564f: $19
  bit 7, h                                        ; $5650: $cb $7c
  ret nz                                          ; $5652: $c0

  ld a, l                                         ; $5653: $7d
  ld [$cb70], a                                   ; $5654: $ea $70 $cb
  ld a, h                                         ; $5657: $7c
  ld [$cb71], a                                   ; $5658: $ea $71 $cb
  ret                                             ; $565b: $c9


Call_008_565c:
  xor a                                           ; $565c: $af
  ld [$cb8c], a                                   ; $565d: $ea $8c $cb
  ld b, $0a                                       ; $5660: $06 $0a
  ld c, $00                                       ; $5662: $0e $00

jr_008_5664:
  ld a, $0a                                       ; $5664: $3e $0a
  sub b                                           ; $5666: $90
  ld e, a                                         ; $5667: $5f
  ld a, $cb                                       ; $5668: $3e $cb
  call Call_000_0a46                              ; $566a: $cd $46 $0a
  jr z, jr_008_5670                               ; $566d: $28 $01

  inc c                                           ; $566f: $0c

jr_008_5670:
  dec b                                           ; $5670: $05
  jr nz, jr_008_5664                              ; $5671: $20 $f1

  ld a, [$cb4b]                                   ; $5673: $fa $4b $cb
  ld hl, $cb4e                                    ; $5676: $21 $4e $cb
  call Call_000_317a                              ; $5679: $cd $7a $31
  ld a, c                                         ; $567c: $79
  cp $0a                                          ; $567d: $fe $0a
  jr z, jr_008_5690                               ; $567f: $28 $0f

  ld a, [$cb7b]                                   ; $5681: $fa $7b $cb
  or a                                            ; $5684: $b7
  jr nz, jr_008_568a                              ; $5685: $20 $03

  ld [hl], c                                      ; $5687: $71
  jr jr_008_56a4                                  ; $5688: $18 $1a

jr_008_568a:
  ld a, c                                         ; $568a: $79
  sub [hl]                                        ; $568b: $96
  inc hl                                          ; $568c: $23
  ld [hl], a                                      ; $568d: $77
  jr jr_008_56a4                                  ; $568e: $18 $14

jr_008_5690:
  ld a, [$cb7b]                                   ; $5690: $fa $7b $cb
  or a                                            ; $5693: $b7
  jr z, jr_008_569b                               ; $5694: $28 $05

  inc hl                                          ; $5696: $23
  ld [hl], $0a                                    ; $5697: $36 $0a
  jr jr_008_56a4                                  ; $5699: $18 $09

jr_008_569b:
  ld [hl], $0a                                    ; $569b: $36 $0a
  ld a, $01                                       ; $569d: $3e $01
  ld [$cb8c], a                                   ; $569f: $ea $8c $cb
  jr jr_008_56a4                                  ; $56a2: $18 $00

Jump_008_56a4:
jr_008_56a4:
  ldh a, [rSVBK]                                  ; $56a4: $f0 $70
  push af                                         ; $56a6: $f5
  ld a, $03                                       ; $56a7: $3e $03
  ldh [rSVBK], a                                  ; $56a9: $e0 $70
  call Call_008_574e                              ; $56ab: $cd $4e $57
  ld a, [$cb4b]                                   ; $56ae: $fa $4b $cb
  ld hl, $cb4e                                    ; $56b1: $21 $4e $cb
  call Call_000_317a                              ; $56b4: $cd $7a $31
  ld a, [hl+]                                     ; $56b7: $2a
  cp $ff                                          ; $56b8: $fe $ff
  jr z, jr_008_5707                               ; $56ba: $28 $4b

  cp $0a                                          ; $56bc: $fe $0a
  jr z, jr_008_56e8                               ; $56be: $28 $28

  or a                                            ; $56c0: $b7
  jr nz, jr_008_56c7                              ; $56c1: $20 $04

  ld a, $a9                                       ; $56c3: $3e $a9
  jr jr_008_56c9                                  ; $56c5: $18 $02

jr_008_56c7:
  add $80                                         ; $56c7: $c6 $80

jr_008_56c9:
  ld a, [hl-]                                     ; $56c9: $3a
  cp $0a                                          ; $56ca: $fe $0a
  jr z, jr_008_56dd                               ; $56cc: $28 $0f

  cp $ff                                          ; $56ce: $fe $ff
  jr z, jr_008_5707                               ; $56d0: $28 $35

  or a                                            ; $56d2: $b7
  jr nz, jr_008_56d9                              ; $56d3: $20 $04

  ld a, $98                                       ; $56d5: $3e $98
  jr jr_008_56db                                  ; $56d7: $18 $02

jr_008_56d9:
  add $9e                                         ; $56d9: $c6 $9e

jr_008_56db:
  jr jr_008_5707                                  ; $56db: $18 $2a

jr_008_56dd:
  ld hl, $53ad                                    ; $56dd: $21 $ad $53
  ld de, $cb3f                                    ; $56e0: $11 $3f $cb
  call Call_000_025a                              ; $56e3: $cd $5a $02
  jr jr_008_56f1                                  ; $56e6: $18 $09

jr_008_56e8:
  ld hl, $53b6                                    ; $56e8: $21 $b6 $53
  ld de, $cb3f                                    ; $56eb: $11 $3f $cb
  call Call_000_025a                              ; $56ee: $cd $5a $02

jr_008_56f1:
  ld hl, $cb46                                    ; $56f1: $21 $46 $cb
  ld a, [$cb4b]                                   ; $56f4: $fa $4b $cb
  cp $03                                          ; $56f7: $fe $03
  jr nc, jr_008_5701                              ; $56f9: $30 $06

  ld e, a                                         ; $56fb: $5f
  add e                                           ; $56fc: $83
  add e                                           ; $56fd: $83
  add $05                                         ; $56fe: $c6 $05
  ld [hl], a                                      ; $5700: $77

jr_008_5701:
  ld de, $cb3f                                    ; $5701: $11 $3f $cb
  call Call_000_1411                              ; $5704: $cd $11 $14

jr_008_5707:
  ld hl, $d044                                    ; $5707: $21 $44 $d0
  ld a, [$cb4b]                                   ; $570a: $fa $4b $cb
  cp $02                                          ; $570d: $fe $02
  jr c, jr_008_5713                               ; $570f: $38 $02

  ld a, $02                                       ; $5711: $3e $02

jr_008_5713:
  call Call_000_3173                              ; $5713: $cd $73 $31
  ld c, l                                         ; $5716: $4d
  ld b, h                                         ; $5717: $44
  ld hl, $cbd6                                    ; $5718: $21 $d6 $cb
  ld a, [hl+]                                     ; $571b: $2a
  ld h, [hl]                                      ; $571c: $66
  ld l, a                                         ; $571d: $6f
  ld de, $000a                                    ; $571e: $11 $0a $00
  call Call_000_322f                              ; $5721: $cd $2f $32
  push de                                         ; $5724: $d5
  ld de, $000a                                    ; $5725: $11 $0a $00
  call Call_000_322f                              ; $5728: $cd $2f $32
  push de                                         ; $572b: $d5
  ld de, $000a                                    ; $572c: $11 $0a $00
  call Call_000_322f                              ; $572f: $cd $2f $32
  ld a, e                                         ; $5732: $7b
  or a                                            ; $5733: $b7
  jr z, jr_008_5739                               ; $5734: $28 $03

  add $80                                         ; $5736: $c6 $80
  ld [bc], a                                      ; $5738: $02

jr_008_5739:
  inc bc                                          ; $5739: $03
  pop de                                          ; $573a: $d1
  or e                                            ; $573b: $b3
  jr z, jr_008_5742                               ; $573c: $28 $04

  ld a, e                                         ; $573e: $7b
  add $80                                         ; $573f: $c6 $80
  ld [bc], a                                      ; $5741: $02

jr_008_5742:
  inc bc                                          ; $5742: $03
  pop de                                          ; $5743: $d1
  ld a, e                                         ; $5744: $7b
  add $9e                                         ; $5745: $c6 $9e
  ld [bc], a                                      ; $5747: $02
  pop af                                          ; $5748: $f1
  ldh [rSVBK], a                                  ; $5749: $e0 $70
  jp RST_20                                       ; $574b: $c3 $20 $00


Call_008_574e:
  ld hl, $cbd6                                    ; $574e: $21 $d6 $cb
  xor a                                           ; $5751: $af
  ld [hl+], a                                     ; $5752: $22
  ld [hl+], a                                     ; $5753: $22
  ld c, $0c                                       ; $5754: $0e $0c
  ld hl, $cb4e                                    ; $5756: $21 $4e $cb

jr_008_5759:
  ld a, [hl+]                                     ; $5759: $2a
  cp $ff                                          ; $575a: $fe $ff
  jr z, jr_008_57c0                               ; $575c: $28 $62

  push hl                                         ; $575e: $e5
  ld b, a                                         ; $575f: $47
  cp $0a                                          ; $5760: $fe $0a
  jr nz, jr_008_5792                              ; $5762: $20 $2e

  inc hl                                          ; $5764: $23
  ld a, [hl+]                                     ; $5765: $2a
  cp $ff                                          ; $5766: $fe $ff
  jr z, jr_008_578f                               ; $5768: $28 $25

  cp $0a                                          ; $576a: $fe $0a
  jr nz, jr_008_577a                              ; $576c: $20 $0c

  ld b, $14                                       ; $576e: $06 $14
  inc hl                                          ; $5770: $23
  ld a, [hl]                                      ; $5771: $7e
  cp $ff                                          ; $5772: $fe $ff
  jr z, jr_008_578f                               ; $5774: $28 $19

  add b                                           ; $5776: $80
  ld b, a                                         ; $5777: $47
  jr jr_008_578f                                  ; $5778: $18 $15

jr_008_577a:
  ld a, [hl-]                                     ; $577a: $3a
  cp $0a                                          ; $577b: $fe $0a
  jr z, jr_008_578b                               ; $577d: $28 $0c

  ld a, [hl+]                                     ; $577f: $2a
  add b                                           ; $5780: $80
  ld b, a                                         ; $5781: $47
  ld a, [hl+]                                     ; $5782: $2a
  cp $ff                                          ; $5783: $fe $ff
  jr z, jr_008_578f                               ; $5785: $28 $08

  add b                                           ; $5787: $80
  ld b, a                                         ; $5788: $47
  jr jr_008_578f                                  ; $5789: $18 $04

jr_008_578b:
  ld a, $0a                                       ; $578b: $3e $0a
  add b                                           ; $578d: $80
  ld b, a                                         ; $578e: $47

jr_008_578f:
  ld a, b                                         ; $578f: $78
  jr jr_008_57aa                                  ; $5790: $18 $18

jr_008_5792:
  ld a, [hl]                                      ; $5792: $7e
  cp $0a                                          ; $5793: $fe $0a
  jr nz, jr_008_57a2                              ; $5795: $20 $0b

  ld b, a                                         ; $5797: $47
  inc hl                                          ; $5798: $23
  ld a, [hl]                                      ; $5799: $7e
  cp $ff                                          ; $579a: $fe $ff
  jr z, jr_008_578f                               ; $579c: $28 $f1

  add b                                           ; $579e: $80
  ld b, a                                         ; $579f: $47
  jr jr_008_578f                                  ; $57a0: $18 $ed

jr_008_57a2:
  cp $ff                                          ; $57a2: $fe $ff
  ld a, b                                         ; $57a4: $78
  jr z, jr_008_57aa                               ; $57a5: $28 $03

  ld a, [hl]                                      ; $57a7: $7e
  add b                                           ; $57a8: $80
  ld b, a                                         ; $57a9: $47

jr_008_57aa:
  ld b, a                                         ; $57aa: $47
  ld hl, $cbd6                                    ; $57ab: $21 $d6 $cb
  ld a, [hl+]                                     ; $57ae: $2a
  ld h, [hl]                                      ; $57af: $66
  ld l, a                                         ; $57b0: $6f
  ld a, b                                         ; $57b1: $78
  rst $08                                         ; $57b2: $cf
  ld a, l                                         ; $57b3: $7d
  ld [$cbd6], a                                   ; $57b4: $ea $d6 $cb
  ld a, h                                         ; $57b7: $7c
  ld [$cbd7], a                                   ; $57b8: $ea $d7 $cb
  pop hl                                          ; $57bb: $e1
  inc hl                                          ; $57bc: $23
  dec c                                           ; $57bd: $0d
  jr nz, jr_008_5759                              ; $57be: $20 $99

jr_008_57c0:
  ld hl, $cbd6                                    ; $57c0: $21 $d6 $cb
  ld a, [hl+]                                     ; $57c3: $2a
  ld h, [hl]                                      ; $57c4: $66
  ld l, a                                         ; $57c5: $6f
  ret                                             ; $57c6: $c9


Call_008_57c7:
  ld b, $0a                                       ; $57c7: $06 $0a

jr_008_57c9:
  ld a, $0a                                       ; $57c9: $3e $0a
  sub b                                           ; $57cb: $90
  ld e, a                                         ; $57cc: $5f
  ld a, $cb                                       ; $57cd: $3e $cb
  call Call_000_0a46                              ; $57cf: $cd $46 $0a
  jr nz, jr_008_57fd                              ; $57d2: $20 $29

  push hl                                         ; $57d4: $e5
  ld de, $0021                                    ; $57d5: $11 $21 $00
  add hl, de                                      ; $57d8: $19
  ld a, [hl+]                                     ; $57d9: $2a
  ld h, [hl]                                      ; $57da: $66
  ld l, a                                         ; $57db: $6f
  ld e, $02                                       ; $57dc: $1e $02
  ld d, $00                                       ; $57de: $16 $00
  call Call_000_34ed                              ; $57e0: $cd $ed $34
  or a                                            ; $57e3: $b7
  pop hl                                          ; $57e4: $e1
  jr z, jr_008_57fd                               ; $57e5: $28 $16

  push bc                                         ; $57e7: $c5
  ld c, l                                         ; $57e8: $4d
  ld b, h                                         ; $57e9: $44
  call Call_000_0dbb                              ; $57ea: $cd $bb $0d
  inc bc                                          ; $57ed: $03
  ld a, [bc]                                      ; $57ee: $0a
  add $10                                         ; $57ef: $c6 $10
  ld e, a                                         ; $57f1: $5f
  ld a, $cb                                       ; $57f2: $3e $cb
  call Call_000_0a46                              ; $57f4: $cd $46 $0a
  ld c, l                                         ; $57f7: $4d
  ld b, h                                         ; $57f8: $44
  call Call_000_0dbb                              ; $57f9: $cd $bb $0d
  pop bc                                          ; $57fc: $c1

jr_008_57fd:
  dec b                                           ; $57fd: $05
  jr nz, jr_008_57c9                              ; $57fe: $20 $c9

  ret                                             ; $5800: $c9


Call_008_5801:
  ld hl, $cb6e                                    ; $5801: $21 $6e $cb
  ld c, [hl]                                      ; $5804: $4e
  inc hl                                          ; $5805: $23
  ld b, [hl]                                      ; $5806: $46
  ld a, [bc]                                      ; $5807: $0a
  or a                                            ; $5808: $b7
  ret nz                                          ; $5809: $c0

  ld b, $0a                                       ; $580a: $06 $0a

jr_008_580c:
  ld a, $1a                                       ; $580c: $3e $1a
  sub b                                           ; $580e: $90
  ld e, a                                         ; $580f: $5f
  ld a, $cb                                       ; $5810: $3e $cb
  call Call_000_0a46                              ; $5812: $cd $46 $0a
  jr nz, jr_008_5824                              ; $5815: $20 $0d

  ld de, $000f                                    ; $5817: $11 $0f $00
  add hl, de                                      ; $581a: $19
  ld e, [hl]                                      ; $581b: $5e
  inc hl                                          ; $581c: $23
  ld d, [hl]                                      ; $581d: $56
  inc hl                                          ; $581e: $23
  ld a, [hl+]                                     ; $581f: $2a
  or [hl]                                         ; $5820: $b6
  or d                                            ; $5821: $b2
  or e                                            ; $5822: $b3
  ret nz                                          ; $5823: $c0

jr_008_5824:
  dec b                                           ; $5824: $05
  jr nz, jr_008_580c                              ; $5825: $20 $e5

  ld a, $04                                       ; $5827: $3e $04
  ld [$cb77], a                                   ; $5829: $ea $77 $cb
  ret                                             ; $582c: $c9


Call_008_582d:
  ld b, $0a                                       ; $582d: $06 $0a
  ld e, $00                                       ; $582f: $1e $00

jr_008_5831:
  ld a, $cb                                       ; $5831: $3e $cb
  call Call_000_0a46                              ; $5833: $cd $46 $0a
  jr nz, jr_008_5841                              ; $5836: $20 $09

  push bc                                         ; $5838: $c5
  push de                                         ; $5839: $d5
  ld c, l                                         ; $583a: $4d
  ld b, h                                         ; $583b: $44
  call Call_000_0dbb                              ; $583c: $cd $bb $0d
  pop de                                          ; $583f: $d1
  pop bc                                          ; $5840: $c1

jr_008_5841:
  inc e                                           ; $5841: $1c
  dec b                                           ; $5842: $05
  jr nz, jr_008_5831                              ; $5843: $20 $ec

  ld b, $0a                                       ; $5845: $06 $0a
  ld e, $10                                       ; $5847: $1e $10

jr_008_5849:
  ld a, $cb                                       ; $5849: $3e $cb
  call Call_000_0a46                              ; $584b: $cd $46 $0a
  jr nz, jr_008_5859                              ; $584e: $20 $09

  push bc                                         ; $5850: $c5
  push de                                         ; $5851: $d5
  ld c, l                                         ; $5852: $4d
  ld b, h                                         ; $5853: $44
  call Call_000_0dbb                              ; $5854: $cd $bb $0d
  pop de                                          ; $5857: $d1
  pop bc                                          ; $5858: $c1

jr_008_5859:
  inc e                                           ; $5859: $1c
  dec b                                           ; $585a: $05
  jr nz, jr_008_5849                              ; $585b: $20 $ec

  ret                                             ; $585d: $c9


Jump_008_585e:
  ld a, $4e                                       ; $585e: $3e $4e
  call Call_000_392b                              ; $5860: $cd $2b $39
  ld hl, $cb6a                                    ; $5863: $21 $6a $cb
  ld c, [hl]                                      ; $5866: $4e
  inc hl                                          ; $5867: $23
  ld b, [hl]                                      ; $5868: $46
  ld hl, $0006                                    ; $5869: $21 $06 $00
  add hl, bc                                      ; $586c: $09
  ld a, [hl+]                                     ; $586d: $2a
  ld h, [hl]                                      ; $586e: $66
  ld l, a                                         ; $586f: $6f
  ld a, $06                                       ; $5870: $3e $06
  rst $08                                         ; $5872: $cf
  ld a, l                                         ; $5873: $7d
  ldh [$ff9b], a                                  ; $5874: $e0 $9b
  ld a, h                                         ; $5876: $7c
  ldh [$ff9c], a                                  ; $5877: $e0 $9c
  ld hl, $0009                                    ; $5879: $21 $09 $00
  add hl, bc                                      ; $587c: $09
  ld a, [hl+]                                     ; $587d: $2a
  ld h, [hl]                                      ; $587e: $66
  ld l, a                                         ; $587f: $6f
  ld de, $fffc                                    ; $5880: $11 $fc $ff
  add hl, de                                      ; $5883: $19
  ld a, l                                         ; $5884: $7d
  ldh [$ff9d], a                                  ; $5885: $e0 $9d
  ld a, h                                         ; $5887: $7c
  ldh [$ff9e], a                                  ; $5888: $e0 $9e
  xor a                                           ; $588a: $af
  ldh [$ff9a], a                                  ; $588b: $e0 $9a
  ld a, $ca                                       ; $588d: $3e $ca
  call Call_000_04e0                              ; $588f: $cd $e0 $04
  ld hl, $cb6c                                    ; $5892: $21 $6c $cb
  ld [hl], e                                      ; $5895: $73
  inc hl                                          ; $5896: $23
  ld [hl], d                                      ; $5897: $72
  ld a, $01                                       ; $5898: $3e $01
  ldh [$ff9a], a                                  ; $589a: $e0 $9a
  ld a, $ca                                       ; $589c: $3e $ca
  call Call_000_04e0                              ; $589e: $cd $e0 $04
  ld hl, $cb6e                                    ; $58a1: $21 $6e $cb
  ld [hl], e                                      ; $58a4: $73
  inc hl                                          ; $58a5: $23
  ld [hl], d                                      ; $58a6: $72
  ld c, e                                         ; $58a7: $4b
  ld b, d                                         ; $58a8: $42
  ld de, $0f0c                                    ; $58a9: $11 $0c $0f
  call Call_000_3427                              ; $58ac: $cd $27 $34

  db $02, $8e, $68

  ret                                             ; $58b2: $c9


Call_008_58b3:
  xor a                                           ; $58b3: $af
  ld hl, $cb74                                    ; $58b4: $21 $74 $cb
  ld [hl+], a                                     ; $58b7: $22
  ld [hl+], a                                     ; $58b8: $22
  ld [hl+], a                                     ; $58b9: $22
  ld a, $80                                       ; $58ba: $3e $80
  call Call_000_28e6                              ; $58bc: $cd $e6 $28
  sub $40                                         ; $58bf: $d6 $40
  ld [$cb79], a                                   ; $58c1: $ea $79 $cb
  sbc a                                           ; $58c4: $9f
  ld [$cb7a], a                                   ; $58c5: $ea $7a $cb
  ret                                             ; $58c8: $c9


Call_008_58c9:
  ldh a, [rSVBK]                                  ; $58c9: $f0 $70
  push af                                         ; $58cb: $f5
  ld a, $03                                       ; $58cc: $3e $03
  ldh [rSVBK], a                                  ; $58ce: $e0 $70
  xor a                                           ; $58d0: $af
  ld [$cb7b], a                                   ; $58d1: $ea $7b $cb
  ld hl, $cb4b                                    ; $58d4: $21 $4b $cb
  inc [hl]                                        ; $58d7: $34
  ld b, $0a                                       ; $58d8: $06 $0a

jr_008_58da:
  ld a, $0a                                       ; $58da: $3e $0a
  sub b                                           ; $58dc: $90
  ldh [$ff9a], a                                  ; $58dd: $e0 $9a
  ld hl, $535d                                    ; $58df: $21 $5d $53
  call ResolveIndexedPointer8Stride4                              ; $58e2: $cd $06 $00
  ld de, $ff9b                                    ; $58e5: $11 $9b $ff
  call Call_000_0269                              ; $58e8: $cd $69 $02
  ld a, $cb                                       ; $58eb: $3e $cb
  call Call_000_04e0                              ; $58ed: $cd $e0 $04
  dec b                                           ; $58f0: $05
  jr nz, jr_008_58da                              ; $58f1: $20 $e7

  ld b, $0a                                       ; $58f3: $06 $0a

jr_008_58f5:
  ld a, $1a                                       ; $58f5: $3e $1a
  sub b                                           ; $58f7: $90
  ldh [$ff9a], a                                  ; $58f8: $e0 $9a
  sub $10                                         ; $58fa: $d6 $10
  ld hl, $5385                                    ; $58fc: $21 $85 $53
  call ResolveIndexedPointer8Stride4                              ; $58ff: $cd $06 $00
  ld de, $ff9b                                    ; $5902: $11 $9b $ff
  call Call_000_0269                              ; $5905: $cd $69 $02
  ld a, $cb                                       ; $5908: $3e $cb
  call Call_000_04e0                              ; $590a: $cd $e0 $04
  dec b                                           ; $590d: $05
  jr nz, jr_008_58f5                              ; $590e: $20 $e5

  ld a, [$cb4b]                                   ; $5910: $fa $4b $cb
  cp $03                                          ; $5913: $fe $03
  jr nc, jr_008_5922                              ; $5915: $30 $0b

  ld a, [$cb4b]                                   ; $5917: $fa $4b $cb
  ld hl, $d004                                    ; $591a: $21 $04 $d0
  call Call_000_3173                              ; $591d: $cd $73 $31
  jr jr_008_592b                                  ; $5920: $18 $09

jr_008_5922:
  ld de, $53bf                                    ; $5922: $11 $bf $53
  call Call_000_1411                              ; $5925: $cd $11 $14
  ld hl, $d00a                                    ; $5928: $21 $0a $d0

jr_008_592b:
  ld a, [$cb4b]                                   ; $592b: $fa $4b $cb
  inc a                                           ; $592e: $3c
  cp $0b                                          ; $592f: $fe $0b
  jr c, jr_008_5935                               ; $5931: $38 $02

  ld a, $0a                                       ; $5933: $3e $0a

jr_008_5935:
  add $8a                                         ; $5935: $c6 $8a
  ld [hl], a                                      ; $5937: $77
  pop af                                          ; $5938: $f1
  ldh [rSVBK], a                                  ; $5939: $e0 $70
  rst $20                                         ; $593b: $e7
  ret                                             ; $593c: $c9


  db $d9, $04, $c5, $04, $b2, $04, $9f, $04, $8b, $04, $78, $04, $64, $04, $51, $04
  db $3e, $04, $2a, $04, $17, $04, $03, $04, $f0, $03, $dd, $03, $c9, $03, $b6, $03
  db $a2, $03, $8f, $03, $7c, $03, $68, $03, $55, $03, $41, $03, $2e, $03, $1b, $03
  db $07, $03, $f4, $02, $e0, $02, $cd, $02, $ba, $02, $a6, $02, $93, $02, $80, $02
  db $6c, $02, $59, $02, $45, $02, $32, $02, $1f, $02, $0b, $02, $f8, $01, $e4, $01

  pop de                                          ; $598d: $d1
  ld bc, $01be                                    ; $598e: $01 $be $01
  xor d                                           ; $5991: $aa
  ld bc, $0197                                    ; $5992: $01 $97 $01
  add e                                           ; $5995: $83
  ld bc, $0170                                    ; $5996: $01 $70 $01
  ld e, l                                         ; $5999: $5d
  db $01, $49, $01                            ; $599a: $01 $49 $01

  ld hl, $0006                                    ; $599d: $21 $06 $00
  add hl, bc                                      ; $59a0: $09
  ld a, [hl]                                      ; $59a1: $7e
  sub $50                                         ; $59a2: $d6 $50
  bit 7, a                                        ; $59a4: $cb $7f
  push af                                         ; $59a6: $f5
  jr z, jr_008_59ab                               ; $59a7: $28 $02

  cpl                                             ; $59a9: $2f
  inc a                                           ; $59aa: $3c

jr_008_59ab:
  ld h, a                                         ; $59ab: $67
  ld l, $35                                       ; $59ac: $2e $35
  call Call_000_009c                              ; $59ae: $cd $9c $00
  pop af                                          ; $59b1: $f1
  call nz, Call_000_007b                          ; $59b2: $c4 $7b $00
  ld a, l                                         ; $59b5: $7d
  ld [$cb72], a                                   ; $59b6: $ea $72 $cb
  ld a, h                                         ; $59b9: $7c
  ld [$cb73], a                                   ; $59ba: $ea $73 $cb
  ret                                             ; $59bd: $c9


Call_008_59be:
  ld hl, $0009                                    ; $59be: $21 $09 $00
  add hl, bc                                      ; $59c1: $09
  ld a, [hl+]                                     ; $59c2: $2a
  ld h, [hl]                                      ; $59c3: $66
  ld l, a                                         ; $59c4: $6f
  call Call_000_007b                              ; $59c5: $cd $7b $00
  ld de, $0088                                    ; $59c8: $11 $88 $00
  add hl, de                                      ; $59cb: $19
  sra h                                           ; $59cc: $cb $2c
  rr l                                            ; $59ce: $cb $1d
  ld a, l                                         ; $59d0: $7d
  ld hl, $593d                                    ; $59d1: $21 $3d $59
  call Call_000_3182                              ; $59d4: $cd $82 $31
  ld hl, $cb72                                    ; $59d7: $21 $72 $cb
  ld a, [hl+]                                     ; $59da: $2a
  ld h, [hl]                                      ; $59db: $66
  ld l, a                                         ; $59dc: $6f
  call Call_000_31a2                              ; $59dd: $cd $a2 $31
  ld de, $0050                                    ; $59e0: $11 $50 $00
  add hl, de                                      ; $59e3: $19
  ld e, l                                         ; $59e4: $5d
  ld d, h                                         ; $59e5: $54
  ld hl, $0006                                    ; $59e6: $21 $06 $00
  add hl, bc                                      ; $59e9: $09
  ld [hl], e                                      ; $59ea: $73
  inc hl                                          ; $59eb: $23
  ld [hl], d                                      ; $59ec: $72
  ret                                             ; $59ed: $c9


  ld hl, $cb70                                    ; $59ee: $21 $70 $cb
  ld a, [hl+]                                     ; $59f1: $2a
  ld h, [hl]                                      ; $59f2: $66
  ld l, a                                         ; $59f3: $6f
  ld a, $15                                       ; $59f4: $3e $15
  call Call_000_33f3                              ; $59f6: $cd $f3 $33

  db $08, $5c, $40

  ld e, a                                         ; $59fc: $5f
  ld d, $00                                       ; $59fd: $16 $00
  call Call_000_31a2                              ; $59ff: $cd $a2 $31
  ld e, d                                         ; $5a02: $5a
  ld d, l                                         ; $5a03: $55
  call Call_000_0092                              ; $5a04: $cd $92 $00
  ld hl, $0011                                    ; $5a07: $21 $11 $00
  add hl, bc                                      ; $5a0a: $09
  ld [hl], e                                      ; $5a0b: $73
  inc hl                                          ; $5a0c: $23
  ld [hl], d                                      ; $5a0d: $72
  ld hl, $cb79                                    ; $5a0e: $21 $79 $cb
  ld e, [hl]                                      ; $5a11: $5e
  inc hl                                          ; $5a12: $23
  ld d, [hl]                                      ; $5a13: $56
  ld hl, $cb72                                    ; $5a14: $21 $72 $cb
  ld a, [hl+]                                     ; $5a17: $2a
  ld h, [hl]                                      ; $5a18: $66
  ld l, a                                         ; $5a19: $6f
  add hl, de                                      ; $5a1a: $19
  ld a, l                                         ; $5a1b: $7d
  ld [$cb72], a                                   ; $5a1c: $ea $72 $cb
  ld a, h                                         ; $5a1f: $7c
  ld [$cb73], a                                   ; $5a20: $ea $73 $cb
  call Call_008_59be                              ; $5a23: $cd $be $59
  ret                                             ; $5a26: $c9


  ld de, $0078                                    ; $5a27: $11 $78 $00
  ld hl, $cb75                                    ; $5a2a: $21 $75 $cb
  ld a, [hl+]                                     ; $5a2d: $2a
  ld h, [hl]                                      ; $5a2e: $66
  ld l, a                                         ; $5a2f: $6f
  rst $10                                         ; $5a30: $d7
  ret nc                                          ; $5a31: $d0

  ld de, $0efc                                    ; $5a32: $11 $fc $0e
  push de                                         ; $5a35: $d5
  ld de, $00f0                                    ; $5a36: $11 $f0 $00
  ld hl, $cb75                                    ; $5a39: $21 $75 $cb
  ld a, [hl+]                                     ; $5a3c: $2a
  ld h, [hl]                                      ; $5a3d: $66
  ld l, a                                         ; $5a3e: $6f
  rst $10                                         ; $5a3f: $d7
  jr nc, jr_008_5a47                              ; $5a40: $30 $05

  pop de                                          ; $5a42: $d1
  ld de, $0f04                                    ; $5a43: $11 $04 $0f
  push de                                         ; $5a46: $d5

jr_008_5a47:
  pop de                                          ; $5a47: $d1
  ld hl, $0025                                    ; $5a48: $21 $25 $00
  add hl, bc                                      ; $5a4b: $09
  ld a, [hl+]                                     ; $5a4c: $2a
  ld h, [hl]                                      ; $5a4d: $66
  ld l, a                                         ; $5a4e: $6f
  rst $10                                         ; $5a4f: $d7
  ret z                                           ; $5a50: $c8

  call Call_000_3427                              ; $5a51: $cd $27 $34

  db $02, $8e, $68

  ret                                             ; $5a57: $c9


  ld hl, $cb70                                    ; $5a58: $21 $70 $cb
  ld a, [hl+]                                     ; $5a5b: $2a
  ld h, [hl]                                      ; $5a5c: $66
  ld l, a                                         ; $5a5d: $6f
  ld a, [$cb74]                                   ; $5a5e: $fa $74 $cb
  ld e, a                                         ; $5a61: $5f
  ld a, [$cb75]                                   ; $5a62: $fa $75 $cb
  ld d, a                                         ; $5a65: $57
  add hl, de                                      ; $5a66: $19
  ld a, l                                         ; $5a67: $7d
  ld [$cb74], a                                   ; $5a68: $ea $74 $cb
  ld a, h                                         ; $5a6b: $7c
  ld [$cb75], a                                   ; $5a6c: $ea $75 $cb
  ret nc                                          ; $5a6f: $d0

  ld hl, $cb76                                    ; $5a70: $21 $76 $cb
  inc [hl]                                        ; $5a73: $34
  ret                                             ; $5a74: $c9


  ld a, [$cb73]                                   ; $5a75: $fa $73 $cb
  bit 7, a                                        ; $5a78: $cb $7f
  jr z, jr_008_5a7e                               ; $5a7a: $28 $02

  cpl                                             ; $5a7c: $2f
  inc a                                           ; $5a7d: $3c

jr_008_5a7e:
  ld e, $0f                                       ; $5a7e: $1e $0f
  cp e                                            ; $5a80: $bb
  jr c, jr_008_5a9d                               ; $5a81: $38 $1a

  ld a, [$cb73]                                   ; $5a83: $fa $73 $cb
  rla                                             ; $5a86: $17
  jr nc, jr_008_5a8b                              ; $5a87: $30 $02

  ld e, $f1                                       ; $5a89: $1e $f1

jr_008_5a8b:
  ld a, $80                                       ; $5a8b: $3e $80
  ld hl, $cb72                                    ; $5a8d: $21 $72 $cb
  ld [hl+], a                                     ; $5a90: $22
  ld [hl], e                                      ; $5a91: $73
  xor a                                           ; $5a92: $af
  ld hl, $cb79                                    ; $5a93: $21 $79 $cb
  ld [hl+], a                                     ; $5a96: $22
  ld [hl], a                                      ; $5a97: $77
  ld a, $01                                       ; $5a98: $3e $01
  ld [$cb78], a                                   ; $5a9a: $ea $78 $cb

jr_008_5a9d:
  ld hl, $cb75                                    ; $5a9d: $21 $75 $cb
  ld a, [hl+]                                     ; $5aa0: $2a
  ld h, [hl]                                      ; $5aa1: $66
  ld l, a                                         ; $5aa2: $6f
  ld de, $0140                                    ; $5aa3: $11 $40 $01
  rst $10                                         ; $5aa6: $d7
  ret nc                                          ; $5aa7: $d0

  call Call_000_0dbb                              ; $5aa8: $cd $bb $0d
  ld hl, $cb6e                                    ; $5aab: $21 $6e $cb
  ld c, [hl]                                      ; $5aae: $4e
  inc hl                                          ; $5aaf: $23
  ld b, [hl]                                      ; $5ab0: $46
  call Call_000_0dbb                              ; $5ab1: $cd $bb $0d
  ret                                             ; $5ab4: $c9


  ld hl, $0006                                    ; $5ab5: $21 $06 $00
  add hl, bc                                      ; $5ab8: $09
  ld a, [hl]                                      ; $5ab9: $7e
  cp $68                                          ; $5aba: $fe $68
  jr c, jr_008_5ad0                               ; $5abc: $38 $12

  cp $80                                          ; $5abe: $fe $80
  jr nc, jr_008_5ad0                              ; $5ac0: $30 $0e

  ld hl, $0009                                    ; $5ac2: $21 $09 $00
  add hl, bc                                      ; $5ac5: $09
  ld a, [hl]                                      ; $5ac6: $7e
  cp $02                                          ; $5ac7: $fe $02
  jr c, jr_008_5ad0                               ; $5ac9: $38 $05

  cp $18                                          ; $5acb: $fe $18
  jr nc, jr_008_5ad0                              ; $5acd: $30 $01

  ret                                             ; $5acf: $c9


jr_008_5ad0:
  push bc                                         ; $5ad0: $c5
  inc bc                                          ; $5ad1: $03
  ld a, [bc]                                      ; $5ad2: $0a
  sub $10                                         ; $5ad3: $d6 $10
  ld e, a                                         ; $5ad5: $5f
  ld a, $cb                                       ; $5ad6: $3e $cb
  call Call_000_0a46                              ; $5ad8: $cd $46 $0a
  ld c, l                                         ; $5adb: $4d
  ld b, h                                         ; $5adc: $44
  call Call_000_0dbb                              ; $5add: $cd $bb $0d
  pop bc                                          ; $5ae0: $c1
  call Call_000_0dbb                              ; $5ae1: $cd $bb $0d
  ret                                             ; $5ae4: $c9


  ld hl, $cb75                                    ; $5ae5: $21 $75 $cb
  ld a, [hl+]                                     ; $5ae8: $2a
  ld h, [hl]                                      ; $5ae9: $66
  ld l, a                                         ; $5aea: $6f
  ld de, $fee0                                    ; $5aeb: $11 $e0 $fe
  add hl, de                                      ; $5aee: $19
  ret nc                                          ; $5aef: $d0

  ld de, $0020                                    ; $5af0: $11 $20 $00
  call Call_000_01ee                              ; $5af3: $cd $ee $01
  ld hl, $0009                                    ; $5af6: $21 $09 $00
  add hl, bc                                      ; $5af9: $09
  ld d, e                                         ; $5afa: $53
  ld a, [$cb73]                                   ; $5afb: $fa $73 $cb
  ld hl, $0074                                    ; $5afe: $21 $74 $00
  call Call_000_3196                              ; $5b01: $cd $96 $31
  ld e, l                                         ; $5b04: $5d
  call Call_000_0885                              ; $5b05: $cd $85 $08
  ld hl, $002a                                    ; $5b08: $21 $2a $00
  add hl, bc                                      ; $5b0b: $09
  bit 0, [hl]                                     ; $5b0c: $cb $46
  ret z                                           ; $5b0e: $c8

  res 0, [hl]                                     ; $5b0f: $cb $86
  push bc                                         ; $5b11: $c5
  ld b, $0a                                       ; $5b12: $06 $0a

jr_008_5b14:
  ld a, $1a                                       ; $5b14: $3e $1a
  sub b                                           ; $5b16: $90
  ld e, a                                         ; $5b17: $5f
  ld a, $cb                                       ; $5b18: $3e $cb
  call Call_000_0a46                              ; $5b1a: $cd $46 $0a
  jr nz, jr_008_5b25                              ; $5b1d: $20 $06

  ld de, $001c                                    ; $5b1f: $11 $1c $00
  add hl, de                                      ; $5b22: $19
  ld [hl], $01                                    ; $5b23: $36 $01

jr_008_5b25:
  dec b                                           ; $5b25: $05
  jr nz, jr_008_5b14                              ; $5b26: $20 $ec

  pop bc                                          ; $5b28: $c1
  ret                                             ; $5b29: $c9


Call_008_5b2a:
  push bc                                         ; $5b2a: $c5
  ld b, $0a                                       ; $5b2b: $06 $0a

Jump_008_5b2d:
  ld c, $0a                                       ; $5b2d: $0e $0a
  ld a, $1a                                       ; $5b2f: $3e $1a
  sub b                                           ; $5b31: $90
  ld e, a                                         ; $5b32: $5f
  ld a, $cb                                       ; $5b33: $3e $cb
  call Call_000_0a46                              ; $5b35: $cd $46 $0a
  jp nz, Jump_008_5bc2                            ; $5b38: $c2 $c2 $5b

  ld a, l                                         ; $5b3b: $7d
  ld [$cb81], a                                   ; $5b3c: $ea $81 $cb
  ld a, h                                         ; $5b3f: $7c
  ld [$cb82], a                                   ; $5b40: $ea $82 $cb
  ld e, l                                         ; $5b43: $5d
  ld d, h                                         ; $5b44: $54
  ld hl, $000f                                    ; $5b45: $21 $0f $00
  add hl, de                                      ; $5b48: $19
  ld a, [hl+]                                     ; $5b49: $2a
  ld e, a                                         ; $5b4a: $5f
  ld a, [hl+]                                     ; $5b4b: $2a
  ld d, a                                         ; $5b4c: $57
  ld a, [hl+]                                     ; $5b4d: $2a
  or [hl]                                         ; $5b4e: $b6
  or d                                            ; $5b4f: $b2
  or e                                            ; $5b50: $b3
  jr z, jr_008_5bc2                               ; $5b51: $28 $6f

Jump_008_5b53:
  ld a, $1a                                       ; $5b53: $3e $1a
  sub c                                           ; $5b55: $91
  ld e, a                                         ; $5b56: $5f
  ld a, $cb                                       ; $5b57: $3e $cb
  call Call_000_0a46                              ; $5b59: $cd $46 $0a
  jr nz, jr_008_5bb8                              ; $5b5c: $20 $5a

  ld a, l                                         ; $5b5e: $7d
  ld [$cb83], a                                   ; $5b5f: $ea $83 $cb
  ld a, h                                         ; $5b62: $7c
  ld [$cb84], a                                   ; $5b63: $ea $84 $cb
  ld a, [$cb81]                                   ; $5b66: $fa $81 $cb
  ld e, a                                         ; $5b69: $5f
  ld a, [$cb82]                                   ; $5b6a: $fa $82 $cb
  ld d, a                                         ; $5b6d: $57
  rst $10                                         ; $5b6e: $d7
  jr z, jr_008_5bb8                               ; $5b6f: $28 $47

  ld de, $0006                                    ; $5b71: $11 $06 $00
  add hl, de                                      ; $5b74: $19
  push hl                                         ; $5b75: $e5
  ld hl, $cb81                                    ; $5b76: $21 $81 $cb
  ld e, [hl]                                      ; $5b79: $5e
  inc hl                                          ; $5b7a: $23
  ld d, [hl]                                      ; $5b7b: $56
  ld hl, $0006                                    ; $5b7c: $21 $06 $00
  add hl, de                                      ; $5b7f: $19
  ld a, [hl]                                      ; $5b80: $7e
  pop hl                                          ; $5b81: $e1
  sub [hl]                                        ; $5b82: $96
  jr nc, jr_008_5b87                              ; $5b83: $30 $02

  cpl                                             ; $5b85: $2f
  inc a                                           ; $5b86: $3c

jr_008_5b87:
  ld l, a                                         ; $5b87: $6f
  ld h, $00                                       ; $5b88: $26 $00
  push hl                                         ; $5b8a: $e5
  ld hl, $cb83                                    ; $5b8b: $21 $83 $cb
  ld e, [hl]                                      ; $5b8e: $5e
  inc hl                                          ; $5b8f: $23
  ld d, [hl]                                      ; $5b90: $56
  ld hl, $0009                                    ; $5b91: $21 $09 $00
  add hl, de                                      ; $5b94: $19
  push hl                                         ; $5b95: $e5
  ld hl, $cb81                                    ; $5b96: $21 $81 $cb
  ld e, [hl]                                      ; $5b99: $5e
  inc hl                                          ; $5b9a: $23
  ld d, [hl]                                      ; $5b9b: $56
  ld hl, $0009                                    ; $5b9c: $21 $09 $00
  add hl, de                                      ; $5b9f: $19
  ld a, [hl]                                      ; $5ba0: $7e
  pop hl                                          ; $5ba1: $e1
  sub [hl]                                        ; $5ba2: $96
  jr nc, jr_008_5ba7                              ; $5ba3: $30 $02

  cpl                                             ; $5ba5: $2f
  inc a                                           ; $5ba6: $3c

jr_008_5ba7:
  ld e, a                                         ; $5ba7: $5f
  ld d, $00                                       ; $5ba8: $16 $00
  pop hl                                          ; $5baa: $e1
  push bc                                         ; $5bab: $c5
  call Call_000_0061                              ; $5bac: $cd $61 $00
  pop bc                                          ; $5baf: $c1
  ld a, l                                         ; $5bb0: $7d
  cp $03                                          ; $5bb1: $fe $03
  jr nc, jr_008_5bb8                              ; $5bb3: $30 $03

  call Call_008_5c61                              ; $5bb5: $cd $61 $5c

jr_008_5bb8:
  dec c                                           ; $5bb8: $0d
  jp nz, Jump_008_5b53                            ; $5bb9: $c2 $53 $5b

  dec b                                           ; $5bbc: $05
  jp nz, Jump_008_5b2d                            ; $5bbd: $c2 $2d $5b

  pop bc                                          ; $5bc0: $c1
  ret                                             ; $5bc1: $c9


Jump_008_5bc2:
jr_008_5bc2:
  dec b                                           ; $5bc2: $05
  jp nz, Jump_008_5b2d                            ; $5bc3: $c2 $2d $5b

  pop bc                                          ; $5bc6: $c1
  ret                                             ; $5bc7: $c9


  ld hl, $002a                                    ; $5bc8: $21 $2a $00
  add hl, bc                                      ; $5bcb: $09
  bit 0, [hl]                                     ; $5bcc: $cb $46
  ret nz                                          ; $5bce: $c0

  push bc                                         ; $5bcf: $c5
  ld hl, $0006                                    ; $5bd0: $21 $06 $00
  add hl, bc                                      ; $5bd3: $09
  ld a, [hl]                                      ; $5bd4: $7e
  ld [$cb7c], a                                   ; $5bd5: $ea $7c $cb
  ld hl, $0009                                    ; $5bd8: $21 $09 $00
  add hl, bc                                      ; $5bdb: $09
  ld a, [hl]                                      ; $5bdc: $7e
  ld [$cb7d], a                                   ; $5bdd: $ea $7d $cb
  ld b, $0a                                       ; $5be0: $06 $0a

jr_008_5be2:
  ld a, $1a                                       ; $5be2: $3e $1a
  sub b                                           ; $5be4: $90
  ld e, a                                         ; $5be5: $5f
  ld a, $cb                                       ; $5be6: $3e $cb
  call Call_000_0a46                              ; $5be8: $cd $46 $0a
  jr nz, jr_008_5c1e                              ; $5beb: $20 $31

  ld e, l                                         ; $5bed: $5d
  ld d, h                                         ; $5bee: $54
  ld hl, $0006                                    ; $5bef: $21 $06 $00
  add hl, de                                      ; $5bf2: $19
  ld a, [$cb7c]                                   ; $5bf3: $fa $7c $cb
  sub [hl]                                        ; $5bf6: $96
  jr nc, jr_008_5bfb                              ; $5bf7: $30 $02

  cpl                                             ; $5bf9: $2f
  inc a                                           ; $5bfa: $3c

jr_008_5bfb:
  ld c, a                                         ; $5bfb: $4f
  ld hl, $0009                                    ; $5bfc: $21 $09 $00
  add hl, de                                      ; $5bff: $19
  ld a, [$cb7d]                                   ; $5c00: $fa $7d $cb
  sub [hl]                                        ; $5c03: $96
  jr nc, jr_008_5c08                              ; $5c04: $30 $02

  cpl                                             ; $5c06: $2f
  inc a                                           ; $5c07: $3c

jr_008_5c08:
  push de                                         ; $5c08: $d5
  ld l, a                                         ; $5c09: $6f
  ld h, $00                                       ; $5c0a: $26 $00
  ld e, c                                         ; $5c0c: $59
  ld d, h                                         ; $5c0d: $54
  call Call_000_0061                              ; $5c0e: $cd $61 $00
  ld a, h                                         ; $5c11: $7c
  or a                                            ; $5c12: $b7
  pop de                                          ; $5c13: $d1
  jr nz, jr_008_5c1e                              ; $5c14: $20 $08

  ld a, l                                         ; $5c16: $7d
  cp $05                                          ; $5c17: $fe $05
  jr nc, jr_008_5c1e                              ; $5c19: $30 $03

  call Call_008_5df3                              ; $5c1b: $cd $f3 $5d

jr_008_5c1e:
  dec b                                           ; $5c1e: $05
  jr nz, jr_008_5be2                              ; $5c1f: $20 $c1

  pop bc                                          ; $5c21: $c1
  ret                                             ; $5c22: $c9


Call_008_5c23:
  ld hl, $cb81                                    ; $5c23: $21 $81 $cb
  ld a, [hl+]                                     ; $5c26: $2a
  ld h, [hl]                                      ; $5c27: $66
  ld l, a                                         ; $5c28: $6f
  add hl, de                                      ; $5c29: $19
  ld a, [hl+]                                     ; $5c2a: $2a
  ld h, [hl]                                      ; $5c2b: $66
  ld l, a                                         ; $5c2c: $6f
  push hl                                         ; $5c2d: $e5
  ld hl, $cb83                                    ; $5c2e: $21 $83 $cb
  ld a, [hl+]                                     ; $5c31: $2a
  ld h, [hl]                                      ; $5c32: $66
  ld l, a                                         ; $5c33: $6f
  add hl, de                                      ; $5c34: $19
  ld a, [hl+]                                     ; $5c35: $2a
  ld h, [hl]                                      ; $5c36: $66
  ld l, a                                         ; $5c37: $6f
  pop de                                          ; $5c38: $d1
  call Call_000_01ee                              ; $5c39: $cd $ee $01
  ld l, e                                         ; $5c3c: $6b
  ld h, d                                         ; $5c3d: $62
  ret                                             ; $5c3e: $c9


Call_008_5c3f:
  ld hl, $000f                                    ; $5c3f: $21 $0f $00
  add hl, bc                                      ; $5c42: $09
  ld a, [hl+]                                     ; $5c43: $2a
  ld d, [hl]                                      ; $5c44: $56
  ld e, a                                         ; $5c45: $5f
  inc hl                                          ; $5c46: $23
  ld a, [hl+]                                     ; $5c47: $2a
  ld h, [hl]                                      ; $5c48: $66
  ld l, a                                         ; $5c49: $6f
  call Call_000_008f                              ; $5c4a: $cd $8f $00
  call Call_000_0078                              ; $5c4d: $cd $78 $00
  jp Jump_000_0061                                ; $5c50: $c3 $61 $00


Call_008_5c53:
  ld hl, $000f                                    ; $5c53: $21 $0f $00
  add hl, bc                                      ; $5c56: $09
  ld a, [hl+]                                     ; $5c57: $2a
  ld d, [hl]                                      ; $5c58: $56
  ld e, a                                         ; $5c59: $5f
  inc hl                                          ; $5c5a: $23
  ld a, [hl+]                                     ; $5c5b: $2a
  ld h, [hl]                                      ; $5c5c: $66
  ld l, a                                         ; $5c5d: $6f
  jp Jump_008_6056                                ; $5c5e: $c3 $56 $60


Call_008_5c61:
  push bc                                         ; $5c61: $c5
  ld hl, $cb81                                    ; $5c62: $21 $81 $cb
  ld c, [hl]                                      ; $5c65: $4e
  inc hl                                          ; $5c66: $23
  ld b, [hl]                                      ; $5c67: $46
  call Call_008_5c3f                              ; $5c68: $cd $3f $5c
  ld a, l                                         ; $5c6b: $7d
  ld [$cb85], a                                   ; $5c6c: $ea $85 $cb
  ld a, h                                         ; $5c6f: $7c
  ld [$cb86], a                                   ; $5c70: $ea $86 $cb
  call Call_008_5c53                              ; $5c73: $cd $53 $5c
  ld [$cb89], a                                   ; $5c76: $ea $89 $cb
  ld hl, $cb83                                    ; $5c79: $21 $83 $cb
  ld c, [hl]                                      ; $5c7c: $4e
  inc hl                                          ; $5c7d: $23
  ld b, [hl]                                      ; $5c7e: $46
  call Call_008_5c3f                              ; $5c7f: $cd $3f $5c
  ld a, l                                         ; $5c82: $7d
  ld [$cb87], a                                   ; $5c83: $ea $87 $cb
  ld a, h                                         ; $5c86: $7c
  ld [$cb88], a                                   ; $5c87: $ea $88 $cb
  call Call_008_5c53                              ; $5c8a: $cd $53 $5c
  ld [$cb8a], a                                   ; $5c8d: $ea $8a $cb
  ld de, $0005                                    ; $5c90: $11 $05 $00
  call Call_008_5c23                              ; $5c93: $cd $23 $5c
  push hl                                         ; $5c96: $e5
  ld de, $0008                                    ; $5c97: $11 $08 $00
  call Call_008_5c23                              ; $5c9a: $cd $23 $5c
  pop de                                          ; $5c9d: $d1
  call Call_008_6056                              ; $5c9e: $cd $56 $60
  ld [$cb7e], a                                   ; $5ca1: $ea $7e $cb
  ld de, $000f                                    ; $5ca4: $11 $0f $00
  call Call_008_5c23                              ; $5ca7: $cd $23 $5c
  push hl                                         ; $5caa: $e5
  ld de, $0011                                    ; $5cab: $11 $11 $00
  call Call_008_5c23                              ; $5cae: $cd $23 $5c
  pop de                                          ; $5cb1: $d1
  call Call_008_6056                              ; $5cb2: $cd $56 $60
  ld hl, $cb7e                                    ; $5cb5: $21 $7e $cb
  sub [hl]                                        ; $5cb8: $96
  cp $28                                          ; $5cb9: $fe $28
  jr c, jr_008_5cc3                               ; $5cbb: $38 $06

  cp $c0                                          ; $5cbd: $fe $c0
  jr nc, jr_008_5cc3                              ; $5cbf: $30 $02

  add $80                                         ; $5cc1: $c6 $80

jr_008_5cc3:
  ld [hl], a                                      ; $5cc3: $77
  ld hl, $cb89                                    ; $5cc4: $21 $89 $cb
  add [hl]                                        ; $5cc7: $86
  ld [$cb89], a                                   ; $5cc8: $ea $89 $cb
  call Call_000_33f3                              ; $5ccb: $cd $f3 $33

  db $08, $65, $40

  ld a, [$cb85]                                   ; $5cd1: $fa $85 $cb
  ld e, a                                         ; $5cd4: $5f
  ld a, [$cb86]                                   ; $5cd5: $fa $86 $cb
  ld d, a                                         ; $5cd8: $57
  call Call_000_31a2                              ; $5cd9: $cd $a2 $31
  ld h, l                                         ; $5cdc: $65
  ld l, d                                         ; $5cdd: $6a
  push hl                                         ; $5cde: $e5
  ld a, [$cb7e]                                   ; $5cdf: $fa $7e $cb
  call Call_000_33f3                              ; $5ce2: $cd $f3 $33

  db $08, $63, $40

  ld a, [$cb87]                                   ; $5ce8: $fa $87 $cb
  ld e, a                                         ; $5ceb: $5f
  ld a, [$cb88]                                   ; $5cec: $fa $88 $cb
  ld d, a                                         ; $5cef: $57
  call Call_000_31a2                              ; $5cf0: $cd $a2 $31
  ld h, l                                         ; $5cf3: $65
  ld l, d                                         ; $5cf4: $6a
  call Call_000_007b                              ; $5cf5: $cd $7b $00
  pop de                                          ; $5cf8: $d1
  add hl, de                                      ; $5cf9: $19
  push hl                                         ; $5cfa: $e5
  ld a, [$cb7e]                                   ; $5cfb: $fa $7e $cb
  call Call_000_33f3                              ; $5cfe: $cd $f3 $33

  db $08, $65, $40

  ld a, [$cb87]                                   ; $5d04: $fa $87 $cb
  ld e, a                                         ; $5d07: $5f
  ld a, [$cb88]                                   ; $5d08: $fa $88 $cb
  ld d, a                                         ; $5d0b: $57
  call Call_000_31a2                              ; $5d0c: $cd $a2 $31
  ld h, l                                         ; $5d0f: $65
  ld l, d                                         ; $5d10: $6a
  push hl                                         ; $5d11: $e5
  ld a, [$cb7e]                                   ; $5d12: $fa $7e $cb
  call Call_000_33f3                              ; $5d15: $cd $f3 $33

  db $08, $63, $40

  ld a, [$cb85]                                   ; $5d1b: $fa $85 $cb
  ld e, a                                         ; $5d1e: $5f
  ld a, [$cb86]                                   ; $5d1f: $fa $86 $cb
  ld d, a                                         ; $5d22: $57
  call Call_000_31a2                              ; $5d23: $cd $a2 $31
  ld h, l                                         ; $5d26: $65
  ld l, d                                         ; $5d27: $6a
  pop de                                          ; $5d28: $d1
  add hl, de                                      ; $5d29: $19
  ld a, l                                         ; $5d2a: $7d
  ld [$cb87], a                                   ; $5d2b: $ea $87 $cb
  ld a, h                                         ; $5d2e: $7c
  ld [$cb88], a                                   ; $5d2f: $ea $88 $cb
  pop de                                          ; $5d32: $d1
  push de                                         ; $5d33: $d5
  ld hl, $cb7e                                    ; $5d34: $21 $7e $cb
  ld a, $40                                       ; $5d37: $3e $40
  sub [hl]                                        ; $5d39: $96
  ld hl, $cb8a                                    ; $5d3a: $21 $8a $cb
  sub [hl]                                        ; $5d3d: $96
  ld [hl], a                                      ; $5d3e: $77
  ld a, [$cb7e]                                   ; $5d3f: $fa $7e $cb
  ld hl, $cb89                                    ; $5d42: $21 $89 $cb
  add [hl]                                        ; $5d45: $86
  ld [hl], a                                      ; $5d46: $77
  call Call_000_33f3                              ; $5d47: $cd $f3 $33

  db $08, $63, $40

  call Call_000_31a2                              ; $5d4d: $cd $a2 $31
  ld h, l                                         ; $5d50: $65
  ld l, d                                         ; $5d51: $6a
  ld e, l                                         ; $5d52: $5d
  ld d, h                                         ; $5d53: $54
  ld hl, $cb81                                    ; $5d54: $21 $81 $cb
  ld c, [hl]                                      ; $5d57: $4e
  inc hl                                          ; $5d58: $23
  ld b, [hl]                                      ; $5d59: $46
  ld hl, $000f                                    ; $5d5a: $21 $0f $00
  add hl, bc                                      ; $5d5d: $09
  ld [hl], e                                      ; $5d5e: $73
  inc hl                                          ; $5d5f: $23
  ld [hl], d                                      ; $5d60: $72
  pop de                                          ; $5d61: $d1
  ld a, [$cb89]                                   ; $5d62: $fa $89 $cb
  call Call_000_33f3                              ; $5d65: $cd $f3 $33

  db $08, $65, $40

  call Call_000_31a2                              ; $5d6b: $cd $a2 $31
  ld h, l                                         ; $5d6e: $65
  ld l, d                                         ; $5d6f: $6a
  ld e, l                                         ; $5d70: $5d
  ld d, h                                         ; $5d71: $54
  ld hl, $cb81                                    ; $5d72: $21 $81 $cb
  ld c, [hl]                                      ; $5d75: $4e
  inc hl                                          ; $5d76: $23
  ld b, [hl]                                      ; $5d77: $46
  ld hl, $0011                                    ; $5d78: $21 $11 $00
  add hl, bc                                      ; $5d7b: $09
  ld [hl], e                                      ; $5d7c: $73
  inc hl                                          ; $5d7d: $23
  ld [hl], d                                      ; $5d7e: $72
  ld hl, $cb83                                    ; $5d7f: $21 $83 $cb
  ld c, [hl]                                      ; $5d82: $4e
  inc hl                                          ; $5d83: $23
  ld b, [hl]                                      ; $5d84: $46
  ld hl, $cb87                                    ; $5d85: $21 $87 $cb
  ld e, [hl]                                      ; $5d88: $5e
  inc hl                                          ; $5d89: $23
  ld d, [hl]                                      ; $5d8a: $56
  ld a, [$cb8a]                                   ; $5d8b: $fa $8a $cb
  call Call_000_33f3                              ; $5d8e: $cd $f3 $33

  db $08, $63, $40

  call Call_000_31a2                              ; $5d94: $cd $a2 $31
  ld h, l                                         ; $5d97: $65
  ld l, d                                         ; $5d98: $6a
  ld e, l                                         ; $5d99: $5d
  ld d, h                                         ; $5d9a: $54
  ld hl, $000f                                    ; $5d9b: $21 $0f $00
  add hl, bc                                      ; $5d9e: $09
  ld [hl], e                                      ; $5d9f: $73
  inc hl                                          ; $5da0: $23
  ld [hl], d                                      ; $5da1: $72
  ld hl, $cb87                                    ; $5da2: $21 $87 $cb
  ld e, [hl]                                      ; $5da5: $5e
  inc hl                                          ; $5da6: $23
  ld d, [hl]                                      ; $5da7: $56
  ld a, [$cb8a]                                   ; $5da8: $fa $8a $cb
  call Call_000_33f3                              ; $5dab: $cd $f3 $33

  db $08, $65, $40

  call Call_000_31a2                              ; $5db1: $cd $a2 $31
  ld h, l                                         ; $5db4: $65
  ld l, d                                         ; $5db5: $6a
  ld e, l                                         ; $5db6: $5d
  ld d, h                                         ; $5db7: $54
  ld hl, $cb81                                    ; $5db8: $21 $81 $cb
  ld c, [hl]                                      ; $5dbb: $4e
  inc hl                                          ; $5dbc: $23
  ld b, [hl]                                      ; $5dbd: $46
  ld hl, $0011                                    ; $5dbe: $21 $11 $00
  add hl, bc                                      ; $5dc1: $09
  ld [hl], e                                      ; $5dc2: $73
  inc hl                                          ; $5dc3: $23
  ld [hl], d                                      ; $5dc4: $72
  ld hl, $cb81                                    ; $5dc5: $21 $81 $cb
  ld a, [hl+]                                     ; $5dc8: $2a
  ld h, [hl]                                      ; $5dc9: $66
  ld l, a                                         ; $5dca: $6f
  inc hl                                          ; $5dcb: $23
  ld a, [hl]                                      ; $5dcc: $7e
  sub $10                                         ; $5dcd: $d6 $10
  ld e, a                                         ; $5dcf: $5f
  ld a, $cb                                       ; $5dd0: $3e $cb
  call Call_000_0a46                              ; $5dd2: $cd $46 $0a
  ld de, $001c                                    ; $5dd5: $11 $1c $00
  add hl, de                                      ; $5dd8: $19
  ld [hl], $01                                    ; $5dd9: $36 $01
  ld hl, $cb83                                    ; $5ddb: $21 $83 $cb
  ld a, [hl+]                                     ; $5dde: $2a
  ld h, [hl]                                      ; $5ddf: $66
  ld l, a                                         ; $5de0: $6f
  inc hl                                          ; $5de1: $23
  ld a, [hl]                                      ; $5de2: $7e
  sub $10                                         ; $5de3: $d6 $10
  ld e, a                                         ; $5de5: $5f
  ld a, $cb                                       ; $5de6: $3e $cb
  call Call_000_0a46                              ; $5de8: $cd $46 $0a
  ld de, $001c                                    ; $5deb: $11 $1c $00
  add hl, de                                      ; $5dee: $19
  ld [hl], $01                                    ; $5def: $36 $01
  pop bc                                          ; $5df1: $c1
  ret                                             ; $5df2: $c9


Call_008_5df3:
  ld a, $56                                       ; $5df3: $3e $56
  call Call_000_392b                              ; $5df5: $cd $2b $39
  push bc                                         ; $5df8: $c5
  push de                                         ; $5df9: $d5
  ld c, e                                         ; $5dfa: $4b
  ld b, d                                         ; $5dfb: $42
  ld hl, $0006                                    ; $5dfc: $21 $06 $00
  add hl, bc                                      ; $5dff: $09
  ld a, [hl]                                      ; $5e00: $7e
  ld hl, $cb7c                                    ; $5e01: $21 $7c $cb
  sub [hl]                                        ; $5e04: $96
  ld h, a                                         ; $5e05: $67
  ld l, $00                                       ; $5e06: $2e $00
  ld de, $0005                                    ; $5e08: $11 $05 $00
  rla                                             ; $5e0b: $17
  push af                                         ; $5e0c: $f5
  call c, Call_000_007b                           ; $5e0d: $dc $7b $00
  call Call_000_322f                              ; $5e10: $cd $2f $32
  pop af                                          ; $5e13: $f1
  call c, Call_000_007b                           ; $5e14: $dc $7b $00
  sra h                                           ; $5e17: $cb $2c
  rr l                                            ; $5e19: $cb $1d
  sra h                                           ; $5e1b: $cb $2c
  rr l                                            ; $5e1d: $cb $1d
  ld a, l                                         ; $5e1f: $7d
  ld [$cb7e], a                                   ; $5e20: $ea $7e $cb
  ld hl, $cb79                                    ; $5e23: $21 $79 $cb
  ld e, [hl]                                      ; $5e26: $5e
  inc hl                                          ; $5e27: $23
  ld d, [hl]                                      ; $5e28: $56
  ld hl, $cb70                                    ; $5e29: $21 $70 $cb
  ld a, [hl+]                                     ; $5e2c: $2a
  ld h, [hl]                                      ; $5e2d: $66
  ld l, a                                         ; $5e2e: $6f
  call Call_008_6056                              ; $5e2f: $cd $56 $60
  sub $40                                         ; $5e32: $d6 $40
  ld hl, $cb7e                                    ; $5e34: $21 $7e $cb
  add [hl]                                        ; $5e37: $86
  ld [hl], a                                      ; $5e38: $77
  ld hl, $cb79                                    ; $5e39: $21 $79 $cb
  ld a, [hl+]                                     ; $5e3c: $2a
  ld h, [hl]                                      ; $5e3d: $66
  ld l, a                                         ; $5e3e: $6f
  ld a, [$cb7e]                                   ; $5e3f: $fa $7e $cb
  add $80                                         ; $5e42: $c6 $80
  call Call_000_33f3                              ; $5e44: $cd $f3 $33

  db $08, $5c, $40

  add a                                           ; $5e4a: $87
  ld e, a                                         ; $5e4b: $5f
  sbc a                                           ; $5e4c: $9f
  ld d, a                                         ; $5e4d: $57
  call Call_000_31a2                              ; $5e4e: $cd $a2 $31
  ld h, l                                         ; $5e51: $65
  ld l, d                                         ; $5e52: $6a
  ld a, l                                         ; $5e53: $7d
  ld [$cb79], a                                   ; $5e54: $ea $79 $cb
  ld a, h                                         ; $5e57: $7c
  ld [$cb7a], a                                   ; $5e58: $ea $7a $cb
  pop bc                                          ; $5e5b: $c1
  ld hl, $000f                                    ; $5e5c: $21 $0f $00
  add hl, bc                                      ; $5e5f: $09
  ld e, [hl]                                      ; $5e60: $5e
  inc hl                                          ; $5e61: $23
  ld d, [hl]                                      ; $5e62: $56
  inc hl                                          ; $5e63: $23
  ld a, [hl+]                                     ; $5e64: $2a
  ld h, [hl]                                      ; $5e65: $66
  ld l, a                                         ; $5e66: $6f
  call Call_000_008f                              ; $5e67: $cd $8f $00
  call Call_000_0078                              ; $5e6a: $cd $78 $00
  call Call_000_0061                              ; $5e6d: $cd $61 $00
  call Call_000_007b                              ; $5e70: $cd $7b $00
  ld a, [$cb70]                                   ; $5e73: $fa $70 $cb
  ld e, a                                         ; $5e76: $5f
  ld a, [$cb71]                                   ; $5e77: $fa $71 $cb
  ld d, a                                         ; $5e7a: $57
  add hl, de                                      ; $5e7b: $19
  ld a, l                                         ; $5e7c: $7d
  ld [$cb7f], a                                   ; $5e7d: $ea $7f $cb
  ld a, h                                         ; $5e80: $7c
  ld [$cb80], a                                   ; $5e81: $ea $80 $cb
  ld a, [$cb7e]                                   ; $5e84: $fa $7e $cb
  call Call_000_33f3                              ; $5e87: $cd $f3 $33

  db $08, $5a, $40

  add a                                           ; $5e8d: $87
  ld e, a                                         ; $5e8e: $5f
  sbc a                                           ; $5e8f: $9f
  ld d, a                                         ; $5e90: $57
  ld hl, $cb7f                                    ; $5e91: $21 $7f $cb
  ld a, [hl+]                                     ; $5e94: $2a
  ld h, [hl]                                      ; $5e95: $66
  ld l, a                                         ; $5e96: $6f
  call Call_000_31a2                              ; $5e97: $cd $a2 $31
  ld h, l                                         ; $5e9a: $65
  ld l, d                                         ; $5e9b: $6a
  ld a, l                                         ; $5e9c: $7d
  ld [$cb7f], a                                   ; $5e9d: $ea $7f $cb
  ld a, h                                         ; $5ea0: $7c
  ld [$cb80], a                                   ; $5ea1: $ea $80 $cb
  ld a, [$cb7e]                                   ; $5ea4: $fa $7e $cb
  call Call_000_33f3                              ; $5ea7: $cd $f3 $33

  db $08, $5a, $40

  add a                                           ; $5ead: $87
  ld e, a                                         ; $5eae: $5f
  sbc a                                           ; $5eaf: $9f
  ld d, a                                         ; $5eb0: $57
  ld hl, $cb7f                                    ; $5eb1: $21 $7f $cb
  ld a, [hl+]                                     ; $5eb4: $2a
  ld h, [hl]                                      ; $5eb5: $66
  ld l, a                                         ; $5eb6: $6f
  call Call_000_31a2                              ; $5eb7: $cd $a2 $31
  ld h, l                                         ; $5eba: $65
  ld l, d                                         ; $5ebb: $6a
  ld e, l                                         ; $5ebc: $5d
  ld d, h                                         ; $5ebd: $54
  call Call_000_0092                              ; $5ebe: $cd $92 $00
  ld hl, $0011                                    ; $5ec1: $21 $11 $00
  add hl, bc                                      ; $5ec4: $09
  ld [hl], e                                      ; $5ec5: $73
  inc hl                                          ; $5ec6: $23
  ld [hl], d                                      ; $5ec7: $72
  ld a, [$cb7e]                                   ; $5ec8: $fa $7e $cb
  call Call_000_33f3                              ; $5ecb: $cd $f3 $33

  db $08, $5c, $40

  add a                                           ; $5ed1: $87
  ld e, a                                         ; $5ed2: $5f
  sbc a                                           ; $5ed3: $9f
  ld d, a                                         ; $5ed4: $57
  ld hl, $cb7f                                    ; $5ed5: $21 $7f $cb
  ld a, [hl+]                                     ; $5ed8: $2a
  ld h, [hl]                                      ; $5ed9: $66
  ld l, a                                         ; $5eda: $6f
  call Call_000_31a2                              ; $5edb: $cd $a2 $31
  ld h, l                                         ; $5ede: $65
  ld l, d                                         ; $5edf: $6a
  ld e, l                                         ; $5ee0: $5d
  ld d, h                                         ; $5ee1: $54
  ld hl, $000f                                    ; $5ee2: $21 $0f $00
  add hl, bc                                      ; $5ee5: $09
  ld [hl], e                                      ; $5ee6: $73
  inc hl                                          ; $5ee7: $23
  ld [hl], d                                      ; $5ee8: $72
  inc bc                                          ; $5ee9: $03
  ld a, [bc]                                      ; $5eea: $0a
  sub $10                                         ; $5eeb: $d6 $10
  ld e, a                                         ; $5eed: $5f
  ld a, $cb                                       ; $5eee: $3e $cb
  call Call_000_0a46                              ; $5ef0: $cd $46 $0a
  ld de, $001c                                    ; $5ef3: $11 $1c $00
  add hl, de                                      ; $5ef6: $19
  ld [hl], $01                                    ; $5ef7: $36 $01
  dec bc                                          ; $5ef9: $0b
  pop bc                                          ; $5efa: $c1
  ret                                             ; $5efb: $c9


Call_008_5efc:
  ld hl, $000f                                    ; $5efc: $21 $0f $00
  call Call_008_5f05                              ; $5eff: $cd $05 $5f
  ld hl, $0011                                    ; $5f02: $21 $11 $00

Call_008_5f05:
  add hl, bc                                      ; $5f05: $09
  push hl                                         ; $5f06: $e5
  ld a, [hl+]                                     ; $5f07: $2a
  ld d, [hl]                                      ; $5f08: $56
  ld e, a                                         ; $5f09: $5f
  ld a, e                                         ; $5f0a: $7b
  or d                                            ; $5f0b: $b2
  jr z, jr_008_5f19                               ; $5f0c: $28 $0b

  bit 7, d                                        ; $5f0e: $cb $7a
  push af                                         ; $5f10: $f5
  call nz, Call_000_0092                          ; $5f11: $c4 $92 $00
  dec de                                          ; $5f14: $1b
  pop af                                          ; $5f15: $f1
  call nz, Call_000_0092                          ; $5f16: $c4 $92 $00

jr_008_5f19:
  pop hl                                          ; $5f19: $e1
  ld [hl], e                                      ; $5f1a: $73
  inc hl                                          ; $5f1b: $23
  ld [hl], d                                      ; $5f1c: $72
  ret                                             ; $5f1d: $c9


  call Call_008_5efc                              ; $5f1e: $cd $fc $5e
  push bc                                         ; $5f21: $c5
  ld hl, $0006                                    ; $5f22: $21 $06 $00
  add hl, bc                                      ; $5f25: $09
  ld a, [hl+]                                     ; $5f26: $2a
  ld d, [hl]                                      ; $5f27: $56
  ld e, a                                         ; $5f28: $5f
  ld hl, $ff96                                    ; $5f29: $21 $96 $ff
  add hl, de                                      ; $5f2c: $19
  add hl, hl                                      ; $5f2d: $29
  ld de, $003e                                    ; $5f2e: $11 $3e $00
  add hl, de                                      ; $5f31: $19
  push hl                                         ; $5f32: $e5
  inc bc                                          ; $5f33: $03
  ld a, [bc]                                      ; $5f34: $0a
  dec bc                                          ; $5f35: $0b
  sub $10                                         ; $5f36: $d6 $10
  ld e, a                                         ; $5f38: $5f
  ld a, $cb                                       ; $5f39: $3e $cb
  call Call_000_0a46                              ; $5f3b: $cd $46 $0a
  ld c, l                                         ; $5f3e: $4d
  ld b, h                                         ; $5f3f: $44
  ld hl, $0006                                    ; $5f40: $21 $06 $00
  add hl, bc                                      ; $5f43: $09
  pop de                                          ; $5f44: $d1
  ld [hl], e                                      ; $5f45: $73
  inc hl                                          ; $5f46: $23
  ld [hl], d                                      ; $5f47: $72
  pop de                                          ; $5f48: $d1
  push de                                         ; $5f49: $d5
  ld hl, $0009                                    ; $5f4a: $21 $09 $00
  add hl, de                                      ; $5f4d: $19
  ld h, [hl]                                      ; $5f4e: $66
  ld l, $03                                       ; $5f4f: $2e $03
  call $00b0                                      ; $5f51: $cd $b0 $00
  ld l, h                                         ; $5f54: $6c
  ld h, $00                                       ; $5f55: $26 $00
  ld de, $0038                                    ; $5f57: $11 $38 $00
  add hl, de                                      ; $5f5a: $19
  push hl                                         ; $5f5b: $e5
  ld hl, $0009                                    ; $5f5c: $21 $09 $00
  add hl, bc                                      ; $5f5f: $09
  pop de                                          ; $5f60: $d1
  ld [hl], e                                      ; $5f61: $73
  inc hl                                          ; $5f62: $23
  ld [hl], d                                      ; $5f63: $72
  pop bc                                          ; $5f64: $c1
  ret                                             ; $5f65: $c9


  inc bc                                          ; $5f66: $03
  ld a, [bc]                                      ; $5f67: $0a
  dec bc                                          ; $5f68: $0b
  add $10                                         ; $5f69: $c6 $10
  ld e, a                                         ; $5f6b: $5f
  ld a, [bc]                                      ; $5f6c: $0a
  call Call_000_0a46                              ; $5f6d: $cd $46 $0a
  ret nz                                          ; $5f70: $c0

  ld de, $000f                                    ; $5f71: $11 $0f $00
  add hl, de                                      ; $5f74: $19
  ld e, [hl]                                      ; $5f75: $5e
  inc hl                                          ; $5f76: $23
  ld d, [hl]                                      ; $5f77: $56
  inc hl                                          ; $5f78: $23
  ld a, [hl+]                                     ; $5f79: $2a
  or [hl]                                         ; $5f7a: $b6
  or e                                            ; $5f7b: $b3
  or d                                            ; $5f7c: $b2
  ret nz                                          ; $5f7d: $c0

  ld hl, $0021                                    ; $5f7e: $21 $21 $00
  add hl, bc                                      ; $5f81: $09
  ld a, [hl+]                                     ; $5f82: $2a
  ld h, [hl]                                      ; $5f83: $66
  ld l, a                                         ; $5f84: $6f
  ld e, $02                                       ; $5f85: $1e $02
  ld d, $00                                       ; $5f87: $16 $00
  call Call_000_34ed                              ; $5f89: $cd $ed $34
  cp $03                                          ; $5f8c: $fe $03
  jr z, jr_008_5f93                               ; $5f8e: $28 $03

  cp $09                                          ; $5f90: $fe $09
  ret nz                                          ; $5f92: $c0

jr_008_5f93:
  push bc                                         ; $5f93: $c5
  call Call_000_2fc1                              ; $5f94: $cd $c1 $2f
  add $10                                         ; $5f97: $c6 $10
  ld e, a                                         ; $5f99: $5f
  ld a, $cb                                       ; $5f9a: $3e $cb
  call Call_000_0a46                              ; $5f9c: $cd $46 $0a
  ld c, l                                         ; $5f9f: $4d
  ld b, h                                         ; $5fa0: $44
  call Call_000_0dbb                              ; $5fa1: $cd $bb $0d
  pop bc                                          ; $5fa4: $c1
  jp Jump_000_0dbb                                ; $5fa5: $c3 $bb $0d


  ret                                             ; $5fa8: $c9


Call_008_5fa9:
  ld hl, $ffb9                                    ; $5fa9: $21 $b9 $ff
  ld [hl], $00                                    ; $5fac: $36 $00
  inc hl                                          ; $5fae: $23
  ld [hl], $00                                    ; $5faf: $36 $00
  ld a, $cb                                       ; $5fb1: $3e $cb
  call Call_000_33f3                              ; $5fb3: $cd $f3 $33

  db $00, $3c, $12

  ld hl, $ff9b                                    ; $5fb9: $21 $9b $ff
  ld [hl], $50                                    ; $5fbc: $36 $50
  inc hl                                          ; $5fbe: $23
  ld [hl], $00                                    ; $5fbf: $36 $00
  ld hl, $ff9d                                    ; $5fc1: $21 $9d $ff
  ld [hl], $8c                                    ; $5fc4: $36 $8c
  inc hl                                          ; $5fc6: $23
  ld [hl], $00                                    ; $5fc7: $36 $00
  ld a, $c9                                       ; $5fc9: $3e $c9
  call Call_000_04e0                              ; $5fcb: $cd $e0 $04
  ld hl, $cb6a                                    ; $5fce: $21 $6a $cb
  ld [hl], e                                      ; $5fd1: $73
  inc hl                                          ; $5fd2: $23
  ld [hl], d                                      ; $5fd3: $72
  ld hl, $ff9b                                    ; $5fd4: $21 $9b $ff
  ld [hl], $50                                    ; $5fd7: $36 $50
  inc hl                                          ; $5fd9: $23
  ld [hl], $00                                    ; $5fda: $36 $00
  ld hl, $ff9d                                    ; $5fdc: $21 $9d $ff
  ld [hl], $88                                    ; $5fdf: $36 $88
  inc hl                                          ; $5fe1: $23
  ld [hl], $00                                    ; $5fe2: $36 $00
  call Call_008_58c9                              ; $5fe4: $cd $c9 $58
  call Call_008_58b3                              ; $5fe7: $cd $b3 $58
  ret                                             ; $5fea: $c9


  ld de, $6306                                    ; $5feb: $11 $06 $63
  call Call_008_6013                              ; $5fee: $cd $13 $60
  ret z                                           ; $5ff1: $c8

  ld hl, $0001                                    ; $5ff2: $21 $01 $00
  add hl, bc                                      ; $5ff5: $09
  ld a, $01                                       ; $5ff6: $3e $01
  cp [hl]                                         ; $5ff8: $be
  ret z                                           ; $5ff9: $c8

  ld [hl], a                                      ; $5ffa: $77
  call Call_000_09f4                              ; $5ffb: $cd $f4 $09
  ret                                             ; $5ffe: $c9


  ld de, $6314                                    ; $5fff: $11 $14 $63
  call Call_008_6013                              ; $6002: $cd $13 $60
  ret z                                           ; $6005: $c8

  ld hl, $0001                                    ; $6006: $21 $01 $00
  add hl, bc                                      ; $6009: $09
  ld a, $02                                       ; $600a: $3e $02
  cp [hl]                                         ; $600c: $be
  ret z                                           ; $600d: $c8

  ld [hl], a                                      ; $600e: $77
  call Call_000_09f4                              ; $600f: $cd $f4 $09
  ret                                             ; $6012: $c9


Call_008_6013:
  ld hl, $0023                                    ; $6013: $21 $23 $00
  add hl, bc                                      ; $6016: $09
  ld a, [hl]                                      ; $6017: $7e
  dec a                                           ; $6018: $3d
  ret nz                                          ; $6019: $c0

  ld hl, $0027                                    ; $601a: $21 $27 $00
  add hl, bc                                      ; $601d: $09
  ld a, [hl]                                      ; $601e: $7e
  or a                                            ; $601f: $b7
  ret nz                                          ; $6020: $c0

  ld hl, $0001                                    ; $6021: $21 $01 $00
  add hl, bc                                      ; $6024: $09
  xor a                                           ; $6025: $af
  ld [hl+], a                                     ; $6026: $22
  ld [hl], a                                      ; $6027: $77
  ret                                             ; $6028: $c9


  ld a, [$cb78]                                   ; $6029: $fa $78 $cb
  or a                                            ; $602c: $b7
  jr nz, jr_008_604b                              ; $602d: $20 $1c

  ld a, [$cb8c]                                   ; $602f: $fa $8c $cb
  or a                                            ; $6032: $b7
  jr nz, jr_008_6040                              ; $6033: $20 $0b

  ld a, $21                                       ; $6035: $3e $21
  ld [$cdac], a                                   ; $6037: $ea $ac $cd
  ld de, $635a                                    ; $603a: $11 $5a $63
  jp Jump_000_09f4                                ; $603d: $c3 $f4 $09


jr_008_6040:
  ld a, $49                                       ; $6040: $3e $49
  ld [$cdac], a                                   ; $6042: $ea $ac $cd
  ld de, $6370                                    ; $6045: $11 $70 $63
  jp Jump_000_09f4                                ; $6048: $c3 $f4 $09


jr_008_604b:
  ld a, $3f                                       ; $604b: $3e $3f
  ld [$cdac], a                                   ; $604d: $ea $ac $cd
  ld de, $6388                                    ; $6050: $11 $88 $63
  jp Jump_000_09f4                                ; $6053: $c3 $f4 $09


Call_008_6056:
Jump_008_6056:
  push bc                                         ; $6056: $c5
  push de                                         ; $6057: $d5
  push hl                                         ; $6058: $e5
  ld b, $00                                       ; $6059: $06 $00
  bit 7, d                                        ; $605b: $cb $7a
  jr z, jr_008_6061                               ; $605d: $28 $02

  set 2, b                                        ; $605f: $cb $d0

jr_008_6061:
  bit 7, h                                        ; $6061: $cb $7c
  jr z, jr_008_6067                               ; $6063: $28 $02

  set 1, b                                        ; $6065: $cb $c8

jr_008_6067:
  call Call_000_008f                              ; $6067: $cd $8f $00
  call Call_000_0078                              ; $606a: $cd $78 $00
  rst $10                                         ; $606d: $d7
  jr nc, jr_008_6076                              ; $606e: $30 $06

  set 0, b                                        ; $6070: $cb $c0
  push de                                         ; $6072: $d5
  ld d, h                                         ; $6073: $54
  ld e, l                                         ; $6074: $5d
  pop hl                                          ; $6075: $e1

jr_008_6076:
  push hl                                         ; $6076: $e5
  ld a, b                                         ; $6077: $78
  rst $00                                         ; $6078: $c7

  db $89, $60, $8d, $60, $a5, $60, $a1, $60, $95, $60, $91, $60, $99, $60, $9d, $60

  ld b, $00                                       ; $6089: $06 $00
  jr jr_008_60b6                                  ; $608b: $18 $29

  ld b, $02                                       ; $608d: $06 $02
  jr jr_008_60a7                                  ; $608f: $18 $16

  ld b, $02                                       ; $6091: $06 $02
  jr jr_008_60b6                                  ; $6093: $18 $21

  ld b, $04                                       ; $6095: $06 $04
  jr jr_008_60a7                                  ; $6097: $18 $0e

  ld b, $04                                       ; $6099: $06 $04
  jr jr_008_60b6                                  ; $609b: $18 $19

  ld b, $06                                       ; $609d: $06 $06
  jr jr_008_60a7                                  ; $609f: $18 $06

  ld b, $06                                       ; $60a1: $06 $06
  jr jr_008_60b6                                  ; $60a3: $18 $11

  ld b, $08                                       ; $60a5: $06 $08

jr_008_60a7:
  pop hl                                          ; $60a7: $e1
  call Call_008_60c7                              ; $60a8: $cd $c7 $60
  ld e, l                                         ; $60ab: $5d
  ld d, h                                         ; $60ac: $54
  call Call_000_0092                              ; $60ad: $cd $92 $00
  ld l, $00                                       ; $60b0: $2e $00
  ld h, b                                         ; $60b2: $60
  add hl, de                                      ; $60b3: $19
  jr jr_008_60bd                                  ; $60b4: $18 $07

jr_008_60b6:
  pop hl                                          ; $60b6: $e1
  call Call_008_60c7                              ; $60b7: $cd $c7 $60
  ld c, $00                                       ; $60ba: $0e $00
  add hl, bc                                      ; $60bc: $09

jr_008_60bd:
  add hl, hl                                      ; $60bd: $29
  add hl, hl                                      ; $60be: $29
  add hl, hl                                      ; $60bf: $29
  add hl, hl                                      ; $60c0: $29
  add hl, hl                                      ; $60c1: $29
  ld a, h                                         ; $60c2: $7c
  pop hl                                          ; $60c3: $e1
  pop de                                          ; $60c4: $d1
  pop bc                                          ; $60c5: $c1
  ret                                             ; $60c6: $c9


Call_008_60c7:
  ld a, h                                         ; $60c7: $7c
  ld h, l                                         ; $60c8: $65
  ld l, $00                                       ; $60c9: $2e $00
  jp Jump_000_326f                                ; $60cb: $c3 $6f $32


  push bc                                         ; $60ce: $c5
  ldh [$ffbd], a                                  ; $60cf: $e0 $bd
  ldh a, [rSVBK]                                  ; $60d1: $f0 $70
  push af                                         ; $60d3: $f5
  ld a, $05                                       ; $60d4: $3e $05
  ldh [rSVBK], a                                  ; $60d6: $e0 $70
  ldh a, [$ffbd]                                  ; $60d8: $f0 $bd
  push af                                         ; $60da: $f5
  call Call_000_33f3                              ; $60db: $cd $f3 $33

  db $03, $73, $49

  ld d, h                                         ; $60e1: $54
  ld e, l                                         ; $60e2: $5d
  ld bc, $0007                                    ; $60e3: $01 $07 $00
  add hl, bc                                      ; $60e6: $09
  ld a, [hl+]                                     ; $60e7: $2a
  ld h, [hl]                                      ; $60e8: $66
  ld l, a                                         ; $60e9: $6f
  pop af                                          ; $60ea: $f1
  call Call_000_33f3                              ; $60eb: $cd $f3 $33

  db $03, $6b, $57

  cpl                                             ; $60f1: $2f
  inc a                                           ; $60f2: $3c
  call Call_000_33f3                              ; $60f3: $cd $f3 $33

  db $03, $96, $31

  push de                                         ; $60f9: $d5
  push hl                                         ; $60fa: $e5
  ld hl, $0007                                    ; $60fb: $21 $07 $00
  add hl, de                                      ; $60fe: $19
  push hl                                         ; $60ff: $e5
  pop de                                          ; $6100: $d1
  pop hl                                          ; $6101: $e1
  ld a, l                                         ; $6102: $7d
  ld [de], a                                      ; $6103: $12
  inc de                                          ; $6104: $13
  ld a, h                                         ; $6105: $7c
  ld [de], a                                      ; $6106: $12
  pop de                                          ; $6107: $d1
  pop af                                          ; $6108: $f1
  ldh [rSVBK], a                                  ; $6109: $e0 $70
  pop bc                                          ; $610b: $c1
  ret                                             ; $610c: $c9


  db $15, $61

  dec de                                          ; $610f: $1b
  ld h, c                                         ; $6110: $61
  db $21                                          ; $6111: $21
  ld h, c                                         ; $6112: $61

  db $27, $61, $00, $08, $00, $05, $00, $04

  nop                                             ; $611b: $00
  add hl, bc                                      ; $611c: $09
  nop                                             ; $611d: $00
  ld b, $00                                       ; $611e: $06 $00
  dec b                                           ; $6120: $05
  nop                                             ; $6121: $00
  dec bc                                          ; $6122: $0b
  nop                                             ; $6123: $00
  ld [$0700], sp                                  ; $6124: $08 $00 $07

  db $00, $0d, $00, $08, $00, $07, $35, $61

  dec sp                                          ; $612f: $3b
  ld h, c                                         ; $6130: $61
  ld b, c                                         ; $6131: $41
  ld h, c                                         ; $6132: $61

  db $47, $61, $40, $00, $00, $01, $80, $00

  add b                                           ; $613b: $80
  nop                                             ; $613c: $00
  add b                                           ; $613d: $80
  ld bc, $0100                                    ; $613e: $01 $00 $01
  nop                                             ; $6141: $00
  ld bc, $0280                                    ; $6142: $01 $80 $02
  nop                                             ; $6145: $00
  ld [bc], a                                      ; $6146: $02

  db $80, $01, $80, $02, $00, $02, $32, $5a

  inc d                                           ; $614f: $14
  ld [hl-], a                                     ; $6150: $32
  ld a, [bc]                                      ; $6151: $0a
  db $1e                                          ; $6152: $1e

  db $00, $08

  nop                                             ; $6155: $00
  dec bc                                          ; $6156: $0b
  nop                                             ; $6157: $00
  dec c                                           ; $6158: $0d

  db $67, $7c, $6c, $7c, $75, $7c, $7e, $7c, $87, $7c, $6b, $7c, $86, $7c, $7d, $7c
  db $74, $7c, $9b, $7c, $b2, $7c, $c9, $7c, $e0, $7c, $8f, $7c, $d4, $7c, $bd, $7c
  db $a6, $7c, $f1, $7c

  db $fc                                          ; $617d: $fc
  ld a, h                                         ; $617e: $7c

  db $07, $7d

  ld [de], a                                      ; $6181: $12
  ld a, l                                         ; $6182: $7d
  db $eb                                          ; $6183: $eb
  ld a, h                                         ; $6184: $7c
  inc c                                           ; $6185: $0c
  ld a, l                                         ; $6186: $7d

  db $01, $7d

  or $7c                                          ; $6189: $f6 $7c

  db $75, $7d, $7c, $7d, $83, $7d, $8a, $7d, $74, $7d, $89, $7d, $82, $7d, $7b, $7d
  db $91, $7d, $9a, $7d, $a3, $7d, $ac, $7d, $90, $7d, $ab, $7d, $a2, $7d, $99, $7d

  rla                                             ; $61ab: $17
  ld a, l                                         ; $61ac: $7d

  db $34, $7d, $44, $7d, $6d, $7d, $5e, $c0, $03, $80, $00, $51, $25, $58, $6a, $c0
  db $03, $80, $00, $01, $5d, $4a

  call Call_000_3663                              ; $61c3: $cd $63 $36
  ld hl, $cc03                                    ; $61c6: $21 $03 $cc
  ld [hl], $00                                    ; $61c9: $36 $00
  inc hl                                          ; $61cb: $23
  ld [hl], $01                                    ; $61cc: $36 $01
  ld de, $0190                                    ; $61ce: $11 $90 $01
  call Call_000_01ca                              ; $61d1: $cd $ca $01
  ldh a, [rSVBK]                                  ; $61d4: $f0 $70
  push af                                         ; $61d6: $f5
  ld a, $06                                       ; $61d7: $3e $06
  ldh [rSVBK], a                                  ; $61d9: $e0 $70
  ld a, $00                                       ; $61db: $3e $00
  call Call_000_33f3                              ; $61dd: $cd $f3 $33

  db $07, $e5, $4d

  ld a, [$ddc7]                                   ; $61e3: $fa $c7 $dd
  ld [$cbb6], a                                   ; $61e6: $ea $b6 $cb
  ld a, $09                                       ; $61e9: $3e $09
  ld [$ddc7], a                                   ; $61eb: $ea $c7 $dd
  xor a                                           ; $61ee: $af
  ldh [$ffd7], a                                  ; $61ef: $e0 $d7
  ld [$ddc4], a                                   ; $61f1: $ea $c4 $dd
  ld [$cb50], a                                   ; $61f4: $ea $50 $cb
  ld [$cb51], a                                   ; $61f7: $ea $51 $cb
  ld [$c0a0], a                                   ; $61fa: $ea $a0 $c0
  ld a, $01                                       ; $61fd: $3e $01
  ldh [$ffd6], a                                  ; $61ff: $e0 $d6
  ldh [$ffd8], a                                  ; $6201: $e0 $d8
  ld [$ddc5], a                                   ; $6203: $ea $c5 $dd
  pop af                                          ; $6206: $f1
  ldh [rSVBK], a                                  ; $6207: $e0 $70
  ld a, $80                                       ; $6209: $3e $80
  ld [$cb4e], a                                   ; $620b: $ea $4e $cb
  ld [$cb4f], a                                   ; $620e: $ea $4f $cb
  ld a, [$cbdd]                                   ; $6211: $fa $dd $cb
  inc a                                           ; $6214: $3c
  ld l, a                                         ; $6215: $6f
  ld h, $80                                       ; $6216: $26 $80
  call Call_000_009c                              ; $6218: $cd $9c $00
  add hl, hl                                      ; $621b: $29
  add hl, hl                                      ; $621c: $29
  add hl, hl                                      ; $621d: $29
  ld a, l                                         ; $621e: $7d
  ld [$cbd6], a                                   ; $621f: $ea $d6 $cb
  ld a, h                                         ; $6222: $7c
  ld [$cbd7], a                                   ; $6223: $ea $d7 $cb
  ld a, [$4000]                                   ; $6226: $fa $00 $40
  ld [$cad7], a                                   ; $6229: $ea $d7 $ca
  ld hl, $cad8                                    ; $622c: $21 $d8 $ca
  ld [hl], $58                                    ; $622f: $36 $58
  inc hl                                          ; $6231: $23
  ld [hl], $64                                    ; $6232: $36 $64
  call Call_000_33f3                              ; $6234: $cd $f3 $33

  db $00, $e9, $14

  ld hl, $7c33                                    ; $623a: $21 $33 $7c
  call Call_000_33f3                              ; $623d: $cd $f3 $33

  db $03, $88, $7e

  call Call_008_626f                              ; $6243: $cd $6f $62
  ld a, $08                                       ; $6246: $3e $08
  call Call_000_33f3                              ; $6248: $cd $f3 $33

  db $01, $21, $69

  ldh a, [rSVBK]                                  ; $624e: $f0 $70
  push af                                         ; $6250: $f5
  ld a, $02                                       ; $6251: $3e $02
  ldh [rSVBK], a                                  ; $6253: $e0 $70
  ld hl, $dc05                                    ; $6255: $21 $05 $dc
  ld a, [hl-]                                     ; $6258: $3a
  ld [hl-], a                                     ; $6259: $32
  ld [hl-], a                                     ; $625a: $32
  ld [hl-], a                                     ; $625b: $32
  pop af                                          ; $625c: $f1
  ldh [rSVBK], a                                  ; $625d: $e0 $70
  xor a                                           ; $625f: $af
  ld [$cd71], a                                   ; $6260: $ea $71 $cd
  ld [$c2f2], a                                   ; $6263: $ea $f2 $c2
  inc a                                           ; $6266: $3c
  ld [$c2ae], a                                   ; $6267: $ea $ae $c2
  ld a, $4b                                       ; $626a: $3e $4b
  jp Jump_000_394b                                ; $626c: $c3 $4b $39


Call_008_626f:
  ld hl, $ffb9                                    ; $626f: $21 $b9 $ff
  ld [hl], $80                                    ; $6272: $36 $80
  inc hl                                          ; $6274: $23
  ld [hl], $00                                    ; $6275: $36 $00
  ld a, $51                                       ; $6277: $3e $51
  ld hl, $558b                                    ; $6279: $21 $8b $55
  call Call_000_33f3                              ; $627c: $cd $f3 $33

  db $00, $76, $2a

  ld a, $51                                       ; $6282: $3e $51
  call Call_000_33f3                              ; $6284: $cd $f3 $33

  db $00, $1d, $10

  ld hl, $1f1b                                    ; $628a: $21 $1b $1f
  call Call_000_33f3                              ; $628d: $cd $f3 $33

  db $03, $7a, $7e

  ld hl, $61b3                                    ; $6293: $21 $b3 $61
  call Call_000_1a5c                              ; $6296: $cd $5c $1a
  ld hl, $61bb                                    ; $6299: $21 $bb $61
  jp Jump_000_1a61                                ; $629c: $c3 $61 $1a


Call_008_629f:
  push bc                                         ; $629f: $c5
  ld hl, $cbb4                                    ; $62a0: $21 $b4 $cb
  ld a, [hl+]                                     ; $62a3: $2a
  ld h, [hl]                                      ; $62a4: $66
  ld l, a                                         ; $62a5: $6f
  ld bc, $0018                                    ; $62a6: $01 $18 $00
  call Call_000_1248                              ; $62a9: $cd $48 $12
  ld hl, $cbb3                                    ; $62ac: $21 $b3 $cb
  ld a, [$cbb2]                                   ; $62af: $fa $b2 $cb
  sub [hl]                                        ; $62b2: $96
  jr nc, jr_008_62b7                              ; $62b3: $30 $02

  cpl                                             ; $62b5: $2f
  inc a                                           ; $62b6: $3c

jr_008_62b7:
  cp $03                                          ; $62b7: $fe $03
  jr c, jr_008_62bf                               ; $62b9: $38 $04

  cp $06                                          ; $62bb: $fe $06
  jr c, jr_008_62c7                               ; $62bd: $38 $08

jr_008_62bf:
  call Call_000_33f3                              ; $62bf: $cd $f3 $33

  db $02, $96, $7e

  jr jr_008_62e3                                  ; $62c5: $18 $1c

jr_008_62c7:
  ld a, [$cbb3]                                   ; $62c7: $fa $b3 $cb
  add $19                                         ; $62ca: $c6 $19
  ld hl, $6159                                    ; $62cc: $21 $59 $61
  call Call_000_3182                              ; $62cf: $cd $82 $31
  ld a, [$cbb2]                                   ; $62d2: $fa $b2 $cb
  add $21                                         ; $62d5: $c6 $21
  ld hl, $6159                                    ; $62d7: $21 $59 $61
  call ResolveIndexedPointer16                              ; $62da: $cd $8b $31
  call Call_000_33f3                              ; $62dd: $cd $f3 $33

  db $02, $e5, $7e

jr_008_62e3:
  pop bc                                          ; $62e3: $c1
  ld a, [$cbb4]                                   ; $62e4: $fa $b4 $cb
  ld e, a                                         ; $62e7: $5f
  ld a, [$cbb5]                                   ; $62e8: $fa $b5 $cb
  ld d, a                                         ; $62eb: $57
  jr jr_008_6306                                  ; $62ec: $18 $18

  push hl                                         ; $62ee: $e5
  ld hl, $6159                                    ; $62ef: $21 $59 $61
  call Call_000_3182                              ; $62f2: $cd $82 $31
  pop hl                                          ; $62f5: $e1
  ret                                             ; $62f6: $c9


Call_008_62f7:
  ld hl, $6159                                    ; $62f7: $21 $59 $61
  call Call_000_3182                              ; $62fa: $cd $82 $31
  ld hl, $0051                                    ; $62fd: $21 $51 $00
  add hl, bc                                      ; $6300: $09
  ld a, [hl+]                                     ; $6301: $2a
  ld h, [hl]                                      ; $6302: $66
  ld l, a                                         ; $6303: $6f
  rst $10                                         ; $6304: $d7
  ret z                                           ; $6305: $c8

jr_008_6306:
  ld hl, $0002                                    ; $6306: $21 $02 $00
  add hl, bc                                      ; $6309: $09
  ld a, [hl]                                      ; $630a: $7e
  or a                                            ; $630b: $b7
  ret nz                                          ; $630c: $c0

  ld hl, $0051                                    ; $630d: $21 $51 $00
  add hl, bc                                      ; $6310: $09
  ld [hl], e                                      ; $6311: $73
  inc hl                                          ; $6312: $23
  ld [hl], d                                      ; $6313: $72
  jp Jump_000_09f4                                ; $6314: $c3 $f4 $09


Call_008_6317:
  ld hl, $6159                                    ; $6317: $21 $59 $61
  call Call_000_3182                              ; $631a: $cd $82 $31
  ld hl, $0051                                    ; $631d: $21 $51 $00
  add hl, bc                                      ; $6320: $09
  ld a, [hl+]                                     ; $6321: $2a
  ld h, [hl]                                      ; $6322: $66
  ld l, a                                         ; $6323: $6f
  rst $10                                         ; $6324: $d7
  ret z                                           ; $6325: $c8

  ld hl, $0051                                    ; $6326: $21 $51 $00
  add hl, bc                                      ; $6329: $09
  ld [hl], e                                      ; $632a: $73
  inc hl                                          ; $632b: $23
  ld [hl], d                                      ; $632c: $72
  jp Jump_000_09f4                                ; $632d: $c3 $f4 $09


Call_008_6330:
  ld a, [$cb4e]                                   ; $6330: $fa $4e $cb
  or a                                            ; $6333: $b7
  jr z, jr_008_6374                               ; $6334: $28 $3e

  srl a                                           ; $6336: $cb $3f
  srl a                                           ; $6338: $cb $3f
  ld hl, $cb4f                                    ; $633a: $21 $4f $cb
  cp [hl]                                         ; $633d: $be
  jr z, jr_008_634b                               ; $633e: $28 $0b

  ld [hl], a                                      ; $6340: $77
  call Call_008_638f                              ; $6341: $cd $8f $63
  ld a, [$cb4e]                                   ; $6344: $fa $4e $cb
  cp $20                                          ; $6347: $fe $20
  jr c, jr_008_6373                               ; $6349: $38 $28

jr_008_634b:
  ld hl, $cb4e                                    ; $634b: $21 $4e $cb
  ld a, $80                                       ; $634e: $3e $80
  cp [hl]                                         ; $6350: $be
  jr z, jr_008_6372                               ; $6351: $28 $1f

  inc [hl]                                        ; $6353: $34
  ld a, [$cb51]                                   ; $6354: $fa $51 $cb
  or a                                            ; $6357: $b7
  ret z                                           ; $6358: $c8

  ld a, [hl]                                      ; $6359: $7e
  cp $20                                          ; $635a: $fe $20
  ret c                                           ; $635c: $d8

  xor a                                           ; $635d: $af
  ld [$cb51], a                                   ; $635e: $ea $51 $cb
  ld [$c2d1], a                                   ; $6361: $ea $d1 $c2
  ld a, $2a                                       ; $6364: $3e $2a
  ld bc, $c2cf                                    ; $6366: $01 $cf $c2
  call Call_008_62f7                              ; $6369: $cd $f7 $62
  ld a, $10                                       ; $636c: $3e $10
  ld [$c2d1], a                                   ; $636e: $ea $d1 $c2
  ret                                             ; $6371: $c9


jr_008_6372:
  ret                                             ; $6372: $c9


jr_008_6373:
  ret                                             ; $6373: $c9


jr_008_6374:
  xor a                                           ; $6374: $af
  ld [$c2d1], a                                   ; $6375: $ea $d1 $c2
  call Call_008_638f                              ; $6378: $cd $8f $63
  ld a, $01                                       ; $637b: $3e $01
  ld [$cb51], a                                   ; $637d: $ea $51 $cb
  ld bc, $c2cf                                    ; $6380: $01 $cf $c2
  ld a, $29                                       ; $6383: $3e $29
  call Call_008_62f7                              ; $6385: $cd $f7 $62
  ld a, $02                                       ; $6388: $3e $02
  ld [$c2d1], a                                   ; $638a: $ea $d1 $c2
  jr jr_008_634b                                  ; $638d: $18 $bc

Call_008_638f:
  ld e, a                                         ; $638f: $5f
  ldh a, [rSVBK]                                  ; $6390: $f0 $70
  push af                                         ; $6392: $f5
  ld a, $03                                       ; $6393: $3e $03
  ldh [rSVBK], a                                  ; $6395: $e0 $70
  ld hl, $d426                                    ; $6397: $21 $26 $d4
  ld a, $8a                                       ; $639a: $3e $8a
  ld [hl+], a                                     ; $639c: $22
  ld [hl+], a                                     ; $639d: $22
  ld [hl+], a                                     ; $639e: $22
  ld [hl], a                                      ; $639f: $77
  ld a, e                                         ; $63a0: $7b
  srl a                                           ; $63a1: $cb $3f
  srl a                                           ; $63a3: $cb $3f
  srl a                                           ; $63a5: $cb $3f
  jr z, jr_008_63b5                               ; $63a7: $28 $0c

  ld b, a                                         ; $63a9: $47
  ld a, $82                                       ; $63aa: $3e $82

jr_008_63ac:
  ld [hl-], a                                     ; $63ac: $32
  dec b                                           ; $63ad: $05
  jr nz, jr_008_63ac                              ; $63ae: $20 $fc

  ld a, l                                         ; $63b0: $7d
  cp $25                                          ; $63b1: $fe $25
  jr z, jr_008_63bf                               ; $63b3: $28 $0a

jr_008_63b5:
  ld a, e                                         ; $63b5: $7b
  and $07                                         ; $63b6: $e6 $07
  ld e, a                                         ; $63b8: $5f
  ld a, $07                                       ; $63b9: $3e $07
  sub e                                           ; $63bb: $93
  add $83                                         ; $63bc: $c6 $83
  ld [hl], a                                      ; $63be: $77

jr_008_63bf:
  pop af                                          ; $63bf: $f1
  ldh [rSVBK], a                                  ; $63c0: $e0 $70
  ld hl, $1f1b                                    ; $63c2: $21 $1b $1f
  call Call_000_3427                              ; $63c5: $cd $27 $34

  db $03, $7a, $7e

Call_008_63cb:
  ld a, [$cb51]                                   ; $63cb: $fa $51 $cb
  or a                                            ; $63ce: $b7
  jr nz, jr_008_63db                              ; $63cf: $20 $0a

  ld a, [$c2d1]                                   ; $63d1: $fa $d1 $c2
  or a                                            ; $63d4: $b7
  jr z, jr_008_63db                               ; $63d5: $28 $04

  dec a                                           ; $63d7: $3d
  ld [$c2d1], a                                   ; $63d8: $ea $d1 $c2

jr_008_63db:
  ld a, [$cb50]                                   ; $63db: $fa $50 $cb
  or a                                            ; $63de: $b7
  ret z                                           ; $63df: $c8

  dec a                                           ; $63e0: $3d
  ld [$cb50], a                                   ; $63e1: $ea $50 $cb
  ret nz                                          ; $63e4: $c0

  ld hl, $c2f0                                    ; $63e5: $21 $f0 $c2
  ld a, [hl+]                                     ; $63e8: $2a
  ld h, [hl]                                      ; $63e9: $66
  ld l, a                                         ; $63ea: $6f
  ld a, l                                         ; $63eb: $7d
  ld [$c320], a                                   ; $63ec: $ea $20 $c3
  ld a, h                                         ; $63ef: $7c
  ld [$c321], a                                   ; $63f0: $ea $21 $c3
  ret                                             ; $63f3: $c9


Call_008_63f4:
jr_008_63f4:
  ret                                             ; $63f4: $c9


  call Call_000_33f3                              ; $63f5: $cd $f3 $33

  db $06, $40, $52

  ret nz                                          ; $63fb: $c0

  call Call_000_33f3                              ; $63fc: $cd $f3 $33

  db $06, $22, $52

  ret nz                                          ; $6402: $c0

  ld hl, $cbd6                                    ; $6403: $21 $d6 $cb
  ld a, [hl+]                                     ; $6406: $2a
  ld h, [hl]                                      ; $6407: $66
  ld l, a                                         ; $6408: $6f
  ld a, [$cbdd]                                   ; $6409: $fa $dd $cb
  cpl                                             ; $640c: $2f
  call Call_000_3196                              ; $640d: $cd $96 $31
  ld a, h                                         ; $6410: $7c
  rla                                             ; $6411: $17
  jr nc, jr_008_6417                              ; $6412: $30 $03

  ld hl, $0000                                    ; $6414: $21 $00 $00

jr_008_6417:
  ld a, l                                         ; $6417: $7d
  ld [$cbd6], a                                   ; $6418: $ea $d6 $cb
  ld a, h                                         ; $641b: $7c
  ld [$cbd7], a                                   ; $641c: $ea $d7 $cb
  call Call_008_6330                              ; $641f: $cd $30 $63
  call Call_008_63cb                              ; $6422: $cd $cb $63
  jr jr_008_63f4                                  ; $6425: $18 $cd

  ld a, [$cb50]                                   ; $6427: $fa $50 $cb
  or a                                            ; $642a: $b7
  ret nz                                          ; $642b: $c0

  ld a, [$cbb2]                                   ; $642c: $fa $b2 $cb
  inc a                                           ; $642f: $3c
  call Call_008_62f7                              ; $6430: $cd $f7 $62
  ret                                             ; $6433: $c9


  push af                                         ; $6434: $f5
  add a                                           ; $6435: $87
  add a                                           ; $6436: $87
  add a                                           ; $6437: $87
  and $20                                         ; $6438: $e6 $20
  call Call_000_0806                              ; $643a: $cd $06 $08
  or a                                            ; $643d: $b7
  jr z, jr_008_6452                               ; $643e: $28 $12

  pop af                                          ; $6440: $f1
  ld l, a                                         ; $6441: $6f
  ld a, $08                                       ; $6442: $3e $08
  sub l                                           ; $6444: $95
  and $03                                         ; $6445: $e6 $03
  push af                                         ; $6447: $f5
  jr nz, jr_008_6452                              ; $6448: $20 $08

  ld hl, $002b                                    ; $644a: $21 $2b $00
  add hl, bc                                      ; $644d: $09
  ld a, [hl]                                      ; $644e: $7e
  or $40                                          ; $644f: $f6 $40
  ld [hl], a                                      ; $6451: $77

jr_008_6452:
  pop af                                          ; $6452: $f1
  add a                                           ; $6453: $87
  call Call_000_0864                              ; $6454: $cd $64 $08
  ret                                             ; $6457: $c9


  call Call_000_2674                              ; $6458: $cd $74 $26
  ret nz                                          ; $645b: $c0

  ldh a, [$ffcd]                                  ; $645c: $f0 $cd
  cp $3f                                          ; $645e: $fe $3f
  jr z, jr_008_6465                               ; $6460: $28 $03

  cp $40                                          ; $6462: $fe $40
  ret nz                                          ; $6464: $c0

jr_008_6465:
  call Call_000_33f3                              ; $6465: $cd $f3 $33

  db $03, $cd, $6c

  call Call_000_33f3                              ; $646b: $cd $f3 $33

  db $03, $e5, $71

  call Call_000_33f3                              ; $6471: $cd $f3 $33

  db $00, $5b, $06

  call Call_000_33f3                              ; $6477: $cd $f3 $33

  db $03, $8f, $74

  jr z, jr_008_6487                               ; $647d: $28 $08

  ld hl, $002a                                    ; $647f: $21 $2a $00
  add hl, bc                                      ; $6482: $09
  set 0, [hl]                                     ; $6483: $cb $c6
  jr jr_008_648d                                  ; $6485: $18 $06

jr_008_6487:
  ld hl, $002a                                    ; $6487: $21 $2a $00
  add hl, bc                                      ; $648a: $09
  res 0, [hl]                                     ; $648b: $cb $86

jr_008_648d:
  call Call_000_33f3                              ; $648d: $cd $f3 $33

  db $1e, $1a, $4f

  call Call_008_664c                              ; $6493: $cd $4c $66
  call Call_008_64c8                              ; $6496: $cd $c8 $64
  call Call_000_3427                              ; $6499: $cd $27 $34

  db $00, $e6, $0a

Call_008_649f:
Jump_008_649f:
  push bc                                         ; $649f: $c5
  ld c, a                                         ; $64a0: $4f
  ld a, [$cb4e]                                   ; $64a1: $fa $4e $cb
  sub c                                           ; $64a4: $91
  ld [$cb4e], a                                   ; $64a5: $ea $4e $cb
  jr nc, jr_008_64ae                              ; $64a8: $30 $04

  xor a                                           ; $64aa: $af
  ld [$cb4e], a                                   ; $64ab: $ea $4e $cb

jr_008_64ae:
  pop bc                                          ; $64ae: $c1
  ret                                             ; $64af: $c9


Call_008_64b0:
  ld hl, $0042                                    ; $64b0: $21 $42 $00
  add hl, bc                                      ; $64b3: $09
  cp [hl]                                         ; $64b4: $be
  ret z                                           ; $64b5: $c8

  ld e, a                                         ; $64b6: $5f
  ld a, [hl+]                                     ; $64b7: $2a
  ld [hl-], a                                     ; $64b8: $32
  ld [hl], e                                      ; $64b9: $73
  ld [$cbb3], a                                   ; $64ba: $ea $b3 $cb
  ld a, e                                         ; $64bd: $7b
  ld [$cbb2], a                                   ; $64be: $ea $b2 $cb
  ret                                             ; $64c1: $c9


jr_008_64c2:
  call Call_008_683e                              ; $64c2: $cd $3e $68
  jp Jump_008_65ef                                ; $64c5: $c3 $ef $65


Call_008_64c8:
  ld hl, $cbb4                                    ; $64c8: $21 $b4 $cb
  ld [hl], $52                                    ; $64cb: $36 $52
  inc hl                                          ; $64cd: $23
  ld [hl], $cb                                    ; $64ce: $36 $cb
  ld a, [$cbfc]                                   ; $64d0: $fa $fc $cb
  or a                                            ; $64d3: $b7
  jr nz, jr_008_64c2                              ; $64d4: $20 $ec

  ld a, [$c2d1]                                   ; $64d6: $fa $d1 $c2
  or a                                            ; $64d9: $b7
  jr z, jr_008_64e2                               ; $64da: $28 $06

  call Call_008_6687                              ; $64dc: $cd $87 $66
  jp Jump_008_65ef                                ; $64df: $c3 $ef $65


jr_008_64e2:
  ld a, [$cd9a]                                   ; $64e2: $fa $9a $cd
  or a                                            ; $64e5: $b7
  jr nz, jr_008_64f2                              ; $64e6: $20 $0a

  ldh a, [$ffa6]                                  ; $64e8: $f0 $a6
  ld hl, $ffa5                                    ; $64ea: $21 $a5 $ff
  or [hl]                                         ; $64ed: $b6
  and $f0                                         ; $64ee: $e6 $f0
  jr nz, jr_008_64f7                              ; $64f0: $20 $05

jr_008_64f2:
  call Call_008_665e                              ; $64f2: $cd $5e $66
  jr jr_008_64fd                                  ; $64f5: $18 $06

jr_008_64f7:
  call Call_000_33f3                              ; $64f7: $cd $f3 $33

  db $03, $c0, $6f

jr_008_64fd:
  call Call_008_64b0                              ; $64fd: $cd $b0 $64
  call nz, Call_008_629f                          ; $6500: $c4 $9f $62
  ldh a, [$ffa6]                                  ; $6503: $f0 $a6
  and $03                                         ; $6505: $e6 $03
  jr z, jr_008_6530                               ; $6507: $28 $27

  ldh a, [$ffa6]                                  ; $6509: $f0 $a6
  and $01                                         ; $650b: $e6 $01
  ld a, $00                                       ; $650d: $3e $00
  call nz, Call_008_649f                          ; $650f: $c4 $9f $64
  ldh a, [$ffa6]                                  ; $6512: $f0 $a6
  and $02                                         ; $6514: $e6 $02
  jr z, jr_008_6530                               ; $6516: $28 $18

  ld a, [$cb50]                                   ; $6518: $fa $50 $cb
  or a                                            ; $651b: $b7
  jr nz, jr_008_6530                              ; $651c: $20 $12

  ld a, $08                                       ; $651e: $3e $08
  call Call_008_649f                              ; $6520: $cd $9f $64
  call Call_008_6cf0                              ; $6523: $cd $f0 $6c
  add $09                                         ; $6526: $c6 $09
  call Call_008_62f7                              ; $6528: $cd $f7 $62
  ld a, $08                                       ; $652b: $3e $08
  ld [$cb50], a                                   ; $652d: $ea $50 $cb

jr_008_6530:
  ldh a, [$ffa5]                                  ; $6530: $f0 $a5
  bit 0, a                                        ; $6532: $cb $47
  jr z, jr_008_653e                               ; $6534: $28 $08

  ld a, $00                                       ; $6536: $3e $00
  call Call_008_649f                              ; $6538: $cd $9f $64
  call Call_008_653e                              ; $653b: $cd $3e $65

Call_008_653e:
jr_008_653e:
  ldh a, [$ffa5]                                  ; $653e: $f0 $a5
  and $f0                                         ; $6540: $e6 $f0
  ld [$cada], a                                   ; $6542: $ea $da $ca
  call z, Call_008_666c                           ; $6545: $cc $6c $66
  call Call_008_6687                              ; $6548: $cd $87 $66
  ld a, [$cada]                                   ; $654b: $fa $da $ca
  bit 4, a                                        ; $654e: $cb $67
  call nz, Call_008_65fc                          ; $6550: $c4 $fc $65
  ld a, [$cada]                                   ; $6553: $fa $da $ca
  bit 5, a                                        ; $6556: $cb $6f
  call nz, Call_008_6610                          ; $6558: $c4 $10 $66
  ld a, [$cada]                                   ; $655b: $fa $da $ca
  bit 6, a                                        ; $655e: $cb $77
  call nz, Call_008_6624                          ; $6560: $c4 $24 $66
  ld a, [$cada]                                   ; $6563: $fa $da $ca
  bit 7, a                                        ; $6566: $cb $7f
  call nz, Call_008_6638                          ; $6568: $c4 $38 $66
  ldh a, [$ffa6]                                  ; $656b: $f0 $a6
  bit 0, a                                        ; $656d: $cb $47
  jr z, jr_008_65e3                               ; $656f: $28 $72

  ld a, [$cada]                                   ; $6571: $fa $da $ca
  call Call_000_33f3                              ; $6574: $cd $f3 $33

  db $03, $c0, $6f

  bit 0, a                                        ; $657a: $cb $47
  jr nz, jr_008_658d                              ; $657c: $20 $0f

  srl a                                           ; $657e: $cb $3f
  bit 0, a                                        ; $6580: $cb $47
  ld hl, $cb48                                    ; $6582: $21 $48 $cb
  jr z, jr_008_658a                               ; $6585: $28 $03

  ld hl, $cb4a                                    ; $6587: $21 $4a $cb

jr_008_658a:
  xor a                                           ; $658a: $af
  ld [hl+], a                                     ; $658b: $22
  ld [hl+], a                                     ; $658c: $22

jr_008_658d:
  ld a, [$cada]                                   ; $658d: $fa $da $ca
  bit 4, a                                        ; $6590: $cb $67
  call nz, Call_008_65af                          ; $6592: $c4 $af $65
  ld a, [$cada]                                   ; $6595: $fa $da $ca
  bit 5, a                                        ; $6598: $cb $6f
  call nz, Call_008_65bc                          ; $659a: $c4 $bc $65
  ld a, [$cada]                                   ; $659d: $fa $da $ca
  bit 6, a                                        ; $65a0: $cb $77
  call nz, Call_008_65c9                          ; $65a2: $c4 $c9 $65
  ld a, [$cada]                                   ; $65a5: $fa $da $ca
  bit 7, a                                        ; $65a8: $cb $7f
  call nz, Call_008_65d6                          ; $65aa: $c4 $d6 $65
  jr jr_008_65e3                                  ; $65ad: $18 $34

Call_008_65af:
  ld a, [$cb49]                                   ; $65af: $fa $49 $cb
  rla                                             ; $65b2: $17
  ret nc                                          ; $65b3: $d0

  xor a                                           ; $65b4: $af
  ld [$cb48], a                                   ; $65b5: $ea $48 $cb
  ld [$cb49], a                                   ; $65b8: $ea $49 $cb
  ret                                             ; $65bb: $c9


Call_008_65bc:
  ld a, [$cb49]                                   ; $65bc: $fa $49 $cb
  rla                                             ; $65bf: $17
  ret c                                           ; $65c0: $d8

  xor a                                           ; $65c1: $af
  ld [$cb48], a                                   ; $65c2: $ea $48 $cb
  ld [$cb49], a                                   ; $65c5: $ea $49 $cb
  ret                                             ; $65c8: $c9


Call_008_65c9:
  ld a, [$cb4b]                                   ; $65c9: $fa $4b $cb
  rla                                             ; $65cc: $17
  ret c                                           ; $65cd: $d8

  xor a                                           ; $65ce: $af
  ld [$cb4a], a                                   ; $65cf: $ea $4a $cb
  ld [$cb4b], a                                   ; $65d2: $ea $4b $cb
  ret                                             ; $65d5: $c9


Call_008_65d6:
  ld a, [$cb4b]                                   ; $65d6: $fa $4b $cb
  rla                                             ; $65d9: $17
  ret nc                                          ; $65da: $d0

  xor a                                           ; $65db: $af
  ld [$cb4a], a                                   ; $65dc: $ea $4a $cb
  ld [$cb4b], a                                   ; $65df: $ea $4b $cb
  ret                                             ; $65e2: $c9


jr_008_65e3:
  ld de, $0600                                    ; $65e3: $11 $00 $06
  ldh a, [$ffa5]                                  ; $65e6: $f0 $a5
  and $01                                         ; $65e8: $e6 $01
  jr z, jr_008_65ef                               ; $65ea: $28 $03

  ld de, $0900                                    ; $65ec: $11 $00 $09

Jump_008_65ef:
jr_008_65ef:
  call Call_008_66c6                              ; $65ef: $cd $c6 $66
  call Call_008_6ab3                              ; $65f2: $cd $b3 $6a
  call Call_008_6a1b                              ; $65f5: $cd $1b $6a
  call Call_008_6b10                              ; $65f8: $cd $10 $6b
  ret                                             ; $65fb: $c9


Call_008_65fc:
  ld hl, $000f                                    ; $65fc: $21 $0f $00
  add hl, bc                                      ; $65ff: $09
  ld e, [hl]                                      ; $6600: $5e
  inc hl                                          ; $6601: $23
  ld d, [hl]                                      ; $6602: $56
  ld hl, $0060                                    ; $6603: $21 $60 $00
  add hl, de                                      ; $6606: $19
  ld a, l                                         ; $6607: $7d
  ld [$cb48], a                                   ; $6608: $ea $48 $cb
  ld a, h                                         ; $660b: $7c
  ld [$cb49], a                                   ; $660c: $ea $49 $cb
  ret                                             ; $660f: $c9


Call_008_6610:
  ld hl, $000f                                    ; $6610: $21 $0f $00
  add hl, bc                                      ; $6613: $09
  ld e, [hl]                                      ; $6614: $5e
  inc hl                                          ; $6615: $23
  ld d, [hl]                                      ; $6616: $56
  ld hl, $ffa0                                    ; $6617: $21 $a0 $ff
  add hl, de                                      ; $661a: $19
  ld a, l                                         ; $661b: $7d
  ld [$cb48], a                                   ; $661c: $ea $48 $cb
  ld a, h                                         ; $661f: $7c
  ld [$cb49], a                                   ; $6620: $ea $49 $cb
  ret                                             ; $6623: $c9


Call_008_6624:
  ld hl, $0011                                    ; $6624: $21 $11 $00
  add hl, bc                                      ; $6627: $09
  ld e, [hl]                                      ; $6628: $5e
  inc hl                                          ; $6629: $23
  ld d, [hl]                                      ; $662a: $56
  ld hl, $ffa0                                    ; $662b: $21 $a0 $ff
  add hl, de                                      ; $662e: $19
  ld a, l                                         ; $662f: $7d
  ld [$cb4a], a                                   ; $6630: $ea $4a $cb
  ld a, h                                         ; $6633: $7c
  ld [$cb4b], a                                   ; $6634: $ea $4b $cb
  ret                                             ; $6637: $c9


Call_008_6638:
  ld hl, $0011                                    ; $6638: $21 $11 $00
  add hl, bc                                      ; $663b: $09
  ld e, [hl]                                      ; $663c: $5e
  inc hl                                          ; $663d: $23
  ld d, [hl]                                      ; $663e: $56
  ld hl, $0060                                    ; $663f: $21 $60 $00
  add hl, de                                      ; $6642: $19
  ld a, l                                         ; $6643: $7d
  ld [$cb4a], a                                   ; $6644: $ea $4a $cb
  ld a, h                                         ; $6647: $7c
  ld [$cb4b], a                                   ; $6648: $ea $4b $cb
  ret                                             ; $664b: $c9


Call_008_664c:
  ldh a, [$ff8f]                                  ; $664c: $f0 $8f
  srl a                                           ; $664e: $cb $3f
  srl a                                           ; $6650: $cb $3f
  srl a                                           ; $6652: $cb $3f
  ld l, a                                         ; $6654: $6f
  ld a, $1f                                       ; $6655: $3e $1f
  sub l                                           ; $6657: $95
  call Call_000_3427                              ; $6658: $cd $27 $34

  db $01, $37, $69

Call_008_665e:
  ld hl, $0010                                    ; $665e: $21 $10 $00
  add hl, bc                                      ; $6661: $09
  ld a, [hl]                                      ; $6662: $7e
  rla                                             ; $6663: $17
  ld a, $00                                       ; $6664: $3e $00
  rla                                             ; $6666: $17
  rla                                             ; $6667: $17
  rla                                             ; $6668: $17
  add $02                                         ; $6669: $c6 $02
  ret                                             ; $666b: $c9


Call_008_666c:
  ld a, [$cb50]                                   ; $666c: $fa $50 $cb
  or a                                            ; $666f: $b7
  ret nz                                          ; $6670: $c0

  xor a                                           ; $6671: $af
  call Call_000_082f                              ; $6672: $cd $2f $08
  ld hl, $000f                                    ; $6675: $21 $0f $00
  add hl, bc                                      ; $6678: $09
  ld a, [hl+]                                     ; $6679: $2a
  or [hl]                                         ; $667a: $b6
  jr nz, jr_008_6686                              ; $667b: $20 $09

  inc hl                                          ; $667d: $23
  ld a, [hl+]                                     ; $667e: $2a
  or [hl]                                         ; $667f: $b6
  jr nz, jr_008_6686                              ; $6680: $20 $04

  call Call_008_62f7                              ; $6682: $cd $f7 $62
  ret                                             ; $6685: $c9


jr_008_6686:
  ret                                             ; $6686: $c9


Call_008_6687:
  ld hl, $000f                                    ; $6687: $21 $0f $00
  add hl, bc                                      ; $668a: $09
  ld a, [hl+]                                     ; $668b: $2a
  ld [$cb48], a                                   ; $668c: $ea $48 $cb
  ld a, [hl+]                                     ; $668f: $2a
  ld [$cb49], a                                   ; $6690: $ea $49 $cb
  ld a, [hl+]                                     ; $6693: $2a
  ld [$cb4a], a                                   ; $6694: $ea $4a $cb
  ld a, [hl+]                                     ; $6697: $2a
  ld [$cb4b], a                                   ; $6698: $ea $4b $cb
  ld hl, $cb48                                    ; $669b: $21 $48 $cb
  call Call_008_66a1                              ; $669e: $cd $a1 $66

Call_008_66a1:
  ld a, [hl+]                                     ; $66a1: $2a
  ld d, [hl]                                      ; $66a2: $56
  ld e, a                                         ; $66a3: $5f
  dec hl                                          ; $66a4: $2b
  or d                                            ; $66a5: $b2
  jr z, jr_008_66c1                               ; $66a6: $28 $19

  push hl                                         ; $66a8: $e5
  bit 7, d                                        ; $66a9: $cb $7a
  push af                                         ; $66ab: $f5
  call Call_000_008f                              ; $66ac: $cd $8f $00
  ld hl, $ffd0                                    ; $66af: $21 $d0 $ff
  add hl, de                                      ; $66b2: $19
  jr c, jr_008_66b8                               ; $66b3: $38 $03

  ld hl, $0000                                    ; $66b5: $21 $00 $00

jr_008_66b8:
  ld e, l                                         ; $66b8: $5d
  ld d, h                                         ; $66b9: $54
  pop af                                          ; $66ba: $f1
  jr z, jr_008_66c0                               ; $66bb: $28 $03

  call Call_000_0092                              ; $66bd: $cd $92 $00

jr_008_66c0:
  pop hl                                          ; $66c0: $e1

jr_008_66c1:
  ld [hl], e                                      ; $66c1: $73
  inc hl                                          ; $66c2: $23
  ld [hl], d                                      ; $66c3: $72
  inc hl                                          ; $66c4: $23
  ret                                             ; $66c5: $c9


Call_008_66c6:
  ld hl, $cb48                                    ; $66c6: $21 $48 $cb
  ld a, [hl+]                                     ; $66c9: $2a
  ld h, [hl]                                      ; $66ca: $66
  ld l, a                                         ; $66cb: $6f
  call Call_000_0078                              ; $66cc: $cd $78 $00
  rst $10                                         ; $66cf: $d7
  jr nc, jr_008_66f0                              ; $66d0: $30 $1e

  ld a, e                                         ; $66d2: $7b
  ld [$cb48], a                                   ; $66d3: $ea $48 $cb
  ld a, d                                         ; $66d6: $7a
  ld [$cb49], a                                   ; $66d7: $ea $49 $cb
  ld hl, $0010                                    ; $66da: $21 $10 $00
  add hl, bc                                      ; $66dd: $09
  bit 7, [hl]                                     ; $66de: $cb $7e
  jr z, jr_008_66f0                               ; $66e0: $28 $0e

  call Call_000_0092                              ; $66e2: $cd $92 $00
  ld a, e                                         ; $66e5: $7b
  ld [$cb48], a                                   ; $66e6: $ea $48 $cb
  ld a, d                                         ; $66e9: $7a
  ld [$cb49], a                                   ; $66ea: $ea $49 $cb
  call Call_000_0092                              ; $66ed: $cd $92 $00

jr_008_66f0:
  ld hl, $000f                                    ; $66f0: $21 $0f $00
  add hl, bc                                      ; $66f3: $09
  ld a, [$cb48]                                   ; $66f4: $fa $48 $cb
  ld [hl+], a                                     ; $66f7: $22
  ld a, [$cb49]                                   ; $66f8: $fa $49 $cb
  ld [hl+], a                                     ; $66fb: $22
  ld hl, $cb4a                                    ; $66fc: $21 $4a $cb
  ld a, [hl+]                                     ; $66ff: $2a
  ld h, [hl]                                      ; $6700: $66
  ld l, a                                         ; $6701: $6f
  call Call_000_0078                              ; $6702: $cd $78 $00
  rst $10                                         ; $6705: $d7
  jr nc, jr_008_6726                              ; $6706: $30 $1e

  ld a, e                                         ; $6708: $7b
  ld [$cb4a], a                                   ; $6709: $ea $4a $cb
  ld a, d                                         ; $670c: $7a
  ld [$cb4b], a                                   ; $670d: $ea $4b $cb
  ld hl, $0012                                    ; $6710: $21 $12 $00
  add hl, bc                                      ; $6713: $09
  bit 7, [hl]                                     ; $6714: $cb $7e
  jr z, jr_008_6726                               ; $6716: $28 $0e

  call Call_000_0092                              ; $6718: $cd $92 $00
  ld a, e                                         ; $671b: $7b
  ld [$cb4a], a                                   ; $671c: $ea $4a $cb
  ld a, d                                         ; $671f: $7a
  ld [$cb4b], a                                   ; $6720: $ea $4b $cb
  call Call_000_0092                              ; $6723: $cd $92 $00

jr_008_6726:
  ld hl, $0011                                    ; $6726: $21 $11 $00
  add hl, bc                                      ; $6729: $09
  ld a, [$cb4a]                                   ; $672a: $fa $4a $cb
  ld [hl+], a                                     ; $672d: $22
  ld a, [$cb4b]                                   ; $672e: $fa $4b $cb
  ld [hl+], a                                     ; $6731: $22
  ret                                             ; $6732: $c9


Call_008_6733:
  call Call_008_6687                              ; $6733: $cd $87 $66
  ld hl, $0006                                    ; $6736: $21 $06 $00
  add hl, bc                                      ; $6739: $09
  ld a, [hl+]                                     ; $673a: $2a
  ld [$cb3f], a                                   ; $673b: $ea $3f $cb
  ld a, [hl+]                                     ; $673e: $2a
  ld [$cb40], a                                   ; $673f: $ea $40 $cb
  inc hl                                          ; $6742: $23
  ld a, [hl+]                                     ; $6743: $2a
  ld [$cb41], a                                   ; $6744: $ea $41 $cb
  ld a, [hl+]                                     ; $6747: $2a
  ld [$cb42], a                                   ; $6748: $ea $42 $cb
  ld hl, $cb43                                    ; $674b: $21 $43 $cb
  ld [hl], $ff                                    ; $674e: $36 $ff
  inc hl                                          ; $6750: $23
  ld [hl], $ff                                    ; $6751: $36 $ff
  ld hl, $cb45                                    ; $6753: $21 $45 $cb
  ld [hl], $ff                                    ; $6756: $36 $ff
  inc hl                                          ; $6758: $23
  ld [hl], $ff                                    ; $6759: $36 $ff
  ld hl, $c2cf                                    ; $675b: $21 $cf $c2
  ld a, $17                                       ; $675e: $3e $17

jr_008_6760:
  push hl                                         ; $6760: $e5
  ld [$cb47], a                                   ; $6761: $ea $47 $cb
  ld a, [hl]                                      ; $6764: $7e
  cp $8a                                          ; $6765: $fe $8a
  jr z, jr_008_6774                               ; $6767: $28 $0b

  ld a, [$cb51]                                   ; $6769: $fa $51 $cb
  or a                                            ; $676c: $b7
  jr nz, jr_008_679d                              ; $676d: $20 $2e

  ld a, [hl]                                      ; $676f: $7e
  cp $01                                          ; $6770: $fe $01
  jr nz, jr_008_679d                              ; $6772: $20 $29

jr_008_6774:
  call Call_008_6965                              ; $6774: $cd $65 $69
  call Call_000_008f                              ; $6777: $cd $8f $00
  call Call_000_0078                              ; $677a: $cd $78 $00
  call Call_000_0061                              ; $677d: $cd $61 $00
  ld a, [$cb45]                                   ; $6780: $fa $45 $cb
  ld e, a                                         ; $6783: $5f
  ld a, [$cb46]                                   ; $6784: $fa $46 $cb
  ld d, a                                         ; $6787: $57
  rst $10                                         ; $6788: $d7
  jr c, jr_008_679d                               ; $6789: $38 $12

  ld a, l                                         ; $678b: $7d
  ld [$cb45], a                                   ; $678c: $ea $45 $cb
  ld a, h                                         ; $678f: $7c
  ld [$cb46], a                                   ; $6790: $ea $46 $cb
  pop hl                                          ; $6793: $e1
  ld a, l                                         ; $6794: $7d
  ld [$cb43], a                                   ; $6795: $ea $43 $cb
  ld a, h                                         ; $6798: $7c
  ld [$cb44], a                                   ; $6799: $ea $44 $cb
  push hl                                         ; $679c: $e5

jr_008_679d:
  pop hl                                          ; $679d: $e1
  ld de, $0054                                    ; $679e: $11 $54 $00
  add hl, de                                      ; $67a1: $19
  ld a, [$cb47]                                   ; $67a2: $fa $47 $cb
  dec a                                           ; $67a5: $3d
  jr nz, jr_008_6760                              ; $67a6: $20 $b8

  ret                                             ; $67a8: $c9


Call_008_67a9:
  call Call_008_6687                              ; $67a9: $cd $87 $66
  ld hl, $0006                                    ; $67ac: $21 $06 $00
  add hl, bc                                      ; $67af: $09
  ld a, [hl+]                                     ; $67b0: $2a
  ld [$cb3f], a                                   ; $67b1: $ea $3f $cb
  ld a, [hl+]                                     ; $67b4: $2a
  ld [$cb40], a                                   ; $67b5: $ea $40 $cb
  inc hl                                          ; $67b8: $23
  ld a, [hl+]                                     ; $67b9: $2a
  ld [$cb41], a                                   ; $67ba: $ea $41 $cb
  ld a, [hl+]                                     ; $67bd: $2a
  ld [$cb42], a                                   ; $67be: $ea $42 $cb
  ld hl, $cb43                                    ; $67c1: $21 $43 $cb
  ld [hl], $ff                                    ; $67c4: $36 $ff
  inc hl                                          ; $67c6: $23
  ld [hl], $ff                                    ; $67c7: $36 $ff
  ld hl, $cb45                                    ; $67c9: $21 $45 $cb
  ld [hl], $ff                                    ; $67cc: $36 $ff
  inc hl                                          ; $67ce: $23
  ld [hl], $ff                                    ; $67cf: $36 $ff
  ld hl, $c2cf                                    ; $67d1: $21 $cf $c2
  ld a, $17                                       ; $67d4: $3e $17

jr_008_67d6:
  push hl                                         ; $67d6: $e5
  ld [$cb47], a                                   ; $67d7: $ea $47 $cb
  ld a, [hl]                                      ; $67da: $7e
  cp $89                                          ; $67db: $fe $89
  jr z, jr_008_67e6                               ; $67dd: $28 $07

  jr jr_008_680f                                  ; $67df: $18 $2e

  ld a, [hl]                                      ; $67e1: $7e
  cp $8a                                          ; $67e2: $fe $8a
  jr nz, jr_008_680f                              ; $67e4: $20 $29

jr_008_67e6:
  call Call_008_6965                              ; $67e6: $cd $65 $69
  call Call_000_008f                              ; $67e9: $cd $8f $00
  call Call_000_0078                              ; $67ec: $cd $78 $00
  call Call_000_0061                              ; $67ef: $cd $61 $00
  ld a, [$cb45]                                   ; $67f2: $fa $45 $cb
  ld e, a                                         ; $67f5: $5f
  ld a, [$cb46]                                   ; $67f6: $fa $46 $cb
  ld d, a                                         ; $67f9: $57
  rst $10                                         ; $67fa: $d7
  jr c, jr_008_679d                               ; $67fb: $38 $a0

  ld a, l                                         ; $67fd: $7d
  ld [$cb45], a                                   ; $67fe: $ea $45 $cb
  ld a, h                                         ; $6801: $7c
  ld [$cb46], a                                   ; $6802: $ea $46 $cb
  pop hl                                          ; $6805: $e1
  ld a, l                                         ; $6806: $7d
  ld [$cb43], a                                   ; $6807: $ea $43 $cb
  ld a, h                                         ; $680a: $7c
  ld [$cb44], a                                   ; $680b: $ea $44 $cb
  push hl                                         ; $680e: $e5

jr_008_680f:
  pop hl                                          ; $680f: $e1
  ld de, $0054                                    ; $6810: $11 $54 $00
  add hl, de                                      ; $6813: $19
  ld a, [$cb47]                                   ; $6814: $fa $47 $cb
  dec a                                           ; $6817: $3d
  jr nz, jr_008_67d6                              ; $6818: $20 $bc

  ret                                             ; $681a: $c9


  ld hl, $cbb4                                    ; $681b: $21 $b4 $cb
  ld [hl], $82                                    ; $681e: $36 $82
  inc hl                                          ; $6820: $23
  ld [hl], $cb                                    ; $6821: $36 $cb
  ld hl, $0001                                    ; $6823: $21 $01 $00
  add hl, bc                                      ; $6826: $09
  ld a, [hl]                                      ; $6827: $7e
  or a                                            ; $6828: $b7
  jr z, jr_008_6833                               ; $6829: $28 $08

  ld hl, $cbb4                                    ; $682b: $21 $b4 $cb
  ld [hl], $9a                                    ; $682e: $36 $9a
  inc hl                                          ; $6830: $23
  ld [hl], $cb                                    ; $6831: $36 $cb

jr_008_6833:
  call Call_008_67a9                              ; $6833: $cd $a9 $67
  ld hl, $cb43                                    ; $6836: $21 $43 $cb
  ld a, [hl+]                                     ; $6839: $2a
  ld h, [hl]                                      ; $683a: $66
  ld l, a                                         ; $683b: $6f
  jr jr_008_687b                                  ; $683c: $18 $3d

Call_008_683e:
  ld hl, $cbb4                                    ; $683e: $21 $b4 $cb
  ld [hl], $6a                                    ; $6841: $36 $6a
  inc hl                                          ; $6843: $23
  ld [hl], $cb                                    ; $6844: $36 $cb
  call Call_008_6687                              ; $6846: $cd $87 $66
  ld hl, $0006                                    ; $6849: $21 $06 $00
  add hl, bc                                      ; $684c: $09
  ld a, [hl+]                                     ; $684d: $2a
  ld [$cb3f], a                                   ; $684e: $ea $3f $cb
  ld a, [hl+]                                     ; $6851: $2a
  ld [$cb40], a                                   ; $6852: $ea $40 $cb
  inc hl                                          ; $6855: $23
  ld a, [hl+]                                     ; $6856: $2a
  ld [$cb41], a                                   ; $6857: $ea $41 $cb
  ld a, [hl+]                                     ; $685a: $2a
  ld [$cb42], a                                   ; $685b: $ea $42 $cb
  ld e, $ff                                       ; $685e: $1e $ff
  ld a, $88                                       ; $6860: $3e $88
  call Call_000_0a46                              ; $6862: $cd $46 $0a
  jr nz, jr_008_6871                              ; $6865: $20 $0a

  push hl                                         ; $6867: $e5
  ld de, $002a                                    ; $6868: $11 $2a $00
  add hl, de                                      ; $686b: $19
  bit 0, [hl]                                     ; $686c: $cb $46
  pop hl                                          ; $686e: $e1
  jr z, jr_008_687b                               ; $686f: $28 $0a

jr_008_6871:
  ret                                             ; $6871: $c9


  call Call_008_6733                              ; $6872: $cd $33 $67
  ld hl, $cb43                                    ; $6875: $21 $43 $cb
  ld a, [hl+]                                     ; $6878: $2a
  ld h, [hl]                                      ; $6879: $66
  ld l, a                                         ; $687a: $6f

jr_008_687b:
  call Call_008_6965                              ; $687b: $cd $65 $69
  call Call_000_32ec                              ; $687e: $cd $ec $32
  push af                                         ; $6881: $f5
  ld hl, $002b                                    ; $6882: $21 $2b $00
  add hl, bc                                      ; $6885: $09
  ld a, [hl]                                      ; $6886: $7e
  and $bf                                         ; $6887: $e6 $bf
  ld [hl], a                                      ; $6889: $77
  ld a, [bc]                                      ; $688a: $0a
  cp $89                                          ; $688b: $fe $89
  jr z, jr_008_689b                               ; $688d: $28 $0c

  cp $88                                          ; $688f: $fe $88
  jr z, jr_008_689b                               ; $6891: $28 $08

  pop af                                          ; $6893: $f1
  push af                                         ; $6894: $f5
  call Call_008_64b0                              ; $6895: $cd $b0 $64
  call nz, Call_008_629f                          ; $6898: $c4 $9f $62

jr_008_689b:
  pop af                                          ; $689b: $f1
  cp $07                                          ; $689c: $fe $07
  call z, Call_008_68f1                           ; $689e: $cc $f1 $68
  cp $02                                          ; $68a1: $fe $02
  call c, Call_008_68f1                           ; $68a3: $dc $f1 $68
  sub $01                                         ; $68a6: $d6 $01
  cp $03                                          ; $68a8: $fe $03
  call c, Call_008_68c2                           ; $68aa: $dc $c2 $68
  sub $02                                         ; $68ad: $d6 $02
  cp $03                                          ; $68af: $fe $03
  call c, Call_008_690a                           ; $68b1: $dc $0a $69
  sub $02                                         ; $68b4: $d6 $02
  cp $03                                          ; $68b6: $fe $03
  call c, Call_008_68d8                           ; $68b8: $dc $d8 $68
  call Call_008_6920                              ; $68bb: $cd $20 $69
  call Call_008_66c6                              ; $68be: $cd $c6 $66
  ret                                             ; $68c1: $c9


Call_008_68c2:
  push af                                         ; $68c2: $f5
  ld hl, $000f                                    ; $68c3: $21 $0f $00
  add hl, bc                                      ; $68c6: $09
  ld e, [hl]                                      ; $68c7: $5e
  inc hl                                          ; $68c8: $23
  ld d, [hl]                                      ; $68c9: $56
  call Call_008_6944                              ; $68ca: $cd $44 $69
  add hl, de                                      ; $68cd: $19
  ld a, l                                         ; $68ce: $7d
  ld [$cb48], a                                   ; $68cf: $ea $48 $cb
  ld a, h                                         ; $68d2: $7c
  ld [$cb49], a                                   ; $68d3: $ea $49 $cb
  pop af                                          ; $68d6: $f1
  ret                                             ; $68d7: $c9


Call_008_68d8:
  push af                                         ; $68d8: $f5
  ld hl, $000f                                    ; $68d9: $21 $0f $00
  add hl, bc                                      ; $68dc: $09
  ld e, [hl]                                      ; $68dd: $5e
  inc hl                                          ; $68de: $23
  ld d, [hl]                                      ; $68df: $56
  call Call_008_6944                              ; $68e0: $cd $44 $69
  call Call_000_007b                              ; $68e3: $cd $7b $00
  add hl, de                                      ; $68e6: $19
  ld a, l                                         ; $68e7: $7d
  ld [$cb48], a                                   ; $68e8: $ea $48 $cb
  ld a, h                                         ; $68eb: $7c
  ld [$cb49], a                                   ; $68ec: $ea $49 $cb
  pop af                                          ; $68ef: $f1
  ret                                             ; $68f0: $c9


Call_008_68f1:
  push af                                         ; $68f1: $f5
  ld hl, $0011                                    ; $68f2: $21 $11 $00
  add hl, bc                                      ; $68f5: $09
  ld e, [hl]                                      ; $68f6: $5e
  inc hl                                          ; $68f7: $23
  ld d, [hl]                                      ; $68f8: $56
  call Call_008_6944                              ; $68f9: $cd $44 $69
  call Call_000_007b                              ; $68fc: $cd $7b $00
  add hl, de                                      ; $68ff: $19
  ld a, l                                         ; $6900: $7d
  ld [$cb4a], a                                   ; $6901: $ea $4a $cb
  ld a, h                                         ; $6904: $7c
  ld [$cb4b], a                                   ; $6905: $ea $4b $cb
  pop af                                          ; $6908: $f1
  ret                                             ; $6909: $c9


Call_008_690a:
  push af                                         ; $690a: $f5
  ld hl, $0011                                    ; $690b: $21 $11 $00
  add hl, bc                                      ; $690e: $09
  ld e, [hl]                                      ; $690f: $5e
  inc hl                                          ; $6910: $23
  ld d, [hl]                                      ; $6911: $56
  call Call_008_6944                              ; $6912: $cd $44 $69
  add hl, de                                      ; $6915: $19
  ld a, l                                         ; $6916: $7d
  ld [$cb4a], a                                   ; $6917: $ea $4a $cb
  ld a, h                                         ; $691a: $7c
  ld [$cb4b], a                                   ; $691b: $ea $4b $cb
  pop af                                          ; $691e: $f1
  ret                                             ; $691f: $c9


Call_008_6920:
  ld a, [bc]                                      ; $6920: $0a
  cp $01                                          ; $6921: $fe $01
  jr nz, jr_008_6929                              ; $6923: $20 $04

  ld de, $0600                                    ; $6925: $11 $00 $06
  ret                                             ; $6928: $c9


jr_008_6929:
  push hl                                         ; $6929: $e5
  push af                                         ; $692a: $f5
  ld a, [$cbfe]                                   ; $692b: $fa $fe $cb
  or a                                            ; $692e: $b7
  ld a, $03                                       ; $692f: $3e $03
  jr nz, jr_008_6936                              ; $6931: $20 $03

  ld a, [$cbdd]                                   ; $6933: $fa $dd $cb

jr_008_6936:
  ld hl, $610d                                    ; $6936: $21 $0d $61
  call ResolveIndexedPointer16                              ; $6939: $cd $8b $31
  pop af                                          ; $693c: $f1
  sub $89                                         ; $693d: $d6 $89
  call Call_000_3182                              ; $693f: $cd $82 $31
  pop hl                                          ; $6942: $e1
  ret                                             ; $6943: $c9


Call_008_6944:
  ld a, [bc]                                      ; $6944: $0a
  cp $01                                          ; $6945: $fe $01
  jr nz, jr_008_694d                              ; $6947: $20 $04

  ld hl, $0060                                    ; $6949: $21 $60 $00
  ret                                             ; $694c: $c9


jr_008_694d:
  push af                                         ; $694d: $f5
  ld a, [$cbfe]                                   ; $694e: $fa $fe $cb
  or a                                            ; $6951: $b7
  ld a, $03                                       ; $6952: $3e $03
  jr nz, jr_008_6959                              ; $6954: $20 $03

  ld a, [$cbdd]                                   ; $6956: $fa $dd $cb

jr_008_6959:
  ld hl, $612d                                    ; $6959: $21 $2d $61
  call ResolveIndexedPointer16                              ; $695c: $cd $8b $31
  pop af                                          ; $695f: $f1
  sub $89                                         ; $6960: $d6 $89
  jp ResolveIndexedPointer16                                ; $6962: $c3 $8b $31


Call_008_6965:
  ld de, $0009                                    ; $6965: $11 $09 $00
  add hl, de                                      ; $6968: $19
  push hl                                         ; $6969: $e5
  ld a, [hl+]                                     ; $696a: $2a
  ld d, [hl]                                      ; $696b: $56
  ld e, a                                         ; $696c: $5f
  ld hl, $cb41                                    ; $696d: $21 $41 $cb
  ld a, [hl+]                                     ; $6970: $2a
  ld h, [hl]                                      ; $6971: $66
  ld l, a                                         ; $6972: $6f
  call Call_000_01ee                              ; $6973: $cd $ee $01
  pop hl                                          ; $6976: $e1
  push de                                         ; $6977: $d5
  dec hl                                          ; $6978: $2b
  dec hl                                          ; $6979: $2b
  ld a, [hl-]                                     ; $697a: $3a
  ld e, [hl]                                      ; $697b: $5e
  ld d, a                                         ; $697c: $57
  ld hl, $cb3f                                    ; $697d: $21 $3f $cb
  ld a, [hl+]                                     ; $6980: $2a
  ld h, [hl]                                      ; $6981: $66
  ld l, a                                         ; $6982: $6f
  call Call_000_01ee                              ; $6983: $cd $ee $01
  ld l, e                                         ; $6986: $6b
  ld h, d                                         ; $6987: $62
  pop de                                          ; $6988: $d1
  ret                                             ; $6989: $c9


Call_008_698a:
  ld a, $ff                                       ; $698a: $3e $ff
  call Call_000_28e6                              ; $698c: $cd $e6 $28
  ld e, a                                         ; $698f: $5f
  ld a, $04                                       ; $6990: $3e $04
  call Call_000_28e6                              ; $6992: $cd $e6 $28
  ld d, a                                         ; $6995: $57
  ld a, $02                                       ; $6996: $3e $02
  call Call_000_28e6                              ; $6998: $cd $e6 $28
  ld h, a                                         ; $699b: $67
  or a                                            ; $699c: $b7
  ld a, $f0                                       ; $699d: $3e $f0
  jr z, jr_008_69a3                               ; $699f: $28 $02

  ld a, $80                                       ; $69a1: $3e $80

jr_008_69a3:
  call Call_000_28e6                              ; $69a3: $cd $e6 $28
  add $10                                         ; $69a6: $c6 $10
  ld l, a                                         ; $69a8: $6f
  ret                                             ; $69a9: $c9


  ld a, [$cbdd]                                   ; $69aa: $fa $dd $cb
  ld hl, $6153                                    ; $69ad: $21 $53 $61
  call Call_000_3182                              ; $69b0: $cd $82 $31
  ld hl, $0044                                    ; $69b3: $21 $44 $00
  add hl, bc                                      ; $69b6: $09
  ld [hl], e                                      ; $69b7: $73
  inc hl                                          ; $69b8: $23
  ld [hl], d                                      ; $69b9: $72
  call Call_008_698a                              ; $69ba: $cd $8a $69
  call Call_000_33f3                              ; $69bd: $cd $f3 $33

  db $03, $af, $70

  ld hl, $0044                                    ; $69c3: $21 $44 $00
  add hl, bc                                      ; $69c6: $09
  ld a, [hl]                                      ; $69c7: $7e
  or a                                            ; $69c8: $b7
  jr nz, jr_008_69cc                              ; $69c9: $20 $01

  inc a                                           ; $69cb: $3c

jr_008_69cc:
  ld [$cdac], a                                   ; $69cc: $ea $ac $cd
  ld hl, $0010                                    ; $69cf: $21 $10 $00
  add hl, bc                                      ; $69d2: $09
  bit 7, [hl]                                     ; $69d3: $cb $7e
  ld hl, $002a                                    ; $69d5: $21 $2a $00
  add hl, bc                                      ; $69d8: $09
  ld a, $20                                       ; $69d9: $3e $20
  jr nz, jr_008_69de                              ; $69db: $20 $01

  xor a                                           ; $69dd: $af

jr_008_69de:
  jp Jump_000_0806                                ; $69de: $c3 $06 $08


  ld a, [$cbdd]                                   ; $69e1: $fa $dd $cb
  ld hl, $614d                                    ; $69e4: $21 $4d $61
  call Call_000_317a                              ; $69e7: $cd $7a $31
  ld a, [hl+]                                     ; $69ea: $2a
  call Call_000_28e6                              ; $69eb: $cd $e6 $28
  add [hl]                                        ; $69ee: $86
  ld [$cdac], a                                   ; $69ef: $ea $ac $cd
  ret                                             ; $69f2: $c9


  inc bc                                          ; $69f3: $03
  ld a, [bc]                                      ; $69f4: $0a
  dec bc                                          ; $69f5: $0b
  or a                                            ; $69f6: $b7
  jr nz, jr_008_6a07                              ; $69f7: $20 $0e

  ld a, [$cbfe]                                   ; $69f9: $fa $fe $cb
  or a                                            ; $69fc: $b7
  jr z, jr_008_6a07                               ; $69fd: $28 $08

  ld de, $01f4                                    ; $69ff: $11 $f4 $01
  ld hl, $0160                                    ; $6a02: $21 $60 $01
  jr jr_008_6a0a                                  ; $6a05: $18 $03

jr_008_6a07:
  call Call_008_698a                              ; $6a07: $cd $8a $69

jr_008_6a0a:
  push hl                                         ; $6a0a: $e5
  ld hl, $0006                                    ; $6a0b: $21 $06 $00
  add hl, bc                                      ; $6a0e: $09
  ld [hl], e                                      ; $6a0f: $73
  inc hl                                          ; $6a10: $23
  ld [hl], d                                      ; $6a11: $72
  pop de                                          ; $6a12: $d1
  ld hl, $0009                                    ; $6a13: $21 $09 $00
  add hl, bc                                      ; $6a16: $09
  ld [hl], e                                      ; $6a17: $73
  inc hl                                          ; $6a18: $23
  ld [hl], d                                      ; $6a19: $72
  ret                                             ; $6a1a: $c9


Call_008_6a1b:
  ld hl, $000a                                    ; $6a1b: $21 $0a $00
  add hl, bc                                      ; $6a1e: $09
  bit 7, [hl]                                     ; $6a1f: $cb $7e
  jr nz, jr_008_6a2c                              ; $6a21: $20 $09

  ld a, [hl-]                                     ; $6a23: $3a
  ld l, [hl]                                      ; $6a24: $6e
  ld h, a                                         ; $6a25: $67
  ld de, $000c                                    ; $6a26: $11 $0c $00
  rst $10                                         ; $6a29: $d7
  jr c, jr_008_6a48                               ; $6a2a: $38 $1c

jr_008_6a2c:
  ld hl, $000a                                    ; $6a2c: $21 $0a $00
  add hl, bc                                      ; $6a2f: $09
  xor a                                           ; $6a30: $af
  ld [hl-], a                                     ; $6a31: $32
  ld [hl-], a                                     ; $6a32: $32
  ld [hl+], a                                     ; $6a33: $22
  ld [hl], $0f                                    ; $6a34: $36 $0f
  ld hl, $0012                                    ; $6a36: $21 $12 $00
  add hl, bc                                      ; $6a39: $09
  sra [hl]                                        ; $6a3a: $cb $2e
  dec hl                                          ; $6a3c: $2b
  rr [hl]                                         ; $6a3d: $cb $1e
  ld a, [hl+]                                     ; $6a3f: $2a
  ld d, [hl]                                      ; $6a40: $56
  ld e, a                                         ; $6a41: $5f
  call Call_000_0092                              ; $6a42: $cd $92 $00
  ld [hl], d                                      ; $6a45: $72
  dec hl                                          ; $6a46: $2b
  ld [hl], e                                      ; $6a47: $73

jr_008_6a48:
  ld hl, $0007                                    ; $6a48: $21 $07 $00
  add hl, bc                                      ; $6a4b: $09
  bit 7, [hl]                                     ; $6a4c: $cb $7e
  jr nz, jr_008_6a7c                              ; $6a4e: $20 $2c

  ld a, [hl-]                                     ; $6a50: $3a
  ld l, [hl]                                      ; $6a51: $6e
  ld h, a                                         ; $6a52: $67
  ld de, $0008                                    ; $6a53: $11 $08 $00
  rst $10                                         ; $6a56: $d7
  jr nc, jr_008_6a7c                              ; $6a57: $30 $23

  ld hl, $0006                                    ; $6a59: $21 $06 $00
  add hl, bc                                      ; $6a5c: $09
  ld a, [hl+]                                     ; $6a5d: $2a
  ld h, [hl]                                      ; $6a5e: $66
  ld l, a                                         ; $6a5f: $6f
  ld de, $03f4                                    ; $6a60: $11 $f4 $03
  rst $10                                         ; $6a63: $d7
  ret nc                                          ; $6a64: $d0

  ld hl, $0005                                    ; $6a65: $21 $05 $00
  add hl, bc                                      ; $6a68: $09
  ld [hl], $00                                    ; $6a69: $36 $00
  inc hl                                          ; $6a6b: $23
  ld [hl], e                                      ; $6a6c: $73
  inc hl                                          ; $6a6d: $23
  ld [hl], d                                      ; $6a6e: $72
  ld hl, $0010                                    ; $6a6f: $21 $10 $00
  add hl, bc                                      ; $6a72: $09
  bit 7, [hl]                                     ; $6a73: $cb $7e
  ld a, $8f                                       ; $6a75: $3e $8f
  jp nz, Jump_008_6aa3                            ; $6a77: $c2 $a3 $6a

  jr jr_008_6a91                                  ; $6a7a: $18 $15

jr_008_6a7c:
  ld hl, $0007                                    ; $6a7c: $21 $07 $00
  add hl, bc                                      ; $6a7f: $09
  xor a                                           ; $6a80: $af
  ld [hl-], a                                     ; $6a81: $32
  ld [hl-], a                                     ; $6a82: $32
  ld [hl+], a                                     ; $6a83: $22
  ld [hl], $0a                                    ; $6a84: $36 $0a
  ld hl, $0010                                    ; $6a86: $21 $10 $00
  add hl, bc                                      ; $6a89: $09
  bit 7, [hl]                                     ; $6a8a: $cb $7e
  ld a, $8f                                       ; $6a8c: $3e $8f
  jp z, Jump_008_6aa3                             ; $6a8e: $ca $a3 $6a

jr_008_6a91:
  ld hl, $0010                                    ; $6a91: $21 $10 $00
  add hl, bc                                      ; $6a94: $09
  sra [hl]                                        ; $6a95: $cb $2e
  dec hl                                          ; $6a97: $2b
  rr [hl]                                         ; $6a98: $cb $1e
  ld a, [hl+]                                     ; $6a9a: $2a
  ld d, [hl]                                      ; $6a9b: $56
  ld e, a                                         ; $6a9c: $5f
  call Call_000_0092                              ; $6a9d: $cd $92 $00
  ld [hl], d                                      ; $6aa0: $72
  dec hl                                          ; $6aa1: $2b
  ld [hl], e                                      ; $6aa2: $73

Jump_008_6aa3:
  ld de, $c2cf                                    ; $6aa3: $11 $cf $c2
  ld l, c                                         ; $6aa6: $69
  ld h, d                                         ; $6aa7: $62
  rst $10                                         ; $6aa8: $d7
  ld a, $02                                       ; $6aa9: $3e $02
  call z, Call_008_6d04                           ; $6aab: $cc $04 $6d
  ld a, $8f                                       ; $6aae: $3e $8f
  jp Jump_008_6af2                                ; $6ab0: $c3 $f2 $6a


Call_008_6ab3:
  ld hl, $0009                                    ; $6ab3: $21 $09 $00
  add hl, bc                                      ; $6ab6: $09
  ld a, [hl+]                                     ; $6ab7: $2a
  ld h, [hl]                                      ; $6ab8: $66
  ld l, a                                         ; $6ab9: $6f
  ld de, $0196                                    ; $6aba: $11 $96 $01
  rst $10                                         ; $6abd: $d7
  ret nc                                          ; $6abe: $d0

  ld de, $c2cf                                    ; $6abf: $11 $cf $c2
  ld l, c                                         ; $6ac2: $69
  ld h, d                                         ; $6ac3: $62
  rst $10                                         ; $6ac4: $d7
  ld a, $01                                       ; $6ac5: $3e $01
  call z, Call_008_6d04                           ; $6ac7: $cc $04 $6d
  ld hl, $0009                                    ; $6aca: $21 $09 $00
  add hl, bc                                      ; $6acd: $09
  ld [hl], $95                                    ; $6ace: $36 $95
  ld hl, $0012                                    ; $6ad0: $21 $12 $00
  add hl, bc                                      ; $6ad3: $09
  sra [hl]                                        ; $6ad4: $cb $2e
  dec hl                                          ; $6ad6: $2b
  rr [hl]                                         ; $6ad7: $cb $1e
  dec hl                                          ; $6ad9: $2b
  sra [hl]                                        ; $6ada: $cb $2e
  dec hl                                          ; $6adc: $2b
  rr [hl]                                         ; $6add: $cb $1e
  ld hl, $0012                                    ; $6adf: $21 $12 $00
  add hl, bc                                      ; $6ae2: $09
  ld a, [hl+]                                     ; $6ae3: $2a
  ld d, [hl]                                      ; $6ae4: $56
  ld e, a                                         ; $6ae5: $5f
  bit 7, d                                        ; $6ae6: $cb $7a
  ld a, $8d                                       ; $6ae8: $3e $8d
  jr c, jr_008_6af2                               ; $6aea: $38 $06

  call Call_000_0092                              ; $6aec: $cd $92 $00
  ld [hl], d                                      ; $6aef: $72
  dec hl                                          ; $6af0: $2b
  ld [hl], e                                      ; $6af1: $73

Call_008_6af2:
Jump_008_6af2:
jr_008_6af2:
  push af                                         ; $6af2: $f5
  ld hl, $0006                                    ; $6af3: $21 $06 $00
  add hl, bc                                      ; $6af6: $09
  ld a, [hl+]                                     ; $6af7: $2a
  ldh [$ff9b], a                                  ; $6af8: $e0 $9b
  ld a, [hl+]                                     ; $6afa: $2a
  ldh [$ff9c], a                                  ; $6afb: $e0 $9c
  inc hl                                          ; $6afd: $23
  ld a, [hl+]                                     ; $6afe: $2a
  ld e, a                                         ; $6aff: $5f
  ld a, [hl+]                                     ; $6b00: $2a
  ld d, a                                         ; $6b01: $57
  ld hl, $0004                                    ; $6b02: $21 $04 $00
  add hl, de                                      ; $6b05: $19
  ld a, l                                         ; $6b06: $7d
  ldh [$ff9d], a                                  ; $6b07: $e0 $9d
  ld a, h                                         ; $6b09: $7c
  ldh [$ff9e], a                                  ; $6b0a: $e0 $9e
  pop af                                          ; $6b0c: $f1
  jp Jump_000_04e0                                ; $6b0d: $c3 $e0 $04


Call_008_6b10:
  ld hl, $0003                                    ; $6b10: $21 $03 $00
  add hl, bc                                      ; $6b13: $09
  ld a, [hl+]                                     ; $6b14: $2a
  ld d, [hl]                                      ; $6b15: $56
  ld e, a                                         ; $6b16: $5f
  push de                                         ; $6b17: $d5
  ld hl, $0005                                    ; $6b18: $21 $05 $00
  add hl, de                                      ; $6b1b: $19
  push hl                                         ; $6b1c: $e5
  ld hl, $0005                                    ; $6b1d: $21 $05 $00
  add hl, bc                                      ; $6b20: $09
  pop de                                          ; $6b21: $d1
  call Call_000_026c                              ; $6b22: $cd $6c $02
  pop de                                          ; $6b25: $d1
  push de                                         ; $6b26: $d5
  ld hl, $000b                                    ; $6b27: $21 $0b $00
  add hl, de                                      ; $6b2a: $19
  push hl                                         ; $6b2b: $e5
  ld hl, $000b                                    ; $6b2c: $21 $0b $00
  add hl, bc                                      ; $6b2f: $09
  pop de                                          ; $6b30: $d1
  call Call_000_026f                              ; $6b31: $cd $6f $02
  ld hl, $0009                                    ; $6b34: $21 $09 $00
  add hl, bc                                      ; $6b37: $09
  ld a, [hl+]                                     ; $6b38: $2a
  ld h, [hl]                                      ; $6b39: $66
  ld l, a                                         ; $6b3a: $6f
  ld de, $0166                                    ; $6b3b: $11 $66 $01
  rst $10                                         ; $6b3e: $d7
  jr nc, jr_008_6b6e                              ; $6b3f: $30 $2d

  call Call_000_0092                              ; $6b41: $cd $92 $00
  add hl, de                                      ; $6b44: $19
  ld a, l                                         ; $6b45: $7d
  srl a                                           ; $6b46: $cb $3f
  srl a                                           ; $6b48: $cb $3f
  srl a                                           ; $6b4a: $cb $3f
  cp $06                                          ; $6b4c: $fe $06
  jr c, jr_008_6b52                               ; $6b4e: $38 $02

  ld a, $05                                       ; $6b50: $3e $05

jr_008_6b52:
  ld l, a                                         ; $6b52: $6f
  ld a, [bc]                                      ; $6b53: $0a
  cp $89                                          ; $6b54: $fe $89
  jr nz, jr_008_6b5e                              ; $6b56: $20 $06

  ld a, l                                         ; $6b58: $7d
  sub $03                                         ; $6b59: $d6 $03
  jr c, jr_008_6b6e                               ; $6b5b: $38 $11

  ld l, a                                         ; $6b5d: $6f

jr_008_6b5e:
  ld a, l                                         ; $6b5e: $7d
  pop de                                          ; $6b5f: $d1
  push bc                                         ; $6b60: $c5
  ld c, e                                         ; $6b61: $4b
  ld b, d                                         ; $6b62: $42
  call Call_000_0864                              ; $6b63: $cd $64 $08
  ld hl, $002a                                    ; $6b66: $21 $2a $00
  add hl, de                                      ; $6b69: $19
  res 0, [hl]                                     ; $6b6a: $cb $86
  pop bc                                          ; $6b6c: $c1
  ret                                             ; $6b6d: $c9


jr_008_6b6e:
  pop de                                          ; $6b6e: $d1
  ld hl, $002a                                    ; $6b6f: $21 $2a $00
  add hl, de                                      ; $6b72: $19
  set 0, [hl]                                     ; $6b73: $cb $c6
  ret                                             ; $6b75: $c9


Call_008_6b76:
  ld hl, $cb4c                                    ; $6b76: $21 $4c $cb
  ld [hl], e                                      ; $6b79: $73
  inc hl                                          ; $6b7a: $23
  ld [hl], d                                      ; $6b7b: $72
  ld hl, $002c                                    ; $6b7c: $21 $2c $00
  add hl, bc                                      ; $6b7f: $09
  res 4, [hl]                                     ; $6b80: $cb $a6
  ld hl, $0002                                    ; $6b82: $21 $02 $00
  add hl, bc                                      ; $6b85: $09
  ld [hl], $08                                    ; $6b86: $36 $08
  ld hl, $000f                                    ; $6b88: $21 $0f $00
  add hl, bc                                      ; $6b8b: $09
  ld a, [hl+]                                     ; $6b8c: $2a
  ld e, a                                         ; $6b8d: $5f
  ld a, [hl+]                                     ; $6b8e: $2a
  ld d, a                                         ; $6b8f: $57
  ld a, [hl+]                                     ; $6b90: $2a
  ld h, [hl]                                      ; $6b91: $66
  ld l, a                                         ; $6b92: $6f
  push de                                         ; $6b93: $d5
  push hl                                         ; $6b94: $e5
  inc bc                                          ; $6b95: $03
  ld a, [bc]                                      ; $6b96: $0a
  dec bc                                          ; $6b97: $0b
  ld hl, $cb4c                                    ; $6b98: $21 $4c $cb
  ld a, [hl+]                                     ; $6b9b: $2a
  ld h, [hl]                                      ; $6b9c: $66
  ld l, a                                         ; $6b9d: $6f
  ld de, $000f                                    ; $6b9e: $11 $0f $00
  add hl, de                                      ; $6ba1: $19
  push hl                                         ; $6ba2: $e5
  push hl                                         ; $6ba3: $e5
  ld hl, $000f                                    ; $6ba4: $21 $0f $00
  add hl, bc                                      ; $6ba7: $09
  ld e, l                                         ; $6ba8: $5d
  ld d, h                                         ; $6ba9: $54
  pop hl                                          ; $6baa: $e1
  call Call_000_0269                              ; $6bab: $cd $69 $02
  pop hl                                          ; $6bae: $e1
  pop de                                          ; $6baf: $d1
  ld a, e                                         ; $6bb0: $7b
  ld [hl+], a                                     ; $6bb1: $22
  ld a, d                                         ; $6bb2: $7a
  ld [hl+], a                                     ; $6bb3: $22
  pop de                                          ; $6bb4: $d1
  ld a, e                                         ; $6bb5: $7b
  ld [hl+], a                                     ; $6bb6: $22
  ld a, d                                         ; $6bb7: $7a
  ld [hl+], a                                     ; $6bb8: $22
  ret                                             ; $6bb9: $c9


  xor a                                           ; $6bba: $af
  ldh [$ff9a], a                                  ; $6bbb: $e0 $9a
  ld a, $88                                       ; $6bbd: $3e $88
  call Call_000_04e0                              ; $6bbf: $cd $e0 $04
  push de                                         ; $6bc2: $d5
  ld a, $03                                       ; $6bc3: $3e $03
  ldh [$ff9a], a                                  ; $6bc5: $e0 $9a
  ld a, $90                                       ; $6bc7: $3e $90
  call Call_000_04e0                              ; $6bc9: $cd $e0 $04
  ld hl, $0003                                    ; $6bcc: $21 $03 $00
  add hl, de                                      ; $6bcf: $19
  pop de                                          ; $6bd0: $d1
  ld [hl], e                                      ; $6bd1: $73
  inc hl                                          ; $6bd2: $23
  ld [hl], d                                      ; $6bd3: $72
  xor a                                           ; $6bd4: $af
  ldh [$ff9a], a                                  ; $6bd5: $e0 $9a
  ld a, $8e                                       ; $6bd7: $3e $8e
  call Call_000_04e0                              ; $6bd9: $cd $e0 $04
  ld a, e                                         ; $6bdc: $7b
  ld [$c2d2], a                                   ; $6bdd: $ea $d2 $c2
  ld a, d                                         ; $6be0: $7a
  ld [$c2d3], a                                   ; $6be1: $ea $d3 $c2
  xor a                                           ; $6be4: $af
  ld a, $90                                       ; $6be5: $3e $90
  call Call_000_04e0                              ; $6be7: $cd $e0 $04
  ld hl, $0003                                    ; $6bea: $21 $03 $00
  add hl, de                                      ; $6bed: $19
  ld a, $cf                                       ; $6bee: $3e $cf
  ld [hl+], a                                     ; $6bf0: $22
  ld [hl], $c2                                    ; $6bf1: $36 $c2
  ld a, $8e                                       ; $6bf3: $3e $8e
  call Call_000_04e0                              ; $6bf5: $cd $e0 $04
  push de                                         ; $6bf8: $d5
  ld a, $89                                       ; $6bf9: $3e $89
  call Call_000_04e0                              ; $6bfb: $cd $e0 $04
  ld hl, $0003                                    ; $6bfe: $21 $03 $00
  add hl, de                                      ; $6c01: $19
  pop de                                          ; $6c02: $d1
  ld [hl], e                                      ; $6c03: $73
  inc hl                                          ; $6c04: $23
  ld [hl], d                                      ; $6c05: $72
  ld a, $01                                       ; $6c06: $3e $01
  ldh [$ff9a], a                                  ; $6c08: $e0 $9a
  ld a, $8e                                       ; $6c0a: $3e $8e
  call Call_000_04e0                              ; $6c0c: $cd $e0 $04
  push de                                         ; $6c0f: $d5
  ld a, $89                                       ; $6c10: $3e $89
  call Call_000_04e0                              ; $6c12: $cd $e0 $04
  ld hl, $0003                                    ; $6c15: $21 $03 $00
  add hl, de                                      ; $6c18: $19
  pop de                                          ; $6c19: $d1
  ld [hl], e                                      ; $6c1a: $73
  inc hl                                          ; $6c1b: $23
  ld [hl], d                                      ; $6c1c: $72
  ld a, $01                                       ; $6c1d: $3e $01
  ldh [$ff9a], a                                  ; $6c1f: $e0 $9a
  ld a, $8e                                       ; $6c21: $3e $8e
  call Call_000_04e0                              ; $6c23: $cd $e0 $04
  push de                                         ; $6c26: $d5
  ld a, $8a                                       ; $6c27: $3e $8a
  call Call_000_04e0                              ; $6c29: $cd $e0 $04
  push de                                         ; $6c2c: $d5
  xor a                                           ; $6c2d: $af
  ldh [$ff9a], a                                  ; $6c2e: $e0 $9a
  ld a, $90                                       ; $6c30: $3e $90
  call Call_000_04e0                              ; $6c32: $cd $e0 $04
  ld hl, $0003                                    ; $6c35: $21 $03 $00
  add hl, de                                      ; $6c38: $19
  pop de                                          ; $6c39: $d1
  ld [hl], e                                      ; $6c3a: $73
  inc hl                                          ; $6c3b: $23
  ld [hl], d                                      ; $6c3c: $72
  ld hl, $0003                                    ; $6c3d: $21 $03 $00
  add hl, de                                      ; $6c40: $19
  pop de                                          ; $6c41: $d1
  ld [hl], e                                      ; $6c42: $73
  inc hl                                          ; $6c43: $23
  ld [hl], d                                      ; $6c44: $72
  ld a, $8e                                       ; $6c45: $3e $8e
  call Call_000_04e0                              ; $6c47: $cd $e0 $04
  push de                                         ; $6c4a: $d5
  ld a, $8b                                       ; $6c4b: $3e $8b
  call Call_000_04e0                              ; $6c4d: $cd $e0 $04
  push de                                         ; $6c50: $d5
  ld a, $01                                       ; $6c51: $3e $01
  ldh [$ff9a], a                                  ; $6c53: $e0 $9a
  ld a, $90                                       ; $6c55: $3e $90
  call Call_000_04e0                              ; $6c57: $cd $e0 $04
  ld hl, $0003                                    ; $6c5a: $21 $03 $00
  add hl, de                                      ; $6c5d: $19
  pop de                                          ; $6c5e: $d1
  ld [hl], e                                      ; $6c5f: $73
  inc hl                                          ; $6c60: $23
  ld [hl], d                                      ; $6c61: $72
  ld hl, $0003                                    ; $6c62: $21 $03 $00
  add hl, de                                      ; $6c65: $19
  pop de                                          ; $6c66: $d1
  ld [hl], e                                      ; $6c67: $73
  inc hl                                          ; $6c68: $23
  ld [hl], d                                      ; $6c69: $72
  ld a, $8e                                       ; $6c6a: $3e $8e
  call Call_000_04e0                              ; $6c6c: $cd $e0 $04
  push de                                         ; $6c6f: $d5
  ld a, $8b                                       ; $6c70: $3e $8b
  call Call_000_04e0                              ; $6c72: $cd $e0 $04
  push de                                         ; $6c75: $d5
  ld a, $90                                       ; $6c76: $3e $90
  call Call_000_04e0                              ; $6c78: $cd $e0 $04
  ld hl, $0003                                    ; $6c7b: $21 $03 $00
  add hl, de                                      ; $6c7e: $19
  pop de                                          ; $6c7f: $d1
  ld [hl], e                                      ; $6c80: $73
  inc hl                                          ; $6c81: $23
  ld [hl], d                                      ; $6c82: $72
  ld hl, $0003                                    ; $6c83: $21 $03 $00
  add hl, de                                      ; $6c86: $19
  pop de                                          ; $6c87: $d1
  ld [hl], e                                      ; $6c88: $73
  inc hl                                          ; $6c89: $23
  ld [hl], d                                      ; $6c8a: $72
  ret                                             ; $6c8b: $c9


  call Call_000_2fc1                              ; $6c8c: $cd $c1 $2f
  rst $00                                         ; $6c8f: $c7

  db $98, $6c, $98, $6c

  xor b                                           ; $6c94: $a8
  ld l, h                                         ; $6c95: $6c

  db $ad, $6c

  call Call_000_2fd1                              ; $6c98: $cd $d1 $2f
  inc hl                                          ; $6c9b: $23
  ld a, [hl]                                      ; $6c9c: $7e
  or a                                            ; $6c9d: $b7
  ld de, $0000                                    ; $6c9e: $11 $00 $00
  jr z, jr_008_6cb0                               ; $6ca1: $28 $0d

  ld de, $0028                                    ; $6ca3: $11 $28 $00
  jr jr_008_6cb0                                  ; $6ca6: $18 $08

  ld de, $0010                                    ; $6ca8: $11 $10 $00
  jr jr_008_6cb0                                  ; $6cab: $18 $03

  ld de, $0030                                    ; $6cad: $11 $30 $00

jr_008_6cb0:
  call Call_000_3427                              ; $6cb0: $cd $27 $34

  db $03, $63, $78

  call Call_000_2fd1                              ; $6cb6: $cd $d1 $2f
  ld de, $002a                                    ; $6cb9: $11 $2a $00
  add hl, de                                      ; $6cbc: $19
  ld a, [hl]                                      ; $6cbd: $7e
  and $01                                         ; $6cbe: $e6 $01
  ld hl, $002a                                    ; $6cc0: $21 $2a $00
  add hl, bc                                      ; $6cc3: $09
  res 0, [hl]                                     ; $6cc4: $cb $86
  or [hl]                                         ; $6cc6: $b6
  ld [hl], a                                      ; $6cc7: $77
  call Call_000_2fd1                              ; $6cc8: $cd $d1 $2f
  ld de, $0006                                    ; $6ccb: $11 $06 $00
  add hl, de                                      ; $6cce: $19
  ld a, [hl+]                                     ; $6ccf: $2a
  ld h, [hl]                                      ; $6cd0: $66
  ld l, a                                         ; $6cd1: $6f
  add hl, hl                                      ; $6cd2: $29
  add hl, hl                                      ; $6cd3: $29
  add hl, hl                                      ; $6cd4: $29
  add hl, hl                                      ; $6cd5: $29
  ld a, h                                         ; $6cd6: $7c
  add $60                                         ; $6cd7: $c6 $60
  ld e, a                                         ; $6cd9: $5f
  push de                                         ; $6cda: $d5
  call Call_000_2fd1                              ; $6cdb: $cd $d1 $2f
  ld de, $0009                                    ; $6cde: $11 $09 $00
  add hl, de                                      ; $6ce1: $19
  ld a, [hl+]                                     ; $6ce2: $2a
  ld h, [hl]                                      ; $6ce3: $66
  ld l, a                                         ; $6ce4: $6f
  add hl, hl                                      ; $6ce5: $29
  add hl, hl                                      ; $6ce6: $29
  add hl, hl                                      ; $6ce7: $29
  ld a, h                                         ; $6ce8: $7c
  add $91                                         ; $6ce9: $c6 $91
  pop de                                          ; $6ceb: $d1
  ld d, a                                         ; $6cec: $57
  jp Jump_000_0885                                ; $6ced: $c3 $85 $08


Call_008_6cf0:
  ldh a, [$ffa6]                                  ; $6cf0: $f0 $a6
  ld hl, $ffa5                                    ; $6cf2: $21 $a5 $ff
  or [hl]                                         ; $6cf5: $b6
  and $fc                                         ; $6cf6: $e6 $fc
  jr z, jr_008_6d00                               ; $6cf8: $28 $06

  call Call_000_3427                              ; $6cfa: $cd $27 $34

  db $03, $c0, $6f

jr_008_6d00:
  call Call_008_665e                              ; $6d00: $cd $5e $66
  ret                                             ; $6d03: $c9


Call_008_6d04:
  push af                                         ; $6d04: $f5
  xor a                                           ; $6d05: $af
  ld [$cb50], a                                   ; $6d06: $ea $50 $cb
  call Call_008_6cf0                              ; $6d09: $cd $f0 $6c
  add $11                                         ; $6d0c: $c6 $11
  push bc                                         ; $6d0e: $c5
  ld bc, $c2cf                                    ; $6d0f: $01 $cf $c2
  call Call_008_62f7                              ; $6d12: $cd $f7 $62
  pop bc                                          ; $6d15: $c1
  ld hl, $c2d1                                    ; $6d16: $21 $d1 $c2
  ld [hl], $01                                    ; $6d19: $36 $01
  pop af                                          ; $6d1b: $f1
  rst $00                                         ; $6d1c: $c7

  db $25, $6d, $a8, $6d, $b5, $6d, $66, $6d

  ld hl, $cb4c                                    ; $6d25: $21 $4c $cb
  ld a, [hl+]                                     ; $6d28: $2a
  ld h, [hl]                                      ; $6d29: $66
  ld l, a                                         ; $6d2a: $6f
  ld de, $000f                                    ; $6d2b: $11 $0f $00
  add hl, de                                      ; $6d2e: $19
  ld a, [hl+]                                     ; $6d2f: $2a
  ld h, [hl]                                      ; $6d30: $66
  ld l, a                                         ; $6d31: $6f
  ld a, [$c2de]                                   ; $6d32: $fa $de $c2
  ld e, a                                         ; $6d35: $5f
  ld a, [$c2df]                                   ; $6d36: $fa $df $c2
  ld d, a                                         ; $6d39: $57
  call Call_000_0092                              ; $6d3a: $cd $92 $00
  add hl, de                                      ; $6d3d: $19
  call Call_000_0078                              ; $6d3e: $cd $78 $00
  push hl                                         ; $6d41: $e5
  ld hl, $cb4c                                    ; $6d42: $21 $4c $cb
  ld a, [hl+]                                     ; $6d45: $2a
  ld h, [hl]                                      ; $6d46: $66
  ld l, a                                         ; $6d47: $6f
  ld de, $0011                                    ; $6d48: $11 $11 $00
  add hl, de                                      ; $6d4b: $19
  ld a, [hl+]                                     ; $6d4c: $2a
  ld h, [hl]                                      ; $6d4d: $66
  ld l, a                                         ; $6d4e: $6f
  ld a, [$c2e0]                                   ; $6d4f: $fa $e0 $c2
  ld e, a                                         ; $6d52: $5f
  ld a, [$c2e1]                                   ; $6d53: $fa $e1 $c2
  ld d, a                                         ; $6d56: $57
  call Call_000_0092                              ; $6d57: $cd $92 $00
  add hl, de                                      ; $6d5a: $19
  call Call_000_0078                              ; $6d5b: $cd $78 $00
  pop de                                          ; $6d5e: $d1
  call Call_000_0061                              ; $6d5f: $cd $61 $00
  ld a, h                                         ; $6d62: $7c
  jp Jump_008_649f                                ; $6d63: $c3 $9f $64


  ld hl, $cb4c                                    ; $6d66: $21 $4c $cb
  ld a, [hl+]                                     ; $6d69: $2a
  ld h, [hl]                                      ; $6d6a: $66
  ld l, a                                         ; $6d6b: $6f
  ld de, $000f                                    ; $6d6c: $11 $0f $00
  add hl, de                                      ; $6d6f: $19
  ld a, [hl+]                                     ; $6d70: $2a
  ld h, [hl]                                      ; $6d71: $66
  ld l, a                                         ; $6d72: $6f
  ld a, [$c2de]                                   ; $6d73: $fa $de $c2
  ld e, a                                         ; $6d76: $5f
  ld a, [$c2df]                                   ; $6d77: $fa $df $c2
  ld d, a                                         ; $6d7a: $57
  call Call_000_0092                              ; $6d7b: $cd $92 $00
  add hl, de                                      ; $6d7e: $19
  call Call_000_0078                              ; $6d7f: $cd $78 $00
  push hl                                         ; $6d82: $e5
  ld hl, $cb4c                                    ; $6d83: $21 $4c $cb
  ld a, [hl+]                                     ; $6d86: $2a
  ld h, [hl]                                      ; $6d87: $66
  ld l, a                                         ; $6d88: $6f
  ld de, $0011                                    ; $6d89: $11 $11 $00
  add hl, de                                      ; $6d8c: $19
  ld a, [hl+]                                     ; $6d8d: $2a
  ld h, [hl]                                      ; $6d8e: $66
  ld l, a                                         ; $6d8f: $6f
  ld a, [$c2e0]                                   ; $6d90: $fa $e0 $c2
  ld e, a                                         ; $6d93: $5f
  ld a, [$c2e1]                                   ; $6d94: $fa $e1 $c2
  ld d, a                                         ; $6d97: $57
  call Call_000_0092                              ; $6d98: $cd $92 $00
  add hl, de                                      ; $6d9b: $19
  call Call_000_0078                              ; $6d9c: $cd $78 $00
  pop de                                          ; $6d9f: $d1
  call Call_000_0061                              ; $6da0: $cd $61 $00
  add hl, hl                                      ; $6da3: $29
  ld a, h                                         ; $6da4: $7c
  jp Jump_008_649f                                ; $6da5: $c3 $9f $64


  ld hl, $c2e0                                    ; $6da8: $21 $e0 $c2
  ld a, [hl+]                                     ; $6dab: $2a
  ld h, [hl]                                      ; $6dac: $66
  ld l, a                                         ; $6dad: $6f
  add hl, hl                                      ; $6dae: $29
  add hl, hl                                      ; $6daf: $29
  add hl, hl                                      ; $6db0: $29
  ld a, h                                         ; $6db1: $7c
  jp Jump_008_649f                                ; $6db2: $c3 $9f $64


  ld hl, $c2de                                    ; $6db5: $21 $de $c2
  ld e, [hl]                                      ; $6db8: $5e
  inc hl                                          ; $6db9: $23
  ld d, [hl]                                      ; $6dba: $56
  call Call_000_008f                              ; $6dbb: $cd $8f $00
  ld hl, $c2e0                                    ; $6dbe: $21 $e0 $c2
  ld a, [hl+]                                     ; $6dc1: $2a
  ld h, [hl]                                      ; $6dc2: $66
  ld l, a                                         ; $6dc3: $6f
  call Call_000_0078                              ; $6dc4: $cd $78 $00
  call Call_000_0061                              ; $6dc7: $cd $61 $00
  ld a, h                                         ; $6dca: $7c
  jp Jump_008_649f                                ; $6dcb: $c3 $9f $64


  ldh a, [$ffcd]                                  ; $6dce: $f0 $cd
  cp $3f                                          ; $6dd0: $fe $3f
  ret nz                                          ; $6dd2: $c0

  ld hl, $002c                                    ; $6dd3: $21 $2c $00
  add hl, bc                                      ; $6dd6: $09
  bit 4, [hl]                                     ; $6dd7: $cb $66
  ret z                                           ; $6dd9: $c8

  ld hl, $0002                                    ; $6dda: $21 $02 $00
  add hl, bc                                      ; $6ddd: $09
  ld a, [hl]                                      ; $6dde: $7e
  or a                                            ; $6ddf: $b7
  jr z, jr_008_6deb                               ; $6de0: $28 $09

  dec [hl]                                        ; $6de2: $35
  jr nz, jr_008_6deb                              ; $6de3: $20 $06

  ld hl, $002a                                    ; $6de5: $21 $2a $00
  add hl, bc                                      ; $6de8: $09
  res 0, [hl]                                     ; $6de9: $cb $86

jr_008_6deb:
  call Call_000_33f3                              ; $6deb: $cd $f3 $33

  db $01, $9c, $47

  jr nc, jr_008_6e5d                              ; $6df1: $30 $6a

  call Call_000_01dc                              ; $6df3: $cd $dc $01
  ret nz                                          ; $6df6: $c0

  ld a, $8a                                       ; $6df7: $3e $8a
  ld e, $ff                                       ; $6df9: $1e $ff
  call Call_000_33f3                              ; $6dfb: $cd $f3 $33

  db $01, $8b, $48

  ret c                                           ; $6e01: $d8

  ld a, $0c                                       ; $6e02: $3e $0c
  call Call_000_28e6                              ; $6e04: $cd $e6 $28
  or a                                            ; $6e07: $b7
  ret nz                                          ; $6e08: $c0

  ldh a, [rSVBK]                                  ; $6e09: $f0 $70
  push af                                         ; $6e0b: $f5
  ld a, $06                                       ; $6e0c: $3e $06
  ldh [rSVBK], a                                  ; $6e0e: $e0 $70
  xor a                                           ; $6e10: $af
  ld [$ddc6], a                                   ; $6e11: $ea $c6 $dd
  pop af                                          ; $6e14: $f1
  ldh [rSVBK], a                                  ; $6e15: $e0 $70
  ld a, $05                                       ; $6e17: $3e $05
  call Call_000_392b                              ; $6e19: $cd $2b $39
  ld a, $48                                       ; $6e1c: $3e $48
  call Call_000_394b                              ; $6e1e: $cd $4b $39
  ld a, [$cbfc]                                   ; $6e21: $fa $fc $cb
  or a                                            ; $6e24: $b7
  ret nz                                          ; $6e25: $c0

  ld hl, $cbd6                                    ; $6e26: $21 $d6 $cb
  ld [hl], $00                                    ; $6e29: $36 $00
  inc hl                                          ; $6e2b: $23
  ld [hl], $00                                    ; $6e2c: $36 $00
  push bc                                         ; $6e2e: $c5
  ld a, $8a                                       ; $6e2f: $3e $8a
  ld e, $ff                                       ; $6e31: $1e $ff
  call Call_000_0a46                              ; $6e33: $cd $46 $0a
  ld c, l                                         ; $6e36: $4d
  ld b, h                                         ; $6e37: $44
  ld a, [$cbfe]                                   ; $6e38: $fa $fe $cb
  or a                                            ; $6e3b: $b7
  jr nz, jr_008_6e46                              ; $6e3c: $20 $08

  ld hl, $004b                                    ; $6e3e: $21 $4b $00
  add hl, bc                                      ; $6e41: $09
  ld a, [hl]                                      ; $6e42: $7e
  ld [$cd85], a                                   ; $6e43: $ea $85 $cd

jr_008_6e46:
  xor a                                           ; $6e46: $af
  ld hl, $0002                                    ; $6e47: $21 $02 $00
  add hl, bc                                      ; $6e4a: $09
  ld [hl], a                                      ; $6e4b: $77
  push hl                                         ; $6e4c: $e5
  ld a, $2c                                       ; $6e4d: $3e $2c
  call Call_008_62f7                              ; $6e4f: $cd $f7 $62
  ld a, $01                                       ; $6e52: $3e $01
  ld [$cb51], a                                   ; $6e54: $ea $51 $cb
  pop hl                                          ; $6e57: $e1
  ld [hl], $ff                                    ; $6e58: $36 $ff
  pop bc                                          ; $6e5a: $c1
  jr jr_008_6ea7                                  ; $6e5b: $18 $4a

jr_008_6e5d:
  ld a, [$cbfc]                                   ; $6e5d: $fa $fc $cb
  or a                                            ; $6e60: $b7
  jr z, jr_008_6e6c                               ; $6e61: $28 $09

  ld a, $08                                       ; $6e63: $3e $08
  call Call_000_28e6                              ; $6e65: $cd $e6 $28
  or a                                            ; $6e68: $b7
  jr z, jr_008_6e71                               ; $6e69: $28 $06

  ret                                             ; $6e6b: $c9


jr_008_6e6c:
  ld a, [$cb50]                                   ; $6e6c: $fa $50 $cb
  or a                                            ; $6e6f: $b7
  ret z                                           ; $6e70: $c8

jr_008_6e71:
  ld a, $05                                       ; $6e71: $3e $05
  call Call_000_392b                              ; $6e73: $cd $2b $39
  ld a, [$cbfc]                                   ; $6e76: $fa $fc $cb
  or a                                            ; $6e79: $b7
  ret nz                                          ; $6e7a: $c0

  ldh a, [rSVBK]                                  ; $6e7b: $f0 $70
  push af                                         ; $6e7d: $f5
  ld a, $06                                       ; $6e7e: $3e $06
  ldh [rSVBK], a                                  ; $6e80: $e0 $70
  ld a, $01                                       ; $6e82: $3e $01
  ld [$ddc6], a                                   ; $6e84: $ea $c6 $dd
  pop af                                          ; $6e87: $f1
  ldh [rSVBK], a                                  ; $6e88: $e0 $70
  ld a, $49                                       ; $6e8a: $3e $49
  call Call_000_394b                              ; $6e8c: $cd $4b $39
  push bc                                         ; $6e8f: $c5
  xor a                                           ; $6e90: $af
  ld [$c2d1], a                                   ; $6e91: $ea $d1 $c2
  ld bc, $c2cf                                    ; $6e94: $01 $cf $c2
  ld a, $2c                                       ; $6e97: $3e $2c
  call Call_008_62f7                              ; $6e99: $cd $f7 $62
  ld a, $01                                       ; $6e9c: $3e $01
  ld [$cb51], a                                   ; $6e9e: $ea $51 $cb
  ld a, $ff                                       ; $6ea1: $3e $ff
  ld [$c2d1], a                                   ; $6ea3: $ea $d1 $c2
  pop bc                                          ; $6ea6: $c1

jr_008_6ea7:
  ld de, $0028                                    ; $6ea7: $11 $28 $00
  call $01d3                                      ; $6eaa: $cd $d3 $01
  ld hl, $cd44                                    ; $6ead: $21 $44 $cd
  ld [hl], $c2                                    ; $6eb0: $36 $c2
  inc hl                                          ; $6eb2: $23
  ld [hl], $6e                                    ; $6eb3: $36 $6e
  ld hl, $002c                                    ; $6eb5: $21 $2c $00
  add hl, bc                                      ; $6eb8: $09
  res 4, [hl]                                     ; $6eb9: $cb $a6
  ld hl, $002a                                    ; $6ebb: $21 $2a $00
  add hl, bc                                      ; $6ebe: $09
  set 0, [hl]                                     ; $6ebf: $cb $c6
  ret                                             ; $6ec1: $c9


  call Call_000_01e5                              ; $6ec2: $cd $e5 $01
  ret nz                                          ; $6ec5: $c0

  ld a, [$cbfe]                                   ; $6ec6: $fa $fe $cb
  or a                                            ; $6ec9: $b7
  jr z, jr_008_6ed6                               ; $6eca: $28 $0a

  ld a, $03                                       ; $6ecc: $3e $03
  ld [$cbfe], a                                   ; $6ece: $ea $fe $cb
  ld a, $40                                       ; $6ed1: $3e $40
  jp Jump_000_261e                                ; $6ed3: $c3 $1e $26


Jump_008_6ed6:
jr_008_6ed6:
  ld a, [$cbde]                                   ; $6ed6: $fa $de $cb
  or a                                            ; $6ed9: $b7
  ld a, $3d                                       ; $6eda: $3e $3d
  jp nz, Jump_000_261e                            ; $6edc: $c2 $1e $26

  xor a                                           ; $6edf: $af
  ld [$c0a0], a                                   ; $6ee0: $ea $a0 $c0
  ld [$cbfe], a                                   ; $6ee3: $ea $fe $cb
  ldh a, [rSVBK]                                  ; $6ee6: $f0 $70
  push af                                         ; $6ee8: $f5
  ld a, $06                                       ; $6ee9: $3e $06
  ldh [rSVBK], a                                  ; $6eeb: $e0 $70
  ld a, $3a                                       ; $6eed: $3e $3a
  ld [$ddc4], a                                   ; $6eef: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $6ef2: $e0 $d6
  ld a, $01                                       ; $6ef4: $3e $01
  ldh [$ffd7], a                                  ; $6ef6: $e0 $d7
  ld a, [$cbb6]                                   ; $6ef8: $fa $b6 $cb
  ld [$ddc7], a                                   ; $6efb: $ea $c7 $dd
  ld a, $3a                                       ; $6efe: $3e $3a
  ldh [$ffd8], a                                  ; $6f00: $e0 $d8
  ld [$ddc5], a                                   ; $6f02: $ea $c5 $dd
  pop af                                          ; $6f05: $f1
  ldh [rSVBK], a                                  ; $6f06: $e0 $70
  ld a, $0b                                       ; $6f08: $3e $0b
  jp Jump_000_261e                                ; $6f0a: $c3 $1e $26


  ldh a, [$ffcd]                                  ; $6f0d: $f0 $cd
  cp $3f                                          ; $6f0f: $fe $3f
  ret nz                                          ; $6f11: $c0

  ld hl, $002c                                    ; $6f12: $21 $2c $00
  add hl, bc                                      ; $6f15: $09
  bit 4, [hl]                                     ; $6f16: $cb $66
  ret z                                           ; $6f18: $c8

  call Call_000_33f3                              ; $6f19: $cd $f3 $33

  db $01, $9c, $47

  jr nc, jr_008_6f4a                              ; $6f1f: $30 $29

  inc bc                                          ; $6f21: $03
  ld a, [bc]                                      ; $6f22: $0a
  dec bc                                          ; $6f23: $0b
  xor $01                                         ; $6f24: $ee $01
  ld e, a                                         ; $6f26: $5f
  ld a, $8b                                       ; $6f27: $3e $8b
  call Call_000_33f3                              ; $6f29: $cd $f3 $33

  db $01, $8b, $48

  jr nc, jr_008_6f6d                              ; $6f2f: $30 $3c

  ld e, $ff                                       ; $6f31: $1e $ff
  ld a, $8a                                       ; $6f33: $3e $8a
  call Call_000_33f3                              ; $6f35: $cd $f3 $33

  db $01, $8b, $48

  jr nc, jr_008_6f6d                              ; $6f3b: $30 $30

  ld e, $ff                                       ; $6f3d: $1e $ff
  ld a, $89                                       ; $6f3f: $3e $89
  call Call_000_33f3                              ; $6f41: $cd $f3 $33

  db $01, $8b, $48

  jr nc, jr_008_6f82                              ; $6f47: $30 $39

  ret                                             ; $6f49: $c9


jr_008_6f4a:
  ld a, $8f                                       ; $6f4a: $3e $8f
  call Call_008_6af2                              ; $6f4c: $cd $f2 $6a
  ld de, $c2cf                                    ; $6f4f: $11 $cf $c2
  call Call_008_6b76                              ; $6f52: $cd $76 $6b
  ld a, c                                         ; $6f55: $79
  ld [$cb4c], a                                   ; $6f56: $ea $4c $cb
  ld a, b                                         ; $6f59: $78
  ld [$cb4d], a                                   ; $6f5a: $ea $4d $cb
  ld a, $00                                       ; $6f5d: $3e $00
  call Call_008_6d04                              ; $6f5f: $cd $04 $6d
  ld hl, $0042                                    ; $6f62: $21 $42 $00
  add hl, bc                                      ; $6f65: $09
  ld a, [hl]                                      ; $6f66: $7e
  add $09                                         ; $6f67: $c6 $09
  call Call_008_6317                              ; $6f69: $cd $17 $63
  ret                                             ; $6f6c: $c9


jr_008_6f6d:
  push hl                                         ; $6f6d: $e5
  ld a, $8f                                       ; $6f6e: $3e $8f
  call Call_008_6af2                              ; $6f70: $cd $f2 $6a
  pop de                                          ; $6f73: $d1
  call Call_008_6b76                              ; $6f74: $cd $76 $6b
  ld hl, $0042                                    ; $6f77: $21 $42 $00
  add hl, bc                                      ; $6f7a: $09
  ld a, [hl]                                      ; $6f7b: $7e
  add $09                                         ; $6f7c: $c6 $09
  call Call_008_6317                              ; $6f7e: $cd $17 $63
  ret                                             ; $6f81: $c9


jr_008_6f82:
  ld de, $000f                                    ; $6f82: $11 $0f $00
  add hl, de                                      ; $6f85: $19
  ld e, [hl]                                      ; $6f86: $5e
  inc hl                                          ; $6f87: $23
  ld d, [hl]                                      ; $6f88: $56
  dec hl                                          ; $6f89: $2b
  call Call_000_0092                              ; $6f8a: $cd $92 $00
  sla e                                           ; $6f8d: $cb $23
  rl d                                            ; $6f8f: $cb $12
  sla e                                           ; $6f91: $cb $23
  rl d                                            ; $6f93: $cb $12
  ld [hl], e                                      ; $6f95: $73
  inc hl                                          ; $6f96: $23
  ld [hl], d                                      ; $6f97: $72
  inc hl                                          ; $6f98: $23
  ld hl, $002c                                    ; $6f99: $21 $2c $00
  add hl, bc                                      ; $6f9c: $09
  res 4, [hl]                                     ; $6f9d: $cb $a6
  ld hl, $0002                                    ; $6f9f: $21 $02 $00
  add hl, bc                                      ; $6fa2: $09
  ld [hl], $05                                    ; $6fa3: $36 $05
  ld hl, $0042                                    ; $6fa5: $21 $42 $00
  add hl, bc                                      ; $6fa8: $09
  ld a, [hl]                                      ; $6fa9: $7e
  add $09                                         ; $6faa: $c6 $09
  call Call_008_6317                              ; $6fac: $cd $17 $63
  ret                                             ; $6faf: $c9


  ldh a, [$ffcd]                                  ; $6fb0: $f0 $cd
  cp $3f                                          ; $6fb2: $fe $3f
  ret nz                                          ; $6fb4: $c0

  ld hl, $002c                                    ; $6fb5: $21 $2c $00
  add hl, bc                                      ; $6fb8: $09
  bit 4, [hl]                                     ; $6fb9: $cb $66
  ret z                                           ; $6fbb: $c8

  call Call_000_33f3                              ; $6fbc: $cd $f3 $33

  db $01, $9c, $47

  jr nc, jr_008_6fda                              ; $6fc2: $30 $16

  ld a, $88                                       ; $6fc4: $3e $88
  ld e, $ff                                       ; $6fc6: $1e $ff
  call Call_000_33f3                              ; $6fc8: $cd $f3 $33

  db $01, $8b, $48

  ret c                                           ; $6fce: $d8

  ld hl, $0042                                    ; $6fcf: $21 $42 $00
  add hl, bc                                      ; $6fd2: $09
  ld a, [hl]                                      ; $6fd3: $7e
  add $09                                         ; $6fd4: $c6 $09
  call Call_008_6317                              ; $6fd6: $cd $17 $63
  ret                                             ; $6fd9: $c9


jr_008_6fda:
  ld a, $8f                                       ; $6fda: $3e $8f
  call Call_008_6af2                              ; $6fdc: $cd $f2 $6a
  ld de, $c2cf                                    ; $6fdf: $11 $cf $c2
  call Call_008_6b76                              ; $6fe2: $cd $76 $6b
  ld a, c                                         ; $6fe5: $79
  ld [$cb4c], a                                   ; $6fe6: $ea $4c $cb
  ld a, b                                         ; $6fe9: $78
  ld [$cb4d], a                                   ; $6fea: $ea $4d $cb
  ld a, $00                                       ; $6fed: $3e $00
  call Call_008_6d04                              ; $6fef: $cd $04 $6d
  ret                                             ; $6ff2: $c9


  ldh a, [$ffcd]                                  ; $6ff3: $f0 $cd
  cp $3f                                          ; $6ff5: $fe $3f
  ret nz                                          ; $6ff7: $c0

  ld hl, $002c                                    ; $6ff8: $21 $2c $00
  add hl, bc                                      ; $6ffb: $09
  bit 4, [hl]                                     ; $6ffc: $cb $66
  ret z                                           ; $6ffe: $c8

  call Call_000_33f3                              ; $6fff: $cd $f3 $33

  db $01, $9c, $47

  jr nc, jr_008_7025                              ; $7005: $30 $1e

  inc bc                                          ; $7007: $03
  ld a, [bc]                                      ; $7008: $0a
  dec bc                                          ; $7009: $0b
  xor $01                                         ; $700a: $ee $01
  ld e, a                                         ; $700c: $5f
  ld a, $89                                       ; $700d: $3e $89
  call Call_000_33f3                              ; $700f: $cd $f3 $33

  db $01, $8b, $48

  jp nc, Jump_008_70a0                            ; $7015: $d2 $a0 $70

  ld a, $8a                                       ; $7018: $3e $8a
  ld e, $ff                                       ; $701a: $1e $ff
  call Call_000_33f3                              ; $701c: $cd $f3 $33

  db $01, $8b, $48

  jr nc, jr_008_7072                              ; $7022: $30 $4e

  ret                                             ; $7024: $c9


jr_008_7025:
  ld a, [$cbfe]                                   ; $7025: $fa $fe $cb
  cp $01                                          ; $7028: $fe $01
  jr nz, jr_008_7031                              ; $702a: $20 $05

  ld a, $40                                       ; $702c: $3e $40
  call Call_000_261e                              ; $702e: $cd $1e $26

jr_008_7031:
  ld a, c                                         ; $7031: $79
  ld [$cb4c], a                                   ; $7032: $ea $4c $cb
  ld a, b                                         ; $7035: $78
  ld [$cb4d], a                                   ; $7036: $ea $4d $cb
  ld a, $03                                       ; $7039: $3e $03
  call Call_008_6d04                              ; $703b: $cd $04 $6d
  ld a, $8f                                       ; $703e: $3e $8f
  call Call_008_6af2                              ; $7040: $cd $f2 $6a
  ld hl, $002c                                    ; $7043: $21 $2c $00
  add hl, bc                                      ; $7046: $09
  res 4, [hl]                                     ; $7047: $cb $a6
  ld hl, $0002                                    ; $7049: $21 $02 $00
  add hl, bc                                      ; $704c: $09
  ld [hl], $05                                    ; $704d: $36 $05
  ld hl, $000f                                    ; $704f: $21 $0f $00
  add hl, bc                                      ; $7052: $09
  push hl                                         ; $7053: $e5
  ld de, $c2de                                    ; $7054: $11 $de $c2
  call Call_000_0269                              ; $7057: $cd $69 $02
  pop hl                                          ; $705a: $e1
  call Call_008_705e                              ; $705b: $cd $5e $70

Call_008_705e:
  ld e, [hl]                                      ; $705e: $5e
  inc hl                                          ; $705f: $23
  ld d, [hl]                                      ; $7060: $56
  dec hl                                          ; $7061: $2b
  call Call_000_0092                              ; $7062: $cd $92 $00
  sra d                                           ; $7065: $cb $2a
  rr e                                            ; $7067: $cb $1b
  sra d                                           ; $7069: $cb $2a
  rr e                                            ; $706b: $cb $1b
  ld [hl], e                                      ; $706d: $73
  inc hl                                          ; $706e: $23
  ld [hl], d                                      ; $706f: $72
  inc hl                                          ; $7070: $23
  ret                                             ; $7071: $c9


jr_008_7072:
  ld a, $8f                                       ; $7072: $3e $8f
  call Call_008_6af2                              ; $7074: $cd $f2 $6a
  ld hl, $002c                                    ; $7077: $21 $2c $00
  add hl, bc                                      ; $707a: $09
  res 4, [hl]                                     ; $707b: $cb $a6
  ld hl, $0002                                    ; $707d: $21 $02 $00
  add hl, bc                                      ; $7080: $09
  ld [hl], $05                                    ; $7081: $36 $05
  ld a, $8a                                       ; $7083: $3e $8a
  ld e, $ff                                       ; $7085: $1e $ff
  call Call_000_0a46                              ; $7087: $cd $46 $0a
  ld de, $000f                                    ; $708a: $11 $0f $00
  add hl, de                                      ; $708d: $19
  ld e, l                                         ; $708e: $5d
  ld d, h                                         ; $708f: $54
  ld hl, $000f                                    ; $7090: $21 $0f $00
  add hl, bc                                      ; $7093: $09
  push hl                                         ; $7094: $e5
  call Call_000_0269                              ; $7095: $cd $69 $02
  pop hl                                          ; $7098: $e1
  call Call_008_705e                              ; $7099: $cd $5e $70
  call Call_008_705e                              ; $709c: $cd $5e $70
  ret                                             ; $709f: $c9


Jump_008_70a0:
  ld a, $8f                                       ; $70a0: $3e $8f
  call Call_008_6af2                              ; $70a2: $cd $f2 $6a
  inc bc                                          ; $70a5: $03
  ld a, [bc]                                      ; $70a6: $0a
  dec bc                                          ; $70a7: $0b
  xor $01                                         ; $70a8: $ee $01
  ld e, a                                         ; $70aa: $5f
  ld a, $89                                       ; $70ab: $3e $89
  call Call_000_0a46                              ; $70ad: $cd $46 $0a
  ld e, l                                         ; $70b0: $5d
  ld d, h                                         ; $70b1: $54
  call Call_008_6b76                              ; $70b2: $cd $76 $6b
  ret                                             ; $70b5: $c9


  db $15, $0a, $bd, $08, $00, $81, $64, $00, $84, $64, $00, $51, $00, $60, $12, $80
  db $72, $63, $54, $18, $24, $aa, $69, $ea, $03, $00, $00, $06, $00, $00, $24, $e1
  db $69, $ea, $18, $ca, $70, $d5, $bd, $10, $00, $24, $f3, $69, $09, $00, $12, $80
  db $72, $63, $54, $18, $00, $05, $24, $72, $68, $24, $b3, $6a, $24, $1b, $6a, $24
  db $10, $6b, $24, $00, $71, $00, $02, $18, $ec, $70

  ld hl, $0002                                    ; $7100: $21 $02 $00
  add hl, bc                                      ; $7103: $09
  ld a, [hl]                                      ; $7104: $7e
  or a                                            ; $7105: $b7
  ret z                                           ; $7106: $c8

  dec [hl]                                        ; $7107: $35
  ret nz                                          ; $7108: $c0

  ld hl, $002c                                    ; $7109: $21 $2c $00
  add hl, bc                                      ; $710c: $09
  set 4, [hl]                                     ; $710d: $cb $e6
  ret                                             ; $710f: $c9


  ld hl, $cd44                                    ; $7110: $21 $44 $cd
  ld a, [hl+]                                     ; $7113: $2a
  ld h, [hl]                                      ; $7114: $66
  ld l, a                                         ; $7115: $6f
  ld de, $63f5                                    ; $7116: $11 $f5 $63
  rst $10                                         ; $7119: $d7
  ret nz                                          ; $711a: $c0

  ld a, $04                                       ; $711b: $3e $04
  jp Jump_000_392b                                ; $711d: $c3 $2b $39


  db $24, $10, $71, $60, $bd, $20, $00, $51, $08, $60, $72, $12, $80, $00, $01, $63
  db $00, $08, $57, $00, $00, $24, $10, $71, $60, $24, $4a, $71, $51, $10, $60, $72
  db $12, $80, $00, $01, $63, $00, $0f, $57, $00, $00

  ldh a, [$ffcd]                                  ; $714a: $f0 $cd
  cp $3f                                          ; $714c: $fe $3f
  ld de, $0018                                    ; $714e: $11 $18 $00
  jr z, jr_008_7156                               ; $7151: $28 $03

  ld de, $0210                                    ; $7153: $11 $10 $02

jr_008_7156:
  call Call_000_3427                              ; $7156: $cd $27 $34

  db $03, $63, $78, $d5, $60, $bd, $00, $00, $09, $00, $72, $84, $9a, $01, $12, $80
  db $00, $00, $20, $60, $22, $60

  inc h                                           ; $716f: $24
  ld h, b                                         ; $7170: $60

  db $2a, $60, $1a, $60

  call Call_000_2fc1                              ; $7175: $cd $c1 $2f
  or a                                            ; $7178: $b7
  jr nz, jr_008_7187                              ; $7179: $20 $0c

  call Call_000_2fd1                              ; $717b: $cd $d1 $2f
  ld de, $c2cf                                    ; $717e: $11 $cf $c2
  rst $10                                         ; $7181: $d7
  ld a, $04                                       ; $7182: $3e $04
  jr z, jr_008_7187                               ; $7184: $28 $01

  xor a                                           ; $7186: $af

jr_008_7187:
  ld hl, $716b                                    ; $7187: $21 $6b $71
  call Call_000_3182                              ; $718a: $cd $82 $31
  jp Jump_000_09f4                                ; $718d: $c3 $f4 $09


  db $7e, $72, $54, $04, $00, $01, $24, $75, $71, $24, $8c, $6c, $63, $24, $b6, $6c
  db $00, $02, $18, $9d, $71, $d5, $09, $04, $bd, $28, $00, $81, $2c, $01, $84, $54
  db $01, $12, $80, $54, $18, $00, $01, $24, $3e, $68, $24, $b3, $6a, $24, $1b, $6a
  db $24, $10, $6b, $24, $00, $71, $00, $02, $18, $b7, $71, $d5, $09, $04, $81, $c8
  db $00, $84, $54, $01, $24, $f1, $71, $12, $80, $54, $18, $00, $01, $24, $1b, $68
  db $24, $b3, $6a, $24, $1b, $6a, $24, $10, $6b, $24, $00, $71, $00, $02, $18, $dd
  db $71

  inc bc                                          ; $71f1: $03
  ld a, [bc]                                      ; $71f2: $0a
  dec bc                                          ; $71f3: $0b
  or a                                            ; $71f4: $b7
  push af                                         ; $71f5: $f5
  ld de, $0000                                    ; $71f6: $11 $00 $00
  jr z, jr_008_71fe                               ; $71f9: $28 $03

  ld de, $0028                                    ; $71fb: $11 $28 $00

jr_008_71fe:
  call Call_000_33f3                              ; $71fe: $cd $f3 $33

  db $03, $63, $78

  pop af                                          ; $7204: $f1
  ret z                                           ; $7205: $c8

  ld hl, $0007                                    ; $7206: $21 $07 $00
  add hl, bc                                      ; $7209: $09
  ld [hl], $02                                    ; $720a: $36 $02
  ret                                             ; $720c: $c9


  ldh a, [rSVBK]                                  ; $720d: $f0 $70
  push af                                         ; $720f: $f5
  ld a, $03                                       ; $7210: $3e $03
  ldh [rSVBK], a                                  ; $7212: $e0 $70
  ld a, $0a                                       ; $7214: $3e $0a
  ld hl, $ded6                                    ; $7216: $21 $d6 $de

jr_008_7219:
  push af                                         ; $7219: $f5
  ld de, $0008                                    ; $721a: $11 $08 $00
  ld a, [hl]                                      ; $721d: $7e
  or a                                            ; $721e: $b7
  jr nz, jr_008_723c                              ; $721f: $20 $1b

  push hl                                         ; $7221: $e5
  ld de, $fffa                                    ; $7222: $11 $fa $ff
  add hl, de                                      ; $7225: $19
  ld e, l                                         ; $7226: $5d
  ld d, h                                         ; $7227: $54
  ld hl, $0005                                    ; $7228: $21 $05 $00
  add hl, bc                                      ; $722b: $09
  call Call_000_0263                              ; $722c: $cd $63 $02
  ld hl, $0001                                    ; $722f: $21 $01 $00
  add hl, bc                                      ; $7232: $09
  call Call_000_026f                              ; $7233: $cd $6f $02
  pop hl                                          ; $7236: $e1
  pop af                                          ; $7237: $f1
  pop af                                          ; $7238: $f1
  ldh [rSVBK], a                                  ; $7239: $e0 $70
  ret                                             ; $723b: $c9


jr_008_723c:
  add hl, de                                      ; $723c: $19
  pop af                                          ; $723d: $f1
  dec a                                           ; $723e: $3d
  jr nz, jr_008_7219                              ; $723f: $20 $d8

  pop af                                          ; $7241: $f1
  ldh [rSVBK], a                                  ; $7242: $e0 $70
  ret                                             ; $7244: $c9


  db $10, $09, $18, $09

  jr nz, jr_008_7254                              ; $7249: $20 $09

  jr z, jr_008_7256                               ; $724b: $28 $09

  jr nc, jr_008_7258                              ; $724d: $30 $09

  db $38, $09, $40, $09

  ld c, b                                         ; $7253: $48

jr_008_7254:
  add hl, bc                                      ; $7254: $09
  ld d, b                                         ; $7255: $50

jr_008_7256:
  add hl, bc                                      ; $7256: $09
  ld e, b                                         ; $7257: $58

jr_008_7258:
  add hl, bc                                      ; $7258: $09
  ld h, b                                         ; $7259: $60
  add hl, bc                                      ; $725a: $09
  ld l, b                                         ; $725b: $68
  add hl, bc                                      ; $725c: $09
  ld [hl], b                                      ; $725d: $70
  add hl, bc                                      ; $725e: $09
  db $10                                          ; $725f: $10
  add hl, bc                                      ; $7260: $09

  db $78, $09, $80, $09

  adc b                                           ; $7265: $88
  add hl, bc                                      ; $7266: $09
  sub b                                           ; $7267: $90
  add hl, bc                                      ; $7268: $09
  sbc b                                           ; $7269: $98
  add hl, bc                                      ; $726a: $09

  db $a0, $09, $a8, $09, $b0, $09

  cp b                                            ; $7271: $b8
  add hl, bc                                      ; $7272: $09
  ret nz                                          ; $7273: $c0

  add hl, bc                                      ; $7274: $09
  ld a, b                                         ; $7275: $78
  add hl, bc                                      ; $7276: $09
  ret z                                           ; $7277: $c8

  add hl, bc                                      ; $7278: $09
  ret nc                                          ; $7279: $d0

  add hl, bc                                      ; $727a: $09
  db $10                                          ; $727b: $10
  add hl, bc                                      ; $727c: $09
  ret c                                           ; $727d: $d8

  add hl, bc                                      ; $727e: $09
  ldh [$ff09], a                                  ; $727f: $e0 $09
  add sp, $09                                     ; $7281: $e8 $09
  cp b                                            ; $7283: $b8
  add hl, bc                                      ; $7284: $09
  ldh a, [$ff09]                                  ; $7285: $f0 $09
  ld hl, sp+$09                                   ; $7287: $f8 $09
  nop                                             ; $7289: $00
  ld a, [bc]                                      ; $728a: $0a
  ld [$b80a], sp                                  ; $728b: $08 $0a $b8
  add hl, bc                                      ; $728e: $09
  db $10                                          ; $728f: $10
  ld a, [bc]                                      ; $7290: $0a
  jr jr_008_729d                                  ; $7291: $18 $0a

  jr nz, jr_008_729f                              ; $7293: $20 $0a

  db $10                                          ; $7295: $10
  add hl, bc                                      ; $7296: $09
  jr z, jr_008_72a3                               ; $7297: $28 $0a

  jr nc, jr_008_72a5                              ; $7299: $30 $0a

  jr c, jr_008_72a7                               ; $729b: $38 $0a

jr_008_729d:
  ld b, b                                         ; $729d: $40
  ld a, [bc]                                      ; $729e: $0a

jr_008_729f:
  ld c, b                                         ; $729f: $48
  ld a, [bc]                                      ; $72a0: $0a
  ld d, b                                         ; $72a1: $50
  ld a, [bc]                                      ; $72a2: $0a

jr_008_72a3:
  ld e, b                                         ; $72a3: $58
  ld a, [bc]                                      ; $72a4: $0a

jr_008_72a5:
  ld h, b                                         ; $72a5: $60
  ld a, [bc]                                      ; $72a6: $0a

jr_008_72a7:
  ld l, b                                         ; $72a7: $68
  ld a, [bc]                                      ; $72a8: $0a
  ld [hl], b                                      ; $72a9: $70
  ld a, [bc]                                      ; $72aa: $0a
  ld a, b                                         ; $72ab: $78
  ld a, [bc]                                      ; $72ac: $0a
  add b                                           ; $72ad: $80
  ld a, [bc]                                      ; $72ae: $0a
  db $10                                          ; $72af: $10
  add hl, bc                                      ; $72b0: $09

  db $88, $0a

  sub b                                           ; $72b3: $90
  ld a, [bc]                                      ; $72b4: $0a
  sbc b                                           ; $72b5: $98
  ld a, [bc]                                      ; $72b6: $0a
  and b                                           ; $72b7: $a0
  ld a, [bc]                                      ; $72b8: $0a
  xor b                                           ; $72b9: $a8
  ld a, [bc]                                      ; $72ba: $0a
  or b                                            ; $72bb: $b0
  ld a, [bc]                                      ; $72bc: $0a
  cp b                                            ; $72bd: $b8
  ld a, [bc]                                      ; $72be: $0a
  ret nz                                          ; $72bf: $c0

  ld a, [bc]                                      ; $72c0: $0a
  ret z                                           ; $72c1: $c8

  ld a, [bc]                                      ; $72c2: $0a
  ret nc                                          ; $72c3: $d0

  ld a, [bc]                                      ; $72c4: $0a
  ret c                                           ; $72c5: $d8

  ld a, [bc]                                      ; $72c6: $0a
  ldh [$ff0a], a                                  ; $72c7: $e0 $0a
  db $10                                          ; $72c9: $10
  add hl, bc                                      ; $72ca: $09
  add sp, $0a                                     ; $72cb: $e8 $0a
  ldh a, [$ff0a]                                  ; $72cd: $f0 $0a
  ld hl, sp+$0a                                   ; $72cf: $f8 $0a
  nop                                             ; $72d1: $00
  dec bc                                          ; $72d2: $0b

  db $08, $0b

  cp b                                            ; $72d5: $b8
  add hl, bc                                      ; $72d6: $09
  db $10                                          ; $72d7: $10
  dec bc                                          ; $72d8: $0b
  jr @+$0d                                        ; $72d9: $18 $0b

  jr nz, @+$0d                                    ; $72db: $20 $0b

  ld a, b                                         ; $72dd: $78
  add hl, bc                                      ; $72de: $09
  ld d, b                                         ; $72df: $50
  ld a, [bc]                                      ; $72e0: $0a
  add b                                           ; $72e1: $80
  ld a, [bc]                                      ; $72e2: $0a
  jr z, @+$0d                                     ; $72e3: $28 $0b

  jr nc, @+$0d                                    ; $72e5: $30 $0b

  db $38, $0b

  ld b, b                                         ; $72e9: $40
  dec bc                                          ; $72ea: $0b

  db $48, $0b, $50, $0b, $58, $0b, $60, $0b

  jr nc, @+$0d                                    ; $72f3: $30 $0b

  ld l, b                                         ; $72f5: $68
  dec bc                                          ; $72f6: $0b

  db $68, $0b

  ld l, b                                         ; $72f9: $68
  dec bc                                          ; $72fa: $0b

  db $70, $0b, $78, $0b, $80, $0b, $88, $0b, $90, $0b, $98, $0b

  and b                                           ; $7307: $a0
  dec bc                                          ; $7308: $0b

  db $a8, $0b

  or b                                            ; $730b: $b0
  dec bc                                          ; $730c: $0b
  cp b                                            ; $730d: $b8
  dec bc                                          ; $730e: $0b

  db $c0, $0b

  ret z                                           ; $7311: $c8

  dec bc                                          ; $7312: $0b

  db $d0, $0b, $d8, $0b

  ldh [$ff0b], a                                  ; $7317: $e0 $0b
  add sp, $0b                                     ; $7319: $e8 $0b
  ldh a, [$ff0b]                                  ; $731b: $f0 $0b
  ld hl, sp+$0b                                   ; $731d: $f8 $0b

  db $00, $0c, $08, $0c

  db $10                                          ; $7323: $10
  inc c                                           ; $7324: $0c

  db $18, $0c

  jr nz, jr_008_7335                              ; $7327: $20 $0c

  jr z, jr_008_7337                               ; $7329: $28 $0c

  db $30, $0c, $38, $0c

  ld b, b                                         ; $732f: $40
  inc c                                           ; $7330: $0c
  ld c, b                                         ; $7331: $48
  inc c                                           ; $7332: $0c

  db $48, $0c

jr_008_7335:
  ld d, b                                         ; $7335: $50
  inc c                                           ; $7336: $0c

jr_008_7337:
  ld e, b                                         ; $7337: $58
  inc c                                           ; $7338: $0c
  ld h, b                                         ; $7339: $60
  inc c                                           ; $733a: $0c
  ld l, b                                         ; $733b: $68
  inc c                                           ; $733c: $0c
  ld [hl], b                                      ; $733d: $70
  inc c                                           ; $733e: $0c
  ld a, b                                         ; $733f: $78
  inc c                                           ; $7340: $0c
  add b                                           ; $7341: $80
  inc c                                           ; $7342: $0c
  adc b                                           ; $7343: $88
  inc c                                           ; $7344: $0c
  adc b                                           ; $7345: $88
  inc c                                           ; $7346: $0c
  sub b                                           ; $7347: $90
  inc c                                           ; $7348: $0c

  db $98, $0c, $a0, $0c, $a8, $0c

  or b                                            ; $734f: $b0
  inc c                                           ; $7350: $0c

  db $b8, $0c

  ret nz                                          ; $7353: $c0

  inc c                                           ; $7354: $0c

  db $70, $0b

  ret z                                           ; $7357: $c8

  inc c                                           ; $7358: $0c
  ret nc                                          ; $7359: $d0

  inc c                                           ; $735a: $0c
  add b                                           ; $735b: $80
  inc c                                           ; $735c: $0c

  db $d8, $0c

  ldh [$ff0c], a                                  ; $735f: $e0 $0c

  db $e8, $0c, $f0, $0c, $f8, $0c, $00, $0d, $08, $0d, $10, $0d, $18, $0d, $20, $0d
  db $28, $0d, $b8, $0c, $b8, $0c, $b8, $0c

  cp b                                            ; $7379: $b8
  inc c                                           ; $737a: $0c
  cp b                                            ; $737b: $b8
  inc c                                           ; $737c: $0c
  cp b                                            ; $737d: $b8
  inc c                                           ; $737e: $0c
  cp b                                            ; $737f: $b8
  inc c                                           ; $7380: $0c
  cp b                                            ; $7381: $b8
  inc c                                           ; $7382: $0c
  cp b                                            ; $7383: $b8
  inc c                                           ; $7384: $0c

  ld a, d                                         ; $7385: $7a
  ld hl, $7245                                    ; $7386: $21 $45 $72
  call Call_000_3182                              ; $7389: $cd $82 $31
  call Call_000_3427                              ; $738c: $cd $27 $34

  db $03, $63, $78

  ld hl, $7245                                    ; $7392: $21 $45 $72
  jp Jump_000_3182                                ; $7395: $c3 $82 $31


  ld hl, $ff8f                                    ; $7398: $21 $8f $ff
  ld a, [hl+]                                     ; $739b: $2a
  ld h, [hl]                                      ; $739c: $66
  ld l, a                                         ; $739d: $6f
  ld a, $a0                                       ; $739e: $3e $a0
  call Call_000_28e6                              ; $73a0: $cd $e6 $28
  rst $08                                         ; $73a3: $cf
  ld a, l                                         ; $73a4: $7d
  ldh [$ff9b], a                                  ; $73a5: $e0 $9b
  ld a, h                                         ; $73a7: $7c
  ldh [$ff9c], a                                  ; $73a8: $e0 $9c
  ld hl, $ff91                                    ; $73aa: $21 $91 $ff
  ld a, [hl+]                                     ; $73ad: $2a
  ld h, [hl]                                      ; $73ae: $66
  ld l, a                                         ; $73af: $6f
  ld a, $90                                       ; $73b0: $3e $90
  call Call_000_28e6                              ; $73b2: $cd $e6 $28
  rst $08                                         ; $73b5: $cf
  ld a, l                                         ; $73b6: $7d
  ldh [$ff9d], a                                  ; $73b7: $e0 $9d
  ld a, h                                         ; $73b9: $7c
  ldh [$ff9e], a                                  ; $73ba: $e0 $9e
  ld hl, $caf8                                    ; $73bc: $21 $f8 $ca
  ld a, [$caf7]                                   ; $73bf: $fa $f7 $ca
  call Call_000_28e6                              ; $73c2: $cd $e6 $28
  add [hl]                                        ; $73c5: $86
  add $28                                         ; $73c6: $c6 $28
  jr nc, jr_008_73cc                              ; $73c8: $30 $02

  ld a, $ff                                       ; $73ca: $3e $ff

jr_008_73cc:
  ldh [$ff9f], a                                  ; $73cc: $e0 $9f
  ldh [$ff9a], a                                  ; $73ce: $e0 $9a
  ret                                             ; $73d0: $c9


  ld hl, $ce3a                                    ; $73d1: $21 $3a $ce
  xor a                                           ; $73d4: $af
  ld [hl+], a                                     ; $73d5: $22
  ld [hl+], a                                     ; $73d6: $22
  ld [hl+], a                                     ; $73d7: $22
  ld a, $00                                       ; $73d8: $3e $00
  ld hl, $ce3a                                    ; $73da: $21 $3a $ce
  call Call_000_32c0                              ; $73dd: $cd $c0 $32
  ld a, $03                                       ; $73e0: $3e $03
  ld hl, $ce3a                                    ; $73e2: $21 $3a $ce
  call Call_000_32c0                              ; $73e5: $cd $c0 $32
  ld a, $06                                       ; $73e8: $3e $06
  ld hl, $ce3a                                    ; $73ea: $21 $3a $ce
  call Call_000_32c0                              ; $73ed: $cd $c0 $32
  ld hl, $ce7f                                    ; $73f0: $21 $7f $ce
  xor a                                           ; $73f3: $af
  ld [hl+], a                                     ; $73f4: $22
  ld [hl+], a                                     ; $73f5: $22
  ld [hl+], a                                     ; $73f6: $22
  ld a, $12                                       ; $73f7: $3e $12
  ld hl, $ce7f                                    ; $73f9: $21 $7f $ce
  call Call_000_32c0                              ; $73fc: $cd $c0 $32
  ld a, $06                                       ; $73ff: $3e $06
  ld hl, $ce7f                                    ; $7401: $21 $7f $ce
  call Call_000_32c0                              ; $7404: $cd $c0 $32
  ld a, $00                                       ; $7407: $3e $00
  ld hl, $ce7f                                    ; $7409: $21 $7f $ce
  call Call_000_32c0                              ; $740c: $cd $c0 $32
  ld a, $03                                       ; $740f: $3e $03
  ld hl, $ce7f                                    ; $7411: $21 $7f $ce
  call Call_000_32c0                              ; $7414: $cd $c0 $32
  ld hl, $ce6e                                    ; $7417: $21 $6e $ce
  xor a                                           ; $741a: $af
  ld [hl+], a                                     ; $741b: $22
  ld [hl+], a                                     ; $741c: $22
  ld [hl+], a                                     ; $741d: $22
  ld a, $00                                       ; $741e: $3e $00
  ld hl, $ce6e                                    ; $7420: $21 $6e $ce
  call Call_000_32c0                              ; $7423: $cd $c0 $32
  ld a, $03                                       ; $7426: $3e $03
  ld hl, $ce6e                                    ; $7428: $21 $6e $ce
  call Call_000_32c0                              ; $742b: $cd $c0 $32
  ld a, $06                                       ; $742e: $3e $06
  ld hl, $ce6e                                    ; $7430: $21 $6e $ce
  call Call_000_32c0                              ; $7433: $cd $c0 $32
  ld hl, $ce90                                    ; $7436: $21 $90 $ce
  ld a, $ff                                       ; $7439: $3e $ff
  ld [hl+], a                                     ; $743b: $22
  ld [hl+], a                                     ; $743c: $22
  ld [hl+], a                                     ; $743d: $22
  ret                                             ; $743e: $c9


  ldh a, [rSVBK]                                  ; $743f: $f0 $70
  push af                                         ; $7441: $f5
  ld a, $06                                       ; $7442: $3e $06
  ldh [rSVBK], a                                  ; $7444: $e0 $70
  ld de, $001c                                    ; $7446: $11 $1c $00
  push de                                         ; $7449: $d5
  ld hl, $0014                                    ; $744a: $21 $14 $00
  push hl                                         ; $744d: $e5
  ld hl, $ff9b                                    ; $744e: $21 $9b $ff
  ld [hl], e                                      ; $7451: $73
  inc hl                                          ; $7452: $23
  ld [hl], d                                      ; $7453: $72
  ld de, $001e                                    ; $7454: $11 $1e $00
  ld hl, $ff9d                                    ; $7457: $21 $9d $ff
  ld [hl], e                                      ; $745a: $73
  inc hl                                          ; $745b: $23
  ld [hl], d                                      ; $745c: $72
  ld a, [$ddc7]                                   ; $745d: $fa $c7 $dd
  cp $02                                          ; $7460: $fe $02
  jr nz, jr_008_7465                              ; $7462: $20 $01

  xor a                                           ; $7464: $af

jr_008_7465:
  ldh [$ff9a], a                                  ; $7465: $e0 $9a
  ld a, $86                                       ; $7467: $3e $86
  call Call_000_04e0                              ; $7469: $cd $e0 $04
  ld a, l                                         ; $746c: $7d
  ldh [$ff9b], a                                  ; $746d: $e0 $9b
  ld a, h                                         ; $746f: $7c
  ldh [$ff9c], a                                  ; $7470: $e0 $9c
  ld a, [$cebd]                                   ; $7472: $fa $bd $ce
  or a                                            ; $7475: $b7
  jr z, jr_008_7492                               ; $7476: $28 $1a

  pop de                                          ; $7478: $d1
  pop hl                                          ; $7479: $e1
  push hl                                         ; $747a: $e5
  add hl, de                                      ; $747b: $19
  push hl                                         ; $747c: $e5
  ld a, l                                         ; $747d: $7d
  ldh [$ff9b], a                                  ; $747e: $e0 $9b
  ld a, h                                         ; $7480: $7c
  ldh [$ff9c], a                                  ; $7481: $e0 $9c
  ld a, [$ddc7]                                   ; $7483: $fa $c7 $dd
  cp $02                                          ; $7486: $fe $02
  jr nz, jr_008_748b                              ; $7488: $20 $01

  xor a                                           ; $748a: $af

jr_008_748b:
  ldh [$ff9a], a                                  ; $748b: $e0 $9a
  ld a, $c7                                       ; $748d: $3e $c7
  call Call_000_04e0                              ; $748f: $cd $e0 $04

jr_008_7492:
  ld a, [$cebe]                                   ; $7492: $fa $be $ce
  or a                                            ; $7495: $b7
  jr z, jr_008_74aa                               ; $7496: $28 $12

  pop de                                          ; $7498: $d1
  pop hl                                          ; $7499: $e1
  push hl                                         ; $749a: $e5
  add hl, de                                      ; $749b: $19
  push hl                                         ; $749c: $e5
  ld a, l                                         ; $749d: $7d
  ldh [$ff9b], a                                  ; $749e: $e0 $9b
  ld a, h                                         ; $74a0: $7c
  ldh [$ff9c], a                                  ; $74a1: $e0 $9c
  ld a, $c8                                       ; $74a3: $3e $c8
  call Call_000_04e0                              ; $74a5: $cd $e0 $04
  jr jr_008_74c0                                  ; $74a8: $18 $16

jr_008_74aa:
  ld a, [$cebf]                                   ; $74aa: $fa $bf $ce
  or a                                            ; $74ad: $b7
  jr z, jr_008_74c0                               ; $74ae: $28 $10

  pop de                                          ; $74b0: $d1
  pop hl                                          ; $74b1: $e1
  push hl                                         ; $74b2: $e5
  add hl, de                                      ; $74b3: $19
  push hl                                         ; $74b4: $e5
  ld a, l                                         ; $74b5: $7d
  ldh [$ff9b], a                                  ; $74b6: $e0 $9b
  ld a, h                                         ; $74b8: $7c
  ldh [$ff9c], a                                  ; $74b9: $e0 $9c
  ld a, $a4                                       ; $74bb: $3e $a4
  call Call_000_04e0                              ; $74bd: $cd $e0 $04

jr_008_74c0:
  pop hl                                          ; $74c0: $e1
  pop hl                                          ; $74c1: $e1
  pop af                                          ; $74c2: $f1
  ldh [rSVBK], a                                  ; $74c3: $e0 $70
  ret                                             ; $74c5: $c9


Call_008_74c6:
  ldh [$ffbd], a                                  ; $74c6: $e0 $bd
  ldh a, [rSVBK]                                  ; $74c8: $f0 $70
  push af                                         ; $74ca: $f5
  ld a, $05                                       ; $74cb: $3e $05
  ldh [rSVBK], a                                  ; $74cd: $e0 $70
  ldh a, [$ffbd]                                  ; $74cf: $f0 $bd
  call Call_000_33f3                              ; $74d1: $cd $f3 $33

  db $03, $76, $49

  ld a, [hl]                                      ; $74d7: $7e
  ldh [$ffbd], a                                  ; $74d8: $e0 $bd
  pop af                                          ; $74da: $f1
  ldh [rSVBK], a                                  ; $74db: $e0 $70
  ldh a, [$ffbd]                                  ; $74dd: $f0 $bd
  ret                                             ; $74df: $c9


  db $3a, $ce, $3a, $ce, $6e, $ce, $6e, $ce, $7f, $ce

  sub b                                           ; $74ea: $90
  db $ce                                          ; $74eb: $ce

  db $01, $03, $03, $03, $03, $03

  inc bc                                          ; $74f2: $03
  db $01                                          ; $74f3: $01

  db $01, $03

Call_008_74f6:
  push hl                                         ; $74f6: $e5
  ldh a, [$ffce]                                  ; $74f7: $f0 $ce
  ld hl, $74ec                                    ; $74f9: $21 $ec $74
  rst $08                                         ; $74fc: $cf
  pop hl                                          ; $74fd: $e1
  ret                                             ; $74fe: $c9


  call Call_008_74c6                              ; $74ff: $cd $c6 $74
  ld hl, $74e0                                    ; $7502: $21 $e0 $74
  call ResolveIndexedPointer16                              ; $7505: $cd $8b $31
  call Call_008_74f6                              ; $7508: $cd $f6 $74
  ld b, a                                         ; $750b: $47
  xor a                                           ; $750c: $af
  ldh [$ffd3], a                                  ; $750d: $e0 $d3
  ld de, $cb71                                    ; $750f: $11 $71 $cb

jr_008_7512:
  ld a, $12                                       ; $7512: $3e $12
  ld [de], a                                      ; $7514: $12
  call Call_000_33f3                              ; $7515: $cd $f3 $33

  db $03, $fc, $4f

  call Call_000_32c8                              ; $751b: $cd $c8 $32
  jr z, jr_008_752a                               ; $751e: $28 $0a

  call Call_000_33f3                              ; $7520: $cd $f3 $33

  db $1e, $dd, $5e

  jr z, jr_008_752a                               ; $7526: $28 $02

  xor a                                           ; $7528: $af
  ld [de], a                                      ; $7529: $12

jr_008_752a:
  inc de                                          ; $752a: $13
  ldh a, [$ffd3]                                  ; $752b: $f0 $d3
  inc a                                           ; $752d: $3c
  ldh [$ffd3], a                                  ; $752e: $e0 $d3
  dec b                                           ; $7530: $05
  jr nz, jr_008_7512                              ; $7531: $20 $df

  xor a                                           ; $7533: $af
  ldh [$ffd3], a                                  ; $7534: $e0 $d3
  ret                                             ; $7536: $c9


  ld a, $12                                       ; $7537: $3e $12
  ld hl, $cb71                                    ; $7539: $21 $71 $cb
  ld [hl+], a                                     ; $753c: $22
  ld [hl+], a                                     ; $753d: $22
  ld [hl+], a                                     ; $753e: $22
  ld [hl+], a                                     ; $753f: $22
  ld [hl+], a                                     ; $7540: $22
  ld a, [$ce7e]                                   ; $7541: $fa $7e $ce
  srl a                                           ; $7544: $cb $3f
  srl a                                           ; $7546: $cb $3f
  srl a                                           ; $7548: $cb $3f
  inc a                                           ; $754a: $3c
  cp $05                                          ; $754b: $fe $05
  jr c, jr_008_7551                               ; $754d: $38 $02

  ld a, $04                                       ; $754f: $3e $04

jr_008_7551:
  ld b, a                                         ; $7551: $47
  xor a                                           ; $7552: $af
  ld hl, $cb71                                    ; $7553: $21 $71 $cb

jr_008_7556:
  ld [hl+], a                                     ; $7556: $22
  dec b                                           ; $7557: $05
  jr nz, jr_008_7556                              ; $7558: $20 $fc

  ret                                             ; $755a: $c9


  call Call_008_74c6                              ; $755b: $cd $c6 $74
  ld hl, $74e0                                    ; $755e: $21 $e0 $74
  call ResolveIndexedPointer16                              ; $7561: $cd $8b $31
  push hl                                         ; $7564: $e5
  ld a, $12                                       ; $7565: $3e $12
  ld hl, $cb71                                    ; $7567: $21 $71 $cb
  ld [hl+], a                                     ; $756a: $22
  ld [hl+], a                                     ; $756b: $22
  ld [hl+], a                                     ; $756c: $22
  ld [hl+], a                                     ; $756d: $22
  ld [hl+], a                                     ; $756e: $22
  pop hl                                          ; $756f: $e1
  ld a, [$cb70]                                   ; $7570: $fa $70 $cb
  cp $09                                          ; $7573: $fe $09
  ld b, $05                                       ; $7575: $06 $05
  ld c, $00                                       ; $7577: $0e $00
  jr nz, jr_008_7596                              ; $7579: $20 $1b

  ldh a, [rSVBK]                                  ; $757b: $f0 $70
  push af                                         ; $757d: $f5
  ld a, $06                                       ; $757e: $3e $06
  ldh [rSVBK], a                                  ; $7580: $e0 $70
  ld a, [$dd02]                                   ; $7582: $fa $02 $dd
  ldh [$ffbd], a                                  ; $7585: $e0 $bd
  pop af                                          ; $7587: $f1
  ldh [rSVBK], a                                  ; $7588: $e0 $70
  ldh a, [$ffbd]                                  ; $758a: $f0 $bd
  or a                                            ; $758c: $b7
  jr z, jr_008_7597                               ; $758d: $28 $08

  inc c                                           ; $758f: $0c
  dec b                                           ; $7590: $05
  ld de, $cb72                                    ; $7591: $11 $72 $cb
  jr jr_008_759a                                  ; $7594: $18 $04

jr_008_7596:
  ld c, b                                         ; $7596: $48

jr_008_7597:
  ld de, $cb71                                    ; $7597: $11 $71 $cb

jr_008_759a:
  ld a, c                                         ; $759a: $79
  call Call_000_33f3                              ; $759b: $cd $f3 $33

  db $03, $09, $50

  call Call_000_32c8                              ; $75a1: $cd $c8 $32
  jr z, jr_008_75b0                               ; $75a4: $28 $0a

  call Call_000_33f3                              ; $75a6: $cd $f3 $33

  db $1e, $dd, $5e

  jr z, jr_008_75b0                               ; $75ac: $28 $02

  xor a                                           ; $75ae: $af
  ld [de], a                                      ; $75af: $12

jr_008_75b0:
  inc de                                          ; $75b0: $13
  inc c                                           ; $75b1: $0c
  dec b                                           ; $75b2: $05
  jr nz, jr_008_759a                              ; $75b3: $20 $e5

  ret                                             ; $75b5: $c9


  ld hl, $7c33                                    ; $75b6: $21 $33 $7c
  call Call_000_33f3                              ; $75b9: $cd $f3 $33

  db $03, $88, $7e

  call Call_008_626f                              ; $75bf: $cd $6f $62
  ld a, [$cbfe]                                   ; $75c2: $fa $fe $cb
  cp $02                                          ; $75c5: $fe $02
  jr nz, jr_008_75d8                              ; $75c7: $20 $0f

  ld a, $3f                                       ; $75c9: $3e $3f
  ldh [$ffcd], a                                  ; $75cb: $e0 $cd
  ldh [$ffd0], a                                  ; $75cd: $e0 $d0
  ld hl, $cd44                                    ; $75cf: $21 $44 $cd
  ld [hl], $f5                                    ; $75d2: $36 $f5
  inc hl                                          ; $75d4: $23
  ld [hl], $63                                    ; $75d5: $36 $63
  ret                                             ; $75d7: $c9


jr_008_75d8:
  cp $01                                          ; $75d8: $fe $01
  jr z, jr_008_75f3                               ; $75da: $28 $17

  cp $04                                          ; $75dc: $fe $04
  jr z, jr_008_75e7                               ; $75de: $28 $07

  ld de, $0028                                    ; $75e0: $11 $28 $00
  call $01d3                                      ; $75e3: $cd $d3 $01
  ret                                             ; $75e6: $c9


jr_008_75e7:
  ld hl, $c2fb                                    ; $75e7: $21 $fb $c2
  res 4, [hl]                                     ; $75ea: $cb $a6
  ld de, $0026                                    ; $75ec: $11 $26 $00
  call $01d3                                      ; $75ef: $cd $d3 $01
  ret                                             ; $75f2: $c9


jr_008_75f3:
  call Call_000_33f3                              ; $75f3: $cd $f3 $33

  db $00, $34, $10

  ld a, $01                                       ; $75f9: $3e $01
  ld hl, $0a30                                    ; $75fb: $21 $30 $0a
  call Call_000_33f3                              ; $75fe: $cd $f3 $33

  db $04, $c9, $42

  ret                                             ; $7604: $c9


  ld a, [$cbfe]                                   ; $7605: $fa $fe $cb
  cp $01                                          ; $7608: $fe $01
  ret z                                           ; $760a: $c8

  cp $04                                          ; $760b: $fe $04
  jr nz, jr_008_761e                              ; $760d: $20 $0f

  call Call_000_01e5                              ; $760f: $cd $e5 $01
  jp z, Jump_008_6ed6                             ; $7612: $ca $d6 $6e

  cp $04                                          ; $7615: $fe $04
  ret nz                                          ; $7617: $c0

  ld hl, $c2f9                                    ; $7618: $21 $f9 $c2
  set 1, [hl]                                     ; $761b: $cb $ce
  ret                                             ; $761d: $c9


jr_008_761e:
  call Call_000_01e5                              ; $761e: $cd $e5 $01
  jr nz, jr_008_7657                              ; $7621: $20 $34

  ld hl, $ff91                                    ; $7623: $21 $91 $ff
  ld a, [hl+]                                     ; $7626: $2a
  ld h, [hl]                                      ; $7627: $66
  ld l, a                                         ; $7628: $6f
  ld de, $0176                                    ; $7629: $11 $76 $01
  rst $10                                         ; $762c: $d7
  jr c, jr_008_7657                               ; $762d: $38 $28

  call Call_000_33f3                              ; $762f: $cd $f3 $33

  db $00, $34, $10

  ld a, $01                                       ; $7635: $3e $01
  ld hl, $0a36                                    ; $7637: $21 $36 $0a
  call Call_000_33f3                              ; $763a: $cd $f3 $33

  db $04, $c9, $42

  xor a                                           ; $7640: $af
  ld [$c2d1], a                                   ; $7641: $ea $d1 $c2
  ld bc, $c2cf                                    ; $7644: $01 $cf $c2
  ld a, $2b                                       ; $7647: $3e $2b
  call Call_008_62f7                              ; $7649: $cd $f7 $62
  ld a, $01                                       ; $764c: $3e $01
  ld [$cb51], a                                   ; $764e: $ea $51 $cb
  ld a, $ff                                       ; $7651: $3e $ff
  ld [$c2d1], a                                   ; $7653: $ea $d1 $c2
  ret                                             ; $7656: $c9


jr_008_7657:
  ld a, $41                                       ; $7657: $3e $41
  ldh [$ffa6], a                                  ; $7659: $e0 $a6
  ldh [$ffa5], a                                  ; $765b: $e0 $a5
  call Call_008_6330                              ; $765d: $cd $30 $63
  call Call_008_63cb                              ; $7660: $cd $cb $63
  call Call_008_63f4                              ; $7663: $cd $f4 $63
  ret                                             ; $7666: $c9


  ld hl, $0051                                    ; $7667: $21 $51 $00
  add hl, bc                                      ; $766a: $09
  ld a, [hl+]                                     ; $766b: $2a
  ld h, [hl]                                      ; $766c: $66
  ld l, a                                         ; $766d: $6f
  ld de, $000b                                    ; $766e: $11 $0b $00
  add hl, de                                      ; $7671: $19
  ld e, [hl]                                      ; $7672: $5e
  inc hl                                          ; $7673: $23
  ld d, [hl]                                      ; $7674: $56
  inc hl                                          ; $7675: $23
  ld a, [hl+]                                     ; $7676: $2a
  ld h, [hl]                                      ; $7677: $66
  ld l, a                                         ; $7678: $6f
  push de                                         ; $7679: $d5
  push hl                                         ; $767a: $e5
  call Call_000_33f3                              ; $767b: $cd $f3 $33

  db $03, $7c, $70

  call Call_000_008f                              ; $7681: $cd $8f $00
  call Call_000_0078                              ; $7684: $cd $78 $00
  call Call_000_0061                              ; $7687: $cd $61 $00
  ld de, $0012                                    ; $768a: $11 $12 $00
  rst $10                                         ; $768d: $d7
  jr c, jr_008_76aa                               ; $768e: $38 $1a

  ld hl, $0044                                    ; $7690: $21 $44 $00
  add hl, bc                                      ; $7693: $09
  xor a                                           ; $7694: $af
  ld [hl+], a                                     ; $7695: $22
  ld [hl], a                                      ; $7696: $77
  pop hl                                          ; $7697: $e1
  pop de                                          ; $7698: $d1
  call Call_000_33f3                              ; $7699: $cd $f3 $33

  db $03, $af, $70

  ld hl, $0023                                    ; $769f: $21 $23 $00
  add hl, bc                                      ; $76a2: $09
  xor a                                           ; $76a3: $af
  ld [hl], a                                      ; $76a4: $77
  ld a, $2a                                       ; $76a5: $3e $2a
  jp Jump_000_2fdd                                ; $76a7: $c3 $dd $2f


jr_008_76aa:
  ld de, $0019                                    ; $76aa: $11 $19 $00
  rst $10                                         ; $76ad: $d7
  jr nc, jr_008_76bb                              ; $76ae: $30 $0b

  ld hl, $0044                                    ; $76b0: $21 $44 $00
  add hl, bc                                      ; $76b3: $09
  ld a, $84                                       ; $76b4: $3e $84
  ld [hl+], a                                     ; $76b6: $22
  ld [hl], $03                                    ; $76b7: $36 $03
  jr jr_008_76c4                                  ; $76b9: $18 $09

jr_008_76bb:
  ld hl, $0044                                    ; $76bb: $21 $44 $00
  add hl, bc                                      ; $76be: $09
  ld a, $2c                                       ; $76bf: $3e $2c
  ld [hl+], a                                     ; $76c1: $22
  ld [hl], $01                                    ; $76c2: $36 $01

jr_008_76c4:
  pop hl                                          ; $76c4: $e1
  pop de                                          ; $76c5: $d1
  push de                                         ; $76c6: $d5
  push hl                                         ; $76c7: $e5
  call Call_000_33f3                              ; $76c8: $cd $f3 $33

  db $03, $af, $70

  pop de                                          ; $76ce: $d1
  pop hl                                          ; $76cf: $e1
  call Call_000_09d7                              ; $76d0: $cd $d7 $09
  xor $04                                         ; $76d3: $ee $04
  ld hl, $0002                                    ; $76d5: $21 $02 $00
  add hl, bc                                      ; $76d8: $09
  cp [hl]                                         ; $76d9: $be
  ret z                                           ; $76da: $c8

  ld [hl], a                                      ; $76db: $77
  call Call_000_33f3                              ; $76dc: $cd $f3 $33

  db $05, $f6, $70

  or a                                            ; $76e2: $b7
  jr z, jr_008_76f4                               ; $76e3: $28 $0f

  cp $01                                          ; $76e5: $fe $01
  jr z, jr_008_76fb                               ; $76e7: $28 $12

  cp $02                                          ; $76e9: $fe $02
  jr z, jr_008_7702                               ; $76eb: $28 $15

  call Call_000_33f3                              ; $76ed: $cd $f3 $33

  db $05, $ae, $7a

  ret                                             ; $76f3: $c9


jr_008_76f4:
  call Call_000_33f3                              ; $76f4: $cd $f3 $33

  db $05, $d5, $7a

  ret                                             ; $76fa: $c9


jr_008_76fb:
  call Call_000_33f3                              ; $76fb: $cd $f3 $33
  dec b                                           ; $76fe: $05
  rst $38                                         ; $76ff: $ff
  ld a, d                                         ; $7700: $7a
  ret                                             ; $7701: $c9


jr_008_7702:
  call Call_000_33f3                              ; $7702: $cd $f3 $33
  dec b                                           ; $7705: $05
  ld [$c97a], a                                   ; $7706: $ea $7a $c9

  push bc                                         ; $7709: $c5
  call Call_000_33f3                              ; $770a: $cd $f3 $33

  db $03, $52, $73

  pop bc                                          ; $7710: $c1
  ld hl, $002c                                    ; $7711: $21 $2c $00
  add hl, bc                                      ; $7714: $09
  bit 4, [hl]                                     ; $7715: $cb $66
  ret z                                           ; $7717: $c8

  call Call_000_33f3                              ; $7718: $cd $f3 $33

  db $01, $9c, $47

  jr c, jr_008_7735                               ; $771e: $38 $15

  ld a, [$cb2d]                                   ; $7720: $fa $2d $cb
  cp $09                                          ; $7723: $fe $09
  ret z                                           ; $7725: $c8

  cp $04                                          ; $7726: $fe $04
  ret z                                           ; $7728: $c8

  call Call_000_09ab                              ; $7729: $cd $ab $09
  sra a                                           ; $772c: $cb $2f
  add $05                                         ; $772e: $c6 $05
  call Call_000_2fdd                              ; $7730: $cd $dd $2f
  jr jr_008_7744                                  ; $7733: $18 $0f

jr_008_7735:
  ld hl, $002c                                    ; $7735: $21 $2c $00
  add hl, bc                                      ; $7738: $09
  bit 6, [hl]                                     ; $7739: $cb $76
  ret z                                           ; $773b: $c8

  res 6, [hl]                                     ; $773c: $cb $b6
  ld hl, $0023                                    ; $773e: $21 $23 $00
  add hl, bc                                      ; $7741: $09
  ld [hl], $00                                    ; $7742: $36 $00

jr_008_7744:
  ld hl, $001c                                    ; $7744: $21 $1c $00
  add hl, bc                                      ; $7747: $09
  ld [hl], $01                                    ; $7748: $36 $01
  ret                                             ; $774a: $c9


  db $00, $00, $00, $00, $04, $00, $08, $00, $08, $00, $08, $00, $04, $00, $00, $00
  db $0a, $00, $0a, $00, $0e, $00, $12, $00, $12, $00, $12, $00, $0e, $00, $0a, $00

Call_008_776b:
  ldh a, [rSVBK]                                  ; $776b: $f0 $70
  push af                                         ; $776d: $f5
  ld a, $06                                       ; $776e: $3e $06
  ldh [rSVBK], a                                  ; $7770: $e0 $70
  ld hl, $c2f9                                    ; $7772: $21 $f9 $c2
  set 3, [hl]                                     ; $7775: $cb $de
  ld a, [$ddc7]                                   ; $7777: $fa $c7 $dd
  rst $00                                         ; $777a: $c7

  db $e1, $77, $eb, $77, $d7, $77, $dc, $77

  pop hl                                          ; $7783: $e1
  ld [hl], a                                      ; $7784: $77
  pop hl                                          ; $7785: $e1
  ld [hl], a                                      ; $7786: $77
  pop hl                                          ; $7787: $e1
  ld [hl], a                                      ; $7788: $77
  pop hl                                          ; $7789: $e1
  ld [hl], a                                      ; $778a: $77
  pop hl                                          ; $778b: $e1
  ld [hl], a                                      ; $778c: $77

  db $b6, $77, $91, $77

  ld de, $0d68                                    ; $7791: $11 $68 $0d
  call Call_000_33f3                              ; $7794: $cd $f3 $33

  db $03, $63, $78

  ld de, $0d70                                    ; $779a: $11 $70 $0d
  call Call_000_33f3                              ; $779d: $cd $f3 $33

  db $03, $73, $78

  ld de, $0e22                                    ; $77a3: $11 $22 $0e
  ld hl, $cae1                                    ; $77a6: $21 $e1 $ca
  ld [hl], e                                      ; $77a9: $73
  inc hl                                          ; $77aa: $23
  ld [hl], d                                      ; $77ab: $72
  ld hl, $c2f4                                    ; $77ac: $21 $f4 $c2
  ld [hl], e                                      ; $77af: $73
  inc hl                                          ; $77b0: $23
  ld [hl], d                                      ; $77b1: $72
  pop af                                          ; $77b2: $f1
  ldh [rSVBK], a                                  ; $77b3: $e0 $70
  ret                                             ; $77b5: $c9


  ld de, $0000                                    ; $77b6: $11 $00 $00
  call Call_000_33f3                              ; $77b9: $cd $f3 $33

  db $03, $63, $78

  ld hl, $c2f9                                    ; $77bf: $21 $f9 $c2
  res 3, [hl]                                     ; $77c2: $cb $9e
  ld de, $0f14                                    ; $77c4: $11 $14 $0f
  ld hl, $cae1                                    ; $77c7: $21 $e1 $ca
  ld [hl], e                                      ; $77ca: $73
  inc hl                                          ; $77cb: $23
  ld [hl], d                                      ; $77cc: $72
  ld hl, $c2f4                                    ; $77cd: $21 $f4 $c2
  ld [hl], e                                      ; $77d0: $73
  inc hl                                          ; $77d1: $23
  ld [hl], d                                      ; $77d2: $72
  pop af                                          ; $77d3: $f1
  ldh [rSVBK], a                                  ; $77d4: $e0 $70
  ret                                             ; $77d6: $c9


  ld de, $00d1                                    ; $77d7: $11 $d1 $00
  jr jr_008_77e4                                  ; $77da: $18 $08

  ld de, $03f0                                    ; $77dc: $11 $f0 $03
  jr jr_008_77e4                                  ; $77df: $18 $03

  ld de, $0039                                    ; $77e1: $11 $39 $00

jr_008_77e4:
  ld hl, $0025                                    ; $77e4: $21 $25 $00
  add hl, bc                                      ; $77e7: $09
  ld [hl], e                                      ; $77e8: $73
  inc hl                                          ; $77e9: $23
  ld [hl], d                                      ; $77ea: $72
  ldh [$ffbd], a                                  ; $77eb: $e0 $bd
  pop af                                          ; $77ed: $f1
  ldh [rSVBK], a                                  ; $77ee: $e0 $70
  ldh a, [$ffbd]                                  ; $77f0: $f0 $bd
  ld a, [$cae0]                                   ; $77f2: $fa $e0 $ca
  swap a                                          ; $77f5: $cb $37
  ld hl, $774b                                    ; $77f7: $21 $4b $77
  rst $08                                         ; $77fa: $cf
  ld a, [$cadc]                                   ; $77fb: $fa $dc $ca
  call Call_000_3182                              ; $77fe: $cd $82 $31
  ld hl, $cae1                                    ; $7801: $21 $e1 $ca
  ld [hl], e                                      ; $7804: $73
  inc hl                                          ; $7805: $23
  ld [hl], d                                      ; $7806: $72
  ld a, $00                                       ; $7807: $3e $00
  call Call_000_0806                              ; $7809: $cd $06 $08
  ld a, [$cadc]                                   ; $780c: $fa $dc $ca
  or a                                            ; $780f: $b7
  ret z                                           ; $7810: $c8

  cp $04                                          ; $7811: $fe $04
  ret z                                           ; $7813: $c8

  ret c                                           ; $7814: $d8

  ld a, $20                                       ; $7815: $3e $20
  jp Jump_000_0806                                ; $7817: $c3 $06 $08


  xor a                                           ; $781a: $af
  ld [$c31a], a                                   ; $781b: $ea $1a $c3
  inc a                                           ; $781e: $3c
  ld [$cae0], a                                   ; $781f: $ea $e0 $ca
  ld hl, $cae3                                    ; $7822: $21 $e3 $ca
  ld [hl], $ff                                    ; $7825: $36 $ff
  inc hl                                          ; $7827: $23
  ld [hl], $ff                                    ; $7828: $36 $ff
  ldh [$ffbd], a                                  ; $782a: $e0 $bd
  ldh a, [rSVBK]                                  ; $782c: $f0 $70
  push af                                         ; $782e: $f5
  ld a, $06                                       ; $782f: $3e $06
  ldh [rSVBK], a                                  ; $7831: $e0 $70
  ldh a, [$ffbd]                                  ; $7833: $f0 $bd
  ld hl, $004c                                    ; $7835: $21 $4c $00
  add hl, bc                                      ; $7838: $09
  ld a, [$ddc7]                                   ; $7839: $fa $c7 $dd
  cp $01                                          ; $783c: $fe $01
  jr z, jr_008_7886                               ; $783e: $28 $46

  cp $02                                          ; $7840: $fe $02
  jr z, jr_008_7874                               ; $7842: $28 $30

  cp $03                                          ; $7844: $fe $03
  jr z, jr_008_787d                               ; $7846: $28 $35

  cp $08                                          ; $7848: $fe $08
  jr z, jr_008_7874                               ; $784a: $28 $28

  cp $09                                          ; $784c: $fe $09
  jr z, jr_008_7859                               ; $784e: $28 $09

  ld de, $00c8                                    ; $7850: $11 $c8 $00
  push de                                         ; $7853: $d5
  ld de, $00c0                                    ; $7854: $11 $c0 $00
  jr jr_008_788d                                  ; $7857: $18 $34

jr_008_7859:
  pop af                                          ; $7859: $f1
  ldh [rSVBK], a                                  ; $785a: $e0 $70
  ld hl, $002c                                    ; $785c: $21 $2c $00
  add hl, bc                                      ; $785f: $09
  res 7, [hl]                                     ; $7860: $cb $be
  call Call_008_776b                              ; $7862: $cd $6b $77
  ld hl, $c2f0                                    ; $7865: $21 $f0 $c2
  ld a, [hl+]                                     ; $7868: $2a
  ld h, [hl]                                      ; $7869: $66
  ld l, a                                         ; $786a: $6f
  ld a, [hl]                                      ; $786b: $7e
  call Call_000_0864                              ; $786c: $cd $64 $08
  ld a, $01                                       ; $786f: $3e $01
  ldh [$ffe1], a                                  ; $7871: $e0 $e1
  ret                                             ; $7873: $c9


jr_008_7874:
  ld de, $00e0                                    ; $7874: $11 $e0 $00
  push de                                         ; $7877: $d5
  ld de, $00e0                                    ; $7878: $11 $e0 $00
  jr jr_008_788d                                  ; $787b: $18 $10

jr_008_787d:
  ld de, $02f8                                    ; $787d: $11 $f8 $02
  push de                                         ; $7880: $d5
  ld de, $00c0                                    ; $7881: $11 $c0 $00
  jr jr_008_788d                                  ; $7884: $18 $07

jr_008_7886:
  ld de, $00e0                                    ; $7886: $11 $e0 $00
  push de                                         ; $7889: $d5
  ld de, $00d8                                    ; $788a: $11 $d8 $00

jr_008_788d:
  call Call_000_33f3                              ; $788d: $cd $f3 $33

  db $03, $63, $78

  pop de                                          ; $7893: $d1
  call Call_000_33f3                              ; $7894: $cd $f3 $33

  db $03, $73, $78

  ld a, [$ddc4]                                   ; $789a: $fa $c4 $dd
  ld d, a                                         ; $789d: $57
  ldh [$ffbd], a                                  ; $789e: $e0 $bd
  pop af                                          ; $78a0: $f1
  ldh [rSVBK], a                                  ; $78a1: $e0 $70
  ldh a, [$ffbd]                                  ; $78a3: $f0 $bd
  ldh a, [$ffd6]                                  ; $78a5: $f0 $d6
  cp d                                            ; $78a7: $ba
  jr nz, jr_008_78aa                              ; $78a8: $20 $00

jr_008_78aa:
  call Call_008_776b                              ; $78aa: $cd $6b $77
  ld hl, $cae1                                    ; $78ad: $21 $e1 $ca
  ld e, [hl]                                      ; $78b0: $5e
  inc hl                                          ; $78b1: $23
  ld d, [hl]                                      ; $78b2: $56
  call Call_000_33f3                              ; $78b3: $cd $f3 $33

  db $03, $6f, $42

  ld hl, $c2f0                                    ; $78b9: $21 $f0 $c2
  ld a, [hl+]                                     ; $78bc: $2a
  ld h, [hl]                                      ; $78bd: $66
  ld l, a                                         ; $78be: $6f
  ld a, [hl]                                      ; $78bf: $7e
  call Call_000_0864                              ; $78c0: $cd $64 $08
  ld a, $01                                       ; $78c3: $3e $01
  ldh [$ffe1], a                                  ; $78c5: $e0 $e1
  ret                                             ; $78c7: $c9


  push bc                                         ; $78c8: $c5
  push de                                         ; $78c9: $d5
  push hl                                         ; $78ca: $e5
  ldh a, [rSVBK]                                  ; $78cb: $f0 $70
  push af                                         ; $78cd: $f5
  ld a, $05                                       ; $78ce: $3e $05
  ldh [rSVBK], a                                  ; $78d0: $e0 $70
  ld bc, $d0a0                                    ; $78d2: $01 $a0 $d0
  xor a                                           ; $78d5: $af
  ld e, a                                         ; $78d6: $5f
  ld a, $7b                                       ; $78d7: $3e $7b
  call Call_000_0a46                              ; $78d9: $cd $46 $0a
  call nz, Call_008_7905                          ; $78dc: $c4 $05 $79
  call z, Call_008_790e                           ; $78df: $cc $0e $79
  ld a, $01                                       ; $78e2: $3e $01
  ld e, a                                         ; $78e4: $5f
  ld a, $7b                                       ; $78e5: $3e $7b
  call Call_000_0a46                              ; $78e7: $cd $46 $0a
  call nz, Call_008_7905                          ; $78ea: $c4 $05 $79
  call z, Call_008_790e                           ; $78ed: $cc $0e $79
  ld a, $02                                       ; $78f0: $3e $02
  ld e, a                                         ; $78f2: $5f
  ld a, $7b                                       ; $78f3: $3e $7b
  call Call_000_0a46                              ; $78f5: $cd $46 $0a
  call nz, Call_008_7905                          ; $78f8: $c4 $05 $79
  call z, Call_008_790e                           ; $78fb: $cc $0e $79
  pop af                                          ; $78fe: $f1
  ldh [rSVBK], a                                  ; $78ff: $e0 $70
  pop hl                                          ; $7901: $e1
  pop de                                          ; $7902: $d1
  pop bc                                          ; $7903: $c1
  ret                                             ; $7904: $c9


Call_008_7905:
  xor a                                           ; $7905: $af
  ld [bc], a                                      ; $7906: $02
  inc bc                                          ; $7907: $03
  ld [bc], a                                      ; $7908: $02
  inc bc                                          ; $7909: $03
  ld [bc], a                                      ; $790a: $02
  inc bc                                          ; $790b: $03
  inc a                                           ; $790c: $3c
  ret                                             ; $790d: $c9


Call_008_790e:
  ld de, $0021                                    ; $790e: $11 $21 $00
  add hl, de                                      ; $7911: $19
  ld a, [hl+]                                     ; $7912: $2a
  ld [bc], a                                      ; $7913: $02
  inc bc                                          ; $7914: $03
  ld a, [hl+]                                     ; $7915: $2a
  ld [bc], a                                      ; $7916: $02
  inc bc                                          ; $7917: $03
  ld a, [hl+]                                     ; $7918: $2a
  ld [bc], a                                      ; $7919: $02
  inc bc                                          ; $791a: $03
  ret                                             ; $791b: $c9


  ld hl, $ffdb                                    ; $791c: $21 $db $ff
  ld a, [hl+]                                     ; $791f: $2a
  ld d, [hl]                                      ; $7920: $56
  or d                                            ; $7921: $b2
  jr z, jr_008_7946                               ; $7922: $28 $22

  ld hl, $ffdb                                    ; $7924: $21 $db $ff
  ld a, [hl+]                                     ; $7927: $2a
  ld h, [hl]                                      ; $7928: $66
  ld l, a                                         ; $7929: $6f
  ld a, l                                         ; $792a: $7d
  ldh [$ff9b], a                                  ; $792b: $e0 $9b
  ld a, h                                         ; $792d: $7c
  ldh [$ff9c], a                                  ; $792e: $e0 $9c
  ld hl, $ffdd                                    ; $7930: $21 $dd $ff
  ld a, [hl+]                                     ; $7933: $2a
  ld h, [hl]                                      ; $7934: $66
  ld l, a                                         ; $7935: $6f
  ld a, l                                         ; $7936: $7d
  ldh [$ff9d], a                                  ; $7937: $e0 $9d
  ld a, h                                         ; $7939: $7c
  ldh [$ff9e], a                                  ; $793a: $e0 $9e
  ld hl, $ffdb                                    ; $793c: $21 $db $ff
  xor a                                           ; $793f: $af
  ld [hl+], a                                     ; $7940: $22
  ld [hl+], a                                     ; $7941: $22
  ld [hl+], a                                     ; $7942: $22
  ld [hl+], a                                     ; $7943: $22
  jr jr_008_795a                                  ; $7944: $18 $14

jr_008_7946:
  ldh a, [$ffd7]                                  ; $7946: $f0 $d7
  call Call_000_33f3                              ; $7948: $cd $f3 $33

  db $01, $4d, $53

  ld a, l                                         ; $794e: $7d
  ldh [$ff9b], a                                  ; $794f: $e0 $9b
  ld a, h                                         ; $7951: $7c
  ldh [$ff9c], a                                  ; $7952: $e0 $9c
  ld hl, $ff9d                                    ; $7954: $21 $9d $ff
  ld [hl], e                                      ; $7957: $73
  inc hl                                          ; $7958: $23
  ld [hl], d                                      ; $7959: $72

jr_008_795a:
  call Call_000_33f3                              ; $795a: $cd $f3 $33

  db $03, $c9, $72

  ret                                             ; $7960: $c9


  ld bc, $b044                                    ; $7961: $01 $44 $b0
  nop                                             ; $7964: $00
  nop                                             ; $7965: $00
  nop                                             ; $7966: $00
  sbc c                                           ; $7967: $99
  ld h, $01                                       ; $7968: $26 $01
  ld [bc], a                                      ; $796a: $02
  ld bc, $2802                                    ; $796b: $01 $02 $28
  nop                                             ; $796e: $00
  ld d, b                                         ; $796f: $50
  nop                                             ; $7970: $00
  ld a, b                                         ; $7971: $78
  nop                                             ; $7972: $00
  inc bc                                          ; $7973: $03
  inc bc                                          ; $7974: $03
  inc b                                           ; $7975: $04
  rra                                             ; $7976: $1f
  scf                                             ; $7977: $37
  ld c, a                                         ; $7978: $4f
  ld h, a                                         ; $7979: $67
  ld a, a                                         ; $797a: $7f
  ld hl, $5139                                    ; $797b: $21 $39 $51
  ld l, c                                         ; $797e: $69
  add c                                           ; $797f: $81
  nop                                             ; $7980: $00
  inc bc                                          ; $7981: $03
  ld [bc], a                                      ; $7982: $02
  inc b                                           ; $7983: $04
  ld bc, $0300                                    ; $7984: $01 $00 $03
  nop                                             ; $7987: $00
  ld bc, $0204                                    ; $7988: $01 $04 $02
  nop                                             ; $798b: $00
  inc b                                           ; $798c: $04
  ld [bc], a                                      ; $798d: $02
  nop                                             ; $798e: $00
  ld bc, $0003                                    ; $798f: $01 $03 $00
  ld bc, $0003                                    ; $7992: $01 $03 $00
  ld [bc], a                                      ; $7995: $02
  inc b                                           ; $7996: $04
  nop                                             ; $7997: $00
  ld [bc], a                                      ; $7998: $02
  inc b                                           ; $7999: $04
  inc bc                                          ; $799a: $03
  nop                                             ; $799b: $00
  ld bc, $0200                                    ; $799c: $01 $00 $02
  ld bc, $0304                                    ; $799f: $01 $04 $03
  nop                                             ; $79a2: $00
  nop                                             ; $79a3: $00
  ld hl, $7961                                    ; $79a4: $21 $61 $79
  jp Jump_000_2952                                ; $79a7: $c3 $52 $29


  ld a, $14                                       ; $79aa: $3e $14
  ld [$cbdf], a                                   ; $79ac: $ea $df $cb
  ld a, $03                                       ; $79af: $3e $03
  call Call_000_33f3                              ; $79b1: $cd $f3 $33
  rlca                                            ; $79b4: $07
  push hl                                         ; $79b5: $e5
  ld c, l                                         ; $79b6: $4d
  call Call_000_3663                              ; $79b7: $cd $63 $36
  ld a, $30                                       ; $79ba: $3e $30
  call Call_000_394b                              ; $79bc: $cd $4b $39
  ld hl, $53f0                                    ; $79bf: $21 $f0 $53
  call Call_000_33f3                              ; $79c2: $cd $f3 $33
  ld bc, $5533                                    ; $79c5: $01 $33 $55
  ld hl, $7b8d                                    ; $79c8: $21 $8d $7b
  call Call_000_33f3                              ; $79cb: $cd $f3 $33
  inc bc                                          ; $79ce: $03
  adc b                                           ; $79cf: $88
  ld a, [hl]                                      ; $79d0: $7e
  call Call_008_7c7d                              ; $79d1: $cd $7d $7c
  ld hl, $796d                                    ; $79d4: $21 $6d $79
  ld a, [$cbdd]                                   ; $79d7: $fa $dd $cb
  call ResolveIndexedPointer16                              ; $79da: $cd $8b $31
  ld a, l                                         ; $79dd: $7d
  ld [$cb4d], a                                   ; $79de: $ea $4d $cb
  ld a, h                                         ; $79e1: $7c
  ld [$cb4e], a                                   ; $79e2: $ea $4e $cb
  ld hl, $7973                                    ; $79e5: $21 $73 $79
  ld a, [$cbdd]                                   ; $79e8: $fa $dd $cb
  rst $08                                         ; $79eb: $cf
  ld a, [hl]                                      ; $79ec: $7e
  ld [$cb5f], a                                   ; $79ed: $ea $5f $cb
  ld hl, $0300                                    ; $79f0: $21 $00 $03
  ld a, l                                         ; $79f3: $7d
  ld [$cb4f], a                                   ; $79f4: $ea $4f $cb
  ld a, h                                         ; $79f7: $7c
  ld [$cb50], a                                   ; $79f8: $ea $50 $cb
  ld hl, $0096                                    ; $79fb: $21 $96 $00
  ld a, l                                         ; $79fe: $7d
  ld [$cb5d], a                                   ; $79ff: $ea $5d $cb
  ld a, h                                         ; $7a02: $7c
  ld [$cb5e], a                                   ; $7a03: $ea $5e $cb
  ld hl, $0000                                    ; $7a06: $21 $00 $00
  ld a, l                                         ; $7a09: $7d
  ld [$cb52], a                                   ; $7a0a: $ea $52 $cb
  ld a, h                                         ; $7a0d: $7c
  ld [$cb53], a                                   ; $7a0e: $ea $53 $cb
  ld a, l                                         ; $7a11: $7d
  ld [$cb57], a                                   ; $7a12: $ea $57 $cb
  ld a, h                                         ; $7a15: $7c
  ld [$cb58], a                                   ; $7a16: $ea $58 $cb
  ld a, $02                                       ; $7a19: $3e $02
  ld [$cb40], a                                   ; $7a1b: $ea $40 $cb
  xor a                                           ; $7a1e: $af
  ld [$cb3f], a                                   ; $7a1f: $ea $3f $cb
  ld [$cb41], a                                   ; $7a22: $ea $41 $cb
  ld [$cb51], a                                   ; $7a25: $ea $51 $cb
  ld [$cb54], a                                   ; $7a28: $ea $54 $cb
  ld [$cb59], a                                   ; $7a2b: $ea $59 $cb
  ldh [$ff9a], a                                  ; $7a2e: $e0 $9a
  ld a, $b9                                       ; $7a30: $3e $b9
  call Call_000_04e0                              ; $7a32: $cd $e0 $04
  ld hl, $cb55                                    ; $7a35: $21 $55 $cb
  ld [hl], e                                      ; $7a38: $73
  inc hl                                          ; $7a39: $23
  ld [hl], d                                      ; $7a3a: $72
  ld a, $b0                                       ; $7a3b: $3e $b0
  ld [$cbff], a                                   ; $7a3d: $ea $ff $cb
  xor a                                           ; $7a40: $af
  ld [$cc00], a                                   ; $7a41: $ea $00 $cc
  jp Jump_008_7d2e                                ; $7a44: $c3 $2e $7d


  ld a, [$cbdf]                                   ; $7a47: $fa $df $cb
  or a                                            ; $7a4a: $b7
  jr z, jr_008_7a52                               ; $7a4b: $28 $05

  dec a                                           ; $7a4d: $3d
  ld [$cbdf], a                                   ; $7a4e: $ea $df $cb
  ret                                             ; $7a51: $c9


jr_008_7a52:
  call Call_000_33f3                              ; $7a52: $cd $f3 $33
  ld b, $40                                       ; $7a55: $06 $40
  ld d, d                                         ; $7a57: $52
  ret nz                                          ; $7a58: $c0

  call Call_008_7ade                              ; $7a59: $cd $de $7a
  call Call_000_33f3                              ; $7a5c: $cd $f3 $33
  ld b, $22                                       ; $7a5f: $06 $22
  ld d, d                                         ; $7a61: $52
  ret nz                                          ; $7a62: $c0

  ld a, [$cb3f]                                   ; $7a63: $fa $3f $cb
  cp $02                                          ; $7a66: $fe $02
  jp z, Jump_008_7bc0                             ; $7a68: $ca $c0 $7b

  call Call_008_7bee                              ; $7a6b: $cd $ee $7b
  ld a, [$cb3f]                                   ; $7a6e: $fa $3f $cb
  cp $00                                          ; $7a71: $fe $00
  jr z, jr_008_7a79                               ; $7a73: $28 $04

  ldh a, [$ffa6]                                  ; $7a75: $f0 $a6
  jr jr_008_7a7b                                  ; $7a77: $18 $02

jr_008_7a79:
  ldh a, [$ffa5]                                  ; $7a79: $f0 $a5

jr_008_7a7b:
  bit 5, a                                        ; $7a7b: $cb $6f
  jr z, jr_008_7aa9                               ; $7a7d: $28 $2a

  ld a, [$cb3f]                                   ; $7a7f: $fa $3f $cb
  cp $04                                          ; $7a82: $fe $04
  jr z, jr_008_7ad6                               ; $7a84: $28 $50

  ld a, [$cb40]                                   ; $7a86: $fa $40 $cb
  or a                                            ; $7a89: $b7
  jr z, jr_008_7ad6                               ; $7a8a: $28 $4a

  ld a, [$cb3f]                                   ; $7a8c: $fa $3f $cb
  cp $05                                          ; $7a8f: $fe $05
  jr z, jr_008_7a9c                               ; $7a91: $28 $09

  ld a, [$cb40]                                   ; $7a93: $fa $40 $cb
  dec a                                           ; $7a96: $3d
  ld [$cb41], a                                   ; $7a97: $ea $41 $cb
  jr jr_008_7aa2                                  ; $7a9a: $18 $06

jr_008_7a9c:
  ld a, [$cb40]                                   ; $7a9c: $fa $40 $cb
  ld [$cb41], a                                   ; $7a9f: $ea $41 $cb

jr_008_7aa2:
  ld a, $04                                       ; $7aa2: $3e $04
  call Call_008_7c67                              ; $7aa4: $cd $67 $7c
  jr jr_008_7ad6                                  ; $7aa7: $18 $2d

jr_008_7aa9:
  bit 4, a                                        ; $7aa9: $cb $67
  jr z, jr_008_7ad6                               ; $7aab: $28 $29

  ld a, [$cb40]                                   ; $7aad: $fa $40 $cb
  cp $05                                          ; $7ab0: $fe $05
  jr z, jr_008_7ad6                               ; $7ab2: $28 $22

  ld a, [$cb40]                                   ; $7ab4: $fa $40 $cb
  cp $04                                          ; $7ab7: $fe $04
  jr z, jr_008_7ad6                               ; $7ab9: $28 $1b

  ld a, [$cb3f]                                   ; $7abb: $fa $3f $cb
  cp $04                                          ; $7abe: $fe $04
  jr z, jr_008_7acb                               ; $7ac0: $28 $09

  ld a, [$cb40]                                   ; $7ac2: $fa $40 $cb
  inc a                                           ; $7ac5: $3c
  ld [$cb41], a                                   ; $7ac6: $ea $41 $cb
  jr jr_008_7ad1                                  ; $7ac9: $18 $06

jr_008_7acb:
  ld a, [$cb40]                                   ; $7acb: $fa $40 $cb
  ld [$cb41], a                                   ; $7ace: $ea $41 $cb

jr_008_7ad1:
  ld a, $05                                       ; $7ad1: $3e $05
  call Call_008_7c67                              ; $7ad3: $cd $67 $7c

jr_008_7ad6:
  ld a, [$cb3f]                                   ; $7ad6: $fa $3f $cb
  or a                                            ; $7ad9: $b7
  jp z, Jump_008_7b8d                             ; $7ada: $ca $8d $7b

  ret                                             ; $7add: $c9


Call_008_7ade:
  ld hl, $cb5d                                    ; $7ade: $21 $5d $cb
  ld a, [hl+]                                     ; $7ae1: $2a
  ld h, [hl]                                      ; $7ae2: $66
  ld l, a                                         ; $7ae3: $6f
  ld a, h                                         ; $7ae4: $7c
  or l                                            ; $7ae5: $b5
  jr z, jr_008_7af2                               ; $7ae6: $28 $0a

  dec hl                                          ; $7ae8: $2b
  ld a, l                                         ; $7ae9: $7d
  ld [$cb5d], a                                   ; $7aea: $ea $5d $cb
  ld a, h                                         ; $7aed: $7c
  ld [$cb5e], a                                   ; $7aee: $ea $5e $cb
  ret                                             ; $7af1: $c9


jr_008_7af2:
  ld a, [$cb59]                                   ; $7af2: $fa $59 $cb
  or a                                            ; $7af5: $b7
  call z, Call_008_7b45                           ; $7af6: $cc $45 $7b
  ld hl, $cb42                                    ; $7af9: $21 $42 $cb
  ld c, $00                                       ; $7afc: $0e $00

jr_008_7afe:
  push hl                                         ; $7afe: $e5
  ld a, [hl+]                                     ; $7aff: $2a
  ld h, [hl]                                      ; $7b00: $66
  ld l, a                                         ; $7b01: $6f
  dec hl                                          ; $7b02: $2b
  pop de                                          ; $7b03: $d1
  push de                                         ; $7b04: $d5
  push hl                                         ; $7b05: $e5
  ld hl, $0000                                    ; $7b06: $21 $00 $00
  add hl, de                                      ; $7b09: $19
  push hl                                         ; $7b0a: $e5
  pop de                                          ; $7b0b: $d1
  pop hl                                          ; $7b0c: $e1
  ld a, l                                         ; $7b0d: $7d
  ld [de], a                                      ; $7b0e: $12
  inc de                                          ; $7b0f: $13
  ld a, h                                         ; $7b10: $7c
  ld [de], a                                      ; $7b11: $12
  pop de                                          ; $7b12: $d1
  push de                                         ; $7b13: $d5
  xor a                                           ; $7b14: $af
  cp h                                            ; $7b15: $bc
  jr nz, jr_008_7b3b                              ; $7b16: $20 $23

  cp l                                            ; $7b18: $bd
  jr nz, jr_008_7b3b                              ; $7b19: $20 $20

  ld hl, $cb4f                                    ; $7b1b: $21 $4f $cb
  ld e, [hl]                                      ; $7b1e: $5e
  inc hl                                          ; $7b1f: $23
  ld d, [hl]                                      ; $7b20: $56
  ld a, $ff                                       ; $7b21: $3e $ff
  call $7ca6                                      ; $7b23: $cd $a6 $7c
  ld hl, $fff2                                    ; $7b26: $21 $f2 $ff
  add hl, de                                      ; $7b29: $19
  ld de, $0096                                    ; $7b2a: $11 $96 $00
  rst $10                                         ; $7b2d: $d7
  jr nc, jr_008_7b38                              ; $7b2e: $30 $08

  ld a, l                                         ; $7b30: $7d
  ld [$cb4f], a                                   ; $7b31: $ea $4f $cb
  ld a, h                                         ; $7b34: $7c
  ld [$cb50], a                                   ; $7b35: $ea $50 $cb

jr_008_7b38:
  call Call_008_7c55                              ; $7b38: $cd $55 $7c

jr_008_7b3b:
  pop hl                                          ; $7b3b: $e1
  inc hl                                          ; $7b3c: $23
  inc hl                                          ; $7b3d: $23
  inc c                                           ; $7b3e: $0c
  ld a, c                                         ; $7b3f: $79
  cp $05                                          ; $7b40: $fe $05
  jr nz, jr_008_7afe                              ; $7b42: $20 $ba

  ret                                             ; $7b44: $c9


Call_008_7b45:
  xor a                                           ; $7b45: $af
  ld [$cb5a], a                                   ; $7b46: $ea $5a $cb
  ld hl, $cb42                                    ; $7b49: $21 $42 $cb
  ld a, [hl+]                                     ; $7b4c: $2a
  ld h, [hl]                                      ; $7b4d: $66
  ld l, a                                         ; $7b4e: $6f
  ld a, l                                         ; $7b4f: $7d
  ld [$cb5b], a                                   ; $7b50: $ea $5b $cb
  ld a, h                                         ; $7b53: $7c
  ld [$cb5c], a                                   ; $7b54: $ea $5c $cb
  ld hl, $cb44                                    ; $7b57: $21 $44 $cb
  ld b, $01                                       ; $7b5a: $06 $01

jr_008_7b5c:
  push hl                                         ; $7b5c: $e5
  ld a, [hl+]                                     ; $7b5d: $2a
  ld h, [hl]                                      ; $7b5e: $66
  ld l, a                                         ; $7b5f: $6f
  ld d, h                                         ; $7b60: $54
  ld e, l                                         ; $7b61: $5d
  ld hl, $cb5b                                    ; $7b62: $21 $5b $cb
  ld a, [hl+]                                     ; $7b65: $2a
  ld h, [hl]                                      ; $7b66: $66
  ld l, a                                         ; $7b67: $6f
  rst $10                                         ; $7b68: $d7
  jr nc, jr_008_7b75                              ; $7b69: $30 $0a

  ld a, b                                         ; $7b6b: $78
  ld [$cb5a], a                                   ; $7b6c: $ea $5a $cb
  ld hl, $cb5b                                    ; $7b6f: $21 $5b $cb
  ld [hl], e                                      ; $7b72: $73
  inc hl                                          ; $7b73: $23
  ld [hl], d                                      ; $7b74: $72

jr_008_7b75:
  pop hl                                          ; $7b75: $e1
  inc hl                                          ; $7b76: $23
  inc hl                                          ; $7b77: $23
  inc b                                           ; $7b78: $04
  ld a, b                                         ; $7b79: $78
  cp $05                                          ; $7b7a: $fe $05
  jr nz, jr_008_7b5c                              ; $7b7c: $20 $de

  ld hl, $cb42                                    ; $7b7e: $21 $42 $cb
  ld a, [$cb5a]                                   ; $7b81: $fa $5a $cb
  call Call_000_317a                              ; $7b84: $cd $7a $31
  ld [hl], $01                                    ; $7b87: $36 $01
  inc hl                                          ; $7b89: $23
  ld [hl], $00                                    ; $7b8a: $36 $00
  ret                                             ; $7b8c: $c9


Call_008_7b8d:
Jump_008_7b8d:
  ldh a, [$ffa5]                                  ; $7b8d: $f0 $a5
  bit 0, a                                        ; $7b8f: $cb $47
  ret z                                           ; $7b91: $c8

  ld a, [$cb40]                                   ; $7b92: $fa $40 $cb
  ld e, a                                         ; $7b95: $5f
  ld a, $bb                                       ; $7b96: $3e $bb
  call Call_000_0a46                              ; $7b98: $cd $46 $0a
  ret z                                           ; $7b9b: $c8

  ld a, [$cbdd]                                   ; $7b9c: $fa $dd $cb
  or a                                            ; $7b9f: $b7
  jr nz, jr_008_7bad                              ; $7ba0: $20 $0b

  ld a, $c6                                       ; $7ba2: $3e $c6
  call Call_000_04e0                              ; $7ba4: $cd $e0 $04
  ld hl, $cb57                                    ; $7ba7: $21 $57 $cb
  ld [hl], e                                      ; $7baa: $73
  inc hl                                          ; $7bab: $23
  ld [hl], d                                      ; $7bac: $72

jr_008_7bad:
  ld a, $0d                                       ; $7bad: $3e $0d
  call Call_000_392b                              ; $7baf: $cd $2b $39
  ld a, $02                                       ; $7bb2: $3e $02
  call Call_008_7c67                              ; $7bb4: $cd $67 $7c
  ld a, $01                                       ; $7bb7: $3e $01
  ld [$cb4c], a                                   ; $7bb9: $ea $4c $cb
  ld a, $01                                       ; $7bbc: $3e $01
  or a                                            ; $7bbe: $b7
  ret                                             ; $7bbf: $c9


Jump_008_7bc0:
  ldh a, [$ffa5]                                  ; $7bc0: $f0 $a5
  bit 0, a                                        ; $7bc2: $cb $47
  jr z, jr_008_7bd1                               ; $7bc4: $28 $0b

  ld a, [$cb4c]                                   ; $7bc6: $fa $4c $cb
  cp $46                                          ; $7bc9: $fe $46
  ret z                                           ; $7bcb: $c8

  inc a                                           ; $7bcc: $3c
  ld [$cb4c], a                                   ; $7bcd: $ea $4c $cb
  ret                                             ; $7bd0: $c9


jr_008_7bd1:
  ld hl, $cb57                                    ; $7bd1: $21 $57 $cb
  ld c, [hl]                                      ; $7bd4: $4e
  inc hl                                          ; $7bd5: $23
  ld b, [hl]                                      ; $7bd6: $46
  ld a, b                                         ; $7bd7: $78
  or c                                            ; $7bd8: $b1
  call nz, Call_000_0dbb                          ; $7bd9: $c4 $bb $0d
  ld bc, $0000                                    ; $7bdc: $01 $00 $00
  ld hl, $cb57                                    ; $7bdf: $21 $57 $cb
  ld [hl], c                                      ; $7be2: $71
  inc hl                                          ; $7be3: $23
  ld [hl], b                                      ; $7be4: $70
  ld a, $18                                       ; $7be5: $3e $18
  call Call_000_392b                              ; $7be7: $cd $2b $39
  ld a, $01                                       ; $7bea: $3e $01
  jr jr_008_7c67                                  ; $7bec: $18 $79

Call_008_7bee:
  ld a, [$cb3f]                                   ; $7bee: $fa $3f $cb
  bit 2, a                                        ; $7bf1: $cb $57
  ret z                                           ; $7bf3: $c8

  cp $05                                          ; $7bf4: $fe $05
  jr z, jr_008_7c00                               ; $7bf6: $28 $08

  call Call_008_7c40                              ; $7bf8: $cd $40 $7c
  inc b                                           ; $7bfb: $04
  cp b                                            ; $7bfc: $b8
  jr c, jr_008_7c06                               ; $7bfd: $38 $07

  ret                                             ; $7bff: $c9


jr_008_7c00:
  call Call_008_7c40                              ; $7c00: $cd $40 $7c
  dec b                                           ; $7c03: $05
  cp b                                            ; $7c04: $b8
  ret c                                           ; $7c05: $d8

jr_008_7c06:
  ld a, [$cb41]                                   ; $7c06: $fa $41 $cb
  ld [$cb40], a                                   ; $7c09: $ea $40 $cb
  call Call_008_7b8d                              ; $7c0c: $cd $8d $7b
  ret nz                                          ; $7c0f: $c0

  ldh a, [$ffa5]                                  ; $7c10: $f0 $a5
  and $30                                         ; $7c12: $e6 $30
  jr nz, jr_008_7c18                              ; $7c14: $20 $02

  jr jr_008_7c3c                                  ; $7c16: $18 $24

jr_008_7c18:
  ld a, [$cb3f]                                   ; $7c18: $fa $3f $cb
  cp $05                                          ; $7c1b: $fe $05
  jr z, jr_008_7c2d                               ; $7c1d: $28 $0e

  ld a, [$cb40]                                   ; $7c1f: $fa $40 $cb
  or a                                            ; $7c22: $b7
  jr z, jr_008_7c3c                               ; $7c23: $28 $17

  ld a, [$cb40]                                   ; $7c25: $fa $40 $cb
  dec a                                           ; $7c28: $3d
  ld [$cb41], a                                   ; $7c29: $ea $41 $cb
  ret                                             ; $7c2c: $c9


jr_008_7c2d:
  ld a, [$cb40]                                   ; $7c2d: $fa $40 $cb
  cp $04                                          ; $7c30: $fe $04
  jr z, jr_008_7c3c                               ; $7c32: $28 $08

  ld a, [$cb40]                                   ; $7c34: $fa $40 $cb
  inc a                                           ; $7c37: $3c
  ld [$cb41], a                                   ; $7c38: $ea $41 $cb
  ret                                             ; $7c3b: $c9


jr_008_7c3c:
  ld a, $01                                       ; $7c3c: $3e $01
  jr jr_008_7c67                                  ; $7c3e: $18 $27

Call_008_7c40:
  ld a, [$cb41]                                   ; $7c40: $fa $41 $cb
  ld hl, $7976                                    ; $7c43: $21 $76 $79
  rst $08                                         ; $7c46: $cf
  ld a, [hl]                                      ; $7c47: $7e
  ld b, a                                         ; $7c48: $47
  ld hl, $cb55                                    ; $7c49: $21 $55 $cb
  ld a, [hl+]                                     ; $7c4c: $2a
  ld h, [hl]                                      ; $7c4d: $66
  ld l, a                                         ; $7c4e: $6f
  ld de, $0006                                    ; $7c4f: $11 $06 $00
  add hl, de                                      ; $7c52: $19
  ld a, [hl]                                      ; $7c53: $7e
  ret                                             ; $7c54: $c9


Call_008_7c55:
  push bc                                         ; $7c55: $c5
  ld a, c                                         ; $7c56: $79
  ldh [$ff9a], a                                  ; $7c57: $e0 $9a
  ld a, $ba                                       ; $7c59: $3e $ba
  call Call_000_04e0                              ; $7c5b: $cd $e0 $04
  ld a, [$cb59]                                   ; $7c5e: $fa $59 $cb
  inc a                                           ; $7c61: $3c
  ld [$cb59], a                                   ; $7c62: $ea $59 $cb
  pop bc                                          ; $7c65: $c1
  ret                                             ; $7c66: $c9


Call_008_7c67:
jr_008_7c67:
  ld b, a                                         ; $7c67: $47
  ld hl, $cb55                                    ; $7c68: $21 $55 $cb
  ld a, [hl+]                                     ; $7c6b: $2a
  ld h, [hl]                                      ; $7c6c: $66
  ld l, a                                         ; $7c6d: $6f
  ld de, $0001                                    ; $7c6e: $11 $01 $00
  add hl, de                                      ; $7c71: $19
  ld a, b                                         ; $7c72: $78
  ld [hl], a                                      ; $7c73: $77
  cp $01                                          ; $7c74: $fe $01
  jr nz, jr_008_7c79                              ; $7c76: $20 $01

  xor a                                           ; $7c78: $af

jr_008_7c79:
  ld [$cb3f], a                                   ; $7c79: $ea $3f $cb
  ret                                             ; $7c7c: $c9


Call_008_7c7d:
  ld a, $06                                       ; $7c7d: $3e $06
  call Call_000_28e6                              ; $7c7f: $cd $e6 $28
  ld hl, $7980                                    ; $7c82: $21 $80 $79
  call Call_000_315f                              ; $7c85: $cd $5f $31
  ld de, $0040                                    ; $7c88: $11 $40 $00
  ld b, $00                                       ; $7c8b: $06 $00

jr_008_7c8d:
  ld a, [hl+]                                     ; $7c8d: $2a
  push hl                                         ; $7c8e: $e5
  ld hl, $cb42                                    ; $7c8f: $21 $42 $cb
  call Call_000_317a                              ; $7c92: $cd $7a $31
  ld [hl], e                                      ; $7c95: $73
  inc hl                                          ; $7c96: $23
  ld [hl], d                                      ; $7c97: $72
  ld hl, $0100                                    ; $7c98: $21 $00 $01
  add hl, de                                      ; $7c9b: $19
  ld d, h                                         ; $7c9c: $54
  ld e, l                                         ; $7c9d: $5d
  pop hl                                          ; $7c9e: $e1
  inc b                                           ; $7c9f: $04
  ld a, b                                         ; $7ca0: $78
  cp $05                                          ; $7ca1: $fe $05
  jr nz, jr_008_7c8d                              ; $7ca3: $20 $e8

  ret                                             ; $7ca5: $c9


  db $d5, $e5, $cd, $e6

  jr z, @+$28                                     ; $7caa: $28 $26

  nop                                             ; $7cac: $00
  ld l, a                                         ; $7cad: $6f
  add hl, hl                                      ; $7cae: $29
  add hl, de                                      ; $7caf: $19
  push hl                                         ; $7cb0: $e5
  ld a, c                                         ; $7cb1: $79
  ld hl, $cb42                                    ; $7cb2: $21 $42 $cb
  call Call_000_317a                              ; $7cb5: $cd $7a $31
  pop de                                          ; $7cb8: $d1
  ld [hl], e                                      ; $7cb9: $73
  inc hl                                          ; $7cba: $23
  ld [hl], d                                      ; $7cbb: $72
  pop hl                                          ; $7cbc: $e1
  pop de                                          ; $7cbd: $d1
  ret                                             ; $7cbe: $c9


Jump_008_7cbf:
  ldh a, [rSVBK]                                  ; $7cbf: $f0 $70
  push af                                         ; $7cc1: $f5
  ld a, $03                                       ; $7cc2: $3e $03
  ldh [rSVBK], a                                  ; $7cc4: $e0 $70
  push bc                                         ; $7cc6: $c5
  ld a, $0e                                       ; $7cc7: $3e $0e
  call Call_000_392b                              ; $7cc9: $cd $2b $39
  ld a, [$cb51]                                   ; $7ccc: $fa $51 $cb
  inc a                                           ; $7ccf: $3c
  ld [$cb51], a                                   ; $7cd0: $ea $51 $cb
  ld c, a                                         ; $7cd3: $4f

  db $21, $62, $d0, $11

  ld h, d                                         ; $7cd8: $62
  push de                                         ; $7cd9: $d5
  call RST_18                                     ; $7cda: $cd $18 $00
  ld b, $00                                       ; $7cdd: $06 $00

jr_008_7cdf:
  ld [hl], $ba                                    ; $7cdf: $36 $ba
  inc hl                                          ; $7ce1: $23
  xor a                                           ; $7ce2: $af
  ld [de], a                                      ; $7ce3: $12
  inc de                                          ; $7ce4: $13
  inc b                                           ; $7ce5: $04
  ld a, b                                         ; $7ce6: $78
  cp c                                            ; $7ce7: $b9
  jr nz, jr_008_7cdf                              ; $7ce8: $20 $f5

  db $cd                                          ; $7cea: $cd

  db $20, $00, $c1, $f1

  ldh [rSVBK], a                                  ; $7cef: $e0 $70
  ld a, [$cb51]                                   ; $7cf1: $fa $51 $cb
  cp $05                                          ; $7cf4: $fe $05
  ret nz                                          ; $7cf6: $c0

  ld hl, $cb52                                    ; $7cf7: $21 $52 $cb
  ld a, [hl+]                                     ; $7cfa: $2a
  ld h, [hl]                                      ; $7cfb: $66
  ld l, a                                         ; $7cfc: $6f
  ld a, l                                         ; $7cfd: $7d
  ld [$cbd6], a                                   ; $7cfe: $ea $d6 $cb
  ld a, h                                         ; $7d01: $7c
  ld [$cbd7], a                                   ; $7d02: $ea $d7 $cb
  ld a, $3d                                       ; $7d05: $3e $3d
  jp Jump_000_261e                                ; $7d07: $c3 $1e $26


Call_008_7d0a:
  ld hl, $cb4d                                    ; $7d0a: $21 $4d $cb
  ld e, [hl]                                      ; $7d0d: $5e
  inc hl                                          ; $7d0e: $23
  ld d, [hl]                                      ; $7d0f: $56
  sra d                                           ; $7d10: $cb $2a
  rr e                                            ; $7d12: $cb $1b
  ld hl, $cb52                                    ; $7d14: $21 $52 $cb
  ld a, [hl+]                                     ; $7d17: $2a
  ld h, [hl]                                      ; $7d18: $66
  ld l, a                                         ; $7d19: $6f
  add hl, de                                      ; $7d1a: $19
  jr nc, jr_008_7d20                              ; $7d1b: $30 $03

  ld hl, $ffff                                    ; $7d1d: $21 $ff $ff

jr_008_7d20:
  ld a, l                                         ; $7d20: $7d
  ld [$cb52], a                                   ; $7d21: $ea $52 $cb
  ld a, h                                         ; $7d24: $7c
  ld [$cb53], a                                   ; $7d25: $ea $53 $cb
  push bc                                         ; $7d28: $c5
  call Call_008_7d2e                              ; $7d29: $cd $2e $7d
  pop bc                                          ; $7d2c: $c1
  ret                                             ; $7d2d: $c9


Call_008_7d2e:
Jump_008_7d2e:
  ld hl, $cb52                                    ; $7d2e: $21 $52 $cb
  ld c, [hl]                                      ; $7d31: $4e
  inc hl                                          ; $7d32: $23
  ld b, [hl]                                      ; $7d33: $46
  ld hl, $d071                                    ; $7d34: $21 $71 $d0
  ld de, $d571                                    ; $7d37: $11 $71 $d5
  rst $18                                         ; $7d3a: $df
  ld a, $05                                       ; $7d3b: $3e $05
  call Call_008_7d43                              ; $7d3d: $cd $43 $7d
  jp RST_20                                       ; $7d40: $c3 $20 $00


Call_008_7d43:
  ldh [$ffbd], a                                  ; $7d43: $e0 $bd
  ldh a, [rSVBK]                                  ; $7d45: $f0 $70
  push af                                         ; $7d47: $f5
  ld a, $03                                       ; $7d48: $3e $03
  ldh [rSVBK], a                                  ; $7d4a: $e0 $70
  ldh a, [$ffbd]                                  ; $7d4c: $f0 $bd
  push de                                         ; $7d4e: $d5
  push hl                                         ; $7d4f: $e5
  push bc                                         ; $7d50: $c5
  ld b, a                                         ; $7d51: $47
  ld c, a                                         ; $7d52: $4f
  ld a, [$cbff]                                   ; $7d53: $fa $ff $cb

jr_008_7d56:
  ld [hl-], a                                     ; $7d56: $32
  dec b                                           ; $7d57: $05
  jr nz, jr_008_7d56                              ; $7d58: $20 $fc

  ld l, e                                         ; $7d5a: $6b
  ld h, d                                         ; $7d5b: $62
  ld a, [$cc00]                                   ; $7d5c: $fa $00 $cc

jr_008_7d5f:
  ld [hl-], a                                     ; $7d5f: $32
  dec c                                           ; $7d60: $0d
  jr nz, jr_008_7d5f                              ; $7d61: $20 $fc

  pop bc                                          ; $7d63: $c1
  pop hl                                          ; $7d64: $e1
  pop de                                          ; $7d65: $d1

jr_008_7d66:
  push de                                         ; $7d66: $d5
  push hl                                         ; $7d67: $e5
  ld h, b                                         ; $7d68: $60
  ld l, c                                         ; $7d69: $69
  ld de, $000a                                    ; $7d6a: $11 $0a $00
  call Call_000_322f                              ; $7d6d: $cd $2f $32
  ld b, h                                         ; $7d70: $44
  ld c, l                                         ; $7d71: $4d
  ld a, [$cbff]                                   ; $7d72: $fa $ff $cb
  add e                                           ; $7d75: $83
  pop hl                                          ; $7d76: $e1
  pop de                                          ; $7d77: $d1
  ld [hl], a                                      ; $7d78: $77
  dec hl                                          ; $7d79: $2b
  ld a, [$cc00]                                   ; $7d7a: $fa $00 $cc
  ld [de], a                                      ; $7d7d: $12
  dec de                                          ; $7d7e: $1b
  ld a, b                                         ; $7d7f: $78
  or c                                            ; $7d80: $b1
  jr nz, jr_008_7d66                              ; $7d81: $20 $e3

  pop af                                          ; $7d83: $f1
  ldh [rSVBK], a                                  ; $7d84: $e0 $70
  ret                                             ; $7d86: $c9


  ld hl, $0001                                    ; $7d87: $21 $01 $00
  add hl, bc                                      ; $7d8a: $09
  ld e, [hl]                                      ; $7d8b: $5e
  ld a, $ba                                       ; $7d8c: $3e $ba
  call Call_000_33f3                              ; $7d8e: $cd $f3 $33
  ld bc, $488b                                    ; $7d91: $01 $8b $48
  ret c                                           ; $7d94: $d8

  ld hl, $001c                                    ; $7d95: $21 $1c $00
  add hl, bc                                      ; $7d98: $09
  ld [hl], $01                                    ; $7d99: $36 $01
  ret                                             ; $7d9b: $c9


  ld a, [$cb40]                                   ; $7d9c: $fa $40 $cb
  ld e, a                                         ; $7d9f: $5f
  ld a, $bb                                       ; $7da0: $3e $bb
  call Call_000_0a46                              ; $7da2: $cd $46 $0a
  ret nz                                          ; $7da5: $c0

  ld de, $0002                                    ; $7da6: $11 $02 $00
  add hl, de                                      ; $7da9: $19
  ld a, $01                                       ; $7daa: $3e $01
  ld [hl], a                                      ; $7dac: $77
  ld hl, $0002                                    ; $7dad: $21 $02 $00
  add hl, bc                                      ; $7db0: $09
  ld a, [hl]                                      ; $7db1: $7e
  add $02                                         ; $7db2: $c6 $02
  ld [hl], a                                      ; $7db4: $77
  ret                                             ; $7db5: $c9


  jr nz, @+$3a                                    ; $7db6: $20 $38

  ld d, b                                         ; $7db8: $50
  ld l, b                                         ; $7db9: $68
  add b                                           ; $7dba: $80
  ld hl, $0001                                    ; $7dbb: $21 $01 $00
  add hl, bc                                      ; $7dbe: $09
  ld a, [hl]                                      ; $7dbf: $7e
  ld hl, $7db6                                    ; $7dc0: $21 $b6 $7d
  rst $08                                         ; $7dc3: $cf
  ld e, a                                         ; $7dc4: $5f
  ld d, $0f                                       ; $7dc5: $16 $0f
  call Call_000_0885                              ; $7dc7: $cd $85 $08
  ld hl, $cb4d                                    ; $7dca: $21 $4d $cb
  ld e, [hl]                                      ; $7dcd: $5e
  inc hl                                          ; $7dce: $23
  ld d, [hl]                                      ; $7dcf: $56
  ld hl, $0011                                    ; $7dd0: $21 $11 $00
  add hl, bc                                      ; $7dd3: $09
  ld [hl], e                                      ; $7dd4: $73
  inc hl                                          ; $7dd5: $23
  ld [hl], d                                      ; $7dd6: $72
  ld h, d                                         ; $7dd7: $62
  ld l, e                                         ; $7dd8: $6b
  ld a, [$cb5f]                                   ; $7dd9: $fa $5f $cb
  rst $08                                         ; $7ddc: $cf
  ld a, l                                         ; $7ddd: $7d
  ld [$cb4d], a                                   ; $7dde: $ea $4d $cb
  ld a, h                                         ; $7de1: $7c
  ld [$cb4e], a                                   ; $7de2: $ea $4e $cb
  ret                                             ; $7de5: $c9


  ld hl, $0009                                    ; $7de6: $21 $09 $00
  add hl, bc                                      ; $7de9: $09
  ld a, [hl]                                      ; $7dea: $7e
  cp $87                                          ; $7deb: $fe $87
  ret c                                           ; $7ded: $d8

  ld hl, $0002                                    ; $7dee: $21 $02 $00
  add hl, bc                                      ; $7df1: $09
  ld [hl], $02                                    ; $7df2: $36 $02
  jp Jump_008_7cbf                                ; $7df4: $c3 $bf $7c


  ld hl, $0002                                    ; $7df7: $21 $02 $00
  add hl, bc                                      ; $7dfa: $09
  ld [hl], $01                                    ; $7dfb: $36 $01
  ld hl, $0001                                    ; $7dfd: $21 $01 $00
  add hl, bc                                      ; $7e00: $09
  ld e, [hl]                                      ; $7e01: $5e
  ld a, $ba                                       ; $7e02: $3e $ba
  call Call_000_33f3                              ; $7e04: $cd $f3 $33
  ld bc, $488b                                    ; $7e07: $01 $8b $48
  ret c                                           ; $7e0a: $d8

  ld de, $0002                                    ; $7e0b: $11 $02 $00
  add hl, de                                      ; $7e0e: $19
  ld [hl], $01                                    ; $7e0f: $36 $01
  call Call_008_7d0a                              ; $7e11: $cd $0a $7d
  ld hl, $0002                                    ; $7e14: $21 $02 $00
  add hl, bc                                      ; $7e17: $09
  ld [hl], $00                                    ; $7e18: $36 $00
  ret                                             ; $7e1a: $c9


  ld hl, $cb55                                    ; $7e1b: $21 $55 $cb
  ld a, [hl+]                                     ; $7e1e: $2a
  ld h, [hl]                                      ; $7e1f: $66
  ld l, a                                         ; $7e20: $6f
  ld de, $0006                                    ; $7e21: $11 $06 $00
  add hl, de                                      ; $7e24: $19
  ld a, [hl]                                      ; $7e25: $7e
  ld hl, $0006                                    ; $7e26: $21 $06 $00
  add hl, bc                                      ; $7e29: $09
  ld [hl], a                                      ; $7e2a: $77
  ret                                             ; $7e2b: $c9


  ld hl, $0009                                    ; $7e2c: $21 $09 $00
  add hl, bc                                      ; $7e2f: $09
  ld a, [hl]                                      ; $7e30: $7e
  cp $1a                                          ; $7e31: $fe $1a
  ret nc                                          ; $7e33: $d0

  xor a                                           ; $7e34: $af
  ld hl, $0011                                    ; $7e35: $21 $11 $00
  add hl, bc                                      ; $7e38: $09
  ld [hl+], a                                     ; $7e39: $22
  ld [hl], a                                      ; $7e3a: $77
  ret                                             ; $7e3b: $c9


  ld a, [$cb59]                                   ; $7e3c: $fa $59 $cb
  dec a                                           ; $7e3f: $3d
  ld [$cb59], a                                   ; $7e40: $ea $59 $cb
  ret                                             ; $7e43: $c9


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

  db $ff

  rst $38                                         ; $7e83: $ff

  db $ff

  rst $38                                         ; $7e85: $ff

  db $ff

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
