; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

  db $06

  nop                                             ; $4001: $00

Call_010_4002:
  ld hl, $0000                                    ; $4002: $21 $00 $00
  rrca                                            ; $4005: $0f
  jr nc, jr_010_4009                              ; $4006: $30 $01

  add hl, bc                                      ; $4008: $09

jr_010_4009:
  sla c                                           ; $4009: $cb $21
  rl b                                            ; $400b: $cb $10
  rrca                                            ; $400d: $0f
  jr nc, jr_010_4011                              ; $400e: $30 $01

  add hl, bc                                      ; $4010: $09

jr_010_4011:
  sla c                                           ; $4011: $cb $21
  rl b                                            ; $4013: $cb $10
  rrca                                            ; $4015: $0f
  jr nc, jr_010_4019                              ; $4016: $30 $01

  add hl, bc                                      ; $4018: $09

jr_010_4019:
  sla c                                           ; $4019: $cb $21
  rl b                                            ; $401b: $cb $10
  rrca                                            ; $401d: $0f
  jr nc, jr_010_4021                              ; $401e: $30 $01

  add hl, bc                                      ; $4020: $09

jr_010_4021:
  sla c                                           ; $4021: $cb $21
  rl b                                            ; $4023: $cb $10
  rrca                                            ; $4025: $0f
  jr nc, jr_010_4029                              ; $4026: $30 $01

  add hl, bc                                      ; $4028: $09

jr_010_4029:
  sla c                                           ; $4029: $cb $21
  rl b                                            ; $402b: $cb $10
  rrca                                            ; $402d: $0f
  jr nc, jr_010_4031                              ; $402e: $30 $01

  add hl, bc                                      ; $4030: $09

jr_010_4031:
  sla c                                           ; $4031: $cb $21
  rl b                                            ; $4033: $cb $10
  rrca                                            ; $4035: $0f
  jr nc, jr_010_4039                              ; $4036: $30 $01

  add hl, bc                                      ; $4038: $09

jr_010_4039:
  sla c                                           ; $4039: $cb $21
  rl b                                            ; $403b: $cb $10
  rrca                                            ; $403d: $0f
  ret nc                                          ; $403e: $d0

  add hl, bc                                      ; $403f: $09
  ret                                             ; $4040: $c9


Call_010_4041:
  push de                                         ; $4041: $d5
  ld e, l                                         ; $4042: $5d
  ld d, h                                         ; $4043: $54
  ld hl, $0000                                    ; $4044: $21 $00 $00
  xor a                                           ; $4047: $af
  ld [$dff9], a                                   ; $4048: $ea $f9 $df
  ld [$dffa], a                                   ; $404b: $ea $fa $df
  ld [$dffb], a                                   ; $404e: $ea $fb $df
  ld [$dffc], a                                   ; $4051: $ea $fc $df
  ld a, $10                                       ; $4054: $3e $10

jr_010_4056:
  ld [$dffd], a                                   ; $4056: $ea $fd $df
  rr b                                            ; $4059: $cb $18
  rr c                                            ; $405b: $cb $19
  jr nc, jr_010_4088                              ; $405d: $30 $29

  add hl, de                                      ; $405f: $19
  push hl                                         ; $4060: $e5
  ld a, [$dffb]                                   ; $4061: $fa $fb $df
  ld l, a                                         ; $4064: $6f
  ld a, [$dff9]                                   ; $4065: $fa $f9 $df
  adc l                                           ; $4068: $8d
  ld [$dff9], a                                   ; $4069: $ea $f9 $df
  ld a, [$dffc]                                   ; $406c: $fa $fc $df
  ld l, a                                         ; $406f: $6f
  ld a, [$dffa]                                   ; $4070: $fa $fa $df
  adc l                                           ; $4073: $8d
  ld [$dffa], a                                   ; $4074: $ea $fa $df
  pop hl                                          ; $4077: $e1
  ld a, [$dff9]                                   ; $4078: $fa $f9 $df
  adc $00                                         ; $407b: $ce $00
  ld [$dff9], a                                   ; $407d: $ea $f9 $df
  ld a, [$dffa]                                   ; $4080: $fa $fa $df
  adc $00                                         ; $4083: $ce $00
  ld [$dffa], a                                   ; $4085: $ea $fa $df

jr_010_4088:
  sla e                                           ; $4088: $cb $23
  rl d                                            ; $408a: $cb $12
  ld a, [$dffb]                                   ; $408c: $fa $fb $df
  rla                                             ; $408f: $17
  ld [$dffb], a                                   ; $4090: $ea $fb $df
  ld a, [$dffc]                                   ; $4093: $fa $fc $df
  rla                                             ; $4096: $17
  ld [$dffc], a                                   ; $4097: $ea $fc $df
  ld a, [$dffd]                                   ; $409a: $fa $fd $df
  dec a                                           ; $409d: $3d
  jr nz, jr_010_4056                              ; $409e: $20 $b6

  ld a, [$dff9]                                   ; $40a0: $fa $f9 $df
  ld c, a                                         ; $40a3: $4f
  ld a, [$dffa]                                   ; $40a4: $fa $fa $df
  ld b, a                                         ; $40a7: $47
  pop de                                          ; $40a8: $d1
  ret                                             ; $40a9: $c9


Call_010_40aa:
  push de                                         ; $40aa: $d5
  call Call_010_40b0                              ; $40ab: $cd $b0 $40
  pop de                                          ; $40ae: $d1
  ret                                             ; $40af: $c9


Call_010_40b0:
  call Call_010_418d                              ; $40b0: $cd $8d $41
  jr z, jr_010_411a                               ; $40b3: $28 $65

  ld a, b                                         ; $40b5: $78
  or c                                            ; $40b6: $b1
  jr z, jr_010_4121                               ; $40b7: $28 $68

  ld a, l                                         ; $40b9: $7d
  ld [$dff9], a                                   ; $40ba: $ea $f9 $df
  ld a, h                                         ; $40bd: $7c
  ld [$dffa], a                                   ; $40be: $ea $fa $df
  ld a, c                                         ; $40c1: $79
  ld [$dffb], a                                   ; $40c2: $ea $fb $df
  ld a, b                                         ; $40c5: $78
  ld [$dffc], a                                   ; $40c6: $ea $fc $df
  ld e, $0f                                       ; $40c9: $1e $0f
  ld a, $01                                       ; $40cb: $3e $01
  ld [$dffd], a                                   ; $40cd: $ea $fd $df
  xor a                                           ; $40d0: $af
  ld [$dffe], a                                   ; $40d1: $ea $fe $df
  ld a, [$dff9]                                   ; $40d4: $fa $f9 $df
  ld l, a                                         ; $40d7: $6f
  ld a, [$dffa]                                   ; $40d8: $fa $fa $df
  ld h, a                                         ; $40db: $67
  ld a, [$dffb]                                   ; $40dc: $fa $fb $df

jr_010_40df:
  ld c, a                                         ; $40df: $4f
  ld a, [$dffc]                                   ; $40e0: $fa $fc $df
  ld b, a                                         ; $40e3: $47
  call Call_010_418d                              ; $40e4: $cd $8d $41
  jr c, jr_010_4128                               ; $40e7: $38 $3f

  ld a, [$dffb]                                   ; $40e9: $fa $fb $df
  sla a                                           ; $40ec: $cb $27
  ld [$dffb], a                                   ; $40ee: $ea $fb $df
  ld a, [$dffc]                                   ; $40f1: $fa $fc $df
  rla                                             ; $40f4: $17
  ld [$dffc], a                                   ; $40f5: $ea $fc $df
  ld a, [$dffd]                                   ; $40f8: $fa $fd $df
  sla a                                           ; $40fb: $cb $27
  ld [$dffd], a                                   ; $40fd: $ea $fd $df
  ld a, [$dffe]                                   ; $4100: $fa $fe $df
  rla                                             ; $4103: $17
  ld [$dffe], a                                   ; $4104: $ea $fe $df
  ld a, e                                         ; $4107: $7b
  dec a                                           ; $4108: $3d
  ld e, a                                         ; $4109: $5f
  bit 7, a                                        ; $410a: $cb $7f
  jr z, jr_010_40df                               ; $410c: $28 $d1

  ld hl, $0000                                    ; $410e: $21 $00 $00
  ld a, [$dff9]                                   ; $4111: $fa $f9 $df
  ld c, a                                         ; $4114: $4f
  ld a, [$dffa]                                   ; $4115: $fa $fa $df
  ld b, a                                         ; $4118: $47
  ret                                             ; $4119: $c9


jr_010_411a:
  ld hl, $0001                                    ; $411a: $21 $01 $00
  ld bc, $0000                                    ; $411d: $01 $00 $00
  ret                                             ; $4120: $c9


jr_010_4121:
  ld hl, $0000                                    ; $4121: $21 $00 $00
  ld bc, $0000                                    ; $4124: $01 $00 $00
  ret                                             ; $4127: $c9


jr_010_4128:
  xor a                                           ; $4128: $af
  ld e, a                                         ; $4129: $5f
  ld d, a                                         ; $412a: $57

jr_010_412b:
  ld a, [$dffe]                                   ; $412b: $fa $fe $df
  srl a                                           ; $412e: $cb $3f
  ld [$dffe], a                                   ; $4130: $ea $fe $df
  ld b, a                                         ; $4133: $47
  ld a, [$dffd]                                   ; $4134: $fa $fd $df
  rra                                             ; $4137: $1f
  ld [$dffd], a                                   ; $4138: $ea $fd $df
  or b                                            ; $413b: $b0
  jr z, jr_010_4182                               ; $413c: $28 $44

  ld a, [$dffc]                                   ; $413e: $fa $fc $df
  srl a                                           ; $4141: $cb $3f
  ld [$dffc], a                                   ; $4143: $ea $fc $df
  ld a, [$dffb]                                   ; $4146: $fa $fb $df
  rra                                             ; $4149: $1f
  ld [$dffb], a                                   ; $414a: $ea $fb $df
  ld a, [$dff9]                                   ; $414d: $fa $f9 $df
  ld l, a                                         ; $4150: $6f
  ld a, [$dffa]                                   ; $4151: $fa $fa $df
  ld h, a                                         ; $4154: $67
  ld a, [$dffb]                                   ; $4155: $fa $fb $df
  ld c, a                                         ; $4158: $4f
  ld a, [$dffc]                                   ; $4159: $fa $fc $df
  ld b, a                                         ; $415c: $47
  call Call_010_418d                              ; $415d: $cd $8d $41
  jr c, jr_010_412b                               ; $4160: $38 $c9

  ld a, c                                         ; $4162: $79
  cpl                                             ; $4163: $2f
  add $01                                         ; $4164: $c6 $01
  ld c, a                                         ; $4166: $4f
  ld a, b                                         ; $4167: $78
  cpl                                             ; $4168: $2f
  adc $00                                         ; $4169: $ce $00
  ld b, a                                         ; $416b: $47
  add hl, bc                                      ; $416c: $09
  ld a, l                                         ; $416d: $7d
  ld [$dff9], a                                   ; $416e: $ea $f9 $df
  ld a, h                                         ; $4171: $7c
  ld [$dffa], a                                   ; $4172: $ea $fa $df
  ld a, [$dffd]                                   ; $4175: $fa $fd $df
  ld l, a                                         ; $4178: $6f
  ld a, [$dffe]                                   ; $4179: $fa $fe $df
  ld h, a                                         ; $417c: $67
  add hl, de                                      ; $417d: $19
  ld e, l                                         ; $417e: $5d
  ld d, h                                         ; $417f: $54
  jr jr_010_412b                                  ; $4180: $18 $a9

jr_010_4182:
  ld l, e                                         ; $4182: $6b
  ld h, d                                         ; $4183: $62
  ld a, [$dff9]                                   ; $4184: $fa $f9 $df
  ld c, a                                         ; $4187: $4f
  ld a, [$dffa]                                   ; $4188: $fa $fa $df
  ld b, a                                         ; $418b: $47
  ret                                             ; $418c: $c9


Call_010_418d:
  ld a, h                                         ; $418d: $7c
  cp b                                            ; $418e: $b8
  ret c                                           ; $418f: $d8

  jr z, jr_010_4195                               ; $4190: $28 $03

  xor a                                           ; $4192: $af
  inc a                                           ; $4193: $3c
  ret                                             ; $4194: $c9


jr_010_4195:
  ld a, l                                         ; $4195: $7d
  cp c                                            ; $4196: $b9
  ret                                             ; $4197: $c9


Call_010_4198:
  ld a, h                                         ; $4198: $7c
  cp d                                            ; $4199: $ba
  ret c                                           ; $419a: $d8

  jr z, jr_010_41a0                               ; $419b: $28 $03

  xor a                                           ; $419d: $af
  inc a                                           ; $419e: $3c
  ret                                             ; $419f: $c9


jr_010_41a0:
  ld a, l                                         ; $41a0: $7d
  cp e                                            ; $41a1: $bb
  ret                                             ; $41a2: $c9


Call_010_41a3:
  ld a, [$df03]                                   ; $41a3: $fa $03 $df
  rla                                             ; $41a6: $17
  jr c, jr_010_41ab                               ; $41a7: $38 $02

  xor $e9                                         ; $41a9: $ee $e9

jr_010_41ab:
  ld [$df03], a                                   ; $41ab: $ea $03 $df
  ret                                             ; $41ae: $c9


Call_010_41af:
  call Call_010_41a3                              ; $41af: $cd $a3 $41
  cp b                                            ; $41b2: $b8
  ret c                                           ; $41b3: $d8

jr_010_41b4:
  sub b                                           ; $41b4: $90
  cp b                                            ; $41b5: $b8
  jr nc, jr_010_41b4                              ; $41b6: $30 $fc

  ret                                             ; $41b8: $c9


Call_010_41b9:
  push bc                                         ; $41b9: $c5
  inc h                                           ; $41ba: $24
  dec h                                           ; $41bb: $25
  jr z, jr_010_41db                               ; $41bc: $28 $1d

  ld b, h                                         ; $41be: $44
  call Call_010_41af                              ; $41bf: $cd $af $41
  cp h                                            ; $41c2: $bc
  ld h, a                                         ; $41c3: $67
  jr nc, jr_010_41d4                              ; $41c4: $30 $0e

  ld a, [$df03]                                   ; $41c6: $fa $03 $df
  rla                                             ; $41c9: $17
  jr c, jr_010_41ce                               ; $41ca: $38 $02

  xor $e9                                         ; $41cc: $ee $e9

jr_010_41ce:
  ld [$df03], a                                   ; $41ce: $ea $03 $df
  ld l, a                                         ; $41d1: $6f
  pop bc                                          ; $41d2: $c1
  ret                                             ; $41d3: $c9


jr_010_41d4:
  ld b, l                                         ; $41d4: $45
  call Call_010_41af                              ; $41d5: $cd $af $41
  ld l, a                                         ; $41d8: $6f
  pop bc                                          ; $41d9: $c1
  ret                                             ; $41da: $c9


jr_010_41db:
  inc l                                           ; $41db: $2c
  dec l                                           ; $41dc: $2d
  jr nz, jr_010_41e1                              ; $41dd: $20 $02

  pop bc                                          ; $41df: $c1
  ret                                             ; $41e0: $c9


jr_010_41e1:
  ld b, a                                         ; $41e1: $47
  call Call_010_41af                              ; $41e2: $cd $af $41
  ld l, a                                         ; $41e5: $6f
  pop bc                                          ; $41e6: $c1
  ret                                             ; $41e7: $c9


Call_010_41e8:
  xor a                                           ; $41e8: $af
  ld [$dfa6], a                                   ; $41e9: $ea $a6 $df

Call_010_41ec:
  xor a                                           ; $41ec: $af
  ld [$df74], a                                   ; $41ed: $ea $74 $df

jr_010_41f0:
  push af                                         ; $41f0: $f5
  ld [$df9c], a                                   ; $41f1: $ea $9c $df
  ld c, a                                         ; $41f4: $4f
  ld b, $00                                       ; $41f5: $06 $00
  xor a                                           ; $41f7: $af
  ld hl, $df9d                                    ; $41f8: $21 $9d $df
  add hl, bc                                      ; $41fb: $09
  ld [hl], a                                      ; $41fc: $77
  sla c                                           ; $41fd: $cb $21
  ld hl, $df7e                                    ; $41ff: $21 $7e $df
  add hl, bc                                      ; $4202: $09
  ld [hl+], a                                     ; $4203: $22
  ld [hl], a                                      ; $4204: $77
  call Call_010_48df                              ; $4205: $cd $df $48
  call Call_010_4712                              ; $4208: $cd $12 $47
  pop af                                          ; $420b: $f1
  inc a                                           ; $420c: $3c
  cp $04                                          ; $420d: $fe $04
  jr nz, jr_010_41f0                              ; $420f: $20 $df

  ret                                             ; $4211: $c9


  xor a                                           ; $4212: $af
  ld [$df02], a                                   ; $4213: $ea $02 $df
  call Call_010_41e8                              ; $4216: $cd $e8 $41
  xor a                                           ; $4219: $af
  ldh [rNR52], a                                  ; $421a: $e0 $26
  ret                                             ; $421c: $c9


  di                                              ; $421d: $f3
  push af                                         ; $421e: $f5
  push hl                                         ; $421f: $e5
  ld a, [$df04]                                   ; $4220: $fa $04 $df
  cp $81                                          ; $4223: $fe $81
  jr nz, jr_010_423a                              ; $4225: $20 $13

  ld hl, $ff4d                                    ; $4227: $21 $4d $ff
  bit 7, [hl]                                     ; $422a: $cb $7e
  jr z, jr_010_423a                               ; $422c: $28 $0c

  call Call_010_4288                              ; $422e: $cd $88 $42
  pop hl                                          ; $4231: $e1
  pop af                                          ; $4232: $f1
  call Call_010_423c                              ; $4233: $cd $3c $42
  call Call_010_4288                              ; $4236: $cd $88 $42
  ret                                             ; $4239: $c9


jr_010_423a:
  pop hl                                          ; $423a: $e1
  pop af                                          ; $423b: $f1

Call_010_423c:
  di                                              ; $423c: $f3
  ld [$df75], a                                   ; $423d: $ea $75 $df
  ld a, l                                         ; $4240: $7d
  ld [$df76], a                                   ; $4241: $ea $76 $df
  ld a, h                                         ; $4244: $7c
  ld [$df77], a                                   ; $4245: $ea $77 $df
  ld a, e                                         ; $4248: $7b
  ld [$dffe], a                                   ; $4249: $ea $fe $df
  push bc                                         ; $424c: $c5
  call Call_010_41ec                              ; $424d: $cd $ec $41
  xor a                                           ; $4250: $af
  ldh [rNR52], a                                  ; $4251: $e0 $26
  ld a, $80                                       ; $4253: $3e $80
  ldh [rNR52], a                                  ; $4255: $e0 $26
  ld a, $77                                       ; $4257: $3e $77
  ldh [rNR50], a                                  ; $4259: $e0 $24
  ld a, $33                                       ; $425b: $3e $33
  ldh [rNR51], a                                  ; $425d: $e0 $25
  ld a, $c0                                       ; $425f: $3e $c0
  ldh [rNR11], a                                  ; $4261: $e0 $11
  ldh [rNR21], a                                  ; $4263: $e0 $16
  ld a, $f0                                       ; $4265: $3e $f0
  ldh [rNR12], a                                  ; $4267: $e0 $12
  ldh [rNR22], a                                  ; $4269: $e0 $17
  ld a, $ff                                       ; $426b: $3e $ff
  ldh [rNR13], a                                  ; $426d: $e0 $13
  ldh [rNR23], a                                  ; $426f: $e0 $18
  ld a, $87                                       ; $4271: $3e $87
  ldh [rNR14], a                                  ; $4273: $e0 $14
  ldh [rNR24], a                                  ; $4275: $e0 $19
  pop bc                                          ; $4277: $c1
  call Call_000_3c73                              ; $4278: $cd $73 $3c
  xor a                                           ; $427b: $af
  ldh [rNR52], a                                  ; $427c: $e0 $26
  ld a, $80                                       ; $427e: $3e $80
  ldh [rNR52], a                                  ; $4280: $e0 $26
  ld a, $77                                       ; $4282: $3e $77
  ldh [rNR50], a                                  ; $4284: $e0 $24
  ei                                              ; $4286: $fb
  ret                                             ; $4287: $c9


Call_010_4288:
  ld hl, $ff4d                                    ; $4288: $21 $4d $ff
  set 0, [hl]                                     ; $428b: $cb $c6
  ldh a, [rIE]                                    ; $428d: $f0 $ff
  ld l, a                                         ; $428f: $6f
  xor a                                           ; $4290: $af
  ldh [rIE], a                                    ; $4291: $e0 $ff
  ldh [rIF], a                                    ; $4293: $e0 $0f
  ld a, $30                                       ; $4295: $3e $30
  ldh [rP1], a                                    ; $4297: $e0 $00
  stop                                            ; $4299: $10 $00
  nop                                             ; $429b: $00
  ld a, l                                         ; $429c: $7d
  ldh [rIE], a                                    ; $429d: $e0 $ff
  ret                                             ; $429f: $c9


  push hl                                         ; $42a0: $e5
  push af                                         ; $42a1: $f5
  push bc                                         ; $42a2: $c5
  push de                                         ; $42a3: $d5
  xor a                                           ; $42a4: $af
  ld [$df9f], a                                   ; $42a5: $ea $9f $df
  ld b, $ff                                       ; $42a8: $06 $ff
  ld c, $02                                       ; $42aa: $0e $02
  ld hl, $0000                                    ; $42ac: $21 $00 $00
  inc a                                           ; $42af: $3c
  ld [$dffe], a                                   ; $42b0: $ea $fe $df
  call Call_010_4e4b                              ; $42b3: $cd $4b $4e
  pop de                                          ; $42b6: $d1
  ld hl, $df7b                                    ; $42b7: $21 $7b $df
  ld a, e                                         ; $42ba: $7b
  ld [hl+], a                                     ; $42bb: $22
  ld [hl], d                                      ; $42bc: $72
  pop bc                                          ; $42bd: $c1
  pop af                                          ; $42be: $f1
  pop hl                                          ; $42bf: $e1
  ld [$df75], a                                   ; $42c0: $ea $75 $df
  call Call_000_3bbc                              ; $42c3: $cd $bc $3b
  bit 7, h                                        ; $42c6: $cb $7c
  jr z, jr_010_42d3                               ; $42c8: $28 $09

  ld h, $40                                       ; $42ca: $26 $40
  ld a, [$df75]                                   ; $42cc: $fa $75 $df
  inc a                                           ; $42cf: $3c
  ld [$df75], a                                   ; $42d0: $ea $75 $df

jr_010_42d3:
  push hl                                         ; $42d3: $e5
  call Call_010_4bd0                              ; $42d4: $cd $d0 $4b
  ld a, $50                                       ; $42d7: $3e $50
  ld [$df74], a                                   ; $42d9: $ea $74 $df
  ld hl, $df78                                    ; $42dc: $21 $78 $df
  ld a, c                                         ; $42df: $79
  ld [hl+], a                                     ; $42e0: $22
  ld a, b                                         ; $42e1: $78
  ld [hl+], a                                     ; $42e2: $22
  ld [hl], $00                                    ; $42e3: $36 $00
  ld hl, $df76                                    ; $42e5: $21 $76 $df
  pop bc                                          ; $42e8: $c1
  ld a, c                                         ; $42e9: $79
  ld [hl+], a                                     ; $42ea: $22
  ld [hl], b                                      ; $42eb: $70
  ld a, $ff                                       ; $42ec: $3e $ff
  ld c, $02                                       ; $42ee: $0e $02
  call Call_010_50f3                              ; $42f0: $cd $f3 $50
  ld a, $0f                                       ; $42f3: $3e $0f
  ld [$dff6], a                                   ; $42f5: $ea $f6 $df
  ld hl, $df0f                                    ; $42f8: $21 $0f $df
  set 5, [hl]                                     ; $42fb: $cb $ee
  ret                                             ; $42fd: $c9


  ld hl, $df74                                    ; $42fe: $21 $74 $df
  bit 4, [hl]                                     ; $4301: $cb $66
  ret z                                           ; $4303: $c8

  jp Jump_000_3b8f                                ; $4304: $c3 $8f $3b


  push hl                                         ; $4307: $e5
  push bc                                         ; $4308: $c5
  cp $07                                          ; $4309: $fe $07
  jr nc, jr_010_430f                              ; $430b: $30 $02

  ld a, $07                                       ; $430d: $3e $07

jr_010_430f:
  and $07                                         ; $430f: $e6 $07
  ld b, a                                         ; $4311: $47
  swap b                                          ; $4312: $cb $30
  or b                                            ; $4314: $b0
  ld hl, $ff24                                    ; $4315: $21 $24 $ff
  ld c, [hl]                                      ; $4318: $4e
  ld [hl], a                                      ; $4319: $77
  ld a, c                                         ; $431a: $79
  and $07                                         ; $431b: $e6 $07
  pop bc                                          ; $431d: $c1
  pop hl                                          ; $431e: $e1
  ret                                             ; $431f: $c9


  push bc                                         ; $4320: $c5
  cp $0f                                          ; $4321: $fe $0f
  jr c, jr_010_4327                               ; $4323: $38 $02

  ld a, $0f                                       ; $4325: $3e $0f

jr_010_4327:
  and $0f                                         ; $4327: $e6 $0f
  ld b, a                                         ; $4329: $47
  ld a, [$dff8]                                   ; $432a: $fa $f8 $df
  ld c, a                                         ; $432d: $4f
  and $f0                                         ; $432e: $e6 $f0
  or b                                            ; $4330: $b0
  ld [$dff8], a                                   ; $4331: $ea $f8 $df
  ld a, c                                         ; $4334: $79
  and $0f                                         ; $4335: $e6 $0f
  pop bc                                          ; $4337: $c1
  ret                                             ; $4338: $c9


  push bc                                         ; $4339: $c5
  cp $0f                                          ; $433a: $fe $0f
  jr c, jr_010_4340                               ; $433c: $38 $02

  ld a, $0f                                       ; $433e: $3e $0f

jr_010_4340:
  and $0f                                         ; $4340: $e6 $0f
  swap a                                          ; $4342: $cb $37
  ld b, a                                         ; $4344: $47
  ld a, [$dff8]                                   ; $4345: $fa $f8 $df
  ld c, a                                         ; $4348: $4f
  and $0f                                         ; $4349: $e6 $0f
  or b                                            ; $434b: $b0
  ld [$dff8], a                                   ; $434c: $ea $f8 $df
  ld a, c                                         ; $434f: $79
  swap a                                          ; $4350: $cb $37
  and $0f                                         ; $4352: $e6 $0f
  pop bc                                          ; $4354: $c1
  ret                                             ; $4355: $c9


  ld a, [$df02]                                   ; $4356: $fa $02 $df
  cp $f5                                          ; $4359: $fe $f5
  ret nz                                          ; $435b: $c0

  ld hl, $df1d                                    ; $435c: $21 $1d $df
  xor a                                           ; $435f: $af
  ld [hl+], a                                     ; $4360: $22
  ld [hl+], a                                     ; $4361: $22
  ld [hl+], a                                     ; $4362: $22
  ld [hl+], a                                     ; $4363: $22
  ld [hl+], a                                     ; $4364: $22
  ld [hl], a                                      ; $4365: $77
  ld a, [$df74]                                   ; $4366: $fa $74 $df
  bit 7, a                                        ; $4369: $cb $7f
  call nz, Call_010_56d9                          ; $436b: $c4 $d9 $56
  call Call_010_5004                              ; $436e: $cd $04 $50
  call Call_010_53ec                              ; $4371: $cd $ec $53
  call Call_010_552c                              ; $4374: $cd $2c $55
  ld a, [$df74]                                   ; $4377: $fa $74 $df
  bit 0, a                                        ; $437a: $cb $47
  call nz, Call_010_43e0                          ; $437c: $c4 $e0 $43
  ld bc, $0003                                    ; $437f: $01 $03 $00
  jr jr_010_43b3                                  ; $4382: $18 $2f

jr_010_4384:
  ld hl, $df09                                    ; $4384: $21 $09 $df
  add hl, bc                                      ; $4387: $09
  bit 5, [hl]                                     ; $4388: $cb $6e
  jr z, jr_010_43b3                               ; $438a: $28 $27

  res 5, [hl]                                     ; $438c: $cb $ae
  set 6, [hl]                                     ; $438e: $cb $f6
  push bc                                         ; $4390: $c5
  sla c                                           ; $4391: $cb $21
  ld d, $00                                       ; $4393: $16 $00
  ld e, c                                         ; $4395: $59
  ld hl, $df15                                    ; $4396: $21 $15 $df
  add hl, de                                      ; $4399: $19
  ld a, [hl+]                                     ; $439a: $2a
  ld b, [hl]                                      ; $439b: $46
  ld c, a                                         ; $439c: $4f
  ld hl, $df1d                                    ; $439d: $21 $1d $df
  add hl, de                                      ; $43a0: $19
  ld a, [hl+]                                     ; $43a1: $2a
  ld h, [hl]                                      ; $43a2: $66
  ld l, a                                         ; $43a3: $6f
  add hl, bc                                      ; $43a4: $09
  ld c, l                                         ; $43a5: $4d
  ld b, h                                         ; $43a6: $44
  ld hl, $df23                                    ; $43a7: $21 $23 $df
  add hl, de                                      ; $43aa: $19
  ld a, [hl+]                                     ; $43ab: $2a
  ld h, [hl]                                      ; $43ac: $66
  ld l, a                                         ; $43ad: $6f
  add hl, bc                                      ; $43ae: $09
  pop bc                                          ; $43af: $c1
  call Call_010_5192                              ; $43b0: $cd $92 $51

jr_010_43b3:
  ld hl, $df0d                                    ; $43b3: $21 $0d $df
  add hl, bc                                      ; $43b6: $09
  bit 5, [hl]                                     ; $43b7: $cb $6e
  jr z, jr_010_43cf                               ; $43b9: $28 $14

  res 5, [hl]                                     ; $43bb: $cb $ae
  ld hl, $dff4                                    ; $43bd: $21 $f4 $df
  add hl, bc                                      ; $43c0: $09
  ld a, [hl]                                      ; $43c1: $7e
  ld hl, $df70                                    ; $43c2: $21 $70 $df
  add hl, bc                                      ; $43c5: $09
  ld e, [hl]                                      ; $43c6: $5e
  call Call_010_5640                              ; $43c7: $cd $40 $56
  push bc                                         ; $43ca: $c5
  call Call_010_507d                              ; $43cb: $cd $7d $50
  pop bc                                          ; $43ce: $c1

jr_010_43cf:
  dec c                                           ; $43cf: $0d
  bit 7, c                                        ; $43d0: $cb $79
  jr z, jr_010_4384                               ; $43d2: $28 $b0

  ld a, [$df04]                                   ; $43d4: $fa $04 $df
  bit 0, a                                        ; $43d7: $cb $47
  call nz, Call_010_4526                          ; $43d9: $c4 $26 $45
  call Call_010_580a                              ; $43dc: $cd $0a $58
  ret                                             ; $43df: $c9


Call_010_43e0:
Jump_010_43e0:
  ld hl, $df76                                    ; $43e0: $21 $76 $df
  ld a, [hl+]                                     ; $43e3: $2a
  ld d, [hl]                                      ; $43e4: $56
  ld e, a                                         ; $43e5: $5f
  ld hl, $df7b                                    ; $43e6: $21 $7b $df
  ld a, [hl+]                                     ; $43e9: $2a
  ld h, [hl]                                      ; $43ea: $66
  ld l, a                                         ; $43eb: $6f
  add hl, de                                      ; $43ec: $19
  ld b, h                                         ; $43ed: $44
  ld c, l                                         ; $43ee: $4d
  bit 7, d                                        ; $43ef: $cb $7a
  jr nz, jr_010_4425                              ; $43f1: $20 $32

  ld a, [$df7a]                                   ; $43f3: $fa $7a $df
  ld h, a                                         ; $43f6: $67
  ld l, $00                                       ; $43f7: $2e $00
  call Call_010_418d                              ; $43f9: $cd $8d $41
  jr nc, jr_010_441d                              ; $43fc: $30 $1f

jr_010_43fe:
  ld a, c                                         ; $43fe: $79
  cpl                                             ; $43ff: $2f
  add $01                                         ; $4400: $c6 $01
  ld c, a                                         ; $4402: $4f
  ld a, b                                         ; $4403: $78
  cpl                                             ; $4404: $2f
  adc $00                                         ; $4405: $ce $00
  ld b, a                                         ; $4407: $47
  sla h                                           ; $4408: $cb $24
  add hl, bc                                      ; $440a: $09
  ld b, h                                         ; $440b: $44
  ld c, l                                         ; $440c: $4d
  ld a, e                                         ; $440d: $7b
  cpl                                             ; $440e: $2f
  add $01                                         ; $440f: $c6 $01
  ld e, a                                         ; $4411: $5f
  ld a, d                                         ; $4412: $7a
  cpl                                             ; $4413: $2f
  adc $00                                         ; $4414: $ce $00
  ld d, a                                         ; $4416: $57
  ld hl, $df76                                    ; $4417: $21 $76 $df
  ld a, e                                         ; $441a: $7b
  ld [hl+], a                                     ; $441b: $22
  ld [hl], d                                      ; $441c: $72

jr_010_441d:
  ld hl, $df7b                                    ; $441d: $21 $7b $df
  ld a, c                                         ; $4420: $79
  ld [hl+], a                                     ; $4421: $22
  ld [hl], b                                      ; $4422: $70
  jr jr_010_443c                                  ; $4423: $18 $17

jr_010_4425:
  ld a, [$df78]                                   ; $4425: $fa $78 $df
  ld l, a                                         ; $4428: $6f
  bit 7, b                                        ; $4429: $cb $78
  jr nz, jr_010_4431                              ; $442b: $20 $04

  ld a, b                                         ; $442d: $78
  cp l                                            ; $442e: $bd
  jr nc, jr_010_4436                              ; $442f: $30 $05

jr_010_4431:
  ld h, l                                         ; $4431: $65
  ld l, $00                                       ; $4432: $2e $00
  jr jr_010_43fe                                  ; $4434: $18 $c8

jr_010_4436:
  ld hl, $df7b                                    ; $4436: $21 $7b $df
  ld a, c                                         ; $4439: $79
  ld [hl+], a                                     ; $443a: $22
  ld [hl], b                                      ; $443b: $70

jr_010_443c:
  ld a, [$df75]                                   ; $443c: $fa $75 $df
  cp b                                            ; $443f: $b8
  jr nz, jr_010_444b                              ; $4440: $20 $09

  ld a, [$df7d]                                   ; $4442: $fa $7d $df
  ld c, a                                         ; $4445: $4f
  ld a, [$df31]                                   ; $4446: $fa $31 $df
  cp c                                            ; $4449: $b9
  ret z                                           ; $444a: $c8

jr_010_444b:
  ld a, b                                         ; $444b: $78
  ld [$df75], a                                   ; $444c: $ea $75 $df
  ld c, a                                         ; $444f: $4f
  ld d, $00                                       ; $4450: $16 $00
  srl a                                           ; $4452: $cb $3f
  ld e, a                                         ; $4454: $5f
  ld a, $07                                       ; $4455: $3e $07
  sub e                                           ; $4457: $93
  ld e, a                                         ; $4458: $5f
  ld hl, $4470                                    ; $4459: $21 $70 $44
  add hl, de                                      ; $445c: $19
  push hl                                         ; $445d: $e5
  call Call_000_3abb                              ; $445e: $cd $bb $3a
  ld a, [$df31]                                   ; $4461: $fa $31 $df
  ld [$df7d], a                                   ; $4464: $ea $7d $df
  ld hl, $ff30                                    ; $4467: $21 $30 $ff
  ld [hl+], a                                     ; $446a: $22
  ld b, a                                         ; $446b: $47
  swap a                                          ; $446c: $cb $37
  or b                                            ; $446e: $b0
  ret                                             ; $446f: $c9


  ld [hl+], a                                     ; $4470: $22
  ld [hl+], a                                     ; $4471: $22
  ld [hl+], a                                     ; $4472: $22
  ld [hl+], a                                     ; $4473: $22
  ld [hl+], a                                     ; $4474: $22
  ld [hl+], a                                     ; $4475: $22
  ld [hl+], a                                     ; $4476: $22
  bit 0, c                                        ; $4477: $cb $41
  jr z, jr_010_447e                               ; $4479: $28 $03

  and $f0                                         ; $447b: $e6 $f0
  ld [hl+], a                                     ; $447d: $22

jr_010_447e:
  xor a                                           ; $447e: $af
  ld [hl+], a                                     ; $447f: $22
  ld [hl+], a                                     ; $4480: $22
  ld [hl+], a                                     ; $4481: $22
  ld [hl+], a                                     ; $4482: $22
  ld [hl+], a                                     ; $4483: $22
  ld [hl+], a                                     ; $4484: $22
  ld [hl], a                                      ; $4485: $77
  ld a, $80                                       ; $4486: $3e $80
  ldh [rNR30], a                                  ; $4488: $e0 $1a
  xor a                                           ; $448a: $af
  ldh [rNR31], a                                  ; $448b: $e0 $1b
  ld a, $20                                       ; $448d: $3e $20
  ldh [rNR32], a                                  ; $448f: $e0 $1c
  ld a, [$df14]                                   ; $4491: $fa $14 $df
  or $80                                          ; $4494: $f6 $80
  ldh [rNR34], a                                  ; $4496: $e0 $1e
  and $7f                                         ; $4498: $e6 $7f
  ldh [rNR34], a                                  ; $449a: $e0 $1e
  jp Jump_000_3ac5                                ; $449c: $c3 $c5 $3a


Call_010_449f:
  xor a                                           ; $449f: $af
  ld hl, $ff24                                    ; $44a0: $21 $24 $ff
  ld [hl+], a                                     ; $44a3: $22
  ld [hl+], a                                     ; $44a4: $22
  ld [hl], a                                      ; $44a5: $77
  ld a, $80                                       ; $44a6: $3e $80
  ld [hl], a                                      ; $44a8: $77
  ld c, $10                                       ; $44a9: $0e $10
  ld a, $08                                       ; $44ab: $3e $08
  ldh [c], a                                      ; $44ad: $e2
  ld a, $80                                       ; $44ae: $3e $80
  inc c                                           ; $44b0: $0c
  ldh [c], a                                      ; $44b1: $e2
  xor a                                           ; $44b2: $af
  inc c                                           ; $44b3: $0c
  ldh [c], a                                      ; $44b4: $e2
  inc c                                           ; $44b5: $0c
  ldh [c], a                                      ; $44b6: $e2
  ld a, $80                                       ; $44b7: $3e $80
  inc c                                           ; $44b9: $0c
  ldh [c], a                                      ; $44ba: $e2
  ld c, $16                                       ; $44bb: $0e $16
  ld a, $80                                       ; $44bd: $3e $80
  ldh [c], a                                      ; $44bf: $e2
  xor a                                           ; $44c0: $af
  inc c                                           ; $44c1: $0c
  ldh [c], a                                      ; $44c2: $e2
  inc c                                           ; $44c3: $0c
  ldh [c], a                                      ; $44c4: $e2
  ld a, $80                                       ; $44c5: $3e $80
  inc c                                           ; $44c7: $0c
  ldh [c], a                                      ; $44c8: $e2
  ld c, $1a                                       ; $44c9: $0e $1a
  xor a                                           ; $44cb: $af
  ldh [c], a                                      ; $44cc: $e2
  inc c                                           ; $44cd: $0c
  ldh [c], a                                      ; $44ce: $e2
  inc c                                           ; $44cf: $0c
  ldh [c], a                                      ; $44d0: $e2
  inc c                                           ; $44d1: $0c
  ldh [c], a                                      ; $44d2: $e2
  ld a, $80                                       ; $44d3: $3e $80
  inc c                                           ; $44d5: $0c
  ldh [c], a                                      ; $44d6: $e2
  xor a                                           ; $44d7: $af
  ld hl, $ff30                                    ; $44d8: $21 $30 $ff
  ld b, $10                                       ; $44db: $06 $10

jr_010_44dd:
  ld [hl+], a                                     ; $44dd: $22
  dec b                                           ; $44de: $05
  jr nz, jr_010_44dd                              ; $44df: $20 $fc

  ld c, $20                                       ; $44e1: $0e $20
  ldh [c], a                                      ; $44e3: $e2
  inc c                                           ; $44e4: $0c
  ldh [c], a                                      ; $44e5: $e2
  inc c                                           ; $44e6: $0c
  ldh [c], a                                      ; $44e7: $e2
  ld a, $80                                       ; $44e8: $3e $80
  inc c                                           ; $44ea: $0c
  ldh [c], a                                      ; $44eb: $e2
  ld a, $77                                       ; $44ec: $3e $77
  ldh [rNR50], a                                  ; $44ee: $e0 $24
  ret                                             ; $44f0: $c9


  push af                                         ; $44f1: $f5
  ld hl, $df00                                    ; $44f2: $21 $00 $df
  ld de, $00ff                                    ; $44f5: $11 $ff $00

jr_010_44f8:
  ld a, d                                         ; $44f8: $7a
  or e                                            ; $44f9: $b3
  jr z, jr_010_4501                               ; $44fa: $28 $05

  xor a                                           ; $44fc: $af
  ld [hl+], a                                     ; $44fd: $22
  dec de                                          ; $44fe: $1b
  jr jr_010_44f8                                  ; $44ff: $18 $f7

jr_010_4501:
  ld a, c                                         ; $4501: $79
  ld [$df01], a                                   ; $4502: $ea $01 $df
  call Call_010_449f                              ; $4505: $cd $9f $44
  ld a, $ff                                       ; $4508: $3e $ff
  ld [$df11], a                                   ; $450a: $ea $11 $df
  pop af                                          ; $450d: $f1
  ld [$df04], a                                   ; $450e: $ea $04 $df
  ld a, $10                                       ; $4511: $3e $10
  ld [$df00], a                                   ; $4513: $ea $00 $df
  ld a, $de                                       ; $4516: $3e $de
  ld [$df03], a                                   ; $4518: $ea $03 $df
  ld a, $ff                                       ; $451b: $3e $ff
  ld [$dff8], a                                   ; $451d: $ea $f8 $df
  ld a, $f5                                       ; $4520: $3e $f5
  ld [$df02], a                                   ; $4522: $ea $02 $df
  ret                                             ; $4525: $c9


Call_010_4526:
  ld de, $0002                                    ; $4526: $11 $02 $00
  ld hl, $df07                                    ; $4529: $21 $07 $df

jr_010_452c:
  ld a, [hl]                                      ; $452c: $7e
  and a                                           ; $452d: $a7
  jr z, jr_010_4538                               ; $452e: $28 $08

  dec [hl]                                        ; $4530: $35

jr_010_4531:
  dec hl                                          ; $4531: $2b
  dec e                                           ; $4532: $1d
  bit 7, e                                        ; $4533: $cb $7b
  jr z, jr_010_452c                               ; $4535: $28 $f5

  ret                                             ; $4537: $c9


jr_010_4538:
  push hl                                         ; $4538: $e5
  ld hl, $df09                                    ; $4539: $21 $09 $df
  add hl, de                                      ; $453c: $19
  bit 6, [hl]                                     ; $453d: $cb $76
  jr nz, jr_010_4544                              ; $453f: $20 $03

  pop hl                                          ; $4541: $e1
  jr jr_010_4531                                  ; $4542: $18 $ed

jr_010_4544:
  res 6, [hl]                                     ; $4544: $cb $b6
  ld hl, $455c                                    ; $4546: $21 $5c $45
  add hl, de                                      ; $4549: $19
  ld c, [hl]                                      ; $454a: $4e
  ld b, $c0                                       ; $454b: $06 $c0
  ld a, e                                         ; $454d: $7b
  cp $02                                          ; $454e: $fe $02
  jr nz, jr_010_4554                              ; $4550: $20 $02

  ld b, $00                                       ; $4552: $06 $00

jr_010_4554:
  ldh a, [c]                                      ; $4554: $f2
  and b                                           ; $4555: $a0
  ldh [c], a                                      ; $4556: $e2
  pop hl                                          ; $4557: $e1
  ld [hl], $3c                                    ; $4558: $36 $3c
  jr jr_010_4531                                  ; $455a: $18 $d5

  db $11, $16, $1b

  ld a, [$df9c]                                   ; $455f: $fa $9c $df
  ld e, a                                         ; $4562: $5f
  ld d, $00                                       ; $4563: $16 $00
  ld hl, $df9d                                    ; $4565: $21 $9d $df
  add hl, de                                      ; $4568: $19
  xor a                                           ; $4569: $af
  ld [hl], a                                      ; $456a: $77
  ld hl, $dfa1                                    ; $456b: $21 $a1 $df
  add hl, de                                      ; $456e: $19
  ld [hl], a                                      ; $456f: $77
  ld hl, $df9a                                    ; $4570: $21 $9a $df
  ld [hl+], a                                     ; $4573: $22
  ld [hl], a                                      ; $4574: $77
  ret                                             ; $4575: $c9


  inc bc                                          ; $4576: $03
  ld hl, $df9a                                    ; $4577: $21 $9a $df
  ld a, c                                         ; $457a: $79
  ld [hl+], a                                     ; $457b: $22
  ld [hl], b                                      ; $457c: $70
  ret                                             ; $457d: $c9


  ld a, [$df9c]                                   ; $457e: $fa $9c $df
  ld d, $00                                       ; $4581: $16 $00
  ld e, a                                         ; $4583: $5f
  sla e                                           ; $4584: $cb $23
  ld hl, $df92                                    ; $4586: $21 $92 $df
  add hl, de                                      ; $4589: $19
  ld a, [hl+]                                     ; $458a: $2a
  or [hl]                                         ; $458b: $b6
  jr nz, jr_010_45ad                              ; $458c: $20 $1f

  push bc                                         ; $458e: $c5
  inc bc                                          ; $458f: $03
  ld a, [bc]                                      ; $4590: $0a
  inc bc                                          ; $4591: $03
  and a                                           ; $4592: $a7
  jr z, jr_010_45a7                               ; $4593: $28 $12

  push hl                                         ; $4595: $e5
  ld a, [bc]                                      ; $4596: $0a
  ld h, a                                         ; $4597: $67
  inc bc                                          ; $4598: $03
  ld a, [bc]                                      ; $4599: $0a
  ld l, a                                         ; $459a: $6f
  call Call_010_41b9                              ; $459b: $cd $b9 $41
  inc hl                                          ; $459e: $23
  ld b, l                                         ; $459f: $45
  ld a, h                                         ; $45a0: $7c
  pop hl                                          ; $45a1: $e1
  ld [hl-], a                                     ; $45a2: $32
  ld [hl], b                                      ; $45a3: $70
  pop bc                                          ; $45a4: $c1
  jr jr_010_45ad                                  ; $45a5: $18 $06

jr_010_45a7:
  ld a, [bc]                                      ; $45a7: $0a
  ld [hl-], a                                     ; $45a8: $32
  inc bc                                          ; $45a9: $03
  ld a, [bc]                                      ; $45aa: $0a
  ld [hl], a                                      ; $45ab: $77
  pop bc                                          ; $45ac: $c1

jr_010_45ad:
  ld a, [bc]                                      ; $45ad: $0a
  and a                                           ; $45ae: $a7
  jr z, jr_010_45d0                               ; $45af: $28 $1f

  ld hl, $df0d                                    ; $45b1: $21 $0d $df
  srl e                                           ; $45b4: $cb $3b
  add hl, de                                      ; $45b6: $19
  sla e                                           ; $45b7: $cb $23
  bit 7, [hl]                                     ; $45b9: $cb $7e
  jr z, jr_010_45d0                               ; $45bb: $28 $13

  ld hl, $df93                                    ; $45bd: $21 $93 $df
  add hl, de                                      ; $45c0: $19
  xor a                                           ; $45c1: $af
  ld [hl-], a                                     ; $45c2: $32
  ld [hl], a                                      ; $45c3: $77

jr_010_45c4:
  ld hl, $df9a                                    ; $45c4: $21 $9a $df
  ld a, [hl]                                      ; $45c7: $7e
  add $04                                         ; $45c8: $c6 $04
  ld [hl+], a                                     ; $45ca: $22
  ld a, [hl]                                      ; $45cb: $7e
  adc $00                                         ; $45cc: $ce $00
  ld [hl], a                                      ; $45ce: $77
  ret                                             ; $45cf: $c9


jr_010_45d0:
  ld hl, $df92                                    ; $45d0: $21 $92 $df
  add hl, de                                      ; $45d3: $19
  ld a, [hl+]                                     ; $45d4: $2a
  ld e, a                                         ; $45d5: $5f
  ld d, [hl]                                      ; $45d6: $56
  dec de                                          ; $45d7: $1b
  ld a, d                                         ; $45d8: $7a
  ld [hl-], a                                     ; $45d9: $32
  ld [hl], e                                      ; $45da: $73
  or e                                            ; $45db: $b3
  jr nz, jr_010_45e6                              ; $45dc: $20 $08

  ld hl, $0003                                    ; $45de: $21 $03 $00
  add hl, bc                                      ; $45e1: $09
  ld a, [hl-]                                     ; $45e2: $3a
  or [hl]                                         ; $45e3: $b6
  jr nz, jr_010_45c4                              ; $45e4: $20 $de

jr_010_45e6:
  dec bc                                          ; $45e6: $0b
  ld hl, $df9a                                    ; $45e7: $21 $9a $df
  ld a, c                                         ; $45ea: $79
  ld [hl+], a                                     ; $45eb: $22
  ld [hl], b                                      ; $45ec: $70
  ret                                             ; $45ed: $c9


  ld a, [$df9c]                                   ; $45ee: $fa $9c $df
  ld e, a                                         ; $45f1: $5f
  ld d, $00                                       ; $45f2: $16 $00
  ld hl, $df8e                                    ; $45f4: $21 $8e $df
  add hl, de                                      ; $45f7: $19
  ld a, [bc]                                      ; $45f8: $0a
  and a                                           ; $45f9: $a7
  jr z, jr_010_460b                               ; $45fa: $28 $0f

  cp [hl]                                         ; $45fc: $be
  jr nz, jr_010_460b                              ; $45fd: $20 $0c

  ld [hl], $00                                    ; $45ff: $36 $00
  ld hl, $df9a                                    ; $4601: $21 $9a $df
  inc bc                                          ; $4604: $03
  inc bc                                          ; $4605: $03
  inc bc                                          ; $4606: $03
  ld a, c                                         ; $4607: $79
  ld [hl+], a                                     ; $4608: $22
  ld [hl], b                                      ; $4609: $70

Call_010_460a:
  ret                                             ; $460a: $c9


jr_010_460b:
  inc [hl]                                        ; $460b: $34
  inc bc                                          ; $460c: $03
  ld l, c                                         ; $460d: $69
  ld h, b                                         ; $460e: $60
  ld a, [hl+]                                     ; $460f: $2a
  ld d, a                                         ; $4610: $57
  ld a, [hl+]                                     ; $4611: $2a
  ld e, a                                         ; $4612: $5f
  add hl, de                                      ; $4613: $19
  ld a, l                                         ; $4614: $7d
  ld d, h                                         ; $4615: $54
  ld hl, $df9a                                    ; $4616: $21 $9a $df
  ld [hl+], a                                     ; $4619: $22
  ld [hl], d                                      ; $461a: $72
  ret                                             ; $461b: $c9


Jump_010_461c:
  ld l, c                                         ; $461c: $69
  ld h, b                                         ; $461d: $60
  ld a, [hl+]                                     ; $461e: $2a
  ld e, [hl]                                      ; $461f: $5e
  ld d, a                                         ; $4620: $57
  ld hl, $5a96                                    ; $4621: $21 $96 $5a
  add hl, de                                      ; $4624: $19
  ld a, l                                         ; $4625: $7d
  ld d, h                                         ; $4626: $54
  ld hl, $df9a                                    ; $4627: $21 $9a $df
  ld [hl+], a                                     ; $462a: $22
  ld [hl], d                                      ; $462b: $72
  ret                                             ; $462c: $c9


  ld hl, $5a87                                    ; $462d: $21 $87 $5a
  ld e, l                                         ; $4630: $5d
  ld d, h                                         ; $4631: $54
  ld a, [hl+]                                     ; $4632: $2a
  ld h, [hl]                                      ; $4633: $66
  ld l, a                                         ; $4634: $6f
  add hl, de                                      ; $4635: $19
  push hl                                         ; $4636: $e5
  ld a, [bc]                                      ; $4637: $0a
  ld e, a                                         ; $4638: $5f
  ld d, $00                                       ; $4639: $16 $00
  sla e                                           ; $463b: $cb $23
  rl d                                            ; $463d: $cb $12
  add hl, de                                      ; $463f: $19
  ld a, [hl+]                                     ; $4640: $2a
  ld d, [hl]                                      ; $4641: $56
  ld e, a                                         ; $4642: $5f
  pop hl                                          ; $4643: $e1
  add hl, de                                      ; $4644: $19
  ld a, [$df9c]                                   ; $4645: $fa $9c $df
  ld c, a                                         ; $4648: $4f
  call Call_010_54fa                              ; $4649: $cd $fa $54
  ld hl, $df9a                                    ; $464c: $21 $9a $df
  inc [hl]                                        ; $464f: $34
  ret nz                                          ; $4650: $c0

  inc hl                                          ; $4651: $23
  inc [hl]                                        ; $4652: $34
  ret                                             ; $4653: $c9


Call_010_4654:
  ld a, [bc]                                      ; $4654: $0a
  ld e, a                                         ; $4655: $5f
  inc bc                                          ; $4656: $03
  ld hl, $df9a                                    ; $4657: $21 $9a $df
  ld a, c                                         ; $465a: $79
  ld [hl+], a                                     ; $465b: $22
  ld [hl], b                                      ; $465c: $70

Jump_010_465d:
  ld a, [$df9c]                                   ; $465d: $fa $9c $df
  ld c, a                                         ; $4660: $4f
  ld b, $00                                       ; $4661: $06 $00
  ld hl, $df09                                    ; $4663: $21 $09 $df
  add hl, bc                                      ; $4666: $09
  bit 1, [hl]                                     ; $4667: $cb $4e
  ld a, [$dff8]                                   ; $4669: $fa $f8 $df
  jr z, jr_010_4670                               ; $466c: $28 $02

  swap a                                          ; $466e: $cb $37

jr_010_4670:
  and $0f                                         ; $4670: $e6 $0f
  call Call_010_5640                              ; $4672: $cd $40 $56
  ld hl, $dff4                                    ; $4675: $21 $f4 $df
  add hl, bc                                      ; $4678: $09
  ld [hl], a                                      ; $4679: $77
  ld hl, $df0d                                    ; $467a: $21 $0d $df
  add hl, bc                                      ; $467d: $09
  set 5, [hl]                                     ; $467e: $cb $ee
  ret                                             ; $4680: $c9


  call Call_010_4654                              ; $4681: $cd $54 $46
  ld hl, $df70                                    ; $4684: $21 $70 $df
  add hl, bc                                      ; $4687: $09
  ld a, [hl]                                      ; $4688: $7e
  call Call_010_5640                              ; $4689: $cd $40 $56
  ld hl, $df2f                                    ; $468c: $21 $2f $df
  add hl, bc                                      ; $468f: $09
  ld [hl], a                                      ; $4690: $77
  ret                                             ; $4691: $c9


Call_010_4692:
  push af                                         ; $4692: $f5
  ld hl, sp+$01                                   ; $4693: $f8 $01
  ld c, l                                         ; $4695: $4d
  ld b, h                                         ; $4696: $44
  call Call_010_469c                              ; $4697: $cd $9c $46
  pop af                                          ; $469a: $f1
  ret                                             ; $469b: $c9


Call_010_469c:
  ld a, [$df9c]                                   ; $469c: $fa $9c $df
  ld e, a                                         ; $469f: $5f
  ld d, $00                                       ; $46a0: $16 $00
  ld hl, $46dc                                    ; $46a2: $21 $dc $46
  add hl, de                                      ; $46a5: $19
  ld a, [hl]                                      ; $46a6: $7e
  ld d, a                                         ; $46a7: $57
  ld hl, $df11                                    ; $46a8: $21 $11 $df
  ld a, [hl]                                      ; $46ab: $7e
  and d                                           ; $46ac: $a2
  ld [hl], a                                      ; $46ad: $77
  push hl                                         ; $46ae: $e5
  ld a, [bc]                                      ; $46af: $0a
  ld c, a                                         ; $46b0: $4f
  ld b, d                                         ; $46b1: $42
  ld a, e                                         ; $46b2: $7b
  add a                                           ; $46b3: $87
  add e                                           ; $46b4: $83
  add c                                           ; $46b5: $81
  ld e, a                                         ; $46b6: $5f
  ld d, $00                                       ; $46b7: $16 $00
  ld hl, $46e0                                    ; $46b9: $21 $e0 $46
  add hl, de                                      ; $46bc: $19
  ld a, [hl]                                      ; $46bd: $7e
  ld c, a                                         ; $46be: $4f
  pop hl                                          ; $46bf: $e1
  or [hl]                                         ; $46c0: $b6
  ld [hl], a                                      ; $46c1: $77
  ld a, [$df9c]                                   ; $46c2: $fa $9c $df
  ld e, a                                         ; $46c5: $5f
  ld hl, $df09                                    ; $46c6: $21 $09 $df
  add hl, de                                      ; $46c9: $19
  bit 7, [hl]                                     ; $46ca: $cb $7e
  jr z, jr_010_46d4                               ; $46cc: $28 $06

  ldh a, [rNR51]                                  ; $46ce: $f0 $25
  and b                                           ; $46d0: $a0
  or c                                            ; $46d1: $b1
  ldh [rNR51], a                                  ; $46d2: $e0 $25

jr_010_46d4:
  ld hl, $df9a                                    ; $46d4: $21 $9a $df
  inc [hl]                                        ; $46d7: $34
  ret nz                                          ; $46d8: $c0

  inc hl                                          ; $46d9: $23
  inc [hl]                                        ; $46da: $34
  ret                                             ; $46db: $c9


  db $ee, $dd, $bb, $77, $10, $11, $01, $20, $22, $02

  ld b, b                                         ; $46e6: $40

  db $44

  inc b                                           ; $46e8: $04

  db $80, $88, $08

  ld a, [bc]                                      ; $46ec: $0a
  ld e, a                                         ; $46ed: $5f
  inc bc                                          ; $46ee: $03
  ld hl, $df9a                                    ; $46ef: $21 $9a $df
  ld a, c                                         ; $46f2: $79
  ld [hl+], a                                     ; $46f3: $22
  ld [hl], b                                      ; $46f4: $70
  ld a, [$df9c]                                   ; $46f5: $fa $9c $df
  cp $02                                          ; $46f8: $fe $02
  ld c, a                                         ; $46fa: $4f
  ld a, e                                         ; $46fb: $7b
  jp nc, Jump_010_50f3                            ; $46fc: $d2 $f3 $50

  cp $ff                                          ; $46ff: $fe $ff
  jp nz, Jump_010_50f3                            ; $4701: $c2 $f3 $50

  ld b, $00                                       ; $4704: $06 $00
  ld hl, $dff4                                    ; $4706: $21 $f4 $df
  add hl, bc                                      ; $4709: $09
  ld a, [hl]                                      ; $470a: $7e
  srl a                                           ; $470b: $cb $3f
  srl a                                           ; $470d: $cb $3f
  jp Jump_010_50f3                                ; $470f: $c3 $f3 $50


Call_010_4712:
  ld a, [$df9c]                                   ; $4712: $fa $9c $df
  ld c, a                                         ; $4715: $4f
  jp Jump_010_505a                                ; $4716: $c3 $5a $50


  ld a, [$df9c]                                   ; $4719: $fa $9c $df
  cp $03                                          ; $471c: $fe $03
  jp z, Jump_010_47dd                             ; $471e: $ca $dd $47

  ld e, a                                         ; $4721: $5f
  ld d, $00                                       ; $4722: $16 $00
  ld hl, $df09                                    ; $4724: $21 $09 $df
  set 5, [hl]                                     ; $4727: $cb $ee
  sla e                                           ; $4729: $cb $23
  ld l, c                                         ; $472b: $69
  ld h, b                                         ; $472c: $60
  ld a, [hl+]                                     ; $472d: $2a
  bit 7, a                                        ; $472e: $cb $7f
  jr nz, jr_010_476b                              ; $4730: $20 $39

  and a                                           ; $4732: $a7
  jr nz, jr_010_4748                              ; $4733: $20 $13

  ld a, [hl+]                                     ; $4735: $2a
  ld c, a                                         ; $4736: $4f
  ld a, [hl+]                                     ; $4737: $2a
  sub c                                           ; $4738: $91
  ld b, a                                         ; $4739: $47
  call Call_010_41af                              ; $473a: $cd $af $41
  add c                                           ; $473d: $81
  ld c, [hl]                                      ; $473e: $4e
  ld hl, $df16                                    ; $473f: $21 $16 $df
  add hl, de                                      ; $4742: $19
  ld [hl-], a                                     ; $4743: $32
  ld [hl], c                                      ; $4744: $71
  jp Jump_010_47dd                                ; $4745: $c3 $dd $47


jr_010_4748:
  ld a, [hl+]                                     ; $4748: $2a
  ld c, a                                         ; $4749: $4f
  ld a, [hl+]                                     ; $474a: $2a
  ld b, a                                         ; $474b: $47
  push hl                                         ; $474c: $e5
  ld hl, $df16                                    ; $474d: $21 $16 $df
  add hl, de                                      ; $4750: $19
  ld a, [hl]                                      ; $4751: $7e
  add c                                           ; $4752: $81
  bit 7, a                                        ; $4753: $cb $7f
  jr z, jr_010_4758                               ; $4755: $28 $01

  xor a                                           ; $4757: $af

jr_010_4758:
  ld c, a                                         ; $4758: $4f
  ld a, b                                         ; $4759: $78
  add [hl]                                        ; $475a: $86
  sub c                                           ; $475b: $91
  ld b, a                                         ; $475c: $47
  call Call_010_41af                              ; $475d: $cd $af $41
  sub [hl]                                        ; $4760: $96
  pop hl                                          ; $4761: $e1
  ld c, [hl]                                      ; $4762: $4e
  ld hl, $df24                                    ; $4763: $21 $24 $df
  add hl, de                                      ; $4766: $19
  ld [hl-], a                                     ; $4767: $32
  ld [hl], c                                      ; $4768: $71
  jr jr_010_47dd                                  ; $4769: $18 $72

jr_010_476b:
  and $7f                                         ; $476b: $e6 $7f
  jr nz, jr_010_478b                              ; $476d: $20 $1c

  ld a, [hl+]                                     ; $476f: $2a
  cpl                                             ; $4770: $2f
  inc a                                           ; $4771: $3c
  ld b, a                                         ; $4772: $47
  ld c, $00                                       ; $4773: $0e $00
  ld a, [hl+]                                     ; $4775: $2a
  ld l, [hl]                                      ; $4776: $6e
  ld h, a                                         ; $4777: $67
  add hl, bc                                      ; $4778: $09
  call Call_010_41b9                              ; $4779: $cd $b9 $41
  ld a, b                                         ; $477c: $78
  cpl                                             ; $477d: $2f
  inc a                                           ; $477e: $3c
  ld b, a                                         ; $477f: $47
  add hl, bc                                      ; $4780: $09
  ld a, l                                         ; $4781: $7d
  ld b, h                                         ; $4782: $44
  ld hl, $df15                                    ; $4783: $21 $15 $df
  add hl, de                                      ; $4786: $19
  ld [hl+], a                                     ; $4787: $22
  ld [hl], b                                      ; $4788: $70
  jr jr_010_47dd                                  ; $4789: $18 $52

jr_010_478b:
  ld a, [hl+]                                     ; $478b: $2a
  ld b, a                                         ; $478c: $47
  ld c, $00                                       ; $478d: $0e $00
  push hl                                         ; $478f: $e5
  ld hl, $df15                                    ; $4790: $21 $15 $df
  add hl, de                                      ; $4793: $19
  ld a, [hl+]                                     ; $4794: $2a
  ld h, [hl]                                      ; $4795: $66
  ld l, a                                         ; $4796: $6f
  add hl, bc                                      ; $4797: $09
  ld c, l                                         ; $4798: $4d
  ld b, h                                         ; $4799: $44
  pop hl                                          ; $479a: $e1
  push bc                                         ; $479b: $c5
  ld a, [hl+]                                     ; $479c: $2a
  ld c, [hl]                                      ; $479d: $4e
  ld b, a                                         ; $479e: $47
  ld hl, $df15                                    ; $479f: $21 $15 $df
  add hl, de                                      ; $47a2: $19
  ld a, [hl+]                                     ; $47a3: $2a
  ld h, [hl]                                      ; $47a4: $66
  ld l, a                                         ; $47a5: $6f
  add hl, bc                                      ; $47a6: $09
  pop de                                          ; $47a7: $d1
  ld c, e                                         ; $47a8: $4b
  ld b, d                                         ; $47a9: $42
  ld a, e                                         ; $47aa: $7b
  cpl                                             ; $47ab: $2f
  add $01                                         ; $47ac: $c6 $01
  ld e, a                                         ; $47ae: $5f
  ld a, d                                         ; $47af: $7a
  cpl                                             ; $47b0: $2f
  adc $00                                         ; $47b1: $ce $00
  ld d, a                                         ; $47b3: $57
  add hl, de                                      ; $47b4: $19
  call Call_010_41b9                              ; $47b5: $cd $b9 $41
  add hl, bc                                      ; $47b8: $09
  ld c, l                                         ; $47b9: $4d
  ld b, h                                         ; $47ba: $44
  ld a, [$df9c]                                   ; $47bb: $fa $9c $df
  sla a                                           ; $47be: $cb $27
  ld e, a                                         ; $47c0: $5f
  ld d, $00                                       ; $47c1: $16 $00
  ld hl, $df15                                    ; $47c3: $21 $15 $df
  add hl, de                                      ; $47c6: $19
  ld a, [hl+]                                     ; $47c7: $2a
  ld h, [hl]                                      ; $47c8: $66
  ld l, a                                         ; $47c9: $6f
  ld a, l                                         ; $47ca: $7d
  cpl                                             ; $47cb: $2f
  add $01                                         ; $47cc: $c6 $01
  ld l, a                                         ; $47ce: $6f
  ld a, h                                         ; $47cf: $7c
  cpl                                             ; $47d0: $2f
  adc $00                                         ; $47d1: $ce $00
  ld h, a                                         ; $47d3: $67
  add hl, bc                                      ; $47d4: $09
  ld a, l                                         ; $47d5: $7d
  ld b, h                                         ; $47d6: $44
  ld hl, $df23                                    ; $47d7: $21 $23 $df
  add hl, de                                      ; $47da: $19
  ld [hl+], a                                     ; $47db: $22
  ld [hl], b                                      ; $47dc: $70

Jump_010_47dd:
jr_010_47dd:
  ld hl, $df9a                                    ; $47dd: $21 $9a $df
  ld a, [hl]                                      ; $47e0: $7e
  add $04                                         ; $47e1: $c6 $04
  ld [hl+], a                                     ; $47e3: $22
  ld a, [hl]                                      ; $47e4: $7e
  adc $00                                         ; $47e5: $ce $00
  ld [hl], a                                      ; $47e7: $77
  ret                                             ; $47e8: $c9


  ld a, [$df9c]                                   ; $47e9: $fa $9c $df
  cp $03                                          ; $47ec: $fe $03
  jr z, jr_010_4830                               ; $47ee: $28 $40

  ld e, a                                         ; $47f0: $5f
  ld d, $00                                       ; $47f1: $16 $00
  ld hl, $df09                                    ; $47f3: $21 $09 $df
  add hl, de                                      ; $47f6: $19
  set 5, [hl]                                     ; $47f7: $cb $ee
  ld l, c                                         ; $47f9: $69
  ld h, b                                         ; $47fa: $60
  ld a, [hl+]                                     ; $47fb: $2a
  and a                                           ; $47fc: $a7
  ld a, [hl+]                                     ; $47fd: $2a
  ld c, [hl]                                      ; $47fe: $4e
  ld b, a                                         ; $47ff: $47
  jr nz, jr_010_480d                              ; $4800: $20 $0b

  sla e                                           ; $4802: $cb $23
  ld hl, $df23                                    ; $4804: $21 $23 $df
  add hl, de                                      ; $4807: $19
  ld a, c                                         ; $4808: $79
  ld [hl+], a                                     ; $4809: $22
  ld [hl], b                                      ; $480a: $70
  jr jr_010_4830                                  ; $480b: $18 $23

jr_010_480d:
  sla e                                           ; $480d: $cb $23
  ld hl, $df23                                    ; $480f: $21 $23 $df
  add hl, de                                      ; $4812: $19
  xor a                                           ; $4813: $af
  ld [hl+], a                                     ; $4814: $22
  ld [hl], a                                      ; $4815: $77
  ld hl, $df15                                    ; $4816: $21 $15 $df
  add hl, de                                      ; $4819: $19
  ld a, [hl]                                      ; $481a: $7e
  add c                                           ; $481b: $81
  ld [hl+], a                                     ; $481c: $22
  ld a, [hl]                                      ; $481d: $7e
  adc b                                           ; $481e: $88
  ld [hl], a                                      ; $481f: $77
  bit 7, a                                        ; $4820: $cb $7f
  jr z, jr_010_4829                               ; $4822: $28 $05

  add $54                                         ; $4824: $c6 $54
  ld [hl], a                                      ; $4826: $77
  jr jr_010_4830                                  ; $4827: $18 $07

jr_010_4829:
  cp $54                                          ; $4829: $fe $54
  jr c, jr_010_4830                               ; $482b: $38 $03

  sub $54                                         ; $482d: $d6 $54
  ld [hl], a                                      ; $482f: $77

jr_010_4830:
  ld hl, $df9a                                    ; $4830: $21 $9a $df
  ld a, [hl]                                      ; $4833: $7e
  add $03                                         ; $4834: $c6 $03
  ld [hl+], a                                     ; $4836: $22
  ld a, [hl]                                      ; $4837: $7e
  adc $00                                         ; $4838: $ce $00
  ld [hl], a                                      ; $483a: $77
  ret                                             ; $483b: $c9


  ld a, [bc]                                      ; $483c: $0a
  inc bc                                          ; $483d: $03
  ld d, a                                         ; $483e: $57
  ld a, [bc]                                      ; $483f: $0a
  inc bc                                          ; $4840: $03
  ld e, a                                         ; $4841: $5f
  ld hl, $df9a                                    ; $4842: $21 $9a $df
  ld a, c                                         ; $4845: $79
  ld [hl+], a                                     ; $4846: $22
  ld [hl], b                                      ; $4847: $70

Jump_010_4848:
  ld a, [$df9c]                                   ; $4848: $fa $9c $df
  cp $03                                          ; $484b: $fe $03
  ret z                                           ; $484d: $c8

  ld c, a                                         ; $484e: $4f
  ld b, $00                                       ; $484f: $06 $00
  ld hl, $df09                                    ; $4851: $21 $09 $df
  add hl, bc                                      ; $4854: $09
  set 5, [hl]                                     ; $4855: $cb $ee
  sla c                                           ; $4857: $cb $21
  ld hl, $df15                                    ; $4859: $21 $15 $df
  add hl, bc                                      ; $485c: $09
  ld a, e                                         ; $485d: $7b
  sub [hl]                                        ; $485e: $96
  inc hl                                          ; $485f: $23
  ld e, a                                         ; $4860: $5f
  ld a, d                                         ; $4861: $7a
  sbc [hl]                                        ; $4862: $9e
  ld hl, $df24                                    ; $4863: $21 $24 $df
  add hl, bc                                      ; $4866: $09
  ld [hl-], a                                     ; $4867: $32
  ld [hl], e                                      ; $4868: $73
  ret                                             ; $4869: $c9


  ld l, c                                         ; $486a: $69
  ld h, b                                         ; $486b: $60
  ld a, [hl+]                                     ; $486c: $2a
  ld b, a                                         ; $486d: $47
  ld a, [hl+]                                     ; $486e: $2a
  ld c, a                                         ; $486f: $4f
  ld a, [hl+]                                     ; $4870: $2a
  ld d, a                                         ; $4871: $57
  ld a, [hl+]                                     ; $4872: $2a
  ld e, a                                         ; $4873: $5f
  ld a, [$df9c]                                   ; $4874: $fa $9c $df
  cp $03                                          ; $4877: $fe $03
  jr nc, jr_010_487f                              ; $4879: $30 $04

  or [hl]                                         ; $487b: $b6
  call Call_010_52e4                              ; $487c: $cd $e4 $52

jr_010_487f:
  ld hl, $df9a                                    ; $487f: $21 $9a $df
  ld a, [hl]                                      ; $4882: $7e
  add $05                                         ; $4883: $c6 $05
  ld [hl+], a                                     ; $4885: $22
  ld a, [hl]                                      ; $4886: $7e
  adc $00                                         ; $4887: $ce $00
  ld [hl], a                                      ; $4889: $77
  ret                                             ; $488a: $c9


  ld l, c                                         ; $488b: $69
  ld h, b                                         ; $488c: $60
  ld a, [hl+]                                     ; $488d: $2a
  ld d, a                                         ; $488e: $57
  ld a, [hl+]                                     ; $488f: $2a
  ld e, a                                         ; $4890: $5f
  ld a, [hl+]                                     ; $4891: $2a
  ld b, a                                         ; $4892: $47
  ld a, l                                         ; $4893: $7d
  ld [$df9a], a                                   ; $4894: $ea $9a $df
  ld a, h                                         ; $4897: $7c
  ld [$df9b], a                                   ; $4898: $ea $9b $df
  ld a, [$df9c]                                   ; $489b: $fa $9c $df
  ld c, a                                         ; $489e: $4f
  cp $03                                          ; $489f: $fe $03
  jp c, Jump_010_537b                             ; $48a1: $da $7b $53

  ret                                             ; $48a4: $c9


  ld l, c                                         ; $48a5: $69
  ld h, b                                         ; $48a6: $60
  ld a, [hl+]                                     ; $48a7: $2a
  ld b, a                                         ; $48a8: $47
  ld a, [hl+]                                     ; $48a9: $2a
  ld c, a                                         ; $48aa: $4f
  ld a, [hl+]                                     ; $48ab: $2a
  ld d, a                                         ; $48ac: $57
  ld a, [hl+]                                     ; $48ad: $2a
  ld e, a                                         ; $48ae: $5f
  ld a, [$df9c]                                   ; $48af: $fa $9c $df
  cp $03                                          ; $48b2: $fe $03
  jr nc, jr_010_48ba                              ; $48b4: $30 $04

  or [hl]                                         ; $48b6: $b6
  call Call_010_53aa                              ; $48b7: $cd $aa $53

jr_010_48ba:
  ld hl, $df9a                                    ; $48ba: $21 $9a $df
  ld a, [hl]                                      ; $48bd: $7e
  add $05                                         ; $48be: $c6 $05
  ld [hl+], a                                     ; $48c0: $22
  ld a, [hl]                                      ; $48c1: $7e
  adc $00                                         ; $48c2: $ce $00
  ld [hl], a                                      ; $48c4: $77
  ret                                             ; $48c5: $c9


  ld a, [bc]                                      ; $48c6: $0a
  inc bc                                          ; $48c7: $03
  ld e, a                                         ; $48c8: $5f
  ld hl, $df9a                                    ; $48c9: $21 $9a $df
  ld a, c                                         ; $48cc: $79
  ld [hl+], a                                     ; $48cd: $22
  ld [hl], b                                      ; $48ce: $70
  ld a, e                                         ; $48cf: $7b
  ldh [rNR43], a                                  ; $48d0: $e0 $22
  ret                                             ; $48d2: $c9


  ld a, [bc]                                      ; $48d3: $0a
  inc bc                                          ; $48d4: $03
  ld hl, $df9a                                    ; $48d5: $21 $9a $df
  ld [hl], c                                      ; $48d8: $71
  inc hl                                          ; $48d9: $23
  ld [hl], b                                      ; $48da: $70
  cp $ff                                          ; $48db: $fe $ff
  jr nz, jr_010_48e2                              ; $48dd: $20 $03

Call_010_48df:
Jump_010_48df:
  ld a, [$df9c]                                   ; $48df: $fa $9c $df

jr_010_48e2:
  sla a                                           ; $48e2: $cb $27
  ld e, a                                         ; $48e4: $5f
  ld d, $00                                       ; $48e5: $16 $00
  ld hl, $df86                                    ; $48e7: $21 $86 $df
  add hl, de                                      ; $48ea: $19
  ld a, [hl+]                                     ; $48eb: $2a
  ld c, a                                         ; $48ec: $4f
  or [hl]                                         ; $48ed: $b6
  jr z, jr_010_4902                               ; $48ee: $28 $12

  ld a, [hl]                                      ; $48f0: $7e
  ld hl, $df9b                                    ; $48f1: $21 $9b $df
  ld [hl-], a                                     ; $48f4: $32
  ld [hl], c                                      ; $48f5: $71
  ld hl, $df7f                                    ; $48f6: $21 $7f $df
  add hl, de                                      ; $48f9: $19
  ld [hl-], a                                     ; $48fa: $32
  ld [hl], c                                      ; $48fb: $71
  ld hl, $df92                                    ; $48fc: $21 $92 $df
  xor a                                           ; $48ff: $af
  ld [hl+], a                                     ; $4900: $22
  ld [hl], a                                      ; $4901: $77

jr_010_4902:
  srl e                                           ; $4902: $cb $3b
  ld hl, $df0d                                    ; $4904: $21 $0d $df
  add hl, de                                      ; $4907: $19
  ld a, [hl]                                      ; $4908: $7e
  or $80                                          ; $4909: $f6 $80
  ld [hl], a                                      ; $490b: $77
  ld c, a                                         ; $490c: $4f
  and $17                                         ; $490d: $e6 $17
  ret z                                           ; $490f: $c8

  bit 4, a                                        ; $4910: $cb $67
  ret nz                                          ; $4912: $c0

  bit 2, a                                        ; $4913: $cb $57
  jr z, jr_010_491e                               ; $4915: $28 $07

  ld a, b                                         ; $4917: $78
  and $f0                                         ; $4918: $e6 $f0
  or $08                                          ; $491a: $f6 $08
  ld [hl], a                                      ; $491c: $77
  ret                                             ; $491d: $c9


jr_010_491e:
  ld a, c                                         ; $491e: $79
  and $f0                                         ; $491f: $e6 $f0
  or $08                                          ; $4921: $f6 $08
  ld [hl], a                                      ; $4923: $77
  bit 0, c                                        ; $4924: $cb $41
  ld bc, $0001                                    ; $4926: $01 $01 $00
  jr z, jr_010_492e                               ; $4929: $28 $03

  ld bc, $0003                                    ; $492b: $01 $03 $00

jr_010_492e:
  ld hl, $df58                                    ; $492e: $21 $58 $df
  add hl, de                                      ; $4931: $19
  ld a, [hl+]                                     ; $4932: $2a
  ld h, [hl]                                      ; $4933: $66
  ld l, a                                         ; $4934: $6f
  add hl, bc                                      ; $4935: $09
  ld a, [hl+]                                     ; $4936: $2a
  ld b, [hl]                                      ; $4937: $46
  ld hl, $df68                                    ; $4938: $21 $68 $df
  add hl, de                                      ; $493b: $19
  ld [hl+], a                                     ; $493c: $22
  ld [hl], b                                      ; $493d: $70
  ret                                             ; $493e: $c9


  ld a, [$df9c]                                   ; $493f: $fa $9c $df
  ld e, a                                         ; $4942: $5f
  ld d, $00                                       ; $4943: $16 $00
  ld hl, $df0d                                    ; $4945: $21 $0d $df
  add hl, de                                      ; $4948: $19
  ld a, [hl]                                      ; $4949: $7e
  and $f0                                         ; $494a: $e6 $f0
  or $28                                          ; $494c: $f6 $28
  ld [hl], a                                      ; $494e: $77
  ld hl, $df70                                    ; $494f: $21 $70 $df
  add hl, de                                      ; $4952: $19
  ld [hl], $0f                                    ; $4953: $36 $0f
  sla e                                           ; $4955: $cb $23
  ld hl, $df60                                    ; $4957: $21 $60 $df
  add hl, de                                      ; $495a: $19
  xor a                                           ; $495b: $af
  ld [hl+], a                                     ; $495c: $22
  ld [hl], $0f                                    ; $495d: $36 $0f
  ld l, c                                         ; $495f: $69
  ld h, b                                         ; $4960: $60
  ld a, [hl+]                                     ; $4961: $2a
  ld c, [hl]                                      ; $4962: $4e
  ld hl, $df69                                    ; $4963: $21 $69 $df
  add hl, de                                      ; $4966: $19
  ld [hl-], a                                     ; $4967: $32
  ld [hl], c                                      ; $4968: $71
  ld hl, $df9a                                    ; $4969: $21 $9a $df
  ld a, [hl]                                      ; $496c: $7e
  add $02                                         ; $496d: $c6 $02
  ld [hl+], a                                     ; $496f: $22
  ld a, [hl]                                      ; $4970: $7e
  adc $00                                         ; $4971: $ce $00
  ld [hl], a                                      ; $4973: $77
  ret                                             ; $4974: $c9


  ld a, [bc]                                      ; $4975: $0a
  ld e, a                                         ; $4976: $5f
  inc bc                                          ; $4977: $03
  ld hl, $df9a                                    ; $4978: $21 $9a $df
  ld a, c                                         ; $497b: $79
  ld [hl+], a                                     ; $497c: $22
  ld [hl], b                                      ; $497d: $70
  ld a, [$df9c]                                   ; $497e: $fa $9c $df
  cp $02                                          ; $4981: $fe $02
  ret z                                           ; $4983: $c8

  ld c, e                                         ; $4984: $4b
  ld e, a                                         ; $4985: $5f
  ld d, $00                                       ; $4986: $16 $00
  ld hl, $df0d                                    ; $4988: $21 $0d $df
  add hl, de                                      ; $498b: $19
  ld a, [hl]                                      ; $498c: $7e
  and $f0                                         ; $498d: $e6 $f0
  or $20                                          ; $498f: $f6 $20
  ld [hl], a                                      ; $4991: $77
  ld hl, $df2f                                    ; $4992: $21 $2f $df
  add hl, de                                      ; $4995: $19
  ld a, [hl]                                      ; $4996: $7e
  swap a                                          ; $4997: $cb $37
  or c                                            ; $4999: $b1
  bit 3, a                                        ; $499a: $cb $5f
  jr z, jr_010_49a4                               ; $499c: $28 $06

  ld hl, $dff4                                    ; $499e: $21 $f4 $df
  add hl, de                                      ; $49a1: $19
  ld [hl], $00                                    ; $49a2: $36 $00

jr_010_49a4:
  ld hl, $49ab                                    ; $49a4: $21 $ab $49
  add hl, de                                      ; $49a7: $19
  ld c, [hl]                                      ; $49a8: $4e
  ldh [c], a                                      ; $49a9: $e2
  ret                                             ; $49aa: $c9


  db $12, $17

  nop                                             ; $49ad: $00

  db $21

  ld l, c                                         ; $49af: $69
  ld h, b                                         ; $49b0: $60
  ld a, [hl+]                                     ; $49b1: $2a
  ld [$df78], a                                   ; $49b2: $ea $78 $df
  ld [$df7c], a                                   ; $49b5: $ea $7c $df
  xor a                                           ; $49b8: $af
  ld [$df7b], a                                   ; $49b9: $ea $7b $df
  ld a, [hl+]                                     ; $49bc: $2a
  ld [$df7a], a                                   ; $49bd: $ea $7a $df
  ld a, [hl+]                                     ; $49c0: $2a
  ld [$df77], a                                   ; $49c1: $ea $77 $df
  ld a, [hl+]                                     ; $49c4: $2a
  ld [$df76], a                                   ; $49c5: $ea $76 $df
  ld a, l                                         ; $49c8: $7d
  ld [$df9a], a                                   ; $49c9: $ea $9a $df
  ld a, h                                         ; $49cc: $7c
  ld [$df9b], a                                   ; $49cd: $ea $9b $df
  ld a, $ff                                       ; $49d0: $3e $ff
  ld [$df75], a                                   ; $49d2: $ea $75 $df
  ld [$df7d], a                                   ; $49d5: $ea $7d $df
  call Call_010_49ea                              ; $49d8: $cd $ea $49
  ld a, $01                                       ; $49db: $3e $01
  ld [$df74], a                                   ; $49dd: $ea $74 $df
  call Call_010_43e0                              ; $49e0: $cd $e0 $43
  ld a, $ff                                       ; $49e3: $3e $ff
  ld c, $02                                       ; $49e5: $0e $02
  jp Jump_010_50f3                                ; $49e7: $c3 $f3 $50


Call_010_49ea:
  call Call_000_3abb                              ; $49ea: $cd $bb $3a
  ld hl, $ff39                                    ; $49ed: $21 $39 $ff
  ld [hl+], a                                     ; $49f0: $22
  ld [hl+], a                                     ; $49f1: $22
  ld [hl+], a                                     ; $49f2: $22
  ld [hl+], a                                     ; $49f3: $22
  ld [hl+], a                                     ; $49f4: $22
  ld [hl+], a                                     ; $49f5: $22
  ld [hl], a                                      ; $49f6: $77
  ret                                             ; $49f7: $c9


  ld a, [$df74]                                   ; $49f8: $fa $74 $df
  bit 0, a                                        ; $49fb: $cb $47
  jr z, jr_010_4a1c                               ; $49fd: $28 $1d

  ld l, c                                         ; $49ff: $69
  ld h, b                                         ; $4a00: $60
  ld a, [hl+]                                     ; $4a01: $2a
  ld [$df78], a                                   ; $4a02: $ea $78 $df
  ld a, [hl+]                                     ; $4a05: $2a
  ld [$df7a], a                                   ; $4a06: $ea $7a $df
  ld a, [hl+]                                     ; $4a09: $2a
  ld [$df77], a                                   ; $4a0a: $ea $77 $df
  ld a, [hl+]                                     ; $4a0d: $2a
  ld [$df76], a                                   ; $4a0e: $ea $76 $df
  ld a, l                                         ; $4a11: $7d
  ld [$df9a], a                                   ; $4a12: $ea $9a $df
  ld a, h                                         ; $4a15: $7c
  ld [$df9b], a                                   ; $4a16: $ea $9b $df
  jp Jump_010_43e0                                ; $4a19: $c3 $e0 $43


jr_010_4a1c:
  ld hl, $df9a                                    ; $4a1c: $21 $9a $df
  ld a, [hl]                                      ; $4a1f: $7e
  add $04                                         ; $4a20: $c6 $04
  ld [hl+], a                                     ; $4a22: $22
  ld a, [hl]                                      ; $4a23: $7e
  adc $00                                         ; $4a24: $ce $00
  ld [hl], a                                      ; $4a26: $77
  ret                                             ; $4a27: $c9


  ld a, [bc]                                      ; $4a28: $0a
  inc bc                                          ; $4a29: $03
  ld hl, $df9a                                    ; $4a2a: $21 $9a $df
  ld [hl], c                                      ; $4a2d: $71
  inc hl                                          ; $4a2e: $23
  ld [hl], b                                      ; $4a2f: $70

jr_010_4a30:
  ld [$df7c], a                                   ; $4a30: $ea $7c $df
  xor a                                           ; $4a33: $af
  ld [$df7b], a                                   ; $4a34: $ea $7b $df
  ld [$df78], a                                   ; $4a37: $ea $78 $df
  ld [$df77], a                                   ; $4a3a: $ea $77 $df
  ld [$df76], a                                   ; $4a3d: $ea $76 $df
  ld a, $0f                                       ; $4a40: $3e $0f
  ld [$df7a], a                                   ; $4a42: $ea $7a $df
  ld a, $ff                                       ; $4a45: $3e $ff
  ld [$df75], a                                   ; $4a47: $ea $75 $df
  ld [$df7d], a                                   ; $4a4a: $ea $7d $df
  call Call_010_49ea                              ; $4a4d: $cd $ea $49
  ld a, $01                                       ; $4a50: $3e $01
  ld [$df74], a                                   ; $4a52: $ea $74 $df
  call Call_010_43e0                              ; $4a55: $cd $e0 $43
  ld a, $ff                                       ; $4a58: $3e $ff
  ld c, $02                                       ; $4a5a: $0e $02
  jp Jump_010_50f3                                ; $4a5c: $c3 $f3 $50


  ld a, [$dff6]                                   ; $4a5f: $fa $f6 $df
  jr jr_010_4a30                                  ; $4a62: $18 $cc

  ld l, c                                         ; $4a64: $69
  ld h, b                                         ; $4a65: $60
  ld a, [hl+]                                     ; $4a66: $2a
  ld e, [hl]                                      ; $4a67: $5e
  ld d, a                                         ; $4a68: $57
  ld hl, $5a96                                    ; $4a69: $21 $96 $5a
  add hl, de                                      ; $4a6c: $19
  ld c, l                                         ; $4a6d: $4d
  ld b, h                                         ; $4a6e: $44
  ld a, [$df9c]                                   ; $4a6f: $fa $9c $df
  sla a                                           ; $4a72: $cb $27
  ld e, a                                         ; $4a74: $5f
  ld d, $00                                       ; $4a75: $16 $00
  ld hl, $df86                                    ; $4a77: $21 $86 $df
  add hl, de                                      ; $4a7a: $19
  ld a, c                                         ; $4a7b: $79
  ld [hl+], a                                     ; $4a7c: $22
  ld [hl], b                                      ; $4a7d: $70
  ld hl, $df9a                                    ; $4a7e: $21 $9a $df
  ld a, [hl]                                      ; $4a81: $7e
  add $02                                         ; $4a82: $c6 $02
  ld [hl+], a                                     ; $4a84: $22
  ld a, [hl]                                      ; $4a85: $7e
  adc $00                                         ; $4a86: $ce $00
  ld [hl], a                                      ; $4a88: $77
  ret                                             ; $4a89: $c9


  ld a, [$df9c]                                   ; $4a8a: $fa $9c $df
  sla a                                           ; $4a8d: $cb $27
  ld e, a                                         ; $4a8f: $5f
  ld d, $00                                       ; $4a90: $16 $00
  ld hl, $df86                                    ; $4a92: $21 $86 $df
  add hl, de                                      ; $4a95: $19
  xor a                                           ; $4a96: $af
  ld [hl+], a                                     ; $4a97: $22
  ld [hl], a                                      ; $4a98: $77
  ret                                             ; $4a99: $c9


Call_010_4a9a:
  ld a, [$df9c]                                   ; $4a9a: $fa $9c $df
  ld e, a                                         ; $4a9d: $5f
  ld d, $00                                       ; $4a9e: $16 $00
  cp $02                                          ; $4aa0: $fe $02
  jr nz, jr_010_4aac                              ; $4aa2: $20 $08

  ld a, [$df74]                                   ; $4aa4: $fa $74 $df
  and $fe                                         ; $4aa7: $e6 $fe
  ld [$df74], a                                   ; $4aa9: $ea $74 $df

jr_010_4aac:
  ld hl, $df09                                    ; $4aac: $21 $09 $df
  add hl, de                                      ; $4aaf: $19
  ld a, [hl]                                      ; $4ab0: $7e
  and $e2                                         ; $4ab1: $e6 $e2
  or $20                                          ; $4ab3: $f6 $20
  ld [hl], a                                      ; $4ab5: $77
  ret                                             ; $4ab6: $c9


  call Call_010_4a9a                              ; $4ab7: $cd $9a $4a
  ld a, e                                         ; $4aba: $7b
  cp $03                                          ; $4abb: $fe $03
  ret z                                           ; $4abd: $c8

  sla e                                           ; $4abe: $cb $23
  xor a                                           ; $4ac0: $af
  ld hl, $df1d                                    ; $4ac1: $21 $1d $df
  add hl, de                                      ; $4ac4: $19
  ld [hl+], a                                     ; $4ac5: $22
  ld [hl], a                                      ; $4ac6: $77
  ret                                             ; $4ac7: $c9


  ld a, [bc]                                      ; $4ac8: $0a
  inc bc                                          ; $4ac9: $03
  ld e, a                                         ; $4aca: $5f
  ld d, $00                                       ; $4acb: $16 $00
  ld hl, $4adf                                    ; $4acd: $21 $df $4a
  add hl, de                                      ; $4ad0: $19
  ld a, [$df33]                                   ; $4ad1: $fa $33 $df
  or [hl]                                         ; $4ad4: $b6
  ld [$df33], a                                   ; $4ad5: $ea $33 $df
  ld hl, $df9a                                    ; $4ad8: $21 $9a $df
  ld a, c                                         ; $4adb: $79
  ld [hl+], a                                     ; $4adc: $22
  ld [hl], b                                      ; $4add: $70
  ret                                             ; $4ade: $c9


  ld bc, $0402                                    ; $4adf: $01 $02 $04
  ld [$2010], sp                                  ; $4ae2: $08 $10 $20
  ld b, b                                         ; $4ae5: $40
  add b                                           ; $4ae6: $80
  and $07                                         ; $4ae7: $e6 $07
  ld e, a                                         ; $4ae9: $5f
  ld d, $00                                       ; $4aea: $16 $00
  ld hl, $4adf                                    ; $4aec: $21 $df $4a
  add hl, de                                      ; $4aef: $19
  ld a, [$df33]                                   ; $4af0: $fa $33 $df
  ld e, a                                         ; $4af3: $5f
  and [hl]                                        ; $4af4: $a6
  ret z                                           ; $4af5: $c8

  ld a, [hl]                                      ; $4af6: $7e
  cpl                                             ; $4af7: $2f
  ld d, a                                         ; $4af8: $57
  ld a, e                                         ; $4af9: $7b
  and d                                           ; $4afa: $a2
  ld [$df33], a                                   ; $4afb: $ea $33 $df
  ld a, $01                                       ; $4afe: $3e $01
  and a                                           ; $4b00: $a7
  ret                                             ; $4b01: $c9


  ld a, [$df9c]                                   ; $4b02: $fa $9c $df
  sla a                                           ; $4b05: $cb $27
  ld e, a                                         ; $4b07: $5f
  ld d, $00                                       ; $4b08: $16 $00
  ld hl, $df16                                    ; $4b0a: $21 $16 $df
  add hl, de                                      ; $4b0d: $19

jr_010_4b0e:
  ld a, [bc]                                      ; $4b0e: $0a
  inc bc                                          ; $4b0f: $03
  ld e, a                                         ; $4b10: $5f
  ld a, [hl]                                      ; $4b11: $7e
  cp e                                            ; $4b12: $bb
  jp nc, Jump_010_461c                            ; $4b13: $d2 $1c $46

  inc bc                                          ; $4b16: $03
  inc bc                                          ; $4b17: $03
  ld hl, $df9a                                    ; $4b18: $21 $9a $df
  ld a, c                                         ; $4b1b: $79
  ld [hl+], a                                     ; $4b1c: $22
  ld [hl], b                                      ; $4b1d: $70
  ret                                             ; $4b1e: $c9


  ld a, [$df9c]                                   ; $4b1f: $fa $9c $df
  ld e, a                                         ; $4b22: $5f
  ld d, $00                                       ; $4b23: $16 $00
  ld hl, $dff4                                    ; $4b25: $21 $f4 $df
  add hl, de                                      ; $4b28: $19
  jr jr_010_4b0e                                  ; $4b29: $18 $e3

  ld a, [bc]                                      ; $4b2b: $0a
  ld e, a                                         ; $4b2c: $5f
  inc bc                                          ; $4b2d: $03
  call Call_010_41a3                              ; $4b2e: $cd $a3 $41
  cp e                                            ; $4b31: $bb
  jp nc, Jump_010_461c                            ; $4b32: $d2 $1c $46

  inc bc                                          ; $4b35: $03
  inc bc                                          ; $4b36: $03
  ld hl, $df9a                                    ; $4b37: $21 $9a $df
  ld a, c                                         ; $4b3a: $79
  ld [hl+], a                                     ; $4b3b: $22
  ld [hl], b                                      ; $4b3c: $70
  ret                                             ; $4b3d: $c9


  ld a, [$df9c]                                   ; $4b3e: $fa $9c $df
  cp $02                                          ; $4b41: $fe $02
  jr nz, jr_010_4b5c                              ; $4b43: $20 $17

  xor a                                           ; $4b45: $af
  ld [$df74], a                                   ; $4b46: $ea $74 $df
  ld a, [bc]                                      ; $4b49: $0a
  call Call_010_5168                              ; $4b4a: $cd $68 $51
  bit 0, e                                        ; $4b4d: $cb $43
  jr nz, jr_010_4b68                              ; $4b4f: $20 $17

  call Call_010_4b7c                              ; $4b51: $cd $7c $4b
  call Call_010_4ba7                              ; $4b54: $cd $a7 $4b
  ld hl, $df74                                    ; $4b57: $21 $74 $df
  set 7, [hl]                                     ; $4b5a: $cb $fe

jr_010_4b5c:
  ld hl, $df9a                                    ; $4b5c: $21 $9a $df
  ld a, [hl]                                      ; $4b5f: $7e
  add $01                                         ; $4b60: $c6 $01
  ld [hl+], a                                     ; $4b62: $22
  ld a, [hl]                                      ; $4b63: $7e
  adc $00                                         ; $4b64: $ce $00
  ld [hl], a                                      ; $4b66: $77
  ret                                             ; $4b67: $c9


jr_010_4b68:
  call Call_010_4b7c                              ; $4b68: $cd $7c $4b
  xor a                                           ; $4b6b: $af
  ld [$df7b], a                                   ; $4b6c: $ea $7b $df
  ld [$df7c], a                                   ; $4b6f: $ea $7c $df
  call Call_010_4bd0                              ; $4b72: $cd $d0 $4b
  ld hl, $df74                                    ; $4b75: $21 $74 $df
  set 6, [hl]                                     ; $4b78: $cb $f6
  jr jr_010_4b5c                                  ; $4b7a: $18 $e0

Call_010_4b7c:
  ld [$df75], a                                   ; $4b7c: $ea $75 $df
  call Call_000_3bbc                              ; $4b7f: $cd $bc $3b
  bit 7, h                                        ; $4b82: $cb $7c
  jr z, jr_010_4b8f                               ; $4b84: $28 $09

  ld h, $40                                       ; $4b86: $26 $40
  ld a, [$df75]                                   ; $4b88: $fa $75 $df
  inc a                                           ; $4b8b: $3c
  ld [$df75], a                                   ; $4b8c: $ea $75 $df

jr_010_4b8f:
  push hl                                         ; $4b8f: $e5
  ld hl, $df78                                    ; $4b90: $21 $78 $df
  ld a, c                                         ; $4b93: $79
  ld [hl+], a                                     ; $4b94: $22
  ld a, b                                         ; $4b95: $78
  ld [hl+], a                                     ; $4b96: $22
  ld [hl], $00                                    ; $4b97: $36 $00
  ld hl, $df76                                    ; $4b99: $21 $76 $df
  pop bc                                          ; $4b9c: $c1
  ld a, c                                         ; $4b9d: $79
  ld [hl+], a                                     ; $4b9e: $22
  ld [hl], b                                      ; $4b9f: $70
  ld a, $ff                                       ; $4ba0: $3e $ff
  ld c, $02                                       ; $4ba2: $0e $02
  jp Jump_010_50f3                                ; $4ba4: $c3 $f3 $50


Call_010_4ba7:
  ld hl, $df0b                                    ; $4ba7: $21 $0b $df
  set 5, [hl]                                     ; $4baa: $cb $ee
  ld hl, $df19                                    ; $4bac: $21 $19 $df
  ld a, [$df04]                                   ; $4baf: $fa $04 $df
  cp $81                                          ; $4bb2: $fe $81
  jr nz, jr_010_4bc1                              ; $4bb4: $20 $0b

  ldh a, [rKEY1]                                  ; $4bb6: $f0 $4d
  bit 7, a                                        ; $4bb8: $cb $7f
  jr z, jr_010_4bc1                               ; $4bba: $28 $05

  ld de, $2a7b                                    ; $4bbc: $11 $7b $2a
  jr jr_010_4bc4                                  ; $4bbf: $18 $03

jr_010_4bc1:
  ld de, $2a88                                    ; $4bc1: $11 $88 $2a

jr_010_4bc4:
  ld a, e                                         ; $4bc4: $7b
  sub [hl]                                        ; $4bc5: $96
  inc hl                                          ; $4bc6: $23
  ld e, a                                         ; $4bc7: $5f
  ld a, d                                         ; $4bc8: $7a
  sbc [hl]                                        ; $4bc9: $9e
  ld hl, $df28                                    ; $4bca: $21 $28 $df
  ld [hl-], a                                     ; $4bcd: $32
  ld [hl], e                                      ; $4bce: $73
  ret                                             ; $4bcf: $c9


Call_010_4bd0:
  ld hl, $df0b                                    ; $4bd0: $21 $0b $df
  set 5, [hl]                                     ; $4bd3: $cb $ee
  ld hl, $df19                                    ; $4bd5: $21 $19 $df
  ld de, $47b4                                    ; $4bd8: $11 $b4 $47
  ld a, e                                         ; $4bdb: $7b
  sub [hl]                                        ; $4bdc: $96
  inc hl                                          ; $4bdd: $23
  ld e, a                                         ; $4bde: $5f
  ld a, d                                         ; $4bdf: $7a
  sbc [hl]                                        ; $4be0: $9e
  ld hl, $df28                                    ; $4be1: $21 $28 $df
  ld [hl-], a                                     ; $4be4: $32
  ld [hl], e                                      ; $4be5: $73
  ld a, [$df04]                                   ; $4be6: $fa $04 $df
  cp $81                                          ; $4be9: $fe $81
  jr nz, jr_010_4bfb                              ; $4beb: $20 $0e

  ldh a, [rKEY1]                                  ; $4bed: $f0 $4d
  bit 7, a                                        ; $4bef: $cb $7f
  jr z, jr_010_4bfb                               ; $4bf1: $28 $08

  ld a, $07                                       ; $4bf3: $3e $07
  ldh [rTAC], a                                   ; $4bf5: $e0 $07
  ld a, $80                                       ; $4bf7: $3e $80
  jr jr_010_4c01                                  ; $4bf9: $18 $06

jr_010_4bfb:
  ld a, $06                                       ; $4bfb: $3e $06
  ldh [rTAC], a                                   ; $4bfd: $e0 $07
  ld a, $00                                       ; $4bff: $3e $00

jr_010_4c01:
  ld [$df08], a                                   ; $4c01: $ea $08 $df
  ldh [rTIMA], a                                  ; $4c04: $e0 $05
  ldh [rTMA], a                                   ; $4c06: $e0 $06
  ldh a, [rIF]                                    ; $4c08: $f0 $0f
  and $1b                                         ; $4c0a: $e6 $1b
  ldh [rIF], a                                    ; $4c0c: $e0 $0f
  ldh a, [rIE]                                    ; $4c0e: $f0 $ff
  or $04                                          ; $4c10: $f6 $04
  ldh [rIE], a                                    ; $4c12: $e0 $ff
  ret                                             ; $4c14: $c9


  ld a, [$df9c]                                   ; $4c15: $fa $9c $df
  cp $02                                          ; $4c18: $fe $02
  ret nz                                          ; $4c1a: $c0

  xor a                                           ; $4c1b: $af
  ld [$df74], a                                   ; $4c1c: $ea $74 $df
  ld a, [$5a92]                                   ; $4c1f: $fa $92 $5a
  and a                                           ; $4c22: $a7
  jr z, jr_010_4c44                               ; $4c23: $28 $1f

  ld b, a                                         ; $4c25: $47
  ld a, [$df1a]                                   ; $4c26: $fa $1a $df
  cp b                                            ; $4c29: $b8
  ret nc                                          ; $4c2a: $d0

  ld c, a                                         ; $4c2b: $4f
  ld hl, $5a90                                    ; $4c2c: $21 $90 $5a
  ld a, [hl+]                                     ; $4c2f: $2a
  ld h, [hl]                                      ; $4c30: $66
  ld l, a                                         ; $4c31: $6f
  ld de, $5a87                                    ; $4c32: $11 $87 $5a
  add hl, de                                      ; $4c35: $19
  ld b, $00                                       ; $4c36: $06 $00
  add hl, bc                                      ; $4c38: $09
  ld a, [$5a8e]                                   ; $4c39: $fa $8e $5a
  and a                                           ; $4c3c: $a7
  ret z                                           ; $4c3d: $c8

  ld b, a                                         ; $4c3e: $47
  ld a, [hl]                                      ; $4c3f: $7e
  cp b                                            ; $4c40: $b8
  jr c, jr_010_4c4f                               ; $4c41: $38 $0c

  ret                                             ; $4c43: $c9


jr_010_4c44:
  ld a, [$5a8e]                                   ; $4c44: $fa $8e $5a
  and a                                           ; $4c47: $a7
  ret z                                           ; $4c48: $c8

  ld b, a                                         ; $4c49: $47
  ld a, [$df1a]                                   ; $4c4a: $fa $1a $df
  cp b                                            ; $4c4d: $b8
  ret nc                                          ; $4c4e: $d0

jr_010_4c4f:
  call Call_010_5168                              ; $4c4f: $cd $68 $51
  bit 0, e                                        ; $4c52: $cb $43
  jr nz, jr_010_4c63                              ; $4c54: $20 $0d

  call Call_010_4b7c                              ; $4c56: $cd $7c $4b
  ld hl, $df74                                    ; $4c59: $21 $74 $df
  set 7, [hl]                                     ; $4c5c: $cb $fe
  call Call_010_4ba7                              ; $4c5e: $cd $a7 $4b
  jr jr_010_4c75                                  ; $4c61: $18 $12

jr_010_4c63:
  call Call_010_4b7c                              ; $4c63: $cd $7c $4b
  xor a                                           ; $4c66: $af
  ld [$df7b], a                                   ; $4c67: $ea $7b $df
  ld [$df7c], a                                   ; $4c6a: $ea $7c $df
  call Call_010_4bd0                              ; $4c6d: $cd $d0 $4b
  ld hl, $df74                                    ; $4c70: $21 $74 $df
  set 6, [hl]                                     ; $4c73: $cb $f6

jr_010_4c75:
  ld a, $ff                                       ; $4c75: $3e $ff
  ld c, $02                                       ; $4c77: $0e $02
  jp Jump_010_50f3                                ; $4c79: $c3 $f3 $50


  ld a, [bc]                                      ; $4c7c: $0a
  inc bc                                          ; $4c7d: $03
  ld d, a                                         ; $4c7e: $57
  ld a, [bc]                                      ; $4c7f: $0a
  inc bc                                          ; $4c80: $03
  ld e, a                                         ; $4c81: $5f
  ld hl, $df9a                                    ; $4c82: $21 $9a $df
  ld a, c                                         ; $4c85: $79
  ld [hl+], a                                     ; $4c86: $22
  ld [hl], b                                      ; $4c87: $70
  ld a, [$df9c]                                   ; $4c88: $fa $9c $df
  cp $03                                          ; $4c8b: $fe $03
  ret z                                           ; $4c8d: $c8

  ld c, a                                         ; $4c8e: $4f
  ld b, $00                                       ; $4c8f: $06 $00
  ld hl, $df09                                    ; $4c91: $21 $09 $df
  add hl, bc                                      ; $4c94: $09
  set 5, [hl]                                     ; $4c95: $cb $ee
  ld hl, $dfe0                                    ; $4c97: $21 $e0 $df
  add hl, bc                                      ; $4c9a: $09
  ld a, d                                         ; $4c9b: $7a
  add [hl]                                        ; $4c9c: $86
  ld d, a                                         ; $4c9d: $57
  sla c                                           ; $4c9e: $cb $21
  ld hl, $df15                                    ; $4ca0: $21 $15 $df
  add hl, bc                                      ; $4ca3: $09
  ld a, e                                         ; $4ca4: $7b
  sub [hl]                                        ; $4ca5: $96
  inc hl                                          ; $4ca6: $23
  ld e, a                                         ; $4ca7: $5f
  ld a, d                                         ; $4ca8: $7a
  sbc [hl]                                        ; $4ca9: $9e
  ld hl, $df24                                    ; $4caa: $21 $24 $df
  add hl, bc                                      ; $4cad: $09
  ld [hl-], a                                     ; $4cae: $32
  ld [hl], e                                      ; $4caf: $73
  ret                                             ; $4cb0: $c9


  ld a, [bc]                                      ; $4cb1: $0a
  ld e, a                                         ; $4cb2: $5f
  inc bc                                          ; $4cb3: $03
  ld a, [bc]                                      ; $4cb4: $0a
  ld d, a                                         ; $4cb5: $57
  inc bc                                          ; $4cb6: $03
  ld hl, $df9a                                    ; $4cb7: $21 $9a $df
  ld a, c                                         ; $4cba: $79
  ld [hl+], a                                     ; $4cbb: $22
  ld [hl], b                                      ; $4cbc: $70
  ld a, [$df9c]                                   ; $4cbd: $fa $9c $df
  ld c, a                                         ; $4cc0: $4f
  ld b, $00                                       ; $4cc1: $06 $00
  ld hl, $dfe4                                    ; $4cc3: $21 $e4 $df
  add hl, bc                                      ; $4cc6: $09
  ld a, d                                         ; $4cc7: $7a
  ld d, [hl]                                      ; $4cc8: $56
  ld hl, $df09                                    ; $4cc9: $21 $09 $df
  add hl, bc                                      ; $4ccc: $09
  bit 1, [hl]                                     ; $4ccd: $cb $4e
  push af                                         ; $4ccf: $f5
  ld hl, $df9d                                    ; $4cd0: $21 $9d $df
  add hl, bc                                      ; $4cd3: $09
  ld a, [hl]                                      ; $4cd4: $7e
  ld hl, $dff4                                    ; $4cd5: $21 $f4 $df
  add hl, bc                                      ; $4cd8: $09
  ld c, e                                         ; $4cd9: $4b
  ld b, a                                         ; $4cda: $47
  pop af                                          ; $4cdb: $f1
  ld e, [hl]                                      ; $4cdc: $5e
  jr z, jr_010_4ceb                               ; $4cdd: $28 $0c

  call Call_010_4f13                              ; $4cdf: $cd $13 $4f
  ret z                                           ; $4ce2: $c8

  ld hl, $df09                                    ; $4ce3: $21 $09 $df
  add hl, bc                                      ; $4ce6: $09
  set 1, [hl]                                     ; $4ce7: $cb $ce
  jr jr_010_4cef                                  ; $4ce9: $18 $04

jr_010_4ceb:
  call Call_010_4f18                              ; $4ceb: $cd $18 $4f
  ret z                                           ; $4cee: $c8

jr_010_4cef:
  ld a, [$df9c]                                   ; $4cef: $fa $9c $df
  cp c                                            ; $4cf2: $b9
  ret nz                                          ; $4cf3: $c0

  sla c                                           ; $4cf4: $cb $21
  ld hl, $df7e                                    ; $4cf6: $21 $7e $df
  add hl, bc                                      ; $4cf9: $09
  ld a, [hl+]                                     ; $4cfa: $2a
  ld e, [hl]                                      ; $4cfb: $5e
  ld hl, $df9a                                    ; $4cfc: $21 $9a $df
  ld [hl+], a                                     ; $4cff: $22
  ld [hl], e                                      ; $4d00: $73
  ret                                             ; $4d01: $c9


  ld l, c                                         ; $4d02: $69
  ld h, b                                         ; $4d03: $60
  ld a, [hl+]                                     ; $4d04: $2a
  ld b, a                                         ; $4d05: $47
  ld a, [hl+]                                     ; $4d06: $2a
  ld c, a                                         ; $4d07: $4f
  ld a, [hl+]                                     ; $4d08: $2a
  ld d, a                                         ; $4d09: $57
  ld a, [hl+]                                     ; $4d0a: $2a
  ld e, a                                         ; $4d0b: $5f
  ld a, l                                         ; $4d0c: $7d
  ld [$df9a], a                                   ; $4d0d: $ea $9a $df
  ld a, h                                         ; $4d10: $7c
  ld [$df9b], a                                   ; $4d11: $ea $9b $df
  ld a, [$df9c]                                   ; $4d14: $fa $9c $df
  cp $03                                          ; $4d17: $fe $03
  ret nc                                          ; $4d19: $d0

  push de                                         ; $4d1a: $d5
  push bc                                         ; $4d1b: $c5
  ld e, a                                         ; $4d1c: $5f
  sla e                                           ; $4d1d: $cb $23
  ld d, $00                                       ; $4d1f: $16 $00
  ld hl, $df15                                    ; $4d21: $21 $15 $df
  add hl, de                                      ; $4d24: $19
  ld a, [hl+]                                     ; $4d25: $2a
  ld b, [hl]                                      ; $4d26: $46
  ld c, a                                         ; $4d27: $4f
  pop hl                                          ; $4d28: $e1
  add hl, bc                                      ; $4d29: $09
  ld c, l                                         ; $4d2a: $4d
  ld b, h                                         ; $4d2b: $44
  push bc                                         ; $4d2c: $c5
  ld hl, $df29                                    ; $4d2d: $21 $29 $df
  add hl, de                                      ; $4d30: $19
  ld a, [hl+]                                     ; $4d31: $2a
  ld b, [hl]                                      ; $4d32: $46
  ld hl, $df15                                    ; $4d33: $21 $15 $df
  add hl, de                                      ; $4d36: $19
  ld [hl+], a                                     ; $4d37: $22
  ld [hl], b                                      ; $4d38: $70
  pop bc                                          ; $4d39: $c1
  pop de                                          ; $4d3a: $d1
  ld a, [$df9c]                                   ; $4d3b: $fa $9c $df
  jp Jump_010_52e4                                ; $4d3e: $c3 $e4 $52


  ld a, [$df9c]                                   ; $4d41: $fa $9c $df
  ld e, a                                         ; $4d44: $5f
  ld d, $00                                       ; $4d45: $16 $00
  ld hl, $df0d                                    ; $4d47: $21 $0d $df
  add hl, de                                      ; $4d4a: $19
  ld a, [hl]                                      ; $4d4b: $7e
  and $f0                                         ; $4d4c: $e6 $f0
  or $31                                          ; $4d4e: $f6 $31
  ld [hl], a                                      ; $4d50: $77
  xor a                                           ; $4d51: $af
  ld hl, $df70                                    ; $4d52: $21 $70 $df
  add hl, de                                      ; $4d55: $19
  ld [hl], $00                                    ; $4d56: $36 $00
  sla e                                           ; $4d58: $cb $23
  ld hl, $df60                                    ; $4d5a: $21 $60 $df
  add hl, de                                      ; $4d5d: $19
  ld [hl+], a                                     ; $4d5e: $22
  ld [hl], a                                      ; $4d5f: $77
  ld l, c                                         ; $4d60: $69
  ld h, b                                         ; $4d61: $60
  ld a, [hl+]                                     ; $4d62: $2a
  ld c, [hl]                                      ; $4d63: $4e
  ld hl, $df69                                    ; $4d64: $21 $69 $df
  add hl, de                                      ; $4d67: $19
  ld [hl-], a                                     ; $4d68: $32
  ld [hl], c                                      ; $4d69: $71
  ld hl, $df9a                                    ; $4d6a: $21 $9a $df
  ld a, [hl]                                      ; $4d6d: $7e
  add $02                                         ; $4d6e: $c6 $02
  ld [hl+], a                                     ; $4d70: $22
  ld a, [hl]                                      ; $4d71: $7e
  adc $00                                         ; $4d72: $ce $00
  ld [hl], a                                      ; $4d74: $77
  ret                                             ; $4d75: $c9


  ld a, [$df9c]                                   ; $4d76: $fa $9c $df
  ld e, a                                         ; $4d79: $5f
  ld d, $00                                       ; $4d7a: $16 $00
  ld hl, $df9d                                    ; $4d7c: $21 $9d $df
  add hl, de                                      ; $4d7f: $19
  ld a, [bc]                                      ; $4d80: $0a
  inc bc                                          ; $4d81: $03
  and a                                           ; $4d82: $a7
  ld a, [bc]                                      ; $4d83: $0a
  jr nz, jr_010_4d97                              ; $4d84: $20 $11

  ld e, a                                         ; $4d86: $5f
  ld a, [hl]                                      ; $4d87: $7e
  bit 7, e                                        ; $4d88: $cb $7b
  jr nz, jr_010_4d93                              ; $4d8a: $20 $07

  add e                                           ; $4d8c: $83
  jr nc, jr_010_4d97                              ; $4d8d: $30 $08

  ld a, $ff                                       ; $4d8f: $3e $ff
  jr jr_010_4d97                                  ; $4d91: $18 $04

jr_010_4d93:
  sub e                                           ; $4d93: $93
  jr nc, jr_010_4d97                              ; $4d94: $30 $01

  xor a                                           ; $4d96: $af

jr_010_4d97:
  ld [hl], a                                      ; $4d97: $77
  ld hl, $df9a                                    ; $4d98: $21 $9a $df
  ld a, [hl]                                      ; $4d9b: $7e
  add $02                                         ; $4d9c: $c6 $02
  ld [hl+], a                                     ; $4d9e: $22
  ld a, [hl]                                      ; $4d9f: $7e
  adc $00                                         ; $4da0: $ce $00
  ld [hl], a                                      ; $4da2: $77
  ret                                             ; $4da3: $c9


  db $5f, $45, $8b, $48

  ld l, d                                         ; $4da8: $6a
  ld c, b                                         ; $4da9: $48

  db $a5, $48, $7e, $45, $ee, $45, $1c, $46, $3c, $48, $e9, $47, $54, $46, $9c, $46
  db $19, $47, $ec, $46, $12, $47

  halt                                            ; $4dc0: $76
  ld b, l                                         ; $4dc1: $45
  dec l                                           ; $4dc2: $2d
  ld b, [hl]                                      ; $4dc3: $46

  db $c6, $48

  ccf                                             ; $4dc6: $3f
  ld c, c                                         ; $4dc7: $49
  db $d3                                          ; $4dc8: $d3
  ld c, b                                         ; $4dc9: $48

  db $75, $49

  ld a, h                                         ; $4dcc: $7c
  ld c, h                                         ; $4dcd: $4c
  ld [bc], a                                      ; $4dce: $02
  ld c, e                                         ; $4dcf: $4b
  dec hl                                          ; $4dd0: $2b
  ld c, e                                         ; $4dd1: $4b
  rra                                             ; $4dd2: $1f
  ld c, e                                         ; $4dd3: $4b
  ld h, h                                         ; $4dd4: $64
  ld c, d                                         ; $4dd5: $4a
  adc d                                           ; $4dd6: $8a
  ld c, d                                         ; $4dd7: $4a
  ret z                                           ; $4dd8: $c8

  ld c, d                                         ; $4dd9: $4a
  ld [bc], a                                      ; $4dda: $02
  ld c, l                                         ; $4ddb: $4d
  halt                                            ; $4ddc: $76
  ld c, l                                         ; $4ddd: $4d
  xor a                                           ; $4dde: $af
  ld c, c                                         ; $4ddf: $49

  db $f8, $49, $9a, $4a

  or a                                            ; $4de4: $b7
  ld c, d                                         ; $4de5: $4a

  db $3e, $4b

  dec d                                           ; $4de8: $15
  ld c, h                                         ; $4de9: $4c
  ld e, a                                         ; $4dea: $5f
  ld b, l                                         ; $4deb: $45

  db $28, $4a

  ld e, a                                         ; $4dee: $5f
  ld c, d                                         ; $4def: $4a

  db $b1, $4c

  ld b, c                                         ; $4df2: $41
  ld c, l                                         ; $4df3: $4d

  db $81, $46

  halt                                            ; $4df6: $76
  ld c, l                                         ; $4df7: $4d

Call_010_4df8:
  ld e, a                                         ; $4df8: $5f
  ld a, d                                         ; $4df9: $7a
  ld [$dffe], a                                   ; $4dfa: $ea $fe $df
  ld d, $00                                       ; $4dfd: $16 $00
  sla e                                           ; $4dff: $cb $23
  rl d                                            ; $4e01: $cb $12
  ld hl, $5a96                                    ; $4e03: $21 $96 $5a
  add hl, de                                      ; $4e06: $19
  ld a, [hl+]                                     ; $4e07: $2a
  ld e, a                                         ; $4e08: $5f
  ld a, [hl-]                                     ; $4e09: $3a
  ld d, a                                         ; $4e0a: $57
  ld hl, $5a96                                    ; $4e0b: $21 $96 $5a
  add hl, de                                      ; $4e0e: $19
  ld a, [hl]                                      ; $4e0f: $7e
  cp $0e                                          ; $4e10: $fe $0e
  jr nz, jr_010_4e4b                              ; $4e12: $20 $37

  inc hl                                          ; $4e14: $23
  ld a, [hl+]                                     ; $4e15: $2a
  bit 4, a                                        ; $4e16: $cb $67
  jr z, jr_010_4e43                               ; $4e18: $28 $29

  and $80                                         ; $4e1a: $e6 $80
  ld e, a                                         ; $4e1c: $5f
  ld a, [$dfa6]                                   ; $4e1d: $fa $a6 $df
  bit 6, a                                        ; $4e20: $cb $77
  jr nz, jr_010_4e32                              ; $4e22: $20 $0e

  set 6, a                                        ; $4e24: $cb $f7
  ld d, a                                         ; $4e26: $57
  ld a, c                                         ; $4e27: $79
  and $01                                         ; $4e28: $e6 $01
  sla a                                           ; $4e2a: $cb $27
  swap a                                          ; $4e2c: $cb $37
  or d                                            ; $4e2e: $b2
  ld [$dfa6], a                                   ; $4e2f: $ea $a6 $df

jr_010_4e32:
  ld d, a                                         ; $4e32: $57
  swap a                                          ; $4e33: $cb $37
  srl a                                           ; $4e35: $cb $3f
  and $01                                         ; $4e37: $e6 $01
  or e                                            ; $4e39: $b3
  ld c, a                                         ; $4e3a: $4f
  ld a, d                                         ; $4e3b: $7a
  xor $20                                         ; $4e3c: $ee $20
  ld [$dfa6], a                                   ; $4e3e: $ea $a6 $df
  jr jr_010_4e4b                                  ; $4e41: $18 $08

jr_010_4e43:
  cp $ff                                          ; $4e43: $fe $ff
  jr nz, jr_010_4e4a                              ; $4e45: $20 $03

  ld a, $80                                       ; $4e47: $3e $80
  or c                                            ; $4e49: $b1

jr_010_4e4a:
  ld c, a                                         ; $4e4a: $4f

Call_010_4e4b:
jr_010_4e4b:
  bit 7, c                                        ; $4e4b: $cb $79
  jp nz, Jump_010_4edc                            ; $4e4d: $c2 $dc $4e

  ld a, c                                         ; $4e50: $79
  cp $02                                          ; $4e51: $fe $02
  jr nz, jr_010_4e77                              ; $4e53: $20 $22

  ld a, [$df9f]                                   ; $4e55: $fa $9f $df
  ld e, a                                         ; $4e58: $5f
  ld a, b                                         ; $4e59: $78
  cp e                                            ; $4e5a: $bb
  jr c, jr_010_4e77                               ; $4e5b: $38 $1a

  ld a, [$df74]                                   ; $4e5d: $fa $74 $df
  bit 6, a                                        ; $4e60: $cb $77
  jr z, jr_010_4e73                               ; $4e62: $28 $0f

  xor a                                           ; $4e64: $af
  ldh [rTAC], a                                   ; $4e65: $e0 $07
  ldh a, [rIE]                                    ; $4e67: $f0 $ff
  and $1b                                         ; $4e69: $e6 $1b
  ldh [rIE], a                                    ; $4e6b: $e0 $ff
  ldh a, [rIF]                                    ; $4e6d: $f0 $0f
  and $1b                                         ; $4e6f: $e6 $1b
  ldh [rIF], a                                    ; $4e71: $e0 $0f

jr_010_4e73:
  xor a                                           ; $4e73: $af
  ld [$df74], a                                   ; $4e74: $ea $74 $df

jr_010_4e77:
  call Call_010_4edc                              ; $4e77: $cd $dc $4e
  ret z                                           ; $4e7a: $c8

  ld hl, $df70                                    ; $4e7b: $21 $70 $df
  add hl, bc                                      ; $4e7e: $09
  ld [hl], $0f                                    ; $4e7f: $36 $0f
  ld hl, $df09                                    ; $4e81: $21 $09 $df
  add hl, bc                                      ; $4e84: $09
  ld [hl], a                                      ; $4e85: $77
  ld hl, $df0d                                    ; $4e86: $21 $0d $df
  add hl, bc                                      ; $4e89: $09
  ld [hl], a                                      ; $4e8a: $77
  sla c                                           ; $4e8b: $cb $21
  ld a, c                                         ; $4e8d: $79
  cp $06                                          ; $4e8e: $fe $06
  jr z, jr_010_4ebd                               ; $4e90: $28 $2b

  ld a, [$dffe]                                   ; $4e92: $fa $fe $df
  and a                                           ; $4e95: $a7
  jr nz, jr_010_4eb0                              ; $4e96: $20 $18

  ld hl, $df15                                    ; $4e98: $21 $15 $df
  add hl, bc                                      ; $4e9b: $09
  ld a, [hl+]                                     ; $4e9c: $2a
  ld d, [hl]                                      ; $4e9d: $56
  ld e, a                                         ; $4e9e: $5f
  ld hl, $df23                                    ; $4e9f: $21 $23 $df
  add hl, bc                                      ; $4ea2: $09
  ld a, [hl+]                                     ; $4ea3: $2a
  ld h, [hl]                                      ; $4ea4: $66
  ld l, a                                         ; $4ea5: $6f
  add hl, de                                      ; $4ea6: $19
  ld e, l                                         ; $4ea7: $5d
  ld d, h                                         ; $4ea8: $54
  ld hl, $df29                                    ; $4ea9: $21 $29 $df
  add hl, bc                                      ; $4eac: $09
  ld a, e                                         ; $4ead: $7b
  ld [hl+], a                                     ; $4eae: $22
  ld [hl], d                                      ; $4eaf: $72

jr_010_4eb0:
  xor a                                           ; $4eb0: $af
  ld hl, $df1d                                    ; $4eb1: $21 $1d $df
  add hl, bc                                      ; $4eb4: $09
  ld [hl+], a                                     ; $4eb5: $22
  ld [hl], a                                      ; $4eb6: $77
  ld hl, $df23                                    ; $4eb7: $21 $23 $df
  add hl, bc                                      ; $4eba: $09
  ld [hl+], a                                     ; $4ebb: $22
  ld [hl], a                                      ; $4ebc: $77

jr_010_4ebd:
  xor a                                           ; $4ebd: $af
  ld hl, $df15                                    ; $4ebe: $21 $15 $df
  add hl, bc                                      ; $4ec1: $09
  ld [hl+], a                                     ; $4ec2: $22
  ld [hl], a                                      ; $4ec3: $77
  srl c                                           ; $4ec4: $cb $39
  push bc                                         ; $4ec6: $c5
  call Call_010_505a                              ; $4ec7: $cd $5a $50
  pop bc                                          ; $4eca: $c1
  ld hl, $4ed8                                    ; $4ecb: $21 $d8 $4e
  add hl, bc                                      ; $4ece: $09
  ld a, [$df11]                                   ; $4ecf: $fa $11 $df
  or [hl]                                         ; $4ed2: $b6
  ld [$df11], a                                   ; $4ed3: $ea $11 $df
  rlca                                            ; $4ed6: $07
  ret                                             ; $4ed7: $c9


  db $11, $22, $44, $88

Call_010_4edc:
Jump_010_4edc:
  push hl                                         ; $4edc: $e5
  ld a, b                                         ; $4edd: $78
  res 7, c                                        ; $4ede: $cb $b9
  ld b, $00                                       ; $4ee0: $06 $00
  ld hl, $df9d                                    ; $4ee2: $21 $9d $df
  add hl, bc                                      ; $4ee5: $09
  cp [hl]                                         ; $4ee6: $be
  jr nc, jr_010_4eec                              ; $4ee7: $30 $03

  pop hl                                          ; $4ee9: $e1
  xor a                                           ; $4eea: $af
  ret                                             ; $4eeb: $c9


jr_010_4eec:
  ld [hl], a                                      ; $4eec: $77
  pop hl                                          ; $4eed: $e1
  ld a, l                                         ; $4eee: $7d
  ld d, h                                         ; $4eef: $54
  sla c                                           ; $4ef0: $cb $21
  ld hl, $df7e                                    ; $4ef2: $21 $7e $df
  add hl, bc                                      ; $4ef5: $09
  ld [hl+], a                                     ; $4ef6: $22
  ld [hl], d                                      ; $4ef7: $72
  xor a                                           ; $4ef8: $af
  ld hl, $df86                                    ; $4ef9: $21 $86 $df
  add hl, bc                                      ; $4efc: $09
  ld [hl+], a                                     ; $4efd: $22
  ld [hl], a                                      ; $4efe: $77
  ld hl, $df92                                    ; $4eff: $21 $92 $df
  add hl, bc                                      ; $4f02: $09
  ld [hl+], a                                     ; $4f03: $22
  ld [hl], a                                      ; $4f04: $77
  srl c                                           ; $4f05: $cb $39
  ld hl, $df8e                                    ; $4f07: $21 $8e $df
  add hl, bc                                      ; $4f0a: $09
  ld [hl], a                                      ; $4f0b: $77
  ld hl, $dfa1                                    ; $4f0c: $21 $a1 $df
  add hl, bc                                      ; $4f0f: $09
  ld [hl], a                                      ; $4f10: $77
  rlca                                            ; $4f11: $07
  ret                                             ; $4f12: $c9


Call_010_4f13:
  push de                                         ; $4f13: $d5
  ld d, $01                                       ; $4f14: $16 $01
  jr jr_010_4f1c                                  ; $4f16: $18 $04

Call_010_4f18:
  push de                                         ; $4f18: $d5
  ld b, $00                                       ; $4f19: $06 $00
  ld d, b                                         ; $4f1b: $50

jr_010_4f1c:
  call Call_010_4df8                              ; $4f1c: $cd $f8 $4d
  pop de                                          ; $4f1f: $d1
  ret z                                           ; $4f20: $c8

  ld hl, $df09                                    ; $4f21: $21 $09 $df
  add hl, bc                                      ; $4f24: $09
  res 1, [hl]                                     ; $4f25: $cb $8e
  set 5, [hl]                                     ; $4f27: $cb $ee
  ld hl, $df0d                                    ; $4f29: $21 $0d $df
  add hl, bc                                      ; $4f2c: $09
  set 5, [hl]                                     ; $4f2d: $cb $ee
  ld hl, $dff4                                    ; $4f2f: $21 $f4 $df
  add hl, bc                                      ; $4f32: $09
  ld [hl], e                                      ; $4f33: $73
  ld hl, $df16                                    ; $4f34: $21 $16 $df
  sla c                                           ; $4f37: $cb $21
  add hl, bc                                      ; $4f39: $09
  ld a, d                                         ; $4f3a: $7a
  ld [hl-], a                                     ; $4f3b: $32
  ld [hl], $00                                    ; $4f3c: $36 $00
  srl c                                           ; $4f3e: $cb $39
  rlca                                            ; $4f40: $07
  ret                                             ; $4f41: $c9


  ld hl, $5a8b                                    ; $4f42: $21 $8b $5a
  cp [hl]                                         ; $4f45: $be
  jp nc, Jump_010_4fd4                            ; $4f46: $d2 $d4 $4f

  ld e, a                                         ; $4f49: $5f
  ld d, $00                                       ; $4f4a: $16 $00
  sla e                                           ; $4f4c: $cb $23
  rl d                                            ; $4f4e: $cb $12
  sla e                                           ; $4f50: $cb $23
  rl d                                            ; $4f52: $cb $12
  ld hl, $5a89                                    ; $4f54: $21 $89 $5a
  ld a, [hl+]                                     ; $4f57: $2a
  ld h, [hl]                                      ; $4f58: $66
  ld l, a                                         ; $4f59: $6f
  add hl, de                                      ; $4f5a: $19
  ld de, $5a87                                    ; $4f5b: $11 $87 $5a
  add hl, de                                      ; $4f5e: $19
  push bc                                         ; $4f5f: $c5
  ld a, [hl+]                                     ; $4f60: $2a
  ld b, [hl]                                      ; $4f61: $46
  inc hl                                          ; $4f62: $23
  ld c, $00                                       ; $4f63: $0e $00
  ld d, $01                                       ; $4f65: $16 $01
  push hl                                         ; $4f67: $e5
  call Call_010_4df8                              ; $4f68: $cd $f8 $4d
  pop hl                                          ; $4f6b: $e1
  jr z, jr_010_4fd3                               ; $4f6c: $28 $65

  ld a, [hl+]                                     ; $4f6e: $2a
  ld d, a                                         ; $4f6f: $57
  ld e, [hl]                                      ; $4f70: $5e
  ld hl, $df09                                    ; $4f71: $21 $09 $df
  add hl, bc                                      ; $4f74: $09
  set 1, [hl]                                     ; $4f75: $cb $ce
  set 5, [hl]                                     ; $4f77: $cb $ee
  ld hl, $df0d                                    ; $4f79: $21 $0d $df
  add hl, bc                                      ; $4f7c: $09
  set 5, [hl]                                     ; $4f7d: $cb $ee
  ld hl, $df16                                    ; $4f7f: $21 $16 $df
  sla c                                           ; $4f82: $cb $21
  add hl, bc                                      ; $4f84: $09
  ld a, d                                         ; $4f85: $7a
  ld [hl-], a                                     ; $4f86: $32
  ld [hl], $00                                    ; $4f87: $36 $00
  srl c                                           ; $4f89: $cb $39
  ld a, e                                         ; $4f8b: $7b
  pop de                                          ; $4f8c: $d1
  bit 7, d                                        ; $4f8d: $cb $7a
  jr nz, jr_010_4f92                              ; $4f8f: $20 $01

  ld a, d                                         ; $4f91: $7a

jr_010_4f92:
  and $0f                                         ; $4f92: $e6 $0f
  push de                                         ; $4f94: $d5
  ld e, a                                         ; $4f95: $5f
  ld a, [$dff8]                                   ; $4f96: $fa $f8 $df
  swap a                                          ; $4f99: $cb $37
  and $0f                                         ; $4f9b: $e6 $0f
  call Call_010_5640                              ; $4f9d: $cd $40 $56
  pop de                                          ; $4fa0: $d1
  ld hl, $dff4                                    ; $4fa1: $21 $f4 $df
  add hl, bc                                      ; $4fa4: $09
  ld [hl], a                                      ; $4fa5: $77
  push bc                                         ; $4fa6: $c5
  ld a, c                                         ; $4fa7: $79
  ld [$df9c], a                                   ; $4fa8: $ea $9c $df
  ld a, e                                         ; $4fab: $7b
  cp $ff                                          ; $4fac: $fe $ff
  call nz, Call_010_4692                          ; $4fae: $c4 $92 $46
  ld a, [$dfa5]                                   ; $4fb1: $fa $a5 $df

jr_010_4fb4:
  inc a                                           ; $4fb4: $3c
  jr z, jr_010_4fb4                               ; $4fb5: $28 $fd

  ld hl, $dfa1                                    ; $4fb7: $21 $a1 $df
  cp [hl]                                         ; $4fba: $be
  jr z, jr_010_4fb4                               ; $4fbb: $28 $f7

  inc hl                                          ; $4fbd: $23
  cp [hl]                                         ; $4fbe: $be
  jr z, jr_010_4fb4                               ; $4fbf: $28 $f3

  inc hl                                          ; $4fc1: $23
  cp [hl]                                         ; $4fc2: $be
  jr z, jr_010_4fb4                               ; $4fc3: $28 $ef

  inc hl                                          ; $4fc5: $23
  cp [hl]                                         ; $4fc6: $be
  jr z, jr_010_4fb4                               ; $4fc7: $28 $eb

  ld [$dfa5], a                                   ; $4fc9: $ea $a5 $df
  ld hl, $dfa1                                    ; $4fcc: $21 $a1 $df
  pop bc                                          ; $4fcf: $c1
  add hl, bc                                      ; $4fd0: $09
  ld [hl], a                                      ; $4fd1: $77
  ret                                             ; $4fd2: $c9


jr_010_4fd3:
  pop bc                                          ; $4fd3: $c1

Jump_010_4fd4:
  xor a                                           ; $4fd4: $af
  ret                                             ; $4fd5: $c9


Call_010_4fd6:
  and a                                           ; $4fd6: $a7
  ret z                                           ; $4fd7: $c8

  ld hl, $dfa1                                    ; $4fd8: $21 $a1 $df
  ld c, $00                                       ; $4fdb: $0e $00
  ld b, a                                         ; $4fdd: $47

jr_010_4fde:
  ld a, [hl+]                                     ; $4fde: $2a
  cp b                                            ; $4fdf: $b8
  jr z, jr_010_4fe9                               ; $4fe0: $28 $07

  inc c                                           ; $4fe2: $0c
  bit 2, c                                        ; $4fe3: $cb $51
  jr z, jr_010_4fde                               ; $4fe5: $28 $f7

  xor a                                           ; $4fe7: $af
  ret                                             ; $4fe8: $c9


jr_010_4fe9:
  ld a, c                                         ; $4fe9: $79
  ld [$df9c], a                                   ; $4fea: $ea $9c $df
  rlca                                            ; $4fed: $07
  ret                                             ; $4fee: $c9


  call Call_010_4fd6                              ; $4fef: $cd $d6 $4f
  jp nz, Jump_010_48df                            ; $4ff2: $c2 $df $48

  ret                                             ; $4ff5: $c9


  call Call_010_4fd6                              ; $4ff6: $cd $d6 $4f
  jp nz, Jump_010_4848                            ; $4ff9: $c2 $48 $48

  ret                                             ; $4ffc: $c9


  call Call_010_4fd6                              ; $4ffd: $cd $d6 $4f
  jp nz, Jump_010_465d                            ; $5000: $c2 $5d $46

  ret                                             ; $5003: $c9


Call_010_5004:
  ld de, $0000                                    ; $5004: $11 $00 $00

jr_010_5007:
  ld hl, $df7e                                    ; $5007: $21 $7e $df
  add hl, de                                      ; $500a: $19
  ld a, [hl+]                                     ; $500b: $2a
  ld h, [hl]                                      ; $500c: $66
  ld l, a                                         ; $500d: $6f
  or h                                            ; $500e: $b4
  jr z, jr_010_5028                               ; $500f: $28 $17

  push de                                         ; $5011: $d5
  ld a, e                                         ; $5012: $7b
  srl a                                           ; $5013: $cb $3f
  ld [$df9c], a                                   ; $5015: $ea $9c $df
  call Call_010_5030                              ; $5018: $cd $30 $50
  pop de                                          ; $501b: $d1
  ld hl, $df7e                                    ; $501c: $21 $7e $df
  add hl, de                                      ; $501f: $19
  ld a, [$df9a]                                   ; $5020: $fa $9a $df
  ld [hl+], a                                     ; $5023: $22
  ld a, [$df9b]                                   ; $5024: $fa $9b $df
  ld [hl], a                                      ; $5027: $77

jr_010_5028:
  ld a, e                                         ; $5028: $7b
  cp $06                                          ; $5029: $fe $06
  ret z                                           ; $502b: $c8

  inc e                                           ; $502c: $1c
  inc e                                           ; $502d: $1c
  jr jr_010_5007                                  ; $502e: $18 $d7

Call_010_5030:
jr_010_5030:
  ld a, [hl+]                                     ; $5030: $2a
  cp $04                                          ; $5031: $fe $04
  push af                                         ; $5033: $f5
  ld c, l                                         ; $5034: $4d
  ld b, h                                         ; $5035: $44
  ld hl, $df9a                                    ; $5036: $21 $9a $df
  ld [hl], c                                      ; $5039: $71
  inc hl                                          ; $503a: $23
  ld [hl], b                                      ; $503b: $70
  ld hl, $4da4                                    ; $503c: $21 $a4 $4d
  sla a                                           ; $503f: $cb $27
  add l                                           ; $5041: $85
  ld l, a                                         ; $5042: $6f
  ld a, h                                         ; $5043: $7c
  adc $00                                         ; $5044: $ce $00
  ld h, a                                         ; $5046: $67
  ld a, [hl+]                                     ; $5047: $2a
  ld h, [hl]                                      ; $5048: $66
  ld l, a                                         ; $5049: $6f
  call Call_010_5059                              ; $504a: $cd $59 $50
  pop af                                          ; $504d: $f1
  ret z                                           ; $504e: $c8

  ld hl, $df9a                                    ; $504f: $21 $9a $df
  ld a, [hl+]                                     ; $5052: $2a
  ld h, [hl]                                      ; $5053: $66
  ld l, a                                         ; $5054: $6f
  or h                                            ; $5055: $b4
  jr nz, jr_010_5030                              ; $5056: $20 $d8

  ret                                             ; $5058: $c9


Call_010_5059:
  jp hl                                           ; $5059: $e9


Call_010_505a:
Jump_010_505a:
  ld b, $00                                       ; $505a: $06 $00
  ld hl, $df09                                    ; $505c: $21 $09 $df
  add hl, bc                                      ; $505f: $09
  res 7, [hl]                                     ; $5060: $cb $be
  ld hl, $5164                                    ; $5062: $21 $64 $51
  add hl, bc                                      ; $5065: $09
  ldh a, [rNR51]                                  ; $5066: $f0 $25
  and [hl]                                        ; $5068: $a6
  ldh [rNR51], a                                  ; $5069: $e0 $25
  ld a, [$df11]                                   ; $506b: $fa $11 $df
  and [hl]                                        ; $506e: $a6
  ld [$df11], a                                   ; $506f: $ea $11 $df
  ld a, c                                         ; $5072: $79
  cp $02                                          ; $5073: $fe $02
  jr nz, jr_010_507a                              ; $5075: $20 $03

  xor a                                           ; $5077: $af
  ldh [rNR30], a                                  ; $5078: $e0 $1a

jr_010_507a:
  xor a                                           ; $507a: $af
  ld b, $01                                       ; $507b: $06 $01

Call_010_507d:
  ld e, a                                         ; $507d: $5f
  ld a, c                                         ; $507e: $79
  cp $02                                          ; $507f: $fe $02
  ld a, e                                         ; $5081: $7b
  jr z, jr_010_50bb                               ; $5082: $28 $37

  ld d, $00                                       ; $5084: $16 $00
  ld e, c                                         ; $5086: $59
  ld hl, $df2f                                    ; $5087: $21 $2f $df
  add hl, de                                      ; $508a: $19
  ld [hl], a                                      ; $508b: $77
  ld c, a                                         ; $508c: $4f
  ld hl, $50e7                                    ; $508d: $21 $e7 $50
  add hl, de                                      ; $5090: $19
  bit 0, b                                        ; $5091: $cb $40
  ld b, c                                         ; $5093: $41
  ld c, [hl]                                      ; $5094: $4e
  jr nz, jr_010_50a0                              ; $5095: $20 $09

  ldh a, [c]                                      ; $5097: $f2
  and $0f                                         ; $5098: $e6 $0f
  swap b                                          ; $509a: $cb $30
  or b                                            ; $509c: $b0
  ldh [c], a                                      ; $509d: $e2
  jr jr_010_50a4                                  ; $509e: $18 $04

jr_010_50a0:
  ld a, b                                         ; $50a0: $78
  swap a                                          ; $50a1: $cb $37
  ldh [c], a                                      ; $50a3: $e2

jr_010_50a4:
  ld hl, $50eb                                    ; $50a4: $21 $eb $50
  add hl, de                                      ; $50a7: $19
  ld c, [hl]                                      ; $50a8: $4e
  ld hl, $df12                                    ; $50a9: $21 $12 $df
  add hl, de                                      ; $50ac: $19
  ld a, e                                         ; $50ad: $7b
  cp $03                                          ; $50ae: $fe $03
  jr z, jr_010_50b7                               ; $50b0: $28 $05

  ld a, $80                                       ; $50b2: $3e $80
  or [hl]                                         ; $50b4: $b6
  ldh [c], a                                      ; $50b5: $e2
  ret                                             ; $50b6: $c9


jr_010_50b7:
  ld a, $80                                       ; $50b7: $3e $80
  ldh [c], a                                      ; $50b9: $e2
  ret                                             ; $50ba: $c9


jr_010_50bb:
  and $0c                                         ; $50bb: $e6 $0c
  ld d, a                                         ; $50bd: $57
  ld a, [$df31]                                   ; $50be: $fa $31 $df
  and $0c                                         ; $50c1: $e6 $0c
  cp d                                            ; $50c3: $ba
  ld a, e                                         ; $50c4: $7b
  ld [$df31], a                                   ; $50c5: $ea $31 $df
  ret z                                           ; $50c8: $c8

  ld e, c                                         ; $50c9: $59
  ld c, a                                         ; $50ca: $4f
  ld d, $00                                       ; $50cb: $16 $00
  ld a, [$df74]                                   ; $50cd: $fa $74 $df
  bit 0, a                                        ; $50d0: $cb $47
  ret nz                                          ; $50d2: $c0

  ld b, $00                                       ; $50d3: $06 $00
  srl c                                           ; $50d5: $cb $39
  srl c                                           ; $50d7: $cb $39
  ld hl, $50ef                                    ; $50d9: $21 $ef $50
  add hl, bc                                      ; $50dc: $09
  ld b, [hl]                                      ; $50dd: $46
  ldh a, [rNR32]                                  ; $50de: $f0 $1c
  and $9f                                         ; $50e0: $e6 $9f
  or b                                            ; $50e2: $b0
  ldh [rNR32], a                                  ; $50e3: $e0 $1c
  jr jr_010_50a4                                  ; $50e5: $18 $bd

  db $12, $17

  inc e                                           ; $50e9: $1c

  db $21, $14, $19, $1e, $23, $00, $60, $40, $20

Call_010_50f3:
Jump_010_50f3:
  ld e, a                                         ; $50f3: $5f
  ld b, $00                                       ; $50f4: $06 $00
  ld a, c                                         ; $50f6: $79
  cp $03                                          ; $50f7: $fe $03
  jp z, Jump_010_5145                             ; $50f9: $ca $45 $51

  cp $02                                          ; $50fc: $fe $02
  jr z, jr_010_5122                               ; $50fe: $28 $22

  ld a, e                                         ; $5100: $7b
  cp $04                                          ; $5101: $fe $04
  jr nc, jr_010_5111                              ; $5103: $30 $0c

  ld hl, $515f                                    ; $5105: $21 $5f $51
  add hl, bc                                      ; $5108: $09
  ld l, [hl]                                      ; $5109: $6e
  ld h, $ff                                       ; $510a: $26 $ff
  rrc e                                           ; $510c: $cb $0b
  rrc e                                           ; $510e: $cb $0b
  ld [hl], e                                      ; $5110: $73

jr_010_5111:
  ld hl, $df12                                    ; $5111: $21 $12 $df
  add hl, bc                                      ; $5114: $09
  ld a, [hl]                                      ; $5115: $7e
  ld hl, $5161                                    ; $5116: $21 $61 $51
  add hl, bc                                      ; $5119: $09
  ld l, [hl]                                      ; $511a: $6e
  or $80                                          ; $511b: $f6 $80
  ld h, $ff                                       ; $511d: $26 $ff
  ld [hl], a                                      ; $511f: $77
  jr jr_010_5145                                  ; $5120: $18 $23

jr_010_5122:
  ld a, e                                         ; $5122: $7b
  cp $ff                                          ; $5123: $fe $ff
  jr z, jr_010_5132                               ; $5125: $28 $0b

  push bc                                         ; $5127: $c5
  call Call_010_5168                              ; $5128: $cd $68 $51
  ld [$df75], a                                   ; $512b: $ea $75 $df
  call Call_000_3baa                              ; $512e: $cd $aa $3b
  pop bc                                          ; $5131: $c1

jr_010_5132:
  ld d, c                                         ; $5132: $51
  ld hl, $df12                                    ; $5133: $21 $12 $df
  add hl, bc                                      ; $5136: $09
  ld a, $80                                       ; $5137: $3e $80
  ldh [rNR30], a                                  ; $5139: $e0 $1a
  ld a, [hl]                                      ; $513b: $7e
  ld c, $1e                                       ; $513c: $0e $1e
  or $80                                          ; $513e: $f6 $80
  ldh [c], a                                      ; $5140: $e2
  and $7f                                         ; $5141: $e6 $7f
  ldh [c], a                                      ; $5143: $e2
  ld c, d                                         ; $5144: $4a

Jump_010_5145:
jr_010_5145:
  ld hl, $df09                                    ; $5145: $21 $09 $df
  add hl, bc                                      ; $5148: $09
  set 7, [hl]                                     ; $5149: $cb $fe
  ld hl, $5164                                    ; $514b: $21 $64 $51
  add hl, bc                                      ; $514e: $09
  ld b, [hl]                                      ; $514f: $46
  ldh a, [rNR51]                                  ; $5150: $f0 $25
  and b                                           ; $5152: $a0
  ld c, a                                         ; $5153: $4f
  ld a, b                                         ; $5154: $78
  cpl                                             ; $5155: $2f
  ld b, a                                         ; $5156: $47
  ld a, [$df11]                                   ; $5157: $fa $11 $df
  and b                                           ; $515a: $a0
  or c                                            ; $515b: $b1
  ldh [rNR51], a                                  ; $515c: $e0 $25
  ret                                             ; $515e: $c9


  db $11, $16, $14, $19

  db $1e                                          ; $5163: $1e

  db $ee, $dd, $bb, $77

Call_010_5168:
  ld hl, $5a8c                                    ; $5168: $21 $8c $5a
  ld e, [hl]                                      ; $516b: $5e
  inc hl                                          ; $516c: $23
  ld d, [hl]                                      ; $516d: $56
  ld hl, $5a87                                    ; $516e: $21 $87 $5a
  add hl, de                                      ; $5171: $19
  ld d, $00                                       ; $5172: $16 $00
  ld e, a                                         ; $5174: $5f
  sla e                                           ; $5175: $cb $23
  rl d                                            ; $5177: $cb $12
  ld c, e                                         ; $5179: $4b
  ld b, d                                         ; $517a: $42
  sla e                                           ; $517b: $cb $23
  rl d                                            ; $517d: $cb $12
  add hl, de                                      ; $517f: $19
  add hl, bc                                      ; $5180: $09
  ld a, [hl+]                                     ; $5181: $2a
  ld e, a                                         ; $5182: $5f
  ld a, [hl+]                                     ; $5183: $2a
  ld d, a                                         ; $5184: $57
  push de                                         ; $5185: $d5
  ld a, [hl+]                                     ; $5186: $2a
  ld c, a                                         ; $5187: $4f
  ld a, [hl+]                                     ; $5188: $2a
  ld b, a                                         ; $5189: $47
  ld a, [hl+]                                     ; $518a: $2a
  ld e, a                                         ; $518b: $5f
  ld a, [$df00]                                   ; $518c: $fa $00 $df
  add [hl]                                        ; $518f: $86
  pop hl                                          ; $5190: $e1
  ret                                             ; $5191: $c9


Call_010_5192:
  push bc                                         ; $5192: $c5
  ld a, h                                         ; $5193: $7c

jr_010_5194:
  bit 7, a                                        ; $5194: $cb $7f
  jr z, jr_010_519c                               ; $5196: $28 $04

  add $54                                         ; $5198: $c6 $54
  jr jr_010_5194                                  ; $519a: $18 $f8

jr_010_519c:
  cp $54                                          ; $519c: $fe $54
  jr c, jr_010_51a4                               ; $519e: $38 $04

  sub $54                                         ; $51a0: $d6 $54
  jr jr_010_519c                                  ; $51a2: $18 $f8

jr_010_51a4:
  ld d, $00                                       ; $51a4: $16 $00
  ld e, a                                         ; $51a6: $5f
  ld a, l                                         ; $51a7: $7d
  and a                                           ; $51a8: $a7
  jr nz, jr_010_51c4                              ; $51a9: $20 $19

  sla e                                           ; $51ab: $cb $23
  ld hl, $51e6                                    ; $51ad: $21 $e6 $51
  add hl, de                                      ; $51b0: $19
  ld e, c                                         ; $51b1: $59
  ld a, [hl+]                                     ; $51b2: $2a
  ld b, [hl]                                      ; $51b3: $46

jr_010_51b4:
  ld hl, $df12                                    ; $51b4: $21 $12 $df
  add hl, de                                      ; $51b7: $19
  ld [hl], b                                      ; $51b8: $70
  ld hl, $51e1                                    ; $51b9: $21 $e1 $51
  add hl, de                                      ; $51bc: $19
  ld c, [hl]                                      ; $51bd: $4e
  ldh [c], a                                      ; $51be: $e2
  inc c                                           ; $51bf: $0c
  ld a, b                                         ; $51c0: $78
  ldh [c], a                                      ; $51c1: $e2
  pop bc                                          ; $51c2: $c1
  ret                                             ; $51c3: $c9


jr_010_51c4:
  ld hl, $5290                                    ; $51c4: $21 $90 $52
  add hl, de                                      ; $51c7: $19
  ld d, c                                         ; $51c8: $51
  ld c, [hl]                                      ; $51c9: $4e
  call $4000                                      ; $51ca: $cd $00 $40
  ld c, h                                         ; $51cd: $4c
  ld a, d                                         ; $51ce: $7a
  ld b, $00                                       ; $51cf: $06 $00
  ld d, b                                         ; $51d1: $50
  sla e                                           ; $51d2: $cb $23
  ld hl, $51e6                                    ; $51d4: $21 $e6 $51
  add hl, de                                      ; $51d7: $19
  ld e, a                                         ; $51d8: $5f
  ld a, [hl+]                                     ; $51d9: $2a
  ld h, [hl]                                      ; $51da: $66
  ld l, a                                         ; $51db: $6f
  add hl, bc                                      ; $51dc: $09
  ld a, l                                         ; $51dd: $7d
  ld b, h                                         ; $51de: $44
  jr jr_010_51b4                                  ; $51df: $18 $d3

  db $13, $18, $1d

  add d                                           ; $51e4: $82
  rlca                                            ; $51e5: $07

  db $82, $07, $89, $07, $90, $07, $96, $07, $9c, $07, $a2, $07, $a7, $07, $ac, $07
  db $b1, $07, $b5, $07, $b9, $07, $bd, $07, $c1, $07, $c4, $07, $c8, $07, $cb, $07
  db $ce, $07, $d1, $07, $d3, $07, $d6, $07, $d8, $07, $da, $07, $dc, $07, $de, $07
  db $e0, $07, $e2, $07, $e4, $07, $e5, $07, $e7, $07, $e8, $07, $e9, $07, $eb, $07
  db $ec, $07, $ed, $07, $ee, $07, $ef, $07, $2c, $00, $9c, $00, $06, $01, $6a, $01
  db $c9, $01, $22, $02, $76, $02, $c6, $02, $11, $03, $58, $03, $9b, $03, $da, $03
  db $16, $04, $4e, $04, $83, $04, $b5, $04, $e4, $04, $11, $05, $3b, $05, $63, $05
  db $88, $05, $ac, $05, $cd, $05, $ed, $05, $0b, $06, $27, $06, $41, $06, $5a, $06
  db $72, $06, $88, $06, $9d, $06, $b1, $06, $c4, $06, $d6, $06, $e6, $06, $f6, $06
  db $05, $07, $13, $07, $20, $07, $2d, $07, $39, $07, $44, $07, $4e, $07, $58, $07
  db $62, $07, $6b, $07, $73, $07, $7b, $07

  ld a, e                                         ; $528e: $7b
  rlca                                            ; $528f: $07

  db $07, $07, $06, $06, $06, $05, $05, $05, $04, $04, $04, $04, $03, $04, $03, $03
  db $03, $02, $03, $02, $02, $02, $02, $02, $02, $02, $01, $02, $01, $01, $02, $01
  db $01, $01, $01, $01, $70, $6a, $64, $5f, $59, $54, $50, $4b, $47, $43, $3f, $3c
  db $38, $35, $32, $2f, $2d, $2a, $28, $25, $24, $21, $20, $1e, $1c, $1a, $19, $18
  db $16, $15, $14, $13, $12, $10, $10, $0f, $0e, $0d, $0d, $0c, $0b, $0a, $0a, $0a
  db $09, $08, $08, $07

Call_010_52e4:
Jump_010_52e4:
  sla a                                           ; $52e4: $cb $27
  push af                                         ; $52e6: $f5
  bit 1, a                                        ; $52e7: $cb $4f
  jr z, jr_010_52f0                               ; $52e9: $28 $05

  ld hl, $df0a                                    ; $52eb: $21 $0a $df
  jr jr_010_52fc                                  ; $52ee: $18 $0c

jr_010_52f0:
  bit 2, a                                        ; $52f0: $cb $57
  jr z, jr_010_52f9                               ; $52f2: $28 $05

  ld hl, $df0b                                    ; $52f4: $21 $0b $df
  jr jr_010_52fc                                  ; $52f7: $18 $03

jr_010_52f9:
  ld hl, $df09                                    ; $52f9: $21 $09 $df

jr_010_52fc:
  res 0, [hl]                                     ; $52fc: $cb $86
  res 2, [hl]                                     ; $52fe: $cb $96
  res 3, [hl]                                     ; $5300: $cb $9e
  res 4, [hl]                                     ; $5302: $cb $a6
  ld hl, $df3a                                    ; $5304: $21 $3a $df
  add l                                           ; $5307: $85
  ld l, a                                         ; $5308: $6f
  ld a, h                                         ; $5309: $7c
  adc $00                                         ; $530a: $ce $00
  ld h, a                                         ; $530c: $67
  ld a, e                                         ; $530d: $7b
  ld [hl+], a                                     ; $530e: $22
  ld [hl], d                                      ; $530f: $72
  pop af                                          ; $5310: $f1
  ld d, $00                                       ; $5311: $16 $00
  ld e, a                                         ; $5313: $5f
  jr nc, jr_010_532a                              ; $5314: $30 $14

  push bc                                         ; $5316: $c5
  ld hl, $df15                                    ; $5317: $21 $15 $df
  add hl, de                                      ; $531a: $19
  ld a, c                                         ; $531b: $79
  add [hl]                                        ; $531c: $86
  ld c, a                                         ; $531d: $4f
  ld a, b                                         ; $531e: $78
  inc hl                                          ; $531f: $23
  adc [hl]                                        ; $5320: $8e
  ld hl, $df47                                    ; $5321: $21 $47 $df
  add hl, de                                      ; $5324: $19
  ld [hl-], a                                     ; $5325: $32
  ld [hl], c                                      ; $5326: $71
  pop bc                                          ; $5327: $c1
  jr jr_010_533c                                  ; $5328: $18 $12

jr_010_532a:
  ld hl, $df46                                    ; $532a: $21 $46 $df
  add hl, de                                      ; $532d: $19
  ld a, c                                         ; $532e: $79
  ld [hl+], a                                     ; $532f: $22
  ld [hl], b                                      ; $5330: $70
  ld hl, $df15                                    ; $5331: $21 $15 $df
  add hl, de                                      ; $5334: $19
  ld a, c                                         ; $5335: $79
  sub [hl]                                        ; $5336: $96
  ld c, a                                         ; $5337: $4f
  ld a, b                                         ; $5338: $78
  inc hl                                          ; $5339: $23
  sbc [hl]                                        ; $533a: $9e
  ld b, a                                         ; $533b: $47

jr_010_533c:
  ld hl, $df3a                                    ; $533c: $21 $3a $df
  add hl, de                                      ; $533f: $19
  bit 7, b                                        ; $5340: $cb $78
  jr nz, jr_010_534e                              ; $5342: $20 $0a

  ld a, [hl+]                                     ; $5344: $2a
  push bc                                         ; $5345: $c5
  ld b, [hl]                                      ; $5346: $46
  ld c, a                                         ; $5347: $4f
  pop hl                                          ; $5348: $e1
  call Call_010_40aa                              ; $5349: $cd $aa $40
  jr jr_010_536a                                  ; $534c: $18 $1c

jr_010_534e:
  ld a, c                                         ; $534e: $79
  cpl                                             ; $534f: $2f
  add $01                                         ; $5350: $c6 $01
  ld c, a                                         ; $5352: $4f
  ld a, b                                         ; $5353: $78
  cpl                                             ; $5354: $2f
  adc $00                                         ; $5355: $ce $00
  ld b, a                                         ; $5357: $47
  ld a, [hl+]                                     ; $5358: $2a
  push bc                                         ; $5359: $c5
  ld b, [hl]                                      ; $535a: $46
  ld c, a                                         ; $535b: $4f
  pop hl                                          ; $535c: $e1
  call Call_010_40aa                              ; $535d: $cd $aa $40
  ld a, l                                         ; $5360: $7d
  cpl                                             ; $5361: $2f
  add $01                                         ; $5362: $c6 $01
  ld l, a                                         ; $5364: $6f
  ld a, h                                         ; $5365: $7c
  cpl                                             ; $5366: $2f
  adc $00                                         ; $5367: $ce $00
  ld h, a                                         ; $5369: $67

jr_010_536a:
  ld a, l                                         ; $536a: $7d
  ld b, h                                         ; $536b: $44
  ld hl, $df34                                    ; $536c: $21 $34 $df
  add hl, de                                      ; $536f: $19
  ld [hl+], a                                     ; $5370: $22
  ld [hl], b                                      ; $5371: $70
  srl e                                           ; $5372: $cb $3b
  ld hl, $df09                                    ; $5374: $21 $09 $df
  add hl, de                                      ; $5377: $19
  set 2, [hl]                                     ; $5378: $cb $d6
  ret                                             ; $537a: $c9


Jump_010_537b:
  ld a, b                                         ; $537b: $78
  ld b, $00                                       ; $537c: $06 $00
  sla c                                           ; $537e: $cb $21
  ld hl, $df40                                    ; $5380: $21 $40 $df
  add hl, bc                                      ; $5383: $09
  ld [hl], a                                      ; $5384: $77
  ld hl, $df3a                                    ; $5385: $21 $3a $df
  add hl, bc                                      ; $5388: $09
  srl a                                           ; $5389: $cb $3f
  jr nz, jr_010_538e                              ; $538b: $20 $01

  inc a                                           ; $538d: $3c

jr_010_538e:
  ld [hl], a                                      ; $538e: $77
  ld hl, $df34                                    ; $538f: $21 $34 $df
  add hl, bc                                      ; $5392: $09
  ld a, e                                         ; $5393: $7b
  ld [hl+], a                                     ; $5394: $22
  ld [hl], d                                      ; $5395: $72
  ld hl, $df46                                    ; $5396: $21 $46 $df
  add hl, bc                                      ; $5399: $09
  xor a                                           ; $539a: $af
  ld [hl+], a                                     ; $539b: $22
  ld [hl], a                                      ; $539c: $77
  srl c                                           ; $539d: $cb $39
  ld hl, $df09                                    ; $539f: $21 $09 $df
  add hl, bc                                      ; $53a2: $09
  ld a, [hl]                                      ; $53a3: $7e
  and $e2                                         ; $53a4: $e6 $e2
  or $01                                          ; $53a6: $f6 $01
  ld [hl], a                                      ; $53a8: $77
  ret                                             ; $53a9: $c9


Call_010_53aa:
  bit 7, a                                        ; $53aa: $cb $7f
  res 7, a                                        ; $53ac: $cb $bf
  push af                                         ; $53ae: $f5
  push de                                         ; $53af: $d5
  ld hl, $df09                                    ; $53b0: $21 $09 $df
  ld d, $00                                       ; $53b3: $16 $00
  ld e, a                                         ; $53b5: $5f
  add hl, de                                      ; $53b6: $19
  ld a, [hl]                                      ; $53b7: $7e
  jr nz, jr_010_53bf                              ; $53b8: $20 $05

  and $f2                                         ; $53ba: $e6 $f2
  ld [hl], a                                      ; $53bc: $77
  jr jr_010_53c6                                  ; $53bd: $18 $07

jr_010_53bf:
  and $ea                                         ; $53bf: $e6 $ea
  ld [hl], a                                      ; $53c1: $77
  ld a, e                                         ; $53c2: $7b
  add $03                                         ; $53c3: $c6 $03
  ld e, a                                         ; $53c5: $5f

jr_010_53c6:
  sla e                                           ; $53c6: $cb $23
  ld hl, $df34                                    ; $53c8: $21 $34 $df
  add hl, de                                      ; $53cb: $19
  ld a, c                                         ; $53cc: $79
  ld [hl+], a                                     ; $53cd: $22
  ld [hl], b                                      ; $53ce: $70
  pop bc                                          ; $53cf: $c1
  ld hl, $df40                                    ; $53d0: $21 $40 $df
  add hl, de                                      ; $53d3: $19
  ld a, c                                         ; $53d4: $79
  ld [hl+], a                                     ; $53d5: $22
  ld [hl], b                                      ; $53d6: $70
  ld hl, $df4c                                    ; $53d7: $21 $4c $df
  add hl, de                                      ; $53da: $19
  xor a                                           ; $53db: $af
  ld [hl+], a                                     ; $53dc: $22
  ld [hl], a                                      ; $53dd: $77
  pop af                                          ; $53de: $f1
  ld e, a                                         ; $53df: $5f
  ld hl, $df09                                    ; $53e0: $21 $09 $df
  add hl, de                                      ; $53e3: $19
  jr nz, jr_010_53e9                              ; $53e4: $20 $03

  set 3, [hl]                                     ; $53e6: $cb $de
  ret                                             ; $53e8: $c9


jr_010_53e9:
  set 4, [hl]                                     ; $53e9: $cb $e6
  ret                                             ; $53eb: $c9


Call_010_53ec:
  ld bc, $0003                                    ; $53ec: $01 $03 $00
  ld hl, $df0b                                    ; $53ef: $21 $0b $df

jr_010_53f2:
  bit 2, [hl]                                     ; $53f2: $cb $56
  jr nz, jr_010_5409                              ; $53f4: $20 $13

  bit 0, [hl]                                     ; $53f6: $cb $46
  jr nz, jr_010_5446                              ; $53f8: $20 $4c

  bit 3, [hl]                                     ; $53fa: $cb $5e
  jp nz, Jump_010_548b                            ; $53fc: $c2 $8b $54

Jump_010_53ff:
  bit 4, [hl]                                     ; $53ff: $cb $66
  jp nz, Jump_010_54a4                            ; $5401: $c2 $a4 $54

Jump_010_5404:
jr_010_5404:
  dec hl                                          ; $5404: $2b
  dec c                                           ; $5405: $0d
  jr nz, jr_010_53f2                              ; $5406: $20 $ea

  ret                                             ; $5408: $c9


jr_010_5409:
  push bc                                         ; $5409: $c5
  push hl                                         ; $540a: $e5
  dec c                                           ; $540b: $0d
  sla c                                           ; $540c: $cb $21
  set 5, [hl]                                     ; $540e: $cb $ee
  ld hl, $df3b                                    ; $5410: $21 $3b $df
  add hl, bc                                      ; $5413: $09
  ld a, [hl-]                                     ; $5414: $3a
  or [hl]                                         ; $5415: $b6
  jr nz, jr_010_542a                              ; $5416: $20 $12

  ld hl, $df46                                    ; $5418: $21 $46 $df
  add hl, bc                                      ; $541b: $09
  ld a, [hl+]                                     ; $541c: $2a
  ld d, [hl]                                      ; $541d: $56
  ld hl, $df15                                    ; $541e: $21 $15 $df
  add hl, bc                                      ; $5421: $09
  ld [hl+], a                                     ; $5422: $22
  ld [hl], d                                      ; $5423: $72
  pop hl                                          ; $5424: $e1
  pop bc                                          ; $5425: $c1
  res 2, [hl]                                     ; $5426: $cb $96
  jr jr_010_5404                                  ; $5428: $18 $da

jr_010_542a:
  dec [hl]                                        ; $542a: $35
  ld a, [hl+]                                     ; $542b: $2a
  cp $ff                                          ; $542c: $fe $ff
  jr nz, jr_010_5431                              ; $542e: $20 $01

  dec [hl]                                        ; $5430: $35

jr_010_5431:
  ld hl, $df34                                    ; $5431: $21 $34 $df
  add hl, bc                                      ; $5434: $09
  ld a, [hl+]                                     ; $5435: $2a
  ld d, [hl]                                      ; $5436: $56
  ld e, a                                         ; $5437: $5f
  ld hl, $df15                                    ; $5438: $21 $15 $df
  add hl, bc                                      ; $543b: $09
  ld a, [hl]                                      ; $543c: $7e
  add e                                           ; $543d: $83
  ld [hl+], a                                     ; $543e: $22
  ld a, [hl]                                      ; $543f: $7e
  adc d                                           ; $5440: $8a
  ld [hl], a                                      ; $5441: $77
  pop hl                                          ; $5442: $e1
  pop bc                                          ; $5443: $c1
  jr jr_010_5404                                  ; $5444: $18 $be

jr_010_5446:
  push bc                                         ; $5446: $c5
  push hl                                         ; $5447: $e5
  set 5, [hl]                                     ; $5448: $cb $ee
  dec c                                           ; $544a: $0d
  sla c                                           ; $544b: $cb $21
  ld hl, $df34                                    ; $544d: $21 $34 $df
  add hl, bc                                      ; $5450: $09
  ld a, [hl+]                                     ; $5451: $2a
  ld d, [hl]                                      ; $5452: $56
  ld e, a                                         ; $5453: $5f
  ld hl, $df46                                    ; $5454: $21 $46 $df
  add hl, bc                                      ; $5457: $09
  ld a, [hl]                                      ; $5458: $7e
  add e                                           ; $5459: $83
  ld [hl+], a                                     ; $545a: $22
  ld a, [hl]                                      ; $545b: $7e
  adc d                                           ; $545c: $8a
  ld [hl-], a                                     ; $545d: $32
  ld d, a                                         ; $545e: $57
  ld a, [hl]                                      ; $545f: $7e
  ld hl, $df1d                                    ; $5460: $21 $1d $df
  add hl, bc                                      ; $5463: $09
  add [hl]                                        ; $5464: $86
  ld [hl+], a                                     ; $5465: $22
  ld a, [hl]                                      ; $5466: $7e
  adc d                                           ; $5467: $8a
  ld [hl], a                                      ; $5468: $77
  ld hl, $df3a                                    ; $5469: $21 $3a $df
  add hl, bc                                      ; $546c: $09
  dec [hl]                                        ; $546d: $35
  jr nz, jr_010_5486                              ; $546e: $20 $16

  ld e, l                                         ; $5470: $5d
  ld d, h                                         ; $5471: $54
  ld hl, $df40                                    ; $5472: $21 $40 $df
  add hl, bc                                      ; $5475: $09
  ld a, [hl]                                      ; $5476: $7e
  ld [de], a                                      ; $5477: $12
  ld hl, $df34                                    ; $5478: $21 $34 $df
  add hl, bc                                      ; $547b: $09
  ld a, [hl]                                      ; $547c: $7e
  cpl                                             ; $547d: $2f
  add $01                                         ; $547e: $c6 $01
  ld [hl+], a                                     ; $5480: $22
  ld a, [hl]                                      ; $5481: $7e
  cpl                                             ; $5482: $2f
  adc $00                                         ; $5483: $ce $00
  ld [hl], a                                      ; $5485: $77

jr_010_5486:
  pop hl                                          ; $5486: $e1
  pop bc                                          ; $5487: $c1
  jp Jump_010_5404                                ; $5488: $c3 $04 $54


Jump_010_548b:
  push bc                                         ; $548b: $c5
  push hl                                         ; $548c: $e5
  dec c                                           ; $548d: $0d
  sla c                                           ; $548e: $cb $21
  call Call_010_54c4                              ; $5490: $cd $c4 $54
  ld hl, $df1d                                    ; $5493: $21 $1d $df
  add hl, bc                                      ; $5496: $09
  ld a, [hl]                                      ; $5497: $7e
  add e                                           ; $5498: $83
  ld [hl+], a                                     ; $5499: $22
  ld a, [hl]                                      ; $549a: $7e
  adc d                                           ; $549b: $8a
  ld [hl], a                                      ; $549c: $77
  pop hl                                          ; $549d: $e1
  pop bc                                          ; $549e: $c1
  set 5, [hl]                                     ; $549f: $cb $ee
  jp Jump_010_53ff                                ; $54a1: $c3 $ff $53


Jump_010_54a4:
  push bc                                         ; $54a4: $c5
  push hl                                         ; $54a5: $e5
  ld a, c                                         ; $54a6: $79
  add $03                                         ; $54a7: $c6 $03
  sla a                                           ; $54a9: $cb $27
  ld c, a                                         ; $54ab: $4f
  call Call_010_54c4                              ; $54ac: $cd $c4 $54
  ld a, c                                         ; $54af: $79
  sub $06                                         ; $54b0: $d6 $06
  ld c, a                                         ; $54b2: $4f
  ld hl, $df1d                                    ; $54b3: $21 $1d $df
  add hl, bc                                      ; $54b6: $09
  ld a, [hl]                                      ; $54b7: $7e
  add e                                           ; $54b8: $83
  ld [hl+], a                                     ; $54b9: $22
  ld a, [hl]                                      ; $54ba: $7e
  adc d                                           ; $54bb: $8a
  ld [hl], a                                      ; $54bc: $77
  pop hl                                          ; $54bd: $e1
  pop bc                                          ; $54be: $c1
  set 5, [hl]                                     ; $54bf: $cb $ee
  jp Jump_010_5404                                ; $54c1: $c3 $04 $54


Call_010_54c4:
  ld hl, $df34                                    ; $54c4: $21 $34 $df
  add hl, bc                                      ; $54c7: $09
  ld a, [hl+]                                     ; $54c8: $2a
  ld d, [hl]                                      ; $54c9: $56
  ld e, a                                         ; $54ca: $5f
  ld hl, $df4c                                    ; $54cb: $21 $4c $df
  add hl, bc                                      ; $54ce: $09
  ld a, [hl]                                      ; $54cf: $7e
  add e                                           ; $54d0: $83
  ld [hl+], a                                     ; $54d1: $22
  ld e, a                                         ; $54d2: $5f
  ld a, [hl]                                      ; $54d3: $7e
  adc d                                           ; $54d4: $8a
  ld [hl], a                                      ; $54d5: $77
  ld d, a                                         ; $54d6: $57
  ld hl, $df40                                    ; $54d7: $21 $40 $df
  add hl, bc                                      ; $54da: $09
  ld a, [hl+]                                     ; $54db: $2a
  ld h, [hl]                                      ; $54dc: $66
  ld l, a                                         ; $54dd: $6f
  bit 7, h                                        ; $54de: $cb $7c
  jr nz, jr_010_54f2                              ; $54e0: $20 $10

  call Call_010_4198                              ; $54e2: $cd $98 $41
  ret nc                                          ; $54e5: $d0

jr_010_54e6:
  ld a, e                                         ; $54e6: $7b
  sub l                                           ; $54e7: $95
  ld e, a                                         ; $54e8: $5f
  ld a, d                                         ; $54e9: $7a
  sbc h                                           ; $54ea: $9c
  ld hl, $df4d                                    ; $54eb: $21 $4d $df
  add hl, bc                                      ; $54ee: $09
  ld [hl-], a                                     ; $54ef: $32
  ld [hl], e                                      ; $54f0: $73
  ret                                             ; $54f1: $c9


jr_010_54f2:
  dec hl                                          ; $54f2: $2b
  call Call_010_4198                              ; $54f3: $cd $98 $41
  ret c                                           ; $54f6: $d8

  inc hl                                          ; $54f7: $23
  jr jr_010_54e6                                  ; $54f8: $18 $ec

Call_010_54fa:
  ld a, [hl+]                                     ; $54fa: $2a
  ld e, a                                         ; $54fb: $5f
  ld a, [hl+]                                     ; $54fc: $2a
  ld d, a                                         ; $54fd: $57
  push de                                         ; $54fe: $d5
  ld e, l                                         ; $54ff: $5d
  ld d, h                                         ; $5500: $54
  ld b, $00                                       ; $5501: $06 $00
  sla c                                           ; $5503: $cb $21
  ld hl, $df58                                    ; $5505: $21 $58 $df
  add hl, bc                                      ; $5508: $09
  ld a, e                                         ; $5509: $7b
  ld [hl+], a                                     ; $550a: $22
  ld [hl], d                                      ; $550b: $72
  pop de                                          ; $550c: $d1
  ld hl, $df68                                    ; $550d: $21 $68 $df
  add hl, bc                                      ; $5510: $09
  ld a, e                                         ; $5511: $7b
  ld [hl+], a                                     ; $5512: $22
  ld [hl], d                                      ; $5513: $72
  ld hl, $df60                                    ; $5514: $21 $60 $df
  xor a                                           ; $5517: $af
  ld [hl+], a                                     ; $5518: $22
  ld [hl], a                                      ; $5519: $77
  srl c                                           ; $551a: $cb $39
  ld hl, $df70                                    ; $551c: $21 $70 $df
  add hl, bc                                      ; $551f: $09
  ld [hl], a                                      ; $5520: $77
  ld hl, $df0d                                    ; $5521: $21 $0d $df
  add hl, bc                                      ; $5524: $09
  ld a, [hl]                                      ; $5525: $7e
  and $f0                                         ; $5526: $e6 $f0
  or $21                                          ; $5528: $f6 $21
  ld [hl], a                                      ; $552a: $77
  ret                                             ; $552b: $c9


Call_010_552c:
  ld de, $0004                                    ; $552c: $11 $04 $00
  ld hl, $df10                                    ; $552f: $21 $10 $df

jr_010_5532:
  ld a, [hl]                                      ; $5532: $7e
  and $0b                                         ; $5533: $e6 $0b
  jr nz, jr_010_553c                              ; $5535: $20 $05

Jump_010_5537:
jr_010_5537:
  dec hl                                          ; $5537: $2b
  dec e                                           ; $5538: $1d
  jr nz, jr_010_5532                              ; $5539: $20 $f7

  ret                                             ; $553b: $c9


jr_010_553c:
  push hl                                         ; $553c: $e5
  push de                                         ; $553d: $d5
  dec e                                           ; $553e: $1d
  sla e                                           ; $553f: $cb $23
  bit 1, a                                        ; $5541: $cb $4f
  jr nz, jr_010_55bd                              ; $5543: $20 $78

  bit 3, a                                        ; $5545: $cb $5f
  jp nz, Jump_010_5601                            ; $5547: $c2 $01 $56

  ld hl, $df61                                    ; $554a: $21 $61 $df
  add hl, de                                      ; $554d: $19
  ld a, [hl]                                      ; $554e: $7e
  cp $0f                                          ; $554f: $fe $0f
  jr nc, jr_010_5577                              ; $5551: $30 $24

jr_010_5553:
  ld hl, $df68                                    ; $5553: $21 $68 $df
  add hl, de                                      ; $5556: $19
  ld a, [hl+]                                     ; $5557: $2a
  ld b, [hl]                                      ; $5558: $46
  ld hl, $df60                                    ; $5559: $21 $60 $df
  add hl, de                                      ; $555c: $19
  add [hl]                                        ; $555d: $86
  ld [hl+], a                                     ; $555e: $22
  ld a, [hl]                                      ; $555f: $7e
  adc b                                           ; $5560: $88
  ld [hl], a                                      ; $5561: $77
  srl e                                           ; $5562: $cb $3b
  ld hl, $df70                                    ; $5564: $21 $70 $df
  add hl, de                                      ; $5567: $19
  ld c, [hl]                                      ; $5568: $4e
  ld [hl], a                                      ; $5569: $77
  cp c                                            ; $556a: $b9
  jr z, jr_010_5573                               ; $556b: $28 $06

  pop de                                          ; $556d: $d1
  pop hl                                          ; $556e: $e1
  set 5, [hl]                                     ; $556f: $cb $ee
  jr jr_010_5537                                  ; $5571: $18 $c4

jr_010_5573:
  pop de                                          ; $5573: $d1
  pop hl                                          ; $5574: $e1
  jr jr_010_5537                                  ; $5575: $18 $c0

jr_010_5577:
  ld a, $0f                                       ; $5577: $3e $0f
  ld [hl-], a                                     ; $5579: $32
  ld [hl], $00                                    ; $557a: $36 $00
  srl e                                           ; $557c: $cb $3b
  ld hl, $df70                                    ; $557e: $21 $70 $df
  add hl, de                                      ; $5581: $19
  ld a, [hl]                                      ; $5582: $7e
  ld [hl], $0f                                    ; $5583: $36 $0f
  ld hl, $df0d                                    ; $5585: $21 $0d $df
  add hl, de                                      ; $5588: $19
  cp $0f                                          ; $5589: $fe $0f
  jr z, jr_010_558f                               ; $558b: $28 $02

  set 5, [hl]                                     ; $558d: $cb $ee

jr_010_558f:
  ld a, [hl]                                      ; $558f: $7e
  and $f0                                         ; $5590: $e6 $f0
  bit 4, a                                        ; $5592: $cb $67
  jr z, jr_010_559d                               ; $5594: $28 $07

  res 4, a                                        ; $5596: $cb $a7
  ld [hl], a                                      ; $5598: $77
  pop de                                          ; $5599: $d1
  pop hl                                          ; $559a: $e1
  jr jr_010_5537                                  ; $559b: $18 $9a

jr_010_559d:
  or $02                                          ; $559d: $f6 $02
  ld [hl], a                                      ; $559f: $77
  sla e                                           ; $55a0: $cb $23
  ld hl, $df58                                    ; $55a2: $21 $58 $df
  add hl, de                                      ; $55a5: $19
  ld a, [hl+]                                     ; $55a6: $2a
  ld h, [hl]                                      ; $55a7: $66
  ld l, a                                         ; $55a8: $6f
  ld a, [hl+]                                     ; $55a9: $2a
  ld b, [hl]                                      ; $55aa: $46
  ld hl, $df68                                    ; $55ab: $21 $68 $df
  add hl, de                                      ; $55ae: $19
  ld [hl+], a                                     ; $55af: $22
  ld [hl], b                                      ; $55b0: $70
  ld hl, $df58                                    ; $55b1: $21 $58 $df
  add hl, de                                      ; $55b4: $19
  ld a, [hl]                                      ; $55b5: $7e
  add $02                                         ; $55b6: $c6 $02
  ld [hl+], a                                     ; $55b8: $22
  ld a, [hl]                                      ; $55b9: $7e
  adc $00                                         ; $55ba: $ce $00
  ld [hl], a                                      ; $55bc: $77

jr_010_55bd:
  ld hl, $df58                                    ; $55bd: $21 $58 $df
  add hl, de                                      ; $55c0: $19
  ld a, [hl+]                                     ; $55c1: $2a
  ld h, [hl]                                      ; $55c2: $66
  ld l, a                                         ; $55c3: $6f
  ld a, [hl]                                      ; $55c4: $7e
  ld hl, $df61                                    ; $55c5: $21 $61 $df
  add hl, de                                      ; $55c8: $19
  ld b, [hl]                                      ; $55c9: $46
  bit 7, b                                        ; $55ca: $cb $78
  jr nz, jr_010_55d1                              ; $55cc: $20 $03

  cp b                                            ; $55ce: $b8
  jr c, jr_010_5553                               ; $55cf: $38 $82

jr_010_55d1:
  ld [hl-], a                                     ; $55d1: $32
  ld [hl], $00                                    ; $55d2: $36 $00
  ld c, a                                         ; $55d4: $4f
  ld hl, $df58                                    ; $55d5: $21 $58 $df
  add hl, de                                      ; $55d8: $19
  ld a, [hl+]                                     ; $55d9: $2a
  ld h, [hl]                                      ; $55da: $66
  ld l, a                                         ; $55db: $6f
  inc hl                                          ; $55dc: $23
  ld a, [hl+]                                     ; $55dd: $2a
  ld b, [hl]                                      ; $55de: $46
  ld hl, $df68                                    ; $55df: $21 $68 $df
  add hl, de                                      ; $55e2: $19
  ld [hl+], a                                     ; $55e3: $22
  ld [hl], b                                      ; $55e4: $70
  srl e                                           ; $55e5: $cb $3b
  ld hl, $df70                                    ; $55e7: $21 $70 $df
  add hl, de                                      ; $55ea: $19
  ld a, [hl]                                      ; $55eb: $7e
  ld [hl], c                                      ; $55ec: $71
  ld hl, $df0d                                    ; $55ed: $21 $0d $df
  add hl, de                                      ; $55f0: $19
  cp c                                            ; $55f1: $b9
  jr z, jr_010_55f6                               ; $55f2: $28 $02

  set 5, [hl]                                     ; $55f4: $cb $ee

jr_010_55f6:
  ld a, [hl]                                      ; $55f6: $7e
  and $f0                                         ; $55f7: $e6 $f0
  or $04                                          ; $55f9: $f6 $04
  ld [hl], a                                      ; $55fb: $77

jr_010_55fc:
  pop de                                          ; $55fc: $d1
  pop hl                                          ; $55fd: $e1
  jp Jump_010_5537                                ; $55fe: $c3 $37 $55


Jump_010_5601:
  ld hl, $df68                                    ; $5601: $21 $68 $df
  add hl, de                                      ; $5604: $19
  ld a, [hl+]                                     ; $5605: $2a
  ld b, [hl]                                      ; $5606: $46
  ld c, a                                         ; $5607: $4f
  ld hl, $df60                                    ; $5608: $21 $60 $df
  add hl, de                                      ; $560b: $19
  ld a, [hl]                                      ; $560c: $7e
  add c                                           ; $560d: $81
  ld [hl+], a                                     ; $560e: $22
  ld c, a                                         ; $560f: $4f
  ld a, [hl]                                      ; $5610: $7e
  adc b                                           ; $5611: $88
  ld [hl], a                                      ; $5612: $77
  ld b, a                                         ; $5613: $47
  srl e                                           ; $5614: $cb $3b
  ld hl, $df70                                    ; $5616: $21 $70 $df
  add hl, de                                      ; $5619: $19
  bit 7, a                                        ; $561a: $cb $7f
  jr nz, jr_010_562d                              ; $561c: $20 $0f

  or c                                            ; $561e: $b1
  jr z, jr_010_562d                               ; $561f: $28 $0c

  ld a, [hl]                                      ; $5621: $7e
  ld [hl], b                                      ; $5622: $70
  cp b                                            ; $5623: $b8
  jr z, jr_010_55fc                               ; $5624: $28 $d6

  pop de                                          ; $5626: $d1
  pop hl                                          ; $5627: $e1
  set 5, [hl]                                     ; $5628: $cb $ee
  jp Jump_010_5537                                ; $562a: $c3 $37 $55


jr_010_562d:
  ld c, [hl]                                      ; $562d: $4e
  ld [hl], $00                                    ; $562e: $36 $00
  pop de                                          ; $5630: $d1
  pop hl                                          ; $5631: $e1
  ld a, [hl]                                      ; $5632: $7e
  and $f0                                         ; $5633: $e6 $f0
  ld [hl], a                                      ; $5635: $77
  ld a, c                                         ; $5636: $79
  and a                                           ; $5637: $a7
  jp z, Jump_010_5537                             ; $5638: $ca $37 $55

  set 5, [hl]                                     ; $563b: $cb $ee
  jp Jump_010_5537                                ; $563d: $c3 $37 $55


Call_010_5640:
  swap a                                          ; $5640: $cb $37
  or e                                            ; $5642: $b3
  srl a                                           ; $5643: $cb $3f
  ld e, a                                         ; $5645: $5f
  ld d, $00                                       ; $5646: $16 $00
  ld hl, $5659                                    ; $5648: $21 $59 $56
  jr c, jr_010_5654                               ; $564b: $38 $07

  add hl, de                                      ; $564d: $19
  ld a, [hl]                                      ; $564e: $7e
  swap a                                          ; $564f: $cb $37
  and $0f                                         ; $5651: $e6 $0f
  ret                                             ; $5653: $c9


jr_010_5654:
  add hl, de                                      ; $5654: $19
  ld a, [hl]                                      ; $5655: $7e
  and $0f                                         ; $5656: $e6 $0f
  ret                                             ; $5658: $c9


  nop                                             ; $5659: $00
  nop                                             ; $565a: $00
  nop                                             ; $565b: $00
  nop                                             ; $565c: $00
  nop                                             ; $565d: $00
  nop                                             ; $565e: $00
  nop                                             ; $565f: $00

  db $00

  nop                                             ; $5661: $00
  nop                                             ; $5662: $00
  nop                                             ; $5663: $00
  nop                                             ; $5664: $00
  ld bc, $1111                                    ; $5665: $01 $11 $11

  db $11

  nop                                             ; $5669: $00
  nop                                             ; $566a: $00
  ld bc, $1111                                    ; $566b: $01 $11 $11
  db $11                                          ; $566e: $11
  ld [hl+], a                                     ; $566f: $22

  db $22

  nop                                             ; $5671: $00
  ld bc, $1111                                    ; $5672: $01 $11 $11
  ld [hl+], a                                     ; $5675: $22
  ld [hl+], a                                     ; $5676: $22
  inc sp                                          ; $5677: $33

  db $33

  nop                                             ; $5679: $00
  ld bc, $2211                                    ; $567a: $01 $11 $22
  ld [hl+], a                                     ; $567d: $22
  inc sp                                          ; $567e: $33
  inc sp                                          ; $567f: $33

  db $44

  nop                                             ; $5681: $00
  ld de, $2212                                    ; $5682: $11 $12 $22
  inc sp                                          ; $5685: $33
  inc [hl]                                        ; $5686: $34
  ld b, h                                         ; $5687: $44

  db $55

  nop                                             ; $5689: $00
  ld de, $2322                                    ; $568a: $11 $22 $23
  inc [hl]                                        ; $568d: $34
  ld b, h                                         ; $568e: $44
  ld d, l                                         ; $568f: $55

  db $66

  nop                                             ; $5691: $00
  ld de, $3322                                    ; $5692: $11 $22 $33
  ld b, h                                         ; $5695: $44
  ld d, l                                         ; $5696: $55
  ld h, [hl]                                      ; $5697: $66

  db $77

  ld bc, $2312                                    ; $5699: $01 $12 $23
  inc [hl]                                        ; $569c: $34
  ld b, l                                         ; $569d: $45
  ld d, [hl]                                      ; $569e: $56
  ld [hl], a                                      ; $569f: $77

  db $78

  ld bc, $2312                                    ; $56a1: $01 $12 $23
  ld b, h                                         ; $56a4: $44
  ld d, l                                         ; $56a5: $55
  ld h, a                                         ; $56a6: $67
  ld a, b                                         ; $56a7: $78

  db $89

  ld bc, $3312                                    ; $56a9: $01 $12 $33
  ld b, l                                         ; $56ac: $45
  ld d, [hl]                                      ; $56ad: $56
  ld [hl], a                                      ; $56ae: $77
  adc c                                           ; $56af: $89

  db $9a

  ld bc, $3422                                    ; $56b1: $01 $22 $34
  ld b, l                                         ; $56b4: $45
  ld h, a                                         ; $56b5: $67
  ld a, b                                         ; $56b6: $78
  sbc d                                           ; $56b7: $9a

  db $ab

  ld bc, $3422                                    ; $56b9: $01 $22 $34
  ld d, [hl]                                      ; $56bc: $56
  ld h, a                                         ; $56bd: $67
  adc c                                           ; $56be: $89
  xor d                                           ; $56bf: $aa

  db $bc

  ld bc, $3423                                    ; $56c1: $01 $23 $34
  ld d, [hl]                                      ; $56c4: $56
  ld a, b                                         ; $56c5: $78
  sbc d                                           ; $56c6: $9a
  xor e                                           ; $56c7: $ab

  db $cd

  ld bc, $4523                                    ; $56c9: $01 $23 $45
  ld h, a                                         ; $56cc: $67
  ld a, b                                         ; $56cd: $78
  sbc d                                           ; $56ce: $9a
  cp h                                            ; $56cf: $bc

  db $de, $01, $23, $45, $67, $89, $ab, $cd, $ef

Call_010_56d9:
  ld hl, $df78                                    ; $56d9: $21 $78 $df
  ld a, [hl]                                      ; $56dc: $7e
  sub $01                                         ; $56dd: $d6 $01
  ld [hl+], a                                     ; $56df: $22
  ld c, a                                         ; $56e0: $4f
  ld a, [hl]                                      ; $56e1: $7e
  sbc $00                                         ; $56e2: $de $00
  ld [hl], a                                      ; $56e4: $77
  or c                                            ; $56e5: $b1
  jr z, jr_010_5706                               ; $56e6: $28 $1e

  ld hl, $df76                                    ; $56e8: $21 $76 $df
  ld a, [hl+]                                     ; $56eb: $2a
  ld h, [hl]                                      ; $56ec: $66
  ld l, a                                         ; $56ed: $6f
  call Call_000_3bf4                              ; $56ee: $cd $f4 $3b
  bit 7, h                                        ; $56f1: $cb $7c
  jr z, jr_010_56fe                               ; $56f3: $28 $09

  ld h, $40                                       ; $56f5: $26 $40
  ld a, [$df75]                                   ; $56f7: $fa $75 $df
  inc a                                           ; $56fa: $3c
  ld [$df75], a                                   ; $56fb: $ea $75 $df

jr_010_56fe:
  ld a, l                                         ; $56fe: $7d
  ld b, h                                         ; $56ff: $44
  ld hl, $df76                                    ; $5700: $21 $76 $df
  ld [hl+], a                                     ; $5703: $22
  ld [hl], b                                      ; $5704: $70
  ret                                             ; $5705: $c9


jr_010_5706:
  ld hl, $df74                                    ; $5706: $21 $74 $df
  res 7, [hl]                                     ; $5709: $cb $be
  ld c, $02                                       ; $570b: $0e $02
  jp Jump_010_505a                                ; $570d: $c3 $5a $50


  ld hl, $5a95                                    ; $5710: $21 $95 $5a
  cp [hl]                                         ; $5713: $be
  ret nc                                          ; $5714: $d0

  ld d, $00                                       ; $5715: $16 $00
  ld e, a                                         ; $5717: $5f
  ld h, $00                                       ; $5718: $26 $00
  ld l, a                                         ; $571a: $6f
  sla l                                           ; $571b: $cb $25
  rl h                                            ; $571d: $cb $14
  add hl, de                                      ; $571f: $19
  ld e, l                                         ; $5720: $5d
  ld d, h                                         ; $5721: $54
  ld hl, $5a93                                    ; $5722: $21 $93 $5a
  ld a, [hl+]                                     ; $5725: $2a
  ld b, [hl]                                      ; $5726: $46
  ld c, a                                         ; $5727: $4f
  ld hl, $5a87                                    ; $5728: $21 $87 $5a
  add hl, bc                                      ; $572b: $09
  add hl, de                                      ; $572c: $19
  ld a, [hl+]                                     ; $572d: $2a
  ld b, a                                         ; $572e: $47
  ld a, [hl+]                                     ; $572f: $2a
  ld h, [hl]                                      ; $5730: $66
  ld l, a                                         ; $5731: $6f
  ld a, [$df00]                                   ; $5732: $fa $00 $df
  add b                                           ; $5735: $80
  ld bc, $0084                                    ; $5736: $01 $84 $00
  add hl, bc                                      ; $5739: $09
  ld [$dfa9], a                                   ; $573a: $ea $a9 $df
  ld a, h                                         ; $573d: $7c
  ld [$dfa8], a                                   ; $573e: $ea $a8 $df
  ld a, l                                         ; $5741: $7d
  ld [$dfa7], a                                   ; $5742: $ea $a7 $df
  xor a                                           ; $5745: $af
  ld [$dfa6], a                                   ; $5746: $ea $a6 $df
  ld hl, $dfb3                                    ; $5749: $21 $b3 $df
  ld bc, $0045                                    ; $574c: $01 $45 $00

jr_010_574f:
  xor a                                           ; $574f: $af
  ld [hl+], a                                     ; $5750: $22
  dec bc                                          ; $5751: $0b
  ld a, c                                         ; $5752: $79
  or b                                            ; $5753: $b0
  jr nz, jr_010_574f                              ; $5754: $20 $f9

  call Call_010_578d                              ; $5756: $cd $8d $57
  call Call_000_3d6d                              ; $5759: $cd $6d $3d
  ld a, $e4                                       ; $575c: $3e $e4
  ld [$dfac], a                                   ; $575e: $ea $ac $df
  ld hl, $dfa6                                    ; $5761: $21 $a6 $df
  set 7, [hl]                                     ; $5764: $cb $fe
  ret                                             ; $5766: $c9


  ld a, [$dfa6]                                   ; $5767: $fa $a6 $df
  and $0f                                         ; $576a: $e6 $0f
  jr nz, jr_010_5776                              ; $576c: $20 $08

  ld a, [$dfd3]                                   ; $576e: $fa $d3 $df
  and a                                           ; $5771: $a7
  jr nz, jr_010_5776                              ; $5772: $20 $02

  xor a                                           ; $5774: $af
  ret                                             ; $5775: $c9


jr_010_5776:
  ld a, $01                                       ; $5776: $3e $01
  ret                                             ; $5778: $c9


  ld a, c                                         ; $5779: $79
  or b                                            ; $577a: $b0
  jr z, jr_010_578d                               ; $577b: $28 $10

  ld hl, $dfaa                                    ; $577d: $21 $aa $df
  ld a, [hl+]                                     ; $5780: $2a
  ld h, [hl]                                      ; $5781: $66
  ld l, a                                         ; $5782: $6f
  call Call_010_4041                              ; $5783: $cd $41 $40
  ld a, h                                         ; $5786: $7c
  ld hl, $dfaa                                    ; $5787: $21 $aa $df
  ld [hl+], a                                     ; $578a: $22
  ld [hl], c                                      ; $578b: $71
  ret                                             ; $578c: $c9


Call_010_578d:
jr_010_578d:
  call Call_000_3d52                              ; $578d: $cd $52 $3d
  ld c, l                                         ; $5790: $4d
  ld b, h                                         ; $5791: $44
  ld a, $66                                       ; $5792: $3e $66
  call Call_010_4002                              ; $5794: $cd $02 $40
  ld bc, $003c                                    ; $5797: $01 $3c $00
  call Call_010_40aa                              ; $579a: $cd $aa $40
  ld a, l                                         ; $579d: $7d
  ld [$dfaa], a                                   ; $579e: $ea $aa $df
  ld a, h                                         ; $57a1: $7c
  ld [$dfab], a                                   ; $57a2: $ea $ab $df
  ret                                             ; $57a5: $c9


  ld hl, $dfa6                                    ; $57a6: $21 $a6 $df
  bit 7, [hl]                                     ; $57a9: $cb $7e
  ret z                                           ; $57ab: $c8

  set 4, [hl]                                     ; $57ac: $cb $e6

  ld hl, $dfa6                                    ; $57ae: $21 $a6 $df
  res 7, [hl]                                     ; $57b1: $cb $be
  ld hl, $df09                                    ; $57b3: $21 $09 $df
  xor a                                           ; $57b6: $af

jr_010_57b7:
  bit 1, [hl]                                     ; $57b7: $cb $4e
  inc hl                                          ; $57b9: $23
  call z, Call_010_57c3                           ; $57ba: $cc $c3 $57
  inc a                                           ; $57bd: $3c
  cp $04                                          ; $57be: $fe $04
  jr nz, jr_010_57b7                              ; $57c0: $20 $f5

  ret                                             ; $57c2: $c9


Call_010_57c3:
  push af                                         ; $57c3: $f5
  push hl                                         ; $57c4: $e5
  ld [$df9c], a                                   ; $57c5: $ea $9c $df
  ld c, a                                         ; $57c8: $4f
  ld b, $00                                       ; $57c9: $06 $00
  sla c                                           ; $57cb: $cb $21
  ld hl, $df7e                                    ; $57cd: $21 $7e $df
  add hl, bc                                      ; $57d0: $09
  xor a                                           ; $57d1: $af
  ld [hl+], a                                     ; $57d2: $22
  ld [hl], a                                      ; $57d3: $77
  call Call_010_48df                              ; $57d4: $cd $df $48
  call Call_010_4712                              ; $57d7: $cd $12 $47
  pop hl                                          ; $57da: $e1
  pop af                                          ; $57db: $f1
  ret                                             ; $57dc: $c9


  xor a                                           ; $57dd: $af
  ld hl, $dfa6                                    ; $57de: $21 $a6 $df
  bit 4, [hl]                                     ; $57e1: $cb $66
  ret z                                           ; $57e3: $c8

  res 4, [hl]                                     ; $57e4: $cb $a6
  set 7, [hl]                                     ; $57e6: $cb $fe
  ld a, $01                                       ; $57e8: $3e $01
  ret                                             ; $57ea: $c9


  ld a, $52                                       ; $57eb: $3e $52
  ret                                             ; $57ed: $c9


  ld a, $52                                       ; $57ee: $3e $52
  cp c                                            ; $57f0: $b9
  ret nz                                          ; $57f1: $c0

  ld de, $dfa6                                    ; $57f2: $11 $a6 $df

jr_010_57f5:
  ld a, [de]                                      ; $57f5: $1a
  inc de                                          ; $57f6: $13
  ld [hl+], a                                     ; $57f7: $22
  dec c                                           ; $57f8: $0d
  jr nz, jr_010_57f5                              ; $57f9: $20 $fa

  ret                                             ; $57fb: $c9


  ld a, $52                                       ; $57fc: $3e $52
  cp c                                            ; $57fe: $b9
  ret nz                                          ; $57ff: $c0

  ld de, $dfa6                                    ; $5800: $11 $a6 $df

jr_010_5803:
  ld a, [hl+]                                     ; $5803: $2a
  ld [de], a                                      ; $5804: $12
  inc de                                          ; $5805: $13
  dec c                                           ; $5806: $0d
  jr nz, jr_010_5803                              ; $5807: $20 $fa

  ret                                             ; $5809: $c9


Call_010_580a:
  ld a, [$dfa6]                                   ; $580a: $fa $a6 $df
  bit 7, a                                        ; $580d: $cb $7f
  ret z                                           ; $580f: $c8

  ld a, [$dfaa]                                   ; $5810: $fa $aa $df
  ld c, a                                         ; $5813: $4f
  ld a, [$dfab]                                   ; $5814: $fa $ab $df
  ld b, a                                         ; $5817: $47
  call Call_010_58bd                              ; $5818: $cd $bd $58
  call Call_010_592f                              ; $581b: $cd $2f $59
  ld hl, $dfbf                                    ; $581e: $21 $bf $df
  xor a                                           ; $5821: $af

Jump_010_5822:
  ld [$dff9], a                                   ; $5822: $ea $f9 $df
  ld de, $58b5                                    ; $5825: $11 $b5 $58
  add e                                           ; $5828: $83
  ld e, a                                         ; $5829: $5f
  ld a, d                                         ; $582a: $7a
  adc $00                                         ; $582b: $ce $00
  ld d, a                                         ; $582d: $57
  ld a, [de]                                      ; $582e: $1a
  ld e, a                                         ; $582f: $5f
  ld a, [$dfa6]                                   ; $5830: $fa $a6 $df
  and e                                           ; $5833: $a3
  jr z, jr_010_58a7                               ; $5834: $28 $71

  ld a, [hl]                                      ; $5836: $7e
  sub c                                           ; $5837: $91
  ld [hl+], a                                     ; $5838: $22
  ld d, a                                         ; $5839: $57
  ld a, [hl]                                      ; $583a: $7e
  sbc b                                           ; $583b: $98
  ld [hl+], a                                     ; $583c: $22
  ld e, a                                         ; $583d: $5f
  ld a, [hl]                                      ; $583e: $7e
  sbc $00                                         ; $583f: $de $00
  ld [hl+], a                                     ; $5841: $22
  bit 7, a                                        ; $5842: $cb $7f
  jr nz, jr_010_584a                              ; $5844: $20 $04

  or d                                            ; $5846: $b2
  or e                                            ; $5847: $b3
  jr nz, jr_010_58ab                              ; $5848: $20 $61

jr_010_584a:
  push hl                                         ; $584a: $e5
  push bc                                         ; $584b: $c5
  ld hl, $dfbb                                    ; $584c: $21 $bb $df
  ld a, [$dff9]                                   ; $584f: $fa $f9 $df
  ld c, a                                         ; $5852: $4f
  ld b, $00                                       ; $5853: $06 $00
  add hl, bc                                      ; $5855: $09
  ld a, [hl]                                      ; $5856: $7e
  cp $fe                                          ; $5857: $fe $fe
  jr z, jr_010_586e                               ; $5859: $28 $13

  cp $ff                                          ; $585b: $fe $ff
  jr z, jr_010_588d                               ; $585d: $28 $2e

  ld c, a                                         ; $585f: $4f
  ld a, [$dff9]                                   ; $5860: $fa $f9 $df
  call Call_010_5978                              ; $5863: $cd $78 $59
  ld a, [$dff9]                                   ; $5866: $fa $f9 $df
  call Call_000_3e42                              ; $5869: $cd $42 $3e
  jr jr_010_5874                                  ; $586c: $18 $06

jr_010_586e:
  ld a, [$dff9]                                   ; $586e: $fa $f9 $df
  call Call_000_3e80                              ; $5871: $cd $80 $3e

jr_010_5874:
  pop bc                                          ; $5874: $c1
  pop hl                                          ; $5875: $e1
  ld d, h                                         ; $5876: $54
  ld e, l                                         ; $5877: $5d
  dec de                                          ; $5878: $1b
  ld a, [de]                                      ; $5879: $1a
  bit 7, a                                        ; $587a: $cb $7f
  jr nz, jr_010_584a                              ; $587c: $20 $cc

  and a                                           ; $587e: $a7
  jr nz, jr_010_58ab                              ; $587f: $20 $2a

  dec de                                          ; $5881: $1b
  ld a, [de]                                      ; $5882: $1a
  and a                                           ; $5883: $a7
  jr nz, jr_010_58ab                              ; $5884: $20 $25

  dec de                                          ; $5886: $1b
  ld a, [de]                                      ; $5887: $1a
  and a                                           ; $5888: $a7
  jr nz, jr_010_58ab                              ; $5889: $20 $20

  jr jr_010_584a                                  ; $588b: $18 $bd

jr_010_588d:
  ld a, [$dff9]                                   ; $588d: $fa $f9 $df
  ld c, a                                         ; $5890: $4f
  ld b, $00                                       ; $5891: $06 $00
  ld hl, $58b5                                    ; $5893: $21 $b5 $58
  add hl, bc                                      ; $5896: $09
  ld a, [hl]                                      ; $5897: $7e
  cpl                                             ; $5898: $2f
  ld b, a                                         ; $5899: $47
  ld a, [$dfa6]                                   ; $589a: $fa $a6 $df
  and b                                           ; $589d: $a0
  ld [$dfa6], a                                   ; $589e: $ea $a6 $df
  jr jr_010_58a3                                  ; $58a1: $18 $00

jr_010_58a3:
  pop bc                                          ; $58a3: $c1
  pop hl                                          ; $58a4: $e1
  jr jr_010_58ab                                  ; $58a5: $18 $04

jr_010_58a7:
  ld de, $0003                                    ; $58a7: $11 $03 $00
  add hl, de                                      ; $58aa: $19

jr_010_58ab:
  ld a, [$dff9]                                   ; $58ab: $fa $f9 $df
  inc a                                           ; $58ae: $3c
  cp $04                                          ; $58af: $fe $04
  jp nz, Jump_010_5822                            ; $58b1: $c2 $22 $58

  ret                                             ; $58b4: $c9


  db $01, $02, $04, $08, $10, $20, $40, $80

Call_010_58bd:
  xor a                                           ; $58bd: $af

jr_010_58be:
  ld [$dff9], a                                   ; $58be: $ea $f9 $df
  ld e, a                                         ; $58c1: $5f
  ld d, $00                                       ; $58c2: $16 $00
  ld hl, $58b9                                    ; $58c4: $21 $b9 $58
  add hl, de                                      ; $58c7: $19
  ld a, [$dfd3]                                   ; $58c8: $fa $d3 $df
  and [hl]                                        ; $58cb: $a6
  jr z, jr_010_5926                               ; $58cc: $28 $58

  push bc                                         ; $58ce: $c5
  ld a, e                                         ; $58cf: $7b
  sla e                                           ; $58d0: $cb $23
  add e                                           ; $58d2: $83
  ld e, a                                         ; $58d3: $5f
  ld hl, $dfe8                                    ; $58d4: $21 $e8 $df
  add hl, de                                      ; $58d7: $19
  ld a, [hl]                                      ; $58d8: $7e
  sub c                                           ; $58d9: $91
  ld [hl+], a                                     ; $58da: $22
  ld d, a                                         ; $58db: $57
  ld a, [hl]                                      ; $58dc: $7e
  sbc b                                           ; $58dd: $98
  ld [hl+], a                                     ; $58de: $22
  ld e, a                                         ; $58df: $5f
  ld a, [hl]                                      ; $58e0: $7e
  sbc $00                                         ; $58e1: $de $00
  ld [hl+], a                                     ; $58e3: $22
  bit 7, a                                        ; $58e4: $cb $7f
  jr nz, jr_010_58ec                              ; $58e6: $20 $04

  or d                                            ; $58e8: $b2
  or e                                            ; $58e9: $b3
  jr nz, jr_010_5925                              ; $58ea: $20 $39

jr_010_58ec:
  ld a, [$dff9]                                   ; $58ec: $fa $f9 $df
  ld e, a                                         ; $58ef: $5f
  ld d, $00                                       ; $58f0: $16 $00
  ld hl, $58b9                                    ; $58f2: $21 $b9 $58
  add hl, de                                      ; $58f5: $19
  ld a, [hl]                                      ; $58f6: $7e
  cpl                                             ; $58f7: $2f
  ld c, a                                         ; $58f8: $4f
  ld a, [$dfd3]                                   ; $58f9: $fa $d3 $df
  and c                                           ; $58fc: $a1
  ld [$dfd3], a                                   ; $58fd: $ea $d3 $df
  ld a, [$dfac]                                   ; $5900: $fa $ac $df
  bit 1, e                                        ; $5903: $cb $4b
  jr z, jr_010_5909                               ; $5905: $28 $02

  swap a                                          ; $5907: $cb $37

jr_010_5909:
  bit 0, e                                        ; $5909: $cb $43
  jr z, jr_010_5911                               ; $590b: $28 $04

  srl a                                           ; $590d: $cb $3f
  srl a                                           ; $590f: $cb $3f

jr_010_5911:
  and $03                                         ; $5911: $e6 $03
  ld c, a                                         ; $5913: $4f
  ld b, $00                                       ; $5914: $06 $00
  ld hl, $df09                                    ; $5916: $21 $09 $df
  add hl, bc                                      ; $5919: $09
  bit 1, [hl]                                     ; $591a: $cb $4e
  jr nz, jr_010_5925                              ; $591c: $20 $07

  ld a, c                                         ; $591e: $79
  ld [$df9c], a                                   ; $591f: $ea $9c $df
  call Call_010_48df                              ; $5922: $cd $df $48

jr_010_5925:
  pop bc                                          ; $5925: $c1

jr_010_5926:
  ld a, [$dff9]                                   ; $5926: $fa $f9 $df
  inc a                                           ; $5929: $3c
  cp $04                                          ; $592a: $fe $04
  jr nz, jr_010_58be                              ; $592c: $20 $90

  ret                                             ; $592e: $c9


Call_010_592f:
  xor a                                           ; $592f: $af

jr_010_5930:
  ld [$dff9], a                                   ; $5930: $ea $f9 $df
  ld e, a                                         ; $5933: $5f
  ld d, $00                                       ; $5934: $16 $00
  ld hl, $58b5                                    ; $5936: $21 $b5 $58
  add hl, de                                      ; $5939: $19
  ld a, [$dfd3]                                   ; $593a: $fa $d3 $df
  and [hl]                                        ; $593d: $a6
  jr z, jr_010_596f                               ; $593e: $28 $2f

  push bc                                         ; $5940: $c5
  ld a, e                                         ; $5941: $7b
  sla e                                           ; $5942: $cb $23
  add e                                           ; $5944: $83
  ld e, a                                         ; $5945: $5f
  ld hl, $dfd4                                    ; $5946: $21 $d4 $df
  add hl, de                                      ; $5949: $19
  ld a, [hl]                                      ; $594a: $7e
  sub c                                           ; $594b: $91
  ld [hl+], a                                     ; $594c: $22
  ld d, a                                         ; $594d: $57
  ld a, [hl]                                      ; $594e: $7e
  sbc b                                           ; $594f: $98
  ld [hl+], a                                     ; $5950: $22
  ld e, a                                         ; $5951: $5f
  ld a, [hl]                                      ; $5952: $7e
  sbc $00                                         ; $5953: $de $00
  ld [hl+], a                                     ; $5955: $22
  bit 7, a                                        ; $5956: $cb $7f
  jr nz, jr_010_595e                              ; $5958: $20 $04

  or d                                            ; $595a: $b2
  or e                                            ; $595b: $b3
  jr nz, jr_010_596e                              ; $595c: $20 $10

jr_010_595e:
  ld a, [$dff9]                                   ; $595e: $fa $f9 $df
  call Call_010_59ab                              ; $5961: $cd $ab $59
  jr nz, jr_010_596e                              ; $5964: $20 $08

  ld a, [$dff9]                                   ; $5966: $fa $f9 $df
  call Call_000_3f85                              ; $5969: $cd $85 $3f
  jr jr_010_595e                                  ; $596c: $18 $f0

jr_010_596e:
  pop bc                                          ; $596e: $c1

jr_010_596f:
  ld a, [$dff9]                                   ; $596f: $fa $f9 $df
  inc a                                           ; $5972: $3c
  cp $04                                          ; $5973: $fe $04
  jr nz, jr_010_5930                              ; $5975: $20 $b9

  ret                                             ; $5977: $c9


Call_010_5978:
  ld [$dffb], a                                   ; $5978: $ea $fb $df
  ld hl, $58b5                                    ; $597b: $21 $b5 $58
  ld e, a                                         ; $597e: $5f
  ld d, $00                                       ; $597f: $16 $00
  add hl, de                                      ; $5981: $19
  ld a, [$dfd3]                                   ; $5982: $fa $d3 $df
  or [hl]                                         ; $5985: $b6
  ld [$dfd3], a                                   ; $5986: $ea $d3 $df
  ld a, e                                         ; $5989: $7b
  sla e                                           ; $598a: $cb $23
  add e                                           ; $598c: $83
  ld e, a                                         ; $598d: $5f
  ld hl, $dfd4                                    ; $598e: $21 $d4 $df
  add hl, de                                      ; $5991: $19
  xor a                                           ; $5992: $af
  ld [hl+], a                                     ; $5993: $22
  ld [hl+], a                                     ; $5994: $22
  ld [hl], a                                      ; $5995: $77
  ld a, [$dffb]                                   ; $5996: $fa $fb $df
  call Call_000_3edc                              ; $5999: $cd $dc $3e

jr_010_599c:
  ld a, [$dffb]                                   ; $599c: $fa $fb $df
  call Call_000_3f85                              ; $599f: $cd $85 $3f
  ld a, [$dffb]                                   ; $59a2: $fa $fb $df
  call Call_010_59ab                              ; $59a5: $cd $ab $59
  jr z, jr_010_599c                               ; $59a8: $28 $f2

  ret                                             ; $59aa: $c9


Call_010_59ab:
  ld c, a                                         ; $59ab: $4f
  ld e, a                                         ; $59ac: $5f
  sla e                                           ; $59ad: $cb $23
  add e                                           ; $59af: $83
  ld e, a                                         ; $59b0: $5f
  ld d, $00                                       ; $59b1: $16 $00
  ld hl, $dfd6                                    ; $59b3: $21 $d6 $df
  add hl, de                                      ; $59b6: $19
  ld a, [hl-]                                     ; $59b7: $3a
  bit 7, a                                        ; $59b8: $cb $7f
  jr nz, jr_010_59c3                              ; $59ba: $20 $07

  ld b, a                                         ; $59bc: $47
  ld a, [hl-]                                     ; $59bd: $3a
  or b                                            ; $59be: $b0
  ld b, a                                         ; $59bf: $47
  ld a, [hl]                                      ; $59c0: $7e
  or b                                            ; $59c1: $b0
  ret nz                                          ; $59c2: $c0

jr_010_59c3:
  ld b, $00                                       ; $59c3: $06 $00
  push bc                                         ; $59c5: $c5
  ld a, c                                         ; $59c6: $79
  call Call_000_3f16                              ; $59c7: $cd $16 $3f
  bit 7, d                                        ; $59ca: $cb $7a
  jr z, jr_010_59f9                               ; $59cc: $28 $2b

  bit 7, a                                        ; $59ce: $cb $7f
  jr nz, jr_010_59e3                              ; $59d0: $20 $11

  pop bc                                          ; $59d2: $c1
  ld hl, $58b5                                    ; $59d3: $21 $b5 $58
  add hl, bc                                      ; $59d6: $09
  ld a, [hl]                                      ; $59d7: $7e
  cpl                                             ; $59d8: $2f
  ld e, a                                         ; $59d9: $5f
  ld a, [$dfd3]                                   ; $59da: $fa $d3 $df
  and e                                           ; $59dd: $a3
  ld [$dfd3], a                                   ; $59de: $ea $d3 $df
  rlca                                            ; $59e1: $07
  ret                                             ; $59e2: $c9


jr_010_59e3:
  and $7f                                         ; $59e3: $e6 $7f
  cp $02                                          ; $59e5: $fe $02
  jr nc, jr_010_59ee                              ; $59e7: $30 $05

  ld hl, $dfa6                                    ; $59e9: $21 $a6 $df
  res 6, [hl]                                     ; $59ec: $cb $b6

jr_010_59ee:
  call Call_000_3fb8                              ; $59ee: $cd $b8 $3f
  ld hl, $dfad                                    ; $59f1: $21 $ad $df
  pop bc                                          ; $59f4: $c1
  add hl, bc                                      ; $59f5: $09
  ld [hl], a                                      ; $59f6: $77
  xor a                                           ; $59f7: $af
  ret                                             ; $59f8: $c9


jr_010_59f9:
  bit 7, a                                        ; $59f9: $cb $7f
  jr z, jr_010_5a14                               ; $59fb: $28 $17

  and $7f                                         ; $59fd: $e6 $7f
  cp $02                                          ; $59ff: $fe $02
  jr nc, jr_010_5a08                              ; $5a01: $30 $05

  ld hl, $dfa6                                    ; $5a03: $21 $a6 $df
  res 6, [hl]                                     ; $5a06: $cb $b6

jr_010_5a08:
  call Call_000_3fb8                              ; $5a08: $cd $b8 $3f
  pop hl                                          ; $5a0b: $e1
  push hl                                         ; $5a0c: $e5
  push bc                                         ; $5a0d: $c5
  ld bc, $dfad                                    ; $5a0e: $01 $ad $df
  add hl, bc                                      ; $5a11: $09
  ld [hl], a                                      ; $5a12: $77
  pop bc                                          ; $5a13: $c1

jr_010_5a14:
  pop hl                                          ; $5a14: $e1
  push bc                                         ; $5a15: $c5
  ld c, l                                         ; $5a16: $4d
  ld b, h                                         ; $5a17: $44
  ld a, e                                         ; $5a18: $7b
  ld [$dffd], a                                   ; $5a19: $ea $fd $df
  ld hl, $dfe4                                    ; $5a1c: $21 $e4 $df
  add hl, bc                                      ; $5a1f: $09
  ld a, [hl]                                      ; $5a20: $7e
  ld [hl], d                                      ; $5a21: $72
  ld hl, $dfe0                                    ; $5a22: $21 $e0 $df
  add hl, bc                                      ; $5a25: $09
  ld [hl], a                                      ; $5a26: $77
  ld hl, $dfe8                                    ; $5a27: $21 $e8 $df
  pop de                                          ; $5a2a: $d1
  push bc                                         ; $5a2b: $c5
  ld a, c                                         ; $5a2c: $79
  sla c                                           ; $5a2d: $cb $21
  add c                                           ; $5a2f: $81
  ld c, a                                         ; $5a30: $4f
  add hl, bc                                      ; $5a31: $09
  xor a                                           ; $5a32: $af
  ld [hl+], a                                     ; $5a33: $22
  ld a, e                                         ; $5a34: $7b
  ld [hl+], a                                     ; $5a35: $22
  ld [hl], d                                      ; $5a36: $72
  pop bc                                          ; $5a37: $c1
  ld hl, $58b9                                    ; $5a38: $21 $b9 $58
  add hl, bc                                      ; $5a3b: $09
  ld a, [$dfd3]                                   ; $5a3c: $fa $d3 $df
  or [hl]                                         ; $5a3f: $b6
  ld [$dfd3], a                                   ; $5a40: $ea $d3 $df
  ld a, [$dff8]                                   ; $5a43: $fa $f8 $df
  and $0f                                         ; $5a46: $e6 $0f
  ld e, a                                         ; $5a48: $5f
  ld a, [$dffd]                                   ; $5a49: $fa $fd $df
  call Call_010_5640                              ; $5a4c: $cd $40 $56
  ld e, a                                         ; $5a4f: $5f
  ld hl, $dfe4                                    ; $5a50: $21 $e4 $df
  add hl, bc                                      ; $5a53: $09
  ld d, [hl]                                      ; $5a54: $56
  ld hl, $dfad                                    ; $5a55: $21 $ad $df
  add hl, bc                                      ; $5a58: $09
  ld a, c                                         ; $5a59: $79
  ld [$dffd], a                                   ; $5a5a: $ea $fd $df
  ld a, [hl]                                      ; $5a5d: $7e
  call Call_010_4f18                              ; $5a5e: $cd $18 $4f
  ld a, [$dffd]                                   ; $5a61: $fa $fd $df
  ld e, a                                         ; $5a64: $5f
  ld d, $00                                       ; $5a65: $16 $00
  ld hl, $5a83                                    ; $5a67: $21 $83 $5a
  add hl, de                                      ; $5a6a: $19
  ld a, [$dfac]                                   ; $5a6b: $fa $ac $df
  and [hl]                                        ; $5a6e: $a6
  bit 1, e                                        ; $5a6f: $cb $4b
  jr z, jr_010_5a75                               ; $5a71: $28 $02

  swap c                                          ; $5a73: $cb $31

jr_010_5a75:
  bit 0, e                                        ; $5a75: $cb $43
  jr z, jr_010_5a7d                               ; $5a77: $28 $04

  sla c                                           ; $5a79: $cb $21
  sla c                                           ; $5a7b: $cb $21

jr_010_5a7d:
  or c                                            ; $5a7d: $b1
  ld [$dfac], a                                   ; $5a7e: $ea $ac $df
  xor a                                           ; $5a81: $af
  ret                                             ; $5a82: $c9


  db $fc, $f3, $cf, $3f

  ld e, d                                         ; $5a87: $5a
  db $21                                          ; $5a88: $21

  db $5a, $21, $a8, $fa, $23

  add hl, de                                      ; $5a8e: $19
  nop                                             ; $5a8f: $00
  nop                                             ; $5a90: $00
  nop                                             ; $5a91: $00
  nop                                             ; $5a92: $00

  db $90, $24, $4d, $e4, $01

  ld bc, $1302                                    ; $5a98: $01 $02 $13
  ld [bc], a                                      ; $5a9b: $02
  inc hl                                          ; $5a9c: $23
  ld [bc], a                                      ; $5a9d: $02
  inc l                                           ; $5a9e: $2c
  ld [bc], a                                      ; $5a9f: $02
  inc a                                           ; $5aa0: $3c
  ld [bc], a                                      ; $5aa1: $02
  ld c, h                                         ; $5aa2: $4c
  ld [bc], a                                      ; $5aa3: $02
  ld [hl], h                                      ; $5aa4: $74
  ld [bc], a                                      ; $5aa5: $02
  add e                                           ; $5aa6: $83
  ld [bc], a                                      ; $5aa7: $02

  db $97, $02, $9d, $02

  or a                                            ; $5aac: $b7
  ld [bc], a                                      ; $5aad: $02
  cp l                                            ; $5aae: $bd
  ld [bc], a                                      ; $5aaf: $02

  db $da, $02, $e6, $02, $f3, $02, $f9, $02, $ff, $02, $09, $03, $16, $03, $20, $03
  db $26, $03, $2c, $03, $37, $03, $52, $03, $58, $03, $5e, $03, $6b, $03, $7f, $03
  db $85, $03, $94, $03, $b0, $03, $bf, $03, $ce, $03, $d8, $03, $e3, $03, $e9, $03
  db $f1, $03, $f7, $03, $04, $04, $0f, $04, $23, $04, $29, $04

  cpl                                             ; $5aec: $2f
  inc b                                           ; $5aed: $04
  ld b, e                                         ; $5aee: $43
  inc b                                           ; $5aef: $04

  db $4e, $04

  adc a                                           ; $5af2: $8f
  inc b                                           ; $5af3: $04
  sub a                                           ; $5af4: $97
  inc b                                           ; $5af5: $04
  sbc a                                           ; $5af6: $9f
  inc b                                           ; $5af7: $04

  db $bf, $04, $e4, $04

  ld b, $05                                       ; $5afc: $06 $05
  db $11                                          ; $5afe: $11
  dec b                                           ; $5aff: $05

  db $1c, $05

  daa                                             ; $5b02: $27
  dec b                                           ; $5b03: $05

  db $32, $05

  dec a                                           ; $5b06: $3d
  dec b                                           ; $5b07: $05
  ld h, d                                         ; $5b08: $62
  dec b                                           ; $5b09: $05
  ld l, [hl]                                      ; $5b0a: $6e
  dec b                                           ; $5b0b: $05
  adc a                                           ; $5b0c: $8f
  dec b                                           ; $5b0d: $05
  sbc [hl]                                        ; $5b0e: $9e
  dec b                                           ; $5b0f: $05

  db $a7, $05

  or h                                            ; $5b12: $b4
  dec b                                           ; $5b13: $05

  db $bb, $05

  rst $18                                         ; $5b16: $df
  dec b                                           ; $5b17: $05
  ld [$2506], sp                                  ; $5b18: $08 $06 $25
  ld b, $31                                       ; $5b1b: $06 $31
  ld b, $3b                                       ; $5b1d: $06 $3b
  ld b, $45                                       ; $5b1f: $06 $45
  ld b, $69                                       ; $5b21: $06 $69
  ld b, $75                                       ; $5b23: $06 $75
  ld b, $7f                                       ; $5b25: $06 $7f
  ld b, $b5                                       ; $5b27: $06 $b5
  ld b, $bf                                       ; $5b29: $06 $bf
  ld b, $d9                                       ; $5b2b: $06 $d9
  ld b, $f8                                       ; $5b2d: $06 $f8
  ld b, $04                                       ; $5b2f: $06 $04
  rlca                                            ; $5b31: $07
  daa                                             ; $5b32: $27
  rlca                                            ; $5b33: $07
  cp a                                            ; $5b34: $bf
  rlca                                            ; $5b35: $07
  db $fc                                          ; $5b36: $fc
  rlca                                            ; $5b37: $07
  ld d, a                                         ; $5b38: $57
  ld [$08ac], sp                                  ; $5b39: $08 $ac $08
  db $dd                                          ; $5b3c: $dd
  ld [$08f5], sp                                  ; $5b3d: $08 $f5 $08
  rla                                             ; $5b40: $17
  add hl, bc                                      ; $5b41: $09
  add hl, sp                                      ; $5b42: $39
  add hl, bc                                      ; $5b43: $09
  add [hl]                                        ; $5b44: $86
  add hl, bc                                      ; $5b45: $09
  and h                                           ; $5b46: $a4
  add hl, bc                                      ; $5b47: $09
  call c, $1209                                   ; $5b48: $dc $09 $12
  ld a, [bc]                                      ; $5b4b: $0a
  ld hl, $3e0a                                    ; $5b4c: $21 $0a $3e
  ld a, [bc]                                      ; $5b4f: $0a
  ld d, d                                         ; $5b50: $52
  ld a, [bc]                                      ; $5b51: $0a
  or h                                            ; $5b52: $b4
  ld a, [bc]                                      ; $5b53: $0a
  ret nz                                          ; $5b54: $c0

  ld a, [bc]                                      ; $5b55: $0a
  ret z                                           ; $5b56: $c8

  ld a, [bc]                                      ; $5b57: $0a
  ret nc                                          ; $5b58: $d0

  ld a, [bc]                                      ; $5b59: $0a
  rla                                             ; $5b5a: $17
  dec bc                                          ; $5b5b: $0b

  db $61, $0b, $6d, $0b, $75, $0b, $7d, $0b

  sbc h                                           ; $5b64: $9c
  dec bc                                          ; $5b65: $0b
  db $d3                                          ; $5b66: $d3
  dec bc                                          ; $5b67: $0b
  inc de                                          ; $5b68: $13
  inc c                                           ; $5b69: $0c
  ld b, h                                         ; $5b6a: $44
  inc c                                           ; $5b6b: $0c
  ld a, c                                         ; $5b6c: $79
  inc c                                           ; $5b6d: $0c
  add l                                           ; $5b6e: $85
  inc c                                           ; $5b6f: $0c
  and l                                           ; $5b70: $a5
  inc c                                           ; $5b71: $0c
  push bc                                         ; $5b72: $c5
  inc c                                           ; $5b73: $0c
  jp hl                                           ; $5b74: $e9


  inc c                                           ; $5b75: $0c
  rla                                             ; $5b76: $17
  dec c                                           ; $5b77: $0d
  sub l                                           ; $5b78: $95
  dec c                                           ; $5b79: $0d
  and c                                           ; $5b7a: $a1
  dec c                                           ; $5b7b: $0d
  xor c                                           ; $5b7c: $a9
  dec c                                           ; $5b7d: $0d
  or c                                            ; $5b7e: $b1
  dec c                                           ; $5b7f: $0d
  cp l                                            ; $5b80: $bd
  dec c                                           ; $5b81: $0d
  rst $00                                         ; $5b82: $c7
  dec c                                           ; $5b83: $0d
  pop de                                          ; $5b84: $d1
  dec c                                           ; $5b85: $0d
  push af                                         ; $5b86: $f5
  dec c                                           ; $5b87: $0d
  ld [hl+], a                                     ; $5b88: $22
  db $0e                                          ; $5b89: $0e

  db $41, $0e, $85, $0e

  cp c                                            ; $5b8e: $b9
  ld c, $e0                                       ; $5b8f: $0e $e0
  ld c, $0f                                       ; $5b91: $0e $0f
  rrca                                            ; $5b93: $0f
  inc l                                           ; $5b94: $2c
  rrca                                            ; $5b95: $0f
  dec sp                                          ; $5b96: $3b
  rrca                                            ; $5b97: $0f
  ld b, a                                         ; $5b98: $47
  rrca                                            ; $5b99: $0f
  ld a, [hl]                                      ; $5b9a: $7e
  rrca                                            ; $5b9b: $0f

  db $b5, $0f, $dd, $0f

  jr nz, jr_010_5bb2                              ; $5ba0: $20 $10

  ld h, l                                         ; $5ba2: $65
  db $10                                          ; $5ba3: $10
  sbc a                                           ; $5ba4: $9f
  db $10                                          ; $5ba5: $10
  xor e                                           ; $5ba6: $ab
  db $10                                          ; $5ba7: $10
  or l                                            ; $5ba8: $b5
  db $10                                          ; $5ba9: $10
  cp a                                            ; $5baa: $bf
  db $10                                          ; $5bab: $10
  ldh [rNR10], a                                  ; $5bac: $e0 $10
  dec bc                                          ; $5bae: $0b
  ld de, $113d                                    ; $5baf: $11 $3d $11

jr_010_5bb2:
  ld h, c                                         ; $5bb2: $61
  ld de, $117c                                    ; $5bb3: $11 $7c $11
  sub e                                           ; $5bb6: $93
  ld de, $11a7                                    ; $5bb7: $11 $a7 $11
  xor [hl]                                        ; $5bba: $ae
  ld de, $11b6                                    ; $5bbb: $11 $b6 $11
  cp [hl]                                         ; $5bbe: $be
  ld de, $11fd                                    ; $5bbf: $11 $fd $11
  ld de, $4e12                                    ; $5bc2: $11 $12 $4e
  ld [de], a                                      ; $5bc5: $12
  ld e, h                                         ; $5bc6: $5c
  ld [de], a                                      ; $5bc7: $12
  ld h, [hl]                                      ; $5bc8: $66
  ld [de], a                                      ; $5bc9: $12

  db $70, $12, $2a, $13

  halt                                            ; $5bce: $76
  inc de                                          ; $5bcf: $13
  add c                                           ; $5bd0: $81
  inc de                                          ; $5bd1: $13

  db $95, $13, $a9, $13, $bd, $13, $c8, $13, $fe, $13

  ld h, $14                                       ; $5bdc: $26 $14
  ld e, a                                         ; $5bde: $5f
  inc d                                           ; $5bdf: $14
  ld l, l                                         ; $5be0: $6d
  inc d                                           ; $5be1: $14
  sbc [hl]                                        ; $5be2: $9e
  inc d                                           ; $5be3: $14
  db $c4                                          ; $5be4: $c4
  inc d                                           ; $5be5: $14

  db $ef, $14, $05, $15, $10, $15, $55, $15, $95, $15, $a0, $15, $ab, $15, $b6, $15
  db $c1, $15

  db $cc                                          ; $5bf8: $cc
  dec d                                           ; $5bf9: $15

  db $f2, $15, $fb, $15, $44, $16, $82, $16, $d1, $16, $fb, $16, $3a, $17, $73, $17
  db $8d, $17

  sbc h                                           ; $5c0c: $9c
  rla                                             ; $5c0d: $17
  and [hl]                                        ; $5c0e: $a6
  rla                                             ; $5c0f: $17
  or b                                            ; $5c10: $b0
  rla                                             ; $5c11: $17

  db $be, $17

  db $ea                                          ; $5c14: $ea
  rla                                             ; $5c15: $17

  db $25, $18, $4f, $18

  or a                                            ; $5c1a: $b7
  jr jr_010_5c1e                                  ; $5c1b: $18 $01

  add hl, de                                      ; $5c1d: $19

jr_010_5c1e:
  dec h                                           ; $5c1e: $25
  add hl, de                                      ; $5c1f: $19

  db $4c, $19, $c7, $19, $eb, $19, $25, $1a, $52, $1a, $75, $1a

  sbc d                                           ; $5c2c: $9a
  ld a, [de]                                      ; $5c2d: $1a

  db $17, $1b, $66, $1b, $b1, $1b, $cb, $1b

  cp $1b                                          ; $5c36: $fe $1b

  db $27, $1c, $42, $1c, $6f, $1c, $d3, $1c

  ld hl, sp+$1c                                   ; $5c40: $f8 $1c

  db $03, $1d, $0e, $1d, $19, $1d, $42, $1d, $7c, $1d, $8a, $1d, $94, $1d, $9e, $1d
  db $c1, $1d

  ld sp, hl                                       ; $5c54: $f9
  dec e                                           ; $5c55: $1d
  dec e                                           ; $5c56: $1d
  db $1e                                          ; $5c57: $1e

  db $7c, $1e

  cp d                                            ; $5c5a: $ba
  db $1e                                          ; $5c5b: $1e

  db $ec, $1e, $36, $1f

  ld [hl], e                                      ; $5c60: $73
  rra                                             ; $5c61: $1f

  db $9b, $1f

  cp l                                            ; $5c64: $bd
  rra                                             ; $5c65: $1f
  pop de                                          ; $5c66: $d1
  rra                                             ; $5c67: $1f

  db $f5, $1f, $19, $20, $4f, $20, $76, $20, $ad, $20, $d0, $20, $e1, $20, $0d, $21
  db $33, $21, $13, $0f, $0c, $01, $04, $01, $00, $00, $32, $01, $00, $04, $08, $04
  db $01, $00, $00, $3b, $28, $0f, $13, $07, $04, $01, $00, $00, $00, $0d, $00, $0c
  db $00, $04, $01, $00, $00, $03, $13, $03, $0c, $01, $04, $01, $00, $00, $0e, $0d
  db $00, $04, $01, $00, $00, $1a, $01, $00, $13, $04, $04, $01, $00, $00, $00, $0d
  db $00, $0c, $00, $04, $01, $00, $00, $00, $0d, $00, $04, $01, $00, $00, $14, $01
  db $00, $0c, $05, $04, $01, $00, $00, $00, $0d, $00, $04, $01, $00, $00, $0c, $01
  db $00, $0a, $06, $04, $01, $00, $00, $00, $0d, $00

  inc c                                           ; $5ce2: $0c
  nop                                             ; $5ce3: $00
  ld [$fe00], sp                                  ; $5ce4: $08 $00 $fe
  nop                                             ; $5ce7: $00
  inc bc                                          ; $5ce8: $03
  nop                                             ; $5ce9: $00
  ld c, c                                         ; $5cea: $49
  ld [bc], a                                      ; $5ceb: $02
  nop                                             ; $5cec: $00
  nop                                             ; $5ced: $00
  inc b                                           ; $5cee: $04
  nop                                             ; $5cef: $00
  nop                                             ; $5cf0: $00
  nop                                             ; $5cf1: $00
  ld [$0008], sp                                  ; $5cf2: $08 $08 $00
  nop                                             ; $5cf5: $00
  nop                                             ; $5cf6: $00
  rra                                             ; $5cf7: $1f
  inc b                                           ; $5cf8: $04
  nop                                             ; $5cf9: $00
  nop                                             ; $5cfa: $00
  nop                                             ; $5cfb: $00
  add hl, bc                                      ; $5cfc: $09
  ld bc, $1400                                    ; $5cfd: $01 $00 $14
  dec b                                           ; $5d00: $05
  inc de                                          ; $5d01: $13
  inc bc                                          ; $5d02: $03
  inc b                                           ; $5d03: $04
  nop                                             ; $5d04: $00
  nop                                             ; $5d05: $00
  nop                                             ; $5d06: $00
  nop                                             ; $5d07: $00
  dec c                                           ; $5d08: $0d
  nop                                             ; $5d09: $00
  ld bc, $0400                                    ; $5d0a: $01 $00 $04
  ld [$010c], sp                                  ; $5d0d: $08 $0c $01
  inc de                                          ; $5d10: $13
  rlca                                            ; $5d11: $07
  inc b                                           ; $5d12: $04
  ld bc, $0000                                    ; $5d13: $01 $00 $00
  nop                                             ; $5d16: $00
  dec c                                           ; $5d17: $0d
  nop                                             ; $5d18: $00
  inc de                                          ; $5d19: $13
  rrca                                            ; $5d1a: $0f
  inc c                                           ; $5d1b: $0c
  db $01, $04, $01                                ; $5d1c: $01 $04 $01
  nop                                             ; $5d1f: $00
  nop                                             ; $5d20: $00
  ld [hl-], a                                     ; $5d21: $32
  ld bc, $0400                                    ; $5d22: $01 $00 $04
  db $08, $04, $01                              ; $5d25: $08 $04 $01
  nop                                             ; $5d28: $00
  nop                                             ; $5d29: $00
  nop                                             ; $5d2a: $00
  dec c                                           ; $5d2b: $0d
  nop                                             ; $5d2c: $00

  db $0c, $00, $06, $02, $3c

  nop                                             ; $5d32: $00

  db $09, $05, $0c, $01, $04, $01, $00, $00, $03, $08, $01, $0c, $00, $09, $0c, $0c
  db $02, $13, $06, $04, $01, $00, $00, $56, $0d, $00

  inc c                                           ; $5d4d: $0c
  ld bc, $0206                                    ; $5d4e: $01 $06 $02
  inc a                                           ; $5d51: $3c
  nop                                             ; $5d52: $00
  inc c                                           ; $5d53: $0c
  ld [bc], a                                      ; $5d54: $02
  inc de                                          ; $5d55: $13
  ld a, [bc]                                      ; $5d56: $0a
  inc b                                           ; $5d57: $04
  ld bc, $0000                                    ; $5d58: $01 $00 $00
  inc d                                           ; $5d5b: $14
  ld bc, $0b00                                    ; $5d5c: $01 $00 $0b
  db $08, $04, $01                             ; $5d5f: $08 $04 $01
  nop                                             ; $5d62: $00
  nop                                             ; $5d63: $00
  ld a, [de]                                      ; $5d64: $1a
  jr z, @+$11                                     ; $5d65: $28 $0f

  inc de                                          ; $5d67: $13
  inc bc                                          ; $5d68: $03
  inc b                                           ; $5d69: $04
  ld bc, $0000                                    ; $5d6a: $01 $00 $00
  nop                                             ; $5d6d: $00
  dec c                                           ; $5d6e: $0d
  nop                                             ; $5d6f: $00

  db $08, $00, $0c, $00, $0c, $ff, $24, $0f, $06, $02, $3c

  nop                                             ; $5d7b: $00

  db $0c, $01, $04, $01, $00, $00, $03, $13, $07, $06, $02, $23

  nop                                             ; $5d88: $00

  db $0a, $02, $06, $02, $01

  nop                                             ; $5d8e: $00

  db $0a, $00, $06, $02, $01

  nop                                             ; $5d94: $00

  db $0c, $03, $13, $09, $28, $06, $06, $02, $13

  nop                                             ; $5d9e: $00

  db $0c, $03, $01, $00, $13, $04, $04, $01, $00, $00, $00, $0d, $00, $0c, $03, $28
  db $08, $13, $09, $06, $02, $13

  nop                                             ; $5db5: $00

  db $0a, $02, $06, $04, $0f

  nop                                             ; $5dbb: $00

  db $0a, $00, $06, $04, $0f

  nop                                             ; $5dc1: $00

  db $0c, $01, $13, $07, $04, $01, $00, $00, $00, $0d, $00, $0c, $ff, $13, $09, $10
  db $44, $04, $00, $00, $00, $02, $10, $34, $04, $00, $00, $00, $02, $10, $24, $04
  db $00, $00, $00, $02, $0d, $00, $0a, $02, $06, $03, $5e

  nop                                             ; $5ded: $00

  db $0a, $00, $06, $03, $5e

  nop                                             ; $5df3: $00

  db $0c, $ff, $10, $11, $13, $01, $04, $01, $00, $00, $03, $0d, $00, $13, $02, $0c
  db $02, $04, $00, $00, $00, $02, $0c, $01, $04, $00, $00, $00, $02, $06, $02, $23

  nop                                             ; $5e14: $00

  db $0c, $00, $06, $02, $2c

  nop                                             ; $5e1a: $00

  db $0c, $00, $13, $07, $01, $00, $0a, $06, $04, $01, $00, $00, $00, $0d, $00, $0c
  db $00, $08, $00, $f9, $00, $04, $01, $00, $00, $03, $08, $00, $fe, $00, $04, $01
  db $00, $00, $03, $08, $00, $00, $00, $06, $02, $2c

  nop                                             ; $5e45: $00

  db $13, $06, $01, $00, $06, $06, $0c, $00, $04, $01, $00, $00, $00, $0d, $00, $13
  db $0e, $01, $00, $06, $06, $0c, $00, $04, $01, $00, $00, $00, $0d, $00, $13, $03
  db $01, $00, $07, $05, $06, $02, $23

  nop                                             ; $5e6d: $00

  db $0c, $00, $04, $01, $00, $00, $14, $06, $02, $2c

  nop                                             ; $5e78: $00

  db $0c, $02, $06, $02, $3c

  nop                                             ; $5e7e: $00

  db $24, $08, $0c, $ff, $06, $02, $3c

  nop                                             ; $5e86: $00

  db $13, $02, $06, $02, $23

  nop                                             ; $5e8c: $00

  db $0c, $00, $04, $01, $00, $00, $03, $0c, $01, $06, $02, $2c

  nop                                             ; $5e99: $00

  db $24, $0c, $0c, $ff, $04, $01, $00, $00, $00, $0d, $00, $0c, $02, $13, $05, $04
  db $01, $00, $00, $14, $01, $00, $03, $07, $04, $01, $00, $00, $00, $0d, $00, $0c
  db $01, $06, $02, $2c

  nop                                             ; $5ebe: $00

  db $0c, $02, $06, $02, $2c

  nop                                             ; $5ec4: $00
  inc de                                          ; $5ec5: $13
  rrca                                            ; $5ec6: $0f
  inc c                                           ; $5ec7: $0c
  ld bc, $0004                                    ; $5ec8: $01 $04 $00
  nop                                             ; $5ecb: $00
  nop                                             ; $5ecc: $00
  ld h, h                                         ; $5ecd: $64
  jr z, jr_010_5edf                               ; $5ece: $28 $0f

  inc de                                          ; $5ed0: $13
  rlca                                            ; $5ed1: $07
  inc b                                           ; $5ed2: $04
  nop                                             ; $5ed3: $00
  nop                                             ; $5ed4: $00
  nop                                             ; $5ed5: $00
  nop                                             ; $5ed6: $00
  dec c                                           ; $5ed7: $0d
  nop                                             ; $5ed8: $00
  ld c, $02                                       ; $5ed9: $0e $02
  ld hl, $0403                                    ; $5edb: $21 $03 $04
  nop                                             ; $5ede: $00

jr_010_5edf:
  nop                                             ; $5edf: $00
  nop                                             ; $5ee0: $00
  sbc [hl]                                        ; $5ee1: $9e
  dec c                                           ; $5ee2: $0d
  nop                                             ; $5ee3: $00

  db $0e, $01, $0c, $00, $13, $03, $0b, $00, $50, $55, $00, $03, $02, $00, $04, $00
  db $00, $04, $00, $00, $00, $03, $08, $01, $fd, $00, $04, $00, $00, $00, $03, $08
  db $01, $02, $00, $03, $fe, $80, $fd, $00, $00, $04, $00, $00, $00, $03, $08, $01
  db $fd, $4a, $04, $00, $00, $00, $03, $08, $01, $03, $00, $05, $04, $ff, $c7, $0d
  db $00

  ld c, $03                                       ; $5f25: $0e $03
  db $10                                          ; $5f27: $10
  ld d, a                                         ; $5f28: $57
  ld b, $04                                       ; $5f29: $06 $04
  cpl                                             ; $5f2b: $2f
  nop                                             ; $5f2c: $00
  ld c, $03                                       ; $5f2d: $0e $03
  db $10                                          ; $5f2f: $10
  ld b, [hl]                                      ; $5f30: $46
  ld b, $04                                       ; $5f31: $06 $04
  cpl                                             ; $5f33: $2f
  nop                                             ; $5f34: $00
  ld c, $02                                       ; $5f35: $0e $02
  inc c                                           ; $5f37: $0c
  ld bc, $ff03                                    ; $5f38: $01 $03 $ff
  or c                                            ; $5f3b: $b1
  rst $28                                         ; $5f3c: $ef
  nop                                             ; $5f3d: $00
  nop                                             ; $5f3e: $00
  inc b                                           ; $5f3f: $04
  nop                                             ; $5f40: $00
  nop                                             ; $5f41: $00
  nop                                             ; $5f42: $00
  jr c, jr_010_5f4d                               ; $5f43: $38 $08

  ld bc, $00ef                                    ; $5f45: $01 $ef $00
  inc bc                                          ; $5f48: $03
  nop                                             ; $5f49: $00
  inc c                                           ; $5f4a: $0c
  ld b, $00                                       ; $5f4b: $06 $00

jr_010_5f4d:
  nop                                             ; $5f4d: $00
  inc b                                           ; $5f4e: $04
  nop                                             ; $5f4f: $00
  nop                                             ; $5f50: $00
  nop                                             ; $5f51: $00
  ld a, d                                         ; $5f52: $7a
  dec c                                           ; $5f53: $0d
  nop                                             ; $5f54: $00

  db $0c, $02, $13, $03, $04, $00, $00, $00, $02, $08, $01, $05, $00, $04, $00, $00
  db $00, $02, $08, $01, $02, $00, $04, $00, $00, $00, $03, $08, $01, $fc, $00, $05
  db $05, $ff, $e1, $0d, $00, $0e, $01, $0c, $00, $03, $04, $00, $0c, $00, $00, $09
  db $04, $04, $00, $00, $00, $02, $09, $0c, $04, $00, $00, $00, $02, $08, $01, $fe
  db $00, $05, $0e, $ff, $ea, $0d, $00

  ld c, $02                                       ; $5f9c: $0e $02
  ld hl, $0404                                    ; $5f9e: $21 $04 $04
  nop                                             ; $5fa1: $00
  nop                                             ; $5fa2: $00
  nop                                             ; $5fa3: $00
  ld c, d                                         ; $5fa4: $4a
  dec c                                           ; $5fa5: $0d
  nop                                             ; $5fa6: $00
  ld c, $02                                       ; $5fa7: $0e $02
  ld hl, $0405                                    ; $5fa9: $21 $05 $04
  nop                                             ; $5fac: $00
  nop                                             ; $5fad: $00
  nop                                             ; $5fae: $00
  ld a, [de]                                      ; $5faf: $1a
  dec c                                           ; $5fb0: $0d
  nop                                             ; $5fb1: $00

  db $0e, $02, $21, $06, $04, $00, $00, $00, $62, $0d, $00

  ld c, $02                                       ; $5fbd: $0e $02
  ld hl, $0407                                    ; $5fbf: $21 $07 $04
  nop                                             ; $5fc2: $00
  nop                                             ; $5fc3: $00
  nop                                             ; $5fc4: $00
  ld h, d                                         ; $5fc5: $62
  dec c                                           ; $5fc6: $0d
  nop                                             ; $5fc7: $00

  db $0e, $02, $21, $08, $04, $00, $00, $00, $62, $0d, $00

  ld c, $03                                       ; $5fd3: $0e $03
  inc c                                           ; $5fd5: $0c
  rst $38                                         ; $5fd6: $ff
  inc de                                          ; $5fd7: $13
  dec bc                                          ; $5fd8: $0b
  db $10                                          ; $5fd9: $10
  ld sp, $0004                                    ; $5fda: $31 $04 $00
  nop                                             ; $5fdd: $00
  nop                                             ; $5fde: $00
  ld [hl-], a                                     ; $5fdf: $32
  jr z, jr_010_5ff1                               ; $5fe0: $28 $0f

  inc de                                          ; $5fe2: $13
  rlca                                            ; $5fe3: $07
  inc b                                           ; $5fe4: $04
  nop                                             ; $5fe5: $00
  nop                                             ; $5fe6: $00
  nop                                             ; $5fe7: $00
  inc b                                           ; $5fe8: $04
  db $10                                          ; $5fe9: $10
  ld sp, $0004                                    ; $5fea: $31 $04 $00
  nop                                             ; $5fed: $00
  nop                                             ; $5fee: $00
  dec b                                           ; $5fef: $05
  db $10                                          ; $5ff0: $10

jr_010_5ff1:
  ld b, c                                         ; $5ff1: $41
  dec b                                           ; $5ff2: $05
  inc c                                           ; $5ff3: $0c
  rst $38                                         ; $5ff4: $ff
  xor $0d                                         ; $5ff5: $ee $0d
  nop                                             ; $5ff7: $00
  ld h, $03                                       ; $5ff8: $26 $03
  dec sp                                          ; $5ffa: $3b
  inc b                                           ; $5ffb: $04
  nop                                             ; $5ffc: $00
  nop                                             ; $5ffd: $00
  nop                                             ; $5ffe: $00
  ld a, [bc]                                      ; $5fff: $0a
  ld h, $01                                       ; $6000: $26 $01
  ld a, [hl-]                                     ; $6002: $3a
  nop                                             ; $6003: $00
  ld c, $01                                       ; $6004: $0e $01
  ld [$1401], sp                                  ; $6006: $08 $01 $14
  nop                                             ; $6009: $00
  inc c                                           ; $600a: $0c
  ld [bc], a                                      ; $600b: $02
  inc bc                                          ; $600c: $03
  inc bc                                          ; $600d: $03
  ld l, l                                         ; $600e: $6d
  jr jr_010_6011                                  ; $600f: $18 $00

jr_010_6011:
  nop                                             ; $6011: $00
  inc b                                           ; $6012: $04
  nop                                             ; $6013: $00
  nop                                             ; $6014: $00
  nop                                             ; $6015: $00
  ld [$081f], sp                                  ; $6016: $08 $1f $08
  ld bc, $0018                                    ; $6019: $01 $18 $00
  inc de                                          ; $601c: $13
  dec b                                           ; $601d: $05
  inc b                                           ; $601e: $04
  nop                                             ; $601f: $00
  nop                                             ; $6020: $00
  nop                                             ; $6021: $00
  ld c, d                                         ; $6022: $4a
  dec c                                           ; $6023: $0d
  nop                                             ; $6024: $00
  ld c, $03                                       ; $6025: $0e $03
  inc de                                          ; $6027: $13
  add hl, bc                                      ; $6028: $09
  db $10                                          ; $6029: $10
  dec [hl]                                        ; $602a: $35
  inc c                                           ; $602b: $0c
  rst $38                                         ; $602c: $ff
  inc b                                           ; $602d: $04
  nop                                             ; $602e: $00
  nop                                             ; $602f: $00
  nop                                             ; $6030: $00
  ld de, $000d                                    ; $6031: $11 $0d $00
  ld c, $03                                       ; $6034: $0e $03
  ld de, $daff                                    ; $6036: $11 $ff $da
  ld b, $05                                       ; $6039: $06 $05
  xor c                                           ; $603b: $a9
  nop                                             ; $603c: $00

  db $0e, $03, $10, $7f, $0c, $ff, $04, $01, $00, $00, $00

  dec c                                           ; $6048: $0d
  nop                                             ; $6049: $00
  rlca                                            ; $604a: $07
  ld h, $00                                       ; $604b: $26 $00
  ld b, $1c                                       ; $604d: $06 $1c
  ld l, $00                                       ; $604f: $2e $00

  db $0e, $03, $0c, $ff, $10, $66, $04, $00, $00, $00, $05, $10, $64, $13, $03, $04
  db $00, $00, $00, $0e, $10, $73, $04, $00, $00, $00, $11, $10, $66, $04, $00, $00
  db $00, $17, $0d, $00

  ld c, $00                                       ; $6075: $0e $00
  inc c                                           ; $6077: $0c
  nop                                             ; $6078: $00
  inc b                                           ; $6079: $04
  nop                                             ; $607a: $00
  nop                                             ; $607b: $00
  nop                                             ; $607c: $00
  inc b                                           ; $607d: $04
  ld [$fb01], sp                                  ; $607e: $08 $01 $fb
  nop                                             ; $6081: $00
  inc b                                           ; $6082: $04
  nop                                             ; $6083: $00
  nop                                             ; $6084: $00
  nop                                             ; $6085: $00
  inc b                                           ; $6086: $04
  ld [$0501], sp                                  ; $6087: $08 $01 $05
  add b                                           ; $608a: $80
  dec b                                           ; $608b: $05
  dec b                                           ; $608c: $05
  rst $38                                         ; $608d: $ff
  ld [$0413], a                                   ; $608e: $ea $13 $04
  inc bc                                          ; $6091: $03
  nop                                             ; $6092: $00
  ldh [rTAC], a                                   ; $6093: $e0 $07
  nop                                             ; $6095: $00
  nop                                             ; $6096: $00
  inc b                                           ; $6097: $04
  nop                                             ; $6098: $00
  nop                                             ; $6099: $00
  nop                                             ; $609a: $00
  jr c, jr_010_60aa                               ; $609b: $38 $0d

  nop                                             ; $609d: $00
  ld c, $03                                       ; $609e: $0e $03
  inc c                                           ; $60a0: $0c
  rst $38                                         ; $60a1: $ff
  db $10                                          ; $60a2: $10
  inc a                                           ; $60a3: $3c
  add hl, bc                                      ; $60a4: $09
  ld b, $04                                       ; $60a5: $06 $04
  ld bc, $0000                                    ; $60a7: $01 $00 $00

jr_010_60aa:
  inc b                                           ; $60aa: $04
  add hl, bc                                      ; $60ab: $09
  nop                                             ; $60ac: $00
  inc b                                           ; $60ad: $04
  ld bc, $0000                                    ; $60ae: $01 $00 $00
  inc b                                           ; $60b1: $04
  add hl, bc                                      ; $60b2: $09
  ld b, $04                                       ; $60b3: $06 $04
  nop                                             ; $60b5: $00
  nop                                             ; $60b6: $00
  nop                                             ; $60b7: $00
  inc d                                           ; $60b8: $14
  dec c                                           ; $60b9: $0d
  nop                                             ; $60ba: $00
  ld h, $00                                       ; $60bb: $26 $00
  ld b, h                                         ; $60bd: $44
  inc b                                           ; $60be: $04
  nop                                             ; $60bf: $00
  nop                                             ; $60c0: $00
  nop                                             ; $60c1: $00
  rlca                                            ; $60c2: $07
  ld h, $01                                       ; $60c3: $26 $01
  ld b, e                                         ; $60c5: $43
  nop                                             ; $60c6: $00
  ld c, $01                                       ; $60c7: $0e $01
  add hl, bc                                      ; $60c9: $09
  ld [$020a], sp                                  ; $60ca: $08 $0a $02
  ld b, $06                                       ; $60cd: $06 $06
  ld b, l                                         ; $60cf: $45
  nop                                             ; $60d0: $00
  ld c, $00                                       ; $60d1: $0e $00
  add hl, bc                                      ; $60d3: $09
  rrca                                            ; $60d4: $0f
  ld a, [bc]                                      ; $60d5: $0a
  nop                                             ; $60d6: $00
  ld b, $06                                       ; $60d7: $06 $06
  ld b, l                                         ; $60d9: $45
  nop                                             ; $60da: $00
  inc c                                           ; $60db: $0c
  nop                                             ; $60dc: $00
  inc b                                           ; $60dd: $04
  nop                                             ; $60de: $00
  nop                                             ; $60df: $00
  nop                                             ; $60e0: $00
  inc c                                           ; $60e1: $0c
  ld [$f801], sp                                  ; $60e2: $08 $01 $f8
  nop                                             ; $60e5: $00
  inc b                                           ; $60e6: $04
  nop                                             ; $60e7: $00
  nop                                             ; $60e8: $00
  nop                                             ; $60e9: $00
  dec b                                           ; $60ea: $05
  ld [$0301], sp                                  ; $60eb: $08 $01 $03
  nop                                             ; $60ee: $00
  inc b                                           ; $60ef: $04
  nop                                             ; $60f0: $00
  nop                                             ; $60f1: $00
  nop                                             ; $60f2: $00
  dec b                                           ; $60f3: $05
  ld [$0501], sp                                  ; $60f4: $08 $01 $05
  nop                                             ; $60f7: $00
  inc b                                           ; $60f8: $04
  nop                                             ; $60f9: $00
  nop                                             ; $60fa: $00
  nop                                             ; $60fb: $00
  inc c                                           ; $60fc: $0c
  dec c                                           ; $60fd: $0d
  nop                                             ; $60fe: $00
  ld h, $00                                       ; $60ff: $26 $00
  ld c, c                                         ; $6101: $49
  inc b                                           ; $6102: $04
  nop                                             ; $6103: $00
  nop                                             ; $6104: $00
  nop                                             ; $6105: $00
  rlca                                            ; $6106: $07
  ld h, $01                                       ; $6107: $26 $01
  ld b, a                                         ; $6109: $47
  nop                                             ; $610a: $00
  ld c, $01                                       ; $610b: $0e $01
  add hl, bc                                      ; $610d: $09
  ld [$020a], sp                                  ; $610e: $08 $0a $02
  ld b, $06                                       ; $6111: $06 $06
  ld a, a                                         ; $6113: $7f
  nop                                             ; $6114: $00
  inc c                                           ; $6115: $0c
  nop                                             ; $6116: $00
  inc b                                           ; $6117: $04
  nop                                             ; $6118: $00
  nop                                             ; $6119: $00
  nop                                             ; $611a: $00
  inc c                                           ; $611b: $0c
  ld [$fb01], sp                                  ; $611c: $08 $01 $fb
  nop                                             ; $611f: $00
  inc b                                           ; $6120: $04
  nop                                             ; $6121: $00
  nop                                             ; $6122: $00
  nop                                             ; $6123: $00
  dec b                                           ; $6124: $05
  ld [$0901], sp                                  ; $6125: $08 $01 $09
  nop                                             ; $6128: $00
  inc b                                           ; $6129: $04
  nop                                             ; $612a: $00
  nop                                             ; $612b: $00
  nop                                             ; $612c: $00
  dec b                                           ; $612d: $05
  ld [$0201], sp                                  ; $612e: $08 $01 $02
  nop                                             ; $6131: $00
  inc b                                           ; $6132: $04
  nop                                             ; $6133: $00
  nop                                             ; $6134: $00
  nop                                             ; $6135: $00
  inc c                                           ; $6136: $0c
  ld [$f701], sp                                  ; $6137: $08 $01 $f7
  nop                                             ; $613a: $00
  inc b                                           ; $613b: $04
  nop                                             ; $613c: $00
  nop                                             ; $613d: $00
  nop                                             ; $613e: $00
  inc c                                           ; $613f: $0c
  ld [$0a01], sp                                  ; $6140: $08 $01 $0a
  nop                                             ; $6143: $00
  inc b                                           ; $6144: $04
  nop                                             ; $6145: $00
  nop                                             ; $6146: $00
  nop                                             ; $6147: $00
  inc c                                           ; $6148: $0c
  dec c                                           ; $6149: $0d
  nop                                             ; $614a: $00
  ld c, $00                                       ; $614b: $0e $00
  add hl, bc                                      ; $614d: $09
  rrca                                            ; $614e: $0f
  ld a, [bc]                                      ; $614f: $0a
  nop                                             ; $6150: $00
  ld b, $06                                       ; $6151: $06 $06
  ld a, a                                         ; $6153: $7f
  nop                                             ; $6154: $00
  ld c, $03                                       ; $6155: $0e $03
  db $10                                          ; $6157: $10
  ld b, c                                         ; $6158: $41
  inc c                                           ; $6159: $0c
  rst $38                                         ; $615a: $ff
  add hl, bc                                      ; $615b: $09
  inc b                                           ; $615c: $04
  inc b                                           ; $615d: $04
  nop                                             ; $615e: $00
  nop                                             ; $615f: $00
  nop                                             ; $6160: $00
  ld [bc], a                                      ; $6161: $02
  add hl, bc                                      ; $6162: $09
  nop                                             ; $6163: $00
  inc b                                           ; $6164: $04
  nop                                             ; $6165: $00
  nop                                             ; $6166: $00
  nop                                             ; $6167: $00
  inc bc                                          ; $6168: $03
  dec b                                           ; $6169: $05
  dec b                                           ; $616a: $05
  rst $38                                         ; $616b: $ff
  db $ec                                          ; $616c: $ec
  dec c                                           ; $616d: $0d
  nop                                             ; $616e: $00
  ld c, $03                                       ; $616f: $0e $03
  inc c                                           ; $6171: $0c
  rst $38                                         ; $6172: $ff
  inc de                                          ; $6173: $13
  add hl, bc                                      ; $6174: $09
  db $10                                          ; $6175: $10
  ld d, [hl]                                      ; $6176: $56
  inc b                                           ; $6177: $04
  nop                                             ; $6178: $00
  nop                                             ; $6179: $00
  nop                                             ; $617a: $00
  add hl, bc                                      ; $617b: $09
  db $10                                          ; $617c: $10
  ld b, l                                         ; $617d: $45
  inc b                                           ; $617e: $04
  nop                                             ; $617f: $00
  nop                                             ; $6180: $00
  nop                                             ; $6181: $00
  add hl, bc                                      ; $6182: $09
  db $10                                          ; $6183: $10
  inc sp                                          ; $6184: $33
  inc b                                           ; $6185: $04
  nop                                             ; $6186: $00
  nop                                             ; $6187: $00
  nop                                             ; $6188: $00
  add hl, bc                                      ; $6189: $09
  ld b, $1b                                       ; $618a: $06 $1b
  add c                                           ; $618c: $81
  nop                                             ; $618d: $00
  ld h, $01                                       ; $618e: $26 $01
  ld d, a                                         ; $6190: $57
  inc b                                           ; $6191: $04
  nop                                             ; $6192: $00
  nop                                             ; $6193: $00
  nop                                             ; $6194: $00
  ld h, $26                                       ; $6195: $26 $26
  nop                                             ; $6197: $00
  ld c, l                                         ; $6198: $4d
  nop                                             ; $6199: $00
  ld c, $01                                       ; $619a: $0e $01
  ld a, [bc]                                      ; $619c: $0a
  ld [bc], a                                      ; $619d: $02
  inc c                                           ; $619e: $0c
  nop                                             ; $619f: $00
  inc de                                          ; $61a0: $13
  add hl, bc                                      ; $61a1: $09
  inc bc                                          ; $61a2: $03
  rst $38                                         ; $61a3: $ff
  di                                              ; $61a4: $f3
  rst $38                                         ; $61a5: $ff
  nop                                             ; $61a6: $00
  nop                                             ; $61a7: $00
  inc b                                           ; $61a8: $04
  nop                                             ; $61a9: $00
  nop                                             ; $61aa: $00
  nop                                             ; $61ab: $00
  inc d                                           ; $61ac: $14
  ld [$ff00], sp                                  ; $61ad: $08 $00 $ff
  nop                                             ; $61b0: $00
  rra                                             ; $61b1: $1f
  jr z, jr_010_61c3                               ; $61b2: $28 $0f

  inc de                                          ; $61b4: $13
  inc bc                                          ; $61b5: $03
  inc b                                           ; $61b6: $04
  nop                                             ; $61b7: $00
  nop                                             ; $61b8: $00
  nop                                             ; $61b9: $00
  ld h, $0d                                       ; $61ba: $26 $0d
  nop                                             ; $61bc: $00
  inc c                                           ; $61bd: $0c
  ld [bc], a                                      ; $61be: $02
  add hl, bc                                      ; $61bf: $09
  inc c                                           ; $61c0: $0c
  inc b                                           ; $61c1: $04
  nop                                             ; $61c2: $00

jr_010_61c3:
  nop                                             ; $61c3: $00
  nop                                             ; $61c4: $00
  inc b                                           ; $61c5: $04
  ld [$fd01], sp                                  ; $61c6: $08 $01 $fd
  nop                                             ; $61c9: $00
  inc b                                           ; $61ca: $04
  nop                                             ; $61cb: $00
  nop                                             ; $61cc: $00
  nop                                             ; $61cd: $00
  inc b                                           ; $61ce: $04
  ld [$fc01], sp                                  ; $61cf: $08 $01 $fc
  nop                                             ; $61d2: $00
  inc b                                           ; $61d3: $04
  nop                                             ; $61d4: $00
  nop                                             ; $61d5: $00
  nop                                             ; $61d6: $00
  inc b                                           ; $61d7: $04
  ld [$ff01], sp                                  ; $61d8: $08 $01 $ff
  nop                                             ; $61db: $00
  inc b                                           ; $61dc: $04
  nop                                             ; $61dd: $00
  nop                                             ; $61de: $00
  nop                                             ; $61df: $00
  inc b                                           ; $61e0: $04
  add hl, bc                                      ; $61e1: $09
  ld [$0108], sp                                  ; $61e2: $08 $08 $01
  dec b                                           ; $61e5: $05
  nop                                             ; $61e6: $00
  inc b                                           ; $61e7: $04
  nop                                             ; $61e8: $00
  nop                                             ; $61e9: $00
  nop                                             ; $61ea: $00
  inc b                                           ; $61eb: $04
  ld [$fc01], sp                                  ; $61ec: $08 $01 $fc
  nop                                             ; $61ef: $00
  inc b                                           ; $61f0: $04
  nop                                             ; $61f1: $00
  nop                                             ; $61f2: $00
  nop                                             ; $61f3: $00
  inc b                                           ; $61f4: $04
  ld [$ff01], sp                                  ; $61f5: $08 $01 $ff
  nop                                             ; $61f8: $00
  inc b                                           ; $61f9: $04
  nop                                             ; $61fa: $00
  nop                                             ; $61fb: $00
  nop                                             ; $61fc: $00
  inc b                                           ; $61fd: $04
  ld [$fc01], sp                                  ; $61fe: $08 $01 $fc
  nop                                             ; $6201: $00
  inc b                                           ; $6202: $04
  nop                                             ; $6203: $00
  nop                                             ; $6204: $00
  nop                                             ; $6205: $00
  inc b                                           ; $6206: $04
  add hl, bc                                      ; $6207: $09
  ld b, $08                                       ; $6208: $06 $08
  ld bc, $0005                                    ; $620a: $01 $05 $00
  inc b                                           ; $620d: $04
  nop                                             ; $620e: $00
  nop                                             ; $620f: $00
  nop                                             ; $6210: $00
  inc b                                           ; $6211: $04
  ld [$ff01], sp                                  ; $6212: $08 $01 $ff
  nop                                             ; $6215: $00
  inc b                                           ; $6216: $04
  nop                                             ; $6217: $00
  nop                                             ; $6218: $00
  nop                                             ; $6219: $00
  inc b                                           ; $621a: $04
  ld [$fc01], sp                                  ; $621b: $08 $01 $fc
  nop                                             ; $621e: $00
  inc b                                           ; $621f: $04
  nop                                             ; $6220: $00
  nop                                             ; $6221: $00
  nop                                             ; $6222: $00
  inc b                                           ; $6223: $04
  ld [$fd01], sp                                  ; $6224: $08 $01 $fd
  nop                                             ; $6227: $00
  inc b                                           ; $6228: $04
  nop                                             ; $6229: $00
  nop                                             ; $622a: $00
  nop                                             ; $622b: $00
  inc b                                           ; $622c: $04
  add hl, bc                                      ; $622d: $09
  inc b                                           ; $622e: $04
  ld [$0301], sp                                  ; $622f: $08 $01 $03
  nop                                             ; $6232: $00
  inc b                                           ; $6233: $04
  nop                                             ; $6234: $00
  nop                                             ; $6235: $00
  nop                                             ; $6236: $00
  inc b                                           ; $6237: $04
  ld [$fd01], sp                                  ; $6238: $08 $01 $fd
  nop                                             ; $623b: $00
  inc b                                           ; $623c: $04
  nop                                             ; $623d: $00
  nop                                             ; $623e: $00
  nop                                             ; $623f: $00
  inc b                                           ; $6240: $04
  ld [$fc01], sp                                  ; $6241: $08 $01 $fc
  nop                                             ; $6244: $00
  inc b                                           ; $6245: $04
  nop                                             ; $6246: $00
  nop                                             ; $6247: $00
  nop                                             ; $6248: $00
  inc b                                           ; $6249: $04
  ld [$ff01], sp                                  ; $624a: $08 $01 $ff
  nop                                             ; $624d: $00
  inc b                                           ; $624e: $04
  nop                                             ; $624f: $00
  nop                                             ; $6250: $00
  nop                                             ; $6251: $00
  inc b                                           ; $6252: $04
  dec c                                           ; $6253: $0d
  nop                                             ; $6254: $00

  db $0c, $02, $13, $0c, $08, $01, $04, $00, $04, $00, $00, $00, $03, $08, $01, $fe
  db $00, $04, $00, $00, $00, $03, $08, $01, $05, $00, $04, $00, $00, $00, $03, $08
  db $01, $fa, $00, $04, $00, $00, $00, $03, $05, $06, $ff, $e1, $03, $01, $2a, $07
  db $00, $00, $28, $0f, $13, $03, $04, $00, $00, $00, $32, $0d, $00

  inc c                                           ; $6292: $0c
  ld bc, $0c09                                    ; $6293: $01 $09 $0c
  ld bc, $1c00                                    ; $6296: $01 $00 $1c
  inc de                                          ; $6299: $13
  inc b                                           ; $629a: $04
  nop                                             ; $629b: $00
  nop                                             ; $629c: $00
  nop                                             ; $629d: $00
  dec b                                           ; $629e: $05
  ld [$fe00], sp                                  ; $629f: $08 $00 $fe
  nop                                             ; $62a2: $00
  inc b                                           ; $62a3: $04
  nop                                             ; $62a4: $00
  nop                                             ; $62a5: $00
  nop                                             ; $62a6: $00
  ld b, $08                                       ; $62a7: $06 $08
  nop                                             ; $62a9: $00
  rlca                                            ; $62aa: $07
  nop                                             ; $62ab: $00
  inc b                                           ; $62ac: $04
  nop                                             ; $62ad: $00
  nop                                             ; $62ae: $00
  nop                                             ; $62af: $00
  ld b, $09                                       ; $62b0: $06 $09
  ld b, $08                                       ; $62b2: $06 $08
  nop                                             ; $62b4: $00
  nop                                             ; $62b5: $00
  nop                                             ; $62b6: $00
  inc b                                           ; $62b7: $04
  nop                                             ; $62b8: $00
  nop                                             ; $62b9: $00
  nop                                             ; $62ba: $00
  dec b                                           ; $62bb: $05
  ld [$fe00], sp                                  ; $62bc: $08 $00 $fe
  nop                                             ; $62bf: $00
  inc b                                           ; $62c0: $04
  nop                                             ; $62c1: $00
  nop                                             ; $62c2: $00
  nop                                             ; $62c3: $00
  ld b, $08                                       ; $62c4: $06 $08
  nop                                             ; $62c6: $00
  rlca                                            ; $62c7: $07
  nop                                             ; $62c8: $00
  inc b                                           ; $62c9: $04
  nop                                             ; $62ca: $00
  nop                                             ; $62cb: $00
  nop                                             ; $62cc: $00
  ld b, $09                                       ; $62cd: $06 $09
  ld [bc], a                                      ; $62cf: $02
  ld [$0000], sp                                  ; $62d0: $08 $00 $00
  nop                                             ; $62d3: $00
  inc b                                           ; $62d4: $04
  nop                                             ; $62d5: $00
  nop                                             ; $62d6: $00
  nop                                             ; $62d7: $00
  dec b                                           ; $62d8: $05
  ld [$0700], sp                                  ; $62d9: $08 $00 $07
  nop                                             ; $62dc: $00
  inc b                                           ; $62dd: $04
  nop                                             ; $62de: $00
  nop                                             ; $62df: $00
  nop                                             ; $62e0: $00
  ld b, $08                                       ; $62e1: $06 $08
  nop                                             ; $62e3: $00
  dec bc                                          ; $62e4: $0b
  nop                                             ; $62e5: $00
  inc b                                           ; $62e6: $04
  nop                                             ; $62e7: $00
  nop                                             ; $62e8: $00
  nop                                             ; $62e9: $00
  ld b, $0d                                       ; $62ea: $06 $0d
  nop                                             ; $62ec: $00
  inc c                                           ; $62ed: $0c
  ld [bc], a                                      ; $62ee: $02
  inc b                                           ; $62ef: $04
  nop                                             ; $62f0: $00
  nop                                             ; $62f1: $00
  nop                                             ; $62f2: $00
  dec b                                           ; $62f3: $05
  ld [$0100], sp                                  ; $62f4: $08 $00 $01
  nop                                             ; $62f7: $00
  inc b                                           ; $62f8: $04
  nop                                             ; $62f9: $00
  nop                                             ; $62fa: $00
  nop                                             ; $62fb: $00
  inc b                                           ; $62fc: $04
  ld [$0b00], sp                                  ; $62fd: $08 $00 $0b
  nop                                             ; $6300: $00
  inc b                                           ; $6301: $04
  nop                                             ; $6302: $00
  nop                                             ; $6303: $00
  nop                                             ; $6304: $00
  inc b                                           ; $6305: $04
  add hl, bc                                      ; $6306: $09
  inc bc                                          ; $6307: $03
  ld [$ff01], sp                                  ; $6308: $08 $01 $ff
  nop                                             ; $630b: $00
  inc b                                           ; $630c: $04
  nop                                             ; $630d: $00
  nop                                             ; $630e: $00
  nop                                             ; $630f: $00
  dec b                                           ; $6310: $05
  ld [$0100], sp                                  ; $6311: $08 $00 $01
  nop                                             ; $6314: $00
  inc b                                           ; $6315: $04
  nop                                             ; $6316: $00
  nop                                             ; $6317: $00
  nop                                             ; $6318: $00
  inc b                                           ; $6319: $04
  ld [$0b00], sp                                  ; $631a: $08 $00 $0b
  nop                                             ; $631d: $00
  inc b                                           ; $631e: $04
  nop                                             ; $631f: $00
  nop                                             ; $6320: $00
  nop                                             ; $6321: $00
  inc b                                           ; $6322: $04
  add hl, bc                                      ; $6323: $09
  ld [bc], a                                      ; $6324: $02
  ld [$ff01], sp                                  ; $6325: $08 $01 $ff
  nop                                             ; $6328: $00
  inc b                                           ; $6329: $04
  nop                                             ; $632a: $00
  nop                                             ; $632b: $00
  nop                                             ; $632c: $00
  dec b                                           ; $632d: $05
  ld [$0100], sp                                  ; $632e: $08 $00 $01
  nop                                             ; $6331: $00
  inc b                                           ; $6332: $04
  nop                                             ; $6333: $00
  nop                                             ; $6334: $00
  nop                                             ; $6335: $00
  inc b                                           ; $6336: $04
  ld [$0b00], sp                                  ; $6337: $08 $00 $0b
  nop                                             ; $633a: $00
  inc b                                           ; $633b: $04
  nop                                             ; $633c: $00
  nop                                             ; $633d: $00
  nop                                             ; $633e: $00
  inc b                                           ; $633f: $04
  dec c                                           ; $6340: $0d
  nop                                             ; $6341: $00
  inc c                                           ; $6342: $0c
  nop                                             ; $6343: $00
  inc de                                          ; $6344: $13
  add hl, bc                                      ; $6345: $09
  inc bc                                          ; $6346: $03
  inc bc                                          ; $6347: $03
  nop                                             ; $6348: $00
  inc c                                           ; $6349: $0c
  nop                                             ; $634a: $00
  nop                                             ; $634b: $00
  ld [$0201], sp                                  ; $634c: $08 $01 $02
  nop                                             ; $634f: $00
  inc b                                           ; $6350: $04
  nop                                             ; $6351: $00
  nop                                             ; $6352: $00
  nop                                             ; $6353: $00
  ld b, $05                                       ; $6354: $06 $05
  ld b, $ff                                       ; $6356: $06 $ff
  di                                              ; $6358: $f3
  add hl, bc                                      ; $6359: $09
  inc b                                           ; $635a: $04
  inc b                                           ; $635b: $04
  nop                                             ; $635c: $00
  nop                                             ; $635d: $00
  nop                                             ; $635e: $00
  inc bc                                          ; $635f: $03
  add hl, bc                                      ; $6360: $09
  inc c                                           ; $6361: $0c
  inc de                                          ; $6362: $13
  inc b                                           ; $6363: $04
  inc b                                           ; $6364: $04
  nop                                             ; $6365: $00
  nop                                             ; $6366: $00
  nop                                             ; $6367: $00
  ld [bc], a                                      ; $6368: $02
  ld [$ff01], sp                                  ; $6369: $08 $01 $ff
  pop bc                                          ; $636c: $c1
  dec b                                           ; $636d: $05
  ld [de], a                                      ; $636e: $12
  rst $38                                         ; $636f: $ff
  di                                              ; $6370: $f3
  dec c                                           ; $6371: $0d
  nop                                             ; $6372: $00
  inc c                                           ; $6373: $0c
  ld bc, $0b13                                    ; $6374: $01 $13 $0b
  ld bc, $0800                                    ; $6377: $01 $00 $08
  rra                                             ; $637a: $1f
  inc b                                           ; $637b: $04
  nop                                             ; $637c: $00
  nop                                             ; $637d: $00
  nop                                             ; $637e: $00
  ld a, $28                                       ; $637f: $3e $28
  rrca                                            ; $6381: $0f
  inc de                                          ; $6382: $13
  dec b                                           ; $6383: $05
  inc b                                           ; $6384: $04
  nop                                             ; $6385: $00
  nop                                             ; $6386: $00
  nop                                             ; $6387: $00
  ld c, d                                         ; $6388: $4a
  dec c                                           ; $6389: $0d
  nop                                             ; $638a: $00
  add hl, bc                                      ; $638b: $09
  inc c                                           ; $638c: $0c
  inc de                                          ; $638d: $13
  rlca                                            ; $638e: $07
  inc bc                                          ; $638f: $03
  ld [$1000], sp                                  ; $6390: $08 $00 $10
  nop                                             ; $6393: $00
  nop                                             ; $6394: $00
  ld [$fb01], sp                                  ; $6395: $08 $01 $fb
  nop                                             ; $6398: $00
  inc b                                           ; $6399: $04
  nop                                             ; $639a: $00
  nop                                             ; $639b: $00
  nop                                             ; $639c: $00
  inc bc                                          ; $639d: $03
  ld [$0301], sp                                  ; $639e: $08 $01 $03
  nop                                             ; $63a1: $00
  inc b                                           ; $63a2: $04
  nop                                             ; $63a3: $00
  nop                                             ; $63a4: $00
  nop                                             ; $63a5: $00
  inc bc                                          ; $63a6: $03
  dec b                                           ; $63a7: $05
  rrca                                            ; $63a8: $0f
  rst $38                                         ; $63a9: $ff
  rst $30                                         ; $63aa: $f7
  dec c                                           ; $63ab: $0d
  nop                                             ; $63ac: $00
  add hl, bc                                      ; $63ad: $09
  inc c                                           ; $63ae: $0c
  inc de                                          ; $63af: $13
  ld b, $03                                       ; $63b0: $06 $03
  ld [$1000], sp                                  ; $63b2: $08 $00 $10
  nop                                             ; $63b5: $00
  nop                                             ; $63b6: $00
  ld [$fb01], sp                                  ; $63b7: $08 $01 $fb
  nop                                             ; $63ba: $00
  inc b                                           ; $63bb: $04
  nop                                             ; $63bc: $00
  nop                                             ; $63bd: $00
  nop                                             ; $63be: $00
  ld [bc], a                                      ; $63bf: $02
  ld [$0301], sp                                  ; $63c0: $08 $01 $03
  nop                                             ; $63c3: $00
  inc b                                           ; $63c4: $04
  nop                                             ; $63c5: $00
  nop                                             ; $63c6: $00
  nop                                             ; $63c7: $00
  inc bc                                          ; $63c8: $03
  dec b                                           ; $63c9: $05
  dec c                                           ; $63ca: $0d
  rst $38                                         ; $63cb: $ff
  rst $30                                         ; $63cc: $f7
  dec c                                           ; $63cd: $0d
  nop                                             ; $63ce: $00

  db $07, $55, $00, $09, $0f, $03, $08, $00, $08, $00, $00, $04, $00, $00, $00, $02
  db $08, $01, $05, $00, $04, $00, $00, $00, $02, $08, $01, $f9, $00, $04, $00, $00
  db $00, $02, $08, $01, $03, $00, $05, $04, $ff, $e1, $13, $02, $04, $00, $00, $00
  db $03, $08, $01, $07, $00, $04, $00, $00, $00, $03, $08, $01, $fb, $00, $04, $00
  db $00, $00, $02, $08, $01, $03, $00, $05, $03, $ff, $e1, $0d, $00

  ld c, $00                                       ; $641c: $0e $00
  ld a, [bc]                                      ; $641e: $0a
  nop                                             ; $641f: $00
  inc c                                           ; $6420: $0c
  nop                                             ; $6421: $00
  inc de                                          ; $6422: $13
  dec bc                                          ; $6423: $0b
  inc b                                           ; $6424: $04
  nop                                             ; $6425: $00
  nop                                             ; $6426: $00
  nop                                             ; $6427: $00
  ld h, $28                                       ; $6428: $26 $28
  rrca                                            ; $642a: $0f
  inc de                                          ; $642b: $13
  ld bc, $ff03                                    ; $642c: $01 $03 $ff
  di                                              ; $642f: $f3
  rst $38                                         ; $6430: $ff
  nop                                             ; $6431: $00
  nop                                             ; $6432: $00
  inc b                                           ; $6433: $04
  nop                                             ; $6434: $00
  nop                                             ; $6435: $00
  nop                                             ; $6436: $00
  inc d                                           ; $6437: $14
  dec c                                           ; $6438: $0d
  nop                                             ; $6439: $00
  ld c, $03                                       ; $643a: $0e $03
  inc c                                           ; $643c: $0c
  rst $38                                         ; $643d: $ff
  inc de                                          ; $643e: $13
  add hl, bc                                      ; $643f: $09
  db $10                                          ; $6440: $10
  ld [hl], $04                                    ; $6441: $36 $04
  nop                                             ; $6443: $00
  nop                                             ; $6444: $00
  nop                                             ; $6445: $00
  inc bc                                          ; $6446: $03
  db $10                                          ; $6447: $10
  dec h                                           ; $6448: $25
  inc b                                           ; $6449: $04
  nop                                             ; $644a: $00
  nop                                             ; $644b: $00
  nop                                             ; $644c: $00
  inc bc                                          ; $644d: $03
  db $10                                          ; $644e: $10
  inc h                                           ; $644f: $24
  jr z, jr_010_645a                               ; $6450: $28 $08

  inc de                                          ; $6452: $13
  ld bc, $0004                                    ; $6453: $01 $04 $00
  nop                                             ; $6456: $00
  nop                                             ; $6457: $00
  inc b                                           ; $6458: $04
  db $10                                          ; $6459: $10

jr_010_645a:
  ld [hl], $04                                    ; $645a: $36 $04
  nop                                             ; $645c: $00
  nop                                             ; $645d: $00
  nop                                             ; $645e: $00
  add hl, bc                                      ; $645f: $09
  add hl, bc                                      ; $6460: $09
  inc c                                           ; $6461: $0c
  db $10                                          ; $6462: $10
  ld [hl+], a                                     ; $6463: $22
  inc b                                           ; $6464: $04
  nop                                             ; $6465: $00
  nop                                             ; $6466: $00
  nop                                             ; $6467: $00
  inc bc                                          ; $6468: $03
  db $10                                          ; $6469: $10
  inc sp                                          ; $646a: $33
  inc b                                           ; $646b: $04
  nop                                             ; $646c: $00
  nop                                             ; $646d: $00
  nop                                             ; $646e: $00
  rlca                                            ; $646f: $07
  dec c                                           ; $6470: $0d
  nop                                             ; $6471: $00
  ld c, $03                                       ; $6472: $0e $03
  inc c                                           ; $6474: $0c
  rst $38                                         ; $6475: $ff
  db $10                                          ; $6476: $10
  ld b, l                                         ; $6477: $45
  inc b                                           ; $6478: $04
  nop                                             ; $6479: $00
  nop                                             ; $647a: $00
  nop                                             ; $647b: $00
  dec b                                           ; $647c: $05
  db $10                                          ; $647d: $10
  inc sp                                          ; $647e: $33
  inc b                                           ; $647f: $04
  nop                                             ; $6480: $00
  nop                                             ; $6481: $00
  nop                                             ; $6482: $00
  rlca                                            ; $6483: $07
  db $10                                          ; $6484: $10
  inc [hl]                                        ; $6485: $34
  inc b                                           ; $6486: $04
  nop                                             ; $6487: $00
  nop                                             ; $6488: $00
  nop                                             ; $6489: $00
  ld b, $10                                       ; $648a: $06 $10
  ld b, l                                         ; $648c: $45
  inc b                                           ; $648d: $04
  nop                                             ; $648e: $00
  nop                                             ; $648f: $00
  nop                                             ; $6490: $00
  dec b                                           ; $6491: $05
  db $10                                          ; $6492: $10
  ld d, [hl]                                      ; $6493: $56
  inc b                                           ; $6494: $04
  nop                                             ; $6495: $00
  nop                                             ; $6496: $00
  nop                                             ; $6497: $00
  inc b                                           ; $6498: $04
  db $10                                          ; $6499: $10
  ld h, [hl]                                      ; $649a: $66
  inc b                                           ; $649b: $04
  nop                                             ; $649c: $00
  nop                                             ; $649d: $00
  nop                                             ; $649e: $00
  inc bc                                          ; $649f: $03
  add hl, bc                                      ; $64a0: $09
  ld b, $05                                       ; $64a1: $06 $05
  ld bc, $d7ff                                    ; $64a3: $01 $ff $d7
  dec c                                           ; $64a6: $0d
  nop                                             ; $64a7: $00
  ld c, $03                                       ; $64a8: $0e $03
  inc c                                           ; $64aa: $0c
  rst $38                                         ; $64ab: $ff
  db $10                                          ; $64ac: $10
  ld [hl], l                                      ; $64ad: $75
  inc de                                          ; $64ae: $13
  rrca                                            ; $64af: $0f
  inc b                                           ; $64b0: $04
  nop                                             ; $64b1: $00
  nop                                             ; $64b2: $00
  nop                                             ; $64b3: $00
  nop                                             ; $64b4: $00
  dec c                                           ; $64b5: $0d
  nop                                             ; $64b6: $00
  ld c, $03                                       ; $64b7: $0e $03
  inc c                                           ; $64b9: $0c
  rst $38                                         ; $64ba: $ff
  db $10                                          ; $64bb: $10
  inc sp                                          ; $64bc: $33
  inc b                                           ; $64bd: $04
  nop                                             ; $64be: $00
  nop                                             ; $64bf: $00
  nop                                             ; $64c0: $00
  ld [bc], a                                      ; $64c1: $02
  add hl, bc                                      ; $64c2: $09
  nop                                             ; $64c3: $00
  inc b                                           ; $64c4: $04
  nop                                             ; $64c5: $00
  nop                                             ; $64c6: $00
  nop                                             ; $64c7: $00
  inc bc                                          ; $64c8: $03
  add hl, bc                                      ; $64c9: $09
  ld b, $10                                       ; $64ca: $06 $10
  ld [hl+], a                                     ; $64cc: $22
  inc b                                           ; $64cd: $04
  nop                                             ; $64ce: $00
  nop                                             ; $64cf: $00
  nop                                             ; $64d0: $00
  ld [bc], a                                      ; $64d1: $02
  dec c                                           ; $64d2: $0d
  nop                                             ; $64d3: $00
  ld c, $03                                       ; $64d4: $0e $03
  inc c                                           ; $64d6: $0c
  rst $38                                         ; $64d7: $ff
  db $10                                          ; $64d8: $10
  ld [hl], $04                                    ; $64d9: $36 $04
  nop                                             ; $64db: $00
  nop                                             ; $64dc: $00
  nop                                             ; $64dd: $00
  ld [bc], a                                      ; $64de: $02
  db $10                                          ; $64df: $10
  inc hl                                          ; $64e0: $23
  inc b                                           ; $64e1: $04
  nop                                             ; $64e2: $00
  nop                                             ; $64e3: $00
  nop                                             ; $64e4: $00
  ld [bc], a                                      ; $64e5: $02
  dec c                                           ; $64e6: $0d
  nop                                             ; $64e7: $00
  ld c, $03                                       ; $64e8: $0e $03
  inc c                                           ; $64ea: $0c
  rst $38                                         ; $64eb: $ff
  db $10                                          ; $64ec: $10
  ld [hl-], a                                     ; $64ed: $32
  inc b                                           ; $64ee: $04
  nop                                             ; $64ef: $00
  nop                                             ; $64f0: $00
  nop                                             ; $64f1: $00
  ld [bc], a                                      ; $64f2: $02
  db $10                                          ; $64f3: $10
  ld b, e                                         ; $64f4: $43
  inc b                                           ; $64f5: $04
  nop                                             ; $64f6: $00
  nop                                             ; $64f7: $00
  nop                                             ; $64f8: $00
  ld [bc], a                                      ; $64f9: $02
  db $10                                          ; $64fa: $10
  ld d, h                                         ; $64fb: $54
  inc b                                           ; $64fc: $04
  nop                                             ; $64fd: $00
  nop                                             ; $64fe: $00
  nop                                             ; $64ff: $00
  ld [bc], a                                      ; $6500: $02
  add hl, bc                                      ; $6501: $09
  nop                                             ; $6502: $00
  inc b                                           ; $6503: $04
  nop                                             ; $6504: $00
  nop                                             ; $6505: $00
  nop                                             ; $6506: $00
  add hl, bc                                      ; $6507: $09
  add hl, bc                                      ; $6508: $09
  ld [$3210], sp                                  ; $6509: $08 $10 $32
  inc b                                           ; $650c: $04
  nop                                             ; $650d: $00
  nop                                             ; $650e: $00
  nop                                             ; $650f: $00
  ld [bc], a                                      ; $6510: $02
  db $10                                          ; $6511: $10
  ld b, e                                         ; $6512: $43
  inc b                                           ; $6513: $04
  nop                                             ; $6514: $00
  nop                                             ; $6515: $00
  nop                                             ; $6516: $00
  ld [bc], a                                      ; $6517: $02
  db $10                                          ; $6518: $10
  ld d, h                                         ; $6519: $54
  inc b                                           ; $651a: $04
  nop                                             ; $651b: $00
  nop                                             ; $651c: $00
  nop                                             ; $651d: $00
  ld [bc], a                                      ; $651e: $02
  add hl, bc                                      ; $651f: $09
  nop                                             ; $6520: $00
  inc b                                           ; $6521: $04
  nop                                             ; $6522: $00
  nop                                             ; $6523: $00
  nop                                             ; $6524: $00
  add hl, bc                                      ; $6525: $09
  add hl, bc                                      ; $6526: $09
  inc b                                           ; $6527: $04
  inc b                                           ; $6528: $04
  nop                                             ; $6529: $00
  nop                                             ; $652a: $00
  nop                                             ; $652b: $00
  ld [bc], a                                      ; $652c: $02
  db $10                                          ; $652d: $10
  ld b, e                                         ; $652e: $43
  inc b                                           ; $652f: $04
  nop                                             ; $6530: $00
  nop                                             ; $6531: $00
  nop                                             ; $6532: $00
  ld [bc], a                                      ; $6533: $02
  db $10                                          ; $6534: $10
  ld d, h                                         ; $6535: $54
  inc b                                           ; $6536: $04
  nop                                             ; $6537: $00
  nop                                             ; $6538: $00
  nop                                             ; $6539: $00
  ld [bc], a                                      ; $653a: $02
  add hl, bc                                      ; $653b: $09
  nop                                             ; $653c: $00
  inc b                                           ; $653d: $04
  nop                                             ; $653e: $00
  nop                                             ; $653f: $00
  nop                                             ; $6540: $00
  add hl, bc                                      ; $6541: $09
  add hl, bc                                      ; $6542: $09
  ld [bc], a                                      ; $6543: $02
  dec b                                           ; $6544: $05
  ld bc, $e0ff                                    ; $6545: $01 $ff $e0
  dec c                                           ; $6548: $0d
  nop                                             ; $6549: $00
  ld h, $01                                       ; $654a: $26 $01
  ld h, b                                         ; $654c: $60
  inc b                                           ; $654d: $04
  nop                                             ; $654e: $00
  nop                                             ; $654f: $00
  nop                                             ; $6550: $00
  add hl, bc                                      ; $6551: $09
  ld h, $00                                       ; $6552: $26 $00
  ld e, a                                         ; $6554: $5f
  nop                                             ; $6555: $00
  ld c, $00                                       ; $6556: $0e $00
  ld a, [bc]                                      ; $6558: $0a
  ld [bc], a                                      ; $6559: $02
  ld b, $07                                       ; $655a: $06 $07
  daa                                             ; $655c: $27
  nop                                             ; $655d: $00
  ld c, $01                                       ; $655e: $0e $01
  ld a, [bc]                                      ; $6560: $0a
  nop                                             ; $6561: $00
  ld b, $07                                       ; $6562: $06 $07
  daa                                             ; $6564: $27
  nop                                             ; $6565: $00
  ld c, $02                                       ; $6566: $0e $02
  inc c                                           ; $6568: $0c
  rst $38                                         ; $6569: $ff
  inc h                                           ; $656a: $24
  inc c                                           ; $656b: $0c
  ld e, $01                                       ; $656c: $1e $01
  inc c                                           ; $656e: $0c
  nop                                             ; $656f: $00
  ld [hl], b                                      ; $6570: $70
  inc b                                           ; $6571: $04
  nop                                             ; $6572: $00
  nop                                             ; $6573: $00
  nop                                             ; $6574: $00
  ld b, $08                                       ; $6575: $06 $08
  ld bc, $00ff                                    ; $6577: $01 $ff $00
  inc b                                           ; $657a: $04
  nop                                             ; $657b: $00
  nop                                             ; $657c: $00
  nop                                             ; $657d: $00
  dec b                                           ; $657e: $05
  ld [$0401], sp                                  ; $657f: $08 $01 $04
  nop                                             ; $6582: $00
  inc b                                           ; $6583: $04
  nop                                             ; $6584: $00
  nop                                             ; $6585: $00
  nop                                             ; $6586: $00
  dec b                                           ; $6587: $05
  ld [$fe01], sp                                  ; $6588: $08 $01 $fe
  nop                                             ; $658b: $00
  dec b                                           ; $658c: $05
  dec b                                           ; $658d: $05
  rst $38                                         ; $658e: $ff
  and $03                                         ; $658f: $e6 $03
  nop                                             ; $6591: $00
  adc c                                           ; $6592: $89
  rlca                                            ; $6593: $07
  nop                                             ; $6594: $00
  nop                                             ; $6595: $00
  inc b                                           ; $6596: $04
  nop                                             ; $6597: $00
  nop                                             ; $6598: $00
  nop                                             ; $6599: $00
  ld c, $24                                       ; $659a: $0e $24
  inc bc                                          ; $659c: $03
  add hl, bc                                      ; $659d: $09
  ld [$0004], sp                                  ; $659e: $08 $04 $00
  nop                                             ; $65a1: $00
  nop                                             ; $65a2: $00
  ld c, $09                                       ; $65a3: $0e $09
  inc b                                           ; $65a5: $04
  inc b                                           ; $65a6: $04
  nop                                             ; $65a7: $00
  nop                                             ; $65a8: $00
  nop                                             ; $65a9: $00
  ld c, $0d                                       ; $65aa: $0e $0d
  nop                                             ; $65ac: $00
  ld c, $03                                       ; $65ad: $0e $03
  inc c                                           ; $65af: $0c
  rst $38                                         ; $65b0: $ff
  add hl, bc                                      ; $65b1: $09
  rrca                                            ; $65b2: $0f
  inc de                                          ; $65b3: $13
  ld [bc], a                                      ; $65b4: $02
  db $10                                          ; $65b5: $10
  ld l, h                                         ; $65b6: $6c
  inc b                                           ; $65b7: $04
  nop                                             ; $65b8: $00
  nop                                             ; $65b9: $00
  nop                                             ; $65ba: $00
  rlca                                            ; $65bb: $07
  db $10                                          ; $65bc: $10
  ld e, h                                         ; $65bd: $5c
  inc b                                           ; $65be: $04
  nop                                             ; $65bf: $00
  nop                                             ; $65c0: $00
  nop                                             ; $65c1: $00
  ld b, $10                                       ; $65c2: $06 $10
  ld c, h                                         ; $65c4: $4c
  inc b                                           ; $65c5: $04
  nop                                             ; $65c6: $00
  nop                                             ; $65c7: $00
  nop                                             ; $65c8: $00
  dec b                                           ; $65c9: $05
  db $10                                          ; $65ca: $10
  inc a                                           ; $65cb: $3c
  inc b                                           ; $65cc: $04
  nop                                             ; $65cd: $00
  nop                                             ; $65ce: $00
  nop                                             ; $65cf: $00
  dec b                                           ; $65d0: $05
  add hl, bc                                      ; $65d1: $09
  nop                                             ; $65d2: $00
  inc b                                           ; $65d3: $04
  nop                                             ; $65d4: $00
  nop                                             ; $65d5: $00
  nop                                             ; $65d6: $00
  inc bc                                          ; $65d7: $03
  add hl, bc                                      ; $65d8: $09
  rrca                                            ; $65d9: $0f
  inc de                                          ; $65da: $13
  inc bc                                          ; $65db: $03
  db $10                                          ; $65dc: $10
  ld e, [hl]                                      ; $65dd: $5e
  inc b                                           ; $65de: $04
  nop                                             ; $65df: $00
  nop                                             ; $65e0: $00
  nop                                             ; $65e1: $00
  dec b                                           ; $65e2: $05
  db $10                                          ; $65e3: $10
  ld l, [hl]                                      ; $65e4: $6e
  inc b                                           ; $65e5: $04
  nop                                             ; $65e6: $00
  nop                                             ; $65e7: $00
  nop                                             ; $65e8: $00
  dec b                                           ; $65e9: $05
  db $10                                          ; $65ea: $10
  ld a, [hl]                                      ; $65eb: $7e
  inc b                                           ; $65ec: $04
  nop                                             ; $65ed: $00
  nop                                             ; $65ee: $00
  nop                                             ; $65ef: $00
  dec b                                           ; $65f0: $05
  dec b                                           ; $65f1: $05
  inc b                                           ; $65f2: $04
  rst $38                                         ; $65f3: $ff
  rst $20                                         ; $65f4: $e7
  dec c                                           ; $65f5: $0d
  nop                                             ; $65f6: $00

  db $26, $01, $65, $04, $00, $00, $00, $09, $26, $00, $64

  nop                                             ; $6602: $00

  db $0e, $00, $0a, $02, $06, $07, $bf

  nop                                             ; $660a: $00

  db $0e, $01, $0a, $00, $06, $07, $bf

  nop                                             ; $6612: $00

  db $0e, $10, $0c, $02, $0b, $80, $5b, $5e, $00, $04, $00, $00, $00, $02, $08, $01
  db $07, $00, $01, $00, $09, $04, $13, $02, $04, $00, $00, $00, $15, $0d, $00

  ld c, $03                                       ; $6632: $0e $03
  inc c                                           ; $6634: $0c
  nop                                             ; $6635: $00
  db $10                                          ; $6636: $10
  ld [hl], $04                                    ; $6637: $36 $04
  nop                                             ; $6639: $00
  nop                                             ; $663a: $00
  nop                                             ; $663b: $00
  dec b                                           ; $663c: $05
  add hl, bc                                      ; $663d: $09
  nop                                             ; $663e: $00
  inc b                                           ; $663f: $04
  nop                                             ; $6640: $00
  nop                                             ; $6641: $00
  nop                                             ; $6642: $00
  dec b                                           ; $6643: $05
  add hl, bc                                      ; $6644: $09
  ld [$0004], sp                                  ; $6645: $08 $04 $00
  nop                                             ; $6648: $00
  nop                                             ; $6649: $00
  dec b                                           ; $664a: $05
  add hl, bc                                      ; $664b: $09
  nop                                             ; $664c: $00
  inc b                                           ; $664d: $04
  nop                                             ; $664e: $00
  nop                                             ; $664f: $00
  nop                                             ; $6650: $00
  dec b                                           ; $6651: $05
  add hl, bc                                      ; $6652: $09
  inc b                                           ; $6653: $04
  inc b                                           ; $6654: $04
  nop                                             ; $6655: $00
  nop                                             ; $6656: $00
  nop                                             ; $6657: $00
  dec b                                           ; $6658: $05
  add hl, bc                                      ; $6659: $09
  nop                                             ; $665a: $00
  inc b                                           ; $665b: $04
  nop                                             ; $665c: $00
  nop                                             ; $665d: $00
  nop                                             ; $665e: $00
  dec b                                           ; $665f: $05
  add hl, bc                                      ; $6660: $09
  ld [bc], a                                      ; $6661: $02
  inc b                                           ; $6662: $04
  nop                                             ; $6663: $00
  nop                                             ; $6664: $00
  nop                                             ; $6665: $00
  dec b                                           ; $6666: $05
  dec c                                           ; $6667: $0d
  nop                                             ; $6668: $00
  ld c, $02                                       ; $6669: $0e $02
  inc c                                           ; $666b: $0c
  nop                                             ; $666c: $00
  inc bc                                          ; $666d: $03
  ld bc, $0a00                                    ; $666e: $01 $00 $0a
  nop                                             ; $6671: $00
  nop                                             ; $6672: $00
  inc b                                           ; $6673: $04
  nop                                             ; $6674: $00
  nop                                             ; $6675: $00
  nop                                             ; $6676: $00
  dec bc                                          ; $6677: $0b
  ld [$0a01], sp                                  ; $6678: $08 $01 $0a
  nop                                             ; $667b: $00
  inc bc                                          ; $667c: $03
  rst $38                                         ; $667d: $ff
  ld l, d                                         ; $667e: $6a
  or $00                                          ; $667f: $f6 $00
  nop                                             ; $6681: $00
  inc b                                           ; $6682: $04
  nop                                             ; $6683: $00
  nop                                             ; $6684: $00
  nop                                             ; $6685: $00
  ld [de], a                                      ; $6686: $12
  ld [$f601], sp                                  ; $6687: $08 $01 $f6
  nop                                             ; $668a: $00
  add hl, bc                                      ; $668b: $09
  ld [$0103], sp                                  ; $668c: $08 $03 $01
  nop                                             ; $668f: $00
  ld a, [bc]                                      ; $6690: $0a
  nop                                             ; $6691: $00
  nop                                             ; $6692: $00
  inc b                                           ; $6693: $04
  nop                                             ; $6694: $00
  nop                                             ; $6695: $00
  nop                                             ; $6696: $00
  dec bc                                          ; $6697: $0b
  ld [$0a01], sp                                  ; $6698: $08 $01 $0a
  nop                                             ; $669b: $00
  inc bc                                          ; $669c: $03
  rst $38                                         ; $669d: $ff
  ld l, d                                         ; $669e: $6a
  or $00                                          ; $669f: $f6 $00
  nop                                             ; $66a1: $00
  inc b                                           ; $66a2: $04
  nop                                             ; $66a3: $00
  nop                                             ; $66a4: $00
  nop                                             ; $66a5: $00
  ld [de], a                                      ; $66a6: $12
  dec c                                           ; $66a7: $0d
  nop                                             ; $66a8: $00
  ld c, $11                                       ; $66a9: $0e $11
  inc c                                           ; $66ab: $0c
  ld bc, $800b                                    ; $66ac: $01 $0b $80
  inc [hl]                                        ; $66af: $34
  ld a, $00                                       ; $66b0: $3e $00
  inc bc                                          ; $66b2: $03
  cp $cd                                          ; $66b3: $fe $cd
  db $f4                                          ; $66b5: $f4
  nop                                             ; $66b6: $00
  nop                                             ; $66b7: $00
  inc b                                           ; $66b8: $04
  nop                                             ; $66b9: $00
  nop                                             ; $66ba: $00
  nop                                             ; $66bb: $00
  dec bc                                          ; $66bc: $0b
  add hl, bc                                      ; $66bd: $09
  inc c                                           ; $66be: $0c
  ld a, [bc]                                      ; $66bf: $0a
  nop                                             ; $66c0: $00
  inc b                                           ; $66c1: $04
  nop                                             ; $66c2: $00
  nop                                             ; $66c3: $00
  nop                                             ; $66c4: $00
  dec bc                                          ; $66c5: $0b
  add hl, bc                                      ; $66c6: $09
  ld [$020a], sp                                  ; $66c7: $08 $0a $02
  inc b                                           ; $66ca: $04
  nop                                             ; $66cb: $00
  nop                                             ; $66cc: $00
  nop                                             ; $66cd: $00
  dec bc                                          ; $66ce: $0b
  add hl, bc                                      ; $66cf: $09
  inc b                                           ; $66d0: $04
  ld a, [bc]                                      ; $66d1: $0a
  nop                                             ; $66d2: $00
  inc b                                           ; $66d3: $04
  nop                                             ; $66d4: $00
  nop                                             ; $66d5: $00
  nop                                             ; $66d6: $00
  dec bc                                          ; $66d7: $0b
  dec c                                           ; $66d8: $0d
  nop                                             ; $66d9: $00
  ld c, $01                                       ; $66da: $0e $01
  inc c                                           ; $66dc: $0c
  nop                                             ; $66dd: $00
  inc de                                          ; $66de: $13
  ld b, $03                                       ; $66df: $06 $03
  ei                                              ; $66e1: $fb
  nop                                             ; $66e2: $00
  or $00                                          ; $66e3: $f6 $00
  nop                                             ; $66e5: $00
  ld [$f601], sp                                  ; $66e6: $08 $01 $f6
  nop                                             ; $66e9: $00
  inc b                                           ; $66ea: $04
  nop                                             ; $66eb: $00
  nop                                             ; $66ec: $00
  nop                                             ; $66ed: $00
  ld [bc], a                                      ; $66ee: $02
  ld [$0301], sp                                  ; $66ef: $08 $01 $03
  nop                                             ; $66f2: $00
  inc b                                           ; $66f3: $04
  nop                                             ; $66f4: $00
  nop                                             ; $66f5: $00
  nop                                             ; $66f6: $00
  inc bc                                          ; $66f7: $03
  dec b                                           ; $66f8: $05
  ld [$eaff], sp                                  ; $66f9: $08 $ff $ea
  ld [$1900], sp                                  ; $66fc: $08 $00 $19
  nop                                             ; $66ff: $00
  inc de                                          ; $6700: $13
  inc bc                                          ; $6701: $03
  inc bc                                          ; $6702: $03
  nop                                             ; $6703: $00
  ld h, b                                         ; $6704: $60
  inc bc                                          ; $6705: $03
  nop                                             ; $6706: $00
  nop                                             ; $6707: $00
  inc b                                           ; $6708: $04
  nop                                             ; $6709: $00
  nop                                             ; $670a: $00
  nop                                             ; $670b: $00
  ld h, $0d                                       ; $670c: $26 $0d
  nop                                             ; $670e: $00
  ld h, $01                                       ; $670f: $26 $01
  ld l, l                                         ; $6711: $6d
  inc b                                           ; $6712: $04
  nop                                             ; $6713: $00
  nop                                             ; $6714: $00
  nop                                             ; $6715: $00
  ld [$0026], sp                                  ; $6716: $08 $26 $00
  ld l, h                                         ; $6719: $6c
  nop                                             ; $671a: $00
  ld c, $00                                       ; $671b: $0e $00
  add hl, bc                                      ; $671d: $09
  ld [$020a], sp                                  ; $671e: $08 $0a $02
  inc c                                           ; $6721: $0c
  ld bc, $0209                                    ; $6722: $01 $09 $02
  inc b                                           ; $6725: $04
  nop                                             ; $6726: $00
  nop                                             ; $6727: $00
  nop                                             ; $6728: $00
  inc bc                                          ; $6729: $03
  add hl, bc                                      ; $672a: $09
  ld [$0004], sp                                  ; $672b: $08 $04 $00
  nop                                             ; $672e: $00
  nop                                             ; $672f: $00
  inc bc                                          ; $6730: $03
  ld [$ff01], sp                                  ; $6731: $08 $01 $ff
  ld a, [hl]                                      ; $6734: $7e
  dec b                                           ; $6735: $05
  dec c                                           ; $6736: $0d
  rst $38                                         ; $6737: $ff
  add sp, $0d                                     ; $6738: $e8 $0d
  nop                                             ; $673a: $00
  ld c, $01                                       ; $673b: $0e $01
  add hl, bc                                      ; $673d: $09
  rrca                                            ; $673e: $0f
  ld a, [bc]                                      ; $673f: $0a
  nop                                             ; $6740: $00
  inc c                                           ; $6741: $0c
  ld bc, $0409                                    ; $6742: $01 $09 $04
  inc b                                           ; $6745: $04
  nop                                             ; $6746: $00
  nop                                             ; $6747: $00
  nop                                             ; $6748: $00
  inc bc                                          ; $6749: $03
  add hl, bc                                      ; $674a: $09
  rrca                                            ; $674b: $0f
  inc b                                           ; $674c: $04
  nop                                             ; $674d: $00
  nop                                             ; $674e: $00
  nop                                             ; $674f: $00
  inc bc                                          ; $6750: $03
  ld [$ff01], sp                                  ; $6751: $08 $01 $ff
  ld a, [hl]                                      ; $6754: $7e
  dec b                                           ; $6755: $05
  dec c                                           ; $6756: $0d
  rst $38                                         ; $6757: $ff
  add sp, $0d                                     ; $6758: $e8 $0d
  nop                                             ; $675a: $00
  ld c, $03                                       ; $675b: $0e $03
  inc c                                           ; $675d: $0c
  rst $38                                         ; $675e: $ff
  inc de                                          ; $675f: $13
  ld bc, $2410                                    ; $6760: $01 $10 $24
  inc b                                           ; $6763: $04
  nop                                             ; $6764: $00
  nop                                             ; $6765: $00
  nop                                             ; $6766: $00
  inc b                                           ; $6767: $04
  db $10                                          ; $6768: $10
  inc [hl]                                        ; $6769: $34
  inc b                                           ; $676a: $04
  nop                                             ; $676b: $00
  nop                                             ; $676c: $00
  nop                                             ; $676d: $00
  inc b                                           ; $676e: $04
  db $10                                          ; $676f: $10
  ld b, h                                         ; $6770: $44
  inc b                                           ; $6771: $04
  nop                                             ; $6772: $00
  nop                                             ; $6773: $00
  nop                                             ; $6774: $00
  dec b                                           ; $6775: $05
  db $10                                          ; $6776: $10
  ld d, h                                         ; $6777: $54
  inc b                                           ; $6778: $04
  nop                                             ; $6779: $00
  nop                                             ; $677a: $00
  nop                                             ; $677b: $00
  dec b                                           ; $677c: $05
  dec c                                           ; $677d: $0d
  nop                                             ; $677e: $00
  ld c, $01                                       ; $677f: $0e $01
  inc c                                           ; $6781: $0c
  ld bc, $0004                                    ; $6782: $01 $04 $00
  nop                                             ; $6785: $00
  nop                                             ; $6786: $00
  inc bc                                          ; $6787: $03
  ld [$0301], sp                                  ; $6788: $08 $01 $03
  nop                                             ; $678b: $00
  inc b                                           ; $678c: $04
  nop                                             ; $678d: $00
  nop                                             ; $678e: $00
  nop                                             ; $678f: $00
  ld [bc], a                                      ; $6790: $02
  ld [$fe01], sp                                  ; $6791: $08 $01 $fe
  nop                                             ; $6794: $00
  inc b                                           ; $6795: $04
  nop                                             ; $6796: $00
  nop                                             ; $6797: $00
  nop                                             ; $6798: $00
  inc bc                                          ; $6799: $03
  ld [$0501], sp                                  ; $679a: $08 $01 $05
  nop                                             ; $679d: $00
  inc b                                           ; $679e: $04
  nop                                             ; $679f: $00
  nop                                             ; $67a0: $00
  nop                                             ; $67a1: $00
  ld [bc], a                                      ; $67a2: $02
  ld [$fa01], sp                                  ; $67a3: $08 $01 $fa
  ld l, c                                         ; $67a6: $69
  dec b                                           ; $67a7: $05
  ld [bc], a                                      ; $67a8: $02
  rst $38                                         ; $67a9: $ff
  db $dd                                          ; $67aa: $dd
  dec c                                           ; $67ab: $0d
  nop                                             ; $67ac: $00
  ld c, $02                                       ; $67ad: $0e $02
  inc c                                           ; $67af: $0c
  nop                                             ; $67b0: $00
  inc b                                           ; $67b1: $04
  nop                                             ; $67b2: $00
  nop                                             ; $67b3: $00
  nop                                             ; $67b4: $00
  ld [bc], a                                      ; $67b5: $02
  ld [$0401], sp                                  ; $67b6: $08 $01 $04
  nop                                             ; $67b9: $00
  inc b                                           ; $67ba: $04
  nop                                             ; $67bb: $00
  nop                                             ; $67bc: $00
  nop                                             ; $67bd: $00
  ld [bc], a                                      ; $67be: $02
  ld [$0301], sp                                  ; $67bf: $08 $01 $03
  nop                                             ; $67c2: $00
  inc b                                           ; $67c3: $04
  nop                                             ; $67c4: $00
  nop                                             ; $67c5: $00
  nop                                             ; $67c6: $00
  ld [bc], a                                      ; $67c7: $02
  ld [$0401], sp                                  ; $67c8: $08 $01 $04
  nop                                             ; $67cb: $00
  inc b                                           ; $67cc: $04
  nop                                             ; $67cd: $00
  nop                                             ; $67ce: $00
  nop                                             ; $67cf: $00
  ld [bc], a                                      ; $67d0: $02
  add hl, bc                                      ; $67d1: $09
  ld [$000a], sp                                  ; $67d2: $08 $0a $00
  ld [$f501], sp                                  ; $67d5: $08 $01 $f5
  nop                                             ; $67d8: $00
  inc b                                           ; $67d9: $04
  nop                                             ; $67da: $00
  nop                                             ; $67db: $00
  nop                                             ; $67dc: $00
  ld [bc], a                                      ; $67dd: $02
  ld [$0401], sp                                  ; $67de: $08 $01 $04
  nop                                             ; $67e1: $00
  inc b                                           ; $67e2: $04
  nop                                             ; $67e3: $00
  nop                                             ; $67e4: $00
  nop                                             ; $67e5: $00
  ld [bc], a                                      ; $67e6: $02
  ld [$0301], sp                                  ; $67e7: $08 $01 $03
  nop                                             ; $67ea: $00
  inc b                                           ; $67eb: $04
  nop                                             ; $67ec: $00
  nop                                             ; $67ed: $00
  nop                                             ; $67ee: $00
  ld [bc], a                                      ; $67ef: $02
  ld [$0401], sp                                  ; $67f0: $08 $01 $04
  nop                                             ; $67f3: $00
  inc b                                           ; $67f4: $04
  nop                                             ; $67f5: $00
  nop                                             ; $67f6: $00
  nop                                             ; $67f7: $00
  ld [bc], a                                      ; $67f8: $02
  add hl, bc                                      ; $67f9: $09
  inc b                                           ; $67fa: $04
  ld a, [bc]                                      ; $67fb: $0a
  ld [bc], a                                      ; $67fc: $02
  ld [$f501], sp                                  ; $67fd: $08 $01 $f5
  nop                                             ; $6800: $00
  inc b                                           ; $6801: $04
  nop                                             ; $6802: $00
  nop                                             ; $6803: $00
  nop                                             ; $6804: $00
  ld [bc], a                                      ; $6805: $02
  ld [$0401], sp                                  ; $6806: $08 $01 $04
  nop                                             ; $6809: $00
  inc b                                           ; $680a: $04
  nop                                             ; $680b: $00
  nop                                             ; $680c: $00
  nop                                             ; $680d: $00
  ld [bc], a                                      ; $680e: $02
  ld [$0301], sp                                  ; $680f: $08 $01 $03
  nop                                             ; $6812: $00
  inc b                                           ; $6813: $04
  nop                                             ; $6814: $00
  nop                                             ; $6815: $00
  nop                                             ; $6816: $00
  ld [bc], a                                      ; $6817: $02
  ld [$0401], sp                                  ; $6818: $08 $01 $04
  nop                                             ; $681b: $00
  inc b                                           ; $681c: $04
  nop                                             ; $681d: $00
  nop                                             ; $681e: $00
  nop                                             ; $681f: $00
  ld [bc], a                                      ; $6820: $02
  ld a, [bc]                                      ; $6821: $0a
  nop                                             ; $6822: $00
  add hl, bc                                      ; $6823: $09
  inc bc                                          ; $6824: $03
  dec b                                           ; $6825: $05
  ld bc, $d4ff                                    ; $6826: $01 $ff $d4
  dec c                                           ; $6829: $0d
  nop                                             ; $682a: $00
  ld h, $01                                       ; $682b: $26 $01
  ld [hl], e                                      ; $682d: $73
  inc b                                           ; $682e: $04
  nop                                             ; $682f: $00
  nop                                             ; $6830: $00
  nop                                             ; $6831: $00
  dec bc                                          ; $6832: $0b
  ld h, $00                                       ; $6833: $26 $00
  ld [hl], d                                      ; $6835: $72
  nop                                             ; $6836: $00
  ld c, $10                                       ; $6837: $0e $10
  ld a, [bc]                                      ; $6839: $0a
  ld [bc], a                                      ; $683a: $02
  ld b, $07                                       ; $683b: $06 $07
  db $fc                                          ; $683d: $fc
  nop                                             ; $683e: $00
  ld c, $11                                       ; $683f: $0e $11
  ld a, [bc]                                      ; $6841: $0a
  nop                                             ; $6842: $00
  ld b, $07                                       ; $6843: $06 $07
  db $fc                                          ; $6845: $fc
  nop                                             ; $6846: $00
  ld h, $01                                       ; $6847: $26 $01
  halt                                            ; $6849: $76
  inc b                                           ; $684a: $04
  nop                                             ; $684b: $00
  nop                                             ; $684c: $00
  nop                                             ; $684d: $00
  dec bc                                          ; $684e: $0b
  ld h, $00                                       ; $684f: $26 $00
  ld [hl], l                                      ; $6851: $75
  nop                                             ; $6852: $00
  ld c, $10                                       ; $6853: $0e $10
  ld a, [bc]                                      ; $6855: $0a
  ld [bc], a                                      ; $6856: $02
  add hl, bc                                      ; $6857: $09
  ld b, $06                                       ; $6858: $06 $06
  ld [$0057], sp                                  ; $685a: $08 $57 $00
  ld c, $11                                       ; $685d: $0e $11
  ld a, [bc]                                      ; $685f: $0a
  nop                                             ; $6860: $00
  add hl, bc                                      ; $6861: $09
  inc c                                           ; $6862: $0c
  ld b, $08                                       ; $6863: $06 $08
  ld d, a                                         ; $6865: $57
  nop                                             ; $6866: $00
  ld c, $01                                       ; $6867: $0e $01
  inc c                                           ; $6869: $0c
  ld bc, $0713                                    ; $686a: $01 $13 $07
  inc bc                                          ; $686d: $03
  ld [$1000], sp                                  ; $686e: $08 $00 $10
  nop                                             ; $6871: $00
  nop                                             ; $6872: $00
  ld [$fb01], sp                                  ; $6873: $08 $01 $fb
  nop                                             ; $6876: $00
  inc b                                           ; $6877: $04
  nop                                             ; $6878: $00
  nop                                             ; $6879: $00
  nop                                             ; $687a: $00
  ld [bc], a                                      ; $687b: $02
  ld [$0301], sp                                  ; $687c: $08 $01 $03
  ld b, b                                         ; $687f: $40
  inc b                                           ; $6880: $04
  nop                                             ; $6881: $00
  nop                                             ; $6882: $00
  nop                                             ; $6883: $00
  inc bc                                          ; $6884: $03
  dec b                                           ; $6885: $05
  rrca                                            ; $6886: $0f
  rst $38                                         ; $6887: $ff
  xor $0d                                         ; $6888: $ee $0d
  nop                                             ; $688a: $00
  ld c, $01                                       ; $688b: $0e $01
  inc c                                           ; $688d: $0c
  nop                                             ; $688e: $00
  inc bc                                          ; $688f: $03
  add hl, bc                                      ; $6890: $09
  nop                                             ; $6891: $00
  ld [de], a                                      ; $6892: $12
  nop                                             ; $6893: $00
  nop                                             ; $6894: $00
  ld [$0101], sp                                  ; $6895: $08 $01 $01
  add b                                           ; $6898: $80
  inc b                                           ; $6899: $04
  nop                                             ; $689a: $00
  nop                                             ; $689b: $00
  nop                                             ; $689c: $00
  ld [bc], a                                      ; $689d: $02
  ld [$ff01], sp                                  ; $689e: $08 $01 $ff
  nop                                             ; $68a1: $00
  inc b                                           ; $68a2: $04
  nop                                             ; $68a3: $00
  nop                                             ; $68a4: $00
  nop                                             ; $68a5: $00
  inc bc                                          ; $68a6: $03
  dec b                                           ; $68a7: $05
  ld [$e4ff], sp                                  ; $68a8: $08 $ff $e4
  inc de                                          ; $68ab: $13
  ld bc, $0108                                    ; $68ac: $01 $08 $01
  ld bc, $0400                                    ; $68af: $01 $00 $04
  nop                                             ; $68b2: $00
  nop                                             ; $68b3: $00
  nop                                             ; $68b4: $00
  ld a, [de]                                      ; $68b5: $1a
  dec c                                           ; $68b6: $0d
  nop                                             ; $68b7: $00
  ld c, $03                                       ; $68b8: $0e $03
  inc c                                           ; $68ba: $0c
  rst $38                                         ; $68bb: $ff
  add hl, bc                                      ; $68bc: $09
  ld [$6710], sp                                  ; $68bd: $08 $10 $67
  inc de                                          ; $68c0: $13
  dec bc                                          ; $68c1: $0b
  inc b                                           ; $68c2: $04
  nop                                             ; $68c3: $00
  nop                                             ; $68c4: $00
  nop                                             ; $68c5: $00
  ld h, $28                                       ; $68c6: $26 $28
  rrca                                            ; $68c8: $0f
  inc b                                           ; $68c9: $04
  nop                                             ; $68ca: $00
  nop                                             ; $68cb: $00
  nop                                             ; $68cc: $00
  ld h, $13                                       ; $68cd: $26 $13
  rlca                                            ; $68cf: $07
  inc b                                           ; $68d0: $04
  nop                                             ; $68d1: $00
  nop                                             ; $68d2: $00
  nop                                             ; $68d3: $00
  ld h, h                                         ; $68d4: $64
  dec c                                           ; $68d5: $0d
  nop                                             ; $68d6: $00

  db $0e, $02, $0c, $ff, $24, $0c, $1e, $01, $0c, $00, $39, $03, $ff, $ec, $fc, $00
  db $00, $04, $00, $00, $00, $32, $08, $01, $fc, $00, $03, $00, $14, $02, $00, $00
  db $04, $00, $00, $00, $1a, $08, $01, $04, $00, $03, $04, $80, $12, $00, $00, $04
  db $00, $00, $00, $14, $09, $08, $04, $00, $00, $00, $14, $09, $04, $04, $00, $00
  db $00, $14, $0d, $00, $0e, $03, $0c, $ff, $13, $09, $10, $23, $04, $00, $00, $00
  db $04, $10, $33, $04, $00, $00, $00, $04, $10, $43, $04, $00, $00, $00, $05, $10
  db $53, $04, $00, $00, $00, $06, $10, $56, $04, $00, $00, $00, $1a, $28, $0f, $13
  db $02, $04, $01, $00, $00, $00

  dec c                                           ; $694d: $0d
  nop                                             ; $694e: $00
  ld c, $02                                       ; $694f: $0e $02
  inc c                                           ; $6951: $0c
  rst $38                                         ; $6952: $ff
  inc h                                           ; $6953: $24
  inc c                                           ; $6954: $0c
  ld e, $01                                       ; $6955: $1e $01
  inc c                                           ; $6957: $0c
  nop                                             ; $6958: $00
  ld hl, $0103                                    ; $6959: $21 $03 $01
  ret nz                                          ; $695c: $c0

  rlca                                            ; $695d: $07
  nop                                             ; $695e: $00
  nop                                             ; $695f: $00
  inc b                                           ; $6960: $04
  nop                                             ; $6961: $00
  nop                                             ; $6962: $00
  nop                                             ; $6963: $00
  dec b                                           ; $6964: $05
  ld [$0001], sp                                  ; $6965: $08 $01 $00
  pop bc                                          ; $6968: $c1
  dec b                                           ; $6969: $05
  rrca                                            ; $696a: $0f
  rst $38                                         ; $696b: $ff
  di                                              ; $696c: $f3
  add hl, bc                                      ; $696d: $09
  inc bc                                          ; $696e: $03
  inc b                                           ; $696f: $04
  nop                                             ; $6970: $00
  nop                                             ; $6971: $00
  nop                                             ; $6972: $00
  ld h, $0d                                       ; $6973: $26 $0d
  nop                                             ; $6975: $00
  ld c, $03                                       ; $6976: $0e $03
  inc c                                           ; $6978: $0c
  rst $38                                         ; $6979: $ff
  db $10                                          ; $697a: $10
  ld d, h                                         ; $697b: $54
  inc b                                           ; $697c: $04
  nop                                             ; $697d: $00
  nop                                             ; $697e: $00
  nop                                             ; $697f: $00
  inc bc                                          ; $6980: $03
  db $10                                          ; $6981: $10
  ld b, e                                         ; $6982: $43
  inc b                                           ; $6983: $04
  nop                                             ; $6984: $00
  nop                                             ; $6985: $00
  nop                                             ; $6986: $00
  inc b                                           ; $6987: $04
  add hl, bc                                      ; $6988: $09
  nop                                             ; $6989: $00
  inc b                                           ; $698a: $04
  nop                                             ; $698b: $00
  nop                                             ; $698c: $00
  nop                                             ; $698d: $00
  dec b                                           ; $698e: $05
  jr z, jr_010_6991                               ; $698f: $28 $00

jr_010_6991:
  inc de                                          ; $6991: $13
  ld a, [bc]                                      ; $6992: $0a
  db $10                                          ; $6993: $10
  dec h                                           ; $6994: $25
  inc b                                           ; $6995: $04
  nop                                             ; $6996: $00
  nop                                             ; $6997: $00
  nop                                             ; $6998: $00
  ld a, [de]                                      ; $6999: $1a
  jr z, jr_010_69ab                               ; $699a: $28 $0f

  inc de                                          ; $699c: $13
  ld [bc], a                                      ; $699d: $02
  inc b                                           ; $699e: $04
  nop                                             ; $699f: $00
  nop                                             ; $69a0: $00
  nop                                             ; $69a1: $00
  ld c, d                                         ; $69a2: $4a
  dec c                                           ; $69a3: $0d
  nop                                             ; $69a4: $00
  ld c, $03                                       ; $69a5: $0e $03
  inc c                                           ; $69a7: $0c
  rst $38                                         ; $69a8: $ff
  inc de                                          ; $69a9: $13
  ld [bc], a                                      ; $69aa: $02

jr_010_69ab:
  db $10                                          ; $69ab: $10
  ld b, l                                         ; $69ac: $45
  inc b                                           ; $69ad: $04
  nop                                             ; $69ae: $00
  nop                                             ; $69af: $00
  nop                                             ; $69b0: $00
  rlca                                            ; $69b1: $07
  db $10                                          ; $69b2: $10
  dec [hl]                                        ; $69b3: $35
  inc b                                           ; $69b4: $04
  nop                                             ; $69b5: $00
  nop                                             ; $69b6: $00
  nop                                             ; $69b7: $00
  ld b, $10                                       ; $69b8: $06 $10
  scf                                             ; $69ba: $37
  inc b                                           ; $69bb: $04
  nop                                             ; $69bc: $00
  nop                                             ; $69bd: $00
  nop                                             ; $69be: $00
  ld a, [de]                                      ; $69bf: $1a
  dec c                                           ; $69c0: $0d
  nop                                             ; $69c1: $00
  ld c, $02                                       ; $69c2: $0e $02
  inc c                                           ; $69c4: $0c
  ld bc, $0001                                    ; $69c5: $01 $01 $00
  jr nc, @+$12                                    ; $69c8: $30 $10

  inc b                                           ; $69ca: $04
  ld bc, $0000                                    ; $69cb: $01 $00 $00
  or [hl]                                         ; $69ce: $b6
  dec c                                           ; $69cf: $0d
  nop                                             ; $69d0: $00
  ld h, $01                                       ; $69d1: $26 $01
  add c                                           ; $69d3: $81
  inc b                                           ; $69d4: $04
  nop                                             ; $69d5: $00
  nop                                             ; $69d6: $00
  nop                                             ; $69d7: $00
  dec b                                           ; $69d8: $05
  ld h, $00                                       ; $69d9: $26 $00
  add d                                           ; $69db: $82
  nop                                             ; $69dc: $00
  ld c, $01                                       ; $69dd: $0e $01
  dec bc                                          ; $69df: $0b
  nop                                             ; $69e0: $00
  ld d, b                                         ; $69e1: $50
  ld d, c                                         ; $69e2: $51
  nop                                             ; $69e3: $00
  ld a, [bc]                                      ; $69e4: $0a
  nop                                             ; $69e5: $00
  add hl, bc                                      ; $69e6: $09
  inc c                                           ; $69e7: $0c
  inc c                                           ; $69e8: $0c
  ld bc, $0413                                    ; $69e9: $01 $13 $04
  ld [$0401], sp                                  ; $69ec: $08 $01 $04
  nop                                             ; $69ef: $00
  inc b                                           ; $69f0: $04
  nop                                             ; $69f1: $00
  nop                                             ; $69f2: $00
  nop                                             ; $69f3: $00
  ld [bc], a                                      ; $69f4: $02
  add hl, bc                                      ; $69f5: $09
  inc b                                           ; $69f6: $04
  inc b                                           ; $69f7: $04
  nop                                             ; $69f8: $00
  nop                                             ; $69f9: $00
  nop                                             ; $69fa: $00
  ld [bc], a                                      ; $69fb: $02
  add hl, bc                                      ; $69fc: $09
  inc c                                           ; $69fd: $0c
  ld [$fe01], sp                                  ; $69fe: $08 $01 $fe
  nop                                             ; $6a01: $00
  inc b                                           ; $6a02: $04
  nop                                             ; $6a03: $00
  nop                                             ; $6a04: $00
  nop                                             ; $6a05: $00
  ld [bc], a                                      ; $6a06: $02
  add hl, bc                                      ; $6a07: $09
  inc b                                           ; $6a08: $04
  inc b                                           ; $6a09: $04
  nop                                             ; $6a0a: $00
  nop                                             ; $6a0b: $00
  nop                                             ; $6a0c: $00
  ld [bc], a                                      ; $6a0d: $02
  dec b                                           ; $6a0e: $05
  ld b, $ff                                       ; $6a0f: $06 $ff
  sub $0d                                         ; $6a11: $d6 $0d
  nop                                             ; $6a13: $00
  ld c, $00                                       ; $6a14: $0e $00
  dec bc                                          ; $6a16: $0b
  nop                                             ; $6a17: $00
  ld d, b                                         ; $6a18: $50
  ld d, c                                         ; $6a19: $51
  nop                                             ; $6a1a: $00
  ld a, [bc]                                      ; $6a1b: $0a
  ld [bc], a                                      ; $6a1c: $02
  add hl, bc                                      ; $6a1d: $09
  ld b, $0c                                       ; $6a1e: $06 $0c
  ld bc, $0413                                    ; $6a20: $01 $13 $04
  ld [$0401], sp                                  ; $6a23: $08 $01 $04
  nop                                             ; $6a26: $00
  inc b                                           ; $6a27: $04
  nop                                             ; $6a28: $00
  nop                                             ; $6a29: $00
  nop                                             ; $6a2a: $00
  ld [bc], a                                      ; $6a2b: $02
  add hl, bc                                      ; $6a2c: $09
  inc bc                                          ; $6a2d: $03
  inc b                                           ; $6a2e: $04
  nop                                             ; $6a2f: $00
  nop                                             ; $6a30: $00
  nop                                             ; $6a31: $00
  ld [bc], a                                      ; $6a32: $02
  add hl, bc                                      ; $6a33: $09
  ld b, $08                                       ; $6a34: $06 $08
  ld bc, $00fe                                    ; $6a36: $01 $fe $00
  inc b                                           ; $6a39: $04
  nop                                             ; $6a3a: $00
  nop                                             ; $6a3b: $00
  nop                                             ; $6a3c: $00
  ld [bc], a                                      ; $6a3d: $02
  add hl, bc                                      ; $6a3e: $09
  inc bc                                          ; $6a3f: $03
  inc b                                           ; $6a40: $04
  nop                                             ; $6a41: $00
  nop                                             ; $6a42: $00
  nop                                             ; $6a43: $00
  ld [bc], a                                      ; $6a44: $02
  dec b                                           ; $6a45: $05
  ld b, $ff                                       ; $6a46: $06 $ff
  sub $0d                                         ; $6a48: $d6 $0d
  nop                                             ; $6a4a: $00

  db $0e, $03, $09, $08, $0c, $ff, $10, $57, $04, $00, $00, $00, $07, $09, $0f, $10
  db $56, $04, $00, $00, $00, $06, $10, $54, $04, $00, $00, $00, $05, $10, $52, $13
  db $01, $04, $00, $00, $00, $0e, $0d, $00, $0e, $02, $0c, $00, $09, $0f, $0b, $80
  db $43, $46, $00, $03, $00, $80, $02, $00, $00, $04, $00, $00, $00, $05, $03, $01
  db $55, $04, $00, $00, $08, $01, $06, $00, $04, $00, $00, $00, $04, $08, $01, $08
  db $00, $03, $02, $00, $08, $00, $00, $04, $00, $00, $00, $05, $09, $00, $04, $00
  db $00, $00, $05, $09, $08, $05, $01, $ff, $c5, $0d, $00

  ld c, $02                                       ; $6ab6: $0e $02
  inc c                                           ; $6ab8: $0c
  nop                                             ; $6ab9: $00
  dec bc                                          ; $6aba: $0b
  add b                                           ; $6abb: $80
  ld e, d                                         ; $6abc: $5a
  ld h, h                                         ; $6abd: $64
  nop                                             ; $6abe: $00
  inc bc                                          ; $6abf: $03
  ld bc, $0200                                    ; $6ac0: $01 $00 $02
  nop                                             ; $6ac3: $00
  nop                                             ; $6ac4: $00
  inc b                                           ; $6ac5: $04
  nop                                             ; $6ac6: $00
  nop                                             ; $6ac7: $00
  nop                                             ; $6ac8: $00
  inc bc                                          ; $6ac9: $03
  ld [$0200], sp                                  ; $6aca: $08 $00 $02
  nop                                             ; $6acd: $00
  inc bc                                          ; $6ace: $03
  ld [bc], a                                      ; $6acf: $02
  nop                                             ; $6ad0: $00
  inc b                                           ; $6ad1: $04
  nop                                             ; $6ad2: $00
  nop                                             ; $6ad3: $00
  ld [$0400], sp                                  ; $6ad4: $08 $00 $04
  nop                                             ; $6ad7: $00
  inc b                                           ; $6ad8: $04
  nop                                             ; $6ad9: $00
  nop                                             ; $6ada: $00
  nop                                             ; $6adb: $00
  inc bc                                          ; $6adc: $03
  ld [$0800], sp                                  ; $6add: $08 $00 $08
  nop                                             ; $6ae0: $00
  inc bc                                          ; $6ae1: $03
  inc b                                           ; $6ae2: $04
  nop                                             ; $6ae3: $00
  ld [$0000], sp                                  ; $6ae4: $08 $00 $00
  inc b                                           ; $6ae7: $04
  nop                                             ; $6ae8: $00
  nop                                             ; $6ae9: $00
  nop                                             ; $6aea: $00
  inc bc                                          ; $6aeb: $03
  add hl, bc                                      ; $6aec: $09
  nop                                             ; $6aed: $00
  inc b                                           ; $6aee: $04
  nop                                             ; $6aef: $00
  nop                                             ; $6af0: $00
  nop                                             ; $6af1: $00
  inc bc                                          ; $6af2: $03
  add hl, bc                                      ; $6af3: $09
  inc b                                           ; $6af4: $04
  dec b                                           ; $6af5: $05
  ld [bc], a                                      ; $6af6: $02
  rst $38                                         ; $6af7: $ff
  pop bc                                          ; $6af8: $c1
  dec c                                           ; $6af9: $0d
  nop                                             ; $6afa: $00
  ld c, $03                                       ; $6afb: $0e $03
  inc c                                           ; $6afd: $0c
  rst $38                                         ; $6afe: $ff
  inc de                                          ; $6aff: $13
  ld bc, $6310                                    ; $6b00: $01 $10 $63
  inc b                                           ; $6b03: $04
  nop                                             ; $6b04: $00
  nop                                             ; $6b05: $00
  nop                                             ; $6b06: $00
  inc bc                                          ; $6b07: $03
  db $10                                          ; $6b08: $10
  ld b, h                                         ; $6b09: $44
  inc b                                           ; $6b0a: $04
  nop                                             ; $6b0b: $00
  nop                                             ; $6b0c: $00
  nop                                             ; $6b0d: $00
  rlca                                            ; $6b0e: $07
  db $10                                          ; $6b0f: $10
  ld b, h                                         ; $6b10: $44
  inc b                                           ; $6b11: $04
  nop                                             ; $6b12: $00
  nop                                             ; $6b13: $00
  nop                                             ; $6b14: $00
  inc bc                                          ; $6b15: $03
  db $10                                          ; $6b16: $10
  inc sp                                          ; $6b17: $33
  inc b                                           ; $6b18: $04
  nop                                             ; $6b19: $00
  nop                                             ; $6b1a: $00
  nop                                             ; $6b1b: $00
  inc bc                                          ; $6b1c: $03
  jr z, jr_010_6b1f                               ; $6b1d: $28 $00

jr_010_6b1f:
  add hl, bc                                      ; $6b1f: $09
  ld [$0a13], sp                                  ; $6b20: $08 $13 $0a
  db $10                                          ; $6b23: $10
  ld h, a                                         ; $6b24: $67
  inc b                                           ; $6b25: $04
  nop                                             ; $6b26: $00
  nop                                             ; $6b27: $00
  nop                                             ; $6b28: $00
  ld h, $28                                       ; $6b29: $26 $28
  rrca                                            ; $6b2b: $0f
  inc de                                          ; $6b2c: $13
  inc b                                           ; $6b2d: $04
  inc b                                           ; $6b2e: $04
  nop                                             ; $6b2f: $00
  nop                                             ; $6b30: $00
  nop                                             ; $6b31: $00
  jr c, jr_010_6b41                               ; $6b32: $38 $0d

  nop                                             ; $6b34: $00
  ld h, $01                                       ; $6b35: $26 $01
  adc c                                           ; $6b37: $89
  inc b                                           ; $6b38: $04
  nop                                             ; $6b39: $00
  nop                                             ; $6b3a: $00
  nop                                             ; $6b3b: $00
  dec bc                                          ; $6b3c: $0b
  ld h, $00                                       ; $6b3d: $26 $00
  adc b                                           ; $6b3f: $88
  nop                                             ; $6b40: $00

jr_010_6b41:
  ld c, $00                                       ; $6b41: $0e $00
  add hl, bc                                      ; $6b43: $09
  ld b, $0a                                       ; $6b44: $06 $0a
  ld [bc], a                                      ; $6b46: $02
  ld b, $08                                       ; $6b47: $06 $08
  xor h                                           ; $6b49: $ac
  nop                                             ; $6b4a: $00
  ld c, $01                                       ; $6b4b: $0e $01
  add hl, bc                                      ; $6b4d: $09
  rrca                                            ; $6b4e: $0f
  ld a, [bc]                                      ; $6b4f: $0a
  nop                                             ; $6b50: $00
  ld b, $08                                       ; $6b51: $06 $08
  xor h                                           ; $6b53: $ac
  nop                                             ; $6b54: $00
  ld c, $03                                       ; $6b55: $0e $03
  inc c                                           ; $6b57: $0c
  rst $38                                         ; $6b58: $ff
  inc de                                          ; $6b59: $13
  dec b                                           ; $6b5a: $05
  db $10                                          ; $6b5b: $10
  ld h, [hl]                                      ; $6b5c: $66
  inc b                                           ; $6b5d: $04
  nop                                             ; $6b5e: $00
  nop                                             ; $6b5f: $00
  nop                                             ; $6b60: $00
  ld b, $10                                       ; $6b61: $06 $10
  ld d, h                                         ; $6b63: $54
  inc b                                           ; $6b64: $04
  nop                                             ; $6b65: $00
  nop                                             ; $6b66: $00
  nop                                             ; $6b67: $00
  dec b                                           ; $6b68: $05
  db $10                                          ; $6b69: $10
  ld d, e                                         ; $6b6a: $53
  inc b                                           ; $6b6b: $04
  nop                                             ; $6b6c: $00
  nop                                             ; $6b6d: $00
  nop                                             ; $6b6e: $00
  inc b                                           ; $6b6f: $04
  dec b                                           ; $6b70: $05
  inc bc                                          ; $6b71: $03
  rst $38                                         ; $6b72: $ff
  rst $20                                         ; $6b73: $e7
  dec c                                           ; $6b74: $0d
  nop                                             ; $6b75: $00
  ld c, $11                                       ; $6b76: $0e $11
  dec bc                                          ; $6b78: $0b
  add b                                           ; $6b79: $80
  cpl                                             ; $6b7a: $2f
  ld sp, $0c00                                    ; $6b7b: $31 $00 $0c
  nop                                             ; $6b7e: $00
  inc de                                          ; $6b7f: $13
  add hl, bc                                      ; $6b80: $09
  inc bc                                          ; $6b81: $03
  rst $38                                         ; $6b82: $ff
  rst $10                                         ; $6b83: $d7
  ld sp, hl                                       ; $6b84: $f9
  nop                                             ; $6b85: $00
  nop                                             ; $6b86: $00
  inc b                                           ; $6b87: $04
  nop                                             ; $6b88: $00
  nop                                             ; $6b89: $00
  nop                                             ; $6b8a: $00
  inc l                                           ; $6b8b: $2c
  jr z, jr_010_6b9d                               ; $6b8c: $28 $0f

  inc de                                          ; $6b8e: $13
  inc bc                                          ; $6b8f: $03
  ld [$f901], sp                                  ; $6b90: $08 $01 $f9
  nop                                             ; $6b93: $00
  inc bc                                          ; $6b94: $03
  rst $38                                         ; $6b95: $ff
  jp hl                                           ; $6b96: $e9


  db $fc                                          ; $6b97: $fc
  nop                                             ; $6b98: $00
  nop                                             ; $6b99: $00
  inc b                                           ; $6b9a: $04
  nop                                             ; $6b9b: $00
  nop                                             ; $6b9c: $00

jr_010_6b9d:
  nop                                             ; $6b9d: $00
  inc l                                           ; $6b9e: $2c
  dec c                                           ; $6b9f: $0d
  nop                                             ; $6ba0: $00
  ld c, $02                                       ; $6ba1: $0e $02
  inc c                                           ; $6ba3: $0c
  ld bc, $0103                                    ; $6ba4: $01 $03 $01
  add b                                           ; $6ba7: $80
  add hl, bc                                      ; $6ba8: $09
  nop                                             ; $6ba9: $00
  nop                                             ; $6baa: $00
  ld [$0001], sp                                  ; $6bab: $08 $01 $00
  add b                                           ; $6bae: $80
  inc b                                           ; $6baf: $04
  nop                                             ; $6bb0: $00
  nop                                             ; $6bb1: $00
  nop                                             ; $6bb2: $00
  rlca                                            ; $6bb3: $07
  dec b                                           ; $6bb4: $05
  ld b, $ff                                       ; $6bb5: $06 $ff
  db $ed                                          ; $6bb7: $ed
  inc bc                                          ; $6bb8: $03
  nop                                             ; $6bb9: $00
  pop de                                          ; $6bba: $d1
  add hl, bc                                      ; $6bbb: $09
  nop                                             ; $6bbc: $00
  nop                                             ; $6bbd: $00
  inc b                                           ; $6bbe: $04
  nop                                             ; $6bbf: $00
  nop                                             ; $6bc0: $00
  nop                                             ; $6bc1: $00
  inc c                                           ; $6bc2: $0c
  add hl, bc                                      ; $6bc3: $09
  ld [$0004], sp                                  ; $6bc4: $08 $04 $00
  nop                                             ; $6bc7: $00
  nop                                             ; $6bc8: $00
  inc c                                           ; $6bc9: $0c
  add hl, bc                                      ; $6bca: $09
  inc b                                           ; $6bcb: $04
  inc b                                           ; $6bcc: $04
  nop                                             ; $6bcd: $00
  nop                                             ; $6bce: $00
  nop                                             ; $6bcf: $00
  inc c                                           ; $6bd0: $0c
  dec c                                           ; $6bd1: $0d
  nop                                             ; $6bd2: $00
  ld c, $03                                       ; $6bd3: $0e $03
  inc c                                           ; $6bd5: $0c
  rst $38                                         ; $6bd6: $ff
  db $10                                          ; $6bd7: $10
  ld d, d                                         ; $6bd8: $52
  inc b                                           ; $6bd9: $04
  nop                                             ; $6bda: $00
  nop                                             ; $6bdb: $00
  nop                                             ; $6bdc: $00
  ld b, $10                                       ; $6bdd: $06 $10
  ld b, d                                         ; $6bdf: $42
  inc b                                           ; $6be0: $04
  nop                                             ; $6be1: $00
  nop                                             ; $6be2: $00
  nop                                             ; $6be3: $00
  dec b                                           ; $6be4: $05
  db $10                                          ; $6be5: $10
  ld [hl-], a                                     ; $6be6: $32
  inc b                                           ; $6be7: $04
  nop                                             ; $6be8: $00
  nop                                             ; $6be9: $00
  nop                                             ; $6bea: $00
  inc b                                           ; $6beb: $04
  db $10                                          ; $6bec: $10
  ld [hl+], a                                     ; $6bed: $22
  inc de                                          ; $6bee: $13
  ld bc, $0004                                    ; $6bef: $01 $04 $00
  nop                                             ; $6bf2: $00
  nop                                             ; $6bf3: $00
  add hl, bc                                      ; $6bf4: $09
  dec c                                           ; $6bf5: $0d
  nop                                             ; $6bf6: $00
  ld c, $01                                       ; $6bf7: $0e $01
  inc c                                           ; $6bf9: $0c
  nop                                             ; $6bfa: $00
  inc de                                          ; $6bfb: $13
  inc c                                           ; $6bfc: $0c
  inc bc                                          ; $6bfd: $03
  inc bc                                          ; $6bfe: $03
  nop                                             ; $6bff: $00
  add hl, bc                                      ; $6c00: $09
  nop                                             ; $6c01: $00
  nop                                             ; $6c02: $00
  ld [$0001], sp                                  ; $6c03: $08 $01 $00
  ld b, b                                         ; $6c06: $40
  inc b                                           ; $6c07: $04
  nop                                             ; $6c08: $00
  nop                                             ; $6c09: $00
  nop                                             ; $6c0a: $00
  rlca                                            ; $6c0b: $07
  dec b                                           ; $6c0c: $05
  inc c                                           ; $6c0d: $0c
  rst $38                                         ; $6c0e: $ff
  db $ed                                          ; $6c0f: $ed
  dec c                                           ; $6c10: $0d
  nop                                             ; $6c11: $00
  ld c, $02                                       ; $6c12: $0e $02
  rlca                                            ; $6c14: $07
  ld d, b                                         ; $6c15: $50
  nop                                             ; $6c16: $00
  dec e                                           ; $6c17: $1d
  nop                                             ; $6c18: $00
  rrca                                            ; $6c19: $0f
  nop                                             ; $6c1a: $00
  adc c                                           ; $6c1b: $89
  inc bc                                          ; $6c1c: $03
  cp $e9                                          ; $6c1d: $fe $e9
  db $f4                                          ; $6c1f: $f4
  nop                                             ; $6c20: $00
  nop                                             ; $6c21: $00
  inc b                                           ; $6c22: $04
  nop                                             ; $6c23: $00
  nop                                             ; $6c24: $00
  nop                                             ; $6c25: $00
  jr c, @+$0f                                     ; $6c26: $38 $0d

  nop                                             ; $6c28: $00
  ld c, $02                                       ; $6c29: $0e $02
  ld hl, $040a                                    ; $6c2b: $21 $0a $04
  nop                                             ; $6c2e: $00
  nop                                             ; $6c2f: $00
  nop                                             ; $6c30: $00
  cpl                                             ; $6c31: $2f
  add hl, bc                                      ; $6c32: $09
  ld [$0a21], sp                                  ; $6c33: $08 $21 $0a
  inc b                                           ; $6c36: $04
  nop                                             ; $6c37: $00
  nop                                             ; $6c38: $00
  nop                                             ; $6c39: $00
  cpl                                             ; $6c3a: $2f
  dec c                                           ; $6c3b: $0d
  nop                                             ; $6c3c: $00
  ld h, $01                                       ; $6c3d: $26 $01
  sub e                                           ; $6c3f: $93
  ld h, $00                                       ; $6c40: $26 $00
  sub d                                           ; $6c42: $92
  nop                                             ; $6c43: $00
  ld c, $00                                       ; $6c44: $0e $00
  ld a, [bc]                                      ; $6c46: $0a
  ld [bc], a                                      ; $6c47: $02
  ld b, $08                                       ; $6c48: $06 $08
  db $dd                                          ; $6c4a: $dd
  nop                                             ; $6c4b: $00
  ld c, $01                                       ; $6c4c: $0e $01
  ld a, [bc]                                      ; $6c4e: $0a
  nop                                             ; $6c4f: $00
  ld b, $08                                       ; $6c50: $06 $08
  db $dd                                          ; $6c52: $dd
  nop                                             ; $6c53: $00
  ld c, $02                                       ; $6c54: $0e $02
  inc c                                           ; $6c56: $0c
  ld bc, $0203                                    ; $6c57: $01 $03 $02
  ld d, l                                         ; $6c5a: $55
  rlca                                            ; $6c5b: $07
  nop                                             ; $6c5c: $00
  nop                                             ; $6c5d: $00
  ld [$0001], sp                                  ; $6c5e: $08 $01 $00
  pop bc                                          ; $6c61: $c1
  inc b                                           ; $6c62: $04
  nop                                             ; $6c63: $00
  nop                                             ; $6c64: $00
  nop                                             ; $6c65: $00
  rlca                                            ; $6c66: $07
  dec b                                           ; $6c67: $05
  rlca                                            ; $6c68: $07
  rst $38                                         ; $6c69: $ff
  rst $30                                         ; $6c6a: $f7
  inc bc                                          ; $6c6b: $03
  ld [bc], a                                      ; $6c6c: $02
  ld d, l                                         ; $6c6d: $55
  rlca                                            ; $6c6e: $07
  nop                                             ; $6c6f: $00
  nop                                             ; $6c70: $00
  ld [$fa01], sp                                  ; $6c71: $08 $01 $fa
  nop                                             ; $6c74: $00
  inc b                                           ; $6c75: $04
  nop                                             ; $6c76: $00
  nop                                             ; $6c77: $00
  nop                                             ; $6c78: $00
  inc b                                           ; $6c79: $04
  dec b                                           ; $6c7a: $05
  inc b                                           ; $6c7b: $04
  rst $38                                         ; $6c7c: $ff
  di                                              ; $6c7d: $f3
  add hl, bc                                      ; $6c7e: $09
  ld [$0108], sp                                  ; $6c7f: $08 $08 $01
  jr jr_010_6c84                                  ; $6c82: $18 $00

jr_010_6c84:
  ld [$fa01], sp                                  ; $6c84: $08 $01 $fa
  nop                                             ; $6c87: $00
  inc b                                           ; $6c88: $04
  nop                                             ; $6c89: $00
  nop                                             ; $6c8a: $00
  nop                                             ; $6c8b: $00
  inc b                                           ; $6c8c: $04
  dec b                                           ; $6c8d: $05
  inc b                                           ; $6c8e: $04
  rst $38                                         ; $6c8f: $ff
  di                                              ; $6c90: $f3
  dec c                                           ; $6c91: $0d
  nop                                             ; $6c92: $00
  ld c, $02                                       ; $6c93: $0e $02
  ld hl, $040b                                    ; $6c95: $21 $0b $04
  nop                                             ; $6c98: $00
  nop                                             ; $6c99: $00
  nop                                             ; $6c9a: $00
  jr z, jr_010_6ca6                               ; $6c9b: $28 $09

  ld [$0b21], sp                                  ; $6c9d: $08 $21 $0b
  inc b                                           ; $6ca0: $04
  nop                                             ; $6ca1: $00
  nop                                             ; $6ca2: $00
  nop                                             ; $6ca3: $00
  db $10                                          ; $6ca4: $10
  dec c                                           ; $6ca5: $0d

jr_010_6ca6:
  nop                                             ; $6ca6: $00
  ld c, $02                                       ; $6ca7: $0e $02
  inc c                                           ; $6ca9: $0c
  ld bc, $ff03                                    ; $6caa: $01 $03 $ff
  ld sp, $00e2                                    ; $6cad: $31 $e2 $00
  nop                                             ; $6cb0: $00
  inc b                                           ; $6cb1: $04
  nop                                             ; $6cb2: $00
  nop                                             ; $6cb3: $00
  nop                                             ; $6cb4: $00
  ld h, $08                                       ; $6cb5: $26 $08
  ld bc, $00ea                                    ; $6cb7: $01 $ea $00
  inc bc                                          ; $6cba: $03
  rst $38                                         ; $6cbb: $ff
  inc d                                           ; $6cbc: $14
  db $f4                                          ; $6cbd: $f4
  nop                                             ; $6cbe: $00
  nop                                             ; $6cbf: $00
  inc b                                           ; $6cc0: $04
  nop                                             ; $6cc1: $00
  nop                                             ; $6cc2: $00
  nop                                             ; $6cc3: $00
  ld c, $08                                       ; $6cc4: $0e $08
  ld bc, $c104                                    ; $6cc6: $01 $04 $c1
  dec b                                           ; $6cc9: $05
  inc bc                                          ; $6cca: $03
  rst $38                                         ; $6ccb: $ff
  di                                              ; $6ccc: $f3
  add hl, bc                                      ; $6ccd: $09
  inc c                                           ; $6cce: $0c
  inc b                                           ; $6ccf: $04
  nop                                             ; $6cd0: $00
  nop                                             ; $6cd1: $00
  nop                                             ; $6cd2: $00
  ld c, $09                                       ; $6cd3: $0e $09
  ld [$0004], sp                                  ; $6cd5: $08 $04 $00
  nop                                             ; $6cd8: $00
  nop                                             ; $6cd9: $00
  ld c, $09                                       ; $6cda: $0e $09
  inc b                                           ; $6cdc: $04
  inc b                                           ; $6cdd: $04
  nop                                             ; $6cde: $00
  nop                                             ; $6cdf: $00
  nop                                             ; $6ce0: $00
  ld c, $0d                                       ; $6ce1: $0e $0d
  nop                                             ; $6ce3: $00
  ld c, $00                                       ; $6ce4: $0e $00
  ld h, $01                                       ; $6ce6: $26 $01
  sbc b                                           ; $6ce8: $98
  inc b                                           ; $6ce9: $04
  nop                                             ; $6cea: $00
  nop                                             ; $6ceb: $00
  nop                                             ; $6cec: $00
  ld [bc], a                                      ; $6ced: $02
  ld h, $00                                       ; $6cee: $26 $00
  sbc c                                           ; $6cf0: $99
  nop                                             ; $6cf1: $00
  ld c, $01                                       ; $6cf2: $0e $01
  inc c                                           ; $6cf4: $0c
  ld [bc], a                                      ; $6cf5: $02
  ld a, [bc]                                      ; $6cf6: $0a
  ld [bc], a                                      ; $6cf7: $02
  ld b, $08                                       ; $6cf8: $06 $08
  push af                                         ; $6cfa: $f5
  nop                                             ; $6cfb: $00
  ld c, $00                                       ; $6cfc: $0e $00
  inc c                                           ; $6cfe: $0c
  ld [bc], a                                      ; $6cff: $02
  ld a, [bc]                                      ; $6d00: $0a
  nop                                             ; $6d01: $00
  ld b, $08                                       ; $6d02: $06 $08
  push af                                         ; $6d04: $f5
  nop                                             ; $6d05: $00

  db $0e, $01, $0b, $00, $46, $4b, $00, $09, $0c, $0c, $01, $03, $00, $aa, $04, $00
  db $00, $04, $00, $00, $00, $07, $09, $00, $04, $00, $00, $00, $06, $09, $08, $08
  db $01, $03, $c1, $03, $ff, $80, $fb, $00, $00, $04, $00, $00, $00, $0b, $09, $00
  db $04, $00, $00, $00, $06, $09, $08, $08, $01, $fc, $00, $1f, $04, $00, $00, $00
  db $04, $09, $00, $04, $00, $00, $00, $03, $09, $0d, $08, $01, $fc, $00, $03, $ff
  db $d9, $ff, $61, $00, $04, $00, $00, $00, $05, $09, $00, $04, $00, $00, $00, $03
  db $09, $08, $08, $01, $04, $00, $03, $00, $db, $06, $00, $00, $04, $00, $00, $00
  db $05, $1f, $09, $00, $04, $00, $00, $00, $04, $08, $01, $05, $21, $09, $0c, $04
  db $00, $00, $00, $03, $09, $00, $04, $00, $00, $00, $04, $09, $0c, $01, $00, $84
  db $08, $04, $00, $00, $00, $03, $08, $01, $f6, $54, $05, $01, $ff, $bb, $09, $00
  db $04, $00, $00, $00, $03, $09, $0c, $08, $01, $07, $d2, $03, $ff, $d8, $fc, $00
  db $00, $13, $02, $04, $00, $00, $00, $1a, $0d, $00, $0e, $01, $0b, $00, $60, $64
  db $00, $0c, $00, $04, $00, $00, $00, $02, $08, $01, $fd, $00, $04, $00, $00, $00
  db $02, $08, $01, $f7, $00, $04, $00, $00, $00, $02, $08, $01, $05, $00, $04, $00
  db $00, $00, $02, $13, $02, $04, $00, $00, $00, $02, $08, $01, $01, $00, $04, $00
  db $00, $00, $02, $08, $01, $04, $00, $04, $00, $00, $00, $02, $08, $01, $fd, $00
  db $05, $05, $ff, $e1, $0d, $00

  ld c, $02                                       ; $6e0c: $0e $02
  ld hl, $040c                                    ; $6e0e: $21 $0c $04
  nop                                             ; $6e11: $00
  nop                                             ; $6e12: $00
  nop                                             ; $6e13: $00
  ld [hl-], a                                     ; $6e14: $32
  dec c                                           ; $6e15: $0d
  nop                                             ; $6e16: $00
  ld c, $02                                       ; $6e17: $0e $02
  ld hl, $040d                                    ; $6e19: $21 $0d $04
  nop                                             ; $6e1c: $00
  nop                                             ; $6e1d: $00
  nop                                             ; $6e1e: $00
  add hl, sp                                      ; $6e1f: $39
  add hl, bc                                      ; $6e20: $09
  ld [$0d21], sp                                  ; $6e21: $08 $21 $0d
  inc b                                           ; $6e24: $04
  nop                                             ; $6e25: $00
  nop                                             ; $6e26: $00
  nop                                             ; $6e27: $00
  add hl, sp                                      ; $6e28: $39
  dec c                                           ; $6e29: $0d
  nop                                             ; $6e2a: $00

  db $0e, $02, $21, $0e, $04, $00, $00, $00, $12, $09, $08, $21, $0e, $04, $00, $00
  db $00, $12

  dec c                                           ; $6e3d: $0d
  nop                                             ; $6e3e: $00

  db $0e, $02, $21, $0f, $04, $00, $00, $00, $21, $09, $08, $21, $0f, $04, $00, $00
  db $00, $21, $0d, $00, $0e, $02, $21, $10, $04, $00, $00, $00, $20, $0d, $00, $0e
  db $01, $0c, $00, $0b, $80, $4c, $4f, $00, $03, $02, $80, $05, $00, $00, $04, $00
  db $00, $00, $03, $08, $00, $05, $00, $03, $00, $40, $01, $00, $00, $04, $00, $00
  db $00, $05, $08, $00, $03, $00, $03, $ff, $40, $fa, $00, $00, $13, $01, $04, $00
  db $00, $00, $09, $0d, $00, $0e, $02, $09, $04, $21, $17, $04, $00, $00, $00, $10
  db $09, $08, $21, $16, $04, $00, $00, $00, $10, $09, $0c, $21, $17, $04, $00, $00
  db $00, $10, $09, $0f, $21, $16, $04, $00, $00, $00, $10, $0d, $00

  ld c, $02                                       ; $6ebc: $0e $02
  inc c                                           ; $6ebe: $0c
  ld bc, $ff03                                    ; $6ebf: $01 $03 $ff
  ld l, b                                         ; $6ec2: $68
  ld [$0000], a                                   ; $6ec3: $ea $00 $00
  inc b                                           ; $6ec6: $04
  nop                                             ; $6ec7: $00
  nop                                             ; $6ec8: $00
  nop                                             ; $6ec9: $00
  ld h, $08                                       ; $6eca: $26 $08
  ld bc, $00ea                                    ; $6ecc: $01 $ea $00
  inc bc                                          ; $6ecf: $03
  nop                                             ; $6ed0: $00
  jr z, jr_010_6ed7                               ; $6ed1: $28 $04

  nop                                             ; $6ed3: $00
  nop                                             ; $6ed4: $00
  inc b                                           ; $6ed5: $04
  nop                                             ; $6ed6: $00

jr_010_6ed7:
  nop                                             ; $6ed7: $00
  nop                                             ; $6ed8: $00
  ld a, [de]                                      ; $6ed9: $1a
  ld [$0001], sp                                  ; $6eda: $08 $01 $00
  pop bc                                          ; $6edd: $c1
  add hl, bc                                      ; $6ede: $09
  inc c                                           ; $6edf: $0c
  inc b                                           ; $6ee0: $04
  nop                                             ; $6ee1: $00
  nop                                             ; $6ee2: $00
  nop                                             ; $6ee3: $00
  ld h, $09                                       ; $6ee4: $26 $09
  ld [$0004], sp                                  ; $6ee6: $08 $04 $00
  nop                                             ; $6ee9: $00
  nop                                             ; $6eea: $00
  ld h, $09                                       ; $6eeb: $26 $09
  inc b                                           ; $6eed: $04
  inc b                                           ; $6eee: $04
  nop                                             ; $6eef: $00
  nop                                             ; $6ef0: $00
  nop                                             ; $6ef1: $00
  ld h, $0d                                       ; $6ef2: $26 $0d
  nop                                             ; $6ef4: $00
  ld c, $03                                       ; $6ef5: $0e $03
  ld h, $02                                       ; $6ef7: $26 $02
  and [hl]                                        ; $6ef9: $a6
  inc b                                           ; $6efa: $04
  nop                                             ; $6efb: $00
  nop                                             ; $6efc: $00
  nop                                             ; $6efd: $00
  ld [bc], a                                      ; $6efe: $02
  ld h, $03                                       ; $6eff: $26 $03
  and l                                           ; $6f01: $a5
  nop                                             ; $6f02: $00
  ld c, $03                                       ; $6f03: $0e $03
  inc c                                           ; $6f05: $0c
  rst $38                                         ; $6f06: $ff
  ld a, [bc]                                      ; $6f07: $0a
  ld [bc], a                                      ; $6f08: $02
  db $10                                          ; $6f09: $10
  ld d, a                                         ; $6f0a: $57
  inc b                                           ; $6f0b: $04
  nop                                             ; $6f0c: $00
  nop                                             ; $6f0d: $00
  nop                                             ; $6f0e: $00
  dec bc                                          ; $6f0f: $0b
  db $10                                          ; $6f10: $10
  ld d, l                                         ; $6f11: $55
  inc b                                           ; $6f12: $04
  nop                                             ; $6f13: $00
  nop                                             ; $6f14: $00
  nop                                             ; $6f15: $00
  dec e                                           ; $6f16: $1d
  db $10                                          ; $6f17: $10
  ld h, l                                         ; $6f18: $65
  inc b                                           ; $6f19: $04
  nop                                             ; $6f1a: $00
  nop                                             ; $6f1b: $00
  nop                                             ; $6f1c: $00
  dec bc                                          ; $6f1d: $0b
  inc de                                          ; $6f1e: $13
  ld b, $10                                       ; $6f1f: $06 $10
  ld d, l                                         ; $6f21: $55
  inc b                                           ; $6f22: $04
  nop                                             ; $6f23: $00
  nop                                             ; $6f24: $00
  nop                                             ; $6f25: $00
  dec e                                           ; $6f26: $1d
  db $10                                          ; $6f27: $10
  ld h, l                                         ; $6f28: $65
  inc b                                           ; $6f29: $04
  nop                                             ; $6f2a: $00
  nop                                             ; $6f2b: $00
  nop                                             ; $6f2c: $00
  dec bc                                          ; $6f2d: $0b
  dec b                                           ; $6f2e: $05
  inc bc                                          ; $6f2f: $03
  rst $38                                         ; $6f30: $ff
  xor $0d                                         ; $6f31: $ee $0d
  nop                                             ; $6f33: $00
  ld c, $02                                       ; $6f34: $0e $02
  inc c                                           ; $6f36: $0c
  rst $38                                         ; $6f37: $ff
  rlca                                            ; $6f38: $07
  inc a                                           ; $6f39: $3c
  nop                                             ; $6f3a: $00
  ld a, [bc]                                      ; $6f3b: $0a
  nop                                             ; $6f3c: $00
  inc h                                           ; $6f3d: $24
  inc c                                           ; $6f3e: $0c
  ld e, $01                                       ; $6f3f: $1e $01
  inc c                                           ; $6f41: $0c
  nop                                             ; $6f42: $00
  add hl, sp                                      ; $6f43: $39
  inc bc                                          ; $6f44: $03
  ld bc, $07c0                                    ; $6f45: $01 $c0 $07
  nop                                             ; $6f48: $00
  nop                                             ; $6f49: $00
  add hl, bc                                      ; $6f4a: $09
  ld [$0004], sp                                  ; $6f4b: $08 $04 $00
  nop                                             ; $6f4e: $00
  nop                                             ; $6f4f: $00
  add hl, sp                                      ; $6f50: $39
  add hl, bc                                      ; $6f51: $09
  inc bc                                          ; $6f52: $03
  inc b                                           ; $6f53: $04
  nop                                             ; $6f54: $00
  nop                                             ; $6f55: $00
  nop                                             ; $6f56: $00
  ld a, [de]                                      ; $6f57: $1a
  dec c                                           ; $6f58: $0d
  nop                                             ; $6f59: $00
  ld c, $02                                       ; $6f5a: $0e $02
  inc c                                           ; $6f5c: $0c
  rst $38                                         ; $6f5d: $ff
  inc h                                           ; $6f5e: $24
  ld [$081e], sp                                  ; $6f5f: $08 $1e $08
  rrca                                            ; $6f62: $0f
  nop                                             ; $6f63: $00
  ld b, a                                         ; $6f64: $47
  inc bc                                          ; $6f65: $03
  nop                                             ; $6f66: $00
  inc c                                           ; $6f67: $0c
  ld b, $00                                       ; $6f68: $06 $00
  nop                                             ; $6f6a: $00
  inc b                                           ; $6f6b: $04
  nop                                             ; $6f6c: $00
  nop                                             ; $6f6d: $00
  nop                                             ; $6f6e: $00
  ld h, $1e                                       ; $6f6f: $26 $1e
  nop                                             ; $6f71: $00
  ld [$9d00], sp                                  ; $6f72: $08 $00 $9d
  add hl, bc                                      ; $6f75: $09
  rrca                                            ; $6f76: $0f
  inc b                                           ; $6f77: $04
  nop                                             ; $6f78: $00
  nop                                             ; $6f79: $00
  nop                                             ; $6f7a: $00
  ld h, $09                                       ; $6f7b: $26 $09
  inc bc                                          ; $6f7d: $03
  inc b                                           ; $6f7e: $04
  nop                                             ; $6f7f: $00
  nop                                             ; $6f80: $00
  nop                                             ; $6f81: $00
  ld c, $0d                                       ; $6f82: $0e $0d
  nop                                             ; $6f84: $00

  db $0e, $02, $0b, $80, $38, $40, $00, $0c, $01, $03, $fe, $56, $f6, $00, $00, $04
  db $00, $00, $00, $07, $0d, $00, $0e, $02, $21, $11, $04, $00, $00, $00, $0a, $0d
  db $00, $0e, $00, $0c, $00, $0b, $00, $32, $36, $00, $03, $00, $80, $02, $00, $00
  db $04, $00, $00, $00, $05, $08, $00, $02, $00, $03, $00, $40, $01, $00, $00, $04
  db $00, $00, $00, $05, $08, $00, $04, $00, $03, $ff, $25, $fa, $00, $00, $04, $00
  db $00, $00, $08, $08, $00, $fd, $00, $13, $02, $03, $ff, $90, $f5, $00, $00, $04
  db $00, $00, $00, $1a, $0d, $00, $0e, $00, $0c, $00, $03, $00, $b6, $05, $00, $00
  db $04, $00, $00, $00, $08, $08, $00, $05, $00, $03, $00, $db, $06, $00, $00, $04
  db $00, $00, $00, $08, $08, $00, $0e, $00, $03, $ff, $df, $f8, $00, $00, $04, $00
  db $00, $00, $3e, $08, $00, $06, $00, $13, $03, $03, $ff, $f1, $fd, $00, $00, $04
  db $00, $00, $00, $32, $0d, $00, $0e, $01, $0b, $80, $4d, $50, $00, $06, $15, $cc

  nop                                             ; $7035: $00

  db $0e, $01, $0b, $80, $49, $4c, $00, $06, $15, $cc

  nop                                             ; $7040: $00

  db $0e, $01, $0b, $80, $44, $47, $00, $06, $15, $cc

  nop                                             ; $704b: $00

  db $0e, $01, $0b, $80, $3e, $41, $00, $06, $15, $cc

  nop                                             ; $7056: $00

  db $0e, $01, $0b, $80, $38, $3b, $00, $06, $15, $cc

  nop                                             ; $7061: $00

  db $0c, $00, $28, $04, $13, $09, $03, $00, $aa, $04, $00, $00, $04, $00, $00, $00
  db $07, $08, $00, $04, $00, $03, $fe, $9a, $f2, $00, $00, $28, $08, $13, $01, $04
  db $00, $00, $00, $0b, $0d, $00, $0e, $01, $26, $03, $b4, $26, $01, $b3

  nop                                             ; $7090: $00

  db $0e, $01, $09, $0c, $0c, $01, $13, $09, $03, $03, $00, $0c, $00, $00, $08, $01
  db $02, $00, $04, $00, $00, $00, $06, $05, $06, $ff, $f3, $09, $04, $04, $00, $00
  db $00, $03, $09, $0c, $04, $00, $00, $00, $02, $08, $01, $ff, $00, $05, $0e, $ff
  db $ea, $09, $02, $04, $00, $00, $00, $03, $09, $06, $04, $00, $00, $00, $02, $08
  db $01, $ff, $00, $05, $04, $ff, $ea, $0d, $00, $0e, $03, $0c, $ff, $10, $13, $04
  db $00, $00, $00, $0e, $10, $23, $04, $00, $00, $00, $0b, $10, $14, $04, $00, $00
  db $00, $09, $10, $25, $04, $00, $00, $00, $07, $10, $36, $04, $00, $00, $00, $06
  db $10, $45, $04, $00, $00, $00, $07, $10, $47, $04, $00, $00, $00, $26, $13, $05
  db $04, $00, $00, $00, $4a

  dec c                                           ; $7116: $0d
  nop                                             ; $7117: $00

  db $0e, $01, $0c, $02, $03, $04, $00, $0c, $00, $00, $09, $0c, $08, $01, $01, $c1
  db $04, $00, $00, $00, $02, $09, $04, $04, $00, $00, $00, $02, $09, $0c, $08, $01
  db $ff, $00, $04, $00, $00, $00, $02, $09, $04, $04, $00, $00, $00, $02, $05, $04
  db $ff, $d8, $09, $06, $08, $01, $01, $c1, $04, $00, $00, $00, $03, $08, $01, $ff
  db $00, $04, $00, $00, $00, $03, $09, $02, $04, $00, $00, $00, $05, $0d, $00, $0e
  db $03, $0c, $ff, $13, $0b, $10, $66, $04, $00, $00, $00, $07, $10, $67, $04, $00
  db $00, $00, $09, $10, $65, $04, $00, $00, $00, $06, $05, $04, $ff, $e7

  jr z, @+$11                                     ; $7186: $28 $0f

  inc de                                          ; $7188: $13
  ld [bc], a                                      ; $7189: $02
  inc b                                           ; $718a: $04
  nop                                             ; $718b: $00
  nop                                             ; $718c: $00
  nop                                             ; $718d: $00
  jr nz, @+$0f                                    ; $718e: $20 $0d

  nop                                             ; $7190: $00

  db $0e, $03, $0c, $ff, $13, $05, $10, $66, $04, $00, $00, $00, $04, $10, $65, $04
  db $00, $00, $00, $04, $10, $64, $04, $00, $00, $00, $05, $10, $57, $04, $00, $00
  db $00, $05, $10, $56, $04, $00, $00, $00, $06, $10, $55, $04, $00, $00, $00, $06
  db $10, $66, $04, $00, $00, $00, $06, $09, $06, $05, $01, $ff, $c7, $0d, $00, $0e
  db $03, $0c, $ff, $13, $0b, $10, $62, $04, $00, $00, $00, $09, $10, $63, $04, $00
  db $00, $00, $09, $10, $64, $04, $00, $00, $00, $0b, $10, $65, $04, $00, $00, $00
  db $0b, $10, $66, $04, $00, $00, $00, $0b

  db $10                                          ; $71f9: $10
  ld [hl], l                                      ; $71fa: $75
  inc b                                           ; $71fb: $04
  nop                                             ; $71fc: $00
  nop                                             ; $71fd: $00
  nop                                             ; $71fe: $00
  dec bc                                          ; $71ff: $0b
  db $10                                          ; $7200: $10
  halt                                            ; $7201: $76
  inc b                                           ; $7202: $04
  nop                                             ; $7203: $00
  nop                                             ; $7204: $00
  nop                                             ; $7205: $00
  ld a, [de]                                      ; $7206: $1a
  dec c                                           ; $7207: $0d
  nop                                             ; $7208: $00

  db $0e, $03, $0c, $ff, $13, $0b, $10, $65, $04, $00, $00, $00, $09, $10, $67, $04
  db $00, $00, $00, $05, $05, $08, $ff, $ee, $0d, $00, $0e, $02, $21, $12, $04, $00
  db $00, $00, $24, $05, $05, $ff, $f5, $0d, $00

  ld c, $01                                       ; $7232: $0e $01
  inc c                                           ; $7234: $0c
  ld [bc], a                                      ; $7235: $02
  ld a, [bc]                                      ; $7236: $0a
  ld [bc], a                                      ; $7237: $02
  ld b, $09                                       ; $7238: $06 $09
  rla                                             ; $723a: $17
  nop                                             ; $723b: $00
  ld c, $00                                       ; $723c: $0e $00
  inc c                                           ; $723e: $0c
  ld [bc], a                                      ; $723f: $02
  ld a, [bc]                                      ; $7240: $0a
  nop                                             ; $7241: $00
  ld b, $09                                       ; $7242: $06 $09
  rla                                             ; $7244: $17
  nop                                             ; $7245: $00
  ld c, $00                                       ; $7246: $0e $00
  ld h, $01                                       ; $7248: $26 $01
  cp e                                            ; $724a: $bb
  inc b                                           ; $724b: $04
  nop                                             ; $724c: $00
  nop                                             ; $724d: $00
  nop                                             ; $724e: $00
  ld [bc], a                                      ; $724f: $02
  ld h, $00                                       ; $7250: $26 $00
  cp h                                            ; $7252: $bc
  nop                                             ; $7253: $00

  db $0e, $01, $0c, $00, $01, $01, $00, $02, $04, $00, $00, $00, $05, $08, $01, $07
  db $00, $04, $00, $00, $00, $05, $08, $01, $14, $00, $04, $00, $00, $00, $05, $08
  db $01, $00, $00, $09, $03, $04, $00, $00, $00, $0e, $0d, $00

  ld c, $01                                       ; $7280: $0e $01
  inc c                                           ; $7282: $0c
  ld bc, $0a13                                    ; $7283: $01 $13 $0a
  inc bc                                          ; $7286: $03
  ld b, $00                                       ; $7287: $06 $00
  ld [de], a                                      ; $7289: $12
  nop                                             ; $728a: $00
  nop                                             ; $728b: $00
  ld [$0101], sp                                  ; $728c: $08 $01 $01
  nop                                             ; $728f: $00
  inc b                                           ; $7290: $04
  nop                                             ; $7291: $00
  nop                                             ; $7292: $00
  nop                                             ; $7293: $00
  dec b                                           ; $7294: $05
  dec b                                           ; $7295: $05
  inc c                                           ; $7296: $0c
  rst $38                                         ; $7297: $ff
  di                                              ; $7298: $f3
  jr z, @+$11                                     ; $7299: $28 $0f

  inc de                                          ; $729b: $13
  inc b                                           ; $729c: $04
  inc bc                                          ; $729d: $03
  dec b                                           ; $729e: $05
  nop                                             ; $729f: $00
  ld a, [bc]                                      ; $72a0: $0a
  nop                                             ; $72a1: $00
  nop                                             ; $72a2: $00
  inc b                                           ; $72a3: $04
  nop                                             ; $72a4: $00
  nop                                             ; $72a5: $00
  nop                                             ; $72a6: $00
  inc bc                                          ; $72a7: $03
  ld [$fb01], sp                                  ; $72a8: $08 $01 $fb
  nop                                             ; $72ab: $00
  inc b                                           ; $72ac: $04
  nop                                             ; $72ad: $00
  nop                                             ; $72ae: $00
  nop                                             ; $72af: $00
  inc bc                                          ; $72b0: $03
  ld [$0301], sp                                  ; $72b1: $08 $01 $03
  nop                                             ; $72b4: $00
  dec b                                           ; $72b5: $05
  rrca                                            ; $72b6: $0f
  rst $38                                         ; $72b7: $ff
  ld [$000d], a                                   ; $72b8: $ea $0d $00

  db $0e, $03, $0c, $ff, $10, $67, $04, $00, $00, $00, $09, $09, $0f, $10, $56, $04
  db $00, $00, $00, $07, $10, $45, $04, $00, $00, $00, $06, $10, $34, $04, $00, $00
  db $00, $03, $09, $03, $05, $01, $ff, $e5, $0d, $00, $0e, $11, $0c, $02, $09, $0c
  db $0b, $80, $57, $5c, $00, $03, $ff, $e1, $fa, $00, $00, $08, $00, $00, $00, $04
  db $00, $00, $00, $04, $08, $00, $02, $00, $04, $00, $00, $00, $04, $08, $00, $09
  db $00, $04, $00, $00, $00, $04, $09, $06, $08, $00, $00, $00, $04, $00, $00, $00
  db $04, $08, $00, $02, $00, $04, $00, $00, $00, $04, $08, $00, $09, $00, $04, $00
  db $00, $00, $04, $09, $02, $08, $00, $00, $00, $04, $00, $00, $00, $04, $08, $00
  db $02, $00, $04, $00, $00, $00, $04, $08, $00, $09, $00, $04, $00, $00, $00, $04
  db $0d, $00

  ld c, $01                                       ; $734d: $0e $01
  inc c                                           ; $734f: $0c
  ld [bc], a                                      ; $7350: $02
  inc bc                                          ; $7351: $03
  nop                                             ; $7352: $00
  inc d                                           ; $7353: $14
  inc b                                           ; $7354: $04
  nop                                             ; $7355: $00
  nop                                             ; $7356: $00
  ld [$0000], sp                                  ; $7357: $08 $00 $00
  nop                                             ; $735a: $00
  inc b                                           ; $735b: $04
  nop                                             ; $735c: $00
  nop                                             ; $735d: $00
  nop                                             ; $735e: $00
  inc b                                           ; $735f: $04
  ld [$0200], sp                                  ; $7360: $08 $00 $02
  nop                                             ; $7363: $00
  inc b                                           ; $7364: $04
  nop                                             ; $7365: $00
  nop                                             ; $7366: $00
  nop                                             ; $7367: $00
  inc b                                           ; $7368: $04
  ld [$0900], sp                                  ; $7369: $08 $00 $09
  nop                                             ; $736c: $00
  inc b                                           ; $736d: $04
  nop                                             ; $736e: $00
  nop                                             ; $736f: $00
  nop                                             ; $7370: $00
  inc b                                           ; $7371: $04
  add hl, bc                                      ; $7372: $09
  ld b, $08                                       ; $7373: $06 $08
  nop                                             ; $7375: $00
  nop                                             ; $7376: $00
  nop                                             ; $7377: $00
  inc b                                           ; $7378: $04
  nop                                             ; $7379: $00
  nop                                             ; $737a: $00
  nop                                             ; $737b: $00
  inc b                                           ; $737c: $04
  ld [$0200], sp                                  ; $737d: $08 $00 $02
  nop                                             ; $7380: $00
  inc b                                           ; $7381: $04
  nop                                             ; $7382: $00
  nop                                             ; $7383: $00
  nop                                             ; $7384: $00
  inc b                                           ; $7385: $04
  ld [$0900], sp                                  ; $7386: $08 $00 $09
  nop                                             ; $7389: $00
  inc b                                           ; $738a: $04
  nop                                             ; $738b: $00
  nop                                             ; $738c: $00
  nop                                             ; $738d: $00
  inc b                                           ; $738e: $04
  add hl, bc                                      ; $738f: $09
  inc bc                                          ; $7390: $03
  dec b                                           ; $7391: $05
  ld bc, $dfff                                    ; $7392: $01 $ff $df
  dec c                                           ; $7395: $0d
  nop                                             ; $7396: $00
  ld c, $01                                       ; $7397: $0e $01
  inc c                                           ; $7399: $0c
  ld [bc], a                                      ; $739a: $02
  inc de                                          ; $739b: $13
  inc bc                                          ; $739c: $03
  inc bc                                          ; $739d: $03
  ld [$1000], sp                                  ; $739e: $08 $00 $10
  nop                                             ; $73a1: $00
  nop                                             ; $73a2: $00
  ld [$fc01], sp                                  ; $73a3: $08 $01 $fc
  nop                                             ; $73a6: $00
  inc b                                           ; $73a7: $04
  nop                                             ; $73a8: $00
  nop                                             ; $73a9: $00
  nop                                             ; $73aa: $00
  ld [bc], a                                      ; $73ab: $02
  ld [$0401], sp                                  ; $73ac: $08 $01 $04
  add b                                           ; $73af: $80
  inc b                                           ; $73b0: $04
  nop                                             ; $73b1: $00
  nop                                             ; $73b2: $00
  nop                                             ; $73b3: $00
  inc bc                                          ; $73b4: $03
  dec b                                           ; $73b5: $05
  rlca                                            ; $73b6: $07
  rst $38                                         ; $73b7: $ff
  ld [$000d], a                                   ; $73b8: $ea $0d $00
  ld c, $01                                       ; $73bb: $0e $01
  inc bc                                          ; $73bd: $03
  db $fd                                          ; $73be: $fd
  nop                                             ; $73bf: $00
  db $f4                                          ; $73c0: $f4
  nop                                             ; $73c1: $00
  nop                                             ; $73c2: $00
  inc c                                           ; $73c3: $0c
  nop                                             ; $73c4: $00
  inc b                                           ; $73c5: $04
  nop                                             ; $73c6: $00
  nop                                             ; $73c7: $00
  nop                                             ; $73c8: $00
  dec b                                           ; $73c9: $05
  inc c                                           ; $73ca: $0c
  ld bc, $0004                                    ; $73cb: $01 $04 $00
  nop                                             ; $73ce: $00
  nop                                             ; $73cf: $00
  dec b                                           ; $73d0: $05
  inc c                                           ; $73d1: $0c
  ld [bc], a                                      ; $73d2: $02
  inc b                                           ; $73d3: $04
  nop                                             ; $73d4: $00
  nop                                             ; $73d5: $00
  nop                                             ; $73d6: $00
  dec b                                           ; $73d7: $05
  ld [$ff01], sp                                  ; $73d8: $08 $01 $ff
  nop                                             ; $73db: $00
  dec b                                           ; $73dc: $05
  inc bc                                          ; $73dd: $03
  rst $38                                         ; $73de: $ff
  push hl                                         ; $73df: $e5
  dec c                                           ; $73e0: $0d
  nop                                             ; $73e1: $00

  db $0e, $03, $0c, $ff, $09, $08, $10, $85, $04, $00, $00, $00, $02, $10, $75, $04
  db $00, $00, $00, $02, $10, $65, $04, $00, $00, $00, $02, $09, $0a, $10, $56, $04
  db $00, $00, $00, $02, $10, $54, $04, $00, $00, $00, $03, $10, $52, $04, $00, $00
  db $00, $05, $09, $0c, $10, $53, $04, $00, $00, $00, $04, $10, $54, $04, $00, $00
  db $00, $04, $10, $44, $04, $00, $00, $00, $04, $09, $0c, $10, $43, $04, $00, $00
  db $00, $05, $10, $53, $04, $00, $00, $00, $06, $10, $44, $04, $00, $00, $00, $05
  db $09, $0f, $10, $53, $04, $00, $00, $00, $07, $10, $64, $04, $00, $00, $00, $07
  db $13, $02, $10, $65, $04, $00, $00, $00, $1a, $0d, $00, $0e, $01, $0c, $02, $13
  db $06, $03, $fa, $80, $f5, $00, $00, $08, $01, $fb, $00, $04, $00, $00, $00, $02
  db $08, $01, $04, $00, $04, $00, $00, $00, $03, $05, $0c, $ff, $ea, $0d, $00, $0e
  db $03, $0c, $ff, $13, $0a, $10, $5d, $04, $00, $00, $00, $05, $10, $5f, $04, $00
  db $00, $00, $03, $05, $02, $ff, $ee, $28, $0f, $13, $04, $10, $55, $04, $00, $00
  db $00, $05, $10, $56, $04, $00, $00, $00, $06, $10, $65, $04, $00, $00, $00, $07
  db $10, $74, $04, $00, $00, $00, $15

  dec c                                           ; $74b9: $0d
  nop                                             ; $74ba: $00

  db $0e, $03, $0c, $ff, $09, $0c, $10, $73, $04, $00, $00, $00, $02, $10, $64, $04
  db $00, $00, $00, $03, $10, $55, $04, $00, $00, $00, $04, $10, $44, $04, $00, $00
  db $00, $05, $10, $34, $04, $00, $00, $00, $06, $09, $06, $0d, $00, $0e, $03, $0c
  db $ff, $09, $0c, $13, $05, $10, $35, $04, $00, $00, $00, $04, $10, $46, $04, $00
  db $00, $00, $05, $10, $57, $04, $00, $00, $00, $06, $05, $0f, $ff, $e7

  dec c                                           ; $7509: $0d
  nop                                             ; $750a: $00

  db $0e, $03, $0c, $ff, $13, $0a, $10, $5d, $04, $00, $00, $00, $03, $10, $5f, $04
  db $00, $00, $00, $02, $05, $03, $ff, $ee, $28, $0f, $10, $55, $13, $04, $04, $00
  db $00, $00, $3e, $0d, $00

  ld c, $03                                       ; $7530: $0e $03
  inc c                                           ; $7532: $0c
  rst $38                                         ; $7533: $ff
  add hl, bc                                      ; $7534: $09
  inc b                                           ; $7535: $04
  db $10                                          ; $7536: $10
  ld [de], a                                      ; $7537: $12
  inc b                                           ; $7538: $04
  nop                                             ; $7539: $00
  nop                                             ; $753a: $00
  nop                                             ; $753b: $00
  dec b                                           ; $753c: $05
  db $10                                          ; $753d: $10
  inc sp                                          ; $753e: $33
  inc b                                           ; $753f: $04
  nop                                             ; $7540: $00
  nop                                             ; $7541: $00
  nop                                             ; $7542: $00
  dec b                                           ; $7543: $05
  db $10                                          ; $7544: $10
  inc h                                           ; $7545: $24
  inc b                                           ; $7546: $04
  nop                                             ; $7547: $00
  nop                                             ; $7548: $00
  nop                                             ; $7549: $00
  dec b                                           ; $754a: $05
  add hl, bc                                      ; $754b: $09
  ld b, $10                                       ; $754c: $06 $10
  ld [de], a                                      ; $754e: $12
  inc b                                           ; $754f: $04
  nop                                             ; $7550: $00
  nop                                             ; $7551: $00
  nop                                             ; $7552: $00
  ld b, $10                                       ; $7553: $06 $10
  inc hl                                          ; $7555: $23
  inc b                                           ; $7556: $04
  nop                                             ; $7557: $00
  nop                                             ; $7558: $00
  nop                                             ; $7559: $00
  rlca                                            ; $755a: $07
  db $10                                          ; $755b: $10
  inc d                                           ; $755c: $14
  inc b                                           ; $755d: $04
  nop                                             ; $755e: $00
  nop                                             ; $755f: $00
  nop                                             ; $7560: $00
  rlca                                            ; $7561: $07
  add hl, bc                                      ; $7562: $09
  ld [$1310], sp                                  ; $7563: $08 $10 $13
  inc b                                           ; $7566: $04
  nop                                             ; $7567: $00
  nop                                             ; $7568: $00
  nop                                             ; $7569: $00
  rlca                                            ; $756a: $07
  db $10                                          ; $756b: $10
  inc d                                           ; $756c: $14
  inc b                                           ; $756d: $04
  nop                                             ; $756e: $00
  nop                                             ; $756f: $00
  nop                                             ; $7570: $00
  ld b, $10                                       ; $7571: $06 $10
  dec h                                           ; $7573: $25
  inc b                                           ; $7574: $04
  nop                                             ; $7575: $00
  nop                                             ; $7576: $00
  nop                                             ; $7577: $00
  dec b                                           ; $7578: $05
  add hl, bc                                      ; $7579: $09
  ld a, [bc]                                      ; $757a: $0a
  db $10                                          ; $757b: $10
  inc h                                           ; $757c: $24
  inc b                                           ; $757d: $04
  nop                                             ; $757e: $00
  nop                                             ; $757f: $00
  nop                                             ; $7580: $00
  dec b                                           ; $7581: $05
  db $10                                          ; $7582: $10
  dec [hl]                                        ; $7583: $35
  inc b                                           ; $7584: $04
  nop                                             ; $7585: $00
  nop                                             ; $7586: $00
  nop                                             ; $7587: $00
  ld b, $10                                       ; $7588: $06 $10
  ld h, $04                                       ; $758a: $26 $04
  nop                                             ; $758c: $00
  nop                                             ; $758d: $00
  nop                                             ; $758e: $00
  rlca                                            ; $758f: $07
  add hl, bc                                      ; $7590: $09
  inc c                                           ; $7591: $0c
  db $10                                          ; $7592: $10
  inc hl                                          ; $7593: $23
  inc b                                           ; $7594: $04
  nop                                             ; $7595: $00
  nop                                             ; $7596: $00
  nop                                             ; $7597: $00
  rlca                                            ; $7598: $07
  db $10                                          ; $7599: $10
  inc [hl]                                        ; $759a: $34
  inc b                                           ; $759b: $04
  nop                                             ; $759c: $00
  nop                                             ; $759d: $00
  nop                                             ; $759e: $00
  ld b, $10                                       ; $759f: $06 $10
  ld b, l                                         ; $75a1: $45
  inc b                                           ; $75a2: $04
  nop                                             ; $75a3: $00
  nop                                             ; $75a4: $00
  nop                                             ; $75a5: $00
  rlca                                            ; $75a6: $07
  dec b                                           ; $75a7: $05
  inc bc                                          ; $75a8: $03
  rst $38                                         ; $75a9: $ff
  ret nc                                          ; $75aa: $d0

  dec c                                           ; $75ab: $0d
  nop                                             ; $75ac: $00

  db $0e, $03, $0c, $ff, $13, $09, $10, $66, $04, $00, $00, $00, $03, $10, $55, $04
  db $00, $00, $00, $03, $10, $43, $04, $00, $00, $00, $03, $28, $0f, $13, $07, $10
  db $54, $04, $00, $00, $00, $06, $10, $45, $04, $00, $00, $00, $05, $10, $54, $04
  db $00, $00, $00, $05, $10, $64, $04, $00, $00, $00, $05, $10, $55, $04, $00, $00
  db $00, $05, $10, $47, $04, $00, $00, $00, $04, $05, $04, $ff, $d9, $0d, $00, $0e
  db $03, $0c, $ff, $13, $09, $10, $16, $04, $00, $00, $00, $05, $10, $35, $04, $00
  db $00, $00, $05, $10, $43, $04, $00, $00, $00, $05, $28, $0f, $13, $04, $10, $52
  db $04, $00, $00, $00, $06, $10, $42, $04, $00, $00, $00, $07, $10, $52, $04, $00
  db $00, $00, $07, $10, $53, $04, $00, $00, $00, $07, $10, $54, $04, $00, $00, $00
  db $09, $10, $55, $04, $00, $00, $00, $10

  dec c                                           ; $7645: $0d
  nop                                             ; $7646: $00

  db $0e, $03, $0c, $ff, $13, $04, $10, $24, $04, $00, $00, $00, $03, $10, $35, $04
  db $00, $00, $00, $04, $05, $0f, $ff, $ee

  dec c                                           ; $765f: $0d
  nop                                             ; $7660: $00

  db $0e, $03, $0c, $ff, $13, $09, $10, $41, $04, $00, $00, $00, $03, $10, $40, $04
  db $00, $00, $00, $04, $10, $30, $04, $00, $00, $00, $05, $28, $0f, $13, $04, $10
  db $20, $04, $00, $00, $00, $05, $10, $31, $04, $00, $00, $00, $02, $05, $08, $ff
  db $ee, $0d, $00

  ld c, $03                                       ; $7694: $0e $03
  inc c                                           ; $7696: $0c
  rst $38                                         ; $7697: $ff
  db $10                                          ; $7698: $10
  inc hl                                          ; $7699: $23
  inc b                                           ; $769a: $04
  nop                                             ; $769b: $00
  nop                                             ; $769c: $00
  nop                                             ; $769d: $00
  dec b                                           ; $769e: $05
  db $10                                          ; $769f: $10
  inc [hl]                                        ; $76a0: $34
  inc b                                           ; $76a1: $04
  nop                                             ; $76a2: $00
  nop                                             ; $76a3: $00
  nop                                             ; $76a4: $00
  dec b                                           ; $76a5: $05
  db $10                                          ; $76a6: $10
  ld b, l                                         ; $76a7: $45
  inc b                                           ; $76a8: $04
  nop                                             ; $76a9: $00
  nop                                             ; $76aa: $00
  nop                                             ; $76ab: $00
  inc b                                           ; $76ac: $04
  db $10                                          ; $76ad: $10
  ld d, [hl]                                      ; $76ae: $56
  inc b                                           ; $76af: $04
  nop                                             ; $76b0: $00
  nop                                             ; $76b1: $00
  nop                                             ; $76b2: $00
  inc bc                                          ; $76b3: $03
  db $10                                          ; $76b4: $10
  ld h, a                                         ; $76b5: $67
  inc b                                           ; $76b6: $04
  nop                                             ; $76b7: $00
  nop                                             ; $76b8: $00
  nop                                             ; $76b9: $00
  ld [bc], a                                      ; $76ba: $02
  dec c                                           ; $76bb: $0d
  nop                                             ; $76bc: $00

  db $0e, $02, $0b, $00, $28, $2e, $00, $0c, $01, $04, $00, $00, $00, $08, $03, $01
  db $27, $0f, $00, $00, $04, $00, $00, $00, $0e, $0d, $00, $0e, $01, $0c, $02, $13
  db $06, $03, $04, $40, $11, $00, $00, $04, $00, $00, $00, $05, $08, $01, $05, $00
  db $04, $00, $00, $00, $05, $08, $01, $f9, $00, $04, $00, $00, $00, $05, $08, $01
  db $03, $00, $05, $04, $ff, $e1, $0d, $00, $0e, $03, $09, $0c, $0c, $ff, $10, $66
  db $04, $00, $00, $00, $03, $10, $65, $04, $00, $00, $00, $03, $10, $55, $04, $00
  db $00, $00, $03, $10, $54, $04, $00, $00, $00, $03, $10, $43, $04, $00, $00, $00
  db $03, $09, $00, $04, $00, $00, $00, $05, $09, $06, $10, $66, $04, $00, $00, $00
  db $03, $10, $65, $04, $00, $00, $00, $03, $10, $55, $04, $00, $00, $00, $03, $10
  db $54, $04, $00, $00, $00, $03, $10, $43, $04, $00, $00, $00, $03, $09, $00, $04
  db $00, $00, $00, $05, $09, $03, $05, $01, $ff, $d0, $0d, $00, $0e, $03, $0c, $ff
  db $13, $0a, $10, $11, $04, $00, $00, $00, $1a, $28, $0f, $13, $04, $04, $00, $00
  db $00, $03, $10, $21, $04, $00, $00, $00, $03, $10, $31, $05, $0a, $ff, $ee, $0d
  db $00

  ld c, $02                                       ; $778e: $0e $02
  ld hl, $0413                                    ; $7790: $21 $13 $04
  nop                                             ; $7793: $00
  nop                                             ; $7794: $00
  nop                                             ; $7795: $00
  ld a, [de]                                      ; $7796: $1a
  dec c                                           ; $7797: $0d
  nop                                             ; $7798: $00

  db $0e, $02, $21, $14, $04, $00, $00, $00, $1d, $0d, $00, $0e, $02, $21, $15, $04
  db $00, $00, $00, $2c, $0d, $00, $0e, $01, $0c, $01, $03, $00, $19, $06, $00, $00
  db $13, $05, $04, $00, $00, $00, $02, $08, $00, $0c, $00, $04, $00, $00, $00, $02
  db $08, $00, $18, $00, $04, $00, $00, $00, $02, $05, $0f, $ff, $e5

  dec c                                           ; $77d6: $0d
  nop                                             ; $77d7: $00

  db $0e, $01, $0b, $80, $4c, $4f, $00, $0c, $01, $03, $05, $00, $05, $00, $00, $04
  db $00, $00, $00, $02, $08, $01, $02, $00, $04, $00, $00, $00, $02, $08, $01, $fe
  db $00, $04, $00, $00, $00, $02, $08, $01, $03, $00, $04, $00, $00, $00, $02, $08
  db $00, $fc, $00, $04, $00, $00, $00, $02, $0d, $00, $0e, $01, $26, $00, $dc, $04
  db $00, $00, $00, $05, $26, $01, $db

  nop                                             ; $781f: $00

  db $0e, $01, $0c, $01, $0a, $02, $06, $09, $39

  nop                                             ; $7829: $00

  db $0e, $00, $0c, $01, $0a, $00, $06, $09, $39

  nop                                             ; $7833: $00

  db $0e, $00, $0b, $80, $68, $6c, $00, $0c, $00, $13, $03, $08, $01, $fb, $00, $04
  db $00, $00, $00, $02, $08, $01, $02, $80, $04, $00, $00, $00, $02, $05, $0a, $ff
  db $ea, $0d, $00, $0e, $00, $0b, $80, $4e, $53, $00, $0c, $00, $13, $0e, $08, $01
  db $fd, $00, $04, $00, $00, $00, $02, $08, $01, $03, $80, $04, $00, $00, $00, $02
  db $05, $1e, $ff, $ea

  ld [$fd01], sp                                  ; $7878: $08 $01 $fd
  nop                                             ; $787b: $00
  inc b                                           ; $787c: $04
  nop                                             ; $787d: $00
  nop                                             ; $787e: $00
  nop                                             ; $787f: $00
  ld [bc], a                                      ; $7880: $02
  ld [$0301], sp                                  ; $7881: $08 $01 $03
  nop                                             ; $7884: $00
  inc b                                           ; $7885: $04
  nop                                             ; $7886: $00
  nop                                             ; $7887: $00
  nop                                             ; $7888: $00
  ld [bc], a                                      ; $7889: $02
  ld b, $1d                                       ; $788a: $06 $1d
  ldh [c], a                                      ; $788c: $e2
  dec c                                           ; $788d: $0d
  nop                                             ; $788e: $00
  ld c, $03                                       ; $788f: $0e $03
  db $10                                          ; $7891: $10
  ld h, e                                         ; $7892: $63
  inc c                                           ; $7893: $0c
  rst $38                                         ; $7894: $ff
  inc b                                           ; $7895: $04
  nop                                             ; $7896: $00
  nop                                             ; $7897: $00
  nop                                             ; $7898: $00
  ld [bc], a                                      ; $7899: $02
  db $10                                          ; $789a: $10
  ld b, [hl]                                      ; $789b: $46
  inc b                                           ; $789c: $04
  nop                                             ; $789d: $00
  nop                                             ; $789e: $00
  nop                                             ; $789f: $00
  ld [bc], a                                      ; $78a0: $02
  db $10                                          ; $78a1: $10
  ld h, h                                         ; $78a2: $64
  inc de                                          ; $78a3: $13
  ld [bc], a                                      ; $78a4: $02
  inc b                                           ; $78a5: $04
  nop                                             ; $78a6: $00
  nop                                             ; $78a7: $00
  nop                                             ; $78a8: $00
  rlca                                            ; $78a9: $07
  db $10                                          ; $78aa: $10
  ld d, [hl]                                      ; $78ab: $56
  inc b                                           ; $78ac: $04
  nop                                             ; $78ad: $00
  nop                                             ; $78ae: $00
  nop                                             ; $78af: $00
  db $10                                          ; $78b0: $10
  dec c                                           ; $78b1: $0d
  nop                                             ; $78b2: $00
  ld c, $01                                       ; $78b3: $0e $01
  inc c                                           ; $78b5: $0c
  ld bc, $0004                                    ; $78b6: $01 $04 $00
  nop                                             ; $78b9: $00
  nop                                             ; $78ba: $00
  inc bc                                          ; $78bb: $03
  ld [$0400], sp                                  ; $78bc: $08 $00 $04
  nop                                             ; $78bf: $00
  inc b                                           ; $78c0: $04
  nop                                             ; $78c1: $00
  nop                                             ; $78c2: $00
  nop                                             ; $78c3: $00
  inc bc                                          ; $78c4: $03
  ld [$ff00], sp                                  ; $78c5: $08 $00 $ff
  nop                                             ; $78c8: $00
  inc b                                           ; $78c9: $04
  nop                                             ; $78ca: $00
  nop                                             ; $78cb: $00
  nop                                             ; $78cc: $00
  ld [bc], a                                      ; $78cd: $02
  ld [$0c00], sp                                  ; $78ce: $08 $00 $0c
  nop                                             ; $78d1: $00
  inc b                                           ; $78d2: $04
  nop                                             ; $78d3: $00
  nop                                             ; $78d4: $00
  nop                                             ; $78d5: $00
  ld [bc], a                                      ; $78d6: $02
  ld [$0700], sp                                  ; $78d7: $08 $00 $07
  nop                                             ; $78da: $00
  inc b                                           ; $78db: $04
  nop                                             ; $78dc: $00
  nop                                             ; $78dd: $00
  nop                                             ; $78de: $00
  ld [bc], a                                      ; $78df: $02
  ld a, [bc]                                      ; $78e0: $0a
  nop                                             ; $78e1: $00
  inc de                                          ; $78e2: $13
  inc bc                                          ; $78e3: $03
  ld [$0201], sp                                  ; $78e4: $08 $01 $02
  nop                                             ; $78e7: $00
  inc b                                           ; $78e8: $04
  nop                                             ; $78e9: $00
  nop                                             ; $78ea: $00
  nop                                             ; $78eb: $00
  inc bc                                          ; $78ec: $03
  ld [$0400], sp                                  ; $78ed: $08 $00 $04
  nop                                             ; $78f0: $00
  inc b                                           ; $78f1: $04
  nop                                             ; $78f2: $00
  nop                                             ; $78f3: $00
  nop                                             ; $78f4: $00
  inc bc                                          ; $78f5: $03
  ld [$ff00], sp                                  ; $78f6: $08 $00 $ff
  nop                                             ; $78f9: $00
  inc b                                           ; $78fa: $04
  nop                                             ; $78fb: $00
  nop                                             ; $78fc: $00
  nop                                             ; $78fd: $00
  ld [bc], a                                      ; $78fe: $02
  ld [$0c00], sp                                  ; $78ff: $08 $00 $0c
  nop                                             ; $7902: $00
  inc b                                           ; $7903: $04
  nop                                             ; $7904: $00
  nop                                             ; $7905: $00
  nop                                             ; $7906: $00
  ld [bc], a                                      ; $7907: $02
  ld [$0700], sp                                  ; $7908: $08 $00 $07
  nop                                             ; $790b: $00
  dec b                                           ; $790c: $05
  inc bc                                          ; $790d: $03
  rst $38                                         ; $790e: $ff
  db $dd                                          ; $790f: $dd
  dec c                                           ; $7910: $0d
  nop                                             ; $7911: $00

  db $0e, $01, $0c, $01, $04, $00, $00, $00, $03, $08, $00, $04, $00, $04, $00, $00
  db $00, $02, $13, $05, $08, $00, $02, $00, $04, $00, $00, $00, $03, $08, $00, $0a
  db $00, $04, $00, $00, $00, $02, $08, $00, $05, $00, $04, $00, $00, $00, $03, $08
  db $00, $11, $00, $04, $00, $00, $00, $03, $05, $07, $ff, $d8, $0d, $00

  ld c, $00                                       ; $7950: $0e $00
  dec bc                                          ; $7952: $0b
  add b                                           ; $7953: $80
  ld h, a                                         ; $7954: $67
  ld l, d                                         ; $7955: $6a
  nop                                             ; $7956: $00
  inc c                                           ; $7957: $0c
  nop                                             ; $7958: $00
  inc bc                                          ; $7959: $03
  rst $38                                         ; $795a: $ff
  db $ec                                          ; $795b: $ec
  ei                                              ; $795c: $fb
  nop                                             ; $795d: $00
  nop                                             ; $795e: $00
  inc de                                          ; $795f: $13
  inc b                                           ; $7960: $04
  inc b                                           ; $7961: $04
  nop                                             ; $7962: $00
  nop                                             ; $7963: $00
  nop                                             ; $7964: $00
  inc bc                                          ; $7965: $03
  ld [$fe00], sp                                  ; $7966: $08 $00 $fe
  nop                                             ; $7969: $00
  inc b                                           ; $796a: $04
  nop                                             ; $796b: $00
  nop                                             ; $796c: $00
  nop                                             ; $796d: $00
  inc bc                                          ; $796e: $03
  ld [$f900], sp                                  ; $796f: $08 $00 $f9
  nop                                             ; $7972: $00
  inc b                                           ; $7973: $04
  nop                                             ; $7974: $00
  nop                                             ; $7975: $00
  nop                                             ; $7976: $00
  inc b                                           ; $7977: $04
  ld [$0000], sp                                  ; $7978: $08 $00 $00
  nop                                             ; $797b: $00
  dec b                                           ; $797c: $05
  inc bc                                          ; $797d: $03
  rst $38                                         ; $797e: $ff
  pop hl                                          ; $797f: $e1
  dec c                                           ; $7980: $0d
  nop                                             ; $7981: $00

  db $0e, $01, $0b, $80, $54, $56, $00, $0c, $01, $01, $01, $00, $01, $04, $00, $00
  db $00, $04, $01, $00, $40, $04, $09, $05, $04, $00, $00, $00, $04, $09, $0f, $04
  db $00, $00, $00, $02, $13, $03, $03, $00, $40, $01, $00, $00, $04, $00, $00, $00
  db $05, $08, $01, $01, $00, $03, $ff, $56, $fe, $00, $00, $04, $00, $00, $00, $09
  db $08, $01, $ff, $00, $05, $02, $ff, $de, $0d, $00, $0e, $03, $10, $66, $13, $0a
  db $0c, $ff, $04, $00, $00, $00, $05, $10, $55, $04, $00, $00, $00, $04, $10, $45
  db $04, $00, $00, $00, $03, $10, $35, $04, $00, $00, $00, $04, $10, $44, $04, $00
  db $00, $00, $03, $10, $54, $04, $00, $00, $00, $04, $10, $63, $28, $0c, $13, $01
  db $04, $00, $00, $00, $11, $0d, $00

  ld c, $03                                       ; $7a09: $0e $03
  db $10                                          ; $7a0b: $10
  ld [hl-], a                                     ; $7a0c: $32
  inc c                                           ; $7a0d: $0c
  rst $38                                         ; $7a0e: $ff
  inc b                                           ; $7a0f: $04
  nop                                             ; $7a10: $00
  nop                                             ; $7a11: $00
  nop                                             ; $7a12: $00
  inc bc                                          ; $7a13: $03
  db $10                                          ; $7a14: $10
  ld b, e                                         ; $7a15: $43
  inc b                                           ; $7a16: $04
  nop                                             ; $7a17: $00
  nop                                             ; $7a18: $00
  nop                                             ; $7a19: $00
  inc bc                                          ; $7a1a: $03
  inc de                                          ; $7a1b: $13
  ld [bc], a                                      ; $7a1c: $02
  db $10                                          ; $7a1d: $10
  ld d, h                                         ; $7a1e: $54
  inc b                                           ; $7a1f: $04
  nop                                             ; $7a20: $00
  nop                                             ; $7a21: $00
  nop                                             ; $7a22: $00
  dec b                                           ; $7a23: $05
  db $10                                          ; $7a24: $10
  ld [hl], l                                      ; $7a25: $75
  inc b                                           ; $7a26: $04
  nop                                             ; $7a27: $00
  nop                                             ; $7a28: $00
  nop                                             ; $7a29: $00
  ld [bc], a                                      ; $7a2a: $02
  dec b                                           ; $7a2b: $05
  ld [bc], a                                      ; $7a2c: $02
  rst $38                                         ; $7a2d: $ff
  xor $0d                                         ; $7a2e: $ee $0d
  nop                                             ; $7a30: $00

  db $0e, $03, $0c, $ff, $10, $57, $04, $00, $00, $00, $05, $10, $45, $04, $00, $00
  db $00, $03, $10, $54, $04, $00, $00, $00, $03, $09, $04, $04, $00, $00, $00, $07
  db $0d, $00

  ld c, $03                                       ; $7a53: $0e $03
  inc c                                           ; $7a55: $0c
  rst $38                                         ; $7a56: $ff
  db $10                                          ; $7a57: $10
  ld d, l                                         ; $7a58: $55
  inc b                                           ; $7a59: $04
  nop                                             ; $7a5a: $00
  nop                                             ; $7a5b: $00
  nop                                             ; $7a5c: $00
  inc bc                                          ; $7a5d: $03
  db $10                                          ; $7a5e: $10
  ld [hl], $04                                    ; $7a5f: $36 $04
  nop                                             ; $7a61: $00
  nop                                             ; $7a62: $00
  nop                                             ; $7a63: $00
  inc bc                                          ; $7a64: $03
  dec c                                           ; $7a65: $0d
  nop                                             ; $7a66: $00
  ld c, $03                                       ; $7a67: $0e $03
  inc c                                           ; $7a69: $0c
  rst $38                                         ; $7a6a: $ff
  db $10                                          ; $7a6b: $10
  ld d, l                                         ; $7a6c: $55
  inc b                                           ; $7a6d: $04
  nop                                             ; $7a6e: $00
  nop                                             ; $7a6f: $00
  nop                                             ; $7a70: $00
  inc bc                                          ; $7a71: $03
  db $10                                          ; $7a72: $10
  ld b, l                                         ; $7a73: $45
  inc b                                           ; $7a74: $04
  nop                                             ; $7a75: $00
  nop                                             ; $7a76: $00
  nop                                             ; $7a77: $00
  inc bc                                          ; $7a78: $03
  add hl, bc                                      ; $7a79: $09
  ld a, [bc]                                      ; $7a7a: $0a
  db $10                                          ; $7a7b: $10
  ld b, h                                         ; $7a7c: $44
  inc b                                           ; $7a7d: $04
  nop                                             ; $7a7e: $00
  nop                                             ; $7a7f: $00
  nop                                             ; $7a80: $00
  dec b                                           ; $7a81: $05
  add hl, bc                                      ; $7a82: $09
  ld [bc], a                                      ; $7a83: $02
  inc b                                           ; $7a84: $04
  nop                                             ; $7a85: $00
  nop                                             ; $7a86: $00
  nop                                             ; $7a87: $00
  dec b                                           ; $7a88: $05
  dec c                                           ; $7a89: $0d
  nop                                             ; $7a8a: $00

  db $0e, $01, $08, $00, $f0, $00, $03, $03, $00, $0c, $00, $00, $0c, $02, $04, $00
  db $00, $00, $05, $08, $00, $04, $00, $13, $01, $01, $01, $c0, $04, $04, $00, $00
  db $00, $14, $0d, $00, $0e, $03, $13, $04, $0c, $ff, $10, $0b, $04, $00, $00, $00
  db $03, $10, $08, $04, $00, $00, $00, $03, $10, $09, $04, $00, $00, $00, $02, $10
  db $08, $04, $00, $00, $00, $03, $10, $19, $04, $00, $00, $00, $03, $10, $1a, $04
  db $00, $00, $00, $02, $05, $05, $ff, $e9, $0d, $00, $0e, $01, $0c, $01, $04, $00
  db $00, $00, $03, $0c, $00, $09, $09, $13, $03, $08, $00, $05, $00, $04, $00, $00
  db $00, $02, $08, $00, $00, $00, $04, $00, $00, $00, $05, $05, $03, $ff, $ee, $0d
  db $00, $0e, $01, $0c, $02, $04, $00, $00, $00, $02, $08, $00, $fe, $00, $04, $00
  db $00, $00, $02, $08, $00, $fc, $00, $04, $00, $00, $00, $02, $09, $04, $13, $07
  db $04, $00, $00, $00, $03, $08, $00, $03, $00, $04, $00, $00, $00, $05, $08, $00
  db $12, $00, $05, $08, $ff, $ea, $0d, $00, $0e, $01, $0c, $00, $03, $06, $80, $0d
  db $00, $00, $04, $00, $00, $00, $03, $08, $00, $08, $00, $04, $00, $00, $00, $02
  db $08, $00, $00, $00, $04, $00, $00, $00, $08, $0d, $00, $0e, $01, $0c, $02, $03
  db $03, $00, $18, $00, $00, $04, $00, $00, $00, $09, $0d, $00, $0e, $03, $0c, $ff
  db $09, $0f, $10, $64, $04, $00, $00, $00, $05, $10, $54, $04, $00, $00, $00, $03
  db $09, $08, $13, $03, $10, $63, $04, $00, $00, $00, $03, $10, $53, $04, $00, $00
  db $00, $02, $05, $03, $ff, $ee, $0d, $00, $0e, $02, $21, $18, $09, $08, $04, $00
  db $00, $00, $0e, $09, $0f, $21, $18, $04, $00, $00, $00, $0e, $05, $05, $ff, $f5
  db $09, $08, $21, $18, $04, $00, $00, $00, $0e, $05, $02, $ff, $f5, $00, $0e, $02
  db $21, $09, $04, $00, $00, $00, $44, $21, $17, $04, $00, $00, $00, $08, $21, $16
  db $04, $00, $00, $00, $09, $00, $ec, $0a, $59, $0c, $ee, $0a, $5b, $06, $ed, $0a
  db $38, $06, $eb, $0a, $4b, $0c, $ef, $0a, $3c, $0f, $f0, $0a, $3c, $0f, $f1, $0a
  db $3c, $0f, $a2, $0a, $3c, $0f, $e9, $0a, $32, $0f

  add sp, $0a                                     ; $7c05: $e8 $0a
  inc a                                           ; $7c07: $3c
  rrca                                            ; $7c08: $0f

  db $ea, $0a, $3c, $0f

  jp hl                                           ; $7c0d: $e9


  ld a, [bc]                                      ; $7c0e: $0a
  ld b, c                                         ; $7c0f: $41
  rrca                                            ; $7c10: $0f
  rst $20                                         ; $7c11: $e7
  ld a, [bc]                                      ; $7c12: $0a
  inc a                                           ; $7c13: $3c
  rrca                                            ; $7c14: $0f
  sbc $0a                                         ; $7c15: $de $0a
  inc a                                           ; $7c17: $3c
  rrca                                            ; $7c18: $0f
  rst $18                                         ; $7c19: $df
  ld a, [bc]                                      ; $7c1a: $0a
  inc a                                           ; $7c1b: $3c
  rrca                                            ; $7c1c: $0f

  db $e4, $0a, $3c, $0f, $e9, $0a, $34, $0f

  push hl                                         ; $7c25: $e5
  ld a, [bc]                                      ; $7c26: $0a
  inc a                                           ; $7c27: $3c
  rrca                                            ; $7c28: $0f
  ld a, $0a                                       ; $7c29: $3e $0a
  inc a                                           ; $7c2b: $3c
  rrca                                            ; $7c2c: $0f

  db $e6, $0a, $3c, $0f, $e3, $0a, $3c, $0f

  ldh [c], a                                      ; $7c35: $e2
  ld a, [bc]                                      ; $7c36: $0a
  inc a                                           ; $7c37: $3c
  db $08                                          ; $7c38: $08

  db $31, $0a, $54, $0f

  ldh [$ff0a], a                                  ; $7c3d: $e0 $0a
  ld e, e                                         ; $7c3f: $5b
  rrca                                            ; $7c40: $0f
  db $dd                                          ; $7c41: $dd
  ld a, [bc]                                      ; $7c42: $0a
  inc a                                           ; $7c43: $3c
  rrca                                            ; $7c44: $0f

  db $cf, $0a, $3c, $0f, $ce, $0a, $3c, $0f, $cd, $0a, $3c, $0f, $cc, $0a, $3c, $0f

  rrc d                                           ; $7c55: $cb $0a
  inc a                                           ; $7c57: $3c
  rrca                                            ; $7c58: $0f

  db $ca, $0a, $3c, $0f, $c9, $0a, $3c, $0f, $b9, $0a, $3c, $0f, $da, $0a, $4c, $0f
  db $c7, $0a, $3c, $0f, $d9, $0a, $47, $08, $d7, $0a, $3c, $0f, $c0, $0a, $28, $0f
  db $d8, $0a, $54, $0f, $3f, $0a, $3c, $08, $d6, $0a, $3c, $0f

  push de                                         ; $7c85: $d5
  ld a, [bc]                                      ; $7c86: $0a
  inc a                                           ; $7c87: $3c
  rrca                                            ; $7c88: $0f

  db $d4, $0a, $3c, $0f, $d3, $0a, $3c, $0f, $d2, $0a, $5a, $0f, $c8, $0a, $3c, $0f
  db $c6, $0a, $46, $0f, $d1, $0a, $3c, $0f, $3d, $0a, $3c, $0f, $c5, $0a, $3c, $0f

  call nz, Call_010_460a                          ; $7ca9: $c4 $0a $46
  rrca                                            ; $7cac: $0f
  jp Jump_000_3c0a                                ; $7cad: $c3 $0a $3c


  rrca                                            ; $7cb0: $0f
  ret nc                                          ; $7cb1: $d0

  ld a, [bc]                                      ; $7cb2: $0a
  inc a                                           ; $7cb3: $3c
  rrca                                            ; $7cb4: $0f

  db $c1, $0a, $5c, $0f, $b7, $0a, $3c, $0f, $b8, $0a, $3c, $0f, $b7, $0a, $3c, $0f
  db $b6, $0a, $3c, $0f, $c0, $0a, $3c, $08

  cp a                                            ; $7ccd: $bf
  ld a, [bc]                                      ; $7cce: $0a
  ld b, [hl]                                      ; $7ccf: $46
  rrca                                            ; $7cd0: $0f

  db $be, $0a, $3c, $0f

  cp l                                            ; $7cd5: $bd
  ld a, [bc]                                      ; $7cd6: $0a
  ld c, b                                         ; $7cd7: $48
  rrca                                            ; $7cd8: $0f

  db $b5, $0a, $50, $0f, $b2, $0a, $4a, $0f, $c1, $0a, $5a, $0f, $aa, $0a, $3c, $0f
  db $ab, $0a, $32, $0f

  xor e                                           ; $7ced: $ab
  ld a, [bc]                                      ; $7cee: $0a
  ld a, [hl-]                                     ; $7cef: $3a
  rrca                                            ; $7cf0: $0f
  xor e                                           ; $7cf1: $ab
  ld a, [bc]                                      ; $7cf2: $0a
  ld b, e                                         ; $7cf3: $43
  rrca                                            ; $7cf4: $0f

  db $ab, $0a, $4b, $0f, $a9, $0a, $3c, $0f, $a8, $0a, $3c, $0f

  jp hl                                           ; $7d01: $e9


  ld a, [bc]                                      ; $7d02: $0a
  add hl, sp                                      ; $7d03: $39
  inc b                                           ; $7d04: $04

  db $b0, $0a, $3c, $0f, $af, $0a, $3c, $0f, $ae, $0a, $3c, $0f, $ad, $0a, $3c, $0f
  db $ac, $0a, $3c, $0f, $ba, $0a, $3c, $0f

  and h                                           ; $7d1d: $a4
  ld a, [bc]                                      ; $7d1e: $0a
  inc a                                           ; $7d1f: $3c
  rrca                                            ; $7d20: $0f
  and a                                           ; $7d21: $a7
  ld a, [bc]                                      ; $7d22: $0a
  inc a                                           ; $7d23: $3c
  rrca                                            ; $7d24: $0f
  and e                                           ; $7d25: $a3
  ld a, [bc]                                      ; $7d26: $0a
  inc a                                           ; $7d27: $3c
  rrca                                            ; $7d28: $0f

  db $a1, $0a, $5a, $0f, $de, $0a, $58, $0f, $dd, $0a, $3c, $0f

  inc a                                           ; $7d35: $3c
  ld a, [bc]                                      ; $7d36: $0a
  inc a                                           ; $7d37: $3c
  rrca                                            ; $7d38: $0f

  db $9f, $0a, $3c, $0f, $a0, $0a, $3c, $0f, $9e, $0a, $3c, $0f

  sbc l                                           ; $7d45: $9d
  ld a, [bc]                                      ; $7d46: $0a
  inc a                                           ; $7d47: $3c
  rrca                                            ; $7d48: $0f
  inc [hl]                                        ; $7d49: $34
  ld a, [bc]                                      ; $7d4a: $0a
  inc a                                           ; $7d4b: $3c
  rrca                                            ; $7d4c: $0f
  sbc h                                           ; $7d4d: $9c
  ld a, [bc]                                      ; $7d4e: $0a
  inc a                                           ; $7d4f: $3c
  rrca                                            ; $7d50: $0f

  db $9b, $0a, $3c, $0f

  rst $28                                         ; $7d55: $ef
  ld a, [bc]                                      ; $7d56: $0a
  inc a                                           ; $7d57: $3c
  rrca                                            ; $7d58: $0f

  db $9a, $0a, $3c, $0f

  sub a                                           ; $7d5d: $97
  ld a, [bc]                                      ; $7d5e: $0a
  ld d, b                                         ; $7d5f: $50
  rrca                                            ; $7d60: $0f
  sub [hl]                                        ; $7d61: $96
  ld a, [bc]                                      ; $7d62: $0a
  ld b, a                                         ; $7d63: $47
  rrca                                            ; $7d64: $0f
  sub l                                           ; $7d65: $95
  ld a, [bc]                                      ; $7d66: $0a
  inc a                                           ; $7d67: $3c
  rrca                                            ; $7d68: $0f
  adc [hl]                                        ; $7d69: $8e
  ld a, [bc]                                      ; $7d6a: $0a
  inc a                                           ; $7d6b: $3c
  rrca                                            ; $7d6c: $0f
  adc l                                           ; $7d6d: $8d
  ld a, [bc]                                      ; $7d6e: $0a
  inc a                                           ; $7d6f: $3c
  rrca                                            ; $7d70: $0f
  adc a                                           ; $7d71: $8f
  ld a, [bc]                                      ; $7d72: $0a
  inc a                                           ; $7d73: $3c
  rrca                                            ; $7d74: $0f
  ld l, c                                         ; $7d75: $69
  ld a, [bc]                                      ; $7d76: $0a
  inc a                                           ; $7d77: $3c
  rrca                                            ; $7d78: $0f
  ld l, e                                         ; $7d79: $6b
  ld a, [bc]                                      ; $7d7a: $0a
  ld b, l                                         ; $7d7b: $45
  rrca                                            ; $7d7c: $0f
  ld a, [hl]                                      ; $7d7d: $7e
  ld a, [bc]                                      ; $7d7e: $0a
  inc a                                           ; $7d7f: $3c
  rrca                                            ; $7d80: $0f
  ld [hl], c                                      ; $7d81: $71
  ld a, [bc]                                      ; $7d82: $0a
  ld c, h                                         ; $7d83: $4c
  rrca                                            ; $7d84: $0f
  ld l, d                                         ; $7d85: $6a
  ld a, [bc]                                      ; $7d86: $0a
  inc a                                           ; $7d87: $3c
  rrca                                            ; $7d88: $0f

  db $84, $0a, $3c, $0f, $83, $0a, $3c, $0f, $7b, $0a, $3c, $0f

  ld a, b                                         ; $7d95: $78
  ld a, [bc]                                      ; $7d96: $0a
  inc a                                           ; $7d97: $3c
  rrca                                            ; $7d98: $0f
  add l                                           ; $7d99: $85
  ld a, [bc]                                      ; $7d9a: $0a
  inc a                                           ; $7d9b: $3c
  ld [$0a86], sp                                  ; $7d9c: $08 $86 $0a
  inc a                                           ; $7d9f: $3c
  rrca                                            ; $7da0: $0f

  db $63, $0a, $46, $0f

  ld [hl], b                                      ; $7da5: $70
  ld a, [bc]                                      ; $7da6: $0a
  ld e, h                                         ; $7da7: $5c
  rrca                                            ; $7da8: $0f
  sub h                                           ; $7da9: $94
  ld a, [bc]                                      ; $7daa: $0a
  ld b, h                                         ; $7dab: $44
  rrca                                            ; $7dac: $0f
  adc h                                           ; $7dad: $8c
  ld a, [bc]                                      ; $7dae: $0a
  inc a                                           ; $7daf: $3c
  rrca                                            ; $7db0: $0f
  ld h, a                                         ; $7db1: $67
  ld a, [bc]                                      ; $7db2: $0a
  inc a                                           ; $7db3: $3c
  rrca                                            ; $7db4: $0f
  ld l, b                                         ; $7db5: $68
  ld a, [bc]                                      ; $7db6: $0a
  ld c, h                                         ; $7db7: $4c
  rrca                                            ; $7db8: $0f
  ld a, c                                         ; $7db9: $79
  ld a, [bc]                                      ; $7dba: $0a
  inc a                                           ; $7dbb: $3c
  rrca                                            ; $7dbc: $0f

  db $7a, $0a, $3c, $0f

  ld a, l                                         ; $7dc1: $7d
  ld a, [bc]                                      ; $7dc2: $0a
  inc a                                           ; $7dc3: $3c
  rrca                                            ; $7dc4: $0f
  add b                                           ; $7dc5: $80
  ld a, [bc]                                      ; $7dc6: $0a
  inc a                                           ; $7dc7: $3c
  rrca                                            ; $7dc8: $0f
  ld a, h                                         ; $7dc9: $7c
  ld a, [bc]                                      ; $7dca: $0a
  inc a                                           ; $7dcb: $3c
  rrca                                            ; $7dcc: $0f
  ld [hl], a                                      ; $7dcd: $77
  ld a, [bc]                                      ; $7dce: $0a
  inc a                                           ; $7dcf: $3c
  rrca                                            ; $7dd0: $0f
  add a                                           ; $7dd1: $87
  ld a, [bc]                                      ; $7dd2: $0a
  ld c, b                                         ; $7dd3: $48
  rrca                                            ; $7dd4: $0f

  db $66, $0a, $3c, $0f

  ld [hl], h                                      ; $7dd9: $74
  ld a, [bc]                                      ; $7dda: $0a
  ld d, b                                         ; $7ddb: $50
  rrca                                            ; $7ddc: $0f
  sub c                                           ; $7ddd: $91
  ld a, [bc]                                      ; $7dde: $0a
  inc a                                           ; $7ddf: $3c
  rrca                                            ; $7de0: $0f
  ld a, a                                         ; $7de1: $7f
  ld a, [bc]                                      ; $7de2: $0a
  ld [hl], $0f                                    ; $7de3: $36 $0f
  ld l, a                                         ; $7de5: $6f
  ld a, [bc]                                      ; $7de6: $0a
  ld c, b                                         ; $7de7: $48
  ld a, [bc]                                      ; $7de8: $0a
  ld l, [hl]                                      ; $7de9: $6e
  ld a, [bc]                                      ; $7dea: $0a
  inc a                                           ; $7deb: $3c
  rrca                                            ; $7dec: $0f
  adc d                                           ; $7ded: $8a
  ld a, [bc]                                      ; $7dee: $0a
  inc a                                           ; $7def: $3c
  rrca                                            ; $7df0: $0f
  adc e                                           ; $7df1: $8b
  ld a, [bc]                                      ; $7df2: $0a
  inc a                                           ; $7df3: $3c
  rrca                                            ; $7df4: $0f
  ld h, d                                         ; $7df5: $62
  ld a, [bc]                                      ; $7df6: $0a
  inc a                                           ; $7df7: $3c
  rrca                                            ; $7df8: $0f
  ld h, c                                         ; $7df9: $61
  ld a, [bc]                                      ; $7dfa: $0a
  inc a                                           ; $7dfb: $3c
  rrca                                            ; $7dfc: $0f
  sub b                                           ; $7dfd: $90
  ld a, [bc]                                      ; $7dfe: $0a
  inc a                                           ; $7dff: $3c
  rrca                                            ; $7e00: $0f
  ld e, [hl]                                      ; $7e01: $5e
  ld a, [bc]                                      ; $7e02: $0a
  ld e, [hl]                                      ; $7e03: $5e
  rrca                                            ; $7e04: $0f
  add hl, sp                                      ; $7e05: $39
  ld a, [bc]                                      ; $7e06: $0a
  inc a                                           ; $7e07: $3c
  rrca                                            ; $7e08: $0f
  ld e, l                                         ; $7e09: $5d
  ld a, [bc]                                      ; $7e0a: $0a
  inc a                                           ; $7e0b: $3c
  rrca                                            ; $7e0c: $0f
  ld e, h                                         ; $7e0d: $5c
  ld a, [bc]                                      ; $7e0e: $0a
  inc a                                           ; $7e0f: $3c
  rrca                                            ; $7e10: $0f
  jr c, jr_010_7e1d                               ; $7e11: $38 $0a

  inc a                                           ; $7e13: $3c
  rrca                                            ; $7e14: $0f
  ld e, e                                         ; $7e15: $5b
  ld a, [bc]                                      ; $7e16: $0a
  inc a                                           ; $7e17: $3c
  rrca                                            ; $7e18: $0f
  ld e, d                                         ; $7e19: $5a
  ld a, [bc]                                      ; $7e1a: $0a
  inc a                                           ; $7e1b: $3c
  rrca                                            ; $7e1c: $0f

jr_010_7e1d:
  ld e, c                                         ; $7e1d: $59
  ld a, [bc]                                      ; $7e1e: $0a
  inc a                                           ; $7e1f: $3c
  rrca                                            ; $7e20: $0f
  ld e, b                                         ; $7e21: $58
  ld a, [bc]                                      ; $7e22: $0a
  inc a                                           ; $7e23: $3c
  rrca                                            ; $7e24: $0f
  ld c, h                                         ; $7e25: $4c
  ld a, [bc]                                      ; $7e26: $0a
  jr z, jr_010_7e38                               ; $7e27: $28 $0f

  jp Jump_000_2b0a                                ; $7e29: $c3 $0a $2b


  rrca                                            ; $7e2c: $0f
  ld c, e                                         ; $7e2d: $4b
  ld a, [bc]                                      ; $7e2e: $0a
  inc a                                           ; $7e2f: $3c
  rrca                                            ; $7e30: $0f
  ld c, d                                         ; $7e31: $4a
  ld a, [bc]                                      ; $7e32: $0a
  inc a                                           ; $7e33: $3c
  rrca                                            ; $7e34: $0f
  rst $10                                         ; $7e35: $d7
  ld a, [bc]                                      ; $7e36: $0a
  inc a                                           ; $7e37: $3c

jr_010_7e38:
  rrca                                            ; $7e38: $0f
  ld b, [hl]                                      ; $7e39: $46
  ld a, [bc]                                      ; $7e3a: $0a
  ld b, [hl]                                      ; $7e3b: $46
  rrca                                            ; $7e3c: $0f
  ld b, d                                         ; $7e3d: $42
  ld a, [bc]                                      ; $7e3e: $0a
  ld b, h                                         ; $7e3f: $44
  rrca                                            ; $7e40: $0f
  ld b, c                                         ; $7e41: $41
  ld a, [bc]                                      ; $7e42: $0a
  inc a                                           ; $7e43: $3c
  rrca                                            ; $7e44: $0f
  ld b, b                                         ; $7e45: $40
  ld a, [bc]                                      ; $7e46: $0a
  jr nc, @+$11                                    ; $7e47: $30 $0f

  jp nz, $520a                                    ; $7e49: $c2 $0a $52

  rrca                                            ; $7e4c: $0f
  cp a                                            ; $7e4d: $bf
  ld a, [bc]                                      ; $7e4e: $0a
  ld h, $0f                                       ; $7e4f: $26 $0f

  db $37, $0a, $3c, $0f, $35, $0a, $3c, $0f

  ld [hl], $0a                                    ; $7e59: $36 $0a
  inc a                                           ; $7e5b: $3c
  rrca                                            ; $7e5c: $0f
  inc sp                                          ; $7e5d: $33
  ld a, [bc]                                      ; $7e5e: $0a
  inc a                                           ; $7e5f: $3c
  rrca                                            ; $7e60: $0f
  ld [hl], e                                      ; $7e61: $73
  ld a, [bc]                                      ; $7e62: $0a
  add hl, sp                                      ; $7e63: $39
  rrca                                            ; $7e64: $0f

  db $32, $0a, $48, $0f, $e1, $0a, $40, $0c, $2d, $0a, $3c, $0c

  inc l                                           ; $7e71: $2c
  ld a, [bc]                                      ; $7e72: $0a
  inc a                                           ; $7e73: $3c
  rrca                                            ; $7e74: $0f
  ld l, $0a                                       ; $7e75: $2e $0a
  inc a                                           ; $7e77: $3c
  rrca                                            ; $7e78: $0f
  cpl                                             ; $7e79: $2f
  ld a, [bc]                                      ; $7e7a: $0a
  inc a                                           ; $7e7b: $3c
  rrca                                            ; $7e7c: $0f
  jr nc, @+$0c                                    ; $7e7d: $30 $0a

  inc a                                           ; $7e7f: $3c
  rrca                                            ; $7e80: $0f

  db $00, $40, $02, $00, $01, $01, $20, $40, $01, $00, $01, $01, $30, $40, $02, $00
  db $01, $01

  ld d, b                                         ; $7e93: $50
  ld b, b                                         ; $7e94: $40
  cpl                                             ; $7e95: $2f
  ld [bc], a                                      ; $7e96: $02
  ld bc, $4001                                    ; $7e97: $01 $01 $40
  ld h, e                                         ; $7e9a: $63
  dec l                                           ; $7e9b: $2d
  ld bc, $0101                                    ; $7e9c: $01 $01 $01
  db $10                                          ; $7e9f: $10
  halt                                            ; $7ea0: $76
  ld e, a                                         ; $7ea1: $5f
  nop                                             ; $7ea2: $00
  db $01                                          ; $7ea3: $01
  db $01                                          ; $7ea4: $01

  db $00, $7c, $bf, $00, $01, $01

  ldh a, [rBGP]                                   ; $7eab: $f0 $47
  ld [hl], d                                      ; $7ead: $72
  ld bc, $0201                                    ; $7eae: $01 $01 $02

  db $10, $5f, $bb, $01, $01, $02, $c0, $7a, $36, $01, $01, $02

  jr nz, @+$50                                    ; $7ebd: $20 $4e

  push bc                                         ; $7ebf: $c5
  nop                                             ; $7ec0: $00
  ld bc, $7003                                    ; $7ec1: $01 $03 $70
  ld e, d                                         ; $7ec4: $5a
  and a                                           ; $7ec5: $a7
  nop                                             ; $7ec6: $00
  ld bc, $e003                                    ; $7ec7: $01 $03 $e0
  ld h, h                                         ; $7eca: $64
  ret nc                                          ; $7ecb: $d0

  nop                                             ; $7ecc: $00
  ld bc, $e003                                    ; $7ecd: $01 $03 $e0
  ld [hl], c                                      ; $7ed0: $71
  di                                              ; $7ed1: $f3
  nop                                             ; $7ed2: $00
  db $01                                          ; $7ed3: $01
  inc bc                                          ; $7ed4: $03

  db $10, $41, $49, $00, $01, $04, $a0, $45, $8f, $00, $01, $04, $90, $4e, $83, $00
  db $01, $04, $c0, $56, $25, $00, $01, $04, $10, $59, $9d, $00, $01, $04

  ldh [$ff62], a                                  ; $7ef3: $e0 $62
  ld h, a                                         ; $7ef5: $67
  nop                                             ; $7ef6: $00
  db $01                                          ; $7ef7: $01
  inc b                                           ; $7ef8: $04

  db $50, $69, $73, $00, $01, $04, $80, $70, $af, $00, $01, $04, $70, $7b, $15, $00
  db $01, $04, $c0, $7c, $1a, $00, $01, $04, $60, $7e, $41, $00, $01, $04, $0b, $7e
  db $75

  dec bc                                          ; $7f1a: $0b
  rst $30                                         ; $7f1b: $f7
  ld b, e                                         ; $7f1c: $43
  add hl, bc                                      ; $7f1d: $09
  sub e                                           ; $7f1e: $93
  ld l, h                                         ; $7f1f: $6c
  ld [$79c8], sp                                  ; $7f20: $08 $c8 $79
  dec bc                                          ; $7f23: $0b
  ld c, a                                         ; $7f24: $4f
  ld d, d                                         ; $7f25: $52
  ld b, $0d                                       ; $7f26: $06 $0d
  ld e, a                                         ; $7f28: $5f

  db $0b, $d2, $47

  ld [$4a73], sp                                  ; $7f2c: $08 $73 $4a
  add hl, bc                                      ; $7f2f: $09
  sbc [hl]                                        ; $7f30: $9e
  ld a, [hl]                                      ; $7f31: $7e
  dec bc                                          ; $7f32: $0b
  ld b, $6d                                       ; $7f33: $06 $6d

  db $0a, $68, $6e, $0a, $bc, $45, $0a, $f5, $72

  dec bc                                          ; $7f3e: $0b
  db $ec                                          ; $7f3f: $ec
  ld a, h                                         ; $7f40: $7c
  dec bc                                          ; $7f41: $0b
  ld e, e                                         ; $7f42: $5b
  ld [hl], h                                      ; $7f43: $74

  db $0b, $00, $40, $09, $c3, $78, $0b, $fc, $71, $0b, $dc, $64

  dec bc                                          ; $7f50: $0b
  sbc $79                                         ; $7f51: $de $79
  dec bc                                          ; $7f53: $0b
  ld h, c                                         ; $7f54: $61
  ld h, e                                         ; $7f55: $63

  db $0b, $1e, $5d, $08, $6e, $68, $0a, $47, $56, $0b, $4f, $6e, $09, $6b, $48, $06
  db $3d, $78, $09, $02, $59, $07, $20, $4c

  dec bc                                          ; $7f6e: $0b
  adc a                                           ; $7f6f: $8f
  ld e, b                                         ; $7f70: $58

  db $0b, $7e, $4b, $0a, $56, $5b, $08, $b5, $54, $07, $1b, $63, $06, $00, $40, $0a
  db $59, $77, $0a, $39, $65, $0b, $0f, $5b, $08, $33, $71, $09, $d5, $72, $0a, $de
  db $50

  dec bc                                          ; $7f92: $0b
  push de                                         ; $7f93: $d5
  ld e, [hl]                                      ; $7f94: $5e
  dec bc                                          ; $7f95: $0b
  sub l                                           ; $7f96: $95
  ld l, a                                         ; $7f97: $6f

  db $0b, $f5, $7b

  dec bc                                          ; $7f9b: $0b
  add hl, de                                      ; $7f9c: $19
  ld l, c                                         ; $7f9d: $69
  dec bc                                          ; $7f9e: $0b
  or [hl]                                         ; $7f9f: $b6
  ld h, a                                         ; $7fa0: $67

  db $0b, $70, $6a, $0b, $e3, $61, $07, $00, $40, $07, $2d, $58, $06, $94, $50, $09
  db $c2, $50

  dec bc                                          ; $7fb3: $0b
  rst $18                                         ; $7fb4: $df
  ld a, l                                         ; $7fb5: $7d

  db $0a, $d8, $69, $0a, $6e, $4b, $0b, $f5, $4e, $0a, $00, $40, $07, $03, $6e, $0a
  db $aa, $7b, $09, $00, $40, $09, $93, $5f, $0b, $c9, $70, $0b, $ee, $7a, $0b, $2c
  db $73, $0b, $9d, $76, $0b, $53, $66

  dec bc                                          ; $7fdd: $0b
  bit 7, b                                        ; $7fde: $cb $78

  db $0b, $b4, $77, $09, $1f, $66, $0a, $52, $60, $0b, $99, $55, $07, $9b, $78, $0b
  db $bb, $6b

  dec bc                                          ; $7ff2: $0b
  ld h, h                                         ; $7ff3: $64
  ld h, b                                         ; $7ff4: $60

  db $08, $d2, $5e, $06, $b1, $6b, $08, $00, $40

  rst $38                                         ; $7ffe: $ff
  rst $38                                         ; $7fff: $ff
