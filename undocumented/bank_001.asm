; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

  db $01

Call_001_4001:
  ldh a, [rSVBK]                                  ; $4001: $f0 $70
  push af                                         ; $4003: $f5
  ld a, $01                                       ; $4004: $3e $01
  ldh [rSVBK], a                                  ; $4006: $e0 $70
  push de                                         ; $4008: $d5
  ld a, [$c2c6]                                   ; $4009: $fa $c6 $c2
  or a                                            ; $400c: $b7
  jr z, jr_001_404f                               ; $400d: $28 $40

  ld a, [$c2c7]                                   ; $400f: $fa $c7 $c2
  or a                                            ; $4012: $b7
  jr nz, jr_001_402d                              ; $4013: $20 $18

  ld a, d                                         ; $4015: $7a
  cp $a0                                          ; $4016: $fe $a0
  jr c, jr_001_4021                               ; $4018: $38 $07

  sub $18                                         ; $401a: $d6 $18
  ld d, a                                         ; $401c: $57
  ld a, $01                                       ; $401d: $3e $01
  jr jr_001_4022                                  ; $401f: $18 $01

jr_001_4021:
  xor a                                           ; $4021: $af

jr_001_4022:
  ld [$c2cd], a                                   ; $4022: $ea $cd $c2
  ld a, e                                         ; $4025: $7b
  ld [$c2c9], a                                   ; $4026: $ea $c9 $c2
  ld a, d                                         ; $4029: $7a
  ld [$c2ca], a                                   ; $402a: $ea $ca $c2

jr_001_402d:
  ld a, [$c2c7]                                   ; $402d: $fa $c7 $c2
  swap a                                          ; $4030: $cb $37
  ld de, $de00                                    ; $4032: $11 $00 $de
  add e                                           ; $4035: $83
  ld e, a                                         ; $4036: $5f
  jr nc, jr_001_403a                              ; $4037: $30 $01

  inc d                                           ; $4039: $14

jr_001_403a:
  call Call_000_0245                              ; $403a: $cd $45 $02
  ld a, [$c2c7]                                   ; $403d: $fa $c7 $c2
  inc a                                           ; $4040: $3c
  ld [$c2c7], a                                   ; $4041: $ea $c7 $c2
  cp $10                                          ; $4044: $fe $10
  jr nz, jr_001_40a3                              ; $4046: $20 $5b

  ld hl, $c2c5                                    ; $4048: $21 $c5 $c2
  set 0, [hl]                                     ; $404b: $cb $c6
  jr jr_001_408d                                  ; $404d: $18 $3e

jr_001_404f:
  ld a, [$c2c8]                                   ; $404f: $fa $c8 $c2
  or a                                            ; $4052: $b7
  jr nz, jr_001_406d                              ; $4053: $20 $18

  ld a, d                                         ; $4055: $7a
  cp $a0                                          ; $4056: $fe $a0
  jr c, jr_001_4061                               ; $4058: $38 $07

  sub $18                                         ; $405a: $d6 $18
  ld d, a                                         ; $405c: $57
  ld a, $01                                       ; $405d: $3e $01
  jr jr_001_4062                                  ; $405f: $18 $01

jr_001_4061:
  xor a                                           ; $4061: $af

jr_001_4062:
  ld [$c2ce], a                                   ; $4062: $ea $ce $c2
  ld a, e                                         ; $4065: $7b
  ld [$c2cb], a                                   ; $4066: $ea $cb $c2
  ld a, d                                         ; $4069: $7a
  ld [$c2cc], a                                   ; $406a: $ea $cc $c2

jr_001_406d:
  ld a, [$c2c8]                                   ; $406d: $fa $c8 $c2
  swap a                                          ; $4070: $cb $37
  ld de, $df00                                    ; $4072: $11 $00 $df
  add e                                           ; $4075: $83
  ld e, a                                         ; $4076: $5f
  jr nc, jr_001_407a                              ; $4077: $30 $01

  inc d                                           ; $4079: $14

jr_001_407a:
  call Call_000_0245                              ; $407a: $cd $45 $02
  ld a, [$c2c8]                                   ; $407d: $fa $c8 $c2
  inc a                                           ; $4080: $3c
  ld [$c2c8], a                                   ; $4081: $ea $c8 $c2
  cp $10                                          ; $4084: $fe $10
  jr nz, jr_001_40a3                              ; $4086: $20 $1b

  ld hl, $c2c5                                    ; $4088: $21 $c5 $c2
  set 1, [hl]                                     ; $408b: $cb $ce

jr_001_408d:
  ld a, [$c2c6]                                   ; $408d: $fa $c6 $c2
  xor $01                                         ; $4090: $ee $01
  ld [$c2c6], a                                   ; $4092: $ea $c6 $c2
  ld a, $00                                       ; $4095: $3e $00
  ld hl, $c2c7                                    ; $4097: $21 $c7 $c2
  jr nz, jr_001_409f                              ; $409a: $20 $03

  ld hl, $c2c8                                    ; $409c: $21 $c8 $c2

jr_001_409f:
  ld a, [hl]                                      ; $409f: $7e
  or a                                            ; $40a0: $b7
  jr nz, jr_001_409f                              ; $40a1: $20 $fc

jr_001_40a3:
  pop hl                                          ; $40a3: $e1
  ld de, $0010                                    ; $40a4: $11 $10 $00
  add hl, de                                      ; $40a7: $19
  ld e, l                                         ; $40a8: $5d
  ld d, h                                         ; $40a9: $54
  pop af                                          ; $40aa: $f1
  ldh [rSVBK], a                                  ; $40ab: $e0 $70
  ret                                             ; $40ad: $c9


Call_001_40ae:
  push hl                                         ; $40ae: $e5
  ld a, [$c2c5]                                   ; $40af: $fa $c5 $c2
  ld l, a                                         ; $40b2: $6f
  ld a, [$c2c7]                                   ; $40b3: $fa $c7 $c2
  or a                                            ; $40b6: $b7
  jr z, jr_001_40bb                               ; $40b7: $28 $02

  set 0, l                                        ; $40b9: $cb $c5

jr_001_40bb:
  ld a, [$c2c8]                                   ; $40bb: $fa $c8 $c2
  or a                                            ; $40be: $b7
  jr z, jr_001_40c3                               ; $40bf: $28 $02

  set 1, l                                        ; $40c1: $cb $cd

jr_001_40c3:
  ld a, l                                         ; $40c3: $7d
  pop hl                                          ; $40c4: $e1
  or a                                            ; $40c5: $b7
  ret z                                           ; $40c6: $c8

  ld [$c2c5], a                                   ; $40c7: $ea $c5 $c2

jr_001_40ca:
  ld a, [$c2c5]                                   ; $40ca: $fa $c5 $c2
  or a                                            ; $40cd: $b7
  jr nz, jr_001_40ca                              ; $40ce: $20 $fa

  ld a, $02                                       ; $40d0: $3e $02
  ldh [$ffa9], a                                  ; $40d2: $e0 $a9
  ret                                             ; $40d4: $c9


  ldh a, [rLY]                                    ; $40d5: $f0 $44
  cp $90                                          ; $40d7: $fe $90
  ret c                                           ; $40d9: $d8

  ld a, [$c2c7]                                   ; $40da: $fa $c7 $c2
  ld c, a                                         ; $40dd: $4f
  ld a, [$c2c8]                                   ; $40de: $fa $c8 $c2
  add c                                           ; $40e1: $81
  swap a                                          ; $40e2: $cb $37
  and $0f                                         ; $40e4: $e6 $0f
  sub $97                                         ; $40e6: $d6 $97
  cpl                                             ; $40e8: $2f
  inc a                                           ; $40e9: $3c
  ld c, a                                         ; $40ea: $4f
  ldh a, [rLY]                                    ; $40eb: $f0 $44
  ret nc                                          ; $40ed: $d0

  ld hl, $c2c5                                    ; $40ee: $21 $c5 $c2
  bit 0, [hl]                                     ; $40f1: $cb $46
  jr z, jr_001_4122                               ; $40f3: $28 $2d

  ld a, [$c2cd]                                   ; $40f5: $fa $cd $c2
  ldh [rVBK], a                                   ; $40f8: $e0 $4f
  ld a, [$c2c7]                                   ; $40fa: $fa $c7 $c2
  or a                                            ; $40fd: $b7
  jr z, jr_001_411a                               ; $40fe: $28 $1a

  dec a                                           ; $4100: $3d
  ld c, a                                         ; $4101: $4f
  ld hl, $c2c9                                    ; $4102: $21 $c9 $c2
  ld e, [hl]                                      ; $4105: $5e
  inc hl                                          ; $4106: $23
  ld d, [hl]                                      ; $4107: $56
  ld hl, $de00                                    ; $4108: $21 $00 $de
  ldh a, [rSVBK]                                  ; $410b: $f0 $70
  push af                                         ; $410d: $f5
  ld a, $01                                       ; $410e: $3e $01
  ldh [rSVBK], a                                  ; $4110: $e0 $70
  rst $28                                         ; $4112: $ef
  pop af                                          ; $4113: $f1
  ldh [rSVBK], a                                  ; $4114: $e0 $70
  xor a                                           ; $4116: $af
  ld [$c2c7], a                                   ; $4117: $ea $c7 $c2

jr_001_411a:
  ld hl, $c2c5                                    ; $411a: $21 $c5 $c2
  res 0, [hl]                                     ; $411d: $cb $86
  xor a                                           ; $411f: $af
  ldh [rVBK], a                                   ; $4120: $e0 $4f

jr_001_4122:
  bit 1, [hl]                                     ; $4122: $cb $4e
  ret z                                           ; $4124: $c8

  ld a, [$c2ce]                                   ; $4125: $fa $ce $c2
  ldh [rVBK], a                                   ; $4128: $e0 $4f
  ld a, [$c2c8]                                   ; $412a: $fa $c8 $c2
  or a                                            ; $412d: $b7
  jr z, jr_001_414a                               ; $412e: $28 $1a

  dec a                                           ; $4130: $3d
  ld c, a                                         ; $4131: $4f
  ld hl, $c2cb                                    ; $4132: $21 $cb $c2
  ld e, [hl]                                      ; $4135: $5e
  inc hl                                          ; $4136: $23
  ld d, [hl]                                      ; $4137: $56
  ld hl, $df00                                    ; $4138: $21 $00 $df
  ldh a, [rSVBK]                                  ; $413b: $f0 $70
  push af                                         ; $413d: $f5
  ld a, $01                                       ; $413e: $3e $01
  ldh [rSVBK], a                                  ; $4140: $e0 $70
  rst $28                                         ; $4142: $ef
  pop af                                          ; $4143: $f1
  ldh [rSVBK], a                                  ; $4144: $e0 $70
  xor a                                           ; $4146: $af
  ld [$c2c8], a                                   ; $4147: $ea $c8 $c2

jr_001_414a:
  ld hl, $c2c5                                    ; $414a: $21 $c5 $c2
  res 1, [hl]                                     ; $414d: $cb $8e
  xor a                                           ; $414f: $af
  ldh [rVBK], a                                   ; $4150: $e0 $4f
  ret                                             ; $4152: $c9


Call_001_4153:
  ldh a, [rLCDC]                                  ; $4153: $f0 $40
  rla                                             ; $4155: $17
  ret nc                                          ; $4156: $d0

jr_001_4157:
  ld a, [$c2bf]                                   ; $4157: $fa $bf $c2
  inc a                                           ; $415a: $3c
  jr nz, jr_001_4157                              ; $415b: $20 $fa

  ret                                             ; $415d: $c9


  ld a, [$c2c4]                                   ; $415e: $fa $c4 $c2
  ldh [rVBK], a                                   ; $4161: $e0 $4f
  ld hl, $c2bf                                    ; $4163: $21 $bf $c2
  ldh a, [rLCDC]                                  ; $4166: $f0 $40
  rla                                             ; $4168: $17
  jr nc, jr_001_4170                              ; $4169: $30 $05

  ld a, [hl]                                      ; $416b: $7e
  sub $3f                                         ; $416c: $d6 $3f
  jr nc, jr_001_4175                              ; $416e: $30 $05

jr_001_4170:
  ld c, [hl]                                      ; $4170: $4e
  ld [hl], $ff                                    ; $4171: $36 $ff
  jr jr_001_4178                                  ; $4173: $18 $03

jr_001_4175:
  ld [hl], a                                      ; $4175: $77
  ld c, $3f                                       ; $4176: $0e $3f

jr_001_4178:
  ld hl, $c2c0                                    ; $4178: $21 $c0 $c2
  ld e, [hl]                                      ; $417b: $5e
  inc hl                                          ; $417c: $23
  ld d, [hl]                                      ; $417d: $56
  ld hl, $c2c2                                    ; $417e: $21 $c2 $c2
  ld a, [hl+]                                     ; $4181: $2a
  ld h, [hl]                                      ; $4182: $66
  ld l, a                                         ; $4183: $6f
  ldh a, [rSVBK]                                  ; $4184: $f0 $70
  push af                                         ; $4186: $f5
  ld a, $01                                       ; $4187: $3e $01
  ldh [rSVBK], a                                  ; $4189: $e0 $70
  rst $28                                         ; $418b: $ef
  pop af                                          ; $418c: $f1
  ldh [rSVBK], a                                  ; $418d: $e0 $70
  ld b, $00                                       ; $418f: $06 $00
  inc c                                           ; $4191: $0c
  sla c                                           ; $4192: $cb $21
  rl b                                            ; $4194: $cb $10
  sla c                                           ; $4196: $cb $21
  rl b                                            ; $4198: $cb $10
  sla c                                           ; $419a: $cb $21
  rl b                                            ; $419c: $cb $10
  sla c                                           ; $419e: $cb $21
  rl b                                            ; $41a0: $cb $10
  add hl, bc                                      ; $41a2: $09
  ld a, l                                         ; $41a3: $7d
  ld [$c2c2], a                                   ; $41a4: $ea $c2 $c2
  ld a, h                                         ; $41a7: $7c
  ld [$c2c3], a                                   ; $41a8: $ea $c3 $c2
  ld l, e                                         ; $41ab: $6b
  ld h, d                                         ; $41ac: $62
  add hl, bc                                      ; $41ad: $09
  ld a, l                                         ; $41ae: $7d
  ld [$c2c0], a                                   ; $41af: $ea $c0 $c2
  ld a, h                                         ; $41b2: $7c
  ld [$c2c1], a                                   ; $41b3: $ea $c1 $c2
  xor a                                           ; $41b6: $af
  ldh [rVBK], a                                   ; $41b7: $e0 $4f
  ret                                             ; $41b9: $c9


  rst $00                                         ; $41ba: $c7

  ld h, b                                         ; $41bb: $60
  ld b, c                                         ; $41bc: $41

  db $85, $0d, $be, $0b, $70, $0a

  ld [hl], b                                      ; $41c3: $70
  ld a, [bc]                                      ; $41c4: $0a

  db $1a, $0d, $70, $0a, $06, $0c

  ld h, b                                         ; $41cb: $60
  ld b, c                                         ; $41cc: $41

  db $45, $0c, $06, $0c, $88, $0c, $64, $0c

  ld [hl], b                                      ; $41d5: $70
  ld a, [bc]                                      ; $41d6: $0a

  db $70, $0a, $70, $0a, $70, $0a, $42, $0b, $70, $0a

  ld b, l                                         ; $41e1: $45
  inc c                                           ; $41e2: $0c

  db $42, $0b, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $41ed: $70
  ld a, [bc]                                      ; $41ee: $0a

  db $70, $0a, $70, $0a

  ld b, l                                         ; $41f3: $45
  inc c                                           ; $41f4: $0c

  db $70, $0a, $70, $0a, $70, $0a, $42, $0b, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $4203: $70
  ld a, [bc]                                      ; $4204: $0a

  db $70, $0a, $70, $0a

  ld [hl], b                                      ; $4209: $70
  ld a, [bc]                                      ; $420a: $0a

  db $70, $0a, $70, $0a, $70, $0a, $ef, $0b, $d1, $0b, $70, $0a, $70, $0a, $70, $0a
  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a
  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $4237: $70
  ld a, [bc]                                      ; $4238: $0a
  ld [hl], b                                      ; $4239: $70
  ld a, [bc]                                      ; $423a: $0a
  ld [hl], b                                      ; $423b: $70
  ld a, [bc]                                      ; $423c: $0a

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $424d: $70
  ld a, [bc]                                      ; $424e: $0a

  db $70, $0a

  ld [hl], b                                      ; $4251: $70
  ld a, [bc]                                      ; $4252: $0a

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a
  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $4271: $70
  ld a, [bc]                                      ; $4272: $0a

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a
  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a
  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $88, $0c, $70, $0a, $70, $0a
  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $42af: $70
  ld a, [bc]                                      ; $42b0: $0a

  db $ef, $0a, $ef, $0a, $ef, $0a, $ef, $0a, $ef, $0a, $70, $0a

  ld [hl], b                                      ; $42bd: $70
  ld a, [bc]                                      ; $42be: $0a

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld h, b                                         ; $42c9: $60
  ld b, c                                         ; $42ca: $41

  db $73, $0b, $9d, $0b, $8f, $0b, $81, $0b

  ld h, b                                         ; $42d3: $60
  ld b, c                                         ; $42d4: $41

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $42df: $70
  ld a, [bc]                                      ; $42e0: $0a
  ld [hl], b                                      ; $42e1: $70
  ld a, [bc]                                      ; $42e2: $0a
  ld [hl], b                                      ; $42e3: $70
  ld a, [bc]                                      ; $42e4: $0a
  ld [hl], b                                      ; $42e5: $70
  ld a, [bc]                                      ; $42e6: $0a
  ld [hl], b                                      ; $42e7: $70
  ld a, [bc]                                      ; $42e8: $0a
  ld [hl], b                                      ; $42e9: $70
  ld a, [bc]                                      ; $42ea: $0a
  ld [hl], b                                      ; $42eb: $70
  ld a, [bc]                                      ; $42ec: $0a
  ld [hl], b                                      ; $42ed: $70
  ld a, [bc]                                      ; $42ee: $0a
  ld [hl], b                                      ; $42ef: $70
  ld a, [bc]                                      ; $42f0: $0a
  ld [hl], b                                      ; $42f1: $70
  ld a, [bc]                                      ; $42f2: $0a

  db $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $42f9: $70
  ld a, [bc]                                      ; $42fa: $0a
  ld [hl], b                                      ; $42fb: $70
  ld a, [bc]                                      ; $42fc: $0a

  db $70, $0a

  ld c, e                                         ; $42ff: $4b
  inc c                                           ; $4300: $0c
  ld [hl], b                                      ; $4301: $70
  ld a, [bc]                                      ; $4302: $0a
  ld [hl], b                                      ; $4303: $70
  ld a, [bc]                                      ; $4304: $0a
  ld [hl], b                                      ; $4305: $70
  ld a, [bc]                                      ; $4306: $0a

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $4317: $70
  ld a, [bc]                                      ; $4318: $0a
  ld [hl], b                                      ; $4319: $70
  ld a, [bc]                                      ; $431a: $0a

  db $ef, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $4321: $70
  ld a, [bc]                                      ; $4322: $0a
  ld [hl], b                                      ; $4323: $70
  ld a, [bc]                                      ; $4324: $0a

  db $70, $0a, $70, $0a

  ld [hl], b                                      ; $4329: $70
  ld a, [bc]                                      ; $432a: $0a

  db $70, $0a

  ld [hl], b                                      ; $432d: $70
  ld a, [bc]                                      ; $432e: $0a
  ld [hl], b                                      ; $432f: $70
  ld a, [bc]                                      ; $4330: $0a
  ld h, l                                         ; $4331: $65
  dec bc                                          ; $4332: $0b
  ld [hl], b                                      ; $4333: $70
  ld a, [bc]                                      ; $4334: $0a

  db $70, $0a, $70, $0a

  ld [hl], b                                      ; $4339: $70
  ld a, [bc]                                      ; $433a: $0a

  db $57, $0b, $70, $0a

  ld h, b                                         ; $433f: $60
  ld b, c                                         ; $4340: $41

  db $70, $0a, $70, $0a, $70, $0a

  ld [hl], b                                      ; $4347: $70
  ld a, [bc]                                      ; $4348: $0a

  db $70, $0a, $70, $0a, $70, $0a, $70, $0a, $70, $0a

  and $0a                                         ; $4353: $e6 $0a
  ld e, $0b                                       ; $4355: $1e $0b
  and $0a                                         ; $4357: $e6 $0a
  inc a                                           ; $4359: $3c
  dec bc                                          ; $435a: $0b
  inc a                                           ; $435b: $3c
  dec bc                                          ; $435c: $0b
  inc a                                           ; $435d: $3c
  dec bc                                          ; $435e: $0b
  ld [hl], b                                      ; $435f: $70
  ld a, [bc]                                      ; $4360: $0a
  ld [hl], b                                      ; $4361: $70
  ld a, [bc]                                      ; $4362: $0a
  ld h, b                                         ; $4363: $60
  ld b, c                                         ; $4364: $41
  ld h, b                                         ; $4365: $60
  ld b, c                                         ; $4366: $41
  ld h, b                                         ; $4367: $60
  ld b, c                                         ; $4368: $41
  ld h, b                                         ; $4369: $60
  ld b, c                                         ; $436a: $41
  ld h, b                                         ; $436b: $60
  ld b, c                                         ; $436c: $41
  ld h, b                                         ; $436d: $60
  ld b, c                                         ; $436e: $41
  ld h, b                                         ; $436f: $60
  ld b, c                                         ; $4370: $41
  ld h, b                                         ; $4371: $60
  ld b, c                                         ; $4372: $41
  ld [hl], b                                      ; $4373: $70
  ld a, [bc]                                      ; $4374: $0a
  ld [hl], b                                      ; $4375: $70
  ld a, [bc]                                      ; $4376: $0a
  ld [hl], b                                      ; $4377: $70
  ld a, [bc]                                      ; $4378: $0a
  ld [hl], b                                      ; $4379: $70
  ld a, [bc]                                      ; $437a: $0a

  db $70, $0a

  rst $38                                         ; $437d: $ff

  db $00, $ff, $ff

  db $01                                          ; $4381: $01

  db $02, $8c, $ff

  rst $38                                         ; $4385: $ff

  db $ff, $01, $ff, $ff

  rst $38                                         ; $438a: $ff

  db $1c, $3f, $36, $43, $5c

  rst $38                                         ; $4390: $ff

  db $5e, $78, $46, $5f, $60

  ld h, c                                         ; $4396: $61

  db $62, $6b

  rst $38                                         ; $4399: $ff

  db $2f, $30, $51, $74, $79, $90, $7a

  ld a, l                                         ; $43a1: $7d

  db $7e, $7f

  add b                                           ; $43a4: $80

  db $ff, $ff, $ff, $ff, $ff, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5d
  db $64, $65, $66, $68, $69, $6a

  ld a, e                                         ; $43bb: $7b
  ld a, h                                         ; $43bc: $7c
  add c                                           ; $43bd: $81

  db $85, $86, $87, $89, $8d, $8e, $8f, $92

  adc b                                           ; $43c6: $88

  db $45

  ld c, c                                         ; $43c8: $49

  db $48, $47, $91, $82, $93, $44, $15, $16, $17, $18, $19, $1a, $1b, $1d, $1e

  rra                                             ; $43d8: $1f

  db $20, $21, $22, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $31, $32, $23
  db $33, $35, $4d, $2e, $4e, $ff, $4f, $50, $63, $67, $73, $75, $76, $8a

  adc e                                           ; $43f7: $8b

  db $03, $ff, $ff, $04, $05, $ff

  sub a                                           ; $43fe: $97

  db $ff, $06, $07, $ff, $08

  add hl, bc                                      ; $4404: $09

  db $ff, $ff, $13, $14

  rst $38                                         ; $4409: $ff

  db $ff, $ff, $ff, $ff, $ff

  rst $38                                         ; $440f: $ff
  rst $38                                         ; $4410: $ff
  rst $38                                         ; $4411: $ff
  rst $38                                         ; $4412: $ff
  rst $38                                         ; $4413: $ff
  rst $38                                         ; $4414: $ff
  rst $38                                         ; $4415: $ff
  rst $38                                         ; $4416: $ff
  rst $38                                         ; $4417: $ff
  inc d                                           ; $4418: $14

  db $3d, $3e, $34

  ld a, [bc]                                      ; $441c: $0a
  dec bc                                          ; $441d: $0b

  db $0c

  rst $38                                         ; $441f: $ff
  dec c                                           ; $4420: $0d
  sub l                                           ; $4421: $95

  db $ff, $42, $ff, $37, $38, $ff, $ff, $ff, $39

  rst $38                                         ; $442b: $ff
  rst $38                                         ; $442c: $ff

  db $ff, $ff, $ff

  rst $38                                         ; $4430: $ff
  rst $38                                         ; $4431: $ff

  db $70, $71

  ld [hl], d                                      ; $4434: $72

  db $0e

  rrca                                            ; $4436: $0f
  db $10                                          ; $4437: $10
  db $11                                          ; $4438: $11
  ld [de], a                                      ; $4439: $12

  db $3a, $3b

  inc a                                           ; $443c: $3c

  db $40, $41

  rst $38                                         ; $443f: $ff

  db $ff, $ff, $ff

  ld c, d                                         ; $4443: $4a

  db $4b, $4c, $6c, $6d, $ff

  ld l, [hl]                                      ; $4449: $6e
  rst $38                                         ; $444a: $ff
  ld l, a                                         ; $444b: $6f
  rst $38                                         ; $444c: $ff
  rst $38                                         ; $444d: $ff
  rst $38                                         ; $444e: $ff
  ld [bc], a                                      ; $444f: $02
  rst $38                                         ; $4450: $ff
  rst $38                                         ; $4451: $ff
  rst $38                                         ; $4452: $ff
  rst $38                                         ; $4453: $ff
  rst $38                                         ; $4454: $ff
  rst $38                                         ; $4455: $ff
  rst $38                                         ; $4456: $ff
  rst $38                                         ; $4457: $ff
  rst $38                                         ; $4458: $ff
  adc e                                           ; $4459: $8b
  add e                                           ; $445a: $83
  add h                                           ; $445b: $84
  sub h                                           ; $445c: $94

  db $96, $00, $00, $6f, $0f, $f3, $0f, $00, $00, $b2, $05, $e9, $07, $d4, $11, $6e
  db $12, $74, $12

  ret c                                           ; $4470: $d8

  rrca                                            ; $4471: $0f
  ld e, b                                         ; $4472: $58
  inc de                                          ; $4473: $13
  ld h, h                                         ; $4474: $64
  inc de                                          ; $4475: $13

  db $06, $10

  dec h                                           ; $4478: $25
  db $10                                          ; $4479: $10

  db $29, $10

  or l                                            ; $447c: $b5
  dec c                                           ; $447d: $0d
  rst $18                                         ; $447e: $df
  dec c                                           ; $447f: $0d
  rrca                                            ; $4480: $0f
  ld c, $19                                       ; $4481: $0e $19
  db $0e                                          ; $4483: $0e

  db $f9, $10, $4e, $11, $4e, $01, $1a, $01, $52, $01, $53, $01, $54, $01, $55, $01
  db $56, $01, $60, $01, $f9, $01, $1f, $02

  adc h                                           ; $449c: $8c
  ld [bc], a                                      ; $449d: $02

  db $a7, $02, $f4, $02, $14, $03, $30, $03, $17, $04, $2c, $04, $41, $04, $56, $04
  db $6b, $04, $80, $04, $95, $04, $54, $05, $4b, $03, $66, $03, $8e, $03, $c9, $03
  db $f0, $03, $6e, $05, $9b, $05, $04, $06, $f3, $10, $86, $0d, $ef, $05, $bd, $11
  db $3b, $0e, $93, $0e, $70, $12, $72, $12

  ld [hl], e                                      ; $44d6: $73
  ld [de], a                                      ; $44d7: $12

  db $6f, $12, $71, $12, $08, $09, $77, $0f, $c1, $0f, $00, $00, $f8, $0b, $80, $01
  db $2e, $07, $49, $07, $64, $07, $ba, $07

  ret nc                                          ; $44f0: $d0

  rlca                                            ; $44f1: $07
  ld e, $0e                                       ; $44f2: $1e $0e

  db $86, $12, $94, $12, $87, $02, $3f, $05, $e5, $07, $9b, $0c, $9e, $0c, $b3, $0c
  db $c8, $0c, $dd, $0c, $f2, $0c, $07, $0d, $1c, $0d, $32, $0d, $47, $0d, $5c, $0d
  db $71, $0d, $85, $01, $8b, $02, $15, $09, $fc, $07, $1f, $08

  dec [hl]                                        ; $4520: $35
  db $08                                          ; $4521: $08

  db $4a, $08, $93, $01, $c5, $05, $da, $05, $d8, $02, $f2, $06, $a9, $03, $2a, $05
  db $15, $05, $f7, $04, $bc, $0e, $f4, $0e

  ld b, e                                         ; $453a: $43
  db $10                                          ; $453b: $10
  sbc e                                           ; $453c: $9b
  db $10                                          ; $453d: $10

  db $b3, $01, $b4, $01

  ldh [c], a                                      ; $4542: $e2
  db $01                                          ; $4543: $01

  db $a3, $0b, $b0, $05, $97, $01, $97, $01

  ccf                                             ; $454c: $3f
  ld a, [bc]                                      ; $454d: $0a

  db $f2, $01, $00, $05, $8b, $0b

  dec c                                           ; $4554: $0d
  rlca                                            ; $4555: $07
  daa                                             ; $4556: $27
  rlca                                            ; $4557: $07
  jr z, @+$10                                     ; $4558: $28 $0e

  db $c4, $04, $af, $04

  rlca                                            ; $455e: $07
  ld bc, $015b                                    ; $455f: $01 $5b $01

  db $aa, $0c

  and a                                           ; $4564: $a7
  ld [de], a                                      ; $4565: $12
  pop bc                                          ; $4566: $c1
  ld [de], a                                      ; $4567: $12

  db $87, $07, $9d, $0c, $a3, $07

  or b                                            ; $456e: $b0
  rlca                                            ; $456f: $07

  db $cf, $07, $ff, $04

  db $ec                                          ; $4574: $ec
  db $01                                          ; $4575: $01

  db $0c, $01, $f0, $04, $f1, $04, $f2, $04, $f3, $04, $f4, $04, $f5, $04, $f6, $04

  dec de                                          ; $4586: $1b
  inc de                                          ; $4587: $13
  sbc e                                           ; $4588: $9b
  ld [de], a                                      ; $4589: $12

  db $94, $01

  ld c, h                                         ; $458c: $4c
  inc c                                           ; $458d: $0c
  nop                                             ; $458e: $00
  rst $38                                         ; $458f: $ff

  db $ff, $ff

  rst $38                                         ; $4592: $ff
  rst $38                                         ; $4593: $ff
  rst $38                                         ; $4594: $ff

  db $ff

  rst $38                                         ; $4596: $ff

  db $ff

  rst $38                                         ; $4598: $ff

  db $ff, $ff

  ld [hl-], a                                     ; $459b: $32
  rst $38                                         ; $459c: $ff
  rst $38                                         ; $459d: $ff
  rst $38                                         ; $459e: $ff
  rst $38                                         ; $459f: $ff
  rst $38                                         ; $45a0: $ff
  rst $38                                         ; $45a1: $ff
  rst $38                                         ; $45a2: $ff
  rst $38                                         ; $45a3: $ff
  rst $38                                         ; $45a4: $ff
  rst $38                                         ; $45a5: $ff
  rst $38                                         ; $45a6: $ff
  rst $38                                         ; $45a7: $ff
  rst $38                                         ; $45a8: $ff
  rst $38                                         ; $45a9: $ff
  rst $38                                         ; $45aa: $ff
  rst $38                                         ; $45ab: $ff
  rst $38                                         ; $45ac: $ff
  rst $38                                         ; $45ad: $ff
  rst $38                                         ; $45ae: $ff
  rst $38                                         ; $45af: $ff
  rst $38                                         ; $45b0: $ff
  rst $38                                         ; $45b1: $ff
  rst $38                                         ; $45b2: $ff
  rst $38                                         ; $45b3: $ff
  rst $38                                         ; $45b4: $ff
  rst $38                                         ; $45b5: $ff

  db $25, $21, $22, $24, $23

  rst $38                                         ; $45bb: $ff
  rst $38                                         ; $45bc: $ff
  rst $38                                         ; $45bd: $ff
  rst $38                                         ; $45be: $ff
  rst $38                                         ; $45bf: $ff
  rst $38                                         ; $45c0: $ff
  rst $38                                         ; $45c1: $ff
  rst $38                                         ; $45c2: $ff
  rst $38                                         ; $45c3: $ff
  rst $38                                         ; $45c4: $ff
  rst $38                                         ; $45c5: $ff
  rst $38                                         ; $45c6: $ff
  rst $38                                         ; $45c7: $ff
  rst $38                                         ; $45c8: $ff
  rst $38                                         ; $45c9: $ff
  rst $38                                         ; $45ca: $ff
  rst $38                                         ; $45cb: $ff
  rst $38                                         ; $45cc: $ff
  rst $38                                         ; $45cd: $ff
  rst $38                                         ; $45ce: $ff
  rst $38                                         ; $45cf: $ff
  rst $38                                         ; $45d0: $ff
  rst $38                                         ; $45d1: $ff
  rst $38                                         ; $45d2: $ff
  rst $38                                         ; $45d3: $ff
  rst $38                                         ; $45d4: $ff
  rst $38                                         ; $45d5: $ff
  rst $38                                         ; $45d6: $ff
  rst $38                                         ; $45d7: $ff
  rst $38                                         ; $45d8: $ff
  rst $38                                         ; $45d9: $ff
  rst $38                                         ; $45da: $ff
  rst $38                                         ; $45db: $ff
  rst $38                                         ; $45dc: $ff
  rst $38                                         ; $45dd: $ff
  rst $38                                         ; $45de: $ff
  rst $38                                         ; $45df: $ff
  rst $38                                         ; $45e0: $ff
  rst $38                                         ; $45e1: $ff
  rst $38                                         ; $45e2: $ff
  rst $38                                         ; $45e3: $ff
  rst $38                                         ; $45e4: $ff
  rst $38                                         ; $45e5: $ff
  rst $38                                         ; $45e6: $ff
  rst $38                                         ; $45e7: $ff
  rst $38                                         ; $45e8: $ff
  rst $38                                         ; $45e9: $ff
  rst $38                                         ; $45ea: $ff
  rst $38                                         ; $45eb: $ff
  rst $38                                         ; $45ec: $ff
  rst $38                                         ; $45ed: $ff
  rst $38                                         ; $45ee: $ff
  rst $38                                         ; $45ef: $ff
  rst $38                                         ; $45f0: $ff
  rst $38                                         ; $45f1: $ff
  rst $38                                         ; $45f2: $ff
  rst $38                                         ; $45f3: $ff
  rst $38                                         ; $45f4: $ff
  rst $38                                         ; $45f5: $ff
  rst $38                                         ; $45f6: $ff
  rst $38                                         ; $45f7: $ff
  rst $38                                         ; $45f8: $ff
  rst $38                                         ; $45f9: $ff
  rst $38                                         ; $45fa: $ff
  rst $38                                         ; $45fb: $ff
  rst $38                                         ; $45fc: $ff
  rst $38                                         ; $45fd: $ff
  rst $38                                         ; $45fe: $ff

  db $17

  rst $38                                         ; $4600: $ff
  rst $38                                         ; $4601: $ff
  rst $38                                         ; $4602: $ff
  rst $38                                         ; $4603: $ff
  rst $38                                         ; $4604: $ff
  rst $38                                         ; $4605: $ff
  rst $38                                         ; $4606: $ff
  rst $38                                         ; $4607: $ff
  rst $38                                         ; $4608: $ff
  rst $38                                         ; $4609: $ff

  db $0b, $0c

  rst $38                                         ; $460c: $ff
  rst $38                                         ; $460d: $ff

  db $00

  rst $38                                         ; $460f: $ff

  db $0d

  rst $38                                         ; $4611: $ff
  rst $38                                         ; $4612: $ff

  db $0f

  rst $38                                         ; $4614: $ff
  rst $38                                         ; $4615: $ff

  db $1b, $1c

  rst $38                                         ; $4618: $ff
  rst $38                                         ; $4619: $ff
  rst $38                                         ; $461a: $ff

  db $1d, $1e, $1f, $20, $01

  ld [bc], a                                      ; $4620: $02
  inc bc                                          ; $4621: $03
  inc b                                           ; $4622: $04
  dec b                                           ; $4623: $05
  ld b, $07                                       ; $4624: $06 $07
  ld [$0a09], sp                                  ; $4626: $08 $09 $0a
  rst $38                                         ; $4629: $ff
  rst $38                                         ; $462a: $ff
  rst $38                                         ; $462b: $ff
  rst $38                                         ; $462c: $ff
  rst $38                                         ; $462d: $ff
  rst $38                                         ; $462e: $ff
  rst $38                                         ; $462f: $ff
  rst $38                                         ; $4630: $ff
  rst $38                                         ; $4631: $ff
  rst $38                                         ; $4632: $ff

  db $15

  rst $38                                         ; $4634: $ff

  db $26

  rst $38                                         ; $4636: $ff
  rst $38                                         ; $4637: $ff

  db $29, $2a, $2b

  rst $38                                         ; $463b: $ff
  inc l                                           ; $463c: $2c
  add hl, de                                      ; $463d: $19

  db $ff, $0c, $16

  rst $38                                         ; $4641: $ff
  rst $38                                         ; $4642: $ff
  rst $38                                         ; $4643: $ff
  rst $38                                         ; $4644: $ff
  rst $38                                         ; $4645: $ff
  rst $38                                         ; $4646: $ff
  rst $38                                         ; $4647: $ff
  rst $38                                         ; $4648: $ff
  rst $38                                         ; $4649: $ff
  rst $38                                         ; $464a: $ff
  rst $38                                         ; $464b: $ff
  rst $38                                         ; $464c: $ff
  rst $38                                         ; $464d: $ff
  rst $38                                         ; $464e: $ff
  rst $38                                         ; $464f: $ff
  rst $38                                         ; $4650: $ff

  db $18, $19, $1a

  rst $38                                         ; $4654: $ff
  rst $38                                         ; $4655: $ff
  rst $38                                         ; $4656: $ff
  rst $38                                         ; $4657: $ff
  rst $38                                         ; $4658: $ff

  db $2d

  rst $38                                         ; $465a: $ff
  ld l, $ff                                       ; $465b: $2e $ff
  cpl                                             ; $465d: $2f
  jr nc, @+$33                                    ; $465e: $30 $31

  rst $38                                         ; $4660: $ff
  inc h                                           ; $4661: $24
  rst $38                                         ; $4662: $ff
  rst $38                                         ; $4663: $ff
  rst $38                                         ; $4664: $ff
  rst $38                                         ; $4665: $ff
  rst $38                                         ; $4666: $ff
  rst $38                                         ; $4667: $ff
  rst $38                                         ; $4668: $ff
  rst $38                                         ; $4669: $ff
  rst $38                                         ; $466a: $ff
  rst $38                                         ; $466b: $ff
  rst $38                                         ; $466c: $ff
  rst $38                                         ; $466d: $ff
  rst $38                                         ; $466e: $ff

  push af                                         ; $466f: $f5
  ld hl, $437d                                    ; $4670: $21 $7d $43
  rst $08                                         ; $4673: $cf
  cp $ff                                          ; $4674: $fe $ff
  pop hl                                          ; $4676: $e1
  ret nz                                          ; $4677: $c0

  ld a, h                                         ; $4678: $7c
  ld hl, $458e                                    ; $4679: $21 $8e $45
  rst $08                                         ; $467c: $cf
  cp $ff                                          ; $467d: $fe $ff
  ret z                                           ; $467f: $c8

  push af                                         ; $4680: $f5
  ld hl, $cc62                                    ; $4681: $21 $62 $cc
  rst $08                                         ; $4684: $cf
  cp $ff                                          ; $4685: $fe $ff
  pop de                                          ; $4687: $d1
  ret nz                                          ; $4688: $c0

  ldh a, [$ffb9]                                  ; $4689: $f0 $b9
  ld [hl], a                                      ; $468b: $77
  ld a, c                                         ; $468c: $79
  ldh [rVBK], a                                   ; $468d: $e0 $4f
  ld a, d                                         ; $468f: $7a
  ld hl, $6602                                    ; $4690: $21 $02 $66
  jp Jump_000_2a53                                ; $4693: $c3 $53 $2a


  ld hl, $437d                                    ; $4696: $21 $7d $43
  rst $08                                         ; $4699: $cf
  cp $ff                                          ; $469a: $fe $ff
  jr nz, jr_001_46c0                              ; $469c: $20 $22

  ld hl, $0025                                    ; $469e: $21 $25 $00
  add hl, bc                                      ; $46a1: $09
  ld e, l                                         ; $46a2: $5d
  ld d, h                                         ; $46a3: $54
  ld [hl+], a                                     ; $46a4: $22
  ld [hl], a                                      ; $46a5: $77
  ld a, [bc]                                      ; $46a6: $0a
  ld hl, $458e                                    ; $46a7: $21 $8e $45
  rst $08                                         ; $46aa: $cf
  cp $ff                                          ; $46ab: $fe $ff
  ret z                                           ; $46ad: $c8

  ld [de], a                                      ; $46ae: $12
  ld e, a                                         ; $46af: $5f
  ld hl, $cc62                                    ; $46b0: $21 $62 $cc
  rst $08                                         ; $46b3: $cf
  ld hl, $002e                                    ; $46b4: $21 $2e $00
  add hl, bc                                      ; $46b7: $09
  ld [hl], a                                      ; $46b8: $77
  ld hl, $002d                                    ; $46b9: $21 $2d $00
  add hl, bc                                      ; $46bc: $09
  set 2, [hl]                                     ; $46bd: $cb $d6
  ret                                             ; $46bf: $c9


jr_001_46c0:
  ld hl, $445e                                    ; $46c0: $21 $5e $44
  call Call_000_3182                              ; $46c3: $cd $82 $31
  ld hl, $0025                                    ; $46c6: $21 $25 $00
  add hl, bc                                      ; $46c9: $09
  ld [hl], e                                      ; $46ca: $73
  inc hl                                          ; $46cb: $23
  ld [hl], d                                      ; $46cc: $72
  ld hl, $002e                                    ; $46cd: $21 $2e $00
  add hl, bc                                      ; $46d0: $09
  ld [hl], $ff                                    ; $46d1: $36 $ff
  ret                                             ; $46d3: $c9


  ld hl, $ff91                                    ; $46d4: $21 $91 $ff
  ld a, [hl+]                                     ; $46d7: $2a
  ld h, [hl]                                      ; $46d8: $66
  ld l, a                                         ; $46d9: $6f
  ld de, $fef0                                    ; $46da: $11 $f0 $fe
  add hl, de                                      ; $46dd: $19
  ld e, l                                         ; $46de: $5d
  ld d, h                                         ; $46df: $54
  ld hl, $ffae                                    ; $46e0: $21 $ae $ff
  ld a, [hl]                                      ; $46e3: $7e
  sub e                                           ; $46e4: $93
  ld [hl+], a                                     ; $46e5: $22
  ld a, [hl]                                      ; $46e6: $7e
  sbc d                                           ; $46e7: $9a
  ld [hl], a                                      ; $46e8: $77
  ld hl, $ff8f                                    ; $46e9: $21 $8f $ff
  ld a, [hl+]                                     ; $46ec: $2a
  ld h, [hl]                                      ; $46ed: $66
  ld l, a                                         ; $46ee: $6f
  ld de, $fef8                                    ; $46ef: $11 $f8 $fe
  add hl, de                                      ; $46f2: $19
  ld e, l                                         ; $46f3: $5d
  ld d, h                                         ; $46f4: $54
  ld hl, $ffac                                    ; $46f5: $21 $ac $ff
  ld a, [hl]                                      ; $46f8: $7e
  sub e                                           ; $46f9: $93
  ld [hl+], a                                     ; $46fa: $22
  ld a, [hl]                                      ; $46fb: $7e
  sbc d                                           ; $46fc: $9a
  ld [hl], a                                      ; $46fd: $77
  ret                                             ; $46fe: $c9


  ldh a, [rSVBK]                                  ; $46ff: $f0 $70
  push af                                         ; $4701: $f5
  ld a, $07                                       ; $4702: $3e $07
  ldh [rSVBK], a                                  ; $4704: $e0 $70
  ld hl, $c09c                                    ; $4706: $21 $9c $c0
  ld a, [hl+]                                     ; $4709: $2a
  ld h, [hl]                                      ; $470a: $66
  ld l, a                                         ; $470b: $6f
  ld a, $a0                                       ; $470c: $3e $a0
  sub l                                           ; $470e: $95
  ret z                                           ; $470f: $c8

  rra                                             ; $4710: $1f
  rra                                             ; $4711: $1f
  ld e, a                                         ; $4712: $5f
  xor a                                           ; $4713: $af

jr_001_4714:
  ld [hl+], a                                     ; $4714: $22
  ld [hl+], a                                     ; $4715: $22
  ld [hl+], a                                     ; $4716: $22
  ld [hl+], a                                     ; $4717: $22
  dec e                                           ; $4718: $1d
  jr nz, jr_001_4714                              ; $4719: $20 $f9

  pop af                                          ; $471b: $f1
  ldh [rSVBK], a                                  ; $471c: $e0 $70
  ret                                             ; $471e: $c9


  ldh a, [$ff8f]                                  ; $471f: $f0 $8f
  ldh [$ffc8], a                                  ; $4721: $e0 $c8
  ldh a, [$ff91]                                  ; $4723: $f0 $91
  ldh [$ffc9], a                                  ; $4725: $e0 $c9
  ret                                             ; $4727: $c9


Call_001_4728:
  ld hl, $ffff                                    ; $4728: $21 $ff $ff
  ld a, [hl]                                      ; $472b: $7e
  ld [$cdad], a                                   ; $472c: $ea $ad $cd
  res 0, [hl]                                     ; $472f: $cb $86

jr_001_4731:
  ldh a, [rLY]                                    ; $4731: $f0 $44
  cp $7d                                          ; $4733: $fe $7d
  jr c, jr_001_4731                               ; $4735: $38 $fa

  res 2, [hl]                                     ; $4737: $cb $96

jr_001_4739:
  ldh a, [rLY]                                    ; $4739: $f0 $44
  cp $91                                          ; $473b: $fe $91
  jr c, jr_001_4739                               ; $473d: $38 $fa

  ldh a, [rLCDC]                                  ; $473f: $f0 $40
  and $7f                                         ; $4741: $e6 $7f
  ldh [rLCDC], a                                  ; $4743: $e0 $40
  ld a, [$cdad]                                   ; $4745: $fa $ad $cd
  ld [hl], a                                      ; $4748: $77
  ret                                             ; $4749: $c9


  ldh a, [rKEY1]                                  ; $474a: $f0 $4d
  bit 7, a                                        ; $474c: $cb $7f
  ret nz                                          ; $474e: $c0

  ld a, $01                                       ; $474f: $3e $01
  ldh [rKEY1], a                                  ; $4751: $e0 $4d
  ldh a, [rIE]                                    ; $4753: $f0 $ff
  push af                                         ; $4755: $f5
  xor a                                           ; $4756: $af
  ldh [rIE], a                                    ; $4757: $e0 $ff
  ld a, $30                                       ; $4759: $3e $30
  ldh [rP1], a                                    ; $475b: $e0 $00
  stop                                            ; $475d: $10 $00

jr_001_475f:
  ldh a, [rKEY1]                                  ; $475f: $f0 $4d
  bit 7, a                                        ; $4761: $cb $7f
  jr z, jr_001_475f                               ; $4763: $28 $fa

  xor a                                           ; $4765: $af
  ldh [rP1], a                                    ; $4766: $e0 $00
  ldh [rIF], a                                    ; $4768: $e0 $0f
  pop af                                          ; $476a: $f1
  ldh [rIE], a                                    ; $476b: $e0 $ff
  ret                                             ; $476d: $c9


  ldh a, [rKEY1]                                  ; $476e: $f0 $4d
  bit 7, a                                        ; $4770: $cb $7f
  ret z                                           ; $4772: $c8

  ld a, $01                                       ; $4773: $3e $01
  ldh [rKEY1], a                                  ; $4775: $e0 $4d
  ldh a, [rIE]                                    ; $4777: $f0 $ff
  push af                                         ; $4779: $f5
  xor a                                           ; $477a: $af
  ldh [rIE], a                                    ; $477b: $e0 $ff
  ld a, $30                                       ; $477d: $3e $30
  ldh [rP1], a                                    ; $477f: $e0 $00
  stop                                            ; $4781: $10 $00

jr_001_4783:
  ldh a, [rKEY1]                                  ; $4783: $f0 $4d
  bit 7, a                                        ; $4785: $cb $7f
  jr nz, jr_001_4783                              ; $4787: $20 $fa

  xor a                                           ; $4789: $af
  ldh [rP1], a                                    ; $478a: $e0 $00
  ldh [rIF], a                                    ; $478c: $e0 $0f
  pop af                                          ; $478e: $f1
  ldh [rIE], a                                    ; $478f: $e0 $ff
  ret                                             ; $4791: $c9


  nop                                             ; $4792: $00
  nop                                             ; $4793: $00

  ldh a, [$ffa6]                                  ; $4794: $f0 $a6
  and $01                                         ; $4796: $e6 $01
  jr nz, jr_001_479c                              ; $4798: $20 $02

  scf                                             ; $479a: $37
  ret                                             ; $479b: $c9


Call_001_479c:
jr_001_479c:
  ld hl, $002c                                    ; $479c: $21 $2c $00
  add hl, bc                                      ; $479f: $09
  bit 4, [hl]                                     ; $47a0: $cb $66
  jr nz, jr_001_47a6                              ; $47a2: $20 $02

  scf                                             ; $47a4: $37
  ret                                             ; $47a5: $c9


jr_001_47a6:
  ld hl, $003b                                    ; $47a6: $21 $3b $00
  add hl, bc                                      ; $47a9: $09
  ld de, $cab8                                    ; $47aa: $11 $b8 $ca
  call Call_001_47b8                              ; $47ad: $cd $b8 $47
  ret c                                           ; $47b0: $d8

  ld hl, $003f                                    ; $47b1: $21 $3f $00
  add hl, bc                                      ; $47b4: $09
  ld de, $cabc                                    ; $47b5: $11 $bc $ca

Call_001_47b8:
Jump_001_47b8:
  call Call_001_47cb                              ; $47b8: $cd $cb $47
  jr c, jr_001_47c1                               ; $47bb: $38 $04

  push de                                         ; $47bd: $d5
  ld d, h                                         ; $47be: $54
  ld e, l                                         ; $47bf: $5d
  pop hl                                          ; $47c0: $e1

jr_001_47c1:
  inc de                                          ; $47c1: $13
  inc de                                          ; $47c2: $13
  ld a, [de]                                      ; $47c3: $1a
  cp [hl]                                         ; $47c4: $be
  ret nz                                          ; $47c5: $c0

  dec hl                                          ; $47c6: $2b
  dec de                                          ; $47c7: $1b
  ld a, [de]                                      ; $47c8: $1a
  cp [hl]                                         ; $47c9: $be
  ret                                             ; $47ca: $c9


Call_001_47cb:
  ld a, [de]                                      ; $47cb: $1a
  cp [hl]                                         ; $47cc: $be
  ret nz                                          ; $47cd: $c0

  dec de                                          ; $47ce: $1b
  dec hl                                          ; $47cf: $2b
  ld a, [de]                                      ; $47d0: $1a
  inc de                                          ; $47d1: $13
  cp [hl]                                         ; $47d2: $be
  inc hl                                          ; $47d3: $23
  ret                                             ; $47d4: $c9


  push bc                                         ; $47d5: $c5
  jr jr_001_47e6                                  ; $47d6: $18 $0e

  push bc                                         ; $47d8: $c5
  ld hl, $c2fb                                    ; $47d9: $21 $fb $c2
  bit 4, [hl]                                     ; $47dc: $cb $66
  jr nz, jr_001_47e6                              ; $47de: $20 $06

  ld a, [$caf3]                                   ; $47e0: $fa $f3 $ca
  or a                                            ; $47e3: $b7
  jr z, jr_001_4828                               ; $47e4: $28 $42

jr_001_47e6:
  ld bc, $c323                                    ; $47e6: $01 $23 $c3

jr_001_47e9:
  ld a, [bc]                                      ; $47e9: $0a
  or a                                            ; $47ea: $b7
  jr z, jr_001_480d                               ; $47eb: $28 $20

  cp $7b                                          ; $47ed: $fe $7b
  jr nc, jr_001_480d                              ; $47ef: $30 $1c

  ld hl, $0051                                    ; $47f1: $21 $51 $00
  add hl, bc                                      ; $47f4: $09
  ld a, [hl]                                      ; $47f5: $7e
  or a                                            ; $47f6: $b7
  jr nz, jr_001_480d                              ; $47f7: $20 $14

  ld a, [bc]                                      ; $47f9: $0a
  ld d, a                                         ; $47fa: $57
  ld hl, $4839                                    ; $47fb: $21 $39 $48

jr_001_47fe:
  ld a, [hl]                                      ; $47fe: $7e
  or a                                            ; $47ff: $b7
  jr z, jr_001_4808                               ; $4800: $28 $06

  cp d                                            ; $4802: $ba
  jr z, jr_001_480d                               ; $4803: $28 $08

  inc hl                                          ; $4805: $23
  jr jr_001_47fe                                  ; $4806: $18 $f6

jr_001_4808:
  call Call_001_479c                              ; $4808: $cd $9c $47
  jr nc, jr_001_482b                              ; $480b: $30 $1e

jr_001_480d:
  ld hl, $0054                                    ; $480d: $21 $54 $00
  add hl, bc                                      ; $4810: $09
  ld b, h                                         ; $4811: $44
  ld c, l                                         ; $4812: $4d
  ld de, $caaf                                    ; $4813: $11 $af $ca
  rst $10                                         ; $4816: $d7
  jr nz, jr_001_47e9                              ; $4817: $20 $d0

  ld a, [$caf3]                                   ; $4819: $fa $f3 $ca
  or a                                            ; $481c: $b7
  jr z, jr_001_4828                               ; $481d: $28 $09

  xor a                                           ; $481f: $af
  ld [$caf3], a                                   ; $4820: $ea $f3 $ca
  ld hl, $c2fb                                    ; $4823: $21 $fb $c2
  set 4, [hl]                                     ; $4826: $cb $e6

jr_001_4828:
  scf                                             ; $4828: $37
  jr jr_001_4835                                  ; $4829: $18 $0a

jr_001_482b:
  push af                                         ; $482b: $f5
  pop de                                          ; $482c: $d1
  ld a, [$caf3]                                   ; $482d: $fa $f3 $ca
  or a                                            ; $4830: $b7
  jr nz, jr_001_4828                              ; $4831: $20 $f5

  push de                                         ; $4833: $d5
  pop af                                          ; $4834: $f1

jr_001_4835:
  ld h, b                                         ; $4835: $60
  ld l, c                                         ; $4836: $69
  pop bc                                          ; $4837: $c1
  ret                                             ; $4838: $c9


  db $09, $07, $04, $02, $0b, $0c, $13, $1c, $03, $05, $71, $0a, $00

  ld a, [bc]                                      ; $4846: $0a
  cp $7b                                          ; $4847: $fe $7b
  jr nc, jr_001_4872                              ; $4849: $30 $27

  ld d, a                                         ; $484b: $57
  ld hl, $4839                                    ; $484c: $21 $39 $48

jr_001_484f:
  ld a, [hl]                                      ; $484f: $7e
  or a                                            ; $4850: $b7
  jr z, jr_001_4859                               ; $4851: $28 $06

  cp d                                            ; $4853: $ba
  jr z, jr_001_4872                               ; $4854: $28 $1c

  inc hl                                          ; $4856: $23
  jr jr_001_484f                                  ; $4857: $18 $f6

jr_001_4859:
  ld hl, $cdb2                                    ; $4859: $21 $b2 $cd
  ld de, $cab8                                    ; $485c: $11 $b8 $ca
  call Call_001_47b8                              ; $485f: $cd $b8 $47
  jr c, jr_001_4872                               ; $4862: $38 $0e

  ld hl, $003f                                    ; $4864: $21 $3f $00
  add hl, bc                                      ; $4867: $09
  ld de, $cabc                                    ; $4868: $11 $bc $ca
  call Call_001_47b8                              ; $486b: $cd $b8 $47
  jr c, jr_001_4872                               ; $486e: $38 $02

  xor a                                           ; $4870: $af
  ret                                             ; $4871: $c9


jr_001_4872:
  ld a, $02                                       ; $4872: $3e $02
  dec a                                           ; $4874: $3d
  ret                                             ; $4875: $c9


  ld hl, $003b                                    ; $4876: $21 $3b $00
  add hl, bc                                      ; $4879: $09
  ld de, $cab8                                    ; $487a: $11 $b8 $ca
  call Call_001_47b8                              ; $487d: $cd $b8 $47
  ret c                                           ; $4880: $d8

  ld hl, $003f                                    ; $4881: $21 $3f $00
  add hl, bc                                      ; $4884: $09
  ld de, $cabc                                    ; $4885: $11 $bc $ca
  jp Jump_001_47b8                                ; $4888: $c3 $b8 $47


  call Call_000_0a46                              ; $488b: $cd $46 $0a
  scf                                             ; $488e: $37
  ret nz                                          ; $488f: $c0

  push hl                                         ; $4890: $e5
  push hl                                         ; $4891: $e5
  ld e, l                                         ; $4892: $5d
  ld d, h                                         ; $4893: $54
  ld hl, $003b                                    ; $4894: $21 $3b $00
  add hl, bc                                      ; $4897: $09
  push hl                                         ; $4898: $e5
  ld hl, $003b                                    ; $4899: $21 $3b $00
  add hl, de                                      ; $489c: $19
  pop de                                          ; $489d: $d1
  call Call_001_47b8                              ; $489e: $cd $b8 $47
  pop hl                                          ; $48a1: $e1
  jr c, jr_001_48b3                               ; $48a2: $38 $0f

  ld de, $003f                                    ; $48a4: $11 $3f $00
  add hl, de                                      ; $48a7: $19
  push hl                                         ; $48a8: $e5
  ld hl, $003f                                    ; $48a9: $21 $3f $00
  add hl, bc                                      ; $48ac: $09
  ld e, l                                         ; $48ad: $5d
  ld d, h                                         ; $48ae: $54
  pop hl                                          ; $48af: $e1
  call Call_001_47b8                              ; $48b0: $cd $b8 $47

jr_001_48b3:
  pop hl                                          ; $48b3: $e1
  ret                                             ; $48b4: $c9


  db $06

  db $06                                          ; $48b6: $06

  db $07

  nop                                             ; $48b8: $00
  nop                                             ; $48b9: $00
  nop                                             ; $48ba: $00
  nop                                             ; $48bb: $00
  nop                                             ; $48bc: $00

  db $ad, $49, $f5, $49, $fe, $49, $07, $4a, $22, $4a, $3d, $4a, $58, $4a, $61, $4a
  db $85, $4a, $8e, $4a, $97, $4a, $bb, $4a, $c4, $4a, $cd, $4a, $d6, $4a, $df, $4a
  db $e8, $4a, $f1, $4a, $54, $4b, $5d, $4b, $6f, $4b, $9c, $4b, $a5, $4b

  xor [hl]                                        ; $48eb: $ae
  ld c, e                                         ; $48ec: $4b

  db $b7, $4b, $c0, $4b, $c9, $4b, $d2, $4b, $db, $4b, $f6, $4b, $11, $4c, $1a, $4c
  db $23, $4c, $2c, $4c, $35, $4c, $59, $4c, $6b, $4c, $aa, $4c, $bc, $4c, $04, $4d
  db $1f, $4d, $70, $4d, $a6, $4d, $ee, $4d, $2d, $4e, $6c, $4e, $a2, $4e, $e1, $4e
  db $20, $4f, $4d, $4f, $5f, $4f, $68, $4f, $95, $4f, $9e, $4f, $a7, $4f, $b9, $4f
  db $c2, $4f, $cb, $4f, $dd, $4f, $ef, $4f, $01, $50, $1c, $50, $37, $50, $40, $50
  db $52, $50, $5b, $50, $7f, $50, $91, $50, $a3, $50, $ac, $50, $b5, $50, $be, $50
  db $c7, $50, $d0, $50, $d0, $50, $e2, $50, $eb, $50, $f4, $50, $18, $51, $21, $51
  db $2a, $51, $33, $51, $3c, $51, $45, $51, $4e, $51, $69, $51, $7b, $51, $84, $51
  db $9f, $51, $a8, $51, $ba, $51, $c3, $51, $cc, $51, $d5, $51, $de, $51, $e7, $51
  db $f9, $51, $02, $52, $0b, $52, $14, $52, $1d, $52

  ld h, $52                                       ; $4987: $26 $52

  db $38, $52, $41, $52, $4a, $52, $53, $52, $5c, $52, $65, $52, $77, $52

  adc c                                           ; $4997: $89
  ld d, d                                         ; $4998: $52

  db $6d, $50

  inc de                                          ; $499b: $13
  ld d, b                                         ; $499c: $50
  sbc e                                           ; $499d: $9b
  ld d, d                                         ; $499e: $52
  xor l                                           ; $499f: $ad
  ld d, d                                         ; $49a0: $52
  cp a                                            ; $49a1: $bf
  ld d, d                                         ; $49a2: $52

  db $9f, $51

  ret z                                           ; $49a5: $c8

  ld d, d                                         ; $49a6: $52

  db $e0, $4c, $c8, $52

  pop de                                          ; $49ab: $d1
  ld d, d                                         ; $49ac: $52
  nop                                             ; $49ad: $00
  nop                                             ; $49ae: $00
  nop                                             ; $49af: $00
  nop                                             ; $49b0: $00
  nop                                             ; $49b1: $00
  ld d, e                                         ; $49b2: $53
  nop                                             ; $49b3: $00
  dec hl                                          ; $49b4: $2b
  nop                                             ; $49b5: $00
  nop                                             ; $49b6: $00
  nop                                             ; $49b7: $00
  nop                                             ; $49b8: $00

  db $04

  ld [bc], a                                      ; $49ba: $02

  db $96, $00, $c3, $00

  nop                                             ; $49bf: $00
  nop                                             ; $49c0: $00
  nop                                             ; $49c1: $00
  inc b                                           ; $49c2: $04
  ld [hl+], a                                     ; $49c3: $22
  call z, Call_001_5d00                           ; $49c4: $cc $00 $5d
  nop                                             ; $49c7: $00
  ld [$0e32], sp                                  ; $49c8: $08 $32 $0e
  ld c, d                                         ; $49cb: $4a
  ld c, d                                         ; $49cc: $4a
  inc e                                           ; $49cd: $1c
  nop                                             ; $49ce: $00
  ld a, [$0000]                                   ; $49cf: $fa $00 $00
  nop                                             ; $49d2: $00
  nop                                             ; $49d3: $00
  nop                                             ; $49d4: $00
  ld [hl], e                                      ; $49d5: $73
  ld e, d                                         ; $49d6: $5a
  nop                                             ; $49d7: $00
  cp [hl]                                         ; $49d8: $be
  nop                                             ; $49d9: $00
  nop                                             ; $49da: $00
  nop                                             ; $49db: $00
  nop                                             ; $49dc: $00
  ld b, $74                                       ; $49dd: $06 $74
  ld [hl], e                                      ; $49df: $73
  nop                                             ; $49e0: $00
  ld h, b                                         ; $49e1: $60
  nop                                             ; $49e2: $00
  nop                                             ; $49e3: $00
  nop                                             ; $49e4: $00
  nop                                             ; $49e5: $00
  inc b                                           ; $49e6: $04
  ld [hl], l                                      ; $49e7: $75
  ld b, b                                         ; $49e8: $40
  ld bc, $000f                                    ; $49e9: $01 $0f $00
  nop                                             ; $49ec: $00
  nop                                             ; $49ed: $00
  nop                                             ; $49ee: $00
  inc b                                           ; $49ef: $04
  ld [hl], a                                      ; $49f0: $77
  xor b                                           ; $49f1: $a8
  nop                                             ; $49f2: $00
  adc e                                           ; $49f3: $8b
  nop                                             ; $49f4: $00
  nop                                             ; $49f5: $00
  nop                                             ; $49f6: $00
  nop                                             ; $49f7: $00

  db $00

  ld a, b                                         ; $49f9: $78

  db $00, $02, $90, $01, $18, $08, $83, $48, $03, $52, $00, $aa, $00, $18, $08, $38
  db $4c, $02, $82, $00, $50, $00, $08, $18, $e0, $0e, $04, $96, $00, $9a, $00, $18
  db $08, $83, $48, $0e, $82, $00, $f0, $00, $08, $18, $0e, $0a, $03, $3c, $00, $a0
  db $00, $08, $18, $0e, $1a, $05, $3c, $00, $c8, $00

  nop                                             ; $4a34: $00
  nop                                             ; $4a35: $00
  nop                                             ; $4a36: $00

  db $04

  inc b                                           ; $4a38: $04

  db $73, $00, $5b, $00, $08, $18, $e0, $1e, $04, $96, $00, $50, $00, $08, $18, $0e
  db $1a, $07, $5a, $00, $28, $00, $08, $18, $e0, $0e, $06, $78, $00, $64, $00, $08
  db $18, $0e, $0c, $05, $32, $00, $82, $00, $08, $20, $e0, $1e, $05, $5a, $00, $28
  db $00, $08, $20, $e0, $0e, $08, $78, $00, $64, $00, $08, $20, $0e, $0a, $09, $28
  db $00, $6e, $00, $08, $20, $0e, $1a, $0a, $50, $00, $e1, $00, $08, $18, $0e, $0a
  db $07, $28, $00, $78, $00, $08, $18, $e0, $0e, $07, $96, $00, $78, $00, $08, $18
  db $e0, $1e, $07, $5f, $00, $cd, $00, $08, $18, $e0, $0e, $0b, $78, $00, $91, $00
  db $08, $18, $0e, $0a, $0d, $32, $00, $69, $00, $18, $08, $83, $18, $0c, $50, $00
  db $aa, $00, $08, $18, $0e, $0a, $0a, $2d, $00, $82, $00, $18, $08, $38, $1c, $0a
  db $6e, $00, $6e, $00, $08, $18, $e0, $0e, $0a, $73, $00, $82, $00, $18, $08, $38
  db $4c, $03, $55, $00, $37, $00

  nop                                             ; $4adf: $00
  nop                                             ; $4ae0: $00
  nop                                             ; $4ae1: $00

  db $00

  ld a, b                                         ; $4ae3: $78

  db $70, $00, $f2, $04, $18, $08, $38, $0c, $14, $6b, $01, $8d, $00, $00, $00

  nop                                             ; $4af3: $00
  nop                                             ; $4af4: $00
  inc d                                           ; $4af5: $14
  dec hl                                          ; $4af6: $2b
  nop                                             ; $4af7: $00
  ld a, [bc]                                      ; $4af8: $0a
  db $01                                          ; $4af9: $01

  db $11, $08, $83, $08, $12, $6b, $00, $82, $01, $11, $08, $83, $08, $15, $7c, $00
  db $22, $01, $11, $08, $83, $08, $13, $3b, $00, $84, $00, $11, $08, $83, $08, $18
  db $5b, $00, $e4, $00, $11, $08, $83, $08, $19, $94, $00, $c7, $00, $11, $08, $83
  db $08, $1a, $c3, $00, $9e, $00, $11, $08, $83, $08, $1b, $c3, $00, $27, $01, $11
  db $08, $83, $08, $20, $4b, $00, $a0, $00, $20, $08, $83, $08, $1c, $7d, $00, $77
  db $01, $00, $00, $00

  ld [$0a21], sp                                  ; $4b4e: $08 $21 $0a
  ld bc, $007e                                    ; $4b51: $01 $7e $00

  db $28, $08, $38, $0c, $11, $4b, $00, $89, $01, $28, $08, $38, $0c, $11, $6c, $01
  db $8c, $01

  nop                                             ; $4b66: $00
  nop                                             ; $4b67: $00
  nop                                             ; $4b68: $00

  db $0c

  inc de                                          ; $4b6a: $13

  db $74, $00, $65, $00, $18, $08

  add e                                           ; $4b71: $83
  ld [$cb17], sp                                  ; $4b72: $08 $17 $cb
  nop                                             ; $4b75: $00
  ld a, a                                         ; $4b76: $7f
  nop                                             ; $4b77: $00

  db $18, $08, $83, $08, $16, $5c, $00, $23, $01, $18, $08, $83

  ld [$8d10], sp                                  ; $4b84: $08 $10 $8d
  nop                                             ; $4b87: $00
  inc b                                           ; $4b88: $04
  db $01                                          ; $4b89: $01

  db $28, $08

  jr c, jr_001_4b92                               ; $4b8c: $38 $04

  ld de, $0173                                    ; $4b8e: $11 $73 $01
  ld h, e                                         ; $4b91: $63

jr_001_4b92:
  nop                                             ; $4b92: $00
  nop                                             ; $4b93: $00
  nop                                             ; $4b94: $00
  nop                                             ; $4b95: $00

  db $04

  inc d                                           ; $4b97: $14

  db $35, $00, $d7, $00, $18, $08, $38, $0c, $11, $03, $01, $95, $01, $18, $08, $38
  db $0c, $14, $e4, $00, $85, $00

  jr @+$0a                                        ; $4bae: $18 $08

  jr c, @+$0e                                     ; $4bb0: $38 $0c

  inc d                                           ; $4bb2: $14
  ld h, e                                         ; $4bb3: $63
  nop                                             ; $4bb4: $00
  add l                                           ; $4bb5: $85
  nop                                             ; $4bb6: $00

  db $28, $08, $38, $0c, $11, $e4, $00, $7d, $00, $28, $08, $38, $0c, $11, $4c, $01
  db $b7, $00, $28, $08, $38, $0c, $11, $9c, $00, $8f, $00, $28, $08, $38, $0c, $11
  db $c4, $00, $a6, $01, $28, $08, $38, $0c, $11, $bd, $01, $be, $00

  nop                                             ; $4be4: $00
  nop                                             ; $4be5: $00
  nop                                             ; $4be6: $00

  db $08

  dec e                                           ; $4be8: $1d

  db $ef, $00, $e6, $01, $28, $08, $83, $40, $1d

  nop                                             ; $4bf2: $00
  nop                                             ; $4bf3: $00
  nop                                             ; $4bf4: $00
  nop                                             ; $4bf5: $00

  db $14, $08

  add e                                           ; $4bf8: $83

  db $08

  rra                                             ; $4bfa: $1f

  db $50, $00, $78, $00, $14, $08

  add e                                           ; $4c01: $83

  db $08

  db $1e                                          ; $4c03: $1e

  db $50, $00, $78, $00

  nop                                             ; $4c08: $00
  nop                                             ; $4c09: $00
  nop                                             ; $4c0a: $00

  db $0c

  inc e                                           ; $4c0c: $1c

  db $7d, $00, $4b, $00, $20, $08, $38, $0c, $1d, $90, $01, $3c, $00, $20, $08, $38
  db $0c, $1d, $2d, $00, $3c, $00, $20, $08, $38, $0c, $11, $23, $00, $aa, $00, $00
  db $00

  nop                                             ; $4c2e: $00
  inc c                                           ; $4c2f: $0c
  ld de, $0023                                    ; $4c30: $11 $23 $00
  xor d                                           ; $4c33: $aa
  nop                                             ; $4c34: $00

  db $64, $08, $38, $04, $23, $fc, $00, $17, $00

  nop                                             ; $4c3e: $00
  nop                                             ; $4c3f: $00
  nop                                             ; $4c40: $00
  inc b                                           ; $4c41: $04
  ld [hl+], a                                     ; $4c42: $22
  call nc, $6e00                                  ; $4c43: $d4 $00 $6e
  nop                                             ; $4c46: $00
  nop                                             ; $4c47: $00
  nop                                             ; $4c48: $00
  nop                                             ; $4c49: $00
  inc b                                           ; $4c4a: $04
  ld [hl+], a                                     ; $4c4b: $22
  rst $00                                         ; $4c4c: $c7
  nop                                             ; $4c4d: $00
  ld e, e                                         ; $4c4e: $5b
  ld [bc], a                                      ; $4c4f: $02
  nop                                             ; $4c50: $00
  nop                                             ; $4c51: $00
  nop                                             ; $4c52: $00

  db $04

  ld [hl+], a                                     ; $4c54: $22

  db $cc, $00, $5d, $00, $55, $18, $83, $00, $22, $c7, $00, $62, $02, $50, $08, $38
  db $04, $24, $ef, $01, $1e, $00, $28, $08, $83, $00, $23, $37, $00, $2c, $01, $30
  db $08, $83, $48, $28, $82, $00, $90, $01, $08, $28, $0e, $02, $25, $0f, $00, $c8
  db $00, $40, $08, $38, $04, $26, $40, $01, $1e, $00, $18, $08, $38, $04, $33, $a5
  db $00, $19, $00, $18, $08, $83, $08, $37, $ac, $00, $bc, $00, $18, $08, $83, $08
  db $3b, $64, $00, $22, $01, $08, $28, $e0, $06, $24, $08, $02, $09, $01, $28, $08
  db $38, $04, $27, $8c, $00, $1e, $00, $40, $08, $83, $00, $24, $45, $01, $68, $01
  db $08, $28, $0e, $02, $27, $14, $00, $c3, $00, $18, $08, $83, $00, $33, $be, $00
  db $09, $01, $10, $40, $e0, $46, $6b

  adc $01                                         ; $4cdc: $ce $01
  ld c, a                                         ; $4cde: $4f
  db $01                                          ; $4cdf: $01

  db $40, $08

  add e                                           ; $4ce2: $83
  nop                                             ; $4ce3: $00
  inc h                                           ; $4ce4: $24
  ld b, l                                         ; $4ce5: $45
  ld bc, $0168                                    ; $4ce6: $01 $68 $01
  ld [$0e28], sp                                  ; $4ce9: $08 $28 $0e
  ld [bc], a                                      ; $4cec: $02
  daa                                             ; $4ced: $27
  inc d                                           ; $4cee: $14
  nop                                             ; $4cef: $00
  db $c3                                          ; $4cf0: $c3
  nop                                             ; $4cf1: $00

  db $18, $08

  add e                                           ; $4cf4: $83
  nop                                             ; $4cf5: $00
  inc sp                                          ; $4cf6: $33
  cp [hl]                                         ; $4cf7: $be
  nop                                             ; $4cf8: $00
  add hl, bc                                      ; $4cf9: $09
  db $01                                          ; $4cfa: $01

  db $10, $40, $e0, $46, $6b, $bc, $01, $4f, $01, $30, $08, $83, $00, $25, $8c, $00
  db $31, $01, $08, $28, $e0, $06, $26, $0d, $02, $be, $00, $18, $08, $83, $00, $3a
  db $37, $00, $f2, $00, $30, $14, $38, $4c, $24, $3b, $01, $5a, $00, $08, $10, $e0
  db $4e, $34, $be, $00, $be, $00, $08, $10, $e0, $4e, $32, $b4, $00, $50, $00, $08
  db $10, $e0, $4e, $35, $73, $00, $50, $00, $10, $08, $83, $18, $29, $41, $00, $77
  db $01, $28, $08, $83, $08, $2a, $7d, $00, $5a, $00, $18, $08, $83, $48, $48, $74
  db $00, $22, $01, $08, $20, $0e, $4a, $50, $20, $00, $74, $00, $08, $32, $0e, $4a
  db $49, $1c, $00, $fa, $00, $18, $08, $38, $1c, $28, $32, $00, $5f, $00, $18, $08
  db $83, $00, $3d, $c3, $00, $3f, $00, $18, $08, $83, $48, $44, $64, $00, $ff, $00
  db $08, $18, $e0, $4e, $43, $a8, $00, $04, $01, $08, $18, $0e, $4a, $45, $21, $00
  db $6b, $00

  nop                                             ; $4d9d: $00
  nop                                             ; $4d9e: $00
  nop                                             ; $4d9f: $00
  adc h                                           ; $4da0: $8c
  cpl                                             ; $4da1: $2f
  ld a, a                                         ; $4da2: $7f
  nop                                             ; $4da3: $00
  ld [hl], c                                      ; $4da4: $71
  nop                                             ; $4da5: $00

  db $28, $08, $38, $1c, $28, $7d, $00, $5a, $00, $08, $18, $0e, $1c, $2b, $32, $00
  db $54, $01, $08, $20, $0e, $4a, $4b, $1e, $00, $e2, $00, $08, $20, $e0, $4e, $51
  db $f0, $00, $d9, $00, $08, $20, $e0, $4e, $4e, $9e, $00, $61, $00, $08, $20, $0e
  db $4a, $67, $1f, $00, $b2, $00, $08, $20, $e0, $4e, $66, $a0, $00, $82, $00

  nop                                             ; $4de5: $00
  nop                                             ; $4de6: $00
  nop                                             ; $4de7: $00
  sbc h                                           ; $4de8: $9c
  dec l                                           ; $4de9: $2d
  ld a, [hl-]                                     ; $4dea: $3a
  nop                                             ; $4deb: $00
  jr nc, @+$02                                    ; $4dec: $30 $00

  db $18, $08, $83, $1e, $2a, $55, $00, $5e, $01, $18, $08, $38, $1c, $2c, $cd, $00
  db $be, $00, $08, $18, $e0, $4e, $53, $a8, $00, $49, $00, $18, $08, $83, $48, $52
  db $6c, $00, $47, $01, $08, $18, $0e, $4a, $54, $16, $00, $61, $00, $08, $18, $0e
  db $4a, $54, $16, $00, $40, $01, $08, $18, $e0, $4e, $56, $96, $00, $d2, $00, $18
  db $08, $83, $18, $2b, $cd, $00, $a0, $00, $08, $18, $0e, $1c, $2d, $32, $00, $4a
  db $01, $08, $23, $e0, $4e, $3f, $e1, $00, $be, $00, $08, $23, $e0, $4e, $3e, $a0
  db $00, $82, $00, $08, $18, $0e, $4a, $55, $16, $00, $61, $00, $18, $08, $83, $48

  ld d, a                                         ; $4e5e: $57

  db $93, $00, $7d, $01, $18, $08, $38, $4c, $59, $dc, $00, $2d, $00, $18, $08, $83
  db $1e, $2c, $5f, $00, $4f, $01, $18, $08, $83, $18, $2e, $37, $00, $a5, $00, $18
  db $08, $83

  ld c, b                                         ; $4e81: $48
  ld c, l                                         ; $4e82: $4d
  ld h, e                                         ; $4e83: $63
  nop                                             ; $4e84: $00
  ld h, $01                                       ; $4e85: $26 $01

  db $08, $20, $e0, $4e, $4c, $bc, $00, $c9, $00, $08, $20, $e0, $4e, $47, $a7, $00
  db $a9, $00

  nop                                             ; $4e99: $00
  nop                                             ; $4e9a: $00
  nop                                             ; $4e9b: $00
  call z, $c72a                                   ; $4e9c: $cc $2a $c7
  nop                                             ; $4e9f: $00
  reti                                            ; $4ea0: $d9


  nop                                             ; $4ea1: $00

  db $2b, $08, $38, $1c, $2d, $32, $00, $aa, $00, $18, $08, $38, $1c, $2f, $32, $00
  db $54, $01, $08, $18, $e0, $4e, $5c, $b4, $00, $ea, $00, $08, $18, $e0, $4e, $5d
  db $0e, $01, $c3, $00, $08, $18, $0e, $4a, $69, $16, $00, $72, $00, $08, $18, $0e
  db $4a, $64, $20, $00, $83, $00, $08, $18, $0e, $4a, $5b, $1f, $00, $8b, $00, $23
  db $08, $83, $18, $2e, $32, $00, $5e, $01, $1e, $08, $83, $18, $30, $0e, $01, $f0
  db $00, $08, $18, $0e, $0a, $31, $23, $00, $41, $00, $08, $18, $e0, $4e, $63, $b7
  db $00, $71, $00, $08, $18, $e0, $4e, $68, $fc, $00, $72, $00, $08, $18, $0e, $4a
  db $62, $1e, $00, $7a, $00

  nop                                             ; $4f17: $00
  nop                                             ; $4f18: $00
  nop                                             ; $4f19: $00
  call z, Call_000_1b29                           ; $4f1a: $cc $29 $1b
  ld bc, $00bb                                    ; $4f1d: $01 $bb $00

  db $18, $08, $38, $1c, $2f, $cd, $00, $45, $01, $08, $22, $e0, $4e, $5f, $be, $00
  db $d2, $00, $08, $18, $0e, $4a, $5e, $1e, $00, $ca, $00, $08, $18, $0e, $4a, $60
  db $1f, $00, $73, $00, $20, $0c, $83, $00, $6a, $4e, $00, $a4, $01, $08, $18, $e0
  db $0e, $2f, $dc, $00, $c8, $00, $18, $08, $83, $48, $61, $cb, $00, $a0, $00, $08
  db $10, $0e, $0a, $28, $1e, $00, $f0, $00, $18, $08, $83, $08, $24, $64, $00, $54
  db $01, $18, $08, $38, $04, $26, $64, $00, $28, $00, $0c, $23, $e0, $06, $39, $63
  db $01, $9e, $01, $21, $0c, $83, $48, $38, $78, $00, $f2, $00

  nop                                             ; $4f8c: $00
  nop                                             ; $4f8d: $00
  nop                                             ; $4f8e: $00

  db $04

  inc sp                                          ; $4f90: $33

  db $c1, $00, $fb, $00, $08, $18, $0e, $0a, $28, $1e, $00, $5e, $01, $08, $10, $0e
  db $0a, $28, $1e, $00, $8c, $00, $1a, $08, $38, $04, $3b, $2c, $00, $11, $00

  nop                                             ; $4fb0: $00
  nop                                             ; $4fb1: $00
  nop                                             ; $4fb2: $00

  db $00

  db $36                                          ; $4fb4: $36

  db $23, $00, $85, $01, $1a, $0c, $38, $0c, $24, $43, $00, $5a, $00, $22, $0c, $38
  db $4c, $33, $af, $00, $e6, $00, $0c, $28, $0e, $02, $33, $16, $00, $94, $00

  nop                                             ; $4fd4: $00
  nop                                             ; $4fd5: $00
  nop                                             ; $4fd6: $00

  db $06

  add hl, sp                                      ; $4fd8: $39

  db $5b, $01, $9d, $01, $20, $0c, $38, $04, $27, $40, $01, $af, $00

  nop                                             ; $4fe6: $00
  nop                                             ; $4fe7: $00
  nop                                             ; $4fe8: $00

  db $00

  ld a, [hl-]                                     ; $4fea: $3a

  db $71, $00, $4e, $00, $1a, $0c, $38, $4c, $24, $8c, $00, $5a, $00, $20, $0c, $83
  db $00, $36, $23, $00, $81, $01, $20, $0c, $38, $00, $41, $a0, $00, $54, $01

  nop                                             ; $500a: $00
  nop                                             ; $500b: $00
  nop                                             ; $500c: $00
  inc b                                           ; $500d: $04
  inc a                                           ; $500e: $3c
  ld h, a                                         ; $500f: $67
  nop                                             ; $5010: $00
  ld c, b                                         ; $5011: $48
  nop                                             ; $5012: $00
  jr nz, @+$0e                                    ; $5013: $20 $0c

  jr c, jr_001_5017                               ; $5015: $38 $00

jr_001_5017:
  ld l, [hl]                                      ; $5017: $6e
  and b                                           ; $5018: $a0
  nop                                             ; $5019: $00
  ld d, h                                         ; $501a: $54
  db $01                                          ; $501b: $01

  db $20, $0c, $38, $04, $29, $6c, $00, $64, $00, $18, $08, $83, $48, $40, $34, $00
  db $b7, $00

  nop                                             ; $502e: $00
  nop                                             ; $502f: $00
  nop                                             ; $5030: $00

  db $04

  ld b, b                                         ; $5032: $40

  db $09, $01, $96, $00, $0c, $23, $0e, $4a, $2c, $19, $00, $04, $01, $0c, $23, $0e
  db $0a, $2c, $19, $00, $5a, $00

  nop                                             ; $5049: $00
  nop                                             ; $504a: $00
  nop                                             ; $504b: $00
  nop                                             ; $504c: $00
  ccf                                             ; $504d: $3f
  or d                                            ; $504e: $b2
  nop                                             ; $504f: $00
  cp b                                            ; $5050: $b8
  nop                                             ; $5051: $00

  db $18, $08, $38, $4c, $3d, $33, $00, $42, $00, $32, $08, $38, $00, $3c, $7f, $00
  db $e9, $00, $08, $18, $0e, $4c, $30, $53, $00, $ee, $00, $32, $08

  jr c, jr_001_5071                               ; $506f: $38 $00

jr_001_5071:
  ld l, a                                         ; $5071: $6f
  ld a, a                                         ; $5072: $7f
  nop                                             ; $5073: $00
  jp hl                                           ; $5074: $e9


  nop                                             ; $5075: $00

  db $08, $18, $0e, $0c, $30, $53, $00, $ee, $00, $0c, $18, $e0, $0e, $43, $a4, $00
  db $43, $00

  nop                                             ; $5088: $00
  nop                                             ; $5089: $00
  nop                                             ; $508a: $00
  ld a, [bc]                                      ; $508b: $0a
  ld b, d                                         ; $508c: $42
  dec [hl]                                        ; $508d: $35
  nop                                             ; $508e: $00
  sub e                                           ; $508f: $93
  db $01                                          ; $5090: $01

  db $0c, $18, $0e, $0a, $42, $1a, $00, $92, $01, $0c, $18, $0e, $0a, $29, $1e, $00
  db $63, $01, $1e, $08

  db $38                                          ; $50a5: $38

  db $4c

  add hl, hl                                      ; $50a7: $29

  db $db, $00, $2f, $00, $08, $18, $e0, $0e, $29, $66, $00, $66, $01, $08, $18, $e0
  db $0e, $4d, $c0, $00, $60, $00, $08, $18, $0e, $0a, $2d, $19, $00, $0b, $01, $20
  db $08, $38, $0c, $28, $44, $01, $2f, $00, $08, $20, $e0, $0e, $28, $e0, $00, $2e
  db $01, $18, $08, $83, $08, $76, $44, $00, $f8, $00, $08, $20, $e0, $0e, $2a, $e1
  db $00, $eb, $00, $08, $20, $0e, $0a, $2d, $1b, $00, $5a, $00, $20, $08, $38, $4c
  db $2d, $7c, $00, $2e, $00, $08, $20, $0e, $0a, $46, $19, $00, $73, $00, $18, $08
  db $83, $08, $4f, $5c, $00, $b9, $00

  nop                                             ; $510f: $00
  nop                                             ; $5110: $00
  nop                                             ; $5111: $00

  db $04

  ld c, l                                         ; $5113: $4d

  db $5a, $00, $71, $00, $08, $20, $0e, $0a, $2a, $19, $00, $c2, $00, $20, $08, $38
  db $0c, $4d, $68, $00, $30, $00, $08, $20, $e0, $4e, $28, $68, $01, $82, $00, $08
  db $20, $0e, $0a, $2a, $18, $00, $6b, $00, $20, $08, $38, $0c, $2b, $73, $00, $2f
  db $00, $08, $20, $0e, $0a, $2b, $1b, $00, $5b, $00, $08, $20, $e0, $0e, $2b, $e0
  db $00, $3a, $01, $08, $20, $e0, $0e, $2b, $e0, $00, $58, $00, $20, $10, $83, $1c
  db $55, $30, $00, $43, $00, $08, $20, $e0, $0e, $2c, $e8, $00, $58, $00, $20, $10
  db $83, $1c, $54, $30, $00, $43, $00, $08, $20, $0e, $4a, $2b, $1c, $00, $20, $01
  db $18, $08

  jr c, @+$4e                                     ; $5186: $38 $4c

  inc l                                           ; $5188: $2c
  add b                                           ; $5189: $80
  nop                                             ; $518a: $00
  jr nc, @+$02                                    ; $518b: $30 $00

  db $18, $08, $83, $00, $58, $5a, $00, $be, $00

  nop                                             ; $5196: $00
  nop                                             ; $5197: $00
  nop                                             ; $5198: $00

  db $00

  ld d, a                                         ; $519a: $57

  db $93, $00, $75, $01, $20, $08, $38, $44, $57

  sbc h                                           ; $51a4: $9c
  nop                                             ; $51a5: $00
  ld h, $00                                       ; $51a6: $26 $00

  db $18, $08, $83, $08, $5a, $4b, $00, $36, $01, $18, $08, $83, $08, $2c, $9b, $00
  db $5e, $01, $18, $08

  jr c, @+$0e                                     ; $51bc: $38 $0c

  ld e, c                                         ; $51be: $59
  ld b, e                                         ; $51bf: $43
  nop                                             ; $51c0: $00
  ld l, $00                                       ; $51c1: $2e $00

  db $08, $20, $e0, $0e, $2e, $e3, $00, $60, $01, $08, $20, $0e, $0a, $2e, $19, $00
  db $79, $00, $08, $20, $0e, $4a, $2e, $19, $00, $28, $01, $08, $20, $e0, $0e, $30
  db $2c, $01, $82, $00, $08, $20, $0e, $0a, $30, $8f, $00, $81, $00

  jr z, @+$0a                                     ; $51f0: $28 $08

  add e                                           ; $51f2: $83
  jr @+$67                                        ; $51f3: $18 $65

  inc [hl]                                        ; $51f5: $34
  nop                                             ; $51f6: $00
  ret nz                                          ; $51f7: $c0

  nop                                             ; $51f8: $00

  db $08, $20, $e0, $4e, $30, $2c, $01, $c8, $00, $18, $08, $38, $0c, $31, $cb, $00
  db $76, $00, $08, $20, $e0, $0e, $2f, $e4, $00, $69, $00, $08, $20, $0e, $0a, $2f
  db $18, $00, $67, $00, $08, $20, $e0, $0e, $2e, $e6, $00, $04, $01

  jr z, jr_001_5230                               ; $5226: $28 $08

  jr c, @+$1e                                     ; $5228: $38 $1c

  ld e, a                                         ; $522a: $5f
  ld a, h                                         ; $522b: $7c
  nop                                             ; $522c: $00
  jr jr_001_522f                                  ; $522d: $18 $00

jr_001_522f:
  nop                                             ; $522f: $00

jr_001_5230:
  nop                                             ; $5230: $00
  nop                                             ; $5231: $00
  ld e, $65                                       ; $5232: $1e $65
  inc l                                           ; $5234: $2c
  ld bc, $009b                                    ; $5235: $01 $9b $00

  db $08, $20, $0e, $0a, $2a, $18, $00, $22, $01, $08, $20, $e0, $0e, $2a, $e6, $00
  db $8c, $00, $08, $20, $0e, $0a, $2f, $18, $00, $e9, $00, $08, $20, $e0, $0e, $2e
  db $e6, $00, $78, $00, $20, $08

  jr c, jr_001_526c                               ; $525e: $38 $0c

  jr nc, @+$0a                                    ; $5260: $30 $08

  ld bc, $0044                                    ; $5262: $01 $44 $00

  db $0c, $2a

  ld c, $42                                       ; $5267: $0e $42
  ld h, $0f                                       ; $5269: $26 $0f
  nop                                             ; $526b: $00

jr_001_526c:
  ldh a, [rP1]                                    ; $526c: $f0 $00

  db $20, $0c, $83, $00, $6c, $fe, $01, $8f, $02, $20, $08

  jr c, jr_001_527f                               ; $5279: $38 $04

  ld l, e                                         ; $527b: $6b
  jr nc, jr_001_527e                              ; $527c: $30 $00

jr_001_527e:
  ld [hl-], a                                     ; $527e: $32

jr_001_527f:
  nop                                             ; $527f: $00
  jr nz, jr_001_5296                              ; $5280: $20 $14

  add e                                           ; $5282: $83
  nop                                             ; $5283: $00
  ld l, l                                         ; $5284: $6d
  ret nc                                          ; $5285: $d0

  nop                                             ; $5286: $00
  adc a                                           ; $5287: $8f
  ld [bc], a                                      ; $5288: $02
  jr nz, jr_001_5293                              ; $5289: $20 $08

  jr c, jr_001_52d3                               ; $528b: $38 $46

  ld [hl], h                                      ; $528d: $74
  add d                                           ; $528e: $82
  nop                                             ; $528f: $00

jr_001_5290:
  ld c, e                                         ; $5290: $4b
  nop                                             ; $5291: $00
  nop                                             ; $5292: $00

jr_001_5293:
  nop                                             ; $5293: $00
  nop                                             ; $5294: $00
  inc b                                           ; $5295: $04

jr_001_5296:
  ld l, h                                         ; $5296: $6c
  ld [de], a                                      ; $5297: $12
  ld bc, $014f                                    ; $5298: $01 $4f $01
  inc c                                           ; $529b: $0c
  jr z, @+$10                                     ; $529c: $28 $0e

  ld [bc], a                                      ; $529e: $02
  ld [hl], c                                      ; $529f: $71
  ld c, $00                                       ; $52a0: $0e $00
  inc [hl]                                        ; $52a2: $34
  nop                                             ; $52a3: $00
  nop                                             ; $52a4: $00
  nop                                             ; $52a5: $00
  inc b                                           ; $52a6: $04
  inc b                                           ; $52a7: $04
  ld [hl], b                                      ; $52a8: $70
  and d                                           ; $52a9: $a2
  ld bc, $006f                                    ; $52aa: $01 $6f $00
  ld [de], a                                      ; $52ad: $12
  jr nz, jr_001_5290                              ; $52ae: $20 $e0

  ld b, $70                                       ; $52b0: $06 $70
  call z, $7001                                   ; $52b2: $cc $01 $70
  nop                                             ; $52b5: $00
  jr z, @+$0a                                     ; $52b6: $28 $08

  add e                                           ; $52b8: $83
  nop                                             ; $52b9: $00
  ld [hl], d                                      ; $52ba: $72
  ld [hl], b                                      ; $52bb: $70
  nop                                             ; $52bc: $00
  xor h                                           ; $52bd: $ac
  ld bc, $0820                                    ; $52be: $01 $20 $08
  jr c, @+$06                                     ; $52c1: $38 $04

  ld [hl], c                                      ; $52c3: $71
  adc h                                           ; $52c4: $8c
  ld bc, $0039                                    ; $52c5: $01 $39 $00

  db $20, $08, $38, $4c, $49, $53, $00, $33, $00

  nop                                             ; $52d1: $00
  nop                                             ; $52d2: $00

jr_001_52d3:
  nop                                             ; $52d3: $00
  inc b                                           ; $52d4: $04
  ld [hl], c                                      ; $52d5: $71
  nop                                             ; $52d6: $00
  nop                                             ; $52d7: $00
  nop                                             ; $52d8: $00
  nop                                             ; $52d9: $00

  push bc                                         ; $52da: $c5
  ld bc, $0008                                    ; $52db: $01 $08 $00
  ld hl, $cb3f                                    ; $52de: $21 $3f $cb
  call Call_000_1248                              ; $52e1: $cd $48 $12
  pop bc                                          ; $52e4: $c1
  inc bc                                          ; $52e5: $03
  ld a, [bc]                                      ; $52e6: $0a
  dec bc                                          ; $52e7: $0b
  ld d, $00                                       ; $52e8: $16 $00
  ld e, a                                         ; $52ea: $5f
  call Call_001_5370                              ; $52eb: $cd $70 $53
  ld a, [hl+]                                     ; $52ee: $2a
  ld [$cb40], a                                   ; $52ef: $ea $40 $cb
  ld a, [hl+]                                     ; $52f2: $2a
  ld [$cb42], a                                   ; $52f3: $ea $42 $cb
  ld hl, $cb3f                                    ; $52f6: $21 $3f $cb
  jp Jump_000_079c                                ; $52f9: $c3 $9c $07


  ld d, $04                                       ; $52fc: $16 $04
  ld e, a                                         ; $52fe: $5f
  call Call_001_5370                              ; $52ff: $cd $70 $53
  ld a, [hl]                                      ; $5302: $7e
  cp $26                                          ; $5303: $fe $26
  ret nz                                          ; $5305: $c0

  ld e, a                                         ; $5306: $5f
  ldh a, [rSVBK]                                  ; $5307: $f0 $70
  push af                                         ; $5309: $f5
  ld a, $06                                       ; $530a: $3e $06
  ldh [rSVBK], a                                  ; $530c: $e0 $70
  ld a, [$dcc8]                                   ; $530e: $fa $c8 $dc
  ldh [$ffbd], a                                  ; $5311: $e0 $bd
  pop af                                          ; $5313: $f1
  ldh [rSVBK], a                                  ; $5314: $e0 $70
  ldh a, [$ffbd]                                  ; $5316: $f0 $bd
  cp $3b                                          ; $5318: $fe $3b
  jr nz, jr_001_531e                              ; $531a: $20 $02

  ld e, $75                                       ; $531c: $1e $75

jr_001_531e:
  ld a, e                                         ; $531e: $7b
  ret                                             ; $531f: $c9


  ld d, $03                                       ; $5320: $16 $03
  ld e, a                                         ; $5322: $5f
  call Call_001_5370                              ; $5323: $cd $70 $53
  ld a, [hl]                                      ; $5326: $7e
  and $38                                         ; $5327: $e6 $38
  and $f8                                         ; $5329: $e6 $f8
  ret z                                           ; $532b: $c8

  rra                                             ; $532c: $1f
  rra                                             ; $532d: $1f
  rra                                             ; $532e: $1f
  dec a                                           ; $532f: $3d
  ld hl, $48b5                                    ; $5330: $21 $b5 $48
  rst $08                                         ; $5333: $cf
  jp Jump_000_392b                                ; $5334: $c3 $2b $39


  ld d, $03                                       ; $5337: $16 $03
  ld e, a                                         ; $5339: $5f
  call Call_001_5370                              ; $533a: $cd $70 $53
  ld a, [hl]                                      ; $533d: $7e
  and $07                                         ; $533e: $e6 $07
  ret                                             ; $5340: $c9


  ld d, $03                                       ; $5341: $16 $03
  ld e, a                                         ; $5343: $5f
  call Call_001_5370                              ; $5344: $cd $70 $53
  ld a, [hl]                                      ; $5347: $7e
  and $c0                                         ; $5348: $e6 $c0
  rlca                                            ; $534a: $07
  rlca                                            ; $534b: $07
  ret                                             ; $534c: $c9


  ld d, $05                                       ; $534d: $16 $05
  ld e, a                                         ; $534f: $5f
  call Call_001_5370                              ; $5350: $cd $70 $53
  ld e, [hl]                                      ; $5353: $5e
  inc hl                                          ; $5354: $23
  ld d, [hl]                                      ; $5355: $56
  inc hl                                          ; $5356: $23
  ld a, [hl+]                                     ; $5357: $2a
  ld h, [hl]                                      ; $5358: $66
  ld l, a                                         ; $5359: $6f
  push de                                         ; $535a: $d5
  ld d, h                                         ; $535b: $54
  ld e, l                                         ; $535c: $5d
  pop hl                                          ; $535d: $e1
  ret                                             ; $535e: $c9


  inc bc                                          ; $535f: $03
  ld a, [bc]                                      ; $5360: $0a
  dec bc                                          ; $5361: $0b
  ld d, $02                                       ; $5362: $16 $02
  ld e, a                                         ; $5364: $5f
  call Call_001_5370                              ; $5365: $cd $70 $53
  ld a, [$cadc]                                   ; $5368: $fa $dc $ca
  call Call_000_32e5                              ; $536b: $cd $e5 $32
  and [hl]                                        ; $536e: $a6
  ret                                             ; $536f: $c9


Call_001_5370:
  push de                                         ; $5370: $d5
  ldh a, [$ffd6]                                  ; $5371: $f0 $d6
  ld hl, $48bd                                    ; $5373: $21 $bd $48
  call ResolveIndexedPointer16                              ; $5376: $cd $8b $31
  ld a, e                                         ; $5379: $7b
  ld e, l                                         ; $537a: $5d
  ld d, h                                         ; $537b: $54
  ld l, a                                         ; $537c: $6f
  ld h, $09                                       ; $537d: $26 $09
  call Call_000_009c                              ; $537f: $cd $9c $00
  add hl, de                                      ; $5382: $19
  pop de                                          ; $5383: $d1
  ld a, d                                         ; $5384: $7a
  jp ResolveIndexedPointer8                                       ; $5385: $c3 $08 $00


  ld hl, $49a8                                    ; $5388: $21 $a8 $49
  ld de, $0009                                    ; $538b: $11 $09 $00

jr_001_538e:
  add hl, de                                      ; $538e: $19
  cp [hl]                                         ; $538f: $be
  jr nz, jr_001_538e                              ; $5390: $20 $fc

  ld de, $fffc                                    ; $5392: $11 $fc $ff
  add hl, de                                      ; $5395: $19
  ld e, l                                         ; $5396: $5d
  ld d, h                                         ; $5397: $54
  ld hl, $48bd                                    ; $5398: $21 $bd $48
  ld b, $00                                       ; $539b: $06 $00

jr_001_539d:
  push hl                                         ; $539d: $e5
  ld a, [hl+]                                     ; $539e: $2a
  ld h, [hl]                                      ; $539f: $66
  ld l, a                                         ; $53a0: $6f
  rst $10                                         ; $53a1: $d7
  pop hl                                          ; $53a2: $e1
  jr c, jr_001_53aa                               ; $53a3: $38 $05

  inc b                                           ; $53a5: $04
  inc hl                                          ; $53a6: $23
  inc hl                                          ; $53a7: $23
  jr jr_001_539d                                  ; $53a8: $18 $f3

jr_001_53aa:
  dec b                                           ; $53aa: $05
  ld a, b                                         ; $53ab: $78
  ld hl, $48bd                                    ; $53ac: $21 $bd $48
  call ResolveIndexedPointer16                              ; $53af: $cd $8b $31
  call Call_000_007b                              ; $53b2: $cd $7b $00
  add hl, de                                      ; $53b5: $19
  ld h, l                                         ; $53b6: $65
  ld l, $09                                       ; $53b7: $2e $09
  call $00b0                                      ; $53b9: $cd $b0 $00
  ld l, b                                         ; $53bc: $68
  ret                                             ; $53bd: $c9


  db $08, $02, $00, $0c, $10, $02, $08, $00, $08, $0e, $08, $05, $00, $08, $0c, $06
  db $02, $00, $10, $10

  ld a, [bc]                                      ; $53d2: $0a
  nop                                             ; $53d3: $00
  nop                                             ; $53d4: $00
  inc d                                           ; $53d5: $14
  nop                                             ; $53d6: $00

  db $05, $02, $00, $08, $2a, $02, $02, $00, $10, $2a

  inc bc                                          ; $53e1: $03
  inc b                                           ; $53e2: $04
  nop                                             ; $53e3: $00
  ld [de], a                                      ; $53e4: $12
  ld a, [de]                                      ; $53e5: $1a

  db $0a, $03, $00, $08, $10, $05, $00, $00, $10

  nop                                             ; $53ef: $00
  inc c                                           ; $53f0: $0c
  ld [bc], a                                      ; $53f1: $02
  nop                                             ; $53f2: $00
  inc c                                           ; $53f3: $0c
  db $10                                          ; $53f4: $10

  db $04, $00, $00, $20

  nop                                             ; $53f9: $00
  ld d, $00                                       ; $53fa: $16 $00
  nop                                             ; $53fc: $00
  jr nz, jr_001_53ff                              ; $53fd: $20 $00

jr_001_53ff:
  ld b, $07                                       ; $53ff: $06 $07
  nop                                             ; $5401: $00
  ld [$0210], sp                                  ; $5402: $08 $10 $02
  add hl, bc                                      ; $5405: $09
  nop                                             ; $5406: $00
  ld [$010c], sp                                  ; $5407: $08 $0c $01
  dec bc                                          ; $540a: $0b
  nop                                             ; $540b: $00
  db $08                                          ; $540c: $08
  inc c                                           ; $540d: $0c

  db $02, $08, $00, $08, $0e, $08, $04, $00, $08, $10, $02, $06, $00, $08, $12

  ld [bc], a                                      ; $541d: $02
  rlca                                            ; $541e: $07
  nop                                             ; $541f: $00
  db $08                                          ; $5420: $08
  db $10                                          ; $5421: $10

  db $04, $06, $00, $08, $10

  inc b                                           ; $5427: $04
  ld [$0800], sp                                  ; $5428: $08 $00 $08
  inc c                                           ; $542b: $0c
  inc b                                           ; $542c: $04
  inc b                                           ; $542d: $04
  nop                                             ; $542e: $00
  db $08                                          ; $542f: $08
  db $18                                          ; $5430: $18

  db $09, $04, $00, $0e, $20

  rlca                                            ; $5436: $07
  inc b                                           ; $5437: $04
  nop                                             ; $5438: $00
  db $10                                          ; $5439: $10
  inc h                                           ; $543a: $24

jr_001_543b:
  inc c                                           ; $543b: $0c
  ld [bc], a                                      ; $543c: $02
  nop                                             ; $543d: $00
  db $08                                          ; $543e: $08
  db $10                                          ; $543f: $10

  db $02, $00, $00, $30

  nop                                             ; $5444: $00

  db $04, $00, $00, $20

  nop                                             ; $5449: $00
  inc b                                           ; $544a: $04
  nop                                             ; $544b: $00
  nop                                             ; $544c: $00
  jr nz, jr_001_544f                              ; $544d: $20 $00

jr_001_544f:
  ld bc, $0001                                    ; $544f: $01 $01 $00
  sub b                                           ; $5452: $90
  inc b                                           ; $5453: $04

  db $02, $0c, $00, $0a, $12, $00, $08, $00

  db $08                                          ; $545c: $08

  db $10, $00, $06, $00

  db $08                                          ; $5461: $08

  db $14, $00, $0e, $00

  db $08                                          ; $5466: $08

  db $10, $00, $07, $00

  db $08                                          ; $546b: $08

  db $12, $00, $07, $00

  db $08                                          ; $5470: $08

  db $12

  dec b                                           ; $5472: $05
  inc bc                                          ; $5473: $03
  nop                                             ; $5474: $00
  db $08                                          ; $5475: $08
  db $18                                          ; $5476: $18

  db $00, $06, $00

  db $08                                          ; $547a: $08

  db $14

  ld bc, $0004                                    ; $547c: $01 $04 $00
  inc c                                           ; $547f: $0c
  inc e                                           ; $5480: $1c
  inc bc                                          ; $5481: $03
  dec b                                           ; $5482: $05
  nop                                             ; $5483: $00
  inc b                                           ; $5484: $04
  ld d, $00                                       ; $5485: $16 $00
  ld b, $00                                       ; $5487: $06 $00
  nop                                             ; $5489: $00
  ld d, $00                                       ; $548a: $16 $00
  add hl, bc                                      ; $548c: $09
  nop                                             ; $548d: $00
  db $08                                          ; $548e: $08
  ld a, [de]                                      ; $548f: $1a

  db $03, $06, $00, $0c, $1a, $02, $0b, $00, $0a, $12, $01, $53, $be, $59, $5a, $5b
  db $5c, $5d, $5e, $5f, $60, $61, $62, $63, $65, $66, $67, $68, $6a, $69, $6b, $6c
  db $75, $c0, $6d, $0e, $16, $4d, $7e, $7f, $86, $c7, $c8, $a4, $4c, $6f, $70, $a8
  db $36, $11, $14, $17, $18, $c9, $3b, $3c, $7b, $1d, $1e, $b9, $4b, $19, $3d, $1f
  db $cc, $ce, $77, $21, $23, $3e, $26, $25, $de, $41, $43, $45, $46, $47, $22, $4e
  db $48, $50, $7a, $06, $a0, $9f, $00

  dec b                                           ; $54e7: $05
  ld b, $ff                                       ; $54e8: $06 $ff

  db $00, $02, $ff, $0a, $0d, $0e, $01, $10, $0b, $05, $16, $07, $23, $24, $26, $36
  db $ff, $00, $06, $08, $0a, $12, $13, $24, $26, $ff, $18, $05, $1c, $22, $3f, $5b
  db $5c, $2b, $2a, $3d, $27, $51, $52, $53, $ff

  xor a                                           ; $5513: $af
  ld [$c0d5], a                                   ; $5514: $ea $d5 $c0
  ld [$c0b3], a                                   ; $5517: $ea $b3 $c0
  ld [$c0b4], a                                   ; $551a: $ea $b4 $c0
  ld hl, $c0d5                                    ; $551d: $21 $d5 $c0
  ld bc, $0013                                    ; $5520: $01 $13 $00
  call Call_000_1249                              ; $5523: $cd $49 $12
  dec a                                           ; $5526: $3d
  ld hl, $c0b5                                    ; $5527: $21 $b5 $c0
  ld bc, $0020                                    ; $552a: $01 $20 $00
  call Call_000_1249                              ; $552d: $cd $49 $12
  ld hl, $53be                                    ; $5530: $21 $be $53

Call_001_5533:
Jump_001_5533:
  ld de, $c0e8                                    ; $5533: $11 $e8 $c0
  ld a, [hl+]                                     ; $5536: $2a
  ld [de], a                                      ; $5537: $12
  inc de                                          ; $5538: $13
  ld b, a                                         ; $5539: $47
  ld a, [hl+]                                     ; $553a: $2a
  ld [de], a                                      ; $553b: $12
  inc de                                          ; $553c: $13
  ld c, a                                         ; $553d: $4f
  ld a, [hl+]                                     ; $553e: $2a
  call Call_001_5721                              ; $553f: $cd $21 $57
  ld b, c                                         ; $5542: $41
  call Call_001_5721                              ; $5543: $cd $21 $57
  ldh [$ffb9], a                                  ; $5546: $e0 $b9
  ld a, $00                                       ; $5548: $3e $00
  ldh [$ffba], a                                  ; $554a: $e0 $ba
  ret                                             ; $554c: $c9


  ld hl, $0026                                    ; $554d: $21 $26 $00
  add hl, bc                                      ; $5550: $09
  bit 7, [hl]                                     ; $5551: $cb $7e
  ret nz                                          ; $5553: $c0

  ld de, $c0d5                                    ; $5554: $11 $d5 $c0
  call Call_001_5622                              ; $5557: $cd $22 $56
  ld de, $c0de                                    ; $555a: $11 $de $c0
  call Call_001_5622                              ; $555d: $cd $22 $56
  call Call_001_56f7                              ; $5560: $cd $f7 $56
  ld hl, $002d                                    ; $5563: $21 $2d $00
  add hl, bc                                      ; $5566: $09
  bit 2, [hl]                                     ; $5567: $cb $56
  ret z                                           ; $5569: $c8

  ld hl, $002e                                    ; $556a: $21 $2e $00
  add hl, bc                                      ; $556d: $09
  ld a, [hl]                                      ; $556e: $7e
  cp $ff                                          ; $556f: $fe $ff
  ret z                                           ; $5571: $c8

  ld [hl], $ff                                    ; $5572: $36 $ff
  jp Jump_001_57ca                                ; $5574: $c3 $ca $57


  ld de, $c0d5                                    ; $5577: $11 $d5 $c0
  call Call_001_563a                              ; $557a: $cd $3a $56
  ld de, $c0de                                    ; $557d: $11 $de $c0
  jp Jump_001_563a                                ; $5580: $c3 $3a $56


  ld a, [$c0e7]                                   ; $5583: $fa $e7 $c0
  or a                                            ; $5586: $b7
  jr z, jr_001_558f                               ; $5587: $28 $06

  call Call_001_559d                              ; $5589: $cd $9d $55
  jp Jump_001_5595                                ; $558c: $c3 $95 $55


jr_001_558f:
  call Call_001_5595                              ; $558f: $cd $95 $55
  jp Jump_001_559d                                ; $5592: $c3 $9d $55


Call_001_5595:
Jump_001_5595:
  ld de, $c0d5                                    ; $5595: $11 $d5 $c0
  ld bc, $d280                                    ; $5598: $01 $80 $d2
  jr jr_001_55a3                                  ; $559b: $18 $06

Call_001_559d:
Jump_001_559d:
  ld de, $c0de                                    ; $559d: $11 $de $c0
  ld bc, $d680                                    ; $55a0: $01 $80 $d6

jr_001_55a3:
  ld a, [de]                                      ; $55a3: $1a
  or a                                            ; $55a4: $b7
  ret nz                                          ; $55a5: $c0

  ld hl, $0005                                    ; $55a6: $21 $05 $00
  add hl, de                                      ; $55a9: $19
  ld a, [hl]                                      ; $55aa: $7e
  inc hl                                          ; $55ab: $23
  or [hl]                                         ; $55ac: $b6
  ret nz                                          ; $55ad: $c0

  ld hl, $0003                                    ; $55ae: $21 $03 $00
  add hl, de                                      ; $55b1: $19
  ld [hl], c                                      ; $55b2: $71
  inc hl                                          ; $55b3: $23
  ld [hl], b                                      ; $55b4: $70
  push de                                         ; $55b5: $d5
  call Call_001_56d6                              ; $55b6: $cd $d6 $56
  pop de                                          ; $55b9: $d1
  ld a, b                                         ; $55ba: $78
  cp $ff                                          ; $55bb: $fe $ff
  ret z                                           ; $55bd: $c8

  call Call_001_5732                              ; $55be: $cd $32 $57
  cp $ff                                          ; $55c1: $fe $ff
  jp z, Jump_001_569d                             ; $55c3: $ca $9d $56

  ld hl, $0008                                    ; $55c6: $21 $08 $00
  add hl, de                                      ; $55c9: $19
  ld [hl], a                                      ; $55ca: $77
  ld hl, $0005                                    ; $55cb: $21 $05 $00
  add hl, de                                      ; $55ce: $19
  ld [hl], c                                      ; $55cf: $71
  inc hl                                          ; $55d0: $23
  ld [hl], b                                      ; $55d1: $70
  ld hl, $0028                                    ; $55d2: $21 $28 $00
  add hl, bc                                      ; $55d5: $09
  ld a, [hl]                                      ; $55d6: $7e
  ld hl, $0007                                    ; $55d7: $21 $07 $00
  add hl, de                                      ; $55da: $19
  ld [hl], a                                      ; $55db: $77
  push bc                                         ; $55dc: $c5
  push de                                         ; $55dd: $d5
  ld hl, $0008                                    ; $55de: $21 $08 $00
  add hl, de                                      ; $55e1: $19
  ld a, [hl]                                      ; $55e2: $7e
  ld hl, $0001                                    ; $55e3: $21 $01 $00
  add hl, de                                      ; $55e6: $19
  ld e, a                                         ; $55e7: $5f
  xor a                                           ; $55e8: $af
  sla e                                           ; $55e9: $cb $23
  rla                                             ; $55eb: $17
  sla e                                           ; $55ec: $cb $23
  rla                                             ; $55ee: $17
  sla e                                           ; $55ef: $cb $23
  rla                                             ; $55f1: $17
  sla e                                           ; $55f2: $cb $23
  rla                                             ; $55f4: $17
  set 7, a                                        ; $55f5: $cb $ff
  ld [hl], e                                      ; $55f7: $73
  inc hl                                          ; $55f8: $23
  ld [hl+], a                                     ; $55f9: $22
  ld a, [hl+]                                     ; $55fa: $2a
  ld d, [hl]                                      ; $55fb: $56
  ld e, a                                         ; $55fc: $5f
  call Call_000_35ed                              ; $55fd: $cd $ed $35
  sra b                                           ; $5600: $cb $28
  rr c                                            ; $5602: $cb $19
  sra b                                           ; $5604: $cb $28
  rr c                                            ; $5606: $cb $19
  sra b                                           ; $5608: $cb $28
  rr c                                            ; $560a: $cb $19
  sra b                                           ; $560c: $cb $28
  rr c                                            ; $560e: $cb $19
  inc c                                           ; $5610: $0c
  srl c                                           ; $5611: $cb $39
  pop hl                                          ; $5613: $e1
  ld [hl], c                                      ; $5614: $71
  ld hl, $1f57                                    ; $5615: $21 $57 $1f
  call Call_000_33f3                              ; $5618: $cd $f3 $33

  db $03, $7a, $7e

  pop bc                                          ; $561e: $c1
  jp Jump_000_0841                                ; $561f: $c3 $41 $08


Call_001_5622:
  ld hl, $0005                                    ; $5622: $21 $05 $00
  add hl, de                                      ; $5625: $19
  ld a, [hl+]                                     ; $5626: $2a
  cp c                                            ; $5627: $b9
  ret nz                                          ; $5628: $c0

  ld a, [hl]                                      ; $5629: $7e
  cp b                                            ; $562a: $b8
  ret nz                                          ; $562b: $c0

  xor a                                           ; $562c: $af
  ld [de], a                                      ; $562d: $12
  ld [hl-], a                                     ; $562e: $32
  ld [hl], a                                      ; $562f: $77
  ld hl, $0008                                    ; $5630: $21 $08 $00
  add hl, de                                      ; $5633: $19
  ld a, [hl]                                      ; $5634: $7e
  ld [hl], $00                                    ; $5635: $36 $00
  jp Jump_001_57ca                                ; $5637: $c3 $ca $57


Call_001_563a:
Jump_001_563a:
  ld a, [de]                                      ; $563a: $1a
  or a                                            ; $563b: $b7
  ret nz                                          ; $563c: $c0

  ld hl, $0005                                    ; $563d: $21 $05 $00
  add hl, de                                      ; $5640: $19
  ld c, [hl]                                      ; $5641: $4e
  ld [hl+], a                                     ; $5642: $22
  ld b, [hl]                                      ; $5643: $46
  ld a, b                                         ; $5644: $78
  or a                                            ; $5645: $b7
  ret z                                           ; $5646: $c8

  ld [hl], $00                                    ; $5647: $36 $00
  inc hl                                          ; $5649: $23
  ld e, l                                         ; $564a: $5d
  ld d, h                                         ; $564b: $54
  ld a, [de]                                      ; $564c: $1a
  ld hl, $0027                                    ; $564d: $21 $27 $00
  add hl, bc                                      ; $5650: $09
  and $7f                                         ; $5651: $e6 $7f
  ld [hl], a                                      ; $5653: $77
  inc de                                          ; $5654: $13
  ld hl, $002d                                    ; $5655: $21 $2d $00
  add hl, bc                                      ; $5658: $09
  set 2, [hl]                                     ; $5659: $cb $d6
  ld hl, $002e                                    ; $565b: $21 $2e $00
  add hl, bc                                      ; $565e: $09
  ld a, [hl]                                      ; $565f: $7e
  push af                                         ; $5660: $f5
  ld a, [de]                                      ; $5661: $1a
  ld [hl], a                                      ; $5662: $77
  xor a                                           ; $5663: $af
  ld [de], a                                      ; $5664: $12
  pop af                                          ; $5665: $f1
  cp $ff                                          ; $5666: $fe $ff
  ret z                                           ; $5668: $c8

  jp Jump_001_57ca                                ; $5669: $c3 $ca $57


  ld a, [bc]                                      ; $566c: $0a
  or a                                            ; $566d: $b7
  ret z                                           ; $566e: $c8

  ld hl, $0026                                    ; $566f: $21 $26 $00
  add hl, bc                                      ; $5672: $09
  bit 7, [hl]                                     ; $5673: $cb $7e
  jr z, jr_001_5696                               ; $5675: $28 $1f

  ld hl, $002a                                    ; $5677: $21 $2a $00
  add hl, bc                                      ; $567a: $09
  bit 5, [hl]                                     ; $567b: $cb $6e
  ld hl, $002b                                    ; $567d: $21 $2b $00
  add hl, bc                                      ; $5680: $09
  res 5, [hl]                                     ; $5681: $cb $ae
  ret z                                           ; $5683: $c8

  set 5, [hl]                                     ; $5684: $cb $ee
  ld hl, $002a                                    ; $5686: $21 $2a $00
  add hl, bc                                      ; $5689: $09
  bit 4, [hl]                                     ; $568a: $cb $66
  ld hl, $002b                                    ; $568c: $21 $2b $00
  add hl, bc                                      ; $568f: $09
  res 6, [hl]                                     ; $5690: $cb $b6
  ret z                                           ; $5692: $c8

  set 6, [hl]                                     ; $5693: $cb $f6
  ret                                             ; $5695: $c9


jr_001_5696:
  ld hl, $0028                                    ; $5696: $21 $28 $00
  add hl, bc                                      ; $5699: $09
  bit 7, [hl]                                     ; $569a: $cb $7e
  ret z                                           ; $569c: $c8

Jump_001_569d:
  ld a, [$c0b3]                                   ; $569d: $fa $b3 $c0
  cp $10                                          ; $56a0: $fe $10
  jr nc, jr_001_56d2                              ; $56a2: $30 $2e

  res 7, [hl]                                     ; $56a4: $cb $be
  ld d, a                                         ; $56a6: $57
  ld hl, $c0b4                                    ; $56a7: $21 $b4 $c0
  ld a, [hl+]                                     ; $56aa: $2a
  ld e, a                                         ; $56ab: $5f
  call Call_000_317a                              ; $56ac: $cd $7a $31

jr_001_56af:
  ld a, d                                         ; $56af: $7a
  or a                                            ; $56b0: $b7
  jr z, jr_001_56ca                               ; $56b1: $28 $17

  ld a, [hl+]                                     ; $56b3: $2a
  cp c                                            ; $56b4: $b9
  jr nz, jr_001_56bb                              ; $56b5: $20 $04

  ld a, [hl]                                      ; $56b7: $7e
  cp b                                            ; $56b8: $b8
  jr z, jr_001_56d1                               ; $56b9: $28 $16

jr_001_56bb:
  inc hl                                          ; $56bb: $23
  dec d                                           ; $56bc: $15
  inc e                                           ; $56bd: $1c
  ld a, e                                         ; $56be: $7b
  cp $10                                          ; $56bf: $fe $10
  jr c, jr_001_56af                               ; $56c1: $38 $ec

  ld hl, $c0b5                                    ; $56c3: $21 $b5 $c0
  ld e, $00                                       ; $56c6: $1e $00
  jr jr_001_56af                                  ; $56c8: $18 $e5

jr_001_56ca:
  ld [hl], c                                      ; $56ca: $71
  inc hl                                          ; $56cb: $23
  ld [hl], b                                      ; $56cc: $70
  ld hl, $c0b3                                    ; $56cd: $21 $b3 $c0
  inc [hl]                                        ; $56d0: $34

jr_001_56d1:
  ret                                             ; $56d1: $c9


jr_001_56d2:
  call Call_000_0a6c                              ; $56d2: $cd $6c $0a
  ret                                             ; $56d5: $c9


Call_001_56d6:
  ld b, $ff                                       ; $56d6: $06 $ff

jr_001_56d8:
  ld hl, $c0b3                                    ; $56d8: $21 $b3 $c0
  ld a, [hl]                                      ; $56db: $7e
  or a                                            ; $56dc: $b7
  ret z                                           ; $56dd: $c8

  dec [hl]                                        ; $56de: $35
  inc hl                                          ; $56df: $23
  ld a, [hl]                                      ; $56e0: $7e
  ld b, a                                         ; $56e1: $47
  inc a                                           ; $56e2: $3c
  cp $10                                          ; $56e3: $fe $10
  jr c, jr_001_56e8                               ; $56e5: $38 $01

  xor a                                           ; $56e7: $af

jr_001_56e8:
  ld [hl+], a                                     ; $56e8: $22
  ld a, b                                         ; $56e9: $78
  call Call_000_317a                              ; $56ea: $cd $7a $31
  ld a, $ff                                       ; $56ed: $3e $ff
  ld c, [hl]                                      ; $56ef: $4e
  ld [hl+], a                                     ; $56f0: $22
  ld b, [hl]                                      ; $56f1: $46
  ld [hl], a                                      ; $56f2: $77
  cp b                                            ; $56f3: $b8
  jr z, jr_001_56d8                               ; $56f4: $28 $e2

  ret                                             ; $56f6: $c9


Call_001_56f7:
  ld hl, $c0b3                                    ; $56f7: $21 $b3 $c0
  ld a, [hl+]                                     ; $56fa: $2a
  or a                                            ; $56fb: $b7
  ret z                                           ; $56fc: $c8

  ld e, a                                         ; $56fd: $5f
  ld a, [hl+]                                     ; $56fe: $2a
  ld d, a                                         ; $56ff: $57
  call Call_000_317a                              ; $5700: $cd $7a $31

jr_001_5703:
  ld a, [hl+]                                     ; $5703: $2a
  cp c                                            ; $5704: $b9
  jr nz, jr_001_5711                              ; $5705: $20 $0a

  ld a, [hl]                                      ; $5707: $7e
  cp b                                            ; $5708: $b8
  jr nz, jr_001_5711                              ; $5709: $20 $06

  dec hl                                          ; $570b: $2b
  ld [hl], $ff                                    ; $570c: $36 $ff
  inc hl                                          ; $570e: $23
  ld [hl], $ff                                    ; $570f: $36 $ff

jr_001_5711:
  dec e                                           ; $5711: $1d
  ret z                                           ; $5712: $c8

  inc hl                                          ; $5713: $23
  inc d                                           ; $5714: $14
  ld a, d                                         ; $5715: $7a
  cp $10                                          ; $5716: $fe $10
  jr c, jr_001_5703                               ; $5718: $38 $e9

  ld d, $00                                       ; $571a: $16 $00
  ld hl, $c0b5                                    ; $571c: $21 $b5 $c0
  jr jr_001_5703                                  ; $571f: $18 $e2

Call_001_5721:
  inc b                                           ; $5721: $04
  dec b                                           ; $5722: $05
  jr z, jr_001_5730                               ; $5723: $28 $0b

jr_001_5725:
  push af                                         ; $5725: $f5
  xor a                                           ; $5726: $af
  ld [de], a                                      ; $5727: $12
  inc de                                          ; $5728: $13
  pop af                                          ; $5729: $f1
  ld [de], a                                      ; $572a: $12
  inc de                                          ; $572b: $13
  add [hl]                                        ; $572c: $86
  dec b                                           ; $572d: $05
  jr nz, jr_001_5725                              ; $572e: $20 $f5

jr_001_5730:
  inc hl                                          ; $5730: $23
  ret                                             ; $5731: $c9


Call_001_5732:
  push bc                                         ; $5732: $c5
  ld a, [bc]                                      ; $5733: $0a
  ld l, a                                         ; $5734: $6f
  inc bc                                          ; $5735: $03
  ld a, [bc]                                      ; $5736: $0a
  ld c, a                                         ; $5737: $4f
  ld b, l                                         ; $5738: $45
  ld hl, $549a                                    ; $5739: $21 $9a $54

jr_001_573c:
  ld a, [hl+]                                     ; $573c: $2a
  cp b                                            ; $573d: $b8
  jr z, jr_001_574e                               ; $573e: $28 $0e

  or a                                            ; $5740: $b7
  jr nz, jr_001_573c                              ; $5741: $20 $f9

jr_001_5743:
  ld hl, $c0e8                                    ; $5743: $21 $e8 $c0
  ld a, [hl+]                                     ; $5746: $2a
  add [hl]                                        ; $5747: $86
  ld b, a                                         ; $5748: $47
  ld hl, $c0ea                                    ; $5749: $21 $ea $c0
  jr jr_001_57b3                                  ; $574c: $18 $65

jr_001_574e:
  ld hl, $54ed                                    ; $574e: $21 $ed $54
  cp $7e                                          ; $5751: $fe $7e
  jr z, jr_001_5773                               ; $5753: $28 $1e

  ld hl, $54fb                                    ; $5755: $21 $fb $54
  cp $7f                                          ; $5758: $fe $7f
  jr z, jr_001_5783                               ; $575a: $28 $27

  ld hl, $5504                                    ; $575c: $21 $04 $55
  cp $7b                                          ; $575f: $fe $7b
  jr z, jr_001_5795                               ; $5761: $28 $32

  ld hl, $54e7                                    ; $5763: $21 $e7 $54
  cp $de                                          ; $5766: $fe $de
  jr z, jr_001_579e                               ; $5768: $28 $34

  ld hl, $54ea                                    ; $576a: $21 $ea $54
  cp $a8                                          ; $576d: $fe $a8
  jr z, jr_001_579e                               ; $576f: $28 $2d

  jr jr_001_57a8                                  ; $5771: $18 $35

jr_001_5773:
  ld a, c                                         ; $5773: $79
  cp $24                                          ; $5774: $fe $24
  jr nz, jr_001_579e                              ; $5776: $20 $26

  pop bc                                          ; $5778: $c1
  push bc                                         ; $5779: $c5
  call Call_000_2fc9                              ; $577a: $cd $c9 $2f
  cp $03                                          ; $577d: $fe $03
  jr z, jr_001_57a8                               ; $577f: $28 $27

  jr jr_001_5743                                  ; $5781: $18 $c0

jr_001_5783:
  ld a, c                                         ; $5783: $79
  cp $0d                                          ; $5784: $fe $0d
  jr nz, jr_001_579e                              ; $5786: $20 $16

  pop bc                                          ; $5788: $c1
  push bc                                         ; $5789: $c5
  ld hl, $0002                                    ; $578a: $21 $02 $00
  add hl, bc                                      ; $578d: $09
  ld a, [hl]                                      ; $578e: $7e
  cp $05                                          ; $578f: $fe $05
  jr nz, jr_001_5743                              ; $5791: $20 $b0

  jr jr_001_57a8                                  ; $5793: $18 $13

jr_001_5795:
  pop bc                                          ; $5795: $c1
  push bc                                         ; $5796: $c5
  call Call_000_33f3                              ; $5797: $cd $f3 $33

  db $07, $18, $5f

  ld c, a                                         ; $579d: $4f

jr_001_579e:
  ld a, [hl+]                                     ; $579e: $2a
  cp c                                            ; $579f: $b9
  jr z, jr_001_57a8                               ; $57a0: $28 $06

  cp $ff                                          ; $57a2: $fe $ff
  jr nz, jr_001_579e                              ; $57a4: $20 $f8

  jr jr_001_5743                                  ; $57a6: $18 $9b

jr_001_57a8:
  ld hl, $c0e8                                    ; $57a8: $21 $e8 $c0
  ld a, [hl+]                                     ; $57ab: $2a
  ld b, [hl]                                      ; $57ac: $46
  ld hl, $c0ea                                    ; $57ad: $21 $ea $c0
  call Call_000_317a                              ; $57b0: $cd $7a $31

jr_001_57b3:
  ld a, b                                         ; $57b3: $78
  or a                                            ; $57b4: $b7
  jr z, jr_001_57c0                               ; $57b5: $28 $09

jr_001_57b7:
  ld a, [hl]                                      ; $57b7: $7e
  or a                                            ; $57b8: $b7
  jr z, jr_001_57c4                               ; $57b9: $28 $09

  inc hl                                          ; $57bb: $23
  inc hl                                          ; $57bc: $23
  dec b                                           ; $57bd: $05
  jr nz, jr_001_57b7                              ; $57be: $20 $f7

jr_001_57c0:
  ld a, $ff                                       ; $57c0: $3e $ff
  pop bc                                          ; $57c2: $c1
  ret                                             ; $57c3: $c9


jr_001_57c4:
  ld [hl], $ff                                    ; $57c4: $36 $ff
  inc hl                                          ; $57c6: $23
  ld a, [hl]                                      ; $57c7: $7e
  pop bc                                          ; $57c8: $c1
  ret                                             ; $57c9: $c9


Jump_001_57ca:
  push bc                                         ; $57ca: $c5
  push af                                         ; $57cb: $f5
  ld hl, $c0e8                                    ; $57cc: $21 $e8 $c0
  ld a, [hl+]                                     ; $57cf: $2a
  add [hl]                                        ; $57d0: $86
  inc hl                                          ; $57d1: $23
  ld b, a                                         ; $57d2: $47
  pop af                                          ; $57d3: $f1

jr_001_57d4:
  inc hl                                          ; $57d4: $23
  cp [hl]                                         ; $57d5: $be
  jr z, jr_001_57e1                               ; $57d6: $28 $09

  inc hl                                          ; $57d8: $23
  dec b                                           ; $57d9: $05
  jr nz, jr_001_57d4                              ; $57da: $20 $f8

  call Call_000_0a6c                              ; $57dc: $cd $6c $0a
  pop bc                                          ; $57df: $c1
  ret                                             ; $57e0: $c9


jr_001_57e1:
  dec hl                                          ; $57e1: $2b
  ld e, l                                         ; $57e2: $5d
  ld d, h                                         ; $57e3: $54
  ld b, $00                                       ; $57e4: $06 $00
  ld hl, $c10a                                    ; $57e6: $21 $0a $c1

jr_001_57e9:
  ld a, [hl+]                                     ; $57e9: $2a
  ld c, a                                         ; $57ea: $4f
  ld a, [hl-]                                     ; $57eb: $3a
  or c                                            ; $57ec: $b1
  jr nz, jr_001_57f4                              ; $57ed: $20 $05

  ld [hl], e                                      ; $57ef: $73
  inc hl                                          ; $57f0: $23
  ld [hl], d                                      ; $57f1: $72
  jr jr_001_5809                                  ; $57f2: $18 $15

jr_001_57f4:
  inc hl                                          ; $57f4: $23
  inc hl                                          ; $57f5: $23
  inc b                                           ; $57f6: $04
  ld a, b                                         ; $57f7: $78
  and $03                                         ; $57f8: $e6 $03
  jr nz, jr_001_57e9                              ; $57fa: $20 $ed

  ld hl, $c0aa                                    ; $57fc: $21 $aa $c0
  set 0, [hl]                                     ; $57ff: $cb $c6
  set 4, [hl]                                     ; $5801: $cb $e6
  ld hl, $c10a                                    ; $5803: $21 $0a $c1
  ld b, a                                         ; $5806: $47
  jr jr_001_57e9                                  ; $5807: $18 $e0

jr_001_5809:
  pop bc                                          ; $5809: $c1
  ret                                             ; $580a: $c9


  ld b, $04                                       ; $580b: $06 $04
  ld hl, $c10b                                    ; $580d: $21 $0b $c1

jr_001_5810:
  ld a, [hl-]                                     ; $5810: $3a
  or a                                            ; $5811: $b7
  jr nz, jr_001_5818                              ; $5812: $20 $04

  inc hl                                          ; $5814: $23
  inc hl                                          ; $5815: $23
  jr jr_001_581e                                  ; $5816: $18 $06

jr_001_5818:
  ld d, a                                         ; $5818: $57
  ld e, [hl]                                      ; $5819: $5e
  xor a                                           ; $581a: $af
  ld [hl+], a                                     ; $581b: $22
  ld [hl+], a                                     ; $581c: $22
  ld [de], a                                      ; $581d: $12

jr_001_581e:
  inc hl                                          ; $581e: $23
  dec b                                           ; $581f: $05
  jr nz, jr_001_5810                              ; $5820: $20 $ee

  ret                                             ; $5822: $c9


  db $00, $10, $8d, $01, $10, $8d, $02, $10, $8d, $03, $10, $8d, $04, $10, $8d, $05
  db $10, $8d, $06, $10, $8d, $07, $10, $8d, $08, $10, $8d, $09, $10, $8d, $0a, $10
  db $8d, $0b, $10, $8d, $0c, $10, $8d, $0d, $10, $8d, $0e, $10, $8d, $0f, $10, $8d
  db $10, $10, $8d, $11, $10, $8d, $12, $f0, $93, $13, $10, $8d, $14, $10, $8d, $15
  db $10, $8d, $16, $10, $8d

  rla                                             ; $5868: $17
  db $10                                          ; $5869: $10
  adc l                                           ; $586a: $8d

  db $18, $10, $8d, $19, $10, $8d, $1a, $10, $8d, $1b, $10, $8d, $1c, $10, $8d, $1d
  db $10, $8d, $1e, $10, $8d, $1f, $10, $8d, $20, $10, $8d, $21, $10, $93, $22, $10
  db $8d, $23, $10, $8d, $24, $10, $8d, $25, $10, $8d, $26, $10, $8d, $27, $10, $8d
  db $28, $10, $8d, $29, $10, $8d, $2a, $10, $8d, $2b, $10, $8d, $2c, $10, $8d, $2d
  db $10, $8d, $2e, $10, $8d, $2f, $10, $8d, $30, $10, $8d, $31, $10, $8d, $32, $10
  db $8d, $33, $10, $8d, $34, $10, $8d, $35, $10, $8d, $36, $10, $8d, $37, $10, $8d
  db $38, $10, $8d, $39, $10, $8d, $3a, $10, $8d, $3b, $10, $8d, $3c, $10, $8d, $3d
  db $10, $8d, $3e, $10, $8d, $3f, $10, $91, $40, $10, $8d, $41, $10, $8d, $42, $10
  db $8d, $43, $10, $8d, $44, $10, $8d, $45, $10, $8d, $46, $10, $8d, $47, $10, $8d
  db $48, $f0, $93, $49, $10, $8d, $4a, $f0, $93, $4b, $10, $8d, $4c, $10, $8d, $4d
  db $10, $8d, $4e, $10, $8d, $4f, $10, $8d, $50, $10, $8d, $51, $10, $8d, $52, $10
  db $8d, $53, $10, $8d, $54, $10, $8d, $55, $10, $8d, $56, $10, $8d, $57, $10, $8d
  db $58, $10, $8d, $59, $10, $8d, $5a, $10, $8d, $5b, $10, $8d, $5c, $10, $8d, $5d
  db $10, $8d, $5e, $10, $8d, $5f, $10, $8d, $60, $10, $8d, $61, $10, $8d, $62, $10
  db $8d, $63, $10, $8d, $64, $10, $8d

  ld h, l                                         ; $5952: $65
  db $10                                          ; $5953: $10
  adc l                                           ; $5954: $8d

  db $66, $10, $8d, $67, $10, $8d, $68, $10, $8d, $69, $10, $8d, $6a, $10, $8d, $6b
  db $10, $8d, $6c, $10, $8d, $6d, $10, $8d, $6e, $10, $8d

  ld l, a                                         ; $5970: $6f
  db $10                                          ; $5971: $10
  adc l                                           ; $5972: $8d
  ld [hl], b                                      ; $5973: $70
  db $10                                          ; $5974: $10
  adc l                                           ; $5975: $8d
  ld [hl], c                                      ; $5976: $71
  db $10                                          ; $5977: $10
  adc l                                           ; $5978: $8d
  ld [hl], d                                      ; $5979: $72
  ldh a, [$ff93]                                  ; $597a: $f0 $93

  db $73, $10, $8d

  ld [hl], h                                      ; $597f: $74
  db $10                                          ; $5980: $10
  adc l                                           ; $5981: $8d

  db $75, $10, $8d, $76, $10, $8d

  ld [hl], a                                      ; $5988: $77
  db $10                                          ; $5989: $10
  adc l                                           ; $598a: $8d

  db $b7, $5d, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00

  nop                                             ; $59d0: $00
  nop                                             ; $59d1: $00
  nop                                             ; $59d2: $00

  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $04, $5e, $01, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $37, $5e, $01, $00, $00, $00, $51, $5e, $01, $6a, $5e, $01, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $1e, $5e, $01, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $ea, $5d, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $77, $5f, $01, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db $00, $00, $00, $00, $00, $00, $00

  nop                                             ; $5aba: $00
  nop                                             ; $5abb: $00
  nop                                             ; $5abc: $00

  db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $83
  db $5e, $01, $83, $5e, $01, $83, $5e, $01, $00, $00, $00

  nop                                             ; $5ad8: $00
  nop                                             ; $5ad9: $00
  nop                                             ; $5ada: $00
  ret nc                                          ; $5adb: $d0

  ld e, [hl]                                      ; $5adc: $5e
  ld bc, $5f02                                    ; $5add: $01 $02 $5f
  ld bc, $5f34                                    ; $5ae0: $01 $34 $5f
  db $01                                          ; $5ae3: $01

  db $00, $00, $00

  or a                                            ; $5ae7: $b7
  ld e, [hl]                                      ; $5ae8: $5e
  db $01                                          ; $5ae9: $01

  db $9d, $5e, $01, $00, $00, $00

  ld d, b                                         ; $5af0: $50
  ld e, a                                         ; $5af1: $5f
  db $01                                          ; $5af2: $01

  db $c8, $53, $be, $53, $0e, $54, $0e, $54, $0e, $54, $5e, $54, $0e, $54, $c3, $53
  db $0e, $54, $0e, $54, $c3, $53, $c3, $53, $c3, $53, $c3, $53, $c3, $53, $13, $54
  db $6d, $54, $0e, $54, $54, $54, $18, $54, $c3, $53, $18, $54, $18, $54

  jr @+$56                                        ; $5b21: $18 $54

  db $18, $54, $18, $54, $18, $54, $18, $54, $0e, $54, $0e, $54, $0e, $54, $0e, $54
  db $18, $54, $95, $54, $c3, $53, $c3, $53, $0e, $54, $c3, $53, $c3, $53, $c3, $53
  db $59, $54, $0e, $54, $18, $54, $59, $54, $59, $54, $0e, $54, $0e, $54, $0e, $54
  db $0e, $54, $0e, $54, $59, $54, $c3, $53, $c3, $53, $c3, $53, $0e, $54, $0e, $54
  db $59, $54, $c3, $53, $68, $54, $22, $54, $0e, $54, $0e, $54, $18, $54, $90, $54
  db $0e, $54, $59, $54, $0e, $54, $77, $54, $0e, $54, $0e, $54, $c3, $53, $c3, $53
  db $63, $54, $c3, $53, $54, $54, $c3, $53, $0e, $54, $59, $54, $18, $54, $c3, $53
  db $c3, $53, $c3, $53, $c3, $53, $c3, $53, $0e, $54, $0e, $54, $5e, $54, $c3, $53
  db $0e, $54, $c3, $53, $c3, $53, $c3, $53, $c3, $53, $c3, $53, $c3, $53, $c3, $53
  db $c3, $53, $c3, $53, $c3, $53, $c3, $53, $c3, $53

  db $c3                                          ; $5bbd: $c3
  ld d, e                                         ; $5bbe: $53

  db $c3, $53, $c3, $53, $c3, $53, $c3, $53, $c3, $53, $59, $54, $59, $54, $59, $54
  db $0e, $54

  ld c, $54                                       ; $5bd1: $0e $54
  ld a, h                                         ; $5bd3: $7c
  ld d, h                                         ; $5bd4: $54
  inc de                                          ; $5bd5: $13
  ld d, h                                         ; $5bd6: $54
  adc e                                           ; $5bd7: $8b
  ld d, h                                         ; $5bd8: $54

  db $c3, $53

  db $c3                                          ; $5bdb: $c3
  ld d, e                                         ; $5bdc: $53

  db $c3, $53, $c3, $53

  ld e, [hl]                                      ; $5be1: $5e
  ld d, h                                         ; $5be2: $54

  db $dd, $5c, $e1, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $d7, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c

  db $dd                                          ; $5c11: $dd
  ld e, h                                         ; $5c12: $5c

  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c

  db $dd                                          ; $5cad: $dd
  ld e, h                                         ; $5cae: $5c

  db $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c, $dd, $5c
  db $dd, $5c

  db $dd                                          ; $5cc1: $dd
  ld e, h                                         ; $5cc2: $5c
  db $dd                                          ; $5cc3: $dd
  ld e, h                                         ; $5cc4: $5c
  db $d3                                          ; $5cc5: $d3
  ld e, h                                         ; $5cc6: $5c
  db $dd                                          ; $5cc7: $dd
  ld e, h                                         ; $5cc8: $5c

  db $dd, $5c

  db $dd                                          ; $5ccb: $dd
  ld e, h                                         ; $5ccc: $5c

  db $dd, $5c, $dd, $5c

  db $dd                                          ; $5cd1: $dd
  ld e, h                                         ; $5cd2: $5c
  or d                                            ; $5cd3: $b2
  ld a, h                                         ; $5cd4: $7c
  dec c                                           ; $5cd5: $0d
  nop                                             ; $5cd6: $00

  db $28, $29, $2a, $2b, $2c, $00, $b2, $71, $7c, $00, $89, $88, $8d, $8e, $8f, $90
  db $b2, $00

  nop                                             ; $5ce9: $00

  db $7c, $7d, $00

  push de                                         ; $5ced: $d5
  push hl                                         ; $5cee: $e5
  ld hl, $cd7c                                    ; $5cef: $21 $7c $cd
  ld a, [hl+]                                     ; $5cf2: $2a
  ld h, [hl]                                      ; $5cf3: $66
  ld l, a                                         ; $5cf4: $6f
  call Call_000_01f5                              ; $5cf5: $cd $f5 $01
  ld a, l                                         ; $5cf8: $7d
  ld [$cd8b], a                                   ; $5cf9: $ea $8b $cd
  ld a, h                                         ; $5cfc: $7c
  ld [$cd8c], a                                   ; $5cfd: $ea $8c $cd

Call_001_5d00:
  ld de, $ff60                                    ; $5d00: $11 $60 $ff
  add hl, de                                      ; $5d03: $19
  ld a, l                                         ; $5d04: $7d
  ld [$cd87], a                                   ; $5d05: $ea $87 $cd
  ld a, h                                         ; $5d08: $7c
  ld [$cd88], a                                   ; $5d09: $ea $88 $cd
  ld hl, $cd7e                                    ; $5d0c: $21 $7e $cd
  ld a, [hl+]                                     ; $5d0f: $2a
  ld h, [hl]                                      ; $5d10: $66
  ld l, a                                         ; $5d11: $6f
  call Call_000_01f5                              ; $5d12: $cd $f5 $01
  ld a, l                                         ; $5d15: $7d
  ld [$cd8d], a                                   ; $5d16: $ea $8d $cd
  ld a, h                                         ; $5d19: $7c
  ld [$cd8e], a                                   ; $5d1a: $ea $8e $cd
  ld de, $ff70                                    ; $5d1d: $11 $70 $ff
  add hl, de                                      ; $5d20: $19
  ld a, l                                         ; $5d21: $7d
  ld [$cd89], a                                   ; $5d22: $ea $89 $cd
  ld a, h                                         ; $5d25: $7c
  ld [$cd8a], a                                   ; $5d26: $ea $8a $cd
  pop hl                                          ; $5d29: $e1
  pop de                                          ; $5d2a: $d1
  ret                                             ; $5d2b: $c9


  call Call_000_18d0                              ; $5d2c: $cd $d0 $18
  ld a, $87                                       ; $5d2f: $3e $87
  ldh [rLCDC], a                                  ; $5d31: $e0 $40
  ld a, [$c0a6]                                   ; $5d33: $fa $a6 $c0
  cp $01                                          ; $5d36: $fe $01
  xor a                                           ; $5d38: $af
  ld [$c0a0], a                                   ; $5d39: $ea $a0 $c0
  ld a, $0b                                       ; $5d3c: $3e $0b
  jp Jump_000_261e                                ; $5d3e: $c3 $1e $26


  ret                                             ; $5d41: $c9


  ldh a, [$ffd8]                                  ; $5d42: $f0 $d8
  ld hl, $5823                                    ; $5d44: $21 $23 $58
  call Call_000_3173                              ; $5d47: $cd $73 $31
  ld a, [hl+]                                     ; $5d4a: $2a
  ld [$cd32], a                                   ; $5d4b: $ea $32 $cd
  ld e, [hl]                                      ; $5d4e: $5e
  inc hl                                          ; $5d4f: $23
  ld d, [hl]                                      ; $5d50: $56
  ld a, e                                         ; $5d51: $7b
  ld [$cd2c], a                                   ; $5d52: $ea $2c $cd
  ld a, d                                         ; $5d55: $7a
  ld [$cd2d], a                                   ; $5d56: $ea $2d $cd
  res 7, d                                        ; $5d59: $cb $ba
  sra d                                           ; $5d5b: $cb $2a
  rr e                                            ; $5d5d: $cb $1b
  sra d                                           ; $5d5f: $cb $2a
  rr e                                            ; $5d61: $cb $1b
  sra d                                           ; $5d63: $cb $2a
  rr e                                            ; $5d65: $cb $1b
  sra d                                           ; $5d67: $cb $2a
  rr e                                            ; $5d69: $cb $1b
  ld a, $af                                       ; $5d6b: $3e $af
  add e                                           ; $5d6d: $83
  ld [$cdc3], a                                   ; $5d6e: $ea $c3 $cd
  add $10                                         ; $5d71: $c6 $10
  ld [$cdc4], a                                   ; $5d73: $ea $c4 $cd
  inc a                                           ; $5d76: $3c
  ld [$cdc5], a                                   ; $5d77: $ea $c5 $cd
  ld a, [$cd32]                                   ; $5d7a: $fa $32 $cd
  call Call_000_14dc                              ; $5d7d: $cd $dc $14
  ld hl, $cd33                                    ; $5d80: $21 $33 $cd
  ld [hl], c                                      ; $5d83: $71
  inc hl                                          ; $5d84: $23
  ld [hl], b                                      ; $5d85: $70
  ldh a, [$ffd8]                                  ; $5d86: $f0 $d8
  ld hl, $598b                                    ; $5d88: $21 $8b $59
  call Call_000_3173                              ; $5d8b: $cd $73 $31
  ld a, [hl+]                                     ; $5d8e: $2a
  ld [$cd67], a                                   ; $5d8f: $ea $67 $cd
  ld a, [hl+]                                     ; $5d92: $2a
  ld [$cd68], a                                   ; $5d93: $ea $68 $cd
  ld a, [hl]                                      ; $5d96: $7e
  ld [$cd69], a                                   ; $5d97: $ea $69 $cd
  ret                                             ; $5d9a: $c9


  ld hl, $c2cf                                    ; $5d9b: $21 $cf $c2
  ld bc, $07e0                                    ; $5d9e: $01 $e0 $07
  call Call_000_1248                              ; $5da1: $cd $48 $12
  xor a                                           ; $5da4: $af
  ldh [$ffe1], a                                  ; $5da5: $e0 $e1
  ld [$c0a7], a                                   ; $5da7: $ea $a7 $c0
  ld hl, $cae3                                    ; $5daa: $21 $e3 $ca
  ld [hl], $ff                                    ; $5dad: $36 $ff
  inc hl                                          ; $5daf: $23
  ld [hl], $ff                                    ; $5db0: $36 $ff
  xor a                                           ; $5db2: $af
  ld [$c0a0], a                                   ; $5db3: $ea $a0 $c0
  ret                                             ; $5db6: $c9


  ldh a, [rSVBK]                                  ; $5db7: $f0 $70
  push af                                         ; $5db9: $f5
  ld a, $06                                       ; $5dba: $3e $06
  ldh [rSVBK], a                                  ; $5dbc: $e0 $70
  ld a, [$dcc8]                                   ; $5dbe: $fa $c8 $dc
  ldh [$ffbd], a                                  ; $5dc1: $e0 $bd
  pop af                                          ; $5dc3: $f1
  ldh [rSVBK], a                                  ; $5dc4: $e0 $70
  ldh a, [$ffbd]                                  ; $5dc6: $f0 $bd
  or a                                            ; $5dc8: $b7
  ret z                                           ; $5dc9: $c8

  ldh a, [rSVBK]                                  ; $5dca: $f0 $70
  push af                                         ; $5dcc: $f5
  ld a, $02                                       ; $5dcd: $3e $02
  ldh [rSVBK], a                                  ; $5dcf: $e0 $70
  ld hl, $dc03                                    ; $5dd1: $21 $03 $dc
  ld [hl], $39                                    ; $5dd4: $36 $39
  inc hl                                          ; $5dd6: $23
  ld [hl], $3a                                    ; $5dd7: $36 $3a
  pop af                                          ; $5dd9: $f1
  ldh [rSVBK], a                                  ; $5dda: $e0 $70
  ld a, $01                                       ; $5ddc: $3e $01
  ld [$cd71], a                                   ; $5dde: $ea $71 $cd
  call Call_000_33f3                              ; $5de1: $cd $f3 $33

  db $1e, $3a, $4e

  jp Jump_000_37b7                                ; $5de7: $c3 $b7 $37


  ld a, $28                                       ; $5dea: $3e $28
  call Call_001_6921                              ; $5dec: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5def: $f0 $70
  push af                                         ; $5df1: $f5
  ld a, $02                                       ; $5df2: $3e $02
  ldh [rSVBK], a                                  ; $5df4: $e0 $70
  ld hl, $dc02                                    ; $5df6: $21 $02 $dc
  ld [hl], $01                                    ; $5df9: $36 $01
  pop af                                          ; $5dfb: $f1
  ldh [rSVBK], a                                  ; $5dfc: $e0 $70
  ld a, $01                                       ; $5dfe: $3e $01
  ld [$cd71], a                                   ; $5e00: $ea $71 $cd
  ret                                             ; $5e03: $c9


  ld a, $20                                       ; $5e04: $3e $20
  call Call_001_6921                              ; $5e06: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5e09: $f0 $70
  push af                                         ; $5e0b: $f5
  ld a, $02                                       ; $5e0c: $3e $02
  ldh [rSVBK], a                                  ; $5e0e: $e0 $70
  ld hl, $dc02                                    ; $5e10: $21 $02 $dc
  ld [hl], $01                                    ; $5e13: $36 $01
  pop af                                          ; $5e15: $f1
  ldh [rSVBK], a                                  ; $5e16: $e0 $70
  ld a, $01                                       ; $5e18: $3e $01
  ld [$cd71], a                                   ; $5e1a: $ea $71 $cd
  ret                                             ; $5e1d: $c9


  ld a, $07                                       ; $5e1e: $3e $07
  ldh [$ff9a], a                                  ; $5e20: $e0 $9a
  ld hl, $ff9b                                    ; $5e22: $21 $9b $ff
  ld [hl], $cd                                    ; $5e25: $36 $cd
  inc hl                                          ; $5e27: $23
  ld [hl], $00                                    ; $5e28: $36 $00
  ld hl, $ff9d                                    ; $5e2a: $21 $9d $ff
  ld [hl], $6e                                    ; $5e2d: $36 $6e
  inc hl                                          ; $5e2f: $23
  ld [hl], $00                                    ; $5e30: $36 $00
  ld a, $03                                       ; $5e32: $3e $03
  jp Jump_000_04e0                                ; $5e34: $c3 $e0 $04


  ld a, $40                                       ; $5e37: $3e $40
  call Call_001_6921                              ; $5e39: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5e3c: $f0 $70
  push af                                         ; $5e3e: $f5
  ld a, $02                                       ; $5e3f: $3e $02
  ldh [rSVBK], a                                  ; $5e41: $e0 $70
  ld hl, $dc03                                    ; $5e43: $21 $03 $dc
  ld a, [hl-]                                     ; $5e46: $3a
  ld [hl], a                                      ; $5e47: $77
  pop af                                          ; $5e48: $f1
  ldh [rSVBK], a                                  ; $5e49: $e0 $70
  ld a, $01                                       ; $5e4b: $3e $01
  ld [$cd71], a                                   ; $5e4d: $ea $71 $cd
  ret                                             ; $5e50: $c9


  ld a, $0d                                       ; $5e51: $3e $0d
  ldh [$ff9a], a                                  ; $5e53: $e0 $9a
  ld hl, $ff9b                                    ; $5e55: $21 $9b $ff
  ld [hl], $46                                    ; $5e58: $36 $46
  inc hl                                          ; $5e5a: $23
  ld [hl], $00                                    ; $5e5b: $36 $00
  ld hl, $ff9d                                    ; $5e5d: $21 $9d $ff
  ld [hl], $04                                    ; $5e60: $36 $04
  inc hl                                          ; $5e62: $23
  ld [hl], $01                                    ; $5e63: $36 $01
  ld a, $03                                       ; $5e65: $3e $03
  jp Jump_000_04e0                                ; $5e67: $c3 $e0 $04


  ld a, $12                                       ; $5e6a: $3e $12
  ldh [$ff9a], a                                  ; $5e6c: $e0 $9a
  ld hl, $ff9b                                    ; $5e6e: $21 $9b $ff
  ld [hl], $73                                    ; $5e71: $36 $73
  inc hl                                          ; $5e73: $23
  ld [hl], $00                                    ; $5e74: $36 $00
  ld hl, $ff9d                                    ; $5e76: $21 $9d $ff
  ld [hl], $32                                    ; $5e79: $36 $32
  inc hl                                          ; $5e7b: $23
  ld [hl], $00                                    ; $5e7c: $36 $00
  ld a, $03                                       ; $5e7e: $3e $03
  jp Jump_000_04e0                                ; $5e80: $c3 $e0 $04


  ld a, $68                                       ; $5e83: $3e $68
  call Call_001_6921                              ; $5e85: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5e88: $f0 $70
  push af                                         ; $5e8a: $f5
  ld a, $02                                       ; $5e8b: $3e $02
  ldh [rSVBK], a                                  ; $5e8d: $e0 $70
  ld hl, $dc03                                    ; $5e8f: $21 $03 $dc
  ld a, [hl-]                                     ; $5e92: $3a
  ld [hl], a                                      ; $5e93: $77
  pop af                                          ; $5e94: $f1
  ldh [rSVBK], a                                  ; $5e95: $e0 $70
  ld a, $01                                       ; $5e97: $3e $01
  ld [$cd71], a                                   ; $5e99: $ea $71 $cd
  ret                                             ; $5e9c: $c9


  ld a, $68                                       ; $5e9d: $3e $68
  call Call_001_6921                              ; $5e9f: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5ea2: $f0 $70
  push af                                         ; $5ea4: $f5
  ld a, $02                                       ; $5ea5: $3e $02
  ldh [rSVBK], a                                  ; $5ea7: $e0 $70
  ld hl, $dc02                                    ; $5ea9: $21 $02 $dc
  ld [hl], $34                                    ; $5eac: $36 $34
  pop af                                          ; $5eae: $f1
  ldh [rSVBK], a                                  ; $5eaf: $e0 $70
  ld a, $01                                       ; $5eb1: $3e $01
  ld [$cd71], a                                   ; $5eb3: $ea $71 $cd
  ret                                             ; $5eb6: $c9


  ld a, $13                                       ; $5eb7: $3e $13
  ldh [$ff9a], a                                  ; $5eb9: $e0 $9a
  ld hl, $ff9b                                    ; $5ebb: $21 $9b $ff
  ld [hl], $05                                    ; $5ebe: $36 $05
  inc hl                                          ; $5ec0: $23
  ld [hl], $00                                    ; $5ec1: $36 $00
  ld hl, $ff9d                                    ; $5ec3: $21 $9d $ff
  ld [hl], $28                                    ; $5ec6: $36 $28
  inc hl                                          ; $5ec8: $23
  ld [hl], $00                                    ; $5ec9: $36 $00
  ld a, $03                                       ; $5ecb: $3e $03
  jp Jump_000_04e0                                ; $5ecd: $c3 $e0 $04


  ld a, $0e                                       ; $5ed0: $3e $0e
  ldh [$ff9a], a                                  ; $5ed2: $e0 $9a
  ld hl, $ff9b                                    ; $5ed4: $21 $9b $ff
  ld [hl], $70                                    ; $5ed7: $36 $70
  inc hl                                          ; $5ed9: $23
  ld [hl], $01                                    ; $5eda: $36 $01
  ld hl, $ff9d                                    ; $5edc: $21 $9d $ff
  ld [hl], $6e                                    ; $5edf: $36 $6e
  inc hl                                          ; $5ee1: $23
  ld [hl], $00                                    ; $5ee2: $36 $00
  ld a, $03                                       ; $5ee4: $3e $03
  call Call_000_04e0                              ; $5ee6: $cd $e0 $04
  ld a, $0f                                       ; $5ee9: $3e $0f
  ldh [$ff9a], a                                  ; $5eeb: $e0 $9a
  ld hl, $ff9b                                    ; $5eed: $21 $9b $ff
  ld [hl], $74                                    ; $5ef0: $36 $74
  inc hl                                          ; $5ef2: $23
  ld [hl], $01                                    ; $5ef3: $36 $01
  ld hl, $ff9d                                    ; $5ef5: $21 $9d $ff
  ld [hl], $2d                                    ; $5ef8: $36 $2d
  inc hl                                          ; $5efa: $23
  ld [hl], $00                                    ; $5efb: $36 $00
  ld a, $03                                       ; $5efd: $3e $03
  jp Jump_000_04e0                                ; $5eff: $c3 $e0 $04


  ld a, $10                                       ; $5f02: $3e $10
  ldh [$ff9a], a                                  ; $5f04: $e0 $9a
  ld hl, $ff9b                                    ; $5f06: $21 $9b $ff
  ld [hl], $95                                    ; $5f09: $36 $95
  inc hl                                          ; $5f0b: $23
  ld [hl], $01                                    ; $5f0c: $36 $01
  ld hl, $ff9d                                    ; $5f0e: $21 $9d $ff
  ld [hl], $32                                    ; $5f11: $36 $32
  inc hl                                          ; $5f13: $23
  ld [hl], $00                                    ; $5f14: $36 $00
  ld a, $03                                       ; $5f16: $3e $03
  call Call_000_04e0                              ; $5f18: $cd $e0 $04
  ld a, $11                                       ; $5f1b: $3e $11
  ldh [$ff9a], a                                  ; $5f1d: $e0 $9a
  ld hl, $ff9b                                    ; $5f1f: $21 $9b $ff
  ld [hl], $77                                    ; $5f22: $36 $77
  inc hl                                          ; $5f24: $23
  ld [hl], $01                                    ; $5f25: $36 $01
  ld hl, $ff9d                                    ; $5f27: $21 $9d $ff
  ld [hl], $32                                    ; $5f2a: $36 $32
  inc hl                                          ; $5f2c: $23
  ld [hl], $00                                    ; $5f2d: $36 $00
  ld a, $03                                       ; $5f2f: $3e $03
  jp Jump_000_04e0                                ; $5f31: $c3 $e0 $04


  ld a, $58                                       ; $5f34: $3e $58
  call Call_001_6921                              ; $5f36: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5f39: $f0 $70
  push af                                         ; $5f3b: $f5
  ld a, $02                                       ; $5f3c: $3e $02
  ldh [rSVBK], a                                  ; $5f3e: $e0 $70
  ld hl, $dc05                                    ; $5f40: $21 $05 $dc
  ld a, [hl-]                                     ; $5f43: $3a
  ld [hl-], a                                     ; $5f44: $32
  ld [hl-], a                                     ; $5f45: $32
  ld [hl-], a                                     ; $5f46: $32
  pop af                                          ; $5f47: $f1
  ldh [rSVBK], a                                  ; $5f48: $e0 $70
  ld a, $01                                       ; $5f4a: $3e $01
  ld [$cd71], a                                   ; $5f4c: $ea $71 $cd
  ret                                             ; $5f4f: $c9


  ld a, $60                                       ; $5f50: $3e $60
  call Call_001_6921                              ; $5f52: $cd $21 $69
  ldh a, [rSVBK]                                  ; $5f55: $f0 $70
  push af                                         ; $5f57: $f5
  ld a, $02                                       ; $5f58: $3e $02
  ldh [rSVBK], a                                  ; $5f5a: $e0 $70
  ld hl, $dc05                                    ; $5f5c: $21 $05 $dc
  ld a, [hl-]                                     ; $5f5f: $3a
  ld [hl-], a                                     ; $5f60: $32
  ld [hl-], a                                     ; $5f61: $32
  ld [hl-], a                                     ; $5f62: $32
  pop af                                          ; $5f63: $f1
  ldh [rSVBK], a                                  ; $5f64: $e0 $70
  ld a, $01                                       ; $5f66: $3e $01
  ld [$cd71], a                                   ; $5f68: $ea $71 $cd
  ret                                             ; $5f6b: $c9


  ldh a, [$ffd8]                                  ; $5f6c: $f0 $d8
  ld hl, $5af3                                    ; $5f6e: $21 $f3 $5a
  call ResolveIndexedPointer16                              ; $5f71: $cd $8b $31
  jp Jump_001_5533                                ; $5f74: $c3 $33 $55


  ld a, $14                                       ; $5f77: $3e $14
  ldh [$ff9a], a                                  ; $5f79: $e0 $9a
  ld hl, $ff9b                                    ; $5f7b: $21 $9b $ff
  ld [hl], $23                                    ; $5f7e: $36 $23
  inc hl                                          ; $5f80: $23
  ld [hl], $00                                    ; $5f81: $36 $00
  ld hl, $ff9d                                    ; $5f83: $21 $9d $ff
  ld [hl], $05                                    ; $5f86: $36 $05
  inc hl                                          ; $5f88: $23
  ld [hl], $00                                    ; $5f89: $36 $00
  ld a, $03                                       ; $5f8b: $3e $03
  call Call_000_04e0                              ; $5f8d: $cd $e0 $04
  ld a, $15                                       ; $5f90: $3e $15
  ldh [$ff9a], a                                  ; $5f92: $e0 $9a
  ld hl, $ff9b                                    ; $5f94: $21 $9b $ff
  ld [hl], $64                                    ; $5f97: $36 $64
  inc hl                                          ; $5f99: $23
  ld [hl], $00                                    ; $5f9a: $36 $00
  ld hl, $ff9d                                    ; $5f9c: $21 $9d $ff
  ld [hl], $05                                    ; $5f9f: $36 $05
  inc hl                                          ; $5fa1: $23
  ld [hl], $00                                    ; $5fa2: $36 $00
  ld a, $03                                       ; $5fa4: $3e $03
  call Call_000_04e0                              ; $5fa6: $cd $e0 $04
  ld a, $16                                       ; $5fa9: $3e $16
  ldh [$ff9a], a                                  ; $5fab: $e0 $9a
  ld hl, $ff9b                                    ; $5fad: $21 $9b $ff
  ld [hl], $46                                    ; $5fb0: $36 $46
  inc hl                                          ; $5fb2: $23
  ld [hl], $00                                    ; $5fb3: $36 $00
  ld hl, $ff9d                                    ; $5fb5: $21 $9d $ff
  ld [hl], $c3                                    ; $5fb8: $36 $c3
  inc hl                                          ; $5fba: $23
  ld [hl], $00                                    ; $5fbb: $36 $00
  ld a, $03                                       ; $5fbd: $3e $03
  call Call_000_04e0                              ; $5fbf: $cd $e0 $04
  ld a, $17                                       ; $5fc2: $3e $17
  ldh [$ff9a], a                                  ; $5fc4: $e0 $9a
  ld hl, $ff9b                                    ; $5fc6: $21 $9b $ff
  ld [hl], $46                                    ; $5fc9: $36 $46
  inc hl                                          ; $5fcb: $23
  ld [hl], $00                                    ; $5fcc: $36 $00
  ld hl, $ff9d                                    ; $5fce: $21 $9d $ff
  ld [hl], $e1                                    ; $5fd1: $36 $e1
  inc hl                                          ; $5fd3: $23
  ld [hl], $00                                    ; $5fd4: $36 $00
  ld a, $03                                       ; $5fd6: $3e $03
  jp Jump_000_04e0                                ; $5fd8: $c3 $e0 $04


  ld hl, $52cd                                    ; $5fdb: $21 $cd $52
  ld bc, $0000                                    ; $5fde: $01 $00 $00
  call Call_000_333f                              ; $5fe1: $cd $3f $33
  call Call_000_33f3                              ; $5fe4: $cd $f3 $33

  db $00, $57, $35

  jp Jump_000_30e8                                ; $5fea: $c3 $e8 $30


Call_001_5fed:
  ldh a, [rSVBK]                                  ; $5fed: $f0 $70
  push af                                         ; $5fef: $f5
  ld a, $07                                       ; $5ff0: $3e $07
  ldh [rSVBK], a                                  ; $5ff2: $e0 $70
  call Call_001_4153                              ; $5ff4: $cd $53 $41
  ld c, l                                         ; $5ff7: $4d
  ld b, h                                         ; $5ff8: $44
  call Call_001_6006                              ; $5ff9: $cd $06 $60
  call Call_001_606b                              ; $5ffc: $cd $6b $60
  call Call_001_40ae                              ; $5fff: $cd $ae $40
  pop af                                          ; $6002: $f1
  ldh [rSVBK], a                                  ; $6003: $e0 $70
  ret                                             ; $6005: $c9


Call_001_6006:
  ld hl, $c15e                                    ; $6006: $21 $5e $c1
  ld e, [hl]                                      ; $6009: $5e
  inc hl                                          ; $600a: $23
  ld d, [hl]                                      ; $600b: $56
  ld hl, $ffb9                                    ; $600c: $21 $b9 $ff
  ld [hl], e                                      ; $600f: $73
  inc hl                                          ; $6010: $23
  ld [hl], d                                      ; $6011: $72
  ld de, $cef0                                    ; $6012: $11 $f0 $ce
  xor a                                           ; $6015: $af

jr_001_6016:
  push af                                         ; $6016: $f5
  push de                                         ; $6017: $d5
  ld e, a                                         ; $6018: $5f
  ld hl, $c15c                                    ; $6019: $21 $5c $c1
  ld a, [hl+]                                     ; $601c: $2a
  ld h, [hl]                                      ; $601d: $66
  ld l, a                                         ; $601e: $6f
  ld a, e                                         ; $601f: $7b
  call ResolveIndexedPointer16                              ; $6020: $cd $8b $31
  ld a, [$c160]                                   ; $6023: $fa $60 $c1
  and $85                                         ; $6026: $e6 $85
  jr nz, jr_001_6037                              ; $6028: $20 $0d

  call Call_001_62c0                              ; $602a: $cd $c0 $62
  ld a, e                                         ; $602d: $7b
  dec a                                           ; $602e: $3d
  and $f0                                         ; $602f: $e6 $f0
  swap a                                          ; $6031: $cb $37
  inc a                                           ; $6033: $3c
  call Call_001_632b                              ; $6034: $cd $2b $63

jr_001_6037:
  ld a, l                                         ; $6037: $7d
  ld [$c152], a                                   ; $6038: $ea $52 $c1
  ld a, h                                         ; $603b: $7c
  ld [$c153], a                                   ; $603c: $ea $53 $c1
  pop de                                          ; $603f: $d1
  ld a, [$c160]                                   ; $6040: $fa $60 $c1
  bit 0, a                                        ; $6043: $cb $47
  jr nz, jr_001_6054                              ; $6045: $20 $0d

  bit 2, a                                        ; $6047: $cb $57
  jr nz, jr_001_6059                              ; $6049: $20 $0e

  bit 7, a                                        ; $604b: $cb $7f
  jr nz, jr_001_605e                              ; $604d: $20 $0f

  call Call_001_60b3                              ; $604f: $cd $b3 $60
  jr jr_001_6061                                  ; $6052: $18 $0d

jr_001_6054:
  call Call_001_60d0                              ; $6054: $cd $d0 $60
  jr jr_001_6061                                  ; $6057: $18 $08

jr_001_6059:
  call Call_001_60bf                              ; $6059: $cd $bf $60
  jr jr_001_6061                                  ; $605c: $18 $03

jr_001_605e:
  call Call_001_60e4                              ; $605e: $cd $e4 $60

jr_001_6061:
  ld a, [$c15b]                                   ; $6061: $fa $5b $c1
  ld l, a                                         ; $6064: $6f
  pop af                                          ; $6065: $f1
  inc a                                           ; $6066: $3c
  cp l                                            ; $6067: $bd
  jr nz, jr_001_6016                              ; $6068: $20 $ac

  ret                                             ; $606a: $c9


Call_001_606b:
  ld hl, $c15c                                    ; $606b: $21 $5c $c1
  ld e, [hl]                                      ; $606e: $5e
  inc hl                                          ; $606f: $23
  ld d, [hl]                                      ; $6070: $56
  xor a                                           ; $6071: $af

jr_001_6072:
  push af                                         ; $6072: $f5
  ld [$c11a], a                                   ; $6073: $ea $1a $c1
  ld a, [$c160]                                   ; $6076: $fa $60 $c1
  and $85                                         ; $6079: $e6 $85
  jr nz, jr_001_608b                              ; $607b: $20 $0e

  ld a, [$c11a]                                   ; $607d: $fa $1a $c1
  ld hl, $cef0                                    ; $6080: $21 $f0 $ce
  call Call_001_6339                              ; $6083: $cd $39 $63
  call Call_001_62e6                              ; $6086: $cd $e6 $62
  jr jr_001_60a9                                  ; $6089: $18 $1e

jr_001_608b:
  bit 7, a                                        ; $608b: $cb $7f
  jr nz, jr_001_609d                              ; $608d: $20 $0e

  ld a, [$c11a]                                   ; $608f: $fa $1a $c1
  ld hl, $cef0                                    ; $6092: $21 $f0 $ce
  call Call_001_6339                              ; $6095: $cd $39 $63
  call Call_001_62da                              ; $6098: $cd $da $62
  jr jr_001_60a9                                  ; $609b: $18 $0c

jr_001_609d:
  ld a, [$c11a]                                   ; $609d: $fa $1a $c1
  ld hl, $cef0                                    ; $60a0: $21 $f0 $ce
  call Call_001_6339                              ; $60a3: $cd $39 $63
  call Call_001_62df                              ; $60a6: $cd $df $62

jr_001_60a9:
  ld a, [$c15b]                                   ; $60a9: $fa $5b $c1
  ld c, a                                         ; $60ac: $4f
  pop af                                          ; $60ad: $f1
  inc a                                           ; $60ae: $3c
  cp c                                            ; $60af: $b9
  jr nz, jr_001_6072                              ; $60b0: $20 $c0

  ret                                             ; $60b2: $c9


Call_001_60b3:
  call Call_001_634a                              ; $60b3: $cd $4a $63
  call Call_001_6287                              ; $60b6: $cd $87 $62
  call Call_001_6123                              ; $60b9: $cd $23 $61
  ld [de], a                                      ; $60bc: $12
  inc de                                          ; $60bd: $13
  ret                                             ; $60be: $c9


Call_001_60bf:
  call Call_001_634a                              ; $60bf: $cd $4a $63
  push bc                                         ; $60c2: $c5
  ld a, $02                                       ; $60c3: $3e $02
  ld [$c120], a                                   ; $60c5: $ea $20 $c1
  call Call_001_6123                              ; $60c8: $cd $23 $61
  ld [de], a                                      ; $60cb: $12
  inc de                                          ; $60cc: $13
  pop bc                                          ; $60cd: $c1
  jr jr_001_60de                                  ; $60ce: $18 $0e

Call_001_60d0:
  call Call_001_634a                              ; $60d0: $cd $4a $63
  push bc                                         ; $60d3: $c5
  xor a                                           ; $60d4: $af
  ld [$c120], a                                   ; $60d5: $ea $20 $c1
  call Call_001_6123                              ; $60d8: $cd $23 $61
  ld [de], a                                      ; $60db: $12
  inc de                                          ; $60dc: $13
  pop bc                                          ; $60dd: $c1

jr_001_60de:
  ld a, [bc]                                      ; $60de: $0a
  inc bc                                          ; $60df: $03
  rla                                             ; $60e0: $17
  jr nc, jr_001_60de                              ; $60e1: $30 $fb

  ret                                             ; $60e3: $c9


Call_001_60e4:
  push bc                                         ; $60e4: $c5
  call Call_001_634a                              ; $60e5: $cd $4a $63
  call Call_001_6297                              ; $60e8: $cd $97 $62
  call Call_001_6123                              ; $60eb: $cd $23 $61
  ld [de], a                                      ; $60ee: $12
  inc de                                          ; $60ef: $13
  pop bc                                          ; $60f0: $c1
  ret                                             ; $60f1: $c9


Call_001_60f2:
  push bc                                         ; $60f2: $c5
  ld a, [$c11c]                                   ; $60f3: $fa $1c $c1
  and $7f                                         ; $60f6: $e6 $7f
  ld hl, $d200                                    ; $60f8: $21 $00 $d2
  call Call_000_3153                              ; $60fb: $cd $53 $31
  ld bc, $c122                                    ; $60fe: $01 $22 $c1
  ld a, $08                                       ; $6101: $3e $08

jr_001_6103:
  push af                                         ; $6103: $f5
  ld e, $00                                       ; $6104: $1e $00
  ld a, [hl+]                                     ; $6106: $2a
  ld d, a                                         ; $6107: $57
  ld a, [$c120]                                   ; $6108: $fa $20 $c1
  or a                                            ; $610b: $b7
  jr z, jr_001_6115                               ; $610c: $28 $07

jr_001_610e:
  srl d                                           ; $610e: $cb $3a
  rr e                                            ; $6110: $cb $1b
  dec a                                           ; $6112: $3d
  jr nz, jr_001_610e                              ; $6113: $20 $f9

jr_001_6115:
  ld a, [bc]                                      ; $6115: $0a
  or e                                            ; $6116: $b3
  ld [bc], a                                      ; $6117: $02
  inc bc                                          ; $6118: $03
  ld a, [bc]                                      ; $6119: $0a
  or d                                            ; $611a: $b2
  ld [bc], a                                      ; $611b: $02
  inc bc                                          ; $611c: $03
  pop af                                          ; $611d: $f1
  dec a                                           ; $611e: $3d
  jr nz, jr_001_6103                              ; $611f: $20 $e2

  pop bc                                          ; $6121: $c1
  ret                                             ; $6122: $c9


Call_001_6123:
  push de                                         ; $6123: $d5
  push hl                                         ; $6124: $e5
  ld a, [$4000]                                   ; $6125: $fa $00 $40
  ld [$c11d], a                                   ; $6128: $ea $1d $c1
  push bc                                         ; $612b: $c5
  ld hl, $c122                                    ; $612c: $21 $22 $c1
  ld bc, $0010                                    ; $612f: $01 $10 $00
  call Call_000_1248                              ; $6132: $cd $48 $12
  pop bc                                          ; $6135: $c1
  ld hl, $ffb9                                    ; $6136: $21 $b9 $ff
  ld a, [hl+]                                     ; $6139: $2a
  ld h, [hl]                                      ; $613a: $66
  ld l, a                                         ; $613b: $6f
  add hl, hl                                      ; $613c: $29
  add hl, hl                                      ; $613d: $29
  add hl, hl                                      ; $613e: $29
  add hl, hl                                      ; $613f: $29
  set 7, h                                        ; $6140: $cb $fc
  ld a, l                                         ; $6142: $7d
  ld [$c11e], a                                   ; $6143: $ea $1e $c1
  ld a, h                                         ; $6146: $7c
  ld [$c11f], a                                   ; $6147: $ea $1f $c1
  xor a                                           ; $614a: $af
  ld [$c121], a                                   ; $614b: $ea $21 $c1

Jump_001_614e:
  ld a, [bc]                                      ; $614e: $0a
  inc bc                                          ; $614f: $03
  ld [$c11c], a                                   ; $6150: $ea $1c $c1
  call Call_001_60f2                              ; $6153: $cd $f2 $60
  ld a, [$c11c]                                   ; $6156: $fa $1c $c1
  and $7f                                         ; $6159: $e6 $7f
  ld hl, $db00                                    ; $615b: $21 $00 $db
  rst $08                                         ; $615e: $cf
  ld a, [$c157]                                   ; $615f: $fa $57 $c1
  add [hl]                                        ; $6162: $86
  ld hl, $c120                                    ; $6163: $21 $20 $c1
  add [hl]                                        ; $6166: $86
  ld [hl], a                                      ; $6167: $77
  sub $08                                         ; $6168: $d6 $08
  jr c, jr_001_6170                               ; $616a: $38 $04

  ld [hl], a                                      ; $616c: $77
  call Call_001_619b                              ; $616d: $cd $9b $61

jr_001_6170:
  ld a, [$c11c]                                   ; $6170: $fa $1c $c1
  rla                                             ; $6173: $17
  jr c, jr_001_617d                               ; $6174: $38 $07

  ld a, [bc]                                      ; $6176: $0a
  cp $a0                                          ; $6177: $fe $a0
  jp nz, Jump_001_614e                            ; $6179: $c2 $4e $61

  inc bc                                          ; $617c: $03

jr_001_617d:
  ld a, [$c120]                                   ; $617d: $fa $20 $c1
  cp $02                                          ; $6180: $fe $02
  call nc, Call_001_619b                          ; $6182: $d4 $9b $61
  ld hl, $ffb9                                    ; $6185: $21 $b9 $ff
  ld a, [hl+]                                     ; $6188: $2a
  ld h, [hl]                                      ; $6189: $66
  ld l, a                                         ; $618a: $6f
  ld a, [$c121]                                   ; $618b: $fa $21 $c1
  rst $08                                         ; $618e: $cf
  ld a, l                                         ; $618f: $7d
  ldh [$ffb9], a                                  ; $6190: $e0 $b9
  ld a, h                                         ; $6192: $7c
  ldh [$ffba], a                                  ; $6193: $e0 $ba
  ld a, [$c121]                                   ; $6195: $fa $21 $c1
  pop hl                                          ; $6198: $e1
  pop de                                          ; $6199: $d1
  ret                                             ; $619a: $c9


Call_001_619b:
  push bc                                         ; $619b: $c5
  ld a, [$c160]                                   ; $619c: $fa $60 $c1
  bit 6, a                                        ; $619f: $cb $77
  jr z, jr_001_61c6                               ; $61a1: $28 $23

  ld a, [$c15a]                                   ; $61a3: $fa $5a $c1
  rra                                             ; $61a6: $1f
  rra                                             ; $61a7: $1f
  rra                                             ; $61a8: $1f
  rra                                             ; $61a9: $1f
  ld hl, $c132                                    ; $61aa: $21 $32 $c1
  ld d, h                                         ; $61ad: $54
  ld e, l                                         ; $61ae: $5d
  ld b, $02                                       ; $61af: $06 $02

jr_001_61b1:
  ld [hl], $00                                    ; $61b1: $36 $00
  rra                                             ; $61b3: $1f
  jp nc, Jump_001_61b9                            ; $61b4: $d2 $b9 $61

  ld [hl], $ff                                    ; $61b7: $36 $ff

Jump_001_61b9:
  inc hl                                          ; $61b9: $23
  dec b                                           ; $61ba: $05
  jr nz, jr_001_61b1                              ; $61bb: $20 $f4

  push de                                         ; $61bd: $d5
  ld d, h                                         ; $61be: $54
  ld e, l                                         ; $61bf: $5d
  pop hl                                          ; $61c0: $e1
  call Call_000_024b                              ; $61c1: $cd $4b $02
  jr jr_001_6215                                  ; $61c4: $18 $4f

jr_001_61c6:
  ldh a, [rSVBK]                                  ; $61c6: $f0 $70
  push af                                         ; $61c8: $f5
  ld a, $03                                       ; $61c9: $3e $03
  ldh [rSVBK], a                                  ; $61cb: $e0 $70
  ld hl, $c152                                    ; $61cd: $21 $52 $c1
  ld a, [hl+]                                     ; $61d0: $2a
  ld h, [hl]                                      ; $61d1: $66
  ld l, a                                         ; $61d2: $6f
  ld a, [hl+]                                     ; $61d3: $2a
  ld e, a                                         ; $61d4: $5f
  ld a, l                                         ; $61d5: $7d
  ld [$c152], a                                   ; $61d6: $ea $52 $c1
  ld a, h                                         ; $61d9: $7c
  ld [$c153], a                                   ; $61da: $ea $53 $c1
  pop af                                          ; $61dd: $f1
  ldh [rSVBK], a                                  ; $61de: $e0 $70
  ld h, $00                                       ; $61e0: $26 $00
  ld a, e                                         ; $61e2: $7b
  sub $80                                         ; $61e3: $d6 $80
  ld l, a                                         ; $61e5: $6f
  add hl, hl                                      ; $61e6: $29
  add hl, hl                                      ; $61e7: $29
  add hl, hl                                      ; $61e8: $29
  add hl, hl                                      ; $61e9: $29
  ld de, $8800                                    ; $61ea: $11 $00 $88
  add hl, de                                      ; $61ed: $19
  ldh a, [rLCDC]                                  ; $61ee: $f0 $40
  rla                                             ; $61f0: $17
  jr c, jr_001_61fb                               ; $61f1: $38 $08

  ld de, $c132                                    ; $61f3: $11 $32 $c1
  call Call_000_0245                              ; $61f6: $cd $45 $02
  jr jr_001_6215                                  ; $61f9: $18 $1a

jr_001_61fb:
  ld a, l                                         ; $61fb: $7d
  ld [$c04d], a                                   ; $61fc: $ea $4d $c0
  ld a, h                                         ; $61ff: $7c
  ld [$c04e], a                                   ; $6200: $ea $4e $c0
  ld de, $c132                                    ; $6203: $11 $32 $c1
  ld hl, $c04f                                    ; $6206: $21 $4f $c0
  ld [hl], e                                      ; $6209: $73
  inc hl                                          ; $620a: $23
  ld [hl], d                                      ; $620b: $72
  ld hl, $1f00                                    ; $620c: $21 $00 $1f
  call Call_000_33f3                              ; $620f: $cd $f3 $33

  db $03, $7a, $7e

jr_001_6215:
  ld hl, $c122                                    ; $6215: $21 $22 $c1
  ld bc, $c132                                    ; $6218: $01 $32 $c1
  ld a, $08                                       ; $621b: $3e $08

Jump_001_621d:
  push af                                         ; $621d: $f5
  xor a                                           ; $621e: $af
  ld e, [hl]                                      ; $621f: $5e
  ld [hl+], a                                     ; $6220: $22
  ld d, [hl]                                      ; $6221: $56
  ld [hl], e                                      ; $6222: $73
  inc hl                                          ; $6223: $23
  push hl                                         ; $6224: $e5
  ld a, d                                         ; $6225: $7a
  cpl                                             ; $6226: $2f
  ld e, a                                         ; $6227: $5f
  ld l, c                                         ; $6228: $69
  ld h, b                                         ; $6229: $60
  ld a, [$c15a]                                   ; $622a: $fa $5a $c1
  and $0f                                         ; $622d: $e6 $0f
  ld c, a                                         ; $622f: $4f
  ld b, $02                                       ; $6230: $06 $02

jr_001_6232:
  ld a, [hl]                                      ; $6232: $7e
  srl c                                           ; $6233: $cb $39
  jp nc, Jump_001_623c                            ; $6235: $d2 $3c $62

  or d                                            ; $6238: $b2
  jp Jump_001_623d                                ; $6239: $c3 $3d $62


Jump_001_623c:
  and e                                           ; $623c: $a3

Jump_001_623d:
  ld [hl], a                                      ; $623d: $77
  inc hl                                          ; $623e: $23
  dec b                                           ; $623f: $05
  jr nz, jr_001_6232                              ; $6240: $20 $f0

  ld c, l                                         ; $6242: $4d
  ld b, h                                         ; $6243: $44
  pop hl                                          ; $6244: $e1
  pop af                                          ; $6245: $f1
  dec a                                           ; $6246: $3d
  jp nz, Jump_001_621d                            ; $6247: $c2 $1d $62

  ld hl, $c11e                                    ; $624a: $21 $1e $c1
  ld e, [hl]                                      ; $624d: $5e
  inc hl                                          ; $624e: $23
  ld d, [hl]                                      ; $624f: $56
  ld hl, $c132                                    ; $6250: $21 $32 $c1
  ldh a, [rLCDC]                                  ; $6253: $f0 $40
  rla                                             ; $6255: $17
  jr c, jr_001_6267                               ; $6256: $38 $0f

  call Call_001_6276                              ; $6258: $cd $76 $62
  push af                                         ; $625b: $f5
  call Call_000_0245                              ; $625c: $cd $45 $02
  pop af                                          ; $625f: $f1
  add d                                           ; $6260: $82
  ld d, a                                         ; $6261: $57
  xor a                                           ; $6262: $af
  ldh [rVBK], a                                   ; $6263: $e0 $4f
  jr jr_001_626a                                  ; $6265: $18 $03

jr_001_6267:
  call Call_001_4001                              ; $6267: $cd $01 $40

jr_001_626a:
  ld hl, $c11e                                    ; $626a: $21 $1e $c1
  ld [hl], e                                      ; $626d: $73
  inc hl                                          ; $626e: $23
  ld [hl], d                                      ; $626f: $72
  ld hl, $c121                                    ; $6270: $21 $21 $c1
  inc [hl]                                        ; $6273: $34
  pop bc                                          ; $6274: $c1
  ret                                             ; $6275: $c9


Call_001_6276:
  ld a, d                                         ; $6276: $7a
  cp $a0                                          ; $6277: $fe $a0
  ld a, $00                                       ; $6279: $3e $00
  ret c                                           ; $627b: $d8

  ld a, d                                         ; $627c: $7a
  sub $18                                         ; $627d: $d6 $18
  ld d, a                                         ; $627f: $57
  ld a, $01                                       ; $6280: $3e $01
  ldh [rVBK], a                                   ; $6282: $e0 $4f
  ld a, $18                                       ; $6284: $3e $18
  ret                                             ; $6286: $c9


Call_001_6287:
  push de                                         ; $6287: $d5
  call Call_001_62c0                              ; $6288: $cd $c0 $62
  inc a                                           ; $628b: $3c
  srl e                                           ; $628c: $cb $3b
  xor a                                           ; $628e: $af
  sub e                                           ; $628f: $93
  and $07                                         ; $6290: $e6 $07
  ld [$c120], a                                   ; $6292: $ea $20 $c1
  pop de                                          ; $6295: $d1
  ret                                             ; $6296: $c9


Call_001_6297:
  push de                                         ; $6297: $d5
  push hl                                         ; $6298: $e5
  call Call_001_62c0                              ; $6299: $cd $c0 $62
  ld a, $f8                                       ; $629c: $3e $f8
  ld d, $ff                                       ; $629e: $16 $ff

jr_001_62a0:
  inc d                                           ; $62a0: $14
  add $08                                         ; $62a1: $c6 $08
  cp e                                            ; $62a3: $bb
  jr c, jr_001_62a0                               ; $62a4: $38 $fa

  sub e                                           ; $62a6: $93
  ld [$c120], a                                   ; $62a7: $ea $20 $c1
  ld hl, $c152                                    ; $62aa: $21 $52 $c1
  ld a, [hl+]                                     ; $62ad: $2a
  ld h, [hl]                                      ; $62ae: $66
  ld l, a                                         ; $62af: $6f
  ld a, d                                         ; $62b0: $7a
  dec a                                           ; $62b1: $3d
  call Call_001_632b                              ; $62b2: $cd $2b $63
  ld a, l                                         ; $62b5: $7d
  ld [$c152], a                                   ; $62b6: $ea $52 $c1
  ld a, h                                         ; $62b9: $7c
  ld [$c153], a                                   ; $62ba: $ea $53 $c1
  pop hl                                          ; $62bd: $e1
  pop de                                          ; $62be: $d1
  ret                                             ; $62bf: $c9


Call_001_62c0:
  push bc                                         ; $62c0: $c5
  push hl                                         ; $62c1: $e5
  ld e, $00                                       ; $62c2: $1e $00

jr_001_62c4:
  ld a, [bc]                                      ; $62c4: $0a
  and $7f                                         ; $62c5: $e6 $7f
  ld hl, $db00                                    ; $62c7: $21 $00 $db
  rst $08                                         ; $62ca: $cf
  ld a, [$c157]                                   ; $62cb: $fa $57 $c1
  add e                                           ; $62ce: $83
  add [hl]                                        ; $62cf: $86
  ld e, a                                         ; $62d0: $5f
  ld a, [bc]                                      ; $62d1: $0a
  inc bc                                          ; $62d2: $03
  rla                                             ; $62d3: $17
  jr nc, jr_001_62c4                              ; $62d4: $30 $ee

  dec e                                           ; $62d6: $1d
  pop hl                                          ; $62d7: $e1
  pop bc                                          ; $62d8: $c1
  ret                                             ; $62d9: $c9


Call_001_62da:
  call Call_001_6330                              ; $62da: $cd $30 $63
  jr jr_001_62f0                                  ; $62dd: $18 $11

Call_001_62df:
  call Call_001_6330                              ; $62df: $cd $30 $63
  push af                                         ; $62e2: $f5
  dec a                                           ; $62e3: $3d
  jr jr_001_62ec                                  ; $62e4: $18 $06

Call_001_62e6:
  call Call_001_6330                              ; $62e6: $cd $30 $63
  push af                                         ; $62e9: $f5
  srl a                                           ; $62ea: $cb $3f

jr_001_62ec:
  call Call_001_632b                              ; $62ec: $cd $2b $63
  pop af                                          ; $62ef: $f1

jr_001_62f0:
  call Call_001_6308                              ; $62f0: $cd $08 $63
  ldh [$ffbd], a                                  ; $62f3: $e0 $bd
  ldh a, [rSVBK]                                  ; $62f5: $f0 $70
  push af                                         ; $62f7: $f5
  ld a, $03                                       ; $62f8: $3e $03
  ldh [rSVBK], a                                  ; $62fa: $e0 $70
  ldh a, [$ffbd]                                  ; $62fc: $f0 $bd

jr_001_62fe:
  ld [hl], c                                      ; $62fe: $71
  inc hl                                          ; $62ff: $23
  inc bc                                          ; $6300: $03
  dec a                                           ; $6301: $3d
  jr nz, jr_001_62fe                              ; $6302: $20 $fa

  pop af                                          ; $6304: $f1
  ldh [rSVBK], a                                  ; $6305: $e0 $70
  ret                                             ; $6307: $c9


Call_001_6308:
  dec b                                           ; $6308: $05
  dec b                                           ; $6309: $05
  jr nz, jr_001_6328                              ; $630a: $20 $1c

  ld b, a                                         ; $630c: $47
  push af                                         ; $630d: $f5
  push hl                                         ; $630e: $e5
  ldh a, [rSVBK]                                  ; $630f: $f0 $70
  push af                                         ; $6311: $f5
  ld a, $03                                       ; $6312: $3e $03
  ldh [rSVBK], a                                  ; $6314: $e0 $70
  ld a, $05                                       ; $6316: $3e $05
  add h                                           ; $6318: $84
  ld h, a                                         ; $6319: $67

jr_001_631a:
  set 3, [hl]                                     ; $631a: $cb $de
  inc hl                                          ; $631c: $23
  dec b                                           ; $631d: $05
  jr nz, jr_001_631a                              ; $631e: $20 $fa

  pop af                                          ; $6320: $f1
  ldh [rSVBK], a                                  ; $6321: $e0 $70
  pop hl                                          ; $6323: $e1
  pop af                                          ; $6324: $f1
  ld b, $02                                       ; $6325: $06 $02
  ret                                             ; $6327: $c9


jr_001_6328:
  inc b                                           ; $6328: $04
  inc b                                           ; $6329: $04
  ret                                             ; $632a: $c9


Call_001_632b:
  cpl                                             ; $632b: $2f
  inc a                                           ; $632c: $3c
  jp Jump_000_3196                                ; $632d: $c3 $96 $31


Call_001_6330:
  push af                                         ; $6330: $f5
  ld a, [de]                                      ; $6331: $1a
  ld l, a                                         ; $6332: $6f
  inc de                                          ; $6333: $13
  ld a, [de]                                      ; $6334: $1a
  inc de                                          ; $6335: $13
  ld h, a                                         ; $6336: $67
  pop af                                          ; $6337: $f1
  ret                                             ; $6338: $c9


Call_001_6339:
  call Call_000_3173                              ; $6339: $cd $73 $31
  ld a, [hl+]                                     ; $633c: $2a
  ld c, a                                         ; $633d: $4f
  ld a, [hl+]                                     ; $633e: $2a
  ld b, a                                         ; $633f: $47
  cp $02                                          ; $6340: $fe $02
  jr nz, jr_001_6348                              ; $6342: $20 $04

  ld a, c                                         ; $6344: $79
  sub $80                                         ; $6345: $d6 $80
  ld c, a                                         ; $6347: $4f

jr_001_6348:
  ld a, [hl]                                      ; $6348: $7e
  ret                                             ; $6349: $c9


Call_001_634a:
  ldh a, [$ffb9]                                  ; $634a: $f0 $b9
  ld [de], a                                      ; $634c: $12
  inc de                                          ; $634d: $13
  ldh a, [$ffba]                                  ; $634e: $f0 $ba
  ld [de], a                                      ; $6350: $12
  inc de                                          ; $6351: $13
  ret                                             ; $6352: $c9


  db $9f, $c3, $32, $84, $6c, $3a, $cd, $0f, $22, $ee, $2f, $15, $90, $00, $5e, $85
  db $fb, $12, $4d, $f9, $bc, $77, $2c, $59, $34, $86, $44, $ad, $c0, $7b, $73, $31
  db $4c, $01, $97, $0b, $f2, $02, $bd, $60, $b6, $39, $7e, $c9, $4e, $26, $76, $16
  db $61, $8e, $a0, $27, $7c, $bf, $da, $48, $ef, $4f, $58, $51, $8a, $49, $d2, $b8
  db $8d, $4a, $92, $37, $72, $3e, $c2, $e5, $5a, $18, $a9, $ac, $6d, $de, $e2, $1e
  db $5d, $71, $68, $6b, $63, $08, $3d, $8b, $e1, $5b, $8f, $f8, $e4, $e6, $99, $a2
  db $06, $fd, $b3, $57, $91, $45, $a7, $78, $f3, $9a, $69, $82, $35, $93, $47, $30
  db $79, $89, $a1, $c1, $24, $ca, $75, $1d, $29, $d9, $67, $b9, $c4, $54, $cb, $2d
  db $a6, $dd, $9c, $17, $d1, $5c, $25, $f7, $19, $9e, $0c, $d7, $95, $ce, $13, $7f
  db $41, $a4, $6e, $3f, $a3, $d4, $65, $c7, $e3, $23, $fe, $14, $f0, $bb, $7d, $52
  db $1a, $2b, $04, $38, $80, $ab, $9d, $6f, $c6, $6a, $af, $98, $e0, $09, $e7, $36
  db $50, $ec, $94, $ba, $42, $11, $03, $d8, $c5, $b4, $56, $0e, $cc, $d0, $aa, $b5
  db $2e, $2a, $b0, $ea, $ed, $b1, $eb, $53, $07, $ae, $dc, $88, $1b, $db, $0a, $d5
  db $f1, $b2, $66, $cf, $a8, $a5, $10, $81, $fc, $3b, $96, $e9, $be, $40, $46, $05
  db $f4, $d3, $33, $f6, $9b, $c8, $f5, $ff, $43, $d6, $b7, $7a, $20, $83, $74, $55
  db $e8, $4b, $fa, $70, $28, $1f, $0d, $df, $87, $1c, $3c, $64, $5f, $21, $8c, $62

  push af                                         ; $6453: $f5
  call Call_000_3173                              ; $6454: $cd $73 $31
  ld a, [hl+]                                     ; $6457: $2a
  ld h, [hl]                                      ; $6458: $66
  ld l, a                                         ; $6459: $6f
  pop af                                          ; $645a: $f1
  ret                                             ; $645b: $c9


Call_001_645c:
  push hl                                         ; $645c: $e5
  inc de                                          ; $645d: $13
  ld a, $a0                                       ; $645e: $3e $a0
  ld [de], a                                      ; $6460: $12
  dec de                                          ; $6461: $1b
  ld a, $30                                       ; $6462: $3e $30
  ld [de], a                                      ; $6464: $12
  jr jr_001_646b                                  ; $6465: $18 $04

Call_001_6467:
  push hl                                         ; $6467: $e5
  ld a, $a0                                       ; $6468: $3e $a0
  ld [de], a                                      ; $646a: $12

jr_001_646b:
  call Call_001_6489                              ; $646b: $cd $89 $64
  call Call_001_6495                              ; $646e: $cd $95 $64

jr_001_6471:
  ld a, h                                         ; $6471: $7c
  or l                                            ; $6472: $b5
  jr z, jr_001_647d                               ; $6473: $28 $08

  call Call_001_6489                              ; $6475: $cd $89 $64
  call Call_001_6495                              ; $6478: $cd $95 $64
  jr jr_001_6471                                  ; $647b: $18 $f4

jr_001_647d:
  call Call_000_3059                              ; $647d: $cd $59 $30
  dec de                                          ; $6480: $1b
  ld l, e                                         ; $6481: $6b
  ld h, d                                         ; $6482: $62
  ld a, [hl]                                      ; $6483: $7e
  or $80                                          ; $6484: $f6 $80
  ld [hl], a                                      ; $6486: $77
  pop hl                                          ; $6487: $e1
  ret                                             ; $6488: $c9


Call_001_6489:
  push de                                         ; $6489: $d5
  ld de, $000a                                    ; $648a: $11 $0a $00
  call Call_000_322f                              ; $648d: $cd $2f $32
  ld a, e                                         ; $6490: $7b
  add $30                                         ; $6491: $c6 $30
  pop de                                          ; $6493: $d1
  ret                                             ; $6494: $c9


Call_001_6495:
  push de                                         ; $6495: $d5
  push hl                                         ; $6496: $e5
  ld h, d                                         ; $6497: $62
  ld l, e                                         ; $6498: $6b

jr_001_6499:
  ld d, [hl]                                      ; $6499: $56
  ld [hl+], a                                     ; $649a: $22
  cp $a0                                          ; $649b: $fe $a0
  jr z, jr_001_64a2                               ; $649d: $28 $03

  ld a, d                                         ; $649f: $7a
  jr jr_001_6499                                  ; $64a0: $18 $f7

jr_001_64a2:
  pop hl                                          ; $64a2: $e1
  pop de                                          ; $64a3: $d1
  ret                                             ; $64a4: $c9


Call_001_64a5:
  push af                                         ; $64a5: $f5
  push bc                                         ; $64a6: $c5
  push de                                         ; $64a7: $d5
  ld de, $c15a                                    ; $64a8: $11 $5a $c1
  ld bc, $0007                                    ; $64ab: $01 $07 $00
  call Call_000_12a6                              ; $64ae: $cd $a6 $12
  pop de                                          ; $64b1: $d1
  pop bc                                          ; $64b2: $c1
  pop af                                          ; $64b3: $f1
  ret                                             ; $64b4: $c9


Call_001_64b5:
  ld [$c160], a                                   ; $64b5: $ea $60 $c1
  ret                                             ; $64b8: $c9


  ld [$c15a], a                                   ; $64b9: $ea $5a $c1
  ret                                             ; $64bc: $c9


Call_001_64bd:
  push hl                                         ; $64bd: $e5
  call Call_001_64d0                              ; $64be: $cd $d0 $64
  ld hl, $ffb9                                    ; $64c1: $21 $b9 $ff
  ld a, [hl+]                                     ; $64c4: $2a
  ld h, [hl]                                      ; $64c5: $66
  ld l, a                                         ; $64c6: $6f
  ld [$c15e], a                                   ; $64c7: $ea $5e $c1
  ld a, h                                         ; $64ca: $7c
  ld [$c15f], a                                   ; $64cb: $ea $5f $c1
  pop hl                                          ; $64ce: $e1
  ret                                             ; $64cf: $c9


Call_001_64d0:
  ld hl, $c15c                                    ; $64d0: $21 $5c $c1
  ld a, [hl+]                                     ; $64d3: $2a
  ld h, [hl]                                      ; $64d4: $66
  ld l, a                                         ; $64d5: $6f
  inc hl                                          ; $64d6: $23
  inc hl                                          ; $64d7: $23
  ld a, l                                         ; $64d8: $7d
  ld [$c15c], a                                   ; $64d9: $ea $5c $c1
  ld a, h                                         ; $64dc: $7c
  ld [$c15d], a                                   ; $64dd: $ea $5d $c1
  ret                                             ; $64e0: $c9


  push hl                                         ; $64e1: $e5
  add a                                           ; $64e2: $87
  ld l, a                                         ; $64e3: $6f
  ld h, $00                                       ; $64e4: $26 $00
  add hl, de                                      ; $64e6: $19
  ld e, [hl]                                      ; $64e7: $5e
  inc hl                                          ; $64e8: $23
  ld d, [hl]                                      ; $64e9: $56
  pop hl                                          ; $64ea: $e1
  push bc                                         ; $64eb: $c5
  push de                                         ; $64ec: $d5
  push hl                                         ; $64ed: $e5
  push de                                         ; $64ee: $d5
  call Call_001_64a5                              ; $64ef: $cd $a5 $64
  pop hl                                          ; $64f2: $e1
  call Call_001_5fed                              ; $64f3: $cd $ed $5f
  pop hl                                          ; $64f6: $e1
  pop de                                          ; $64f7: $d1
  pop bc                                          ; $64f8: $c1
  ret                                             ; $64f9: $c9


  call Call_000_3173                              ; $64fa: $cd $73 $31
  ld a, [hl+]                                     ; $64fd: $2a
  ld h, [hl]                                      ; $64fe: $66
  ld l, a                                         ; $64ff: $6f
  ldh a, [rSVBK]                                  ; $6500: $f0 $70
  push af                                         ; $6502: $f5
  ld a, $07                                       ; $6503: $3e $07
  ldh [rSVBK], a                                  ; $6505: $e0 $70
  push bc                                         ; $6507: $c5
  push de                                         ; $6508: $d5
  push hl                                         ; $6509: $e5
  call Call_001_5fed                              ; $650a: $cd $ed $5f
  call Call_001_64bd                              ; $650d: $cd $bd $64
  pop hl                                          ; $6510: $e1
  pop de                                          ; $6511: $d1
  pop bc                                          ; $6512: $c1
  pop af                                          ; $6513: $f1
  ldh [rSVBK], a                                  ; $6514: $e0 $70
  ret                                             ; $6516: $c9


  ldh a, [rSVBK]                                  ; $6517: $f0 $70
  push af                                         ; $6519: $f5
  ld a, $07                                       ; $651a: $3e $07
  ldh [rSVBK], a                                  ; $651c: $e0 $70
  push bc                                         ; $651e: $c5
  push de                                         ; $651f: $d5
  push hl                                         ; $6520: $e5
  ld de, $d600                                    ; $6521: $11 $00 $d6
  call Call_000_3060                              ; $6524: $cd $60 $30
  ld hl, $d600                                    ; $6527: $21 $00 $d6
  call Call_001_5fed                              ; $652a: $cd $ed $5f
  call Call_001_64bd                              ; $652d: $cd $bd $64
  pop hl                                          ; $6530: $e1
  pop de                                          ; $6531: $d1
  pop bc                                          ; $6532: $c1
  pop af                                          ; $6533: $f1
  ldh [rSVBK], a                                  ; $6534: $e0 $70
  ret                                             ; $6536: $c9


  call Call_000_3173                              ; $6537: $cd $73 $31

  ldh a, [rSVBK]                                  ; $653a: $f0 $70
  push af                                         ; $653c: $f5
  ld a, $07                                       ; $653d: $3e $07
  ldh [rSVBK], a                                  ; $653f: $e0 $70
  push bc                                         ; $6541: $c5
  push de                                         ; $6542: $d5
  push hl                                         ; $6543: $e5
  ld de, $0000                                    ; $6544: $11 $00 $00
  call Call_000_30c1                              ; $6547: $cd $c1 $30
  ld hl, $d600                                    ; $654a: $21 $00 $d6
  call Call_001_5fed                              ; $654d: $cd $ed $5f
  call Call_001_64bd                              ; $6550: $cd $bd $64
  pop hl                                          ; $6553: $e1
  pop de                                          ; $6554: $d1
  pop bc                                          ; $6555: $c1
  pop af                                          ; $6556: $f1
  ldh [rSVBK], a                                  ; $6557: $e0 $70
  ret                                             ; $6559: $c9


Call_001_655a:
  push bc                                         ; $655a: $c5
  push de                                         ; $655b: $d5
  ld c, a                                         ; $655c: $4f
  ld b, $00                                       ; $655d: $06 $00
  call Call_001_6565                              ; $655f: $cd $65 $65
  pop de                                          ; $6562: $d1
  pop bc                                          ; $6563: $c1
  ret                                             ; $6564: $c9


Call_001_6565:
  ldh a, [rSVBK]                                  ; $6565: $f0 $70
  push af                                         ; $6567: $f5
  ld a, $07                                       ; $6568: $3e $07
  ldh [rSVBK], a                                  ; $656a: $e0 $70
  push bc                                         ; $656c: $c5
  push de                                         ; $656d: $d5
  push hl                                         ; $656e: $e5
  ld h, b                                         ; $656f: $60
  ld l, c                                         ; $6570: $69
  call Call_001_6723                              ; $6571: $cd $23 $67
  pop hl                                          ; $6574: $e1
  call Call_000_33f3                              ; $6575: $cd $f3 $33

  db $00, $68, $30

  call Call_001_67a7                              ; $657b: $cd $a7 $67
  ld hl, $d600                                    ; $657e: $21 $00 $d6
  call Call_001_5fed                              ; $6581: $cd $ed $5f
  call Call_001_64bd                              ; $6584: $cd $bd $64
  pop de                                          ; $6587: $d1
  pop bc                                          ; $6588: $c1
  pop af                                          ; $6589: $f1
  ldh [rSVBK], a                                  ; $658a: $e0 $70
  ret                                             ; $658c: $c9


  ldh a, [rSVBK]                                  ; $658d: $f0 $70
  push af                                         ; $658f: $f5
  ld a, $07                                       ; $6590: $3e $07
  ldh [rSVBK], a                                  ; $6592: $e0 $70
  push bc                                         ; $6594: $c5
  push de                                         ; $6595: $d5
  push hl                                         ; $6596: $e5
  ld h, b                                         ; $6597: $60
  ld l, c                                         ; $6598: $69
  call Call_001_6723                              ; $6599: $cd $23 $67
  ld h, d                                         ; $659c: $62
  ld l, e                                         ; $659d: $6b

jr_001_659e:
  call Call_001_6729                              ; $659e: $cd $29 $67
  pop hl                                          ; $65a1: $e1
  call Call_000_33f3                              ; $65a2: $cd $f3 $33

  db $00, $68, $30

  ld hl, $d600                                    ; $65a8: $21 $00 $d6
  call Call_001_5fed                              ; $65ab: $cd $ed $5f
  call Call_001_64bd                              ; $65ae: $cd $bd $64
  pop de                                          ; $65b1: $d1
  pop bc                                          ; $65b2: $c1
  pop af                                          ; $65b3: $f1
  ldh [rSVBK], a                                  ; $65b4: $e0 $70
  ret                                             ; $65b6: $c9


  ldh [$ffbd], a                                  ; $65b7: $e0 $bd
  ldh a, [rSVBK]                                  ; $65b9: $f0 $70
  push af                                         ; $65bb: $f5
  ld a, $07                                       ; $65bc: $3e $07
  ldh [rSVBK], a                                  ; $65be: $e0 $70
  ldh a, [$ffbd]                                  ; $65c0: $f0 $bd
  push de                                         ; $65c2: $d5
  push hl                                         ; $65c3: $e5
  ld h, b                                         ; $65c4: $60
  ld l, c                                         ; $65c5: $69
  call Call_001_6772                              ; $65c6: $cd $72 $67
  pop hl                                          ; $65c9: $e1
  call Call_000_33f3                              ; $65ca: $cd $f3 $33
  nop                                             ; $65cd: $00
  ld l, b                                         ; $65ce: $68
  jr nc, jr_001_659e                              ; $65cf: $30 $cd

  and a                                           ; $65d1: $a7
  ld h, a                                         ; $65d2: $67
  ld hl, $d600                                    ; $65d3: $21 $00 $d6
  call Call_001_5fed                              ; $65d6: $cd $ed $5f
  call Call_001_64bd                              ; $65d9: $cd $bd $64
  pop de                                          ; $65dc: $d1
  ldh [$ffbd], a                                  ; $65dd: $e0 $bd
  pop af                                          ; $65df: $f1
  ldh [rSVBK], a                                  ; $65e0: $e0 $70
  ldh a, [$ffbd]                                  ; $65e2: $f0 $bd
  ret                                             ; $65e4: $c9


  call Call_000_3173                              ; $65e5: $cd $73 $31

Call_001_65e8:
  ldh a, [rSVBK]                                  ; $65e8: $f0 $70
  push af                                         ; $65ea: $f5
  ld a, $07                                       ; $65eb: $3e $07
  ldh [rSVBK], a                                  ; $65ed: $e0 $70
  push bc                                         ; $65ef: $c5
  push de                                         ; $65f0: $d5
  push hl                                         ; $65f1: $e5
  call Call_000_33f3                              ; $65f2: $cd $f3 $33

  db $00, $68, $30

  ld hl, $d600                                    ; $65f8: $21 $00 $d6
  call Call_001_5fed                              ; $65fb: $cd $ed $5f
  call Call_001_64bd                              ; $65fe: $cd $bd $64
  pop hl                                          ; $6601: $e1
  pop de                                          ; $6602: $d1
  pop bc                                          ; $6603: $c1
  pop af                                          ; $6604: $f1
  ldh [rSVBK], a                                  ; $6605: $e0 $70
  ret                                             ; $6607: $c9


  call Call_000_3173                              ; $6608: $cd $73 $31

  ldh a, [rSVBK]                                  ; $660b: $f0 $70
  push af                                         ; $660d: $f5
  ld a, $07                                       ; $660e: $3e $07
  ldh [rSVBK], a                                  ; $6610: $e0 $70
  push bc                                         ; $6612: $c5
  push de                                         ; $6613: $d5
  call Call_000_30c1                              ; $6614: $cd $c1 $30
  call Call_001_67a7                              ; $6617: $cd $a7 $67
  push bc                                         ; $661a: $c5
  call Call_001_5fed                              ; $661b: $cd $ed $5f
  call Call_001_64bd                              ; $661e: $cd $bd $64
  pop hl                                          ; $6621: $e1
  pop de                                          ; $6622: $d1
  pop bc                                          ; $6623: $c1
  pop af                                          ; $6624: $f1
  ldh [rSVBK], a                                  ; $6625: $e0 $70
  ret                                             ; $6627: $c9


Call_001_6628:
Jump_001_6628:
  ldh a, [rSVBK]                                  ; $6628: $f0 $70
  push af                                         ; $662a: $f5
  ld a, $07                                       ; $662b: $3e $07
  ldh [rSVBK], a                                  ; $662d: $e0 $70
  push bc                                         ; $662f: $c5
  push de                                         ; $6630: $d5
  push hl                                         ; $6631: $e5
  ld de, $0000                                    ; $6632: $11 $00 $00
  call Call_000_30c1                              ; $6635: $cd $c1 $30
  call Call_001_67a7                              ; $6638: $cd $a7 $67
  ld hl, $d600                                    ; $663b: $21 $00 $d6
  call Call_001_5fed                              ; $663e: $cd $ed $5f
  call Call_001_64bd                              ; $6641: $cd $bd $64
  pop hl                                          ; $6644: $e1
  pop de                                          ; $6645: $d1
  pop bc                                          ; $6646: $c1
  pop af                                          ; $6647: $f1
  ldh [rSVBK], a                                  ; $6648: $e0 $70
  ret                                             ; $664a: $c9


  ldh a, [rSVBK]                                  ; $664b: $f0 $70
  push af                                         ; $664d: $f5
  ld a, $07                                       ; $664e: $3e $07
  ldh [rSVBK], a                                  ; $6650: $e0 $70
  push bc                                         ; $6652: $c5
  push de                                         ; $6653: $d5
  push hl                                         ; $6654: $e5
  ld de, $0000                                    ; $6655: $11 $00 $00
  call Call_000_30c1                              ; $6658: $cd $c1 $30
  call Call_001_67a7                              ; $665b: $cd $a7 $67
  ld hl, $d600                                    ; $665e: $21 $00 $d6
  call Call_001_5fed                              ; $6661: $cd $ed $5f
  ld a, [$c15b]                                   ; $6664: $fa $5b $c1
  ld b, a                                         ; $6667: $47

jr_001_6668:
  call Call_001_64bd                              ; $6668: $cd $bd $64
  dec b                                           ; $666b: $05
  jr nz, jr_001_6668                              ; $666c: $20 $fa

  pop hl                                          ; $666e: $e1
  pop de                                          ; $666f: $d1
  pop bc                                          ; $6670: $c1
  pop af                                          ; $6671: $f1
  ldh [rSVBK], a                                  ; $6672: $e0 $70
  ret                                             ; $6674: $c9


Call_001_6675:
  ldh [$ffbd], a                                  ; $6675: $e0 $bd
  ldh a, [rSVBK]                                  ; $6677: $f0 $70
  push af                                         ; $6679: $f5
  ld a, $07                                       ; $667a: $3e $07
  ldh [rSVBK], a                                  ; $667c: $e0 $70
  ldh a, [$ffbd]                                  ; $667e: $f0 $bd
  push bc                                         ; $6680: $c5
  push de                                         ; $6681: $d5
  push hl                                         ; $6682: $e5
  call Call_000_3173                              ; $6683: $cd $73 $31
  ld de, $0000                                    ; $6686: $11 $00 $00
  call Call_000_30c1                              ; $6689: $cd $c1 $30
  call Call_001_67a7                              ; $668c: $cd $a7 $67
  ld hl, $d600                                    ; $668f: $21 $00 $d6
  call Call_001_5fed                              ; $6692: $cd $ed $5f
  call Call_001_64bd                              ; $6695: $cd $bd $64
  pop hl                                          ; $6698: $e1
  pop de                                          ; $6699: $d1
  pop bc                                          ; $669a: $c1
  pop af                                          ; $669b: $f1
  ldh [rSVBK], a                                  ; $669c: $e0 $70
  ret                                             ; $669e: $c9


  call Call_000_3173                              ; $669f: $cd $73 $31

Call_001_66a2:
  ldh a, [rSVBK]                                  ; $66a2: $f0 $70
  push af                                         ; $66a4: $f5
  ld a, $07                                       ; $66a5: $3e $07
  ldh [rSVBK], a                                  ; $66a7: $e0 $70
  push bc                                         ; $66a9: $c5
  push de                                         ; $66aa: $d5
  push hl                                         ; $66ab: $e5
  call Call_000_33f3                              ; $66ac: $cd $f3 $33

  db $00, $68, $30

  call Call_001_67a7                              ; $66b2: $cd $a7 $67
  ld hl, $d600                                    ; $66b5: $21 $00 $d6
  call Call_001_5fed                              ; $66b8: $cd $ed $5f
  call Call_001_64bd                              ; $66bb: $cd $bd $64
  pop hl                                          ; $66be: $e1
  pop de                                          ; $66bf: $d1
  pop bc                                          ; $66c0: $c1
  pop af                                          ; $66c1: $f1
  ldh [rSVBK], a                                  ; $66c2: $e0 $70
  ret                                             ; $66c4: $c9


  push hl                                         ; $66c5: $e5
  ld l, a                                         ; $66c6: $6f
  ld h, $00                                       ; $66c7: $26 $00
  call Call_001_66ee                              ; $66c9: $cd $ee $66
  pop hl                                          ; $66cc: $e1
  ret                                             ; $66cd: $c9


  ldh a, [rSVBK]                                  ; $66ce: $f0 $70
  push af                                         ; $66d0: $f5
  ld a, $07                                       ; $66d1: $3e $07
  ldh [rSVBK], a                                  ; $66d3: $e0 $70
  push bc                                         ; $66d5: $c5
  push de                                         ; $66d6: $d5
  push hl                                         ; $66d7: $e5
  ld de, $d600                                    ; $66d8: $11 $00 $d6
  call Call_001_645c                              ; $66db: $cd $5c $64
  ld hl, $d600                                    ; $66de: $21 $00 $d6
  call Call_001_5fed                              ; $66e1: $cd $ed $5f
  call Call_001_64bd                              ; $66e4: $cd $bd $64
  pop hl                                          ; $66e7: $e1
  pop de                                          ; $66e8: $d1
  pop bc                                          ; $66e9: $c1
  pop af                                          ; $66ea: $f1
  ldh [rSVBK], a                                  ; $66eb: $e0 $70
  ret                                             ; $66ed: $c9


Call_001_66ee:
  ldh a, [rSVBK]                                  ; $66ee: $f0 $70
  push af                                         ; $66f0: $f5
  ld a, $07                                       ; $66f1: $3e $07
  ldh [rSVBK], a                                  ; $66f3: $e0 $70
  push bc                                         ; $66f5: $c5
  push de                                         ; $66f6: $d5
  push hl                                         ; $66f7: $e5
  ld de, $d600                                    ; $66f8: $11 $00 $d6
  call Call_001_6467                              ; $66fb: $cd $67 $64
  ld hl, $d600                                    ; $66fe: $21 $00 $d6
  call Call_001_5fed                              ; $6701: $cd $ed $5f
  call Call_001_64bd                              ; $6704: $cd $bd $64
  pop hl                                          ; $6707: $e1
  pop de                                          ; $6708: $d1
  pop bc                                          ; $6709: $c1
  pop af                                          ; $670a: $f1
  ldh [rSVBK], a                                  ; $670b: $e0 $70
  ret                                             ; $670d: $c9


Call_001_670e:
  push de                                         ; $670e: $d5
  ld de, $c1a8                                    ; $670f: $11 $a8 $c1
  jr jr_001_671e                                  ; $6712: $18 $0a

Call_001_6714:
  push de                                         ; $6714: $d5
  ld de, $c1b8                                    ; $6715: $11 $b8 $c1
  jr jr_001_671e                                  ; $6718: $18 $04

Call_001_671a:
  push de                                         ; $671a: $d5
  ld de, $c1c8                                    ; $671b: $11 $c8 $c1

jr_001_671e:
  ld l, a                                         ; $671e: $6f
  ld h, $00                                       ; $671f: $26 $00
  jr jr_001_6733                                  ; $6721: $18 $10

Call_001_6723:
  push de                                         ; $6723: $d5
  ld de, $c1a8                                    ; $6724: $11 $a8 $c1
  jr jr_001_6733                                  ; $6727: $18 $0a

Call_001_6729:
  push de                                         ; $6729: $d5
  ld de, $c1b8                                    ; $672a: $11 $b8 $c1
  jr jr_001_6733                                  ; $672d: $18 $04

  push de                                         ; $672f: $d5
  ld de, $c1c8                                    ; $6730: $11 $c8 $c1

jr_001_6733:
  push hl                                         ; $6733: $e5
  ldh a, [rSVBK]                                  ; $6734: $f0 $70
  push af                                         ; $6736: $f5
  ld a, $07                                       ; $6737: $3e $07
  ldh [rSVBK], a                                  ; $6739: $e0 $70
  call Call_001_6467                              ; $673b: $cd $67 $64
  pop af                                          ; $673e: $f1
  ldh [rSVBK], a                                  ; $673f: $e0 $70
  pop hl                                          ; $6741: $e1
  pop de                                          ; $6742: $d1
  ret                                             ; $6743: $c9


  push de                                         ; $6744: $d5
  ld de, $c1a8                                    ; $6745: $11 $a8 $c1
  jr jr_001_6754                                  ; $6748: $18 $0a

  push de                                         ; $674a: $d5
  ld de, $c1b8                                    ; $674b: $11 $b8 $c1
  jr jr_001_6754                                  ; $674e: $18 $04

  push de                                         ; $6750: $d5
  ld de, $c1c8                                    ; $6751: $11 $c8 $c1

jr_001_6754:
  ldh a, [rSVBK]                                  ; $6754: $f0 $70
  push af                                         ; $6756: $f5
  ld a, $07                                       ; $6757: $3e $07
  ldh [rSVBK], a                                  ; $6759: $e0 $70
  push de                                         ; $675b: $d5
  push hl                                         ; $675c: $e5
  ld a, l                                         ; $675d: $7d
  ld [$cecb], a                                   ; $675e: $ea $cb $ce
  ld a, h                                         ; $6761: $7c
  ld [$cecc], a                                   ; $6762: $ea $cc $ce
  call Call_000_33f3                              ; $6765: $cd $f3 $33

  db $00, $82, $35

  pop hl                                          ; $676b: $e1
  pop de                                          ; $676c: $d1
  pop af                                          ; $676d: $f1
  ldh [rSVBK], a                                  ; $676e: $e0 $70
  pop de                                          ; $6770: $d1
  ret                                             ; $6771: $c9


Call_001_6772:
  ld de, $c1a8                                    ; $6772: $11 $a8 $c1
  jr jr_001_677f                                  ; $6775: $18 $08

  ld de, $c1b8                                    ; $6777: $11 $b8 $c1
  jr jr_001_677f                                  ; $677a: $18 $03

  ld de, $c1c8                                    ; $677c: $11 $c8 $c1

jr_001_677f:
  ldh [$ffbd], a                                  ; $677f: $e0 $bd
  ldh a, [rSVBK]                                  ; $6781: $f0 $70
  push af                                         ; $6783: $f5
  ld a, $07                                       ; $6784: $3e $07
  ldh [rSVBK], a                                  ; $6786: $e0 $70
  ldh a, [$ffbd]                                  ; $6788: $f0 $bd
  push de                                         ; $678a: $d5
  push hl                                         ; $678b: $e5
  call Call_000_3173                              ; $678c: $cd $73 $31
  ld a, l                                         ; $678f: $7d
  ld [$cecb], a                                   ; $6790: $ea $cb $ce
  ld a, h                                         ; $6793: $7c
  ld [$cecc], a                                   ; $6794: $ea $cc $ce
  call Call_000_33f3                              ; $6797: $cd $f3 $33
  nop                                             ; $679a: $00
  add d                                           ; $679b: $82
  dec [hl]                                        ; $679c: $35
  pop hl                                          ; $679d: $e1
  pop de                                          ; $679e: $d1
  ldh [$ffbd], a                                  ; $679f: $e0 $bd
  pop af                                          ; $67a1: $f1
  ldh [rSVBK], a                                  ; $67a2: $e0 $70
  ldh a, [$ffbd]                                  ; $67a4: $f0 $bd
  ret                                             ; $67a6: $c9


Call_001_67a7:
  push hl                                         ; $67a7: $e5
  xor a                                           ; $67a8: $af
  ld [$c15b], a                                   ; $67a9: $ea $5b $c1
  ld [$c1a1], a                                   ; $67ac: $ea $a1 $c1
  ld c, l                                         ; $67af: $4d
  ld b, h                                         ; $67b0: $44

Jump_001_67b1:
jr_001_67b1:
  ld a, [$c1a2]                                   ; $67b1: $fa $a2 $c1
  ld hl, $c15b                                    ; $67b4: $21 $5b $c1
  cp [hl]                                         ; $67b7: $be
  jr nz, jr_001_67cc                              ; $67b8: $20 $12

  ld a, [$c1a1]                                   ; $67ba: $fa $a1 $c1
  ld hl, $2a00                                    ; $67bd: $21 $00 $2a
  rst $08                                         ; $67c0: $cf
  add hl, bc                                      ; $67c1: $09
  ld a, l                                         ; $67c2: $7d
  ld [$c1a6], a                                   ; $67c3: $ea $a6 $c1
  ld a, h                                         ; $67c6: $7c
  ld [$c1a7], a                                   ; $67c7: $ea $a7 $c1
  pop hl                                          ; $67ca: $e1
  ret                                             ; $67cb: $c9


jr_001_67cc:
  inc [hl]                                        ; $67cc: $34
  xor a                                           ; $67cd: $af
  ld [$c1a3], a                                   ; $67ce: $ea $a3 $c1
  ld [$c1a5], a                                   ; $67d1: $ea $a5 $c1

jr_001_67d4:
  ld h, b                                         ; $67d4: $60
  ld l, c                                         ; $67d5: $69
  call Call_001_6848                              ; $67d6: $cd $48 $68
  ld [$c1a4], a                                   ; $67d9: $ea $a4 $c1
  ld a, [$c1a5]                                   ; $67dc: $fa $a5 $c1
  or a                                            ; $67df: $b7
  jr nz, jr_001_6803                              ; $67e0: $20 $21

  ld a, [$c1a3]                                   ; $67e2: $fa $a3 $c1
  add e                                           ; $67e5: $83
  push hl                                         ; $67e6: $e5
  ld l, a                                         ; $67e7: $6f
  ld a, [$c159]                                   ; $67e8: $fa $59 $c1
  cp l                                            ; $67eb: $bd
  ld a, l                                         ; $67ec: $7d
  pop hl                                          ; $67ed: $e1
  jr c, jr_001_6803                               ; $67ee: $38 $13

  ld [$c1a3], a                                   ; $67f0: $ea $a3 $c1
  ld a, [$c1a4]                                   ; $67f3: $fa $a4 $c1
  or a                                            ; $67f6: $b7
  jr z, jr_001_67d4                               ; $67f7: $28 $db

  ld hl, $c1a6                                    ; $67f9: $21 $a6 $c1
  ld [hl], $00                                    ; $67fc: $36 $00
  inc hl                                          ; $67fe: $23
  ld [hl], $00                                    ; $67ff: $36 $00
  pop hl                                          ; $6801: $e1
  ret                                             ; $6802: $c9


jr_001_6803:
  ld a, [hl]                                      ; $6803: $7e
  cp $2d                                          ; $6804: $fe $2d
  jr z, jr_001_6818                               ; $6806: $28 $10

  dec hl                                          ; $6808: $2b
  set 7, [hl]                                     ; $6809: $cb $fe
  inc hl                                          ; $680b: $23
  ld b, h                                         ; $680c: $44
  ld c, l                                         ; $680d: $4d
  inc hl                                          ; $680e: $23
  ld a, [$c1a5]                                   ; $680f: $fa $a5 $c1
  or a                                            ; $6812: $b7
  jr z, jr_001_681d                               ; $6813: $28 $08

  inc hl                                          ; $6815: $23
  jr jr_001_6829                                  ; $6816: $18 $11

jr_001_6818:
  set 7, [hl]                                     ; $6818: $cb $fe
  inc hl                                          ; $681a: $23
  ld b, h                                         ; $681b: $44
  ld c, l                                         ; $681c: $4d

jr_001_681d:
  ld a, [hl]                                      ; $681d: $7e
  cp $20                                          ; $681e: $fe $20
  jr z, jr_001_6826                               ; $6820: $28 $04

  cp $2d                                          ; $6822: $fe $2d
  jr nz, jr_001_6829                              ; $6824: $20 $03

jr_001_6826:
  inc hl                                          ; $6826: $23
  jr jr_001_681d                                  ; $6827: $18 $f4

jr_001_6829:
  call Call_000_311b                              ; $6829: $cd $1b $31
  jr z, jr_001_67b1                               ; $682c: $28 $83

  push hl                                         ; $682e: $e5
  call Call_000_007b                              ; $682f: $cd $7b $00
  add hl, bc                                      ; $6832: $09
  ld a, l                                         ; $6833: $7d
  cpl                                             ; $6834: $2f
  inc a                                           ; $6835: $3c
  ld hl, $c1a1                                    ; $6836: $21 $a1 $c1
  add [hl]                                        ; $6839: $86
  ld [hl], a                                      ; $683a: $77
  pop hl                                          ; $683b: $e1
  push bc                                         ; $683c: $c5

jr_001_683d:
  ld a, [hl+]                                     ; $683d: $2a
  ld [bc], a                                      ; $683e: $02
  inc bc                                          ; $683f: $03
  bit 7, a                                        ; $6840: $cb $7f
  jr z, jr_001_683d                               ; $6842: $28 $f9

  pop bc                                          ; $6844: $c1
  jp Jump_001_67b1                                ; $6845: $c3 $b1 $67


Call_001_6848:
  push hl                                         ; $6848: $e5
  ld e, $00                                       ; $6849: $1e $00

jr_001_684b:
  ld a, [bc]                                      ; $684b: $0a
  and $7f                                         ; $684c: $e6 $7f
  cp $5f                                          ; $684e: $fe $5f
  jr nz, jr_001_685a                              ; $6850: $20 $08

  ld a, $01                                       ; $6852: $3e $01
  ld [$c1a5], a                                   ; $6854: $ea $a5 $c1
  xor a                                           ; $6857: $af
  jr jr_001_6877                                  ; $6858: $18 $1d

jr_001_685a:
  sub $20                                         ; $685a: $d6 $20
  jr z, jr_001_6862                               ; $685c: $28 $04

  sub $0d                                         ; $685e: $d6 $0d
  jr nz, jr_001_6865                              ; $6860: $20 $03

jr_001_6862:
  cp e                                            ; $6862: $bb
  jr nz, jr_001_6877                              ; $6863: $20 $12

jr_001_6865:
  ld a, [bc]                                      ; $6865: $0a
  and $7f                                         ; $6866: $e6 $7f
  ld hl, $db00                                    ; $6868: $21 $00 $db
  rst $08                                         ; $686b: $cf
  ld a, [$c157]                                   ; $686c: $fa $57 $c1
  add e                                           ; $686f: $83
  add [hl]                                        ; $6870: $86
  ld e, a                                         ; $6871: $5f
  ld a, [bc]                                      ; $6872: $0a
  inc bc                                          ; $6873: $03
  rla                                             ; $6874: $17
  jr nc, jr_001_684b                              ; $6875: $30 $d4

jr_001_6877:
  pop hl                                          ; $6877: $e1
  ret                                             ; $6878: $c9


  db $02, $40, $64, $40, $00, $88, $1b, $01, $ff, $20, $04, $40, $10, $8d, $2f, $00
  db $02, $20, $48, $41, $00, $88, $0f, $01

  inc bc                                          ; $6891: $03
  inc c                                           ; $6892: $0c
  inc h                                           ; $6893: $24
  ld b, c                                         ; $6894: $41
  nop                                             ; $6895: $00
  adc b                                           ; $6896: $88
  ld d, $01                                       ; $6897: $16 $01

  db $05, $04, $a8, $41, $10, $8d, $09, $01, $02, $10, $b4, $41, $10, $8d, $07, $01
  db $02, $10, $b4, $41, $80, $96, $07, $01

  ld [bc], a                                      ; $68b1: $02
  ld [$41e4], sp                                  ; $68b2: $08 $e4 $41
  nop                                             ; $68b5: $00
  adc b                                           ; $68b6: $88
  inc bc                                          ; $68b7: $03
  db $01                                          ; $68b8: $01

  db $03, $0e, $fc, $41, $10, $8d, $0f, $01

  ld [bc], a                                      ; $68c1: $02
  jr nz, @+$28                                    ; $68c2: $20 $26

  ld b, d                                         ; $68c4: $42
  nop                                             ; $68c5: $00
  adc b                                           ; $68c6: $88
  dec h                                           ; $68c7: $25
  ld bc, $2002                                    ; $68c8: $01 $02 $20
  add [hl]                                        ; $68cb: $86
  ld b, d                                         ; $68cc: $42
  nop                                             ; $68cd: $00
  adc b                                           ; $68ce: $88
  dec hl                                          ; $68cf: $2b
  ld bc, $0c03                                    ; $68d0: $01 $03 $0c
  ld b, [hl]                                      ; $68d3: $46
  ld b, e                                         ; $68d4: $43
  ldh a, [$ff93]                                  ; $68d5: $f0 $93
  ld l, $01                                       ; $68d7: $2e $01
  inc bc                                          ; $68d9: $03
  inc c                                           ; $68da: $0c
  ld b, [hl]                                      ; $68db: $46
  ld b, e                                         ; $68dc: $43
  db $10                                          ; $68dd: $10
  adc l                                           ; $68de: $8d
  ld l, $01                                       ; $68df: $2e $01

  db $03, $20, $e6, $42, $10, $8d, $09, $01

  ld bc, $6a20                                    ; $68e9: $01 $20 $6a
  ld b, e                                         ; $68ec: $43
  nop                                             ; $68ed: $00
  adc b                                           ; $68ee: $88
  rrca                                            ; $68ef: $0f
  db $01                                          ; $68f0: $01

  db $02, $30, $ca, $43, $00, $88, $2f, $01

  inc bc                                          ; $68f9: $03
  ld b, $5a                                       ; $68fa: $06 $5a
  ld b, h                                         ; $68fc: $44
  add b                                           ; $68fd: $80
  adc b                                           ; $68fe: $88
  ld h, $03                                       ; $68ff: $26 $03

  db $05, $04, $6c, $44, $80, $88, $2f, $03, $03, $0d, $6c, $44, $80, $88, $2f, $03
  db $03, $02, $6c, $44, $80, $88, $2f, $03

  ld a, [bc]                                      ; $6919: $0a
  ld [$44a5], sp                                  ; $691a: $08 $a5 $44
  nop                                             ; $691d: $00
  adc d                                           ; $691e: $8a
  cpl                                             ; $691f: $2f
  db $01                                          ; $6920: $01

Call_001_6921:
  push de                                         ; $6921: $d5
  push hl                                         ; $6922: $e5
  ld hl, $6879                                    ; $6923: $21 $79 $68
  rst $08                                         ; $6926: $cf
  ld de, $c2af                                    ; $6927: $11 $af $c2
  call Call_000_025d                              ; $692a: $cd $5d $02
  ld l, e                                         ; $692d: $6b
  ld h, d                                         ; $692e: $62
  xor a                                           ; $692f: $af
  ld [hl+], a                                     ; $6930: $22
  inc a                                           ; $6931: $3c
  ld [hl+], a                                     ; $6932: $22
  ld [hl+], a                                     ; $6933: $22
  pop hl                                          ; $6934: $e1
  pop de                                          ; $6935: $d1
  ret                                             ; $6936: $c9


  ld [$c2b7], a                                   ; $6937: $ea $b7 $c2
  ld a, $01                                       ; $693a: $3e $01
  ld [$c2b8], a                                   ; $693c: $ea $b8 $c2
  ret                                             ; $693f: $c9


  ld a, [$c2b9]                                   ; $6940: $fa $b9 $c2
  or a                                            ; $6943: $b7
  ret z                                           ; $6944: $c8

  ld hl, $c2b8                                    ; $6945: $21 $b8 $c2
  dec [hl]                                        ; $6948: $35
  ret nz                                          ; $6949: $c0

  call Call_000_33f3                              ; $694a: $cd $f3 $33

  db $00, $fe, $34

  ld a, [$c2af]                                   ; $6950: $fa $af $c2
  ld [$c2b8], a                                   ; $6953: $ea $b8 $c2
  ld a, [$c2b6]                                   ; $6956: $fa $b6 $c2
  and $01                                         ; $6959: $e6 $01
  ld h, a                                         ; $695b: $67
  ld a, [$c2b0]                                   ; $695c: $fa $b0 $c2
  ld l, a                                         ; $695f: $6f
  ld a, [$c2b7]                                   ; $6960: $fa $b7 $c2
  add h                                           ; $6963: $84
  cp $ff                                          ; $6964: $fe $ff
  jr nz, jr_001_696b                              ; $6966: $20 $03

  add l                                           ; $6968: $85
  jr jr_001_696f                                  ; $6969: $18 $04

jr_001_696b:
  cp l                                            ; $696b: $bd
  jr c, jr_001_696f                               ; $696c: $38 $01

  xor a                                           ; $696e: $af

jr_001_696f:
  ld [$c2b7], a                                   ; $696f: $ea $b7 $c2
  ret                                             ; $6972: $c9


  db $01, $34, $80, $00, $00, $00, $99, $26, $00, $02, $00, $02, $01, $01, $86, $69
  db $00, $01, $44, $66, $d0, $86, $d0, $a6, $d0, $c6, $d0, $cb, $d0, $06, $d1, $26
  db $d1, $46, $d1, $66, $d1, $6b, $d1, $a6, $d1, $c6, $d1, $e6, $d1, $06, $d2, $0b
  db $d2, $01, $01, $ab, $69, $60, $01, $41, $e8, $d0, $08, $d1, $28, $d1, $4a, $d1
  db $6a, $d1, $66, $d5, $06, $d6, $a6, $d6, $01, $00, $00, $14, $07, $0b, $07, $07
  db $06, $01, $00

  nop                                             ; $69c6: $00
  inc d                                           ; $69c7: $14
  nop                                             ; $69c8: $00
  dec bc                                          ; $69c9: $0b
  rlca                                            ; $69ca: $07
  rlca                                            ; $69cb: $07
  db $06                                          ; $69cc: $06

  ld hl, $6973                                    ; $69cd: $21 $73 $69
  jp Jump_000_2952                                ; $69d0: $c3 $52 $29


  xor a                                           ; $69d3: $af
  ld [$cc2c], a                                   ; $69d4: $ea $2c $cc
  ld hl, $7b8d                                    ; $69d7: $21 $8d $7b
  call Call_000_33f3                              ; $69da: $cd $f3 $33

  db $03, $88, $7e

  call Call_001_6ab4                              ; $69e0: $cd $b4 $6a
  xor a                                           ; $69e3: $af
  ldh [$ffcf], a                                  ; $69e4: $e0 $cf
  ld a, [$cdd0]                                   ; $69e6: $fa $d0 $cd
  ld hl, $4864                                    ; $69e9: $21 $64 $48
  call Call_000_33f3                              ; $69ec: $cd $f3 $33

  db $06, $f0, $50

  ld hl, $ffb9                                    ; $69f2: $21 $b9 $ff
  ld [hl], $00                                    ; $69f5: $36 $00
  inc hl                                          ; $69f7: $23
  ld [hl], $00                                    ; $69f8: $36 $00
  ld a, $7c                                       ; $69fa: $3e $7c
  call Call_000_33f3                              ; $69fc: $cd $f3 $33

  db $00, $3c, $12

  ld a, $00                                       ; $6a02: $3e $00
  call Call_001_6921                              ; $6a04: $cd $21 $69
  call Call_001_6af3                              ; $6a07: $cd $f3 $6a
  ld hl, $53f5                                    ; $6a0a: $21 $f5 $53
  call Call_001_5533                              ; $6a0d: $cd $33 $55
  ld b, $00                                       ; $6a10: $06 $00

jr_001_6a12:
  ld a, b                                         ; $6a12: $78
  ldh [$ff9a], a                                  ; $6a13: $e0 $9a
  ld a, $9e                                       ; $6a15: $3e $9e
  call Call_000_04e0                              ; $6a17: $cd $e0 $04
  inc b                                           ; $6a1a: $04
  ld a, b                                         ; $6a1b: $78
  cp $03                                          ; $6a1c: $fe $03
  jr nz, jr_001_6a12                              ; $6a1e: $20 $f2

  ld a, $02                                       ; $6a20: $3e $02
  ldh [$ff9a], a                                  ; $6a22: $e0 $9a
  ld a, $7c                                       ; $6a24: $3e $7c
  call Call_000_04e0                              ; $6a26: $cd $e0 $04
  jp Jump_001_6ad0                                ; $6a29: $c3 $d0 $6a


  call Call_000_33f3                              ; $6a2c: $cd $f3 $33

  db $06, $17, $51

  ld e, a                                         ; $6a32: $5f
  ld hl, $ffcf                                    ; $6a33: $21 $cf $ff
  ld a, $ff                                       ; $6a36: $3e $ff
  cp [hl]                                         ; $6a38: $be
  ret z                                           ; $6a39: $c8

  ldh a, [$ffa6]                                  ; $6a3a: $f0 $a6
  bit 1, a                                        ; $6a3c: $cb $4f
  jr nz, jr_001_6a91                              ; $6a3e: $20 $51

  bit 0, a                                        ; $6a40: $cb $47
  jr nz, jr_001_6a4b                              ; $6a42: $20 $07

  ld a, e                                         ; $6a44: $7b
  cp [hl]                                         ; $6a45: $be
  ret z                                           ; $6a46: $c8

  ld [hl], a                                      ; $6a47: $77
  jp Jump_001_6ad0                                ; $6a48: $c3 $d0 $6a


jr_001_6a4b:
  ldh a, [$ffce]                                  ; $6a4b: $f0 $ce
  or a                                            ; $6a4d: $b7
  jr z, jr_001_6a6a                               ; $6a4e: $28 $1a

  ld a, e                                         ; $6a50: $7b
  call Call_000_33f3                              ; $6a51: $cd $f3 $33
  inc b                                           ; $6a54: $04
  ld [hl], h                                      ; $6a55: $74
  ld e, b                                         ; $6a56: $58
  jr z, jr_001_6a64                               ; $6a57: $28 $0b

  ld a, $00                                       ; $6a59: $3e $00
  call Call_000_392b                              ; $6a5b: $cd $2b $39
  ld a, $07                                       ; $6a5e: $3e $07
  ld d, e                                         ; $6a60: $53
  jp Jump_000_2621                                ; $6a61: $c3 $21 $26


Jump_001_6a64:
jr_001_6a64:
  ld a, e                                         ; $6a64: $7b
  ld [$cdd0], a                                   ; $6a65: $ea $d0 $cd
  jr jr_001_6a7a                                  ; $6a68: $18 $10

jr_001_6a6a:
  ld a, e                                         ; $6a6a: $7b
  call Call_000_33f3                              ; $6a6b: $cd $f3 $33

  db $04, $74, $58

  ld a, $02                                       ; $6a71: $3e $02
  jp z, Jump_000_392b                             ; $6a73: $ca $2b $39

  ld a, e                                         ; $6a76: $7b
  ld [$cdd0], a                                   ; $6a77: $ea $d0 $cd

jr_001_6a7a:
  ld a, $00                                       ; $6a7a: $3e $00
  call Call_000_392b                              ; $6a7c: $cd $2b $39
  ld a, [$cdd0]                                   ; $6a7f: $fa $d0 $cd
  ld e, a                                         ; $6a82: $5f
  ld a, $9e                                       ; $6a83: $3e $9e
  ld [hl], $ff                                    ; $6a85: $36 $ff
  call Call_000_0a46                              ; $6a87: $cd $46 $0a
  ld de, $001c                                    ; $6a8a: $11 $1c $00
  add hl, de                                      ; $6a8d: $19
  ld [hl], $01                                    ; $6a8e: $36 $01
  ret                                             ; $6a90: $c9


jr_001_6a91:
  ld a, $03                                       ; $6a91: $3e $03
  call Call_000_392b                              ; $6a93: $cd $2b $39
  ldh a, [$ffca]                                  ; $6a96: $f0 $ca
  cp $07                                          ; $6a98: $fe $07
  ld a, $03                                       ; $6a9a: $3e $03
  jp z, Jump_000_261e                             ; $6a9c: $ca $1e $26

  ldh a, [$ffca]                                  ; $6a9f: $f0 $ca
  cp $0f                                          ; $6aa1: $fe $0f
  jp nz, Jump_000_261e                            ; $6aa3: $c2 $1e $26

  ld a, $0e                                       ; $6aa6: $3e $0e
  jp Jump_000_261e                                ; $6aa8: $c3 $1e $26


  db $01, $00, $00, $00, $00, $14, $02, $00, $00

Call_001_6ab4:
  call Call_000_33eb                              ; $6ab4: $cd $eb $33
  add $35                                         ; $6ab7: $c6 $35
  ld hl, $558b                                    ; $6ab9: $21 $8b $55
  call Call_000_33f3                              ; $6abc: $cd $f3 $33

  db $00, $76, $2a

  call Call_000_33eb                              ; $6ac2: $cd $eb $33
  add $35                                         ; $6ac5: $c6 $35
  ld de, $6aab                                    ; $6ac7: $11 $ab $6a
  call Call_000_3427                              ; $6aca: $cd $27 $34

  db $00, $2e, $26

Call_001_6ad0:
Jump_001_6ad0:
  ld bc, $0000                                    ; $6ad0: $01 $00 $00

jr_001_6ad3:
  call Call_001_6ae1                              ; $6ad3: $cd $e1 $6a
  inc b                                           ; $6ad6: $04
  ld a, b                                         ; $6ad7: $78
  cp $03                                          ; $6ad8: $fe $03
  jr nz, jr_001_6ad3                              ; $6ada: $20 $f7

  ldh a, [$ffcf]                                  ; $6adc: $f0 $cf
  ld b, a                                         ; $6ade: $47
  ld c, $01                                       ; $6adf: $0e $01

Call_001_6ae1:
  push bc                                         ; $6ae1: $c5
  ld a, b                                         ; $6ae2: $78
  ld hl, $69b5                                    ; $6ae3: $21 $b5 $69
  call ResolveIndexedPointer16                              ; $6ae6: $cd $8b $31
  ld b, $07                                       ; $6ae9: $06 $07
  ld de, $040d                                    ; $6aeb: $11 $0d $04
  call Call_000_1463                              ; $6aee: $cd $63 $14
  pop bc                                          ; $6af1: $c1
  ret                                             ; $6af2: $c9


Call_001_6af3:
  ld c, $9d                                       ; $6af3: $0e $9d
  ld de, $040d                                    ; $6af5: $11 $0d $04
  ld hl, $0066                                    ; $6af8: $21 $66 $00
  call Call_000_149f                              ; $6afb: $cd $9f $14
  ld c, $9d                                       ; $6afe: $0e $9d
  ld de, $040d                                    ; $6b00: $11 $0d $04
  ld hl, $0106                                    ; $6b03: $21 $06 $01
  call Call_000_149f                              ; $6b06: $cd $9f $14
  ld c, $9d                                       ; $6b09: $0e $9d
  ld de, $040d                                    ; $6b0b: $11 $0d $04
  ld hl, $01a6                                    ; $6b0e: $21 $a6 $01
  call Call_000_149f                              ; $6b11: $cd $9f $14
  ld hl, $697f                                    ; $6b14: $21 $7f $69
  call Call_000_3013                              ; $6b17: $cd $13 $30
  ld a, $64                                       ; $6b1a: $3e $64
  ld [$c159], a                                   ; $6b1c: $ea $59 $c1
  ld a, $03                                       ; $6b1f: $3e $03
  ld [$c1a2], a                                   ; $6b21: $ea $a2 $c1
  ld c, $00                                       ; $6b24: $0e $00

Jump_001_6b26:
  ld a, c                                         ; $6b26: $79
  call Call_000_33f3                              ; $6b27: $cd $f3 $33

  db $04, $74, $58

  jr nz, jr_001_6b43                              ; $6b2d: $20 $14

  ld hl, $1f60                                    ; $6b2f: $21 $60 $1f
  call Call_001_6628                              ; $6b32: $cd $28 $66
  call Call_001_64bd                              ; $6b35: $cd $bd $64
  call Call_001_64bd                              ; $6b38: $cd $bd $64
  call Call_001_64bd                              ; $6b3b: $cd $bd $64
  call Call_001_64bd                              ; $6b3e: $cd $bd $64
  jr jr_001_6b9b                                  ; $6b41: $18 $58

jr_001_6b43:
  call Call_000_33f3                              ; $6b43: $cd $f3 $33

  db $04, $1b, $58

  ld a, c                                         ; $6b49: $79
  call Call_000_33f3                              ; $6b4a: $cd $f3 $33

  db $04, $27, $58

  ld hl, $0408                                    ; $6b50: $21 $08 $04
  add hl, de                                      ; $6b53: $19
  ld a, [hl]                                      ; $6b54: $7e
  ld hl, $1bac                                    ; $6b55: $21 $ac $1b
  call Call_001_6675                              ; $6b58: $cd $75 $66
  call Call_001_64bd                              ; $6b5b: $cd $bd $64
  call Call_001_64bd                              ; $6b5e: $cd $bd $64
  ld hl, $056e                                    ; $6b61: $21 $6e $05
  add hl, de                                      ; $6b64: $19
  ld a, [hl]                                      ; $6b65: $7e
  ld hl, $1f5a                                    ; $6b66: $21 $5a $1f
  call Call_001_655a                              ; $6b69: $cd $5a $65
  ld hl, $060d                                    ; $6b6c: $21 $0d $06
  add hl, de                                      ; $6b6f: $19
  ld a, [hl]                                      ; $6b70: $7e
  call Call_001_671a                              ; $6b71: $cd $1a $67
  ld hl, $060e                                    ; $6b74: $21 $0e $06
  add hl, de                                      ; $6b77: $19
  ld a, [hl]                                      ; $6b78: $7e
  call Call_001_6714                              ; $6b79: $cd $14 $67
  ld hl, $060f                                    ; $6b7c: $21 $0f $06
  add hl, de                                      ; $6b7f: $19
  ld a, [hl]                                      ; $6b80: $7e
  call Call_001_670e                              ; $6b81: $cd $0e $67
  ld hl, $060d                                    ; $6b84: $21 $0d $06
  add hl, de                                      ; $6b87: $19
  call Call_001_6ba3                              ; $6b88: $cd $a3 $6b
  ld a, $41                                       ; $6b8b: $3e $41
  call Call_001_64b5                              ; $6b8d: $cd $b5 $64
  ld hl, $1f5d                                    ; $6b90: $21 $5d $1f
  call Call_001_65e8                              ; $6b93: $cd $e8 $65
  ld a, $44                                       ; $6b96: $3e $44
  call Call_001_64b5                              ; $6b98: $cd $b5 $64

jr_001_6b9b:
  inc c                                           ; $6b9b: $0c
  ld a, c                                         ; $6b9c: $79
  cp $03                                          ; $6b9d: $fe $03
  jp nz, Jump_001_6b26                            ; $6b9f: $c2 $26 $6b

  ret                                             ; $6ba2: $c9


Call_001_6ba3:
  ld a, [hl+]                                     ; $6ba3: $2a
  push hl                                         ; $6ba4: $e5
  cp $0a                                          ; $6ba5: $fe $0a
  jr nc, jr_001_6baf                              ; $6ba7: $30 $06

  ld hl, $c1c8                                    ; $6ba9: $21 $c8 $c1
  call Call_001_6bc4                              ; $6bac: $cd $c4 $6b

jr_001_6baf:
  pop hl                                          ; $6baf: $e1
  ld a, [hl+]                                     ; $6bb0: $2a
  push hl                                         ; $6bb1: $e5
  cp $0a                                          ; $6bb2: $fe $0a
  jr nc, jr_001_6bbc                              ; $6bb4: $30 $06

  ld hl, $c1b8                                    ; $6bb6: $21 $b8 $c1
  call Call_001_6bc4                              ; $6bb9: $cd $c4 $6b

jr_001_6bbc:
  pop hl                                          ; $6bbc: $e1
  ld a, [hl+]                                     ; $6bbd: $2a
  cp $0a                                          ; $6bbe: $fe $0a
  ret nc                                          ; $6bc0: $d0

  ld hl, $c1a8                                    ; $6bc1: $21 $a8 $c1

Call_001_6bc4:
  ld e, [hl]                                      ; $6bc4: $5e
  ld [hl], $30                                    ; $6bc5: $36 $30
  inc hl                                          ; $6bc7: $23
  ld d, [hl]                                      ; $6bc8: $56
  ld [hl], e                                      ; $6bc9: $73
  inc hl                                          ; $6bca: $23
  ld e, [hl]                                      ; $6bcb: $5e
  ld [hl], d                                      ; $6bcc: $72
  inc hl                                          ; $6bcd: $23
  ld d, [hl]                                      ; $6bce: $56
  ld [hl], e                                      ; $6bcf: $73
  inc hl                                          ; $6bd0: $23
  ld [hl], d                                      ; $6bd1: $72
  ret                                             ; $6bd2: $c9


  ld de, $69bb                                    ; $6bd3: $11 $bb $69
  call Call_000_1411                              ; $6bd6: $cd $11 $14
  xor a                                           ; $6bd9: $af
  ldh [$ffcf], a                                  ; $6bda: $e0 $cf
  ld hl, $487c                                    ; $6bdc: $21 $7c $48
  call Call_000_33f3                              ; $6bdf: $cd $f3 $33
  ld b, $ef                                       ; $6be2: $06 $ef
  ld d, b                                         ; $6be4: $50
  ld hl, $69a4                                    ; $6be5: $21 $a4 $69
  call Call_000_3013                              ; $6be8: $cd $13 $30
  ld a, $4c                                       ; $6beb: $3e $4c
  ld [$c159], a                                   ; $6bed: $ea $59 $c1
  ld a, $02                                       ; $6bf0: $3e $02
  ld [$c1a2], a                                   ; $6bf2: $ea $a2 $c1
  ld hl, $1f63                                    ; $6bf5: $21 $63 $1f
  call Call_001_6628                              ; $6bf8: $cd $28 $66
  call Call_001_64bd                              ; $6bfb: $cd $bd $64
  call Call_001_64bd                              ; $6bfe: $cd $bd $64
  ld hl, $1816                                    ; $6c01: $21 $16 $18
  call Call_001_6628                              ; $6c04: $cd $28 $66
  ld hl, $1819                                    ; $6c07: $21 $19 $18
  call Call_001_6628                              ; $6c0a: $cd $28 $66
  ld a, [$cc2c]                                   ; $6c0d: $fa $2c $cc
  or $04                                          ; $6c10: $f6 $04
  ld [$cc2c], a                                   ; $6c12: $ea $2c $cc
  ret                                             ; $6c15: $c9


  call Call_000_33f3                              ; $6c16: $cd $f3 $33
  ld b, $17                                       ; $6c19: $06 $17
  ld d, c                                         ; $6c1b: $51
  ld e, a                                         ; $6c1c: $5f
  ld hl, $ffcf                                    ; $6c1d: $21 $cf $ff
  ld a, $ff                                       ; $6c20: $3e $ff
  cp [hl]                                         ; $6c22: $be
  ret z                                           ; $6c23: $c8

  ld a, e                                         ; $6c24: $7b
  cp [hl]                                         ; $6c25: $be
  jr z, jr_001_6c29                               ; $6c26: $28 $01

  ld [hl], a                                      ; $6c28: $77

jr_001_6c29:
  ldh a, [$ffa6]                                  ; $6c29: $f0 $a6
  bit 1, a                                        ; $6c2b: $cb $4f
  jr z, jr_001_6c46                               ; $6c2d: $28 $17

jr_001_6c2f:
  ld a, $03                                       ; $6c2f: $3e $03
  call Call_000_392b                              ; $6c31: $cd $2b $39
  ld a, [$cc2c]                                   ; $6c34: $fa $2c $cc
  and $fb                                         ; $6c37: $e6 $fb
  ld [$cc2c], a                                   ; $6c39: $ea $2c $cc
  ldh a, [$ffce]                                  ; $6c3c: $f0 $ce
  ld d, a                                         ; $6c3e: $57
  ld e, $00                                       ; $6c3f: $1e $00
  ld a, $08                                       ; $6c41: $3e $08
  jp Jump_000_2621                                ; $6c43: $c3 $21 $26


jr_001_6c46:
  bit 0, a                                        ; $6c46: $cb $47
  ret z                                           ; $6c48: $c8

  ld a, [hl]                                      ; $6c49: $7e
  or a                                            ; $6c4a: $b7
  jr nz, jr_001_6c2f                              ; $6c4b: $20 $e2

  ldh a, [$ffce]                                  ; $6c4d: $f0 $ce
  ld e, a                                         ; $6c4f: $5f
  ld hl, $ffcf                                    ; $6c50: $21 $cf $ff
  ld [hl], $ff                                    ; $6c53: $36 $ff
  ld a, $01                                       ; $6c55: $3e $01
  ldh [$ffce], a                                  ; $6c57: $e0 $ce
  jp Jump_001_6a64                                ; $6c59: $c3 $64 $6a


  rst $18                                         ; $6c5c: $df
  ld de, $69c4                                    ; $6c5d: $11 $c4 $69
  call Call_000_1411                              ; $6c60: $cd $11 $14
  call Call_001_6af3                              ; $6c63: $cd $f3 $6a
  ldh a, [$ffce]                                  ; $6c66: $f0 $ce
  ld hl, $4864                                    ; $6c68: $21 $64 $48
  call Call_000_33f3                              ; $6c6b: $cd $f3 $33
  ld b, $f0                                       ; $6c6e: $06 $f0
  ld d, b                                         ; $6c70: $50
  ldh a, [$ffce]                                  ; $6c71: $f0 $ce
  ldh [$ffcf], a                                  ; $6c73: $e0 $cf
  ld a, $01                                       ; $6c75: $3e $01
  ldh [$ffce], a                                  ; $6c77: $e0 $ce
  call Call_001_6ad0                              ; $6c79: $cd $d0 $6a
  jp RST_20                                       ; $6c7c: $c3 $20 $00


  db $01, $25, $80, $00, $00, $00, $99, $26, $00, $02, $00, $02, $01, $58, $80, $00
  db $00, $00, $99, $26, $00, $02, $00, $02, $00, $60, $40, $50, $10, $90, $80, $a0
  db $20, $4f, $00, $48, $00, $17, $00, $1c, $00, $4f, $00, $1c, $00, $88, $00, $1c
  db $00, $88, $00, $48, $00, $88, $00, $74, $00, $4f, $00, $74, $00, $17, $00, $74
  db $00, $17, $00, $48, $00, $d8, $0d

  ret c                                           ; $6cc6: $d8

  dec c                                           ; $6cc7: $0d

  db $d8, $0d

  ret c                                           ; $6cca: $d8

  dec c                                           ; $6ccb: $0d

  db $e8, $0d, $88, $06, $08

  inc b                                           ; $6cd1: $04
  ld bc, $0602                                    ; $6cd2: $01 $02 $06
  rlca                                            ; $6cd5: $07
  inc bc                                          ; $6cd6: $03
  dec b                                           ; $6cd7: $05

  db $04

  dec b                                           ; $6cd9: $05
  inc bc                                          ; $6cda: $03
  ld [$0601], sp                                  ; $6cdb: $08 $01 $06
  ld [bc], a                                      ; $6cde: $02
  rlca                                            ; $6cdf: $07

  db $03

  ld bc, $0402                                    ; $6ce1: $01 $02 $04
  ld [$0705], sp                                  ; $6ce4: $08 $05 $07
  db $06                                          ; $6ce7: $06

  db $06

  ld [bc], a                                      ; $6ce9: $02
  ld [$0705], sp                                  ; $6cea: $08 $05 $07
  ld bc, $0304                                    ; $6ced: $01 $04 $03

  db $07

  db $08, $04, $01                          ; $6cf1: $08 $04 $01
  inc bc                                          ; $6cf4: $03
  ld [bc], a                                      ; $6cf5: $02
  dec b                                           ; $6cf6: $05
  db $06                                          ; $6cf7: $06

  db $01

  inc bc                                          ; $6cf9: $03
  dec b                                           ; $6cfa: $05
  ld b, $02                                       ; $6cfb: $06 $02
  inc b                                           ; $6cfd: $04
  db $08                                          ; $6cfe: $08
  rlca                                            ; $6cff: $07

  db $02

  ld b, $07                                       ; $6d01: $06 $07
  inc bc                                          ; $6d03: $03
  dec b                                           ; $6d04: $05
  ld [$0401], sp                                  ; $6d05: $08 $01 $04

  db $05

  rlca                                            ; $6d09: $07
  ld b, $01                                       ; $6d0a: $06 $01
  ld [bc], a                                      ; $6d0c: $02
  inc b                                           ; $6d0d: $04
  inc bc                                          ; $6d0e: $03
  ld [$64e0], sp                                  ; $6d0f: $08 $e0 $64

  db $f2, $64, $04, $65, $16, $65

  ld [hl-], a                                     ; $6d18: $32
  ld h, l                                         ; $6d19: $65

  db $20, $6d

  ld c, b                                         ; $6d1c: $48
  ld l, l                                         ; $6d1d: $6d
  ld [hl], b                                      ; $6d1e: $70
  ld l, l                                         ; $6d1f: $6d

  db $02, $00, $00, $ac, $04, $00, $00, $ac, $00, $a0, $00, $ac, $00, $40, $01, $ab
  db $01, $e0, $01, $aa, $01, $80, $02, $ac, $01, $20, $03, $ab, $00, $c0, $03, $ac
  db $00, $60, $04, $ab, $02, $00, $05, $aa

  ld [bc], a                                      ; $6d48: $02
  nop                                             ; $6d49: $00
  nop                                             ; $6d4a: $00
  xor h                                           ; $6d4b: $ac
  inc b                                           ; $6d4c: $04
  nop                                             ; $6d4d: $00
  nop                                             ; $6d4e: $00
  xor h                                           ; $6d4f: $ac
  nop                                             ; $6d50: $00
  ret nz                                          ; $6d51: $c0

  nop                                             ; $6d52: $00
  xor h                                           ; $6d53: $ac
  nop                                             ; $6d54: $00
  add b                                           ; $6d55: $80
  ld bc, $01ab                                    ; $6d56: $01 $ab $01
  ld b, b                                         ; $6d59: $40
  ld [bc], a                                      ; $6d5a: $02
  xor d                                           ; $6d5b: $aa
  ld bc, $0300                                    ; $6d5c: $01 $00 $03
  xor h                                           ; $6d5f: $ac
  ld bc, $03c0                                    ; $6d60: $01 $c0 $03
  xor e                                           ; $6d63: $ab
  nop                                             ; $6d64: $00
  ld h, b                                         ; $6d65: $60
  inc b                                           ; $6d66: $04
  xor h                                           ; $6d67: $ac
  nop                                             ; $6d68: $00
  nop                                             ; $6d69: $00
  dec b                                           ; $6d6a: $05
  xor e                                           ; $6d6b: $ab
  ld [bc], a                                      ; $6d6c: $02
  and b                                           ; $6d6d: $a0
  dec b                                           ; $6d6e: $05
  xor d                                           ; $6d6f: $aa
  ld [bc], a                                      ; $6d70: $02
  nop                                             ; $6d71: $00
  nop                                             ; $6d72: $00
  xor h                                           ; $6d73: $ac
  inc b                                           ; $6d74: $04
  nop                                             ; $6d75: $00
  nop                                             ; $6d76: $00
  xor h                                           ; $6d77: $ac
  nop                                             ; $6d78: $00
  nop                                             ; $6d79: $00
  ld bc, $00ac                                    ; $6d7a: $01 $ac $00
  nop                                             ; $6d7d: $00
  ld [bc], a                                      ; $6d7e: $02
  xor e                                           ; $6d7f: $ab
  ld bc, $0300                                    ; $6d80: $01 $00 $03
  xor d                                           ; $6d83: $aa
  ld bc, $0400                                    ; $6d84: $01 $00 $04
  xor h                                           ; $6d87: $ac
  ld bc, $0500                                    ; $6d88: $01 $00 $05
  xor e                                           ; $6d8b: $ab
  nop                                             ; $6d8c: $00
  nop                                             ; $6d8d: $00
  ld b, $ac                                       ; $6d8e: $06 $ac
  nop                                             ; $6d90: $00
  nop                                             ; $6d91: $00
  rlca                                            ; $6d92: $07
  xor e                                           ; $6d93: $ab
  ld [bc], a                                      ; $6d94: $02
  nop                                             ; $6d95: $00
  db $08                                          ; $6d96: $08
  xor d                                           ; $6d97: $aa

  db $00, $00, $00, $05, $80, $02, $40, $01, $a0, $00, $00, $03, $00, $04, $00, $05
  db $00, $01

  nop                                             ; $6daa: $00
  ld [bc], a                                      ; $6dab: $02
  nop                                             ; $6dac: $00
  inc bc                                          ; $6dad: $03

  ld hl, $6c8b                                    ; $6dae: $21 $8b $6c
  jp Jump_000_2952                                ; $6db1: $c3 $52 $29


  ld a, $04                                       ; $6db4: $3e $04
  call Call_000_33f3                              ; $6db6: $cd $f3 $33

  db $07, $e5, $4d

  call Call_000_3663                              ; $6dbc: $cd $63 $36
  ld a, $80                                       ; $6dbf: $3e $80
  ld [$cbff], a                                   ; $6dc1: $ea $ff $cb
  xor a                                           ; $6dc4: $af
  ld [$cc00], a                                   ; $6dc5: $ea $00 $cc
  ld hl, $53eb                                    ; $6dc8: $21 $eb $53
  call Call_001_5533                              ; $6dcb: $cd $33 $55
  ld a, $1a                                       ; $6dce: $3e $1a
  call Call_000_394b                              ; $6dd0: $cd $4b $39
  ld hl, $cc03                                    ; $6dd3: $21 $03 $cc
  ld [hl], $04                                    ; $6dd6: $36 $04
  inc hl                                          ; $6dd8: $23
  ld [hl], $00                                    ; $6dd9: $36 $00
  ld hl, $ffb9                                    ; $6ddb: $21 $b9 $ff
  ld [hl], $00                                    ; $6dde: $36 $00
  inc hl                                          ; $6de0: $23
  ld [hl], $00                                    ; $6de1: $36 $00
  ld a, $aa                                       ; $6de3: $3e $aa
  call Call_000_33f3                              ; $6de5: $cd $f3 $33

  db $00, $3c, $12

  ld a, $8d                                       ; $6deb: $3e $8d
  call Call_000_33f3                              ; $6ded: $cd $f3 $33

  db $00, $3c, $12

  ld hl, $ffb9                                    ; $6df3: $21 $b9 $ff
  ld [hl], $50                                    ; $6df6: $36 $50
  inc hl                                          ; $6df8: $23
  ld [hl], $00                                    ; $6df9: $36 $00
  ld a, $ac                                       ; $6dfb: $3e $ac
  call Call_000_33f3                              ; $6dfd: $cd $f3 $33

  db $00, $38, $12

  ld a, $ab                                       ; $6e03: $3e $ab
  call Call_000_33f3                              ; $6e05: $cd $f3 $33

  db $00, $38, $12

  ld a, $ff                                       ; $6e0b: $3e $ff
  ld [$cb73], a                                   ; $6e0d: $ea $73 $cb
  xor a                                           ; $6e10: $af
  ld [$cb74], a                                   ; $6e11: $ea $74 $cb
  ld [$cb75], a                                   ; $6e14: $ea $75 $cb
  ld [$cb76], a                                   ; $6e17: $ea $76 $cb
  ld [$cb77], a                                   ; $6e1a: $ea $77 $cb
  ld [$cb78], a                                   ; $6e1d: $ea $78 $cb
  ld [$cb79], a                                   ; $6e20: $ea $79 $cb
  ld [$cb70], a                                   ; $6e23: $ea $70 $cb
  ld a, $04                                       ; $6e26: $3e $04
  ld [$cb71], a                                   ; $6e28: $ea $71 $cb
  ld [$cb72], a                                   ; $6e2b: $ea $72 $cb

Call_001_6e2e:
  ldh a, [rLCDC]                                  ; $6e2e: $f0 $40
  bit 7, a                                        ; $6e30: $cb $7f
  call nz, Call_001_4728                          ; $6e32: $c4 $28 $47
  xor a                                           ; $6e35: $af
  ld [$cb7c], a                                   ; $6e36: $ea $7c $cb
  ld a, [$cb70]                                   ; $6e39: $fa $70 $cb
  xor $01                                         ; $6e3c: $ee $01
  ld [$cb70], a                                   ; $6e3e: $ea $70 $cb
  call Call_001_73a8                              ; $6e41: $cd $a8 $73
  call Call_001_6ee6                              ; $6e44: $cd $e6 $6e
  ld hl, $7b8d                                    ; $6e47: $21 $8d $7b
  call Call_000_33f3                              ; $6e4a: $cd $f3 $33

  db $03, $88, $7e

  ld a, [$cb73]                                   ; $6e50: $fa $73 $cb
  inc a                                           ; $6e53: $3c
  jr z, jr_001_6e5f                               ; $6e54: $28 $09

  add $05                                         ; $6e56: $c6 $05
  ldh [$ff9a], a                                  ; $6e58: $e0 $9a
  ld a, $ac                                       ; $6e5a: $3e $ac
  call Call_000_04e0                              ; $6e5c: $cd $e0 $04

jr_001_6e5f:
  ld a, $18                                       ; $6e5f: $3e $18
  ld [$cbf6], a                                   ; $6e61: $ea $f6 $cb
  ld hl, $cb65                                    ; $6e64: $21 $65 $cb
  ld bc, $0008                                    ; $6e67: $01 $08 $00
  call Call_000_1248                              ; $6e6a: $cd $48 $12
  xor a                                           ; $6e6d: $af
  ldh [$ffcf], a                                  ; $6e6e: $e0 $cf
  ldh [$ffce], a                                  ; $6e70: $e0 $ce
  ldh [$ff8f], a                                  ; $6e72: $e0 $8f
  ldh [$ff90], a                                  ; $6e74: $e0 $90
  call Call_001_6f81                              ; $6e76: $cd $81 $6f
  ld a, [$cb70]                                   ; $6e79: $fa $70 $cb
  ldh [$ff9a], a                                  ; $6e7c: $e0 $9a
  ld a, $a9                                       ; $6e7e: $3e $a9
  call Call_000_04e0                              ; $6e80: $cd $e0 $04
  ld hl, $cb61                                    ; $6e83: $21 $61 $cb
  ld [hl], e                                      ; $6e86: $73
  inc hl                                          ; $6e87: $23
  ld [hl], d                                      ; $6e88: $72
  ld a, $ad                                       ; $6e89: $3e $ad
  call Call_000_04e0                              ; $6e8b: $cd $e0 $04
  ld hl, $cb63                                    ; $6e8e: $21 $63 $cb
  ld [hl], e                                      ; $6e91: $73
  inc hl                                          ; $6e92: $23
  ld [hl], d                                      ; $6e93: $72
  ld a, $5a                                       ; $6e94: $3e $5a
  ld [$cb7a], a                                   ; $6e96: $ea $7a $cb
  xor a                                           ; $6e99: $af
  ld [$cb7b], a                                   ; $6e9a: $ea $7b $cb
  ld [$cc06], a                                   ; $6e9d: $ea $06 $cc
  ld [$cc05], a                                   ; $6ea0: $ea $05 $cc
  ld [$cc06], a                                   ; $6ea3: $ea $06 $cc
  ld [$cc07], a                                   ; $6ea6: $ea $07 $cc
  ld [$cc08], a                                   ; $6ea9: $ea $08 $cc
  ld [$cb60], a                                   ; $6eac: $ea $60 $cb
  ld a, $01                                       ; $6eaf: $3e $01
  ld [$cc09], a                                   ; $6eb1: $ea $09 $cc
  ld hl, $cc07                                    ; $6eb4: $21 $07 $cc
  ld [hl], $3d                                    ; $6eb7: $36 $3d
  inc hl                                          ; $6eb9: $23
  ld [hl], $6f                                    ; $6eba: $36 $6f
  ld bc, $0011                                    ; $6ebc: $01 $11 $00
  ld hl, $cb3f                                    ; $6ebf: $21 $3f $cb
  call Call_000_1248                              ; $6ec2: $cd $48 $12
  ld hl, $cbf6                                    ; $6ec5: $21 $f6 $cb
  ld bc, $0006                                    ; $6ec8: $01 $06 $00
  call Call_000_1248                              ; $6ecb: $cd $48 $12
  ld a, $18                                       ; $6ece: $3e $18
  ld [$cbf6], a                                   ; $6ed0: $ea $f6 $cb
  ld [$cbf8], a                                   ; $6ed3: $ea $f8 $cb
  ld a, $02                                       ; $6ed6: $3e $02
  ld [$cbf7], a                                   ; $6ed8: $ea $f7 $cb
  ld a, $94                                       ; $6edb: $3e $94
  ld [$cbf9], a                                   ; $6edd: $ea $f9 $cb
  call Call_001_73e0                              ; $6ee0: $cd $e0 $73
  jp Jump_000_3374                                ; $6ee3: $c3 $74 $33


Call_001_6ee6:
  ld bc, $c2cf                                    ; $6ee6: $01 $cf $c2

jr_001_6ee9:
  ld a, [bc]                                      ; $6ee9: $0a
  or a                                            ; $6eea: $b7
  call nz, Call_000_0dbb                          ; $6eeb: $c4 $bb $0d
  ld hl, $0054                                    ; $6eee: $21 $54 $00
  add hl, bc                                      ; $6ef1: $09
  ld c, l                                         ; $6ef2: $4d
  ld b, h                                         ; $6ef3: $44
  ld de, $ca5b                                    ; $6ef4: $11 $5b $ca
  rst $10                                         ; $6ef7: $d7
  jr nc, jr_001_6ee9                              ; $6ef8: $30 $ef

  ret                                             ; $6efa: $c9


Call_001_6efb:
  ld hl, $cb74                                    ; $6efb: $21 $74 $cb
  ld e, [hl]                                      ; $6efe: $5e
  inc hl                                          ; $6eff: $23
  ld d, [hl]                                      ; $6f00: $56
  ld hl, $ff8f                                    ; $6f01: $21 $8f $ff
  ld a, [hl+]                                     ; $6f04: $2a
  ld h, [hl]                                      ; $6f05: $66
  ld l, a                                         ; $6f06: $6f
  rst $10                                         ; $6f07: $d7
  jr nc, jr_001_6f18                              ; $6f08: $30 $0e

  ld a, l                                         ; $6f0a: $7d
  ld [$cb74], a                                   ; $6f0b: $ea $74 $cb
  ld a, h                                         ; $6f0e: $7c
  ld [$cb75], a                                   ; $6f0f: $ea $75 $cb
  ld a, [$cb70]                                   ; $6f12: $fa $70 $cb
  ld [$cb73], a                                   ; $6f15: $ea $73 $cb

jr_001_6f18:
  ld a, [$cb70]                                   ; $6f18: $fa $70 $cb
  ld hl, $cb76                                    ; $6f1b: $21 $76 $cb
  call Call_000_3182                              ; $6f1e: $cd $82 $31
  ld hl, $ff8f                                    ; $6f21: $21 $8f $ff
  ld a, [hl+]                                     ; $6f24: $2a
  ld h, [hl]                                      ; $6f25: $66
  ld l, a                                         ; $6f26: $6f
  rst $10                                         ; $6f27: $d7
  jr nc, jr_001_6f3c                              ; $6f28: $30 $12

  ld a, [$cb70]                                   ; $6f2a: $fa $70 $cb
  ld hl, $cb76                                    ; $6f2d: $21 $76 $cb
  call Call_000_317a                              ; $6f30: $cd $7a $31
  ldh a, [$ff8f]                                  ; $6f33: $f0 $8f
  ld e, a                                         ; $6f35: $5f
  ldh a, [$ff90]                                  ; $6f36: $f0 $90
  ld d, a                                         ; $6f38: $57
  ld [hl], e                                      ; $6f39: $73
  inc hl                                          ; $6f3a: $23
  ld [hl], d                                      ; $6f3b: $72

jr_001_6f3c:
  ret                                             ; $6f3c: $c9


  ld a, [$cc06]                                   ; $6f3d: $fa $06 $cc
  add a                                           ; $6f40: $87
  ld c, a                                         ; $6f41: $4f
  ld de, $cb40                                    ; $6f42: $11 $40 $cb
  add e                                           ; $6f45: $83
  ld e, a                                         ; $6f46: $5f
  jr nc, jr_001_6f4a                              ; $6f47: $30 $01

  inc d                                           ; $6f49: $14

jr_001_6f4a:
  ld a, c                                         ; $6f4a: $79
  ld hl, $cb50                                    ; $6f4b: $21 $50 $cb
  add l                                           ; $6f4e: $85
  ld l, a                                         ; $6f4f: $6f
  jr nc, jr_001_6f53                              ; $6f50: $30 $01

  inc h                                           ; $6f52: $24

jr_001_6f53:
  ld a, [de]                                      ; $6f53: $1a
  add [hl]                                        ; $6f54: $86
  ld [de], a                                      ; $6f55: $12
  inc de                                          ; $6f56: $13
  inc hl                                          ; $6f57: $23
  ld a, [de]                                      ; $6f58: $1a
  adc [hl]                                        ; $6f59: $8e
  ld [de], a                                      ; $6f5a: $12
  ld b, a                                         ; $6f5b: $47

jr_001_6f5c:
  ldh a, [rSTAT]                                  ; $6f5c: $f0 $41
  and $03                                         ; $6f5e: $e6 $03
  jr z, jr_001_6f5c                               ; $6f60: $28 $fa

jr_001_6f62:
  ldh a, [rSTAT]                                  ; $6f62: $f0 $41
  and $03                                         ; $6f64: $e6 $03
  jr nz, jr_001_6f62                              ; $6f66: $20 $fa

  ld a, b                                         ; $6f68: $78
  ldh [rSCX], a                                   ; $6f69: $e0 $43
  ld a, c                                         ; $6f6b: $79
  srl a                                           ; $6f6c: $cb $3f
  inc a                                           ; $6f6e: $3c
  cp $08                                          ; $6f6f: $fe $08
  jr nz, jr_001_6f74                              ; $6f71: $20 $01

  xor a                                           ; $6f73: $af

jr_001_6f74:
  ld [$cc06], a                                   ; $6f74: $ea $06 $cc
  ret                                             ; $6f77: $c9


Jump_001_6f78:
  ld hl, $7cb3                                    ; $6f78: $21 $b3 $7c
  call Call_000_3427                              ; $6f7b: $cd $27 $34

  db $03, $88, $7e

Call_001_6f81:
  xor a                                           ; $6f81: $af
  ldh [$ff9a], a                                  ; $6f82: $e0 $9a
  ldh [$ff9d], a                                  ; $6f84: $e0 $9d
  ldh [$ff9e], a                                  ; $6f86: $e0 $9e
  ldh [$ff9c], a                                  ; $6f88: $e0 $9c
  ld a, $08                                       ; $6f8a: $3e $08
  ldh [$ff9b], a                                  ; $6f8c: $e0 $9b
  ld a, $aa                                       ; $6f8e: $3e $aa
  call Call_000_04e0                              ; $6f90: $cd $e0 $04
  ld a, $83                                       ; $6f93: $3e $83
  ldh [$ff9d], a                                  ; $6f95: $e0 $9d
  ld b, $0a                                       ; $6f97: $06 $0a
  ld a, [$cbdd]                                   ; $6f99: $fa $dd $cb
  ld hl, $6d1a                                    ; $6f9c: $21 $1a $6d
  call ResolveIndexedPointer16                              ; $6f9f: $cd $8b $31

jr_001_6fa2:
  ld a, [hl+]                                     ; $6fa2: $2a
  ldh [$ff9a], a                                  ; $6fa3: $e0 $9a
  ld a, [hl+]                                     ; $6fa5: $2a
  ldh [$ff9b], a                                  ; $6fa6: $e0 $9b
  ld a, [hl+]                                     ; $6fa8: $2a
  ldh [$ff9c], a                                  ; $6fa9: $e0 $9c
  ld a, [hl+]                                     ; $6fab: $2a
  push hl                                         ; $6fac: $e5
  call Call_000_04e0                              ; $6fad: $cd $e0 $04
  pop hl                                          ; $6fb0: $e1
  dec b                                           ; $6fb1: $05
  jr nz, jr_001_6fa2                              ; $6fb2: $20 $ee

  ret                                             ; $6fb4: $c9


  call Call_000_33f3                              ; $6fb5: $cd $f3 $33

  db $06, $22, $52

  ret nz                                          ; $6fbb: $c0

  call Call_001_73e0                              ; $6fbc: $cd $e0 $73
  ld a, [$cb7c]                                   ; $6fbf: $fa $7c $cb
  or a                                            ; $6fc2: $b7
  jr nz, jr_001_6fcd                              ; $6fc3: $20 $08

  jr jr_001_7029                                  ; $6fc5: $18 $62

  ld a, [$cb70]                                   ; $6fc7: $fa $70 $cb
  or a                                            ; $6fca: $b7
  jr z, jr_001_7029                               ; $6fcb: $28 $5c

jr_001_6fcd:
  call Call_001_6efb                              ; $6fcd: $cd $fb $6e
  ld a, [$cb70]                                   ; $6fd0: $fa $70 $cb
  ld hl, $cb71                                    ; $6fd3: $21 $71 $cb
  rst $08                                         ; $6fd6: $cf
  dec [hl]                                        ; $6fd7: $35
  ld hl, $cb71                                    ; $6fd8: $21 $71 $cb
  ld a, [hl+]                                     ; $6fdb: $2a
  or [hl]                                         ; $6fdc: $b6
  jr z, jr_001_6fe5                               ; $6fdd: $28 $06

  call Call_001_6e2e                              ; $6fdf: $cd $2e $6e
  jp Jump_000_1232                                ; $6fe2: $c3 $32 $12


jr_001_6fe5:
  ld hl, $cb78                                    ; $6fe5: $21 $78 $cb
  ld e, [hl]                                      ; $6fe8: $5e
  inc hl                                          ; $6fe9: $23
  ld d, [hl]                                      ; $6fea: $56
  ld hl, $cb76                                    ; $6feb: $21 $76 $cb
  ld a, [hl+]                                     ; $6fee: $2a
  ld h, [hl]                                      ; $6fef: $66
  ld l, a                                         ; $6ff0: $6f
  rst $10                                         ; $6ff1: $d7
  ld a, $01                                       ; $6ff2: $3e $01
  jr c, jr_001_6ff7                               ; $6ff4: $38 $01

  xor a                                           ; $6ff6: $af

jr_001_6ff7:
  ldh [$ffbd], a                                  ; $6ff7: $e0 $bd
  ldh a, [rSVBK]                                  ; $6ff9: $f0 $70
  push af                                         ; $6ffb: $f5
  ld a, $06                                       ; $6ffc: $3e $06
  ldh [rSVBK], a                                  ; $6ffe: $e0 $70
  ldh a, [$ffbd]                                  ; $7000: $f0 $bd
  ld [$ddc6], a                                   ; $7002: $ea $c6 $dd
  pop af                                          ; $7005: $f1
  ldh [rSVBK], a                                  ; $7006: $e0 $70
  ld hl, $cb76                                    ; $7008: $21 $76 $cb
  ld a, [hl+]                                     ; $700b: $2a
  ld h, [hl]                                      ; $700c: $66
  ld l, a                                         ; $700d: $6f
  ld a, l                                         ; $700e: $7d
  ld [$cbd6], a                                   ; $700f: $ea $d6 $cb
  ld a, h                                         ; $7012: $7c
  ld [$cbd7], a                                   ; $7013: $ea $d7 $cb
  ld a, [$cbde]                                   ; $7016: $fa $de $cb
  or a                                            ; $7019: $b7
  ld a, $3d                                       ; $701a: $3e $3d
  jp nz, Jump_000_261e                            ; $701c: $c2 $1e $26

  ld a, $02                                       ; $701f: $3e $02
  ld [$c0a0], a                                   ; $7021: $ea $a0 $c0
  ld a, $0b                                       ; $7024: $3e $0b
  jp Jump_000_261e                                ; $7026: $c3 $1e $26


jr_001_7029:
  ld a, [$cb70]                                   ; $7029: $fa $70 $cb
  or a                                            ; $702c: $b7
  jp nz, Jump_001_70fe                            ; $702d: $c2 $fe $70

  ldh a, [$ffce]                                  ; $7030: $f0 $ce
  dec a                                           ; $7032: $3d
  jr nz, jr_001_7079                              ; $7033: $20 $44

Call_001_7035:
  ld hl, $ffcf                                    ; $7035: $21 $cf $ff
  inc [hl]                                        ; $7038: $34
  ld a, [hl]                                      ; $7039: $7e
  and $0f                                         ; $703a: $e6 $0f
  jr nz, jr_001_7068                              ; $703c: $20 $2a

  ld hl, $cb63                                    ; $703e: $21 $63 $cb
  ld c, [hl]                                      ; $7041: $4e
  inc hl                                          ; $7042: $23
  ld b, [hl]                                      ; $7043: $46
  ld hl, $0006                                    ; $7044: $21 $06 $00
  add hl, bc                                      ; $7047: $09
  dec [hl]                                        ; $7048: $35
  ld hl, $0009                                    ; $7049: $21 $09 $00
  add hl, bc                                      ; $704c: $09
  inc [hl]                                        ; $704d: $34
  ld hl, $cb61                                    ; $704e: $21 $61 $cb
  ld c, [hl]                                      ; $7051: $4e
  inc hl                                          ; $7052: $23
  ld b, [hl]                                      ; $7053: $46
  ld hl, $ffcf                                    ; $7054: $21 $cf $ff
  ld a, [hl]                                      ; $7057: $7e
  and $f0                                         ; $7058: $e6 $f0
  swap a                                          ; $705a: $cb $37
  ld hl, $6d10                                    ; $705c: $21 $10 $6d
  call Call_000_3182                              ; $705f: $cd $82 $31
  call Call_000_09f4                              ; $7062: $cd $f4 $09
  ld hl, $ffcf                                    ; $7065: $21 $cf $ff

jr_001_7068:
  ld a, $40                                       ; $7068: $3e $40
  cp [hl]                                         ; $706a: $be
  jr z, jr_001_70b7                               ; $706b: $28 $4a

  ld a, [$cb70]                                   ; $706d: $fa $70 $cb
  or a                                            ; $7070: $b7
  ret nz                                          ; $7071: $c0

  ldh a, [$ffa5]                                  ; $7072: $f0 $a5
  bit 6, a                                        ; $7074: $cb $77
  jr z, jr_001_70b7                               ; $7076: $28 $3f

  ret                                             ; $7078: $c9


Jump_001_7079:
jr_001_7079:
  ld hl, $ffce                                    ; $7079: $21 $ce $ff
  ld a, $02                                       ; $707c: $3e $02
  cp [hl]                                         ; $707e: $be
  ret z                                           ; $707f: $c8

  ld a, [$cb6e]                                   ; $7080: $fa $6e $cb
  inc a                                           ; $7083: $3c
  ld [$cb6e], a                                   ; $7084: $ea $6e $cb
  cp $10                                          ; $7087: $fe $10
  jr nz, jr_001_7092                              ; $7089: $20 $07

  xor a                                           ; $708b: $af
  ld [$cb6e], a                                   ; $708c: $ea $6e $cb
  call Call_001_7157                              ; $708f: $cd $57 $71

jr_001_7092:
  ld a, [$cb70]                                   ; $7092: $fa $70 $cb
  or a                                            ; $7095: $b7
  ret nz                                          ; $7096: $c0

  ldh a, [$ffa6]                                  ; $7097: $f0 $a6
  bit 6, a                                        ; $7099: $cb $77
  jr nz, jr_001_70a6                              ; $709b: $20 $09

  bit 0, a                                        ; $709d: $cb $47
  jr nz, jr_001_70f0                              ; $709f: $20 $4f

  bit 1, a                                        ; $70a1: $cb $4f
  jr nz, jr_001_70f7                              ; $70a3: $20 $52

  ret                                             ; $70a5: $c9


Jump_001_70a6:
jr_001_70a6:
  ld hl, $ffce                                    ; $70a6: $21 $ce $ff
  inc [hl]                                        ; $70a9: $34
  ld hl, $cb61                                    ; $70aa: $21 $61 $cb
  ld c, [hl]                                      ; $70ad: $4e
  inc hl                                          ; $70ae: $23
  ld b, [hl]                                      ; $70af: $46
  ld hl, $001c                                    ; $70b0: $21 $1c $00
  add hl, bc                                      ; $70b3: $09
  ld [hl], $00                                    ; $70b4: $36 $00
  ret                                             ; $70b6: $c9


Jump_001_70b7:
jr_001_70b7:
  ld hl, $ffce                                    ; $70b7: $21 $ce $ff
  ld a, $02                                       ; $70ba: $3e $02
  cp [hl]                                         ; $70bc: $be
  ret z                                           ; $70bd: $c8

  ld hl, $cb63                                    ; $70be: $21 $63 $cb
  ld c, [hl]                                      ; $70c1: $4e
  inc hl                                          ; $70c2: $23
  ld b, [hl]                                      ; $70c3: $46
  ld de, $65ec                                    ; $70c4: $11 $ec $65
  call Call_000_09ff                              ; $70c7: $cd $ff $09
  ldh a, [$ffcf]                                  ; $70ca: $f0 $cf
  cp $40                                          ; $70cc: $fe $40
  ld hl, $cb61                                    ; $70ce: $21 $61 $cb
  ld c, [hl]                                      ; $70d1: $4e
  inc hl                                          ; $70d2: $23
  ld b, [hl]                                      ; $70d3: $46
  ld de, $6528                                    ; $70d4: $11 $28 $65
  call nz, Call_000_09f4                          ; $70d7: $c4 $f4 $09
  ld hl, $ffce                                    ; $70da: $21 $ce $ff
  inc [hl]                                        ; $70dd: $34
  ld hl, $cb63                                    ; $70de: $21 $63 $cb
  ld c, [hl]                                      ; $70e1: $4e
  inc hl                                          ; $70e2: $23
  ld b, [hl]                                      ; $70e3: $46
  ld hl, $001c                                    ; $70e4: $21 $1c $00
  add hl, bc                                      ; $70e7: $09
  ld [hl], $01                                    ; $70e8: $36 $01
  call Call_001_7170                              ; $70ea: $cd $70 $71
  jp Jump_001_6f78                                ; $70ed: $c3 $78 $6f


jr_001_70f0:
  ld a, [$cb6f]                                   ; $70f0: $fa $6f $cb
  or a                                            ; $70f3: $b7
  ret z                                           ; $70f4: $c8

  jr jr_001_714d                                  ; $70f5: $18 $56

jr_001_70f7:
  ld a, [$cb6f]                                   ; $70f7: $fa $6f $cb
  or a                                            ; $70fa: $b7
  ret nz                                          ; $70fb: $c0

  jr jr_001_714d                                  ; $70fc: $18 $4f

Jump_001_70fe:
  ldh a, [$ffce]                                  ; $70fe: $f0 $ce
  cp $03                                          ; $7100: $fe $03
  ret z                                           ; $7102: $c8

  ld a, [$cb7b]                                   ; $7103: $fa $7b $cb
  or a                                            ; $7106: $b7
  jr z, jr_001_7117                               ; $7107: $28 $0e

  call Call_001_7035                              ; $7109: $cd $35 $70
  ld a, [$cb7b]                                   ; $710c: $fa $7b $cb
  dec a                                           ; $710f: $3d
  ld [$cb7b], a                                   ; $7110: $ea $7b $cb
  ret nz                                          ; $7113: $c0

  jp Jump_001_70b7                                ; $7114: $c3 $b7 $70


jr_001_7117:
  ld hl, $cb7a                                    ; $7117: $21 $7a $cb
  dec [hl]                                        ; $711a: $35
  jr nz, jr_001_7129                              ; $711b: $20 $0c

  ldh a, [rDIV]                                   ; $711d: $f0 $04
  and $3f                                         ; $711f: $e6 $3f
  add $04                                         ; $7121: $c6 $04
  ld [$cb7b], a                                   ; $7123: $ea $7b $cb
  jp Jump_001_70a6                                ; $7126: $c3 $a6 $70


jr_001_7129:
  ld a, $03                                       ; $7129: $3e $03
  call Call_000_28e6                              ; $712b: $cd $e6 $28
  or a                                            ; $712e: $b7
  jp nz, Jump_001_7079                            ; $712f: $c2 $79 $70

  jp Jump_001_714d                                ; $7132: $c3 $4d $71


Call_001_7135:
  push bc                                         ; $7135: $c5
  push hl                                         ; $7136: $e5
  ld b, $08                                       ; $7137: $06 $08
  ld c, $00                                       ; $7139: $0e $00
  ld hl, $cb65                                    ; $713b: $21 $65 $cb

jr_001_713e:
  ld a, [hl+]                                     ; $713e: $2a
  dec a                                           ; $713f: $3d
  and $0f                                         ; $7140: $e6 $0f
  add c                                           ; $7142: $81
  ld c, a                                         ; $7143: $4f
  dec b                                           ; $7144: $05
  jr nz, jr_001_713e                              ; $7145: $20 $f7

  ld a, $78                                       ; $7147: $3e $78
  sub c                                           ; $7149: $91
  pop hl                                          ; $714a: $e1
  pop bc                                          ; $714b: $c1
  ret                                             ; $714c: $c9


Jump_001_714d:
jr_001_714d:
  ld a, [$cb6f]                                   ; $714d: $fa $6f $cb
  xor $01                                         ; $7150: $ee $01
  ld [$cb6f], a                                   ; $7152: $ea $6f $cb
  jr jr_001_7157                                  ; $7155: $18 $00

Call_001_7157:
jr_001_7157:
  ld a, [$cb6d]                                   ; $7157: $fa $6d $cb
  ld hl, $cb65                                    ; $715a: $21 $65 $cb
  rst $08                                         ; $715d: $cf
  ld a, [$cb6e]                                   ; $715e: $fa $6e $cb
  ld [hl], a                                      ; $7161: $77
  ld a, [$cb6d]                                   ; $7162: $fa $6d $cb
  inc a                                           ; $7165: $3c
  and $07                                         ; $7166: $e6 $07
  ld [$cb6d], a                                   ; $7168: $ea $6d $cb
  xor a                                           ; $716b: $af
  ld [$cb6e], a                                   ; $716c: $ea $6e $cb
  ret                                             ; $716f: $c9


Call_001_7170:
  call Call_001_7135                              ; $7170: $cd $35 $71
  and $f0                                         ; $7173: $e6 $f0
  swap a                                          ; $7175: $cb $37
  sub $02                                         ; $7177: $d6 $02
  jr nc, jr_001_717c                              ; $7179: $30 $01

  xor a                                           ; $717b: $af

jr_001_717c:
  cp $04                                          ; $717c: $fe $04
  jr c, jr_001_7182                               ; $717e: $38 $02

  ld a, $04                                       ; $7180: $3e $04

jr_001_7182:
  add $41                                         ; $7182: $c6 $41
  call Call_000_392b                              ; $7184: $cd $2b $39
  ld de, $cb50                                    ; $7187: $11 $50 $cb
  ld hl, $6d98                                    ; $718a: $21 $98 $6d
  call Call_000_0245                              ; $718d: $cd $45 $02
  ldh a, [$ffcf]                                  ; $7190: $f0 $cf
  call Call_000_33f3                              ; $7192: $cd $f3 $33

  db $08, $5a, $40

  ld h, a                                         ; $7198: $67
  call Call_001_7135                              ; $7199: $cd $35 $71
  ld l, a                                         ; $719c: $6f
  call Call_000_009c                              ; $719d: $cd $9c $00
  ld e, l                                         ; $71a0: $5d
  ld d, h                                         ; $71a1: $54
  sra d                                           ; $71a2: $cb $2a
  rr e                                            ; $71a4: $cb $1b
  sra d                                           ; $71a6: $cb $2a
  rr e                                            ; $71a8: $cb $1b
  sra d                                           ; $71aa: $cb $2a
  rr e                                            ; $71ac: $cb $1b
  sra d                                           ; $71ae: $cb $2a
  rr e                                            ; $71b0: $cb $1b
  sra d                                           ; $71b2: $cb $2a
  rr e                                            ; $71b4: $cb $1b
  ld b, $08                                       ; $71b6: $06 $08

jr_001_71b8:
  push de                                         ; $71b8: $d5
  ld a, $08                                       ; $71b9: $3e $08
  sub b                                           ; $71bb: $90
  ld hl, $cb50                                    ; $71bc: $21 $50 $cb
  call Call_000_317a                              ; $71bf: $cd $7a $31
  push hl                                         ; $71c2: $e5
  ld a, [hl+]                                     ; $71c3: $2a
  ld h, [hl]                                      ; $71c4: $66
  ld l, a                                         ; $71c5: $6f
  call Call_000_31cd                              ; $71c6: $cd $cd $31
  ld a, d                                         ; $71c9: $7a
  ld d, l                                         ; $71ca: $55
  pop hl                                          ; $71cb: $e1
  ld [hl+], a                                     ; $71cc: $22
  ld [hl], d                                      ; $71cd: $72
  pop de                                          ; $71ce: $d1
  dec b                                           ; $71cf: $05
  jr nz, jr_001_71b8                              ; $71d0: $20 $e6

  ld hl, $cb63                                    ; $71d2: $21 $63 $cb
  ld e, [hl]                                      ; $71d5: $5e
  inc hl                                          ; $71d6: $23
  ld d, [hl]                                      ; $71d7: $56
  ld hl, $0011                                    ; $71d8: $21 $11 $00
  add hl, de                                      ; $71db: $19
  ld e, l                                         ; $71dc: $5d
  ld d, h                                         ; $71dd: $54
  ldh a, [$ffcf]                                  ; $71de: $f0 $cf
  call Call_000_33f3                              ; $71e0: $cd $f3 $33

  db $08, $5c, $40

  ld h, a                                         ; $71e6: $67
  call Call_001_7135                              ; $71e7: $cd $35 $71
  ld l, a                                         ; $71ea: $6f
  call Call_000_009c                              ; $71eb: $cd $9c $00
  sra h                                           ; $71ee: $cb $2c
  rr l                                            ; $71f0: $cb $1d
  sra h                                           ; $71f2: $cb $2c
  rr l                                            ; $71f4: $cb $1d
  sra h                                           ; $71f6: $cb $2c
  rr l                                            ; $71f8: $cb $1d
  sra h                                           ; $71fa: $cb $2c
  rr l                                            ; $71fc: $cb $1d
  sra h                                           ; $71fe: $cb $2c
  rr l                                            ; $7200: $cb $1d
  call Call_000_007b                              ; $7202: $cd $7b $00
  ld a, l                                         ; $7205: $7d
  ld [de], a                                      ; $7206: $12
  inc de                                          ; $7207: $13
  ld a, h                                         ; $7208: $7c
  ld [de], a                                      ; $7209: $12
  ret                                             ; $720a: $c9


  ld hl, $cb4e                                    ; $720b: $21 $4e $cb
  ld a, [hl+]                                     ; $720e: $2a
  ld h, [hl]                                      ; $720f: $66
  ld l, a                                         ; $7210: $6f
  ld a, l                                         ; $7211: $7d
  or h                                            ; $7212: $b4
  jr nz, jr_001_7232                              ; $7213: $20 $1d

  ld a, $01                                       ; $7215: $3e $01
  ld [$cb4e], a                                   ; $7217: $ea $4e $cb
  ld hl, $000f                                    ; $721a: $21 $0f $00
  add hl, bc                                      ; $721d: $09
  ld [hl], $40                                    ; $721e: $36 $40
  push bc                                         ; $7220: $c5
  ld a, [$cb61]                                   ; $7221: $fa $61 $cb
  ld c, a                                         ; $7224: $4f
  ld a, [$cb62]                                   ; $7225: $fa $62 $cb
  ld b, a                                         ; $7228: $47
  ld hl, $0023                                    ; $7229: $21 $23 $00
  add hl, bc                                      ; $722c: $09
  ld [hl], $01                                    ; $722d: $36 $01
  pop bc                                          ; $722f: $c1
  jr jr_001_7283                                  ; $7230: $18 $51

jr_001_7232:
  ld a, $8d                                       ; $7232: $3e $8d
  ld e, $ff                                       ; $7234: $1e $ff
  call Call_000_0a46                              ; $7236: $cd $46 $0a
  jr z, jr_001_7254                               ; $7239: $28 $19

  ld hl, $0006                                    ; $723b: $21 $06 $00
  add hl, bc                                      ; $723e: $09
  ld a, [hl+]                                     ; $723f: $2a
  ld d, [hl]                                      ; $7240: $56
  ld e, a                                         ; $7241: $5f
  ld hl, $ff8f                                    ; $7242: $21 $8f $ff
  ld a, [hl+]                                     ; $7245: $2a
  ld h, [hl]                                      ; $7246: $66
  ld l, a                                         ; $7247: $6f
  add hl, de                                      ; $7248: $19
  ld a, l                                         ; $7249: $7d
  ldh [$ff9b], a                                  ; $724a: $e0 $9b
  ld a, h                                         ; $724c: $7c
  ldh [$ff9c], a                                  ; $724d: $e0 $9c
  ld a, $8d                                       ; $724f: $3e $8d
  call Call_000_04e0                              ; $7251: $cd $e0 $04

jr_001_7254:
  ldh a, [$ffcf]                                  ; $7254: $f0 $cf
  cp $2c                                          ; $7256: $fe $2c
  jr c, jr_001_7283                               ; $7258: $38 $29

  ld a, $47                                       ; $725a: $3e $47
  call Call_000_392b                              ; $725c: $cd $2b $39
  ld de, $65a9                                    ; $725f: $11 $a9 $65
  call Call_000_09f4                              ; $7262: $cd $f4 $09
  ld hl, $002a                                    ; $7265: $21 $2a $00
  add hl, bc                                      ; $7268: $09
  res 1, [hl]                                     ; $7269: $cb $8e
  xor a                                           ; $726b: $af
  ld hl, $000f                                    ; $726c: $21 $0f $00
  add hl, bc                                      ; $726f: $09
  ld [hl+], a                                     ; $7270: $22
  ld [hl+], a                                     ; $7271: $22
  ld [hl+], a                                     ; $7272: $22
  ld [hl+], a                                     ; $7273: $22
  push bc                                         ; $7274: $c5
  ld bc, $0010                                    ; $7275: $01 $10 $00
  ld hl, $cb50                                    ; $7278: $21 $50 $cb
  call Call_000_1248                              ; $727b: $cd $48 $12
  pop bc                                          ; $727e: $c1
  xor a                                           ; $727f: $af
  jp StoreCPUFlags                                ; $7280: $c3 $39 $00


jr_001_7283:
  ldh a, [$ffcf]                                  ; $7283: $f0 $cf
  cp $16                                          ; $7285: $fe $16
  jr nc, jr_001_7296                              ; $7287: $30 $0d

  ld a, $46                                       ; $7289: $3e $46
  call Call_000_392b                              ; $728b: $cd $2b $39
  ld de, $65c5                                    ; $728e: $11 $c5 $65
  call Call_000_09f4                              ; $7291: $cd $f4 $09
  jr jr_001_72a1                                  ; $7294: $18 $0b

jr_001_7296:
  ld a, $47                                       ; $7296: $3e $47
  call Call_000_392b                              ; $7298: $cd $2b $39
  ld de, $65bb                                    ; $729b: $11 $bb $65
  call Call_000_09f4                              ; $729e: $cd $f4 $09

jr_001_72a1:
  push bc                                         ; $72a1: $c5
  ld hl, $002a                                    ; $72a2: $21 $2a $00
  add hl, bc                                      ; $72a5: $09
  res 1, [hl]                                     ; $72a6: $cb $8e
  ld hl, $0008                                    ; $72a8: $21 $08 $00
  add hl, bc                                      ; $72ab: $09
  ld [hl], $24                                    ; $72ac: $36 $24
  inc hl                                          ; $72ae: $23
  ld [hl], $95                                    ; $72af: $36 $95
  inc hl                                          ; $72b1: $23
  ld [hl], $00                                    ; $72b2: $36 $00
  ld b, $08                                       ; $72b4: $06 $08
  ld hl, $cb50                                    ; $72b6: $21 $50 $cb

jr_001_72b9:
  ld a, [hl+]                                     ; $72b9: $2a
  ld d, [hl]                                      ; $72ba: $56
  ld e, a                                         ; $72bb: $5f
  dec hl                                          ; $72bc: $2b
  sra d                                           ; $72bd: $cb $2a
  rr e                                            ; $72bf: $cb $1b
  ld [hl], e                                      ; $72c1: $73
  inc hl                                          ; $72c2: $23
  ld [hl], d                                      ; $72c3: $72
  inc hl                                          ; $72c4: $23
  dec b                                           ; $72c5: $05
  jr nz, jr_001_72b9                              ; $72c6: $20 $f1

  pop bc                                          ; $72c8: $c1
  ld a, e                                         ; $72c9: $7b
  or d                                            ; $72ca: $b2
  push af                                         ; $72cb: $f5
  ld hl, $0011                                    ; $72cc: $21 $11 $00
  add hl, bc                                      ; $72cf: $09
  ld e, [hl]                                      ; $72d0: $5e
  inc hl                                          ; $72d1: $23
  ld d, [hl]                                      ; $72d2: $56
  sra d                                           ; $72d3: $cb $2a
  rr e                                            ; $72d5: $cb $1b
  call Call_000_0092                              ; $72d7: $cd $92 $00
  ld [hl], d                                      ; $72da: $72
  dec hl                                          ; $72db: $2b
  ld [hl], e                                      ; $72dc: $73
  pop af                                          ; $72dd: $f1
  or e                                            ; $72de: $b3
  or d                                            ; $72df: $b2
  jp nz, StoreCPUFlags                            ; $72e0: $c2 $39 $00

  ld de, $65c3                                    ; $72e3: $11 $c3 $65
  call Call_000_09f4                              ; $72e6: $cd $f4 $09
  xor a                                           ; $72e9: $af
  jp StoreCPUFlags                                ; $72ea: $c3 $39 $00


  ld hl, $0009                                    ; $72ed: $21 $09 $00
  add hl, bc                                      ; $72f0: $09
  ld e, [hl]                                      ; $72f1: $5e
  inc hl                                          ; $72f2: $23
  ld d, [hl]                                      ; $72f3: $56
  ld hl, $0081                                    ; $72f4: $21 $81 $00
  rst $10                                         ; $72f7: $d7
  jp StoreCPUFlags                                ; $72f8: $c3 $39 $00


  ld hl, $002a                                    ; $72fb: $21 $2a $00
  add hl, bc                                      ; $72fe: $09
  set 1, [hl]                                     ; $72ff: $cb $ce
  ld hl, $0009                                    ; $7301: $21 $09 $00
  add hl, bc                                      ; $7304: $09
  ld e, [hl]                                      ; $7305: $5e
  inc hl                                          ; $7306: $23
  ld d, [hl]                                      ; $7307: $56
  ld hl, $0095                                    ; $7308: $21 $95 $00
  rst $10                                         ; $730b: $d7
  jp c, StoreCPUFlags                             ; $730c: $da $39 $00

  ld hl, $002a                                    ; $730f: $21 $2a $00
  add hl, bc                                      ; $7312: $09
  res 1, [hl]                                     ; $7313: $cb $8e
  jp StoreCPUFlags                                ; $7315: $c3 $39 $00


Call_001_7318:
  push hl                                         ; $7318: $e5
  ld a, [$cbdd]                                   ; $7319: $fa $dd $cb
  ld hl, $6d1a                                    ; $731c: $21 $1a $6d
  call ResolveIndexedPointer16                              ; $731f: $cd $8b $31
  ld de, $0011                                    ; $7322: $11 $11 $00
  add hl, de                                      ; $7325: $19
  ld a, [hl+]                                     ; $7326: $2a
  ld h, [hl]                                      ; $7327: $66
  ld l, a                                         ; $7328: $6f
  ld de, $ffd8                                    ; $7329: $11 $d8 $ff
  add hl, de                                      ; $732c: $19
  ld e, l                                         ; $732d: $5d
  ld d, h                                         ; $732e: $54
  pop hl                                          ; $732f: $e1
  ret                                             ; $7330: $c9


Call_001_7331:
  push hl                                         ; $7331: $e5
  call Call_001_7318                              ; $7332: $cd $18 $73
  ld hl, $000c                                    ; $7335: $21 $0c $00
  add hl, de                                      ; $7338: $19
  ld e, l                                         ; $7339: $5d
  ld d, h                                         ; $733a: $54
  pop hl                                          ; $733b: $e1
  ret                                             ; $733c: $c9


  ld a, [$cb5e]                                   ; $733d: $fa $5e $cb
  ld l, a                                         ; $7340: $6f
  ld a, [$cb5f]                                   ; $7341: $fa $5f $cb
  or l                                            ; $7344: $b5
  jr z, jr_001_73a4                               ; $7345: $28 $5d

  ld hl, $ff8f                                    ; $7347: $21 $8f $ff
  ld a, [hl+]                                     ; $734a: $2a
  ld h, [hl]                                      ; $734b: $66
  ld l, a                                         ; $734c: $6f
  call Call_001_7318                              ; $734d: $cd $18 $73
  rst $10                                         ; $7350: $d7
  jr nc, jr_001_73a4                              ; $7351: $30 $51

  call Call_001_7331                              ; $7353: $cd $31 $73
  rst $10                                         ; $7356: $d7
  jr c, jr_001_73a4                               ; $7357: $38 $4b

  ld hl, $0009                                    ; $7359: $21 $09 $00
  add hl, bc                                      ; $735c: $09
  ld a, [hl+]                                     ; $735d: $2a
  ld h, [hl]                                      ; $735e: $66
  ld l, a                                         ; $735f: $6f
  ld de, $0076                                    ; $7360: $11 $76 $00
  rst $10                                         ; $7363: $d7
  jr z, jr_001_738e                               ; $7364: $28 $28

  jr nc, jr_001_73a4                              ; $7366: $30 $3c

  xor a                                           ; $7368: $af
  ld hl, $000f                                    ; $7369: $21 $0f $00
  add hl, bc                                      ; $736c: $09
  ld [hl+], a                                     ; $736d: $22
  ld [hl+], a                                     ; $736e: $22
  ld [hl+], a                                     ; $736f: $22
  ld [hl+], a                                     ; $7370: $22
  push bc                                         ; $7371: $c5
  ld bc, $0010                                    ; $7372: $01 $10 $00
  ld hl, $cb50                                    ; $7375: $21 $50 $cb
  call Call_000_1248                              ; $7378: $cd $48 $12
  pop bc                                          ; $737b: $c1
  call Call_001_7318                              ; $737c: $cd $18 $73
  ld a, e                                         ; $737f: $7b
  ld [$cb4f], a                                   ; $7380: $ea $4f $cb
  ldh [$ff8f], a                                  ; $7383: $e0 $8f
  ld a, d                                         ; $7385: $7a
  ldh [$ff90], a                                  ; $7386: $e0 $90
  ld a, $01                                       ; $7388: $3e $01
  or a                                            ; $738a: $b7
  jp StoreCPUFlags                                ; $738b: $c3 $39 $00


jr_001_738e:
  ld a, $46                                       ; $738e: $3e $46
  call Call_000_392b                              ; $7390: $cd $2b $39
  ld hl, $0011                                    ; $7393: $21 $11 $00
  add hl, bc                                      ; $7396: $09
  ld a, [hl+]                                     ; $7397: $2a
  ld d, [hl]                                      ; $7398: $56
  ld e, a                                         ; $7399: $5f
  bit 7, d                                        ; $739a: $cb $7a
  jr nz, jr_001_73a4                              ; $739c: $20 $06

  call Call_000_0092                              ; $739e: $cd $92 $00
  ld [hl], d                                      ; $73a1: $72
  dec hl                                          ; $73a2: $2b
  ld [hl], e                                      ; $73a3: $73

jr_001_73a4:
  xor a                                           ; $73a4: $af
  jp StoreCPUFlags                                ; $73a5: $c3 $39 $00


Call_001_73a8:
  call Call_000_3363                              ; $73a8: $cd $63 $33
  ld a, [$cb71]                                   ; $73ab: $fa $71 $cb
  ld c, a                                         ; $73ae: $4f
  ld a, [$cb70]                                   ; $73af: $fa $70 $cb
  or a                                            ; $73b2: $b7
  jr z, jr_001_73b9                               ; $73b3: $28 $04

  ld a, [$cb72]                                   ; $73b5: $fa $72 $cb
  ld c, a                                         ; $73b8: $4f

jr_001_73b9:
  ld b, $00                                       ; $73b9: $06 $00
  ld hl, $d004                                    ; $73bb: $21 $04 $d0
  ld de, $d504                                    ; $73be: $11 $04 $d5
  ld a, $01                                       ; $73c1: $3e $01
  call Call_000_33f3                              ; $73c3: $cd $f3 $33

  db $08, $43, $7d

  ld hl, $cb74                                    ; $73c9: $21 $74 $cb
  ld c, [hl]                                      ; $73cc: $4e
  inc hl                                          ; $73cd: $23
  ld b, [hl]                                      ; $73ce: $46
  ld hl, $d00b                                    ; $73cf: $21 $0b $d0
  ld de, $d50b                                    ; $73d2: $11 $0b $d5
  ld a, $04                                       ; $73d5: $3e $04
  call Call_000_33f3                              ; $73d7: $cd $f3 $33

  db $08, $43, $7d

  jp Jump_000_3374                                ; $73dd: $c3 $74 $33


Call_001_73e0:
  call Call_000_3363                              ; $73e0: $cd $63 $33
  ld hl, $ff8f                                    ; $73e3: $21 $8f $ff
  ld c, [hl]                                      ; $73e6: $4e
  inc hl                                          ; $73e7: $23
  ld b, [hl]                                      ; $73e8: $46
  ld hl, $d013                                    ; $73e9: $21 $13 $d0
  ld de, $d513                                    ; $73ec: $11 $13 $d5
  ld a, $04                                       ; $73ef: $3e $04
  call Call_000_33f3                              ; $73f1: $cd $f3 $33

  db $08, $43, $7d

  jp Jump_000_3374                                ; $73f7: $c3 $74 $33


  inc bc                                          ; $73fa: $03
  ld a, [bc]                                      ; $73fb: $0a
  dec bc                                          ; $73fc: $0b
  sub $02                                         ; $73fd: $d6 $02
  ld hl, $6cc4                                    ; $73ff: $21 $c4 $6c
  call Call_000_3182                              ; $7402: $cd $82 $31
  call Call_000_3427                              ; $7405: $cd $27 $34

  db $03, $63, $78

  call Call_000_2fc1                              ; $740b: $cd $c1 $2f
  sub $02                                         ; $740e: $d6 $02
  srl a                                           ; $7410: $cb $3f
  ld hl, $cb76                                    ; $7412: $21 $76 $cb
  call ResolveIndexedPointer16                              ; $7415: $cd $8b $31
  ld a, l                                         ; $7418: $7d
  or h                                            ; $7419: $b4
  ret z                                           ; $741a: $c8

  ld de, $0035                                    ; $741b: $11 $35 $00
  add hl, de                                      ; $741e: $19
  ld e, l                                         ; $741f: $5d
  ld d, h                                         ; $7420: $54
  ld hl, $002a                                    ; $7421: $21 $2a $00
  add hl, bc                                      ; $7424: $09
  res 0, [hl]                                     ; $7425: $cb $86
  ld hl, $0006                                    ; $7427: $21 $06 $00
  add hl, bc                                      ; $742a: $09
  ld [hl], e                                      ; $742b: $73
  inc hl                                          ; $742c: $23
  ld [hl], d                                      ; $742d: $72
  ld hl, $000b                                    ; $742e: $21 $0b $00
  add hl, bc                                      ; $7431: $09
  ld [hl], e                                      ; $7432: $73
  inc hl                                          ; $7433: $23
  ld [hl], d                                      ; $7434: $72
  ret                                             ; $7435: $c9


  ld hl, $6c7f                                    ; $7436: $21 $7f $6c
  jp Jump_000_2952                                ; $7439: $c3 $52 $29


  ld a, $02                                       ; $743c: $3e $02
  call Call_000_33f3                              ; $743e: $cd $f3 $33

  db $07, $e5, $4d

  call Call_000_3663                              ; $7444: $cd $63 $36
  ld hl, $7b8d                                    ; $7447: $21 $8d $7b
  call Call_000_33f3                              ; $744a: $cd $f3 $33

  db $03, $88, $7e

  ld a, $1b                                       ; $7450: $3e $1b
  call Call_000_394b                              ; $7452: $cd $4b $39
  ld hl, $53e6                                    ; $7455: $21 $e6 $53
  call Call_001_5533                              ; $7458: $cd $33 $55
  ld a, $3c                                       ; $745b: $3e $3c
  ld [$cb56], a                                   ; $745d: $ea $56 $cb
  ld a, $1e                                       ; $7460: $3e $1e
  ld [$cb57], a                                   ; $7462: $ea $57 $cb
  ld a, $01                                       ; $7465: $3e $01
  ld [$cb58], a                                   ; $7467: $ea $58 $cb
  ld a, $14                                       ; $746a: $3e $14
  ld [$cb59], a                                   ; $746c: $ea $59 $cb
  xor a                                           ; $746f: $af
  ld [$cb3f], a                                   ; $7470: $ea $3f $cb
  ld [$cb41], a                                   ; $7473: $ea $41 $cb
  ld [$cb42], a                                   ; $7476: $ea $42 $cb
  ld [$cb43], a                                   ; $7479: $ea $43 $cb
  ld [$cb54], a                                   ; $747c: $ea $54 $cb
  ld [$cb55], a                                   ; $747f: $ea $55 $cb
  ld [$cb5c], a                                   ; $7482: $ea $5c $cb
  ldh [$ff9a], a                                  ; $7485: $e0 $9a
  ld a, $c0                                       ; $7487: $3e $c0
  call Call_000_04e0                              ; $7489: $cd $e0 $04
  ld a, $01                                       ; $748c: $3e $01
  ldh [$ff9a], a                                  ; $748e: $e0 $9a
  ld a, $c0                                       ; $7490: $3e $c0
  call Call_000_04e0                              ; $7492: $cd $e0 $04
  jp Jump_001_77a4                                ; $7495: $c3 $a4 $77


  ld a, [$cb5c]                                   ; $7498: $fa $5c $cb
  or a                                            ; $749b: $b7
  jr nz, jr_001_74e1                              ; $749c: $20 $43

  call Call_000_33f3                              ; $749e: $cd $f3 $33

  db $06, $40, $52

  ret nz                                          ; $74a4: $c0

  call Call_000_33f3                              ; $74a5: $cd $f3 $33

  db $06, $22, $52

  ret nz                                          ; $74ab: $c0

jr_001_74ac:
  call Call_001_764a                              ; $74ac: $cd $4a $76
  call Call_001_7611                              ; $74af: $cd $11 $76
  ldh a, [$ffa6]                                  ; $74b2: $f0 $a6
  ld e, a                                         ; $74b4: $5f
  ldh a, [$ffa5]                                  ; $74b5: $f0 $a5
  or e                                            ; $74b7: $b3
  bit 0, a                                        ; $74b8: $cb $47
  jr nz, jr_001_74bd                              ; $74ba: $20 $01

  ret                                             ; $74bc: $c9


jr_001_74bd:
  ld a, $c0                                       ; $74bd: $3e $c0
  ld e, $00                                       ; $74bf: $1e $00
  call Call_000_0a46                              ; $74c1: $cd $46 $0a
  ret nz                                          ; $74c4: $c0

  ld b, h                                         ; $74c5: $44
  ld c, l                                         ; $74c6: $4d
  ld hl, $0002                                    ; $74c7: $21 $02 $00
  add hl, bc                                      ; $74ca: $09
  ld a, [hl]                                      ; $74cb: $7e
  cp $08                                          ; $74cc: $fe $08
  ret nz                                          ; $74ce: $c0

  ld a, [$cb3f]                                   ; $74cf: $fa $3f $cb
  or a                                            ; $74d2: $b7
  ret z                                           ; $74d3: $c8

  ld d, a                                         ; $74d4: $57
  ld e, $00                                       ; $74d5: $1e $00
  call Call_001_7782                              ; $74d7: $cd $82 $77
  ld hl, $001c                                    ; $74da: $21 $1c $00
  add hl, bc                                      ; $74dd: $09
  ld [hl], $01                                    ; $74de: $36 $01
  ret                                             ; $74e0: $c9


jr_001_74e1:
  xor a                                           ; $74e1: $af
  ldh [$ffa6], a                                  ; $74e2: $e0 $a6
  ldh [$ffa5], a                                  ; $74e4: $e0 $a5
  ld hl, $cb5c                                    ; $74e6: $21 $5c $cb
  dec [hl]                                        ; $74e9: $35
  jr nz, jr_001_74ac                              ; $74ea: $20 $c0

  ld hl, $cb54                                    ; $74ec: $21 $54 $cb
  ld a, [hl+]                                     ; $74ef: $2a
  ld h, [hl]                                      ; $74f0: $66
  ld l, a                                         ; $74f1: $6f
  ld h, $00                                       ; $74f2: $26 $00
  ld a, l                                         ; $74f4: $7d
  ld [$cbd6], a                                   ; $74f5: $ea $d6 $cb
  ld a, h                                         ; $74f8: $7c
  ld [$cbd7], a                                   ; $74f9: $ea $d7 $cb
  ld a, [$cbde]                                   ; $74fc: $fa $de $cb
  or a                                            ; $74ff: $b7
  ld a, $3d                                       ; $7500: $3e $3d
  jp nz, Jump_000_261e                            ; $7502: $c2 $1e $26

  ld a, $02                                       ; $7505: $3e $02
  ld [$c0a0], a                                   ; $7507: $ea $a0 $c0
  ld a, $0b                                       ; $750a: $3e $0b
  jp Jump_000_261e                                ; $750c: $c3 $1e $26


  ld hl, $0001                                    ; $750f: $21 $01 $00
  add hl, bc                                      ; $7512: $09
  ld a, [hl]                                      ; $7513: $7e
  or a                                            ; $7514: $b7
  ret nz                                          ; $7515: $c0

  ld hl, $0002                                    ; $7516: $21 $02 $00
  add hl, bc                                      ; $7519: $09
  ld a, [hl]                                      ; $751a: $7e
  cp $09                                          ; $751b: $fe $09
  ret z                                           ; $751d: $c8

  ld a, [$cb41]                                   ; $751e: $fa $41 $cb
  ld d, a                                         ; $7521: $57
  ldh a, [$ffa5]                                  ; $7522: $f0 $a5
  and $f0                                         ; $7524: $e6 $f0
  cp d                                            ; $7526: $ba
  ret z                                           ; $7527: $c8

  ld [$cb41], a                                   ; $7528: $ea $41 $cb
  ld hl, $001c                                    ; $752b: $21 $1c $00
  add hl, bc                                      ; $752e: $09
  ld [hl], $01                                    ; $752f: $36 $01
  ret                                             ; $7531: $c9


  ld hl, $cb5a                                    ; $7532: $21 $5a $cb
  ld [hl], $00                                    ; $7535: $36 $00
  inc hl                                          ; $7537: $23
  ld [hl], $02                                    ; $7538: $36 $02
  ld hl, $0001                                    ; $753a: $21 $01 $00
  add hl, bc                                      ; $753d: $09
  ld a, [hl]                                      ; $753e: $7e
  or a                                            ; $753f: $b7
  jr z, jr_001_7597                               ; $7540: $28 $55

  ld hl, $6da8                                    ; $7542: $21 $a8 $6d
  ld a, [$cbdd]                                   ; $7545: $fa $dd $cb
  call ResolveIndexedPointer16                              ; $7548: $cd $8b $31
  ld a, l                                         ; $754b: $7d
  ld [$cb5a], a                                   ; $754c: $ea $5a $cb
  ld a, h                                         ; $754f: $7c
  ld [$cb5b], a                                   ; $7550: $ea $5b $cb
  ld hl, $0002                                    ; $7553: $21 $02 $00
  add hl, bc                                      ; $7556: $09
  ld a, [hl]                                      ; $7557: $7e
  cp $08                                          ; $7558: $fe $08
  ret nz                                          ; $755a: $c0

  ld a, [$cb40]                                   ; $755b: $fa $40 $cb
  ld d, a                                         ; $755e: $57
  ld e, $01                                       ; $755f: $1e $01
  call Call_001_7782                              ; $7561: $cd $82 $77
  ret z                                           ; $7564: $c8

  push bc                                         ; $7565: $c5
  ld b, $08                                       ; $7566: $06 $08

jr_001_7568:
  ld e, b                                         ; $7568: $58
  ld a, $c1                                       ; $7569: $3e $c1
  call Call_000_0a46                              ; $756b: $cd $46 $0a
  jr z, jr_001_7576                               ; $756e: $28 $06

  dec b                                           ; $7570: $05
  jr nz, jr_001_7568                              ; $7571: $20 $f5

  xor a                                           ; $7573: $af
  jr jr_001_759e                                  ; $7574: $18 $28

jr_001_7576:
  ld b, $32                                       ; $7576: $06 $32

jr_001_7578:
  dec b                                           ; $7578: $05
  ld a, b                                         ; $7579: $78
  or a                                            ; $757a: $b7
  jr z, jr_001_759e                               ; $757b: $28 $21

  ld a, $08                                       ; $757d: $3e $08
  call Call_000_28e6                              ; $757f: $cd $e6 $28
  inc a                                           ; $7582: $3c
  ld hl, $cb40                                    ; $7583: $21 $40 $cb
  cp [hl]                                         ; $7586: $be
  jr z, jr_001_7578                               ; $7587: $28 $ef

  ld d, a                                         ; $7589: $57
  ld e, a                                         ; $758a: $5f
  ld a, $c1                                       ; $758b: $3e $c1
  push de                                         ; $758d: $d5
  call Call_000_0a46                              ; $758e: $cd $46 $0a
  pop de                                          ; $7591: $d1
  jr nz, jr_001_7578                              ; $7592: $20 $e4

  ld a, d                                         ; $7594: $7a
  jr jr_001_759e                                  ; $7595: $18 $07

jr_001_7597:
  ld a, [$cb41]                                   ; $7597: $fa $41 $cb
  call Call_001_75fb                              ; $759a: $cd $fb $75
  push bc                                         ; $759d: $c5

jr_001_759e:
  pop bc                                          ; $759e: $c1
  ld e, a                                         ; $759f: $5f
  ld a, [$cb5c]                                   ; $75a0: $fa $5c $cb
  or a                                            ; $75a3: $b7
  jr z, jr_001_75a8                               ; $75a4: $28 $02

  ld e, $00                                       ; $75a6: $1e $00

jr_001_75a8:
  inc bc                                          ; $75a8: $03
  ld a, [bc]                                      ; $75a9: $0a
  dec bc                                          ; $75aa: $0b
  ld hl, $cb3f                                    ; $75ab: $21 $3f $cb
  rst $08                                         ; $75ae: $cf
  push hl                                         ; $75af: $e5
  ld [hl], e                                      ; $75b0: $73
  ld hl, $0044                                    ; $75b1: $21 $44 $00
  add hl, bc                                      ; $75b4: $09
  ld a, [$cb5a]                                   ; $75b5: $fa $5a $cb
  ld [hl+], a                                     ; $75b8: $22
  ld a, [$cb5b]                                   ; $75b9: $fa $5b $cb
  ld [hl], a                                      ; $75bc: $77
  ld hl, $6ca0                                    ; $75bd: $21 $a0 $6c
  pop de                                          ; $75c0: $d1
  ld a, [de]                                      ; $75c1: $1a
  call Call_000_316b                              ; $75c2: $cd $6b $31
  ld a, [hl+]                                     ; $75c5: $2a
  ld d, [hl]                                      ; $75c6: $56
  ld e, a                                         ; $75c7: $5f
  inc hl                                          ; $75c8: $23
  ld a, [hl+]                                     ; $75c9: $2a
  ld h, [hl]                                      ; $75ca: $66
  ld l, a                                         ; $75cb: $6f
  call Call_000_33f3                              ; $75cc: $cd $f3 $33

  db $03, $af, $70

  ld hl, $0044                                    ; $75d2: $21 $44 $00
  add hl, bc                                      ; $75d5: $09
  ld a, [hl]                                      ; $75d6: $7e
  or a                                            ; $75d7: $b7
  jr nz, jr_001_75db                              ; $75d8: $20 $01

  inc a                                           ; $75da: $3c

jr_001_75db:
  ld [$cdac], a                                   ; $75db: $ea $ac $cd
  ld hl, $0011                                    ; $75de: $21 $11 $00
  add hl, bc                                      ; $75e1: $09
  ld a, [hl+]                                     ; $75e2: $2a
  ld d, [hl]                                      ; $75e3: $56
  ld e, a                                         ; $75e4: $5f
  ld hl, $000f                                    ; $75e5: $21 $0f $00
  add hl, bc                                      ; $75e8: $09
  ld a, [hl+]                                     ; $75e9: $2a
  ld h, [hl]                                      ; $75ea: $66
  ld l, a                                         ; $75eb: $6f
  xor a                                           ; $75ec: $af
  or h                                            ; $75ed: $b4
  or l                                            ; $75ee: $b5
  or d                                            ; $75ef: $b2
  or e                                            ; $75f0: $b3
  ret z                                           ; $75f1: $c8

  call Call_000_32ec                              ; $75f2: $cd $ec $32
  ld hl, $0002                                    ; $75f5: $21 $02 $00
  add hl, bc                                      ; $75f8: $09
  ld [hl], a                                      ; $75f9: $77
  ret                                             ; $75fa: $c9


Call_001_75fb:
  push bc                                         ; $75fb: $c5
  ld hl, $6c97                                    ; $75fc: $21 $97 $6c
  ld c, a                                         ; $75ff: $4f
  ld b, $00                                       ; $7600: $06 $00

jr_001_7602:
  ld a, [hl+]                                     ; $7602: $2a
  cp c                                            ; $7603: $b9
  jr z, jr_001_760e                               ; $7604: $28 $08

  inc b                                           ; $7606: $04
  ld a, b                                         ; $7607: $78
  cp $09                                          ; $7608: $fe $09
  jr nz, jr_001_7602                              ; $760a: $20 $f6

  ld b, $00                                       ; $760c: $06 $00

jr_001_760e:
  ld a, b                                         ; $760e: $78
  pop bc                                          ; $760f: $c1
  ret                                             ; $7610: $c9


Call_001_7611:
  ld a, [$cb5c]                                   ; $7611: $fa $5c $cb
  or a                                            ; $7614: $b7
  jp nz, Jump_001_770d                            ; $7615: $c2 $0d $77

  ld b, $00                                       ; $7618: $06 $00
  ld hl, $cb44                                    ; $761a: $21 $44 $cb

jr_001_761d:
  ld a, [hl+]                                     ; $761d: $2a
  ld d, a                                         ; $761e: $57
  ld e, [hl]                                      ; $761f: $5e
  ld a, $ff                                       ; $7620: $3e $ff
  and d                                           ; $7622: $a2
  and e                                           ; $7623: $a3
  cp $ff                                          ; $7624: $fe $ff
  jr nz, jr_001_762b                              ; $7626: $20 $03

  inc hl                                          ; $7628: $23
  jr jr_001_7631                                  ; $7629: $18 $06

jr_001_762b:
  dec hl                                          ; $762b: $2b
  inc de                                          ; $762c: $13
  ld [hl], d                                      ; $762d: $72
  inc hl                                          ; $762e: $23
  ld [hl], e                                      ; $762f: $73
  inc hl                                          ; $7630: $23

jr_001_7631:
  inc b                                           ; $7631: $04
  ld a, b                                         ; $7632: $78
  cp $08                                          ; $7633: $fe $08
  jr nz, jr_001_761d                              ; $7635: $20 $e6

  ld a, [$cb42]                                   ; $7637: $fa $42 $cb
  inc a                                           ; $763a: $3c
  ld [$cb42], a                                   ; $763b: $ea $42 $cb
  cp $32                                          ; $763e: $fe $32
  ret nz                                          ; $7640: $c0

  xor a                                           ; $7641: $af
  ld [$cb42], a                                   ; $7642: $ea $42 $cb
  call Call_001_770d                              ; $7645: $cd $0d $77
  jr jr_001_7692                                  ; $7648: $18 $48

Call_001_764a:
  ld a, [$cb5c]                                   ; $764a: $fa $5c $cb
  or a                                            ; $764d: $b7
  ret nz                                          ; $764e: $c0

  ld c, $00                                       ; $764f: $0e $00
  ld hl, $cb56                                    ; $7651: $21 $56 $cb
  dec [hl]                                        ; $7654: $35
  jr nz, jr_001_7664                              ; $7655: $20 $0d

  ld c, $01                                       ; $7657: $0e $01
  ld a, $3c                                       ; $7659: $3e $3c
  ld [$cb56], a                                   ; $765b: $ea $56 $cb
  ld hl, $cb57                                    ; $765e: $21 $57 $cb
  dec [hl]                                        ; $7661: $35
  jr z, jr_001_7683                               ; $7662: $28 $1f

jr_001_7664:
  ld a, [$cb57]                                   ; $7664: $fa $57 $cb
  cp $07                                          ; $7667: $fe $07
  jr nc, jr_001_767d                              ; $7669: $30 $12

  ld hl, $cb59                                    ; $766b: $21 $59 $cb
  dec [hl]                                        ; $766e: $35
  jr nz, jr_001_767d                              ; $766f: $20 $0c

  ld [hl], $14                                    ; $7671: $36 $14
  ld c, $01                                       ; $7673: $0e $01
  ld a, [$cb58]                                   ; $7675: $fa $58 $cb
  xor $01                                         ; $7678: $ee $01
  ld [$cb58], a                                   ; $767a: $ea $58 $cb

jr_001_767d:
  xor a                                           ; $767d: $af
  or c                                            ; $767e: $b1
  jp nz, Jump_001_77f6                            ; $767f: $c2 $f6 $77

  ret                                             ; $7682: $c9


jr_001_7683:
  ld a, $01                                       ; $7683: $3e $01
  ld [$cb58], a                                   ; $7685: $ea $58 $cb
  call Call_001_77a4                              ; $7688: $cd $a4 $77
  ld a, $fa                                       ; $768b: $3e $fa
  ld [$cb5c], a                                   ; $768d: $ea $5c $cb
  ret                                             ; $7690: $c9


  ret                                             ; $7691: $c9


jr_001_7692:
  ld a, [$cb43]                                   ; $7692: $fa $43 $cb
  cp $01                                          ; $7695: $fe $01
  jr c, jr_001_76ae                               ; $7697: $38 $15

  cp $02                                          ; $7699: $fe $02
  jr nc, jr_001_76a9                              ; $769b: $30 $0c

  ld a, $03                                       ; $769d: $3e $03
  call Call_000_28e6                              ; $769f: $cd $e6 $28
  rst $00                                         ; $76a2: $c7

  db $a9, $76, $aa, $76, $ae, $76

jr_001_76a9:
  ret                                             ; $76a9: $c9


  ld b, $01                                       ; $76aa: $06 $01
  jr jr_001_76b7                                  ; $76ac: $18 $09

jr_001_76ae:
  ld b, $02                                       ; $76ae: $06 $02
  ld a, [$cbdd]                                   ; $76b0: $fa $dd $cb
  or a                                            ; $76b3: $b7
  jr nz, jr_001_76b7                              ; $76b4: $20 $01

  inc b                                           ; $76b6: $04

jr_001_76b7:
  ld c, $32                                       ; $76b7: $0e $32

jr_001_76b9:
  dec c                                           ; $76b9: $0d
  ret z                                           ; $76ba: $c8

  ld a, $08                                       ; $76bb: $3e $08
  call Call_000_28e6                              ; $76bd: $cd $e6 $28
  inc a                                           ; $76c0: $3c
  ld e, a                                         ; $76c1: $5f
  ld a, $c1                                       ; $76c2: $3e $c1
  call Call_000_0a46                              ; $76c4: $cd $46 $0a
  jr z, jr_001_76b9                               ; $76c7: $28 $f0

  call Call_001_76d0                              ; $76c9: $cd $d0 $76
  dec b                                           ; $76cc: $05
  jr nz, jr_001_76b9                              ; $76cd: $20 $ea

  ret                                             ; $76cf: $c9


Call_001_76d0:
  push bc                                         ; $76d0: $c5
  ld a, e                                         ; $76d1: $7b
  dec a                                           ; $76d2: $3d
  ld hl, $cb44                                    ; $76d3: $21 $44 $cb
  call Call_000_317a                              ; $76d6: $cd $7a $31
  xor a                                           ; $76d9: $af
  ld [hl+], a                                     ; $76da: $22
  ld [hl], a                                      ; $76db: $77
  ld a, [$cb43]                                   ; $76dc: $fa $43 $cb
  inc a                                           ; $76df: $3c
  ld [$cb43], a                                   ; $76e0: $ea $43 $cb
  ld a, e                                         ; $76e3: $7b
  ldh [$ff9a], a                                  ; $76e4: $e0 $9a
  ld hl, $6ca0                                    ; $76e6: $21 $a0 $6c
  call Call_000_316b                              ; $76e9: $cd $6b $31
  push hl                                         ; $76ec: $e5
  ld a, [hl+]                                     ; $76ed: $2a
  ld h, [hl]                                      ; $76ee: $66
  ld l, a                                         ; $76ef: $6f
  ld a, l                                         ; $76f0: $7d
  ldh [$ff9b], a                                  ; $76f1: $e0 $9b
  ld a, h                                         ; $76f3: $7c
  ldh [$ff9c], a                                  ; $76f4: $e0 $9c
  pop hl                                          ; $76f6: $e1
  inc hl                                          ; $76f7: $23
  inc hl                                          ; $76f8: $23
  ld a, [hl+]                                     ; $76f9: $2a
  ld h, [hl]                                      ; $76fa: $66
  ld l, a                                         ; $76fb: $6f
  ld de, $000e                                    ; $76fc: $11 $0e $00
  add hl, de                                      ; $76ff: $19
  ld a, l                                         ; $7700: $7d
  ldh [$ff9d], a                                  ; $7701: $e0 $9d
  ld a, h                                         ; $7703: $7c
  ldh [$ff9e], a                                  ; $7704: $e0 $9e
  ld a, $c1                                       ; $7706: $3e $c1
  call Call_000_04e0                              ; $7708: $cd $e0 $04
  pop bc                                          ; $770b: $c1
  ret                                             ; $770c: $c9


Call_001_770d:
Jump_001_770d:
  ld a, [$cb43]                                   ; $770d: $fa $43 $cb
  cp $07                                          ; $7710: $fe $07
  jr nc, jr_001_7737                              ; $7712: $30 $23

  cp $02                                          ; $7714: $fe $02
  jr c, jr_001_7726                               ; $7716: $38 $0e

  ld a, $04                                       ; $7718: $3e $04
  call Call_000_28e6                              ; $771a: $cd $e6 $28
  rst $00                                         ; $771d: $c7

  db $26, $77, $27, $77, $33, $77, $37, $77

jr_001_7726:
  ret                                             ; $7726: $c9


  ld b, $01                                       ; $7727: $06 $01
  ld a, [$cbdd]                                   ; $7729: $fa $dd $cb
  cp $02                                          ; $772c: $fe $02
  jr nz, jr_001_7740                              ; $772e: $20 $10

  dec b                                           ; $7730: $05
  jr jr_001_7740                                  ; $7731: $18 $0d

  ld b, $02                                       ; $7733: $06 $02
  jr jr_001_7740                                  ; $7735: $18 $09

jr_001_7737:
  ld b, $03                                       ; $7737: $06 $03
  ld a, [$cbdd]                                   ; $7739: $fa $dd $cb
  or a                                            ; $773c: $b7
  jr nz, jr_001_7740                              ; $773d: $20 $01

  dec b                                           ; $773f: $05

jr_001_7740:
  ld c, $00                                       ; $7740: $0e $00
  ld a, $08                                       ; $7742: $3e $08
  call Call_000_28e6                              ; $7744: $cd $e6 $28
  ld hl, $6cd0                                    ; $7747: $21 $d0 $6c
  call Call_000_3153                              ; $774a: $cd $53 $31

jr_001_774d:
  inc c                                           ; $774d: $0c
  ld a, c                                         ; $774e: $79
  cp $09                                          ; $774f: $fe $09
  ret z                                           ; $7751: $c8

  ld a, [hl+]                                     ; $7752: $2a
  ld e, a                                         ; $7753: $5f
  push de                                         ; $7754: $d5
  ld a, $c1                                       ; $7755: $3e $c1
  call Call_000_0a46                              ; $7757: $cd $46 $0a
  pop de                                          ; $775a: $d1
  jr nz, jr_001_774d                              ; $775b: $20 $f0

  ld a, e                                         ; $775d: $7b
  ld hl, $cb44                                    ; $775e: $21 $44 $cb
  call ResolveIndexedPointer16                              ; $7761: $cd $8b $31
  push de                                         ; $7764: $d5
  ld de, $0096                                    ; $7765: $11 $96 $00
  rst $10                                         ; $7768: $d7
  pop de                                          ; $7769: $d1
  jr nc, jr_001_774d                              ; $776a: $30 $e1

  call Call_001_7775                              ; $776c: $cd $75 $77
  dec b                                           ; $776f: $05
  ld a, b                                         ; $7770: $78
  or a                                            ; $7771: $b7
  jr nz, jr_001_774d                              ; $7772: $20 $d9

  ret                                             ; $7774: $c9


Call_001_7775:
  ld a, $c1                                       ; $7775: $3e $c1
  call Call_000_0a46                              ; $7777: $cd $46 $0a
  ret nz                                          ; $777a: $c0

  ld de, $0002                                    ; $777b: $11 $02 $00
  add hl, de                                      ; $777e: $19
  ld [hl], $01                                    ; $777f: $36 $01
  ret                                             ; $7781: $c9


Call_001_7782:
  push de                                         ; $7782: $d5
  ld e, d                                         ; $7783: $5a
  ld a, $c1                                       ; $7784: $3e $c1
  call Call_000_0a46                              ; $7786: $cd $46 $0a
  pop de                                          ; $7789: $d1
  ret nz                                          ; $778a: $c0

  push bc                                         ; $778b: $c5
  ld c, l                                         ; $778c: $4d
  ld b, h                                         ; $778d: $44
  ld hl, $0003                                    ; $778e: $21 $03 $00
  add hl, bc                                      ; $7791: $09
  ld [hl], e                                      ; $7792: $73
  ld hl, $0002                                    ; $7793: $21 $02 $00
  add hl, bc                                      ; $7796: $09
  ld a, [hl]                                      ; $7797: $7e
  or a                                            ; $7798: $b7
  pop bc                                          ; $7799: $c1
  ret nz                                          ; $779a: $c0

  ld [hl], $02                                    ; $779b: $36 $02
  ld hl, $0002                                    ; $779d: $21 $02 $00
  add hl, bc                                      ; $77a0: $09
  ld [hl], $09                                    ; $77a1: $36 $09
  ret                                             ; $77a3: $c9


Call_001_77a4:
Jump_001_77a4:
  ldh a, [rSVBK]                                  ; $77a4: $f0 $70
  push af                                         ; $77a6: $f5
  ld a, $03                                       ; $77a7: $3e $03
  ldh [rSVBK], a                                  ; $77a9: $e0 $70
  ld a, $80                                       ; $77ab: $3e $80
  ld [$cbff], a                                   ; $77ad: $ea $ff $cb
  xor a                                           ; $77b0: $af
  ld [$cc00], a                                   ; $77b1: $ea $00 $cc
  rst $18                                         ; $77b4: $df
  ld b, $00                                       ; $77b5: $06 $00
  ld a, [$cb54]                                   ; $77b7: $fa $54 $cb
  ld c, a                                         ; $77ba: $4f
  ld hl, $d001                                    ; $77bb: $21 $01 $d0
  ld de, $d501                                    ; $77be: $11 $01 $d5
  ld a, $02                                       ; $77c1: $3e $02
  call Call_000_33f3                              ; $77c3: $cd $f3 $33

  db $08, $43, $7d

  ld hl, $d500                                    ; $77c9: $21 $00 $d5
  ld a, [hl]                                      ; $77cc: $7e
  or $06                                          ; $77cd: $f6 $06
  ld [hl+], a                                     ; $77cf: $22
  ld a, [hl]                                      ; $77d0: $7e
  or $06                                          ; $77d1: $f6 $06
  ld [hl], a                                      ; $77d3: $77
  ld b, $00                                       ; $77d4: $06 $00
  ld a, [$cb55]                                   ; $77d6: $fa $55 $cb
  ld c, a                                         ; $77d9: $4f
  ld hl, $d013                                    ; $77da: $21 $13 $d0
  ld de, $d513                                    ; $77dd: $11 $13 $d5
  ld a, $02                                       ; $77e0: $3e $02
  call Call_000_33f3                              ; $77e2: $cd $f3 $33

  db $08, $43, $7d

  ld hl, $d512                                    ; $77e8: $21 $12 $d5
  ld a, [hl]                                      ; $77eb: $7e
  or $07                                          ; $77ec: $f6 $07
  ld [hl+], a                                     ; $77ee: $22
  ld a, [hl]                                      ; $77ef: $7e
  or $07                                          ; $77f0: $f6 $07
  ld [hl], a                                      ; $77f2: $77
  pop af                                          ; $77f3: $f1
  ldh [rSVBK], a                                  ; $77f4: $e0 $70

Jump_001_77f6:
  rst $18                                         ; $77f6: $df
  ld a, [$cb58]                                   ; $77f7: $fa $58 $cb
  or a                                            ; $77fa: $b7
  jr nz, jr_001_7817                              ; $77fb: $20 $1a

  ldh a, [rSVBK]                                  ; $77fd: $f0 $70
  push af                                         ; $77ff: $f5
  ld a, $03                                       ; $7800: $3e $03
  ldh [rSVBK], a                                  ; $7802: $e0 $70
  ld hl, $d009                                    ; $7804: $21 $09 $d0
  ld a, $8a                                       ; $7807: $3e $8a
  ld [hl+], a                                     ; $7809: $22
  ld [hl], a                                      ; $780a: $77
  ld hl, $d509                                    ; $780b: $21 $09 $d5
  ld a, $03                                       ; $780e: $3e $03
  ld [hl+], a                                     ; $7810: $22
  ld [hl], a                                      ; $7811: $77
  pop af                                          ; $7812: $f1
  ldh [rSVBK], a                                  ; $7813: $e0 $70
  rst $20                                         ; $7815: $e7
  ret                                             ; $7816: $c9


jr_001_7817:
  ld b, $00                                       ; $7817: $06 $00
  ld a, [$cb57]                                   ; $7819: $fa $57 $cb
  ld c, a                                         ; $781c: $4f
  ld hl, $d00a                                    ; $781d: $21 $0a $d0
  ld de, $d50a                                    ; $7820: $11 $0a $d5
  ld a, $02                                       ; $7823: $3e $02
  call Call_000_33f3                              ; $7825: $cd $f3 $33

  db $08, $43, $7d

  rst $20                                         ; $782b: $e7
  ret                                             ; $782c: $c9


  ld hl, $0044                                    ; $782d: $21 $44 $00
  add hl, bc                                      ; $7830: $09
  ld [hl], $bc                                    ; $7831: $36 $bc
  inc hl                                          ; $7833: $23
  ld [hl], $02                                    ; $7834: $36 $02
  ld hl, $0003                                    ; $7836: $21 $03 $00
  add hl, bc                                      ; $7839: $09
  ld a, [hl]                                      ; $783a: $7e

jr_001_783b:
  ld de, $000c                                    ; $783b: $11 $0c $00
  ld hl, $0008                                    ; $783e: $21 $08 $00
  or a                                            ; $7841: $b7
  jr z, jr_001_7847                               ; $7842: $28 $03

  ld de, $0094                                    ; $7844: $11 $94 $00

jr_001_7847:
  call Call_000_3427                              ; $7847: $cd $27 $34

  db $03, $af, $70

  ld hl, $0001                                    ; $784d: $21 $01 $00
  add hl, bc                                      ; $7850: $09
  ld a, [hl]                                      ; $7851: $7e
  ld hl, $cb54                                    ; $7852: $21 $54 $cb
  rst $08                                         ; $7855: $cf
  inc a                                           ; $7856: $3c
  ld [hl], a                                      ; $7857: $77
  push bc                                         ; $7858: $c5
  call Call_001_77a4                              ; $7859: $cd $a4 $77
  pop bc                                          ; $785c: $c1
  ret                                             ; $785d: $c9


  ld hl, $26d5                                    ; $785e: $21 $d5 $26
  push de                                         ; $7861: $d5
  dec hl                                          ; $7862: $2b
  push de                                         ; $7863: $d5
  jr nc, jr_001_783b                              ; $7864: $30 $d5

  pop bc                                          ; $7866: $c1
  push de                                         ; $7867: $d5
  add $d5                                         ; $7868: $c6 $d5
  set 2, l                                        ; $786a: $cb $d5
  ret nc                                          ; $786c: $d0

  push de                                         ; $786d: $d5
  ld h, c                                         ; $786e: $61
  sub $66                                         ; $786f: $d6 $66
  sub $6b                                         ; $7871: $d6 $6b
  sub $70                                         ; $7873: $d6 $70
  db $d6                                          ; $7875: $d6

  call Call_000_33f3                              ; $7876: $cd $f3 $33

  db $05, $ac, $70

  ld hl, $0006                                    ; $787c: $21 $06 $00
  add hl, bc                                      ; $787f: $09
  ld [hl], e                                      ; $7880: $73
  inc hl                                          ; $7881: $23
  ld [hl], d                                      ; $7882: $72
  inc hl                                          ; $7883: $23
  inc hl                                          ; $7884: $23
  ld a, [$cb15]                                   ; $7885: $fa $15 $cb
  ld [hl+], a                                     ; $7888: $22
  ld a, [$cb16]                                   ; $7889: $fa $16 $cb
  ld [hl], a                                      ; $788c: $77
  ret                                             ; $788d: $c9


  ld a, d                                         ; $788e: $7a
  call Call_000_33f3                              ; $788f: $cd $f3 $33

  db $04, $2b, $6d

  ld a, $09                                       ; $7895: $3e $09
  ld [$cb2d], a                                   ; $7897: $ea $2d $cb
  ld bc, $15fa                                    ; $789a: $01 $fa $15
  ld e, d                                         ; $789d: $5a
  ld d, $02                                       ; $789e: $16 $02
  ld hl, $154f                                    ; $78a0: $21 $4f $15
  ld a, $41                                       ; $78a3: $3e $41
  call Call_000_394b                              ; $78a5: $cd $4b $39
  xor a                                           ; $78a8: $af
  call Call_000_3427                              ; $78a9: $cd $27 $34

  db $04, $01, $44

  ld a, d                                         ; $78af: $7a
  call Call_000_33f3                              ; $78b0: $cd $f3 $33

  db $04, $5f, $6d

  ld a, e                                         ; $78b6: $7b
  or a                                            ; $78b7: $b7
  ret z                                           ; $78b8: $c8

  ld a, $09                                       ; $78b9: $3e $09
  ld [$cb2d], a                                   ; $78bb: $ea $2d $cb
  ld bc, $15fa                                    ; $78be: $01 $fa $15
  ld e, d                                         ; $78c1: $5a
  ld d, $02                                       ; $78c2: $16 $02
  ld hl, $2113                                    ; $78c4: $21 $13 $21
  ld a, $01                                       ; $78c7: $3e $01
  call Call_000_392b                              ; $78c9: $cd $2b $39
  xor a                                           ; $78cc: $af
  call Call_000_3427                              ; $78cd: $cd $27 $34

  db $04, $01, $44

  ld a, $70                                       ; $78d3: $3e $70
  ld [$c159], a                                   ; $78d5: $ea $59 $c1
  ld a, $03                                       ; $78d8: $3e $03
  ld [$c1a2], a                                   ; $78da: $ea $a2 $c1
  ld hl, $cbe2                                    ; $78dd: $21 $e2 $cb
  ld a, [hl+]                                     ; $78e0: $2a
  ld h, [hl]                                      ; $78e1: $66
  ld l, a                                         ; $78e2: $6f
  call Call_001_66a2                              ; $78e3: $cd $a2 $66
  call Call_001_64bd                              ; $78e6: $cd $bd $64
  ld hl, $17e9                                    ; $78e9: $21 $e9 $17
  jp Jump_001_6628                                ; $78ec: $c3 $28 $66


  push bc                                         ; $78ef: $c5
  ld c, a                                         ; $78f0: $4f
  ldh [$ffbd], a                                  ; $78f1: $e0 $bd
  ldh a, [rSVBK]                                  ; $78f3: $f0 $70
  push af                                         ; $78f5: $f5
  ld a, $06                                       ; $78f6: $3e $06
  ldh [rSVBK], a                                  ; $78f8: $e0 $70
  ldh a, [$ffbd]                                  ; $78fa: $f0 $bd
  ld a, [$dd5e]                                   ; $78fc: $fa $5e $dd
  or a                                            ; $78ff: $b7
  jr z, jr_001_7916                               ; $7900: $28 $14

  cp $64                                          ; $7902: $fe $64
  jr z, jr_001_7916                               ; $7904: $28 $10

  ld a, c                                         ; $7906: $79
  cp $29                                          ; $7907: $fe $29
  jr nz, jr_001_7916                              ; $7909: $20 $0b

  ld a, [$dd5e]                                   ; $790b: $fa $5e $dd
  inc a                                           ; $790e: $3c
  cp $07                                          ; $790f: $fe $07
  jr z, jr_001_7916                               ; $7911: $28 $03

  ld [$dd5e], a                                   ; $7913: $ea $5e $dd

jr_001_7916:
  ldh [$ffbd], a                                  ; $7916: $e0 $bd
  pop af                                          ; $7918: $f1
  ldh [rSVBK], a                                  ; $7919: $e0 $70
  ldh a, [$ffbd]                                  ; $791b: $f0 $bd
  pop bc                                          ; $791d: $c1
  ret                                             ; $791e: $c9


  db $ec, $00, $01

  nop                                             ; $7922: $00

  db $0c, $01, $02

  nop                                             ; $7926: $00

  db $64, $01, $01

  nop                                             ; $792a: $00

  db $84, $01, $00

  nop                                             ; $792e: $00

  db $cc, $01, $01

  nop                                             ; $7932: $00

  db $2c, $02, $02

  nop                                             ; $7936: $00

  db $8c, $02, $01

  nop                                             ; $793a: $00

  db $0c, $03, $00

  nop                                             ; $793e: $00

  db $5c, $03, $01

  nop                                             ; $7942: $00

  db $7c, $03, $02

  nop                                             ; $7946: $00

  db $ac, $03, $01

  nop                                             ; $794a: $00

  db $ec, $03, $00

  nop                                             ; $794e: $00

  db $fc, $03, $01

  nop                                             ; $7952: $00

  db $10, $04, $00

  nop                                             ; $7956: $00

  db $0f, $27, $01

  nop                                             ; $795a: $00

  db $e0, $ff, $00, $00, $20, $00, $00, $00, $40, $ff

  adc b                                           ; $7965: $88
  nop                                             ; $7966: $00
  ld a, b                                         ; $7967: $78
  rst $38                                         ; $7968: $ff

  db $c0, $00, $00, $00

  adc b                                           ; $796d: $88
  nop                                             ; $796e: $00
  adc b                                           ; $796f: $88
  nop                                             ; $7970: $00
  nop                                             ; $7971: $00
  nop                                             ; $7972: $00
  ret nz                                          ; $7973: $c0

  nop                                             ; $7974: $00
  ld a, b                                         ; $7975: $78
  rst $38                                         ; $7976: $ff
  adc b                                           ; $7977: $88
  nop                                             ; $7978: $00

  db $40, $ff, $00, $00, $78, $ff, $78, $ff

  call Call_000_3663                              ; $7981: $cd $63 $36
  ld a, [$cbdd]                                   ; $7984: $fa $dd $cb
  inc a                                           ; $7987: $3c
  ld [$cc03], a                                   ; $7988: $ea $03 $cc
  xor a                                           ; $798b: $af
  ld [$cc04], a                                   ; $798c: $ea $04 $cc
  ld a, $01                                       ; $798f: $3e $01
  call Call_000_33f3                              ; $7991: $cd $f3 $33

  db $07, $e5, $4d

  ldh a, [rSVBK]                                  ; $7997: $f0 $70
  push af                                         ; $7999: $f5
  ld a, $06                                       ; $799a: $3e $06
  ldh [rSVBK], a                                  ; $799c: $e0 $70
  ld a, $0a                                       ; $799e: $3e $0a
  ld [$ddc7], a                                   ; $79a0: $ea $c7 $dd
  xor a                                           ; $79a3: $af
  ld [$ddc4], a                                   ; $79a4: $ea $c4 $dd
  ld [$cb50], a                                   ; $79a7: $ea $50 $cb
  ld [$cb51], a                                   ; $79aa: $ea $51 $cb
  ld [$c0a0], a                                   ; $79ad: $ea $a0 $c0
  ldh [$ffd7], a                                  ; $79b0: $e0 $d7
  ld a, $0f                                       ; $79b2: $3e $0f
  ldh [$ffd6], a                                  ; $79b4: $e0 $d6
  ldh [$ffd8], a                                  ; $79b6: $e0 $d8
  ld [$ddc5], a                                   ; $79b8: $ea $c5 $dd
  pop af                                          ; $79bb: $f1
  ldh [rSVBK], a                                  ; $79bc: $e0 $70
  call Call_000_33f3                              ; $79be: $cd $f3 $33

  db $00, $e9, $14

  ld hl, $7ba2                                    ; $79c4: $21 $a2 $7b
  call Call_000_33f3                              ; $79c7: $cd $f3 $33

  db $03, $88, $7e

  ld a, [$4000]                                   ; $79cd: $fa $00 $40
  ld [$cad7], a                                   ; $79d0: $ea $d7 $ca
  ld hl, $cad8                                    ; $79d3: $21 $d8 $ca
  ld [hl], $7f                                    ; $79d6: $36 $7f
  inc hl                                          ; $79d8: $23
  ld [hl], $7b                                    ; $79d9: $36 $7b
  ld hl, $c2fb                                    ; $79db: $21 $fb $c2
  set 2, [hl]                                     ; $79de: $cb $d6
  ld bc, $c2cf                                    ; $79e0: $01 $cf $c2
  ld de, $8050                                    ; $79e3: $11 $50 $80
  call Call_000_0885                              ; $79e6: $cd $85 $08
  xor a                                           ; $79e9: $af
  ld [$c2f2], a                                   ; $79ea: $ea $f2 $c2
  call Call_000_0864                              ; $79ed: $cd $64 $08
  ld e, $ff                                       ; $79f0: $1e $ff
  ld a, $09                                       ; $79f2: $3e $09
  call Call_000_0a46                              ; $79f4: $cd $46 $0a
  ld e, l                                         ; $79f7: $5d
  ld d, h                                         ; $79f8: $54
  ld hl, $004b                                    ; $79f9: $21 $4b $00
  add hl, de                                      ; $79fc: $19
  ld a, [hl]                                      ; $79fd: $7e
  ld [$cd85], a                                   ; $79fe: $ea $85 $cd
  ld hl, $0011                                    ; $7a01: $21 $11 $00
  add hl, de                                      ; $7a04: $19
  ld [hl], $80                                    ; $7a05: $36 $80
  inc hl                                          ; $7a07: $23
  ld [hl], $ff                                    ; $7a08: $36 $ff
  call Call_001_7a67                              ; $7a0a: $cd $67 $7a
  xor a                                           ; $7a0d: $af
  ld [$cb3f], a                                   ; $7a0e: $ea $3f $cb
  ld [$cb40], a                                   ; $7a11: $ea $40 $cb
  ld [$cb41], a                                   ; $7a14: $ea $41 $cb
  ld [$cb42], a                                   ; $7a17: $ea $42 $cb
  ld [$cb43], a                                   ; $7a1a: $ea $43 $cb
  ld [$cb44], a                                   ; $7a1d: $ea $44 $cb
  call Call_001_7a38                              ; $7a20: $cd $38 $7a
  xor a                                           ; $7a23: $af
  ld [$c2ae], a                                   ; $7a24: $ea $ae $c2
  ld hl, $c2e0                                    ; $7a27: $21 $e0 $c2
  xor a                                           ; $7a2a: $af
  ld [hl+], a                                     ; $7a2b: $22
  ld [hl], $ff                                    ; $7a2c: $36 $ff
  ld hl, $c2f9                                    ; $7a2e: $21 $f9 $c2
  set 1, [hl]                                     ; $7a31: $cb $ce
  ld a, $4c                                       ; $7a33: $3e $4c
  jp Jump_000_394b                                ; $7a35: $c3 $4b $39


Call_001_7a38:
  ld hl, $cb40                                    ; $7a38: $21 $40 $cb
  ld c, [hl]                                      ; $7a3b: $4e
  inc hl                                          ; $7a3c: $23
  ld b, [hl]                                      ; $7a3d: $46
  ld de, $d913                                    ; $7a3e: $11 $13 $d9
  ld hl, $d413                                    ; $7a41: $21 $13 $d4
  ld a, $05                                       ; $7a44: $3e $05
  call Call_000_33f3                              ; $7a46: $cd $f3 $33

  db $08, $43, $7d

  ldh a, [rSVBK]                                  ; $7a4c: $f0 $70
  push af                                         ; $7a4e: $f5
  ld a, $03                                       ; $7a4f: $3e $03
  ldh [rSVBK], a                                  ; $7a51: $e0 $70
  ld hl, $d400                                    ; $7a53: $21 $00 $d4
  ld a, $9b                                       ; $7a56: $3e $9b
  ld [hl+], a                                     ; $7a58: $22
  ld [hl+], a                                     ; $7a59: $22
  ld [hl+], a                                     ; $7a5a: $22
  pop af                                          ; $7a5b: $f1
  ldh [rSVBK], a                                  ; $7a5c: $e0 $70
  ld hl, $1f1b                                    ; $7a5e: $21 $1b $1f
  call Call_000_3427                              ; $7a61: $cd $27 $34

  db $03, $7a, $7e

Call_001_7a67:
  ld a, $90                                       ; $7a67: $3e $90
  ld [$cbff], a                                   ; $7a69: $ea $ff $cb
  xor a                                           ; $7a6c: $af
  ld [$cc00], a                                   ; $7a6d: $ea $00 $cc
  ld hl, $ffb9                                    ; $7a70: $21 $b9 $ff
  ld [hl], $90                                    ; $7a73: $36 $90
  inc hl                                          ; $7a75: $23
  ld [hl], $00                                    ; $7a76: $36 $00
  ld a, $50                                       ; $7a78: $3e $50
  ld hl, $558b                                    ; $7a7a: $21 $8b $55
  call Call_000_33f3                              ; $7a7d: $cd $f3 $33

  db $00, $76, $2a

  ld a, $50                                       ; $7a83: $3e $50
  call Call_000_3427                              ; $7a85: $cd $27 $34

  db $00, $1d, $10

  call Call_000_33f3                              ; $7a8b: $cd $f3 $33

  db $06, $40, $52

  ret nz                                          ; $7a91: $c0

  call Call_000_33f3                              ; $7a92: $cd $f3 $33

  db $06, $22, $52

  ret nz                                          ; $7a98: $c0

  call Call_000_01dc                              ; $7a99: $cd $dc $01
  jr nz, jr_001_7ac3                              ; $7a9c: $20 $25

  ld de, $000a                                    ; $7a9e: $11 $0a $00
  call Call_000_01ca                              ; $7aa1: $cd $ca $01
  ld a, $80                                       ; $7aa4: $3e $80
  ld hl, $c2dc                                    ; $7aa6: $21 $dc $c2
  sub [hl]                                        ; $7aa9: $96
  sra a                                           ; $7aaa: $cb $2f
  sra a                                           ; $7aac: $cb $2f
  ld e, a                                         ; $7aae: $5f
  rla                                             ; $7aaf: $17
  sbc a                                           ; $7ab0: $9f
  ld d, a                                         ; $7ab1: $57
  ld a, [$cbdd]                                   ; $7ab2: $fa $dd $cb
  inc a                                           ; $7ab5: $3c
  ld b, a                                         ; $7ab6: $47

jr_001_7ab7:
  dec b                                           ; $7ab7: $05
  jr z, jr_001_7ac0                               ; $7ab8: $28 $06

  sla e                                           ; $7aba: $cb $23
  rl d                                            ; $7abc: $cb $12
  jr jr_001_7ab7                                  ; $7abe: $18 $f7

jr_001_7ac0:
  call Call_001_7e03                              ; $7ac0: $cd $03 $7e

jr_001_7ac3:
  ld hl, $cb42                                    ; $7ac3: $21 $42 $cb
  ld e, [hl]                                      ; $7ac6: $5e
  inc hl                                          ; $7ac7: $23
  ld d, [hl]                                      ; $7ac8: $56
  ld hl, $cb40                                    ; $7ac9: $21 $40 $cb
  ld a, [hl+]                                     ; $7acc: $2a
  ld h, [hl]                                      ; $7acd: $66
  ld l, a                                         ; $7ace: $6f
  rst $10                                         ; $7acf: $d7
  jr z, jr_001_7add                               ; $7ad0: $28 $0b

  ld a, l                                         ; $7ad2: $7d
  ld [$cb42], a                                   ; $7ad3: $ea $42 $cb
  ld a, h                                         ; $7ad6: $7c
  ld [$cb43], a                                   ; $7ad7: $ea $43 $cb
  call Call_001_7a38                              ; $7ada: $cd $38 $7a

jr_001_7add:
  ld de, $001c                                    ; $7add: $11 $1c $00
  ld hl, $ff91                                    ; $7ae0: $21 $91 $ff
  ld a, [hl+]                                     ; $7ae3: $2a
  ld h, [hl]                                      ; $7ae4: $66
  ld l, a                                         ; $7ae5: $6f
  rst $10                                         ; $7ae6: $d7
  call nc, Call_001_7b1b                          ; $7ae7: $d4 $1b $7b
  ld hl, $ff91                                    ; $7aea: $21 $91 $ff
  ld a, [hl+]                                     ; $7aed: $2a
  ld h, [hl]                                      ; $7aee: $66
  ld l, a                                         ; $7aef: $6f
  ld de, $049c                                    ; $7af0: $11 $9c $04
  rst $10                                         ; $7af3: $d7
  call nc, Call_001_7b0e                          ; $7af4: $d4 $0e $7b
  ld hl, $ff91                                    ; $7af7: $21 $91 $ff
  ld a, [hl+]                                     ; $7afa: $2a
  ld h, [hl]                                      ; $7afb: $66
  ld l, a                                         ; $7afc: $6f
  ld de, $0460                                    ; $7afd: $11 $60 $04
  rst $10                                         ; $7b00: $d7
  ret c                                           ; $7b01: $d8

  ld a, $40                                       ; $7b02: $3e $40
  call Call_000_28e6                              ; $7b04: $cd $e6 $28
  or a                                            ; $7b07: $b7
  ret nz                                          ; $7b08: $c0

  ld a, $2a                                       ; $7b09: $3e $2a
  jp Jump_000_04e0                                ; $7b0b: $c3 $e0 $04


Call_001_7b0e:
  ld e, $ff                                       ; $7b0e: $1e $ff
  ld a, $2b                                       ; $7b10: $3e $2b
  call Call_000_0a46                              ; $7b12: $cd $46 $0a
  ret z                                           ; $7b15: $c8

  ld a, $2b                                       ; $7b16: $3e $2b
  jp Jump_000_04e0                                ; $7b18: $c3 $e0 $04


Call_001_7b1b:
  ld b, $04                                       ; $7b1b: $06 $04

jr_001_7b1d:
  ld a, $04                                       ; $7b1d: $3e $04
  sub b                                           ; $7b1f: $90
  ld e, a                                         ; $7b20: $5f
  ld a, $28                                       ; $7b21: $3e $28
  call Call_000_0a46                              ; $7b23: $cd $46 $0a
  ld de, $0011                                    ; $7b26: $11 $11 $00
  add hl, de                                      ; $7b29: $19
  xor a                                           ; $7b2a: $af
  ld [hl+], a                                     ; $7b2b: $22
  ld [hl+], a                                     ; $7b2c: $22
  dec b                                           ; $7b2d: $05
  jr nz, jr_001_7b1d                              ; $7b2e: $20 $ed

  ld a, $09                                       ; $7b30: $3e $09
  ld e, $ff                                       ; $7b32: $1e $ff
  call Call_000_0a46                              ; $7b34: $cd $46 $0a
  ld de, $0011                                    ; $7b37: $11 $11 $00
  add hl, de                                      ; $7b3a: $19
  xor a                                           ; $7b3b: $af
  ld [hl+], a                                     ; $7b3c: $22
  ld [hl+], a                                     ; $7b3d: $22
  ld hl, $cb40                                    ; $7b3e: $21 $40 $cb
  ld a, [hl+]                                     ; $7b41: $2a
  ld h, [hl]                                      ; $7b42: $66
  ld l, a                                         ; $7b43: $6f
  ld a, l                                         ; $7b44: $7d
  ld [$cbd6], a                                   ; $7b45: $ea $d6 $cb
  ld a, h                                         ; $7b48: $7c
  ld [$cbd7], a                                   ; $7b49: $ea $d7 $cb
  ld a, [$cbde]                                   ; $7b4c: $fa $de $cb
  or a                                            ; $7b4f: $b7
  ld a, $3d                                       ; $7b50: $3e $3d
  jp nz, Jump_000_261e                            ; $7b52: $c2 $1e $26

  xor a                                           ; $7b55: $af
  ld [$c0a0], a                                   ; $7b56: $ea $a0 $c0
  ldh a, [rSVBK]                                  ; $7b59: $f0 $70
  push af                                         ; $7b5b: $f5
  ld a, $06                                       ; $7b5c: $3e $06
  ldh [rSVBK], a                                  ; $7b5e: $e0 $70
  ld a, $00                                       ; $7b60: $3e $00
  ld [$ddc4], a                                   ; $7b62: $ea $c4 $dd
  ldh [$ffd6], a                                  ; $7b65: $e0 $d6
  ld a, $02                                       ; $7b67: $3e $02
  ldh [$ffd7], a                                  ; $7b69: $e0 $d7
  ld a, $01                                       ; $7b6b: $3e $01
  ld [$ddc7], a                                   ; $7b6d: $ea $c7 $dd
  ld a, $22                                       ; $7b70: $3e $22
  ldh [$ffd8], a                                  ; $7b72: $e0 $d8
  ld [$ddc5], a                                   ; $7b74: $ea $c5 $dd
  pop af                                          ; $7b77: $f1
  ldh [rSVBK], a                                  ; $7b78: $e0 $70
  ld a, $52                                       ; $7b7a: $3e $52
  jp Jump_000_261e                                ; $7b7c: $c3 $1e $26


  call Call_000_2674                              ; $7b7f: $cd $74 $26
  ret nz                                          ; $7b82: $c0

  ldh a, [$ffcd]                                  ; $7b83: $f0 $cd
  cp $43                                          ; $7b85: $fe $43
  ret nz                                          ; $7b87: $c0

  call Call_000_33f3                              ; $7b88: $cd $f3 $33

  db $03, $cd, $6c

  call Call_000_33f3                              ; $7b8e: $cd $f3 $33

  db $03, $e5, $71

  ld hl, $cab3                                    ; $7b94: $21 $b3 $ca
  ld a, [hl+]                                     ; $7b97: $2a
  ld h, [hl]                                      ; $7b98: $66
  ld l, a                                         ; $7b99: $6f
  push hl                                         ; $7b9a: $e5
  ldh a, [$ff8f]                                  ; $7b9b: $f0 $8f
  ld e, a                                         ; $7b9d: $5f
  ldh a, [$ff90]                                  ; $7b9e: $f0 $90
  ld d, a                                         ; $7ba0: $57
  add hl, de                                      ; $7ba1: $19
  ld de, $fff8                                    ; $7ba2: $11 $f8 $ff
  add hl, de                                      ; $7ba5: $19
  ld a, l                                         ; $7ba6: $7d
  ld [$cab3], a                                   ; $7ba7: $ea $b3 $ca
  ld a, h                                         ; $7baa: $7c
  ld [$cab4], a                                   ; $7bab: $ea $b4 $ca
  ld hl, $cab5                                    ; $7bae: $21 $b5 $ca
  ld a, [hl+]                                     ; $7bb1: $2a
  ld h, [hl]                                      ; $7bb2: $66
  ld l, a                                         ; $7bb3: $6f
  push hl                                         ; $7bb4: $e5
  ldh a, [$ff91]                                  ; $7bb5: $f0 $91
  ld e, a                                         ; $7bb7: $5f
  ldh a, [$ff92]                                  ; $7bb8: $f0 $92
  ld d, a                                         ; $7bba: $57
  add hl, de                                      ; $7bbb: $19
  ld de, $fff0                                    ; $7bbc: $11 $f0 $ff
  add hl, de                                      ; $7bbf: $19
  ld a, l                                         ; $7bc0: $7d
  ld [$cab5], a                                   ; $7bc1: $ea $b5 $ca
  ld a, h                                         ; $7bc4: $7c
  ld [$cab6], a                                   ; $7bc5: $ea $b6 $ca
  call Call_000_33f3                              ; $7bc8: $cd $f3 $33

  db $00, $5b, $06

  pop hl                                          ; $7bce: $e1
  ld a, l                                         ; $7bcf: $7d
  ld [$cab5], a                                   ; $7bd0: $ea $b5 $ca
  ld a, h                                         ; $7bd3: $7c
  ld [$cab6], a                                   ; $7bd4: $ea $b6 $ca
  pop hl                                          ; $7bd7: $e1
  ld a, l                                         ; $7bd8: $7d
  ld [$cab3], a                                   ; $7bd9: $ea $b3 $ca
  ld a, h                                         ; $7bdc: $7c
  ld [$cab4], a                                   ; $7bdd: $ea $b4 $ca
  call Call_000_33f3                              ; $7be0: $cd $f3 $33

  db $03, $8f, $74

  jr z, jr_001_7bf0                               ; $7be6: $28 $08

  ld hl, $002a                                    ; $7be8: $21 $2a $00
  add hl, bc                                      ; $7beb: $09
  set 0, [hl]                                     ; $7bec: $cb $c6
  jr jr_001_7bf6                                  ; $7bee: $18 $06

jr_001_7bf0:
  ld hl, $002a                                    ; $7bf0: $21 $2a $00
  add hl, bc                                      ; $7bf3: $09
  res 0, [hl]                                     ; $7bf4: $cb $86

jr_001_7bf6:
  call Call_000_33f3                              ; $7bf6: $cd $f3 $33

  db $1e, $1a, $4f

  call Call_001_7c25                              ; $7bfc: $cd $25 $7c
  call Call_001_7c08                              ; $7bff: $cd $08 $7c
  call Call_000_3427                              ; $7c02: $cd $27 $34

  db $00, $e6, $0a

Call_001_7c08:
  ld a, $09                                       ; $7c08: $3e $09
  ld e, $ff                                       ; $7c0a: $1e $ff
  call Call_000_0a46                              ; $7c0c: $cd $46 $0a
  ld de, $0006                                    ; $7c0f: $11 $06 $00
  add hl, de                                      ; $7c12: $19
  push hl                                         ; $7c13: $e5
  ld hl, $c2d5                                    ; $7c14: $21 $d5 $c2
  ld a, [hl+]                                     ; $7c17: $2a
  ld h, [hl]                                      ; $7c18: $66
  ld l, a                                         ; $7c19: $6f
  ld de, $0010                                    ; $7c1a: $11 $10 $00
  add hl, de                                      ; $7c1d: $19
  ld e, l                                         ; $7c1e: $5d
  ld d, h                                         ; $7c1f: $54
  pop hl                                          ; $7c20: $e1
  ld [hl], e                                      ; $7c21: $73
  inc hl                                          ; $7c22: $23
  ld [hl], d                                      ; $7c23: $72
  ret                                             ; $7c24: $c9


Call_001_7c25:
  ldh a, [$ffa6]                                  ; $7c25: $f0 $a6
  bit 0, a                                        ; $7c27: $cb $47
  jr z, jr_001_7c2b                               ; $7c29: $28 $00

jr_001_7c2b:
  ldh a, [$ffa6]                                  ; $7c2b: $f0 $a6
  ld hl, $ffa5                                    ; $7c2d: $21 $a5 $ff
  or [hl]                                         ; $7c30: $b6
  and $f0                                         ; $7c31: $e6 $f0
  jr nz, jr_001_7c3d                              ; $7c33: $20 $08

  ld bc, $c2de                                    ; $7c35: $01 $de $c2
  call Call_001_7ce2                              ; $7c38: $cd $e2 $7c
  jr jr_001_7c4c                                  ; $7c3b: $18 $0f

jr_001_7c3d:
  call Call_000_33f3                              ; $7c3d: $cd $f3 $33

  db $03, $c0, $6f

  call Call_001_7cd1                              ; $7c43: $cd $d1 $7c
  call Call_001_7d90                              ; $7c46: $cd $90 $7d
  call Call_001_7d53                              ; $7c49: $cd $53 $7d

jr_001_7c4c:
  call Call_001_7d04                              ; $7c4c: $cd $04 $7d
  ld bc, $c2cf                                    ; $7c4f: $01 $cf $c2
  jr jr_001_7c54                                  ; $7c52: $18 $00

jr_001_7c54:
  ld hl, $c2d5                                    ; $7c54: $21 $d5 $c2
  ld a, [hl+]                                     ; $7c57: $2a
  ld h, [hl]                                      ; $7c58: $66
  ld l, a                                         ; $7c59: $6f
  ld de, $0010                                    ; $7c5a: $11 $10 $00
  rst $10                                         ; $7c5d: $d7
  jr c, jr_001_7c78                               ; $7c5e: $38 $18

  ld hl, $c2d5                                    ; $7c60: $21 $d5 $c2
  ld [hl], $10                                    ; $7c63: $36 $10
  inc hl                                          ; $7c65: $23
  ld [hl], $00                                    ; $7c66: $36 $00
  ld a, [$c2df]                                   ; $7c68: $fa $df $c2
  rla                                             ; $7c6b: $17
  jr nc, jr_001_7c94                              ; $7c6c: $30 $26

  ld hl, $c2de                                    ; $7c6e: $21 $de $c2
  ld [hl], $00                                    ; $7c71: $36 $00
  inc hl                                          ; $7c73: $23
  ld [hl], $00                                    ; $7c74: $36 $00
  jr jr_001_7c94                                  ; $7c76: $18 $1c

jr_001_7c78:
  ld de, $00a0                                    ; $7c78: $11 $a0 $00
  rst $10                                         ; $7c7b: $d7
  jr nc, jr_001_7c94                              ; $7c7c: $30 $16

  ld hl, $c2d5                                    ; $7c7e: $21 $d5 $c2
  ld [hl], $a0                                    ; $7c81: $36 $a0
  inc hl                                          ; $7c83: $23
  ld [hl], $00                                    ; $7c84: $36 $00
  ld a, [$c2df]                                   ; $7c86: $fa $df $c2
  rla                                             ; $7c89: $17
  jr c, jr_001_7c94                               ; $7c8a: $38 $08

  ld hl, $c2de                                    ; $7c8c: $21 $de $c2
  ld [hl], $00                                    ; $7c8f: $36 $00
  inc hl                                          ; $7c91: $23
  ld [hl], $00                                    ; $7c92: $36 $00

jr_001_7c94:
  ld hl, $c2d8                                    ; $7c94: $21 $d8 $c2
  ld a, [hl+]                                     ; $7c97: $2a
  ld h, [hl]                                      ; $7c98: $66
  ld l, a                                         ; $7c99: $6f
  ld de, $0060                                    ; $7c9a: $11 $60 $00
  rst $10                                         ; $7c9d: $d7
  jr c, jr_001_7cb6                               ; $7c9e: $38 $16

  ld hl, $c2d8                                    ; $7ca0: $21 $d8 $c2
  ld [hl], $60                                    ; $7ca3: $36 $60
  inc hl                                          ; $7ca5: $23
  ld [hl], $00                                    ; $7ca6: $36 $00
  ld a, [$c2df]                                   ; $7ca8: $fa $df $c2
  rla                                             ; $7cab: $17
  ret nc                                          ; $7cac: $d0

  ld hl, $c2e0                                    ; $7cad: $21 $e0 $c2
  ld [hl], $00                                    ; $7cb0: $36 $00
  inc hl                                          ; $7cb2: $23
  ld [hl], $00                                    ; $7cb3: $36 $00
  ret                                             ; $7cb5: $c9


jr_001_7cb6:
  ld de, $0088                                    ; $7cb6: $11 $88 $00
  rst $10                                         ; $7cb9: $d7
  ret nc                                          ; $7cba: $d0

  ld hl, $c2d8                                    ; $7cbb: $21 $d8 $c2
  ld [hl], $88                                    ; $7cbe: $36 $88
  inc hl                                          ; $7cc0: $23
  ld [hl], $00                                    ; $7cc1: $36 $00
  ld a, [$c2df]                                   ; $7cc3: $fa $df $c2
  rla                                             ; $7cc6: $17
  ret c                                           ; $7cc7: $d8

  ld hl, $c2e0                                    ; $7cc8: $21 $e0 $c2
  ld [hl], $00                                    ; $7ccb: $36 $00
  inc hl                                          ; $7ccd: $23
  ld [hl], $00                                    ; $7cce: $36 $00
  ret                                             ; $7cd0: $c9


Call_001_7cd1:
  push af                                         ; $7cd1: $f5
  rra                                             ; $7cd2: $1f
  jr c, jr_001_7ce0                               ; $7cd3: $38 $0b

  rra                                             ; $7cd5: $1f
  jr c, jr_001_7ce0                               ; $7cd6: $38 $08

  ld bc, $c2de                                    ; $7cd8: $01 $de $c2
  call Call_001_7ce2                              ; $7cdb: $cd $e2 $7c
  jr jr_001_7ce0                                  ; $7cde: $18 $00

jr_001_7ce0:
  pop af                                          ; $7ce0: $f1
  ret                                             ; $7ce1: $c9


Call_001_7ce2:
  ld a, [bc]                                      ; $7ce2: $0a
  ld l, a                                         ; $7ce3: $6f
  inc bc                                          ; $7ce4: $03
  ld a, [bc]                                      ; $7ce5: $0a
  ld h, a                                         ; $7ce6: $67
  dec bc                                          ; $7ce7: $0b
  or l                                            ; $7ce8: $b5
  ret z                                           ; $7ce9: $c8

  bit 7, h                                        ; $7cea: $cb $7c
  push af                                         ; $7cec: $f5
  call nz, Call_000_007b                          ; $7ced: $c4 $7b $00
  ld de, $ff40                                    ; $7cf0: $11 $40 $ff
  add hl, de                                      ; $7cf3: $19
  jr c, jr_001_7cf9                               ; $7cf4: $38 $03

  ld hl, $0000                                    ; $7cf6: $21 $00 $00

jr_001_7cf9:
  pop af                                          ; $7cf9: $f1
  call nz, Call_000_007b                          ; $7cfa: $c4 $7b $00
  ld a, l                                         ; $7cfd: $7d
  ld [bc], a                                      ; $7cfe: $02
  inc bc                                          ; $7cff: $03
  ld a, h                                         ; $7d00: $7c
  ld [bc], a                                      ; $7d01: $02
  dec bc                                          ; $7d02: $0b
  ret                                             ; $7d03: $c9


Call_001_7d04:
  ld hl, $c2de                                    ; $7d04: $21 $de $c2
  ld a, [hl+]                                     ; $7d07: $2a
  ld h, [hl]                                      ; $7d08: $66
  ld l, a                                         ; $7d09: $6f
  bit 7, h                                        ; $7d0a: $cb $7c
  push af                                         ; $7d0c: $f5
  call nz, Call_000_007b                          ; $7d0d: $c4 $7b $00
  ld c, $00                                       ; $7d10: $0e $00
  ld de, $0180                                    ; $7d12: $11 $80 $01
  rst $10                                         ; $7d15: $d7
  jr nc, jr_001_7d20                              ; $7d16: $30 $08

  inc c                                           ; $7d18: $0c
  ld de, $0300                                    ; $7d19: $11 $00 $03
  rst $10                                         ; $7d1c: $d7
  jr nc, jr_001_7d20                              ; $7d1d: $30 $01

  inc c                                           ; $7d1f: $0c

jr_001_7d20:
  ld a, [$cb44]                                   ; $7d20: $fa $44 $cb
  or a                                            ; $7d23: $b7
  jr z, jr_001_7d3b                               ; $7d24: $28 $15

  cp $28                                          ; $7d26: $fe $28
  jr nc, jr_001_7d37                              ; $7d28: $30 $0d

  ld b, $03                                       ; $7d2a: $06 $03
  cp $14                                          ; $7d2c: $fe $14
  jr nc, jr_001_7d31                              ; $7d2e: $30 $01

  dec b                                           ; $7d30: $05

jr_001_7d31:
  rra                                             ; $7d31: $1f
  dec b                                           ; $7d32: $05
  jr nz, jr_001_7d31                              ; $7d33: $20 $fc

  jr c, jr_001_7d3b                               ; $7d35: $38 $04

jr_001_7d37:
  ld a, $03                                       ; $7d37: $3e $03
  add c                                           ; $7d39: $81
  ld c, a                                         ; $7d3a: $4f

jr_001_7d3b:
  ld a, [$c2f6]                                   ; $7d3b: $fa $f6 $c2
  cp c                                            ; $7d3e: $b9
  jr nz, jr_001_7d43                              ; $7d3f: $20 $02

  pop af                                          ; $7d41: $f1
  ret                                             ; $7d42: $c9


jr_001_7d43:
  ld a, c                                         ; $7d43: $79
  ld bc, $c2cf                                    ; $7d44: $01 $cf $c2
  call Call_000_0864                              ; $7d47: $cd $64 $08
  pop af                                          ; $7d4a: $f1
  ld a, $20                                       ; $7d4b: $3e $20
  jr z, jr_001_7d50                               ; $7d4d: $28 $01

  xor a                                           ; $7d4f: $af

jr_001_7d50:
  jp Jump_000_0806                                ; $7d50: $c3 $06 $08


Call_001_7d53:
  ld hl, $c2de                                    ; $7d53: $21 $de $c2
  ld a, [hl+]                                     ; $7d56: $2a
  ld h, [hl]                                      ; $7d57: $66
  ld l, a                                         ; $7d58: $6f
  bit 7, h                                        ; $7d59: $cb $7c
  push af                                         ; $7d5b: $f5
  call nz, Call_000_007b                          ; $7d5c: $c4 $7b $00
  ld de, $03c0                                    ; $7d5f: $11 $c0 $03
  call Call_000_32b6                              ; $7d62: $cd $b6 $32
  pop af                                          ; $7d65: $f1
  call nz, Call_000_007b                          ; $7d66: $c4 $7b $00
  ld a, l                                         ; $7d69: $7d
  ld [$c2de], a                                   ; $7d6a: $ea $de $c2
  ld a, h                                         ; $7d6d: $7c
  ld [$c2df], a                                   ; $7d6e: $ea $df $c2
  ld hl, $c2e0                                    ; $7d71: $21 $e0 $c2
  ld a, [hl+]                                     ; $7d74: $2a
  ld h, [hl]                                      ; $7d75: $66
  ld l, a                                         ; $7d76: $6f
  bit 7, h                                        ; $7d77: $cb $7c
  push af                                         ; $7d79: $f5
  call nz, Call_000_007b                          ; $7d7a: $c4 $7b $00
  ld de, $03c0                                    ; $7d7d: $11 $c0 $03
  call Call_000_32b6                              ; $7d80: $cd $b6 $32
  pop af                                          ; $7d83: $f1
  call nz, Call_000_007b                          ; $7d84: $c4 $7b $00
  ld a, l                                         ; $7d87: $7d
  ld [$c2e0], a                                   ; $7d88: $ea $e0 $c2
  ld a, h                                         ; $7d8b: $7c
  ld [$c2e1], a                                   ; $7d8c: $ea $e1 $c2
  ret                                             ; $7d8f: $c9


Call_001_7d90:
  ld hl, $7961                                    ; $7d90: $21 $61 $79
  call Call_000_316b                              ; $7d93: $cd $6b $31
  ld a, [hl+]                                     ; $7d96: $2a
  ld d, [hl]                                      ; $7d97: $56
  ld e, a                                         ; $7d98: $5f
  inc hl                                          ; $7d99: $23
  ld a, [hl+]                                     ; $7d9a: $2a
  ld h, [hl]                                      ; $7d9b: $66
  ld l, a                                         ; $7d9c: $6f
  push hl                                         ; $7d9d: $e5
  ld hl, $c2de                                    ; $7d9e: $21 $de $c2
  ld a, [hl+]                                     ; $7da1: $2a
  ld h, [hl]                                      ; $7da2: $66
  ld l, a                                         ; $7da3: $6f
  add hl, de                                      ; $7da4: $19
  ld a, l                                         ; $7da5: $7d
  ld [$c2de], a                                   ; $7da6: $ea $de $c2
  ld a, h                                         ; $7da9: $7c
  ld [$c2df], a                                   ; $7daa: $ea $df $c2
  pop de                                          ; $7dad: $d1
  ret                                             ; $7dae: $c9


  ld hl, $0009                                    ; $7daf: $21 $09 $00
  add hl, bc                                      ; $7db2: $09
  ld a, [hl+]                                     ; $7db3: $2a
  ld d, [hl]                                      ; $7db4: $56
  ld e, a                                         ; $7db5: $5f
  bit 7, d                                        ; $7db6: $cb $7a
  ret nz                                          ; $7db8: $c0

  ld hl, $0003                                    ; $7db9: $21 $03 $00
  add hl, bc                                      ; $7dbc: $09
  ld a, [hl+]                                     ; $7dbd: $2a
  ld h, [hl]                                      ; $7dbe: $66
  ld l, a                                         ; $7dbf: $6f
  rst $10                                         ; $7dc0: $d7
  ret z                                           ; $7dc1: $c8

  ld hl, $0003                                    ; $7dc2: $21 $03 $00
  add hl, bc                                      ; $7dc5: $09
  ld [hl], e                                      ; $7dc6: $73
  inc hl                                          ; $7dc7: $23
  ld [hl], d                                      ; $7dc8: $72
  ld hl, $791f                                    ; $7dc9: $21 $1f $79

jr_001_7dcc:
  push hl                                         ; $7dcc: $e5
  ld a, [hl+]                                     ; $7dcd: $2a
  ld h, [hl]                                      ; $7dce: $66
  ld l, a                                         ; $7dcf: $6f
  rst $10                                         ; $7dd0: $d7
  jr nc, jr_001_7dfc                              ; $7dd1: $30 $29

  pop hl                                          ; $7dd3: $e1
  inc hl                                          ; $7dd4: $23
  inc hl                                          ; $7dd5: $23
  ld e, [hl]                                      ; $7dd6: $5e
  ld hl, $0027                                    ; $7dd7: $21 $27 $00
  add hl, bc                                      ; $7dda: $09
  ld a, [hl]                                      ; $7ddb: $7e
  cp e                                            ; $7ddc: $bb
  ret z                                           ; $7ddd: $c8

  inc bc                                          ; $7dde: $03
  ld a, [bc]                                      ; $7ddf: $0a
  dec bc                                          ; $7de0: $0b
  or a                                            ; $7de1: $b7
  jr z, jr_001_7de6                               ; $7de2: $28 $02

  ld a, $01                                       ; $7de4: $3e $01

jr_001_7de6:
  ld d, a                                         ; $7de6: $57
  add a                                           ; $7de7: $87
  add d                                           ; $7de8: $82
  add e                                           ; $7de9: $83
  call Call_000_0864                              ; $7dea: $cd $64 $08
  ld a, e                                         ; $7ded: $7b
  ld hl, $795b                                    ; $7dee: $21 $5b $79
  call Call_000_3182                              ; $7df1: $cd $82 $31
  ld hl, $000f                                    ; $7df4: $21 $0f $00
  add hl, bc                                      ; $7df7: $09
  ld [hl], e                                      ; $7df8: $73
  inc hl                                          ; $7df9: $23
  ld [hl], d                                      ; $7dfa: $72
  ret                                             ; $7dfb: $c9


jr_001_7dfc:
  pop hl                                          ; $7dfc: $e1
  inc hl                                          ; $7dfd: $23
  inc hl                                          ; $7dfe: $23
  inc hl                                          ; $7dff: $23
  inc hl                                          ; $7e00: $23
  jr jr_001_7dcc                                  ; $7e01: $18 $c9

Call_001_7e03:
  ld hl, $cb40                                    ; $7e03: $21 $40 $cb
  ld a, [hl+]                                     ; $7e06: $2a
  ld h, [hl]                                      ; $7e07: $66
  ld l, a                                         ; $7e08: $6f
  add hl, de                                      ; $7e09: $19
  ld a, h                                         ; $7e0a: $7c
  rla                                             ; $7e0b: $17
  jr nc, jr_001_7e11                              ; $7e0c: $30 $03

  ld hl, $0000                                    ; $7e0e: $21 $00 $00

jr_001_7e11:
  ld a, l                                         ; $7e11: $7d
  ld [$cb40], a                                   ; $7e12: $ea $40 $cb
  ld a, h                                         ; $7e15: $7c
  ld [$cb41], a                                   ; $7e16: $ea $41 $cb
  ret                                             ; $7e19: $c9


  ld de, $0064                                    ; $7e1a: $11 $64 $00
  call Call_001_7e03                              ; $7e1d: $cd $03 $7e
  ld a, $7d                                       ; $7e20: $3e $7d
  call Call_000_392b                              ; $7e22: $cd $2b $39
  jp Jump_000_0dbb                                ; $7e25: $c3 $bb $0d


  push bc                                         ; $7e28: $c5
  ld hl, $c2e0                                    ; $7e29: $21 $e0 $c2
  ld a, $80                                       ; $7e2c: $3e $80
  ld [hl+], a                                     ; $7e2e: $22
  ld [hl], $ff                                    ; $7e2f: $36 $ff
  ld a, $02                                       ; $7e31: $3e $02

jr_001_7e33:
  push af                                         ; $7e33: $f5
  ld e, a                                         ; $7e34: $5f
  ld a, $2c                                       ; $7e35: $3e $2c
  call Call_000_0a46                              ; $7e37: $cd $46 $0a
  ld c, l                                         ; $7e3a: $4d
  ld b, h                                         ; $7e3b: $44
  inc bc                                          ; $7e3c: $03
  ld a, $fe                                       ; $7e3d: $3e $fe
  ld [bc], a                                      ; $7e3f: $02
  dec bc                                          ; $7e40: $0b
  ld de, $6153                                    ; $7e41: $11 $53 $61
  call Call_000_09ff                              ; $7e44: $cd $ff $09
  pop af                                          ; $7e47: $f1
  dec a                                           ; $7e48: $3d
  cp $ff                                          ; $7e49: $fe $ff
  jr nz, jr_001_7e33                              ; $7e4b: $20 $e6

  ld a, $5c                                       ; $7e4d: $3e $5c
  call Call_000_392b                              ; $7e4f: $cd $2b $39
  pop bc                                          ; $7e52: $c1
  jp Jump_000_0dbb                                ; $7e53: $c3 $bb $0d


  ld a, $c0                                       ; $7e56: $3e $c0
  call Call_000_28e6                              ; $7e58: $cd $e6 $28
  ld hl, $0006                                    ; $7e5b: $21 $06 $00
  add hl, bc                                      ; $7e5e: $09
  ld [hl+], a                                     ; $7e5f: $22
  ld [hl], $00                                    ; $7e60: $36 $00
  ld hl, $ff91                                    ; $7e62: $21 $91 $ff
  ld e, [hl]                                      ; $7e65: $5e
  inc hl                                          ; $7e66: $23
  ld d, [hl]                                      ; $7e67: $56
  ld hl, $fffc                                    ; $7e68: $21 $fc $ff
  add hl, de                                      ; $7e6b: $19
  ld e, l                                         ; $7e6c: $5d
  ld d, h                                         ; $7e6d: $54
  ld hl, $0009                                    ; $7e6e: $21 $09 $00
  add hl, bc                                      ; $7e71: $09
  ld [hl], e                                      ; $7e72: $73
  inc hl                                          ; $7e73: $23
  ld [hl], d                                      ; $7e74: $72
  ret                                             ; $7e75: $c9


  ldh a, [$ffcd]                                  ; $7e76: $f0 $cd
  cp $43                                          ; $7e78: $fe $43
  ret nz                                          ; $7e7a: $c0

  ld hl, $0002                                    ; $7e7b: $21 $02 $00
  add hl, bc                                      ; $7e7e: $09
  ld a, [hl]                                      ; $7e7f: $7e
  sub $80                                         ; $7e80: $d6 $80
  ld l, a                                         ; $7e82: $6f
  ld a, $00                                       ; $7e83: $3e $00
  sbc a                                           ; $7e85: $9f
  ld h, a                                         ; $7e86: $67
  add hl, hl                                      ; $7e87: $29
  add hl, hl                                      ; $7e88: $29
  add hl, hl                                      ; $7e89: $29
  ld e, l                                         ; $7e8a: $5d
  ld d, h                                         ; $7e8b: $54
  ld hl, $000f                                    ; $7e8c: $21 $0f $00
  add hl, bc                                      ; $7e8f: $09
  ld [hl], e                                      ; $7e90: $73
  inc hl                                          ; $7e91: $23
  ld [hl], d                                      ; $7e92: $72
  inc hl                                          ; $7e93: $23
  ld [hl], $00                                    ; $7e94: $36 $00
  inc hl                                          ; $7e96: $23
  ld [hl], $04                                    ; $7e97: $36 $04
  ret                                             ; $7e99: $c9


  ld hl, $0033                                    ; $7e9a: $21 $33 $00
  add hl, bc                                      ; $7e9d: $09
  ld a, [hl]                                      ; $7e9e: $7e
  call Call_000_33f3                              ; $7e9f: $cd $f3 $33

  db $08, $5c, $40

  bit 7, a                                        ; $7ea5: $cb $7f
  push af                                         ; $7ea7: $f5
  jr z, jr_001_7eac                               ; $7ea8: $28 $02

  cpl                                             ; $7eaa: $2f
  inc a                                           ; $7eab: $3c

jr_001_7eac:
  ld l, a                                         ; $7eac: $6f
  ld h, $b6                                       ; $7ead: $26 $b6
  push hl                                         ; $7eaf: $e5
  call Call_000_009c                              ; $7eb0: $cd $9c $00
  ld e, h                                         ; $7eb3: $5c
  pop hl                                          ; $7eb4: $e1
  ld h, $04                                       ; $7eb5: $26 $04
  call Call_000_009c                              ; $7eb7: $cd $9c $00
  ld d, $00                                       ; $7eba: $16 $00
  add hl, de                                      ; $7ebc: $19
  pop af                                          ; $7ebd: $f1
  jr z, jr_001_7ec3                               ; $7ebe: $28 $03

  call Call_000_007b                              ; $7ec0: $cd $7b $00

jr_001_7ec3:
  push hl                                         ; $7ec3: $e5
  ld hl, $000f                                    ; $7ec4: $21 $0f $00
  add hl, bc                                      ; $7ec7: $09
  pop de                                          ; $7ec8: $d1
  ld [hl], e                                      ; $7ec9: $73
  inc hl                                          ; $7eca: $23
  ld [hl], d                                      ; $7ecb: $72
  ld hl, $0037                                    ; $7ecc: $21 $37 $00
  add hl, bc                                      ; $7ecf: $09
  ld a, [hl]                                      ; $7ed0: $7e
  call Call_000_33f3                              ; $7ed1: $cd $f3 $33

  db $08, $5c, $40

  ld l, a                                         ; $7ed7: $6f
  ld h, $b6                                       ; $7ed8: $26 $b6
  push hl                                         ; $7eda: $e5
  call Call_000_009c                              ; $7edb: $cd $9c $00
  ld e, h                                         ; $7ede: $5c
  pop hl                                          ; $7edf: $e1
  ld h, $04                                       ; $7ee0: $26 $04
  call Call_000_009c                              ; $7ee2: $cd $9c $00
  ld d, $00                                       ; $7ee5: $16 $00
  add hl, de                                      ; $7ee7: $19
  push hl                                         ; $7ee8: $e5
  ld hl, $0011                                    ; $7ee9: $21 $11 $00
  add hl, bc                                      ; $7eec: $09
  pop de                                          ; $7eed: $d1
  ld [hl], e                                      ; $7eee: $73
  inc hl                                          ; $7eef: $23
  ld [hl], d                                      ; $7ef0: $72
  ret                                             ; $7ef1: $c9


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
