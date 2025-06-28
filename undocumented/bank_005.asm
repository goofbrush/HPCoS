; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

  db $05, $01, $54, $80, $00, $00, $00, $99, $26, $01, $02, $00, $01, $04, $04, $03
  db $03, $03, $02, $02

  ld hl, $4001                                    ; $4014: $21 $01 $40
  jp Jump_000_2952                                ; $4017: $c3 $52 $29


  ld a, $51                                       ; $401a: $3e $51
  jp Jump_000_261e                                ; $401c: $c3 $1e $26


  call Call_000_33f3                              ; $401f: $cd $f3 $33

  db $06, $2b, $51

  call Call_005_40e9                              ; $4025: $cd $e9 $40
  call Call_000_01dc                              ; $4028: $cd $dc $01
  ret nz                                          ; $402b: $c0

  xor a                                           ; $402c: $af
  ld hl, $cc05                                    ; $402d: $21 $05 $cc
  ld [hl+], a                                     ; $4030: $22
  ld [hl+], a                                     ; $4031: $22
  ld [hl+], a                                     ; $4032: $22
  ld [hl+], a                                     ; $4033: $22
  ld [hl], $05                                    ; $4034: $36 $05
  ld hl, $cc07                                    ; $4036: $21 $07 $cc
  ld [hl], $a5                                    ; $4039: $36 $a5
  inc hl                                          ; $403b: $23
  ld [hl], $40                                    ; $403c: $36 $40
  ld bc, $0008                                    ; $403e: $01 $08 $00
  ld hl, $cb40                                    ; $4041: $21 $40 $cb
  call Call_000_1248                              ; $4044: $cd $48 $12
  ld hl, $cbf6                                    ; $4047: $21 $f6 $cb
  ld bc, $0006                                    ; $404a: $01 $06 $00
  call Call_000_1248                              ; $404d: $cd $48 $12
  ld a, $18                                       ; $4050: $3e $18
  ld [$cbf6], a                                   ; $4052: $ea $f6 $cb
  ld [$cbf8], a                                   ; $4055: $ea $f8 $cb
  ld a, $02                                       ; $4058: $3e $02
  ld [$cbf7], a                                   ; $405a: $ea $f7 $cb
  ld a, $94                                       ; $405d: $3e $94
  ld [$cbf9], a                                   ; $405f: $ea $f9 $cb
  ld hl, $7c8a                                    ; $4062: $21 $8a $7c
  call Call_000_33f3                              ; $4065: $cd $f3 $33

  db $03, $88, $7e

  ld de, $ffff                                    ; $406b: $11 $ff $ff
  jp Jump_000_01ca                                ; $406e: $c3 $ca $01


  call Call_000_3663                              ; $4071: $cd $63 $36
  ld hl, $cbf6                                    ; $4074: $21 $f6 $cb
  ld bc, $0006                                    ; $4077: $01 $06 $00
  call Call_000_1248                              ; $407a: $cd $48 $12
  ld hl, $53d7                                    ; $407d: $21 $d7 $53
  call Call_000_33f3                              ; $4080: $cd $f3 $33

  db $01, $33, $55

  ld hl, $7b8d                                    ; $4086: $21 $8d $7b
  call Call_000_33f3                              ; $4089: $cd $f3 $33

  db $03, $88, $7e

  ld a, $25                                       ; $408f: $3e $25
  call Call_000_394b                              ; $4091: $cd $4b $39
  xor a                                           ; $4094: $af
  ldh [$ff9a], a                                  ; $4095: $e0 $9a
  ld a, $a8                                       ; $4097: $3e $a8
  call Call_000_04e0                              ; $4099: $cd $e0 $04
  ld de, $0028                                    ; $409c: $11 $28 $00
  call Call_000_01ca                              ; $409f: $cd $ca $01
  jp Jump_000_3374                                ; $40a2: $c3 $74 $33


  ld a, [$cc06]                                   ; $40a5: $fa $06 $cc
  ld c, a                                         ; $40a8: $4f
  ld hl, $cb40                                    ; $40a9: $21 $40 $cb
  cp $07                                          ; $40ac: $fe $07
  jr nc, jr_005_40c6                              ; $40ae: $30 $16

  add l                                           ; $40b0: $85
  ld l, a                                         ; $40b1: $6f
  jr nc, jr_005_40b5                              ; $40b2: $30 $01

  inc h                                           ; $40b4: $24

jr_005_40b5:
  ld e, l                                         ; $40b5: $5d
  ld d, h                                         ; $40b6: $54
  ld hl, $400d                                    ; $40b7: $21 $0d $40
  ld a, c                                         ; $40ba: $79
  add l                                           ; $40bb: $85
  ld l, a                                         ; $40bc: $6f
  jr nc, jr_005_40c0                              ; $40bd: $30 $01

  inc h                                           ; $40bf: $24

jr_005_40c0:
  ld b, [hl]                                      ; $40c0: $46
  ld a, [de]                                      ; $40c1: $1a
  add b                                           ; $40c2: $80
  ld [de], a                                      ; $40c3: $12
  jr jr_005_40ce                                  ; $40c4: $18 $08

jr_005_40c6:
  sub $07                                         ; $40c6: $d6 $07
  add l                                           ; $40c8: $85
  ld l, a                                         ; $40c9: $6f
  jr nc, jr_005_40cd                              ; $40ca: $30 $01

  inc h                                           ; $40cc: $24

jr_005_40cd:
  ld a, [hl]                                      ; $40cd: $7e

jr_005_40ce:
  ld b, a                                         ; $40ce: $47

jr_005_40cf:
  ldh a, [rSTAT]                                  ; $40cf: $f0 $41
  and $03                                         ; $40d1: $e6 $03
  jr z, jr_005_40cf                               ; $40d3: $28 $fa

jr_005_40d5:
  ldh a, [rSTAT]                                  ; $40d5: $f0 $41
  and $03                                         ; $40d7: $e6 $03
  jr nz, jr_005_40d5                              ; $40d9: $20 $fa

  ld a, b                                         ; $40db: $78
  ldh [rSCX], a                                   ; $40dc: $e0 $43
  inc c                                           ; $40de: $0c
  ld a, c                                         ; $40df: $79
  sub $0e                                         ; $40e0: $d6 $0e
  jr z, jr_005_40e5                               ; $40e2: $28 $01

  ld a, c                                         ; $40e4: $79

jr_005_40e5:
  ld [$cc06], a                                   ; $40e5: $ea $06 $cc
  ret                                             ; $40e8: $c9


Call_005_40e9:
  ld a, [$cbf6]                                   ; $40e9: $fa $f6 $cb
  ld hl, $cbf8                                    ; $40ec: $21 $f8 $cb
  cp [hl]                                         ; $40ef: $be
  ret z                                           ; $40f0: $c8

  ld [hl], a                                      ; $40f1: $77
  ldh [$fff5], a                                  ; $40f2: $e0 $f5
  and $1f                                         ; $40f4: $e6 $1f
  ld hl, $d100                                    ; $40f6: $21 $00 $d1
  rst $08                                         ; $40f9: $cf
  ld e, l                                         ; $40fa: $5d
  ld d, h                                         ; $40fb: $54
  ld a, $08                                       ; $40fc: $3e $08
  ldh [$fff7], a                                  ; $40fe: $e0 $f7
  ld a, $0a                                       ; $4100: $3e $0a
  ldh [$fff8], a                                  ; $4102: $e0 $f8
  ld a, $08                                       ; $4104: $3e $08
  ldh [$fff6], a                                  ; $4106: $e0 $f6
  ld a, $55                                       ; $4108: $3e $55
  ld bc, $0000                                    ; $410a: $01 $00 $00
  ld hl, $56d8                                    ; $410d: $21 $d8 $56
  call Call_000_33f3                              ; $4110: $cd $f3 $33

  db $00, $7c, $33

  jp Jump_000_3374                                ; $4116: $c3 $74 $33


  db $a0, $0d, $a8, $0d, $b0, $0d

  ld a, $03                                       ; $411f: $3e $03
  call Call_000_28e6                              ; $4121: $cd $e6 $28
  ld hl, $4119                                    ; $4124: $21 $19 $41
  call Call_000_3182                              ; $4127: $cd $82 $31
  call Call_000_33f3                              ; $412a: $cd $f3 $33

  db $03, $63, $78

  ld a, $ff                                       ; $4130: $3e $ff
  call Call_000_28e6                              ; $4132: $cd $e6 $28
  ld l, a                                         ; $4135: $6f
  ld h, $00                                       ; $4136: $26 $00
  ld de, $ff80                                    ; $4138: $11 $80 $ff
  add hl, de                                      ; $413b: $19
  ld e, l                                         ; $413c: $5d
  ld d, h                                         ; $413d: $54
  ld hl, $0011                                    ; $413e: $21 $11 $00
  add hl, bc                                      ; $4141: $09
  ld [hl], e                                      ; $4142: $73
  inc hl                                          ; $4143: $23
  ld [hl], d                                      ; $4144: $72
  ret                                             ; $4145: $c9


  db $ff

  jp hl                                           ; $4147: $e9


  rlca                                            ; $4148: $07
  ld hl, sp+$07                                   ; $4149: $f8 $07
  ld a, [bc]                                      ; $414b: $0a
  ld [$081c], sp                                  ; $414c: $08 $1c $08

  db $2c, $08

  inc a                                           ; $4151: $3c
  ld [$0848], sp                                  ; $4152: $08 $48 $08
  ld h, d                                         ; $4155: $62
  ld [$0877], sp                                  ; $4156: $08 $77 $08
  adc e                                           ; $4159: $8b
  ld [$0893], sp                                  ; $415a: $08 $93 $08
  cp b                                            ; $415d: $b8
  ld [$08c8], sp                                  ; $415e: $08 $c8 $08
  jp nc, $f008                                    ; $4161: $d2 $08 $f0

  db $08                                          ; $4164: $08

  db $f9, $08

  ld a, [bc]                                      ; $4167: $0a
  add hl, bc                                      ; $4168: $09
  rra                                             ; $4169: $1f
  add hl, bc                                      ; $416a: $09
  ccf                                             ; $416b: $3f
  add hl, bc                                      ; $416c: $09
  ld e, c                                         ; $416d: $59
  add hl, bc                                      ; $416e: $09
  ld h, c                                         ; $416f: $61
  add hl, bc                                      ; $4170: $09
  ld l, a                                         ; $4171: $6f
  add hl, bc                                      ; $4172: $09
  adc a                                           ; $4173: $8f
  add hl, bc                                      ; $4174: $09
  xor e                                           ; $4175: $ab
  add hl, bc                                      ; $4176: $09
  rst $00                                         ; $4177: $c7
  add hl, bc                                      ; $4178: $09
  ldh [$ff09], a                                  ; $4179: $e0 $09
  rst $28                                         ; $417b: $ef
  add hl, bc                                      ; $417c: $09
  dec c                                           ; $417d: $0d
  ld a, [bc]                                      ; $417e: $0a
  ld hl, $3b0a                                    ; $417f: $21 $0a $3b
  ld a, [bc]                                      ; $4182: $0a
  ccf                                             ; $4183: $3f
  ld a, [bc]                                      ; $4184: $0a
  ld e, a                                         ; $4185: $5f
  ld a, [bc]                                      ; $4186: $0a
  ld [hl], h                                      ; $4187: $74
  ld a, [bc]                                      ; $4188: $0a
  ld a, [hl]                                      ; $4189: $7e
  ld a, [bc]                                      ; $418a: $0a
  adc d                                           ; $418b: $8a
  ld a, [bc]                                      ; $418c: $0a
  sbc d                                           ; $418d: $9a
  ld a, [bc]                                      ; $418e: $0a
  xor [hl]                                        ; $418f: $ae
  ld a, [bc]                                      ; $4190: $0a
  pop bc                                          ; $4191: $c1
  ld a, [bc]                                      ; $4192: $0a
  call $d90a                                      ; $4193: $cd $0a $d9
  ld a, [bc]                                      ; $4196: $0a
  ret nz                                          ; $4197: $c0

  inc b                                           ; $4198: $04
  ret z                                           ; $4199: $c8

  inc b                                           ; $419a: $04
  ret nc                                          ; $419b: $d0

  inc b                                           ; $419c: $04
  ret c                                           ; $419d: $d8

  inc b                                           ; $419e: $04

  db $e0, $04

  ldh a, [rDIV]                                   ; $41a1: $f0 $04
  ld hl, sp+$04                                   ; $41a3: $f8 $04
  nop                                             ; $41a5: $00
  dec b                                           ; $41a6: $05
  ld [$1005], sp                                  ; $41a7: $08 $05 $10
  dec b                                           ; $41aa: $05
  jr @+$07                                        ; $41ab: $18 $05

  jr z, jr_005_41b4                               ; $41ad: $28 $05

  jr nc, @+$07                                    ; $41af: $30 $05

  jr c, jr_005_41b8                               ; $41b1: $38 $05

  ld c, b                                         ; $41b3: $48

jr_005_41b4:
  dec b                                           ; $41b4: $05

  db $50, $05

  ld h, b                                         ; $41b7: $60

jr_005_41b8:
  dec b                                           ; $41b8: $05
  ld l, b                                         ; $41b9: $68
  dec b                                           ; $41ba: $05
  ld l, b                                         ; $41bb: $68
  dec b                                           ; $41bc: $05
  ld [hl], b                                      ; $41bd: $70
  dec b                                           ; $41be: $05
  ld a, b                                         ; $41bf: $78
  dec b                                           ; $41c0: $05
  add b                                           ; $41c1: $80
  dec b                                           ; $41c2: $05
  adc b                                           ; $41c3: $88
  dec b                                           ; $41c4: $05
  sub b                                           ; $41c5: $90
  dec b                                           ; $41c6: $05
  sbc b                                           ; $41c7: $98
  dec b                                           ; $41c8: $05
  and b                                           ; $41c9: $a0
  dec b                                           ; $41ca: $05
  xor b                                           ; $41cb: $a8
  dec b                                           ; $41cc: $05
  or b                                            ; $41cd: $b0
  dec b                                           ; $41ce: $05
  cp b                                            ; $41cf: $b8
  dec b                                           ; $41d0: $05
  ret nz                                          ; $41d1: $c0

  dec b                                           ; $41d2: $05
  ret z                                           ; $41d3: $c8

  dec b                                           ; $41d4: $05
  ret nc                                          ; $41d5: $d0

  dec b                                           ; $41d6: $05
  ret c                                           ; $41d7: $d8

  dec b                                           ; $41d8: $05
  add sp, $05                                     ; $41d9: $e8 $05
  ldh a, [rTIMA]                                  ; $41db: $f0 $05
  ld hl, sp+$05                                   ; $41dd: $f8 $05
  nop                                             ; $41df: $00
  ld b, $08                                       ; $41e0: $06 $08
  ld b, $10                                       ; $41e2: $06 $10
  ld b, $18                                       ; $41e4: $06 $18
  ld b, $31                                       ; $41e6: $06 $31
  ld h, c                                         ; $41e8: $61
  dec l                                           ; $41e9: $2d
  nop                                             ; $41ea: $00
  ld c, a                                         ; $41eb: $4f
  ld h, c                                         ; $41ec: $61
  nop                                             ; $41ed: $00
  nop                                             ; $41ee: $00
  ld [hl], l                                      ; $41ef: $75
  ld h, c                                         ; $41f0: $61
  dec d                                           ; $41f1: $15
  nop                                             ; $41f2: $00
  sbc e                                           ; $41f3: $9b
  ld h, c                                         ; $41f4: $61
  jr nz, @+$02                                    ; $41f5: $20 $00

  db $bb, $61, $2d, $00

  db $dd                                          ; $41fb: $dd
  ld h, c                                         ; $41fc: $61
  ld a, [de]                                      ; $41fd: $1a
  nop                                             ; $41fe: $00
  push af                                         ; $41ff: $f5
  ld h, c                                         ; $4200: $61
  ld b, [hl]                                      ; $4201: $46
  nop                                             ; $4202: $00
  dec a                                           ; $4203: $3d
  ld h, d                                         ; $4204: $62
  nop                                             ; $4205: $00
  nop                                             ; $4206: $00
  ld l, e                                         ; $4207: $6b
  ld h, d                                         ; $4208: $62
  jr z, jr_005_420b                               ; $4209: $28 $00

jr_005_420b:
  sub e                                           ; $420b: $93
  ld h, d                                         ; $420c: $62
  ld h, b                                         ; $420d: $60
  nop                                             ; $420e: $00
  and l                                           ; $420f: $a5
  ld h, d                                         ; $4210: $62
  jr c, jr_005_4213                               ; $4211: $38 $00

jr_005_4213:
  rst $28                                         ; $4213: $ef
  ld h, d                                         ; $4214: $62
  ld c, $00                                       ; $4215: $0e $00
  rrca                                            ; $4217: $0f
  ld h, e                                         ; $4218: $63
  ld a, [bc]                                      ; $4219: $0a
  nop                                             ; $421a: $00
  inc hl                                          ; $421b: $23
  ld h, e                                         ; $421c: $63
  ld [$5f00], sp                                  ; $421d: $08 $00 $5f
  ld h, e                                         ; $4220: $63
  ld [de], a                                      ; $4221: $12
  nop                                             ; $4222: $00

  db $71, $63, $1e, $00

  sub l                                           ; $4227: $95
  ld h, e                                         ; $4228: $63
  daa                                             ; $4229: $27
  nop                                             ; $422a: $00
  cp a                                            ; $422b: $bf
  ld h, e                                         ; $422c: $63
  ld b, b                                         ; $422d: $40
  nop                                             ; $422e: $00
  rst $38                                         ; $422f: $ff
  ld h, e                                         ; $4230: $63
  ld c, d                                         ; $4231: $4a
  nop                                             ; $4232: $00
  ld e, a                                         ; $4233: $5f
  ld h, h                                         ; $4234: $64
  stop                                            ; $4235: $10 $00
  ld l, a                                         ; $4237: $6f
  ld h, h                                         ; $4238: $64
  inc a                                           ; $4239: $3c
  nop                                             ; $423a: $00
  sub a                                           ; $423b: $97
  ld h, h                                         ; $423c: $64
  nop                                             ; $423d: $00
  nop                                             ; $423e: $00
  inc bc                                          ; $423f: $03
  ld h, l                                         ; $4240: $65
  nop                                             ; $4241: $00
  nop                                             ; $4242: $00
  ld b, l                                         ; $4243: $45
  ld h, l                                         ; $4244: $65
  jr c, jr_005_4247                               ; $4245: $38 $00

jr_005_4247:
  ld a, l                                         ; $4247: $7d
  ld h, l                                         ; $4248: $65
  ld h, $00                                       ; $4249: $26 $00
  rst $08                                         ; $424b: $cf
  ld h, l                                         ; $424c: $65
  jr nc, jr_005_424f                              ; $424d: $30 $00

jr_005_424f:
  rst $30                                         ; $424f: $f7
  ld h, l                                         ; $4250: $65
  inc a                                           ; $4251: $3c
  nop                                             ; $4252: $00
  inc sp                                          ; $4253: $33
  ld h, [hl]                                      ; $4254: $66
  jr z, jr_005_4257                               ; $4255: $28 $00

jr_005_4257:
  ld e, e                                         ; $4257: $5b
  ld h, [hl]                                      ; $4258: $66
  nop                                             ; $4259: $00
  nop                                             ; $425a: $00
  sub e                                           ; $425b: $93
  ld h, [hl]                                      ; $425c: $66
  nop                                             ; $425d: $00
  nop                                             ; $425e: $00
  sbc l                                           ; $425f: $9d
  ld h, [hl]                                      ; $4260: $66
  jr nc, jr_005_4263                              ; $4261: $30 $00

jr_005_4263:
  db $dd                                          ; $4263: $dd
  ld h, [hl]                                      ; $4264: $66
  ccf                                             ; $4265: $3f
  nop                                             ; $4266: $00
  rlca                                            ; $4267: $07
  ld h, a                                         ; $4268: $67
  dec de                                          ; $4269: $1b
  nop                                             ; $426a: $00
  dec de                                          ; $426b: $1b
  ld h, a                                         ; $426c: $67
  nop                                             ; $426d: $00
  nop                                             ; $426e: $00
  scf                                             ; $426f: $37
  ld h, a                                         ; $4270: $67
  jr nz, jr_005_4273                              ; $4271: $20 $00

jr_005_4273:
  ld d, a                                         ; $4273: $57
  ld h, a                                         ; $4274: $67
  nop                                             ; $4275: $00
  nop                                             ; $4276: $00
  add c                                           ; $4277: $81
  ld h, a                                         ; $4278: $67
  jr c, jr_005_427b                               ; $4279: $38 $00

jr_005_427b:
  cp a                                            ; $427b: $bf
  ld h, a                                         ; $427c: $67
  inc h                                           ; $427d: $24
  nop                                             ; $427e: $00
  rst $10                                         ; $427f: $d7
  ld h, a                                         ; $4280: $67
  ld b, $00                                       ; $4281: $06 $00
  rst $28                                         ; $4283: $ef
  ld h, a                                         ; $4284: $67
  ld d, [hl]                                      ; $4285: $56
  nop                                             ; $4286: $00
  ld sp, $2d61                                    ; $4287: $31 $61 $2d
  nop                                             ; $428a: $00
  ld h, e                                         ; $428b: $63
  ld h, c                                         ; $428c: $61
  ld [de], a                                      ; $428d: $12
  nop                                             ; $428e: $00
  add l                                           ; $428f: $85
  ld h, c                                         ; $4290: $61
  ld hl, $3100                                    ; $4291: $21 $00 $31
  ld h, c                                         ; $4294: $61
  dec l                                           ; $4295: $2d
  nop                                             ; $4296: $00

  db $cd, $61, $18, $00

  ld sp, $0a61                                    ; $429b: $31 $61 $0a
  nop                                             ; $429e: $00
  ld sp, $2d61                                    ; $429f: $31 $61 $2d
  nop                                             ; $42a2: $00
  ld c, e                                         ; $42a3: $4b
  ld h, d                                         ; $42a4: $62
  ld a, [bc]                                      ; $42a5: $0a
  nop                                             ; $42a6: $00
  add e                                           ; $42a7: $83
  ld h, d                                         ; $42a8: $62
  stop                                            ; $42a9: $10 $00
  ld sp, $2d61                                    ; $42ab: $31 $61 $2d
  nop                                             ; $42ae: $00
  db $dd                                          ; $42af: $dd
  ld h, d                                         ; $42b0: $62
  add hl, bc                                      ; $42b1: $09
  nop                                             ; $42b2: $00
  db $fd                                          ; $42b3: $fd
  ld h, d                                         ; $42b4: $62
  ld [de], a                                      ; $42b5: $12
  nop                                             ; $42b6: $00
  ld sp, $2d61                                    ; $42b7: $31 $61 $2d
  nop                                             ; $42ba: $00
  inc sp                                          ; $42bb: $33
  ld h, e                                         ; $42bc: $63
  jr c, jr_005_42bf                               ; $42bd: $38 $00

jr_005_42bf:
  ld sp, $2d61                                    ; $42bf: $31 $61 $2d
  nop                                             ; $42c2: $00

  db $8f, $63, $02, $00

  ld sp, $2d61                                    ; $42c7: $31 $61 $2d
  nop                                             ; $42ca: $00
  ld sp, $2d61                                    ; $42cb: $31 $61 $2d
  nop                                             ; $42ce: $00
  ld sp, $2d61                                    ; $42cf: $31 $61 $2d
  nop                                             ; $42d2: $00
  ld sp, $2d61                                    ; $42d3: $31 $61 $2d
  nop                                             ; $42d6: $00
  ld sp, $2d61                                    ; $42d7: $31 $61 $2d
  nop                                             ; $42da: $00
  xor e                                           ; $42db: $ab
  ld h, h                                         ; $42dc: $64
  nop                                             ; $42dd: $00
  nop                                             ; $42de: $00
  inc hl                                          ; $42df: $23
  ld h, l                                         ; $42e0: $65
  nop                                             ; $42e1: $00
  nop                                             ; $42e2: $00
  ld sp, $2d61                                    ; $42e3: $31 $61 $2d
  nop                                             ; $42e6: $00
  ld sp, $2d61                                    ; $42e7: $31 $61 $2d
  nop                                             ; $42ea: $00
  ld sp, $2d61                                    ; $42eb: $31 $61 $2d
  nop                                             ; $42ee: $00
  ld sp, $2d61                                    ; $42ef: $31 $61 $2d
  nop                                             ; $42f2: $00
  ld sp, $2d61                                    ; $42f3: $31 $61 $2d
  nop                                             ; $42f6: $00
  ld [hl], l                                      ; $42f7: $75
  ld h, [hl]                                      ; $42f8: $66
  nop                                             ; $42f9: $00
  nop                                             ; $42fa: $00
  ld sp, $2d61                                    ; $42fb: $31 $61 $2d
  nop                                             ; $42fe: $00
  cp l                                            ; $42ff: $bd
  ld h, [hl]                                      ; $4300: $66
  jr nc, jr_005_4303                              ; $4301: $30 $00

jr_005_4303:
  ld sp, $2d61                                    ; $4303: $31 $61 $2d
  nop                                             ; $4306: $00
  add hl, de                                      ; $4307: $19
  ld h, a                                         ; $4308: $67
  nop                                             ; $4309: $00
  nop                                             ; $430a: $00
  daa                                             ; $430b: $27
  ld h, a                                         ; $430c: $67
  ld [de], a                                      ; $430d: $12
  nop                                             ; $430e: $00
  ld sp, $2d61                                    ; $430f: $31 $61 $2d
  nop                                             ; $4312: $00
  ld l, c                                         ; $4313: $69
  ld h, a                                         ; $4314: $67
  ld d, $00                                       ; $4315: $16 $00
  ld sp, $2d61                                    ; $4317: $31 $61 $2d
  nop                                             ; $431a: $00
  ld sp, $2d61                                    ; $431b: $31 $61 $2d
  nop                                             ; $431e: $00
  db $e3                                          ; $431f: $e3
  ld h, a                                         ; $4320: $67
  ld b, $00                                       ; $4321: $06 $00
  ld [bc], a                                      ; $4323: $02
  ld b, $01                                       ; $4324: $06 $01
  ld bc, $0000                                    ; $4326: $01 $00 $00
  db $01                                          ; $4329: $01
  db $01                                          ; $432a: $01

  db $01, $01

  nop                                             ; $432d: $00
  nop                                             ; $432e: $00
  nop                                             ; $432f: $00
  nop                                             ; $4330: $00
  nop                                             ; $4331: $00
  nop                                             ; $4332: $00
  nop                                             ; $4333: $00
  nop                                             ; $4334: $00
  nop                                             ; $4335: $00
  nop                                             ; $4336: $00
  nop                                             ; $4337: $00
  nop                                             ; $4338: $00
  inc b                                           ; $4339: $04
  ld bc, $0000                                    ; $433a: $01 $00 $00
  ld bc, $0001                                    ; $433d: $01 $01 $00
  nop                                             ; $4340: $00

  db $01, $01

  nop                                             ; $4343: $00
  nop                                             ; $4344: $00
  nop                                             ; $4345: $00
  nop                                             ; $4346: $00
  nop                                             ; $4347: $00
  nop                                             ; $4348: $00
  nop                                             ; $4349: $00
  nop                                             ; $434a: $00
  nop                                             ; $434b: $00
  nop                                             ; $434c: $00
  inc b                                           ; $434d: $04
  db $01, $04, $01                               ; $434e: $01 $04 $01
  nop                                             ; $4351: $00
  nop                                             ; $4352: $00
  nop                                             ; $4353: $00
  nop                                             ; $4354: $00
  nop                                             ; $4355: $00
  nop                                             ; $4356: $00
  nop                                             ; $4357: $00
  nop                                             ; $4358: $00
  nop                                             ; $4359: $00
  nop                                             ; $435a: $00
  nop                                             ; $435b: $00
  nop                                             ; $435c: $00
  inc b                                           ; $435d: $04
  ld bc, $0000                                    ; $435e: $01 $00 $00
  inc b                                           ; $4361: $04
  db $01, $04, $01                                ; $4362: $01 $04 $01
  inc b                                           ; $4365: $04
  ld bc, $0101                                    ; $4366: $01 $01 $01
  nop                                             ; $4369: $00
  nop                                             ; $436a: $00
  nop                                             ; $436b: $00
  nop                                             ; $436c: $00
  inc b                                           ; $436d: $04
  db $01, $04, $01                                ; $436e: $01 $04 $01
  nop                                             ; $4371: $00
  nop                                             ; $4372: $00
  nop                                             ; $4373: $00
  nop                                             ; $4374: $00
  jr nz, jr_005_4377                              ; $4375: $20 $00

jr_005_4377:
  nop                                             ; $4377: $00
  nop                                             ; $4378: $00
  nop                                             ; $4379: $00
  nop                                             ; $437a: $00
  nop                                             ; $437b: $00
  nop                                             ; $437c: $00
  ld b, b                                         ; $437d: $40
  nop                                             ; $437e: $00
  inc c                                           ; $437f: $0c
  nop                                             ; $4380: $00
  nop                                             ; $4381: $00
  nop                                             ; $4382: $00

  db $00, $00, $00, $00

  nop                                             ; $4387: $00
  nop                                             ; $4388: $00
  jr nz, jr_005_438b                              ; $4389: $20 $00

jr_005_438b:
  nop                                             ; $438b: $00
  nop                                             ; $438c: $00
  jr nz, jr_005_438f                              ; $438d: $20 $00

jr_005_438f:
  nop                                             ; $438f: $00
  nop                                             ; $4390: $00
  jr nz, jr_005_4393                              ; $4391: $20 $00

jr_005_4393:
  nop                                             ; $4393: $00
  nop                                             ; $4394: $00
  jr nz, jr_005_4397                              ; $4395: $20 $00

jr_005_4397:
  nop                                             ; $4397: $00
  nop                                             ; $4398: $00
  jr nz, jr_005_439b                              ; $4399: $20 $00

jr_005_439b:
  nop                                             ; $439b: $00
  nop                                             ; $439c: $00
  jr nz, jr_005_439f                              ; $439d: $20 $00

jr_005_439f:
  nop                                             ; $439f: $00
  nop                                             ; $43a0: $00
  nop                                             ; $43a1: $00
  nop                                             ; $43a2: $00
  nop                                             ; $43a3: $00
  nop                                             ; $43a4: $00
  jr nz, jr_005_43a7                              ; $43a5: $20 $00

jr_005_43a7:
  nop                                             ; $43a7: $00
  nop                                             ; $43a8: $00
  ldh [rP1], a                                    ; $43a9: $e0 $00
  nop                                             ; $43ab: $00
  nop                                             ; $43ac: $00
  jr nz, @+$02                                    ; $43ad: $20 $00

  db $00, $00, $00, $00

  nop                                             ; $43b3: $00
  nop                                             ; $43b4: $00
  ret nz                                          ; $43b5: $c0

  nop                                             ; $43b6: $00
  nop                                             ; $43b7: $00
  nop                                             ; $43b8: $00
  ldh [rP1], a                                    ; $43b9: $e0 $00
  nop                                             ; $43bb: $00
  nop                                             ; $43bc: $00
  jr nz, jr_005_43bf                              ; $43bd: $20 $00

jr_005_43bf:
  nop                                             ; $43bf: $00
  nop                                             ; $43c0: $00
  jr nz, jr_005_43c3                              ; $43c1: $20 $00

jr_005_43c3:
  nop                                             ; $43c3: $00
  nop                                             ; $43c4: $00
  ldh [rP1], a                                    ; $43c5: $e0 $00
  ld [$0000], sp                                  ; $43c7: $08 $00 $00
  nop                                             ; $43ca: $00
  nop                                             ; $43cb: $00
  nop                                             ; $43cc: $00
  nop                                             ; $43cd: $00
  nop                                             ; $43ce: $00
  nop                                             ; $43cf: $00
  nop                                             ; $43d0: $00
  jr nz, jr_005_43d3                              ; $43d1: $20 $00

jr_005_43d3:
  nop                                             ; $43d3: $00
  nop                                             ; $43d4: $00
  ret nz                                          ; $43d5: $c0

  nop                                             ; $43d6: $00
  nop                                             ; $43d7: $00
  nop                                             ; $43d8: $00
  jr nz, jr_005_43db                              ; $43d9: $20 $00

jr_005_43db:
  nop                                             ; $43db: $00
  nop                                             ; $43dc: $00
  jr nz, jr_005_43df                              ; $43dd: $20 $00

jr_005_43df:
  nop                                             ; $43df: $00
  nop                                             ; $43e0: $00
  jr nz, jr_005_43e3                              ; $43e1: $20 $00

jr_005_43e3:
  nop                                             ; $43e3: $00
  nop                                             ; $43e4: $00
  jr nz, jr_005_43e7                              ; $43e5: $20 $00

jr_005_43e7:
  nop                                             ; $43e7: $00
  nop                                             ; $43e8: $00
  nop                                             ; $43e9: $00
  nop                                             ; $43ea: $00
  nop                                             ; $43eb: $00
  nop                                             ; $43ec: $00
  jr nz, jr_005_43ef                              ; $43ed: $20 $00

jr_005_43ef:
  nop                                             ; $43ef: $00
  nop                                             ; $43f0: $00
  nop                                             ; $43f1: $00
  nop                                             ; $43f2: $00
  nop                                             ; $43f3: $00
  nop                                             ; $43f4: $00
  nop                                             ; $43f5: $00
  nop                                             ; $43f6: $00
  nop                                             ; $43f7: $00
  nop                                             ; $43f8: $00
  nop                                             ; $43f9: $00
  nop                                             ; $43fa: $00
  ld c, d                                         ; $43fb: $4a
  nop                                             ; $43fc: $00
  nop                                             ; $43fd: $00
  nop                                             ; $43fe: $00
  nop                                             ; $43ff: $00
  nop                                             ; $4400: $00
  ldh [rP1], a                                    ; $4401: $e0 $00
  nop                                             ; $4403: $00
  nop                                             ; $4404: $00
  db $fc                                          ; $4405: $fc
  nop                                             ; $4406: $00
  nop                                             ; $4407: $00
  nop                                             ; $4408: $00
  nop                                             ; $4409: $00
  nop                                             ; $440a: $00
  nop                                             ; $440b: $00
  nop                                             ; $440c: $00
  nop                                             ; $440d: $00
  nop                                             ; $440e: $00
  nop                                             ; $440f: $00
  nop                                             ; $4410: $00
  jr nz, jr_005_4413                              ; $4411: $20 $00

jr_005_4413:
  inc bc                                          ; $4413: $03
  inc a                                           ; $4414: $3c
  ld bc, $030a                                    ; $4415: $01 $0a $03
  inc a                                           ; $4418: $3c
  db $01                                          ; $4419: $01
  ld a, [bc]                                      ; $441a: $0a

  db $01, $0a

  inc bc                                          ; $441d: $03
  inc a                                           ; $441e: $3c
  inc bc                                          ; $441f: $03
  inc a                                           ; $4420: $3c
  inc bc                                          ; $4421: $03
  inc a                                           ; $4422: $3c
  inc bc                                          ; $4423: $03
  inc a                                           ; $4424: $3c
  inc bc                                          ; $4425: $03
  ld d, b                                         ; $4426: $50
  inc bc                                          ; $4427: $03
  inc a                                           ; $4428: $3c
  ld bc, $030a                                    ; $4429: $01 $0a $03
  inc a                                           ; $442c: $3c
  inc bc                                          ; $442d: $03
  inc a                                           ; $442e: $3c
  inc bc                                          ; $442f: $03
  inc a                                           ; $4430: $3c

  db $01, $0a

  inc bc                                          ; $4433: $03
  inc a                                           ; $4434: $3c
  inc bc                                          ; $4435: $03
  inc a                                           ; $4436: $3c
  inc bc                                          ; $4437: $03
  add a                                           ; $4438: $87
  inc bc                                          ; $4439: $03
  inc a                                           ; $443a: $3c
  inc bc                                          ; $443b: $03
  inc a                                           ; $443c: $3c
  ld bc, $010a                                    ; $443d: $01 $0a $01
  ld a, [bc]                                      ; $4440: $0a
  inc bc                                          ; $4441: $03
  ld d, b                                         ; $4442: $50
  inc bc                                          ; $4443: $03
  inc a                                           ; $4444: $3c
  inc bc                                          ; $4445: $03
  inc a                                           ; $4446: $3c
  inc bc                                          ; $4447: $03
  inc a                                           ; $4448: $3c
  inc bc                                          ; $4449: $03
  inc a                                           ; $444a: $3c
  inc bc                                          ; $444b: $03
  inc a                                           ; $444c: $3c
  ld bc, $030a                                    ; $444d: $01 $0a $03
  inc a                                           ; $4450: $3c
  ld bc, $010a                                    ; $4451: $01 $0a $01
  ld a, [bc]                                      ; $4454: $0a
  ld bc, $010a                                    ; $4455: $01 $0a $01
  ld a, [bc]                                      ; $4458: $0a
  ld bc, $033c                                    ; $4459: $01 $3c $03
  inc a                                           ; $445c: $3c
  ld bc, $010a                                    ; $445d: $01 $0a $01
  ld a, [bc]                                      ; $4460: $0a
  inc bc                                          ; $4461: $03
  inc a                                           ; $4462: $3c

  db $10, $01, $71, $44, $3a, $01, $48

  db $10                                          ; $446a: $10
  ld bc, $4473                                    ; $446b: $01 $73 $44
  ld a, [hl-]                                     ; $446e: $3a
  db $01                                          ; $446f: $01
  ld b, h                                         ; $4470: $44

  db $07, $d2, $c0, $d1, $e0, $d1, $00, $d2, $20, $d2, $cd, $c1, $45, $c0, $c5, $af
  db $ea, $4c, $cc, $3e, $01, $cd, $2b, $39, $21, $23, $43, $fa, $a5, $cd, $cd, $7a
  db $31, $2a, $ea, $a6, $cd, $cd, $d1, $47

  call Call_005_4a39                              ; $4499: $cd $39 $4a
  call Call_005_457d                              ; $449c: $cd $7d $45
  call Call_005_4960                              ; $449f: $cd $60 $49
  call Call_005_499d                              ; $44a2: $cd $9d $49
  call Call_005_4a65                              ; $44a5: $cd $65 $4a
  call Call_005_4aab                              ; $44a8: $cd $ab $4a
  call Call_005_4ad3                              ; $44ab: $cd $d3 $4a
  pop bc                                          ; $44ae: $c1
  ld a, $ff                                       ; $44af: $3e $ff
  ldh [$ffd1], a                                  ; $44b1: $e0 $d1
  ld a, [$cda6]                                   ; $44b3: $fa $a6 $cd
  cp $01                                          ; $44b6: $fe $01
  jp StoreCPUFlags                                ; $44b8: $c3 $39 $00


  push bc                                         ; $44bb: $c5
  ld a, [$cda5]                                   ; $44bc: $fa $a5 $cd
  push af                                         ; $44bf: $f5
  ld a, [$cda6]                                   ; $44c0: $fa $a6 $cd
  cp $04                                          ; $44c3: $fe $04
  jr nz, jr_005_452b                              ; $44c5: $20 $64

  ldh a, [$ffd6]                                  ; $44c7: $f0 $d6
  cp $34                                          ; $44c9: $fe $34
  jr nz, jr_005_44d7                              ; $44cb: $20 $0a

  ld a, $30                                       ; $44cd: $3e $30
  call Call_000_33f3                              ; $44cf: $cd $f3 $33
  ld bc, $6921                                    ; $44d2: $01 $21 $69
  jr jr_005_4518                                  ; $44d5: $18 $41

jr_005_44d7:
  ld a, [$cc49]                                   ; $44d7: $fa $49 $cc
  cp $07                                          ; $44da: $fe $07
  jr z, jr_005_44ea                               ; $44dc: $28 $0c

  cp $05                                          ; $44de: $fe $05
  jr z, jr_005_44f4                               ; $44e0: $28 $12

  cp $06                                          ; $44e2: $fe $06
  jr nz, jr_005_4518                              ; $44e4: $20 $32

  ld a, $05                                       ; $44e6: $3e $05
  jr jr_005_44fe                                  ; $44e8: $18 $14

jr_005_44ea:
  ld a, $80                                       ; $44ea: $3e $80
  call Call_000_33f3                              ; $44ec: $cd $f3 $33
  ld bc, $6921                                    ; $44ef: $01 $21 $69
  jr jr_005_4518                                  ; $44f2: $18 $24

jr_005_44f4:
  ld a, $88                                       ; $44f4: $3e $88
  call Call_000_33f3                              ; $44f6: $cd $f3 $33
  ld bc, $6921                                    ; $44f9: $01 $21 $69
  ld a, $04                                       ; $44fc: $3e $04

jr_005_44fe:
  ld hl, $ffb9                                    ; $44fe: $21 $b9 $ff
  ld [hl], $68                                    ; $4501: $36 $68
  inc hl                                          ; $4503: $23
  ld [hl], $01                                    ; $4504: $36 $01
  ld hl, $5e82                                    ; $4506: $21 $82 $5e
  call Call_000_33f3                              ; $4509: $cd $f3 $33
  nop                                             ; $450c: $00
  ld h, b                                         ; $450d: $60
  ld a, [hl+]                                     ; $450e: $2a
  call Call_000_35e1                              ; $450f: $cd $e1 $35
  nop                                             ; $4512: $00
  nop                                             ; $4513: $00
  inc d                                           ; $4514: $14
  ld c, $18                                       ; $4515: $0e $18
  inc de                                          ; $4517: $13

jr_005_4518:
  ld hl, $ffb9                                    ; $4518: $21 $b9 $ff
  ld [hl], $68                                    ; $451b: $36 $68
  inc hl                                          ; $451d: $23
  ld [hl], $01                                    ; $451e: $36 $01
  db $f0                                          ; $4520: $f0

  db $d6, $21

  ld c, d                                         ; $4523: $4a
  ld e, d                                         ; $4524: $5a
  call Call_000_33f3                              ; $4525: $cd $f3 $33
  nop                                             ; $4528: $00
  ld h, b                                         ; $4529: $60
  ld a, [hl+]                                     ; $452a: $2a

jr_005_452b:
  ld a, $ff                                       ; $452b: $3e $ff
  ld [$cda5], a                                   ; $452d: $ea $a5 $cd

jr_005_4530:
  ld a, [$cda5]                                   ; $4530: $fa $a5 $cd
  cp $fe                                          ; $4533: $fe $fe
  jr nz, jr_005_4530                              ; $4535: $20 $f9

  pop af                                          ; $4537: $f1
  ld [$cda5], a                                   ; $4538: $ea $a5 $cd
  call Call_000_3363                              ; $453b: $cd $63 $33
  call RST_18                                     ; $453e: $cd $18 $00
  ld a, [$cda6]                                   ; $4541: $fa $a6 $cd
  cp $04                                          ; $4544: $fe $04
  jr z, jr_005_4552                               ; $4546: $28 $0a

  cp $01                                          ; $4548: $fe $01
  jr z, jr_005_4552                               ; $454a: $28 $06

  call Call_000_33f3                              ; $454c: $cd $f3 $33
  inc bc                                          ; $454f: $03
  sub d                                           ; $4550: $92
  ld c, l                                         ; $4551: $4d

jr_005_4552:
  ld a, [$c0aa]                                   ; $4552: $fa $aa $c0
  and $f1                                         ; $4555: $e6 $f1
  ld [$c0aa], a                                   ; $4557: $ea $aa $c0
  ldh a, [rSVBK]                                  ; $455a: $f0 $70
  push af                                         ; $455c: $f5
  ld a, $05                                       ; $455d: $3e $05
  ldh [rSVBK], a                                  ; $455f: $e0 $70
  ld hl, $d096                                    ; $4561: $21 $96 $d0
  xor a                                           ; $4564: $af
  ld [hl+], a                                     ; $4565: $22
  ld [hl+], a                                     ; $4566: $22
  ld [hl], a                                      ; $4567: $77
  pop af                                          ; $4568: $f1
  ldh [rSVBK], a                                  ; $4569: $e0 $70
  ld a, $01                                       ; $456b: $3e $01
  ld [$cc4c], a                                   ; $456d: $ea $4c $cc
  pop bc                                          ; $4570: $c1
  ld a, [$cda6]                                   ; $4571: $fa $a6 $cd
  cp $04                                          ; $4574: $fe $04
  jr z, jr_005_459f                               ; $4576: $28 $27

  cp $01                                          ; $4578: $fe $01
  jr z, jr_005_459f                               ; $457a: $28 $23

  ret                                             ; $457c: $c9


Call_005_457d:
  ld a, [$cda6]                                   ; $457d: $fa $a6 $cd
  cp $04                                          ; $4580: $fe $04
  jr z, jr_005_4587                               ; $4582: $28 $03

  cp $01                                          ; $4584: $fe $01
  ret nz                                          ; $4586: $c0

jr_005_4587:
  ld a, [$cc49]                                   ; $4587: $fa $49 $cc
  cp $06                                          ; $458a: $fe $06
  jr z, jr_005_4591                               ; $458c: $28 $03

  cp $07                                          ; $458e: $fe $07
  ret nz                                          ; $4590: $c0

jr_005_4591:
  ld e, $04                                       ; $4591: $1e $04
  ld a, $7b                                       ; $4593: $3e $7b
  call Call_000_0a46                              ; $4595: $cd $46 $0a
  ld de, $002a                                    ; $4598: $11 $2a $00
  add hl, de                                      ; $459b: $19
  set 0, [hl]                                     ; $459c: $cb $c6
  ret                                             ; $459e: $c9


jr_005_459f:
  ld a, [$cc49]                                   ; $459f: $fa $49 $cc
  cp $06                                          ; $45a2: $fe $06
  jr z, jr_005_45a9                               ; $45a4: $28 $03

  cp $07                                          ; $45a6: $fe $07
  ret nz                                          ; $45a8: $c0

jr_005_45a9:
  ld e, $04                                       ; $45a9: $1e $04
  ld a, $7b                                       ; $45ab: $3e $7b
  call Call_000_0a46                              ; $45ad: $cd $46 $0a
  ld de, $002a                                    ; $45b0: $11 $2a $00
  add hl, de                                      ; $45b3: $19
  res 0, [hl]                                     ; $45b4: $cb $86
  ret                                             ; $45b6: $c9


  ldh a, [$ffd1]                                  ; $45b7: $f0 $d1
  ld [$cda5], a                                   ; $45b9: $ea $a5 $cd
  ld a, $ff                                       ; $45bc: $3e $ff
  ldh [$ffd1], a                                  ; $45be: $e0 $d1
  ret                                             ; $45c0: $c9


  ld a, [$cc49]                                   ; $45c1: $fa $49 $cc
  or a                                            ; $45c4: $b7
  jr z, jr_005_45d8                               ; $45c5: $28 $11

  ld a, [$cda5]                                   ; $45c7: $fa $a5 $cd
  ld d, a                                         ; $45ca: $57
  ld hl, $4146                                    ; $45cb: $21 $46 $41

jr_005_45ce:
  ld a, [hl+]                                     ; $45ce: $2a
  cp $ff                                          ; $45cf: $fe $ff
  jr z, jr_005_45d8                               ; $45d1: $28 $05

  cp d                                            ; $45d3: $ba
  jr nz, jr_005_45ce                              ; $45d4: $20 $f8

  cp $ff                                          ; $45d6: $fe $ff

jr_005_45d8:
  jp StoreCPUFlags                                ; $45d8: $c3 $39 $00


  push de                                         ; $45db: $d5
  push hl                                         ; $45dc: $e5
  ld a, [$cc2a]                                   ; $45dd: $fa $2a $cc
  dec a                                           ; $45e0: $3d
  call Call_000_33f3                              ; $45e1: $cd $f3 $33

  db $03, $76, $49

  ld de, $0017                                    ; $45e7: $11 $17 $00
  add hl, de                                      ; $45ea: $19
  ld a, [hl+]                                     ; $45eb: $2a
  cp $01                                          ; $45ec: $fe $01
  jr nz, jr_005_45f4                              ; $45ee: $20 $04

  pop hl                                          ; $45f0: $e1
  pop de                                          ; $45f1: $d1
  or a                                            ; $45f2: $b7
  ret                                             ; $45f3: $c9


jr_005_45f4:
  pop hl                                          ; $45f4: $e1
  pop de                                          ; $45f5: $d1
  xor a                                           ; $45f6: $af
  ret                                             ; $45f7: $c9


  ld a, [$cda5]                                   ; $45f8: $fa $a5 $cd
  ldh [$ff9a], a                                  ; $45fb: $e0 $9a
  ret                                             ; $45fd: $c9


  ld a, [$cc2a]                                   ; $45fe: $fa $2a $cc
  dec a                                           ; $4601: $3d
  ld hl, $5434                                    ; $4602: $21 $34 $54
  ld d, a                                         ; $4605: $57
  ld e, $07                                       ; $4606: $1e $07
  call Call_000_34dc                              ; $4608: $cd $dc $34
  ld d, h                                         ; $460b: $54
  ld e, l                                         ; $460c: $5d
  jr jr_005_460f                                  ; $460d: $18 $00

jr_005_460f:
  ld hl, $0006                                    ; $460f: $21 $06 $00
  add hl, bc                                      ; $4612: $09
  ld a, e                                         ; $4613: $7b
  ld [hl+], a                                     ; $4614: $22
  inc hl                                          ; $4615: $23
  inc hl                                          ; $4616: $23
  ld a, d                                         ; $4617: $7a
  sub $10                                         ; $4618: $d6 $10
  ld [hl+], a                                     ; $461a: $22
  inc hl                                          ; $461b: $23
  ld a, e                                         ; $461c: $7b
  ld [hl+], a                                     ; $461d: $22
  inc hl                                          ; $461e: $23
  ld a, d                                         ; $461f: $7a
  sub $10                                         ; $4620: $d6 $10
  ld [hl+], a                                     ; $4622: $22
  ret                                             ; $4623: $c9


  push bc                                         ; $4624: $c5
  call Call_000_2fc1                              ; $4625: $cd $c1 $2f
  ld hl, $4197                                    ; $4628: $21 $97 $41
  call Call_000_3182                              ; $462b: $cd $82 $31
  call Call_000_33f3                              ; $462e: $cd $f3 $33

  db $03, $63, $78

  pop bc                                          ; $4634: $c1
  ret                                             ; $4635: $c9


  ld hl, $4147                                    ; $4636: $21 $47 $41
  ld a, [$cda5]                                   ; $4639: $fa $a5 $cd
  call Call_000_3182                              ; $463c: $cd $82 $31
  call Call_000_3427                              ; $463f: $cd $27 $34

  db $02, $8e, $68

  ret                                             ; $4645: $c9


  ld hl, $41e7                                    ; $4646: $21 $e7 $41
  inc bc                                          ; $4649: $03
  ld a, [bc]                                      ; $464a: $0a
  dec bc                                          ; $464b: $0b
  call Call_000_316b                              ; $464c: $cd $6b $31
  ld e, [hl]                                      ; $464f: $5e
  inc hl                                          ; $4650: $23
  ld d, [hl]                                      ; $4651: $56
  inc hl                                          ; $4652: $23
  ld a, [hl+]                                     ; $4653: $2a
  ld h, [hl]                                      ; $4654: $66
  ld l, a                                         ; $4655: $6f
  ld a, l                                         ; $4656: $7d
  ld [$cdac], a                                   ; $4657: $ea $ac $cd
  jp Jump_000_09f4                                ; $465a: $c3 $f4 $09


  ld hl, $4287                                    ; $465d: $21 $87 $42
  inc bc                                          ; $4660: $03
  ld a, [bc]                                      ; $4661: $0a
  dec bc                                          ; $4662: $0b
  call Call_000_316b                              ; $4663: $cd $6b $31
  ld e, [hl]                                      ; $4666: $5e
  inc hl                                          ; $4667: $23
  ld d, [hl]                                      ; $4668: $56
  inc hl                                          ; $4669: $23
  ld a, [hl+]                                     ; $466a: $2a
  ld h, [hl]                                      ; $466b: $66
  ld l, a                                         ; $466c: $6f
  ld a, l                                         ; $466d: $7d
  ld [$cdac], a                                   ; $466e: $ea $ac $cd
  jp Jump_000_09f4                                ; $4671: $c3 $f4 $09


  push bc                                         ; $4674: $c5
  call Call_000_33f3                              ; $4675: $cd $f3 $33
  inc bc                                          ; $4678: $03
  rlca                                            ; $4679: $07
  ld c, c                                         ; $467a: $49
  pop bc                                          ; $467b: $c1
  ret                                             ; $467c: $c9


jr_005_467d:
  ld a, $03                                       ; $467d: $3e $03
  call Call_000_28e6                              ; $467f: $cd $e6 $28
  add $04                                         ; $4682: $c6 $04
  ld d, a                                         ; $4684: $57
  dec a                                           ; $4685: $3d
  call Call_000_33f3                              ; $4686: $cd $f3 $33
  inc bc                                          ; $4689: $03
  ld c, d                                         ; $468a: $4a
  ld c, b                                         ; $468b: $48
  bit 1, a                                        ; $468c: $cb $4f
  jr nz, jr_005_467d                              ; $468e: $20 $ed

  ld a, d                                         ; $4690: $7a
  ld [$cc2a], a                                   ; $4691: $ea $2a $cc
  ret                                             ; $4694: $c9


jr_005_4695:
  ld a, $03                                       ; $4695: $3e $03
  call Call_000_28e6                              ; $4697: $cd $e6 $28
  ld d, a                                         ; $469a: $57
  call Call_000_33f3                              ; $469b: $cd $f3 $33
  inc bc                                          ; $469e: $03
  ld c, d                                         ; $469f: $4a
  ld c, b                                         ; $46a0: $48
  bit 1, a                                        ; $46a1: $cb $4f
  jr nz, jr_005_4695                              ; $46a3: $20 $f0

  ld a, d                                         ; $46a5: $7a
  inc a                                           ; $46a6: $3c
  ld [$cc2a], a                                   ; $46a7: $ea $2a $cc
  ret                                             ; $46aa: $c9


  push bc                                         ; $46ab: $c5
  ld a, $01                                       ; $46ac: $3e $01
  ld [$cc29], a                                   ; $46ae: $ea $29 $cc
  ld a, $04                                       ; $46b1: $3e $04
  ld [$cc2a], a                                   ; $46b3: $ea $2a $cc
  ld c, $00                                       ; $46b6: $0e $00
  call Call_000_33f3                              ; $46b8: $cd $f3 $33
  inc bc                                          ; $46bb: $03
  add sp, $45                                     ; $46bc: $e8 $45
  pop bc                                          ; $46be: $c1
  ret                                             ; $46bf: $c9


  push bc                                         ; $46c0: $c5
  ld a, $01                                       ; $46c1: $3e $01
  ld [$cc29], a                                   ; $46c3: $ea $29 $cc
  ld c, $00                                       ; $46c6: $0e $00
  call Call_000_33f3                              ; $46c8: $cd $f3 $33
  inc bc                                          ; $46cb: $03
  add sp, $45                                     ; $46cc: $e8 $45
  pop bc                                          ; $46ce: $c1
  ret                                             ; $46cf: $c9


  ldh a, [rSVBK]                                  ; $46d0: $f0 $70
  push af                                         ; $46d2: $f5
  ld a, $05                                       ; $46d3: $3e $05
  ldh [rSVBK], a                                  ; $46d5: $e0 $70
  ld a, [$cc2a]                                   ; $46d7: $fa $2a $cc
  inc a                                           ; $46da: $3c
  call Call_000_32e5                              ; $46db: $cd $e5 $32
  ld [$d09d], a                                   ; $46de: $ea $9d $d0
  ld a, $02                                       ; $46e1: $3e $02
  ld [$d09c], a                                   ; $46e3: $ea $9c $d0
  ld a, $00                                       ; $46e6: $3e $00
  ld [$d09f], a                                   ; $46e8: $ea $9f $d0
  ld a, $02                                       ; $46eb: $3e $02
  ld [$d09e], a                                   ; $46ed: $ea $9e $d0
  pop af                                          ; $46f0: $f1
  ldh [rSVBK], a                                  ; $46f1: $e0 $70
  ret                                             ; $46f3: $c9


  ld a, [$cc2a]                                   ; $46f4: $fa $2a $cc
  dec a                                           ; $46f7: $3d
  push af                                         ; $46f8: $f5
  ld l, $03                                       ; $46f9: $2e $03
  call Call_000_33f3                              ; $46fb: $cd $f3 $33
  inc bc                                          ; $46fe: $03
  sbc $48                                         ; $46ff: $de $48
  pop af                                          ; $4701: $f1
  push af                                         ; $4702: $f5
  ldh [$ffbd], a                                  ; $4703: $e0 $bd
  ldh a, [rSVBK]                                  ; $4705: $f0 $70
  push af                                         ; $4707: $f5
  ld a, $05                                       ; $4708: $3e $05
  ldh [rSVBK], a                                  ; $470a: $e0 $70
  ldh a, [$ffbd]                                  ; $470c: $f0 $bd
  call Call_000_33f3                              ; $470e: $cd $f3 $33
  inc bc                                          ; $4711: $03
  halt                                            ; $4712: $76
  ld c, c                                         ; $4713: $49
  ld de, $0005                                    ; $4714: $11 $05 $00
  add hl, de                                      ; $4717: $19
  xor a                                           ; $4718: $af
  ld [hl+], a                                     ; $4719: $22
  ld [hl], a                                      ; $471a: $77
  ldh [$ffbd], a                                  ; $471b: $e0 $bd
  pop af                                          ; $471d: $f1
  ldh [rSVBK], a                                  ; $471e: $e0 $70
  ldh a, [$ffbd]                                  ; $4720: $f0 $bd
  pop af                                          ; $4722: $f1
  call Call_000_3427                              ; $4723: $cd $27 $34
  rlca                                            ; $4726: $07
  ret nc                                          ; $4727: $d0

  ld e, e                                         ; $4728: $5b
  ld hl, $0001                                    ; $4729: $21 $01 $00
  add hl, bc                                      ; $472c: $09
  ld a, [hl]                                      ; $472d: $7e
  ldh [$ff9a], a                                  ; $472e: $e0 $9a
  ret                                             ; $4730: $c9


  ld hl, $0002                                    ; $4731: $21 $02 $00
  add hl, bc                                      ; $4734: $09
  ld a, [hl]                                      ; $4735: $7e
  inc a                                           ; $4736: $3c
  ldh [$ff9f], a                                  ; $4737: $e0 $9f
  ret                                             ; $4739: $c9


  xor a                                           ; $473a: $af
  ld [$cc4c], a                                   ; $473b: $ea $4c $cc
  ret                                             ; $473e: $c9


  ld a, $01                                       ; $473f: $3e $01
  ld [$cc4c], a                                   ; $4741: $ea $4c $cc
  ret                                             ; $4744: $c9


  ld a, [$cc4c]                                   ; $4745: $fa $4c $cc
  or a                                            ; $4748: $b7
  jp StoreCPUFlags                                ; $4749: $c3 $39 $00


  push bc                                         ; $474c: $c5
  ld a, [$cc2a]                                   ; $474d: $fa $2a $cc
  ld e, a                                         ; $4750: $5f
  ld a, $7b                                       ; $4751: $3e $7b
  call Call_000_0a46                              ; $4753: $cd $46 $0a
  jr nz, jr_005_477b                              ; $4756: $20 $23

  ldh a, [rSVBK]                                  ; $4758: $f0 $70
  push af                                         ; $475a: $f5
  ld a, $05                                       ; $475b: $3e $05
  ldh [rSVBK], a                                  ; $475d: $e0 $70
  ld b, h                                         ; $475f: $44
  ld c, l                                         ; $4760: $4d
  call Call_000_33f3                              ; $4761: $cd $f3 $33
  rlca                                            ; $4764: $07
  rrca                                            ; $4765: $0f
  ld e, a                                         ; $4766: $5f
  ld de, $0005                                    ; $4767: $11 $05 $00
  add hl, de                                      ; $476a: $19
  ld a, [hl+]                                     ; $476b: $2a
  ld h, [hl]                                      ; $476c: $66
  ld l, a                                         ; $476d: $6f
  pop af                                          ; $476e: $f1
  ldh [rSVBK], a                                  ; $476f: $e0 $70
  ld a, h                                         ; $4771: $7c
  or l                                            ; $4772: $b5
  jr z, jr_005_477b                               ; $4773: $28 $06

  ld hl, $002a                                    ; $4775: $21 $2a $00
  add hl, bc                                      ; $4778: $09
  set 0, [hl]                                     ; $4779: $cb $c6

jr_005_477b:
  pop bc                                          ; $477b: $c1
  ret                                             ; $477c: $c9


  push bc                                         ; $477d: $c5
  ldh a, [rSVBK]                                  ; $477e: $f0 $70
  push af                                         ; $4780: $f5
  ld a, $05                                       ; $4781: $3e $05
  ldh [rSVBK], a                                  ; $4783: $e0 $70
  ld a, [$cc2a]                                   ; $4785: $fa $2a $cc
  dec a                                           ; $4788: $3d
  ld e, a                                         ; $4789: $5f
  ld a, $7b                                       ; $478a: $3e $7b
  call Call_000_0a46                              ; $478c: $cd $46 $0a
  ld b, h                                         ; $478f: $44
  ld c, l                                         ; $4790: $4d
  call Call_000_33f3                              ; $4791: $cd $f3 $33
  rlca                                            ; $4794: $07
  rrca                                            ; $4795: $0f
  ld e, a                                         ; $4796: $5f
  ld [hl], $ff                                    ; $4797: $36 $ff
  ld de, $000a                                    ; $4799: $11 $0a $00
  add hl, de                                      ; $479c: $19
  set 1, [hl]                                     ; $479d: $cb $ce
  ld a, $0a                                       ; $479f: $3e $0a
  call Call_000_28e6                              ; $47a1: $cd $e6 $28
  or a                                            ; $47a4: $b7
  ld a, $31                                       ; $47a5: $3e $31
  jr nz, jr_005_47ab                              ; $47a7: $20 $02

  ld a, $1c                                       ; $47a9: $3e $1c

jr_005_47ab:
  call Call_000_2fd9                              ; $47ab: $cd $d9 $2f
  ld de, $7795                                    ; $47ae: $11 $95 $77
  call Call_000_33f3                              ; $47b1: $cd $f3 $33
  nop                                             ; $47b4: $00
  rst $38                                         ; $47b5: $ff
  add hl, bc                                      ; $47b6: $09
  xor a                                           ; $47b7: $af
  ldh [$ffd2], a                                  ; $47b8: $e0 $d2
  pop af                                          ; $47ba: $f1
  ldh [rSVBK], a                                  ; $47bb: $e0 $70
  pop bc                                          ; $47bd: $c1
  ret                                             ; $47be: $c9


  ld a, $3a                                       ; $47bf: $3e $3a
  ldh [$ff9a], a                                  ; $47c1: $e0 $9a
  ld a, $7f                                       ; $47c3: $3e $7f
  call Call_000_04e0                              ; $47c5: $cd $e0 $04
  ld a, $3b                                       ; $47c8: $3e $3b
  ldh [$ff9a], a                                  ; $47ca: $e0 $9a
  ld a, $7f                                       ; $47cc: $3e $7f
  jp Jump_000_04e0                                ; $47ce: $c3 $e0 $04


  xor a                                           ; $47d1: $af
  ld [$cc2c], a                                   ; $47d2: $ea $2c $cc
  rst $18                                         ; $47d5: $df
  call Call_000_33f3                              ; $47d6: $cd $f3 $33

  db $03, $69, $52

  ld hl, $4463                                    ; $47dc: $21 $63 $44
  call Call_000_3013                              ; $47df: $cd $13 $30
  ld a, $7c                                       ; $47e2: $3e $7c
  ld [$c159], a                                   ; $47e4: $ea $59 $c1
  ld a, $03                                       ; $47e7: $3e $03
  ld [$c1a2], a                                   ; $47e9: $ea $a2 $c1
  ld a, [$cda5]                                   ; $47ec: $fa $a5 $cd
  ld hl, $1fc6                                    ; $47ef: $21 $c6 $1f
  call Call_000_33f3                              ; $47f2: $cd $f3 $33

  db $01, $75, $66

  rst $20                                         ; $47f8: $e7
  ret                                             ; $47f9: $c9


  ld a, $ff                                       ; $47fa: $3e $ff
  ld [$cda5], a                                   ; $47fc: $ea $a5 $cd
  ret                                             ; $47ff: $c9


  ld a, [$cc49]                                   ; $4800: $fa $49 $cc
  or a                                            ; $4803: $b7
  jr z, jr_005_4816                               ; $4804: $28 $10

  cp $0b                                          ; $4806: $fe $0b
  jr z, jr_005_4812                               ; $4808: $28 $08

  cp $0c                                          ; $480a: $fe $0c
  jr z, jr_005_4812                               ; $480c: $28 $04

  ld a, $26                                       ; $480e: $3e $26
  jr jr_005_4818                                  ; $4810: $18 $06

jr_005_4812:
  ld a, $07                                       ; $4812: $3e $07
  jr jr_005_4818                                  ; $4814: $18 $02

jr_005_4816:
  ld a, $4a                                       ; $4816: $3e $4a

jr_005_4818:
  ld hl, $cc5c                                    ; $4818: $21 $5c $cc
  cp [hl]                                         ; $481b: $be
  ret z                                           ; $481c: $c8

  call Call_000_394b                              ; $481d: $cd $4b $39
  ld hl, $012c                                    ; $4820: $21 $2c $01
  jp Jump_000_3916                                ; $4823: $c3 $16 $39


  rst $18                                         ; $4826: $df
  call Call_000_33f3                              ; $4827: $cd $f3 $33
  inc bc                                          ; $482a: $03
  ld l, c                                         ; $482b: $69
  ld d, d                                         ; $482c: $52
  rst $20                                         ; $482d: $e7
  ret                                             ; $482e: $c9


  push bc                                         ; $482f: $c5
  rst $18                                         ; $4830: $df
  call Call_000_33f3                              ; $4831: $cd $f3 $33

  db $03, $69, $52

  jp Jump_005_494d                                ; $4837: $c3 $4d $49


  ld hl, $ffb9                                    ; $483a: $21 $b9 $ff
  ld [hl], $cf                                    ; $483d: $36 $cf
  inc hl                                          ; $483f: $23
  ld [hl], $00                                    ; $4840: $36 $00
  ld a, $b2                                       ; $4842: $3e $b2
  call Call_000_33f3                              ; $4844: $cd $f3 $33
  nop                                             ; $4847: $00
  jr c, @+$14                                     ; $4848: $38 $12

  ld a, $04                                       ; $484a: $3e $04
  ldh [$ff9a], a                                  ; $484c: $e0 $9a
  ld a, $2a                                       ; $484e: $3e $2a
  ldh [$ff9f], a                                  ; $4850: $e0 $9f
  ld a, $b2                                       ; $4852: $3e $b2
  call Call_000_04e0                              ; $4854: $cd $e0 $04
  ld a, $b2                                       ; $4857: $3e $b2
  ld e, $04                                       ; $4859: $1e $04
  call Call_000_0a46                              ; $485b: $cd $46 $0a
  ld b, h                                         ; $485e: $44
  ld c, l                                         ; $485f: $4d
  call Call_000_33f3                              ; $4860: $cd $f3 $33
  nop                                             ; $4863: $00
  ld [hl], b                                      ; $4864: $70
  ld a, [bc]                                      ; $4865: $0a
  call Call_000_33f3                              ; $4866: $cd $f3 $33
  nop                                             ; $4869: $00
  rrca                                            ; $486a: $0f
  inc bc                                          ; $486b: $03
  ld de, $0000                                    ; $486c: $11 $00 $00
  rst $18                                         ; $486f: $df
  call Call_000_33f3                              ; $4870: $cd $f3 $33
  inc bc                                          ; $4873: $03
  ld l, c                                         ; $4874: $69
  ld d, d                                         ; $4875: $52
  ld a, [$cda5]                                   ; $4876: $fa $a5 $cd
  cp $ff                                          ; $4879: $fe $ff
  jr nz, jr_005_488e                              ; $487b: $20 $11

  ld hl, $17e3                                    ; $487d: $21 $e3 $17
  ld a, l                                         ; $4880: $7d
  ld [$cd59], a                                   ; $4881: $ea $59 $cd
  ld a, h                                         ; $4884: $7c
  ld [$cd5a], a                                   ; $4885: $ea $5a $cd
  xor a                                           ; $4888: $af
  ld [$cd58], a                                   ; $4889: $ea $58 $cd
  jr jr_005_489c                                  ; $488c: $18 $0e

jr_005_488e:
  ld [$cd58], a                                   ; $488e: $ea $58 $cd
  ld hl, $203e                                    ; $4891: $21 $3e $20
  ld a, l                                         ; $4894: $7d
  ld [$cd59], a                                   ; $4895: $ea $59 $cd
  ld a, h                                         ; $4898: $7c
  ld [$cd5a], a                                   ; $4899: $ea $5a $cd

Jump_005_489c:
jr_005_489c:
  ld hl, $446a                                    ; $489c: $21 $6a $44
  call Call_000_3013                              ; $489f: $cd $13 $30
  ld a, $7c                                       ; $48a2: $3e $7c
  ld [$c159], a                                   ; $48a4: $ea $59 $c1
  ld a, $04                                       ; $48a7: $3e $04
  ld [$c1a2], a                                   ; $48a9: $ea $a2 $c1
  ld hl, $cd59                                    ; $48ac: $21 $59 $cd
  ld a, [hl+]                                     ; $48af: $2a
  ld h, [hl]                                      ; $48b0: $66
  ld l, a                                         ; $48b1: $6f
  ld a, [$cd58]                                   ; $48b2: $fa $58 $cd
  call Call_000_33f3                              ; $48b5: $cd $f3 $33
  ld bc, $6608                                    ; $48b8: $01 $08 $66
  rst $20                                         ; $48bb: $e7
  ld a, [$c1a6]                                   ; $48bc: $fa $a6 $c1
  ld e, a                                         ; $48bf: $5f
  ld a, [$c1a7]                                   ; $48c0: $fa $a7 $c1
  ld d, a                                         ; $48c3: $57
  or e                                            ; $48c4: $b3
  jr z, jr_005_48de                               ; $48c5: $28 $17

  call Call_000_33f3                              ; $48c7: $cd $f3 $33
  inc b                                           ; $48ca: $04
  add sp, $40                                     ; $48cb: $e8 $40
  call Call_000_33f3                              ; $48cd: $cd $f3 $33
  nop                                             ; $48d0: $00
  rrca                                            ; $48d1: $0f
  inc bc                                          ; $48d2: $03
  ld a, $b2                                       ; $48d3: $3e $b2
  ld e, $04                                       ; $48d5: $1e $04
  call Call_000_0a46                              ; $48d7: $cd $46 $0a
  ld b, h                                         ; $48da: $44
  ld c, l                                         ; $48db: $4d
  jr jr_005_48f3                                  ; $48dc: $18 $15

jr_005_48de:
  call Call_000_33f3                              ; $48de: $cd $f3 $33
  inc b                                           ; $48e1: $04
  or $40                                          ; $48e2: $f6 $40
  call Call_000_33f3                              ; $48e4: $cd $f3 $33
  nop                                             ; $48e7: $00
  rrca                                            ; $48e8: $0f
  inc bc                                          ; $48e9: $03
  ld a, $b2                                       ; $48ea: $3e $b2
  ld e, $04                                       ; $48ec: $1e $04
  call Call_000_0a46                              ; $48ee: $cd $46 $0a
  ld b, h                                         ; $48f1: $44
  ld c, l                                         ; $48f2: $4d

jr_005_48f3:
  call Call_000_37d9                              ; $48f3: $cd $d9 $37
  call Call_000_37d9                              ; $48f6: $cd $d9 $37
  call Call_000_33f3                              ; $48f9: $cd $f3 $33
  nop                                             ; $48fc: $00
  ld [hl], b                                      ; $48fd: $70
  ld a, [bc]                                      ; $48fe: $0a
  push bc                                         ; $48ff: $c5
  call Call_000_33f3                              ; $4900: $cd $f3 $33
  nop                                             ; $4903: $00
  rrca                                            ; $4904: $0f
  inc bc                                          ; $4905: $03
  call Call_000_11e2                              ; $4906: $cd $e2 $11
  pop bc                                          ; $4909: $c1
  or a                                            ; $490a: $b7
  jr z, jr_005_48f3                               ; $490b: $28 $e6

jr_005_490d:
  call Call_000_37d9                              ; $490d: $cd $d9 $37
  call Call_000_37d9                              ; $4910: $cd $d9 $37
  call Call_000_33f3                              ; $4913: $cd $f3 $33
  nop                                             ; $4916: $00
  ld [hl], b                                      ; $4917: $70
  ld a, [bc]                                      ; $4918: $0a
  push bc                                         ; $4919: $c5
  call Call_000_33f3                              ; $491a: $cd $f3 $33
  nop                                             ; $491d: $00
  rrca                                            ; $491e: $0f
  inc bc                                          ; $491f: $03
  call Call_000_11e2                              ; $4920: $cd $e2 $11
  pop bc                                          ; $4923: $c1
  or a                                            ; $4924: $b7
  jr z, jr_005_490d                               ; $4925: $28 $e6

  rst $18                                         ; $4927: $df
  call Call_000_33f3                              ; $4928: $cd $f3 $33
  inc bc                                          ; $492b: $03
  ld l, c                                         ; $492c: $69
  ld d, d                                         ; $492d: $52
  ld a, [$c1a6]                                   ; $492e: $fa $a6 $c1
  ld e, a                                         ; $4931: $5f
  ld a, [$c1a7]                                   ; $4932: $fa $a7 $c1
  ld d, a                                         ; $4935: $57
  or e                                            ; $4936: $b3
  jp z, Jump_005_493e                             ; $4937: $ca $3e $49

  xor a                                           ; $493a: $af
  jp Jump_005_489c                                ; $493b: $c3 $9c $48


Jump_005_493e:
  ld a, $b2                                       ; $493e: $3e $b2
  ld e, $04                                       ; $4940: $1e $04
  call Call_000_0a46                              ; $4942: $cd $46 $0a
  ld b, h                                         ; $4945: $44
  ld c, l                                         ; $4946: $4d
  call Call_000_33f3                              ; $4947: $cd $f3 $33
  nop                                             ; $494a: $00
  cp e                                            ; $494b: $bb
  dec c                                           ; $494c: $0d

Jump_005_494d:
  call Call_000_33f3                              ; $494d: $cd $f3 $33

  db $03, $a2, $53

  ld a, $ff                                       ; $4953: $3e $ff
  ld [$cda5], a                                   ; $4955: $ea $a5 $cd
  call Call_000_33f3                              ; $4958: $cd $f3 $33

  db $07, $ae, $5e

  pop bc                                          ; $495e: $c1
  ret                                             ; $495f: $c9


Call_005_4960:
  ld hl, $4323                                    ; $4960: $21 $23 $43
  ld a, [$cda5]                                   ; $4963: $fa $a5 $cd
  call Call_000_317a                              ; $4966: $cd $7a $31
  ld a, [hl+]                                     ; $4969: $2a
  cp $04                                          ; $496a: $fe $04
  jr z, jr_005_4973                               ; $496c: $28 $05

  ld de, $02c0                                    ; $496e: $11 $c0 $02
  jr jr_005_498b                                  ; $4971: $18 $18

jr_005_4973:
  ldh a, [$ffd6]                                  ; $4973: $f0 $d6
  cp $34                                          ; $4975: $fe $34
  jr z, jr_005_4984                               ; $4977: $28 $0b

  ld a, [$cc49]                                   ; $4979: $fa $49 $cc
  cp $07                                          ; $497c: $fe $07
  jr z, jr_005_4984                               ; $497e: $28 $04

  cp $05                                          ; $4980: $fe $05
  jr nz, jr_005_4988                              ; $4982: $20 $04

jr_005_4984:
  xor a                                           ; $4984: $af
  ld [$c2b9], a                                   ; $4985: $ea $b9 $c2

jr_005_4988:
  ld de, $0168                                    ; $4988: $11 $68 $01

jr_005_498b:
  ld hl, $ffb9                                    ; $498b: $21 $b9 $ff
  ld [hl], e                                      ; $498e: $73
  inc hl                                          ; $498f: $23
  ld [hl], d                                      ; $4990: $72
  ld hl, $5ec1                                    ; $4991: $21 $c1 $5e
  ld a, [$cda5]                                   ; $4994: $fa $a5 $cd
  call Call_000_3427                              ; $4997: $cd $27 $34

  db $00, $60, $2a

Call_005_499d:
  ld a, $03                                       ; $499d: $3e $03
  ld [$c1d8], a                                   ; $499f: $ea $d8 $c1
  ld a, $04                                       ; $49a2: $3e $04
  ld [$c1d9], a                                   ; $49a4: $ea $d9 $c1
  ld hl, $d000                                    ; $49a7: $21 $00 $d0
  ld de, $d000                                    ; $49aa: $11 $00 $d0
  ld bc, $0400                                    ; $49ad: $01 $00 $04
  call Call_000_33f3                              ; $49b0: $cd $f3 $33

  db $03, $e7, $76

  ld hl, $d500                                    ; $49b6: $21 $00 $d5
  ld de, $d400                                    ; $49b9: $11 $00 $d4
  ld bc, $0400                                    ; $49bc: $01 $00 $04
  call Call_000_33f3                              ; $49bf: $cd $f3 $33

  db $03, $e7, $76

  call Call_000_35e1                              ; $49c5: $cd $e1 $35

  db $00, $00, $20, $20

  ldh a, [rSVBK]                                  ; $49cc: $f0 $70
  push af                                         ; $49ce: $f5
  ld a, $01                                       ; $49cf: $3e $01
  ldh [rSVBK], a                                  ; $49d1: $e0 $70
  ld hl, $c0aa                                    ; $49d3: $21 $aa $c0
  set 2, [hl]                                     ; $49d6: $cb $d6
  call Call_000_3363                              ; $49d8: $cd $63 $33
  rst $18                                         ; $49db: $df
  ld a, [$cda5]                                   ; $49dc: $fa $a5 $cd
  ld de, $d000                                    ; $49df: $11 $00 $d0
  ld bc, $0000                                    ; $49e2: $01 $00 $00
  ld hl, $5f39                                    ; $49e5: $21 $39 $5f
  cp $22                                          ; $49e8: $fe $22
  jr z, jr_005_49f4                               ; $49ea: $28 $08

  call Call_000_33f3                              ; $49ec: $cd $f3 $33

  db $00, $d0, $33

  jr jr_005_49fa                                  ; $49f2: $18 $06

jr_005_49f4:
  call Call_000_33f3                              ; $49f4: $cd $f3 $33
  nop                                             ; $49f7: $00
  cp [hl]                                         ; $49f8: $be
  inc sp                                          ; $49f9: $33

jr_005_49fa:
  ld a, $05                                       ; $49fa: $3e $05
  ldh [$ffa9], a                                  ; $49fc: $e0 $a9
  xor a                                           ; $49fe: $af
  ldh [$ffa7], a                                  ; $49ff: $e0 $a7
  call Call_000_3363                              ; $4a01: $cd $63 $33
  ld hl, $c0aa                                    ; $4a04: $21 $aa $c0
  res 2, [hl]                                     ; $4a07: $cb $96
  xor a                                           ; $4a09: $af
  ldh [$ffa9], a                                  ; $4a0a: $e0 $a9
  ld a, $04                                       ; $4a0c: $3e $04
  ld [$c1d8], a                                   ; $4a0e: $ea $d8 $c1
  ld a, $03                                       ; $4a11: $3e $03
  ld [$c1d9], a                                   ; $4a13: $ea $d9 $c1
  ld de, $d000                                    ; $4a16: $11 $00 $d0
  ld hl, $d000                                    ; $4a19: $21 $00 $d0
  ld bc, $0400                                    ; $4a1c: $01 $00 $04
  call Call_000_33f3                              ; $4a1f: $cd $f3 $33

  db $03, $e7, $76

  ld de, $d500                                    ; $4a25: $11 $00 $d5
  ld hl, $d400                                    ; $4a28: $21 $00 $d4
  ld bc, $0400                                    ; $4a2b: $01 $00 $04
  call Call_000_33f3                              ; $4a2e: $cd $f3 $33

  db $03, $e7, $76

  rst $20                                         ; $4a34: $e7
  pop af                                          ; $4a35: $f1
  ldh [rSVBK], a                                  ; $4a36: $e0 $70
  ret                                             ; $4a38: $c9


Call_005_4a39:
  ldh a, [rSVBK]                                  ; $4a39: $f0 $70
  push af                                         ; $4a3b: $f5
  ld a, $02                                       ; $4a3c: $3e $02
  ldh [rSVBK], a                                  ; $4a3e: $e0 $70
  ld hl, $d080                                    ; $4a40: $21 $80 $d0
  ld de, $d000                                    ; $4a43: $11 $00 $d0
  call Call_000_0212                              ; $4a46: $cd $12 $02
  pop af                                          ; $4a49: $f1
  ldh [rSVBK], a                                  ; $4a4a: $e0 $70
  ld hl, $4323                                    ; $4a4c: $21 $23 $43
  ld a, [$cda5]                                   ; $4a4f: $fa $a5 $cd
  call Call_000_317a                              ; $4a52: $cd $7a $31
  ld a, [hl+]                                     ; $4a55: $2a
  or a                                            ; $4a56: $b7
  ret z                                           ; $4a57: $c8

  cp $04                                          ; $4a58: $fe $04
  jr z, jr_005_4a5f                               ; $4a5a: $28 $03

  cp $01                                          ; $4a5c: $fe $01
  ret nz                                          ; $4a5e: $c0

jr_005_4a5f:
  ld e, [hl]                                      ; $4a5f: $5e
  ld a, $09                                       ; $4a60: $3e $09
  jp Jump_005_71ef                                ; $4a62: $c3 $ef $71


Call_005_4a65:
  ld hl, $4323                                    ; $4a65: $21 $23 $43
  ld a, [$cda5]                                   ; $4a68: $fa $a5 $cd
  call Call_000_317a                              ; $4a6b: $cd $7a $31
  ld a, [hl+]                                     ; $4a6e: $2a
  or a                                            ; $4a6f: $b7
  jr z, jr_005_4a9d                               ; $4a70: $28 $2b

  cp $04                                          ; $4a72: $fe $04
  jr z, jr_005_4a7a                               ; $4a74: $28 $04

  cp $01                                          ; $4a76: $fe $01
  jr nz, jr_005_4a9d                              ; $4a78: $20 $23

jr_005_4a7a:
  ld e, [hl]                                      ; $4a7a: $5e
  push de                                         ; $4a7b: $d5
  ld hl, $c0aa                                    ; $4a7c: $21 $aa $c0
  set 3, [hl]                                     ; $4a7f: $cb $de
  ld a, [$cda5]                                   ; $4a81: $fa $a5 $cd
  ld hl, $5fb1                                    ; $4a84: $21 $b1 $5f
  call Call_000_33f3                              ; $4a87: $cd $f3 $33

  db $00, $43, $35

  pop de                                          ; $4a8d: $d1
  ld a, $09                                       ; $4a8e: $3e $09
  call Call_005_7223                              ; $4a90: $cd $23 $72
  ld hl, $7d58                                    ; $4a93: $21 $58 $7d
  call Call_000_33f3                              ; $4a96: $cd $f3 $33

  db $03, $88, $7e

  ret                                             ; $4a9c: $c9


jr_005_4a9d:
  ld hl, $c0aa                                    ; $4a9d: $21 $aa $c0
  set 1, [hl]                                     ; $4aa0: $cb $ce
  ld hl, $7d2b                                    ; $4aa2: $21 $2b $7d
  call Call_000_3427                              ; $4aa5: $cd $27 $34
  inc bc                                          ; $4aa8: $03
  adc b                                           ; $4aa9: $88
  ld a, [hl]                                      ; $4aaa: $7e

Call_005_4aab:
  ldh a, [rSVBK]                                  ; $4aab: $f0 $70
  push af                                         ; $4aad: $f5
  ld a, $05                                       ; $4aae: $3e $05
  ldh [rSVBK], a                                  ; $4ab0: $e0 $70
  ld a, [$cda5]                                   ; $4ab2: $fa $a5 $cd
  ld hl, $4373                                    ; $4ab5: $21 $73 $43
  call Call_000_316b                              ; $4ab8: $cd $6b $31
  ld a, [hl+]                                     ; $4abb: $2a
  ld [$d096], a                                   ; $4abc: $ea $96 $d0
  ldh [$ffc8], a                                  ; $4abf: $e0 $c8
  ld a, [hl+]                                     ; $4ac1: $2a
  ld [$d097], a                                   ; $4ac2: $ea $97 $d0
  ldh [$ffc9], a                                  ; $4ac5: $e0 $c9
  ld a, [hl+]                                     ; $4ac7: $2a
  ld [$d099], a                                   ; $4ac8: $ea $99 $d0
  ld a, [hl]                                      ; $4acb: $7e
  ld [$d09a], a                                   ; $4acc: $ea $9a $d0
  pop af                                          ; $4acf: $f1
  ldh [rSVBK], a                                  ; $4ad0: $e0 $70
  ret                                             ; $4ad2: $c9


Call_005_4ad3:
  ldh a, [rSVBK]                                  ; $4ad3: $f0 $70
  push af                                         ; $4ad5: $f5
  ld a, $05                                       ; $4ad6: $3e $05
  ldh [rSVBK], a                                  ; $4ad8: $e0 $70
  ld a, [$cda5]                                   ; $4ada: $fa $a5 $cd
  ld hl, $4413                                    ; $4add: $21 $13 $44
  call Call_000_317a                              ; $4ae0: $cd $7a $31
  ld a, [hl+]                                     ; $4ae3: $2a
  ld [$d09b], a                                   ; $4ae4: $ea $9b $d0
  ld [$d098], a                                   ; $4ae7: $ea $98 $d0
  ld a, [hl]                                      ; $4aea: $7e
  ld [$cdac], a                                   ; $4aeb: $ea $ac $cd
  pop af                                          ; $4aee: $f1
  ldh [rSVBK], a                                  ; $4aef: $e0 $70
  ret                                             ; $4af1: $c9


  ld bc, $0101                                    ; $4af2: $01 $01 $01
  ld bc, $0101                                    ; $4af5: $01 $01 $01
  ld bc, $0101                                    ; $4af8: $01 $01 $01
  ld bc, $0101                                    ; $4afb: $01 $01 $01
  ld bc, $0101                                    ; $4afe: $01 $01 $01
  ld bc, $0101                                    ; $4b01: $01 $01 $01
  ld bc, $0101                                    ; $4b04: $01 $01 $01
  ld bc, $0101                                    ; $4b07: $01 $01 $01
  ld bc, $0101                                    ; $4b0a: $01 $01 $01
  ld bc, $0101                                    ; $4b0d: $01 $01 $01
  ld bc, $0101                                    ; $4b10: $01 $01 $01
  ld bc, $0101                                    ; $4b13: $01 $01 $01
  ld bc, $0101                                    ; $4b16: $01 $01 $01
  ld bc, $0101                                    ; $4b19: $01 $01 $01
  ld bc, $0101                                    ; $4b1c: $01 $01 $01
  ld bc, $0101                                    ; $4b1f: $01 $01 $01
  ld bc, $0101                                    ; $4b22: $01 $01 $01
  ld a, $01                                       ; $4b25: $3e $01
  call Call_000_392b                              ; $4b27: $cd $2b $39
  ld hl, $4af2                                    ; $4b2a: $21 $f2 $4a
  ld a, [$cda5]                                   ; $4b2d: $fa $a5 $cd
  rst $08                                         ; $4b30: $cf
  bit 7, a                                        ; $4b31: $cb $7f
  jr nz, jr_005_4b39                              ; $4b33: $20 $04

  call Call_000_392b                              ; $4b35: $cd $2b $39
  ret                                             ; $4b38: $c9


jr_005_4b39:
  res 7, a                                        ; $4b39: $cb $bf
  call Call_000_394b                              ; $4b3b: $cd $4b $39
  ret                                             ; $4b3e: $c9


  ld a, $04                                       ; $4b3f: $3e $04
  call Call_000_33f3                              ; $4b41: $cd $f3 $33
  inc bc                                          ; $4b44: $03
  ld b, l                                         ; $4b45: $45
  ld a, e                                         ; $4b46: $7b
  ld a, $01                                       ; $4b47: $3e $01
  call Call_000_33f3                              ; $4b49: $cd $f3 $33
  inc bc                                          ; $4b4c: $03
  ld e, [hl]                                      ; $4b4d: $5e
  ld a, e                                         ; $4b4e: $7b
  ret                                             ; $4b4f: $c9


  push bc                                         ; $4b50: $c5
  ld e, $01                                       ; $4b51: $1e $01
  ld a, $7b                                       ; $4b53: $3e $7b
  call Call_000_0a46                              ; $4b55: $cd $46 $0a
  ld bc, $002d                                    ; $4b58: $01 $2d $00
  add hl, bc                                      ; $4b5b: $09
  res 3, [hl]                                     ; $4b5c: $cb $9e
  res 4, [hl]                                     ; $4b5e: $cb $a6
  pop bc                                          ; $4b60: $c1
  ret                                             ; $4b61: $c9


  push bc                                         ; $4b62: $c5
  ld e, $01                                       ; $4b63: $1e $01
  ld a, $7b                                       ; $4b65: $3e $7b
  call Call_000_0a46                              ; $4b67: $cd $46 $0a
  ld bc, $002d                                    ; $4b6a: $01 $2d $00
  add hl, bc                                      ; $4b6d: $09
  set 3, [hl]                                     ; $4b6e: $cb $de
  res 4, [hl]                                     ; $4b70: $cb $a6
  pop bc                                          ; $4b72: $c1
  ret                                             ; $4b73: $c9


  db $00, $07, $00, $00, $00, $00, $00, $00, $04, $00, $00, $12, $00, $16, $00, $12
  db $00, $d6, $03, $04

  nop                                             ; $4b88: $00
  nop                                             ; $4b89: $00
  nop                                             ; $4b8a: $00
  nop                                             ; $4b8b: $00
  nop                                             ; $4b8c: $00
  add hl, bc                                      ; $4b8d: $09
  nop                                             ; $4b8e: $00
  nop                                             ; $4b8f: $00
  nop                                             ; $4b90: $00
  ld [bc], a                                      ; $4b91: $02
  nop                                             ; $4b92: $00
  nop                                             ; $4b93: $00
  nop                                             ; $4b94: $00
  nop                                             ; $4b95: $00
  nop                                             ; $4b96: $00
  nop                                             ; $4b97: $00
  nop                                             ; $4b98: $00
  nop                                             ; $4b99: $00
  nop                                             ; $4b9a: $00
  nop                                             ; $4b9b: $00

  db $7e, $12, $04, $e4, $f0, $cd, $4b, $e7, $07, $22, $55, $2a, $d2, $4b, $e7, $07
  db $9f, $5a, $ea, $15, $0f, $e7, $03, $56, $6c, $e7, $07, $56, $5a, $ea, $e7, $07
  db $5b, $61, $e7, $09, $90, $67, $27, $c8, $4b, $18, $d2, $4b, $7e, $60, $18, $d8
  db $4b, $00, $0c, $9f, $10, $66, $7e, $60, $e7, $03, $56, $6c, $e7, $03, $2d, $6c
  db $09, $00, $87, $57, $4c, $37, $4d

  ld l, [hl]                                      ; $4be3: $6e
  ld c, l                                         ; $4be4: $4d

  db $66, $4e, $78, $4e, $8a, $4e, $21, $4f, $59, $4f

  ld h, h                                         ; $4bef: $64
  ld c, a                                         ; $4bf0: $4f

  db $ef, $50, $36, $51

  ld h, a                                         ; $4bf5: $67
  ld d, c                                         ; $4bf6: $51

  db $7b, $51

  sbc l                                           ; $4bf9: $9d
  ld d, c                                         ; $4bfa: $51
  cp l                                            ; $4bfb: $bd
  ld d, c                                         ; $4bfc: $51
  rst $18                                         ; $4bfd: $df
  ld d, c                                         ; $4bfe: $51
  dec a                                           ; $4bff: $3d
  ld d, d                                         ; $4c00: $52
  ld h, h                                         ; $4c01: $64
  ld d, d                                         ; $4c02: $52

  db $e0, $4f

  cp $4f                                          ; $4c05: $fe $4f
  db $21                                          ; $4c07: $21
  ld c, a                                         ; $4c08: $4f

  db $99, $50

  inc b                                           ; $4c0b: $04
  ld d, e                                         ; $4c0c: $53

  db $17, $53, $74, $53, $b1, $53, $cc, $53

  sbc $53                                         ; $4c15: $de $53

  db $ef, $53

  db $fc                                          ; $4c19: $fc
  ld d, e                                         ; $4c1a: $53

  db $1b, $54, $2e, $54

  adc d                                           ; $4c1f: $8a
  ld d, h                                         ; $4c20: $54
  and $54                                         ; $4c21: $e6 $54

  db $47, $59, $a7, $55, $ef, $55

  ld e, a                                         ; $4c29: $5f
  ld d, [hl]                                      ; $4c2a: $56
  ld a, [hl-]                                     ; $4c2b: $3a
  ld d, l                                         ; $4c2c: $55

  db $f1, $56, $68, $57

  ld a, a                                         ; $4c31: $7f
  ld d, a                                         ; $4c32: $57

  db $9c, $57, $b9, $57, $d8, $57, $12, $58, $2d, $58, $4a, $58

  add [hl]                                        ; $4c3f: $86
  ld e, b                                         ; $4c40: $58

  db $9b, $58

  sbc e                                           ; $4c43: $9b
  ld e, b                                         ; $4c44: $58
  sbc e                                           ; $4c45: $9b
  ld e, b                                         ; $4c46: $58

  db $b8, $58

  pop de                                          ; $4c49: $d1
  ld e, b                                         ; $4c4a: $58

  db $f9, $58

  inc de                                          ; $4c4d: $13
  ld e, c                                         ; $4c4e: $59

  db $f5, $57, $6b, $59

  sub h                                           ; $4c53: $94
  ld e, c                                         ; $4c54: $59
  or e                                            ; $4c55: $b3
  ld e, c                                         ; $4c56: $59

  db $e4, $f0, $d0, $4c, $e4, $f2, $f0, $4c, $e4, $f3, $0c, $4d, $60, $e4, $02, $8b
  db $4c, $e4, $03, $a6, $4c, $e7, $07, $80, $59, $9f, $ed, $e7, $07, $d1, $5a, $03
  db $d4, $fe, $e7, $07, $4d, $5a, $00, $01, $63, $00, $06, $f6, $02, $39, $7e, $00
  db $04, $57, $00, $00, $e7, $07, $80, $59, $9f, $ed, $03, $d4, $fe, $e7, $07, $4d
  db $5a, $00, $01, $63, $00, $06, $f6, $03, $39, $7e, $00, $04, $57, $00, $00, $e7
  db $07, $80, $59, $9f, $ed, $03, $d4, $fe, $e7, $07, $4d, $5a, $00, $01, $63, $00
  db $0a, $0c, $ed, $59, $9f, $10, $03, $9c, $ff, $e7, $07, $f1, $5a, $e7, $07, $e1
  db $5a, $ea, $e7, $07, $e9, $5e, $57, $00, $00

  ld h, b                                         ; $4cd0: $60
  rst $20                                         ; $4cd1: $e7
  rlca                                            ; $4cd2: $07
  add b                                           ; $4cd3: $80
  ld e, c                                         ; $4cd4: $59
  sbc a                                           ; $4cd5: $9f
  inc de                                          ; $4cd6: $13
  rst $20                                         ; $4cd7: $e7
  rlca                                            ; $4cd8: $07
  pop de                                          ; $4cd9: $d1
  ld e, d                                         ; $4cda: $5a
  inc bc                                          ; $4cdb: $03
  inc l                                           ; $4cdc: $2c
  ld bc, $07e7                                    ; $4cdd: $01 $e7 $07
  ld c, l                                         ; $4ce0: $4d
  ld e, d                                         ; $4ce1: $5a
  nop                                             ; $4ce2: $00
  ld bc, $0063                                    ; $4ce3: $01 $63 $00
  ld b, $f6                                       ; $4ce6: $06 $f6
  ldh a, [c]                                      ; $4ce8: $f2
  add hl, sp                                      ; $4ce9: $39
  ld a, [hl]                                      ; $4cea: $7e
  nop                                             ; $4ceb: $00
  inc b                                           ; $4cec: $04
  ld d, a                                         ; $4ced: $57
  nop                                             ; $4cee: $00
  nop                                             ; $4cef: $00
  ld h, [hl]                                      ; $4cf0: $66
  rst $20                                         ; $4cf1: $e7
  rlca                                            ; $4cf2: $07
  add b                                           ; $4cf3: $80
  ld e, c                                         ; $4cf4: $59
  sbc a                                           ; $4cf5: $9f
  inc de                                          ; $4cf6: $13
  inc bc                                          ; $4cf7: $03
  inc l                                           ; $4cf8: $2c
  ld bc, $07e7                                    ; $4cf9: $01 $e7 $07
  ld c, l                                         ; $4cfc: $4d
  ld e, d                                         ; $4cfd: $5a
  nop                                             ; $4cfe: $00
  ld bc, $0063                                    ; $4cff: $01 $63 $00
  ld b, $f6                                       ; $4d02: $06 $f6
  di                                              ; $4d04: $f3
  add hl, sp                                      ; $4d05: $39
  ld a, [hl]                                      ; $4d06: $7e
  nop                                             ; $4d07: $00
  inc b                                           ; $4d08: $04
  ld d, a                                         ; $4d09: $57
  nop                                             ; $4d0a: $00
  nop                                             ; $4d0b: $00
  ld h, [hl]                                      ; $4d0c: $66
  rst $20                                         ; $4d0d: $e7
  rlca                                            ; $4d0e: $07
  add b                                           ; $4d0f: $80
  ld e, c                                         ; $4d10: $59
  sbc a                                           ; $4d11: $9f
  inc de                                          ; $4d12: $13
  inc bc                                          ; $4d13: $03
  inc l                                           ; $4d14: $2c
  ld bc, $07e7                                    ; $4d15: $01 $e7 $07
  ld c, l                                         ; $4d18: $4d
  ld e, d                                         ; $4d19: $5a
  nop                                             ; $4d1a: $00
  ld bc, $0063                                    ; $4d1b: $01 $63 $00
  ld a, [bc]                                      ; $4d1e: $0a
  inc c                                           ; $4d1f: $0c
  db $ed                                          ; $4d20: $ed
  ld e, c                                         ; $4d21: $59
  sbc a                                           ; $4d22: $9f
  db $f4                                          ; $4d23: $f4
  inc bc                                          ; $4d24: $03
  ld h, h                                         ; $4d25: $64
  nop                                             ; $4d26: $00
  rst $20                                         ; $4d27: $e7
  rlca                                            ; $4d28: $07
  pop af                                          ; $4d29: $f1
  ld e, d                                         ; $4d2a: $5a
  rst $20                                         ; $4d2b: $e7
  rlca                                            ; $4d2c: $07
  pop hl                                          ; $4d2d: $e1
  ld e, d                                         ; $4d2e: $5a
  ld [$07e7], a                                   ; $4d2f: $ea $e7 $07
  jp hl                                           ; $4d32: $e9


  ld e, [hl]                                      ; $4d33: $5e
  ld d, a                                         ; $4d34: $57
  nop                                             ; $4d35: $00
  nop                                             ; $4d36: $00

  db $9f, $ed, $a2, $f8, $63, $e7, $07, $d1, $5a, $0c, $d9, $59, $03, $00, $00, $06
  db $00, $00, $0c, $d0, $59, $a2, $0e, $e7, $07, $f1, $5a, $e7, $07, $e1, $5a, $00
  db $04, $e7, $07, $9a, $56, $e7, $07, $48, $57, $0c, $5c, $5a, $e7, $07, $7e, $57
  db $e7, $07, $e9, $5e, $57, $00, $00

  jp nc, Jump_005_4e04                            ; $4d6e: $d2 $04 $4e

  daa                                             ; $4d71: $27
  ld c, [hl]                                      ; $4d72: $4e
  ld c, d                                         ; $4d73: $4a
  ld c, [hl]                                      ; $4d74: $4e
  ld [hl], a                                      ; $4d75: $77
  ld c, l                                         ; $4d76: $4d
  rst $20                                         ; $4d77: $e7
  rlca                                            ; $4d78: $07
  ret c                                           ; $4d79: $d8

  ld d, l                                         ; $4d7a: $55
  rst $20                                         ; $4d7b: $e7
  rlca                                            ; $4d7c: $07
  sbc d                                           ; $4d7d: $9a
  ld d, [hl]                                      ; $4d7e: $56
  rst $20                                         ; $4d7f: $e7
  rlca                                            ; $4d80: $07
  ld b, e                                         ; $4d81: $43
  ld h, l                                         ; $4d82: $65
  nop                                             ; $4d83: $00
  rrca                                            ; $4d84: $0f
  rst $20                                         ; $4d85: $e7
  rlca                                            ; $4d86: $07
  sbc d                                           ; $4d87: $9a
  ld h, [hl]                                      ; $4d88: $66
  rst $20                                         ; $4d89: $e7
  rlca                                            ; $4d8a: $07
  rrca                                            ; $4d8b: $0f
  ld h, [hl]                                      ; $4d8c: $66
  rst $20                                         ; $4d8d: $e7
  rlca                                            ; $4d8e: $07
  ret c                                           ; $4d8f: $d8

  ld h, [hl]                                      ; $4d90: $66
  rst $20                                         ; $4d91: $e7
  rlca                                            ; $4d92: $07
  ld c, l                                         ; $4d93: $4d
  ld e, d                                         ; $4d94: $5a
  ld h, e                                         ; $4d95: $63
  ret nz                                          ; $4d96: $c0

  inc d                                           ; $4d97: $14
  nop                                             ; $4d98: $00
  ld bc, $07e7                                    ; $4d99: $01 $e7 $07
  db $ec                                          ; $4d9c: $ec
  ld h, [hl]                                      ; $4d9d: $66
  nop                                             ; $4d9e: $00
  ld bc, $07e7                                    ; $4d9f: $01 $e7 $07
  db $ec                                          ; $4da2: $ec
  ld h, [hl]                                      ; $4da3: $66
  ccf                                             ; $4da4: $3f
  rst $20                                         ; $4da5: $e7
  ld e, $18                                       ; $4da6: $1e $18
  ld e, a                                         ; $4da8: $5f
  ld a, [hl+]                                     ; $4da9: $2a
  sbc b                                           ; $4daa: $98
  ld c, l                                         ; $4dab: $4d
  rst $20                                         ; $4dac: $e7
  rlca                                            ; $4dad: $07
  ld hl, $c057                                    ; $4dae: $21 $57 $c0
  rrca                                            ; $4db1: $0f
  nop                                             ; $4db2: $00
  ld bc, $07e7                                    ; $4db3: $01 $e7 $07
  db $ec                                          ; $4db6: $ec
  ld h, [hl]                                      ; $4db7: $66
  nop                                             ; $4db8: $00
  ld bc, $07e7                                    ; $4db9: $01 $e7 $07
  db $ec                                          ; $4dbc: $ec
  ld h, [hl]                                      ; $4dbd: $66
  ccf                                             ; $4dbe: $3f
  rst $20                                         ; $4dbf: $e7
  ld e, $18                                       ; $4dc0: $1e $18
  ld e, a                                         ; $4dc2: $5f
  ld a, [hl+]                                     ; $4dc3: $2a
  or d                                            ; $4dc4: $b2
  ld c, l                                         ; $4dc5: $4d
  rst $20                                         ; $4dc6: $e7
  rlca                                            ; $4dc7: $07
  ld a, [hl]                                      ; $4dc8: $7e
  ld d, a                                         ; $4dc9: $57
  rst $20                                         ; $4dca: $e7
  rlca                                            ; $4dcb: $07
  ldh [c], a                                      ; $4dcc: $e2
  ld h, [hl]                                      ; $4dcd: $66
  nop                                             ; $4dce: $00
  ld bc, $07e7                                    ; $4dcf: $01 $e7 $07
  ld h, c                                         ; $4dd2: $61
  ld h, [hl]                                      ; $4dd3: $66
  rst $20                                         ; $4dd4: $e7
  rlca                                            ; $4dd5: $07
  add $55                                         ; $4dd6: $c6 $55
  rst $20                                         ; $4dd8: $e7
  rlca                                            ; $4dd9: $07
  and $55                                         ; $4dda: $e6 $55
  daa                                             ; $4ddc: $27
  db $e3                                          ; $4ddd: $e3
  ld c, l                                         ; $4dde: $4d
  rst $20                                         ; $4ddf: $e7
  rlca                                            ; $4de0: $07
  jp hl                                           ; $4de1: $e9


  ld e, [hl]                                      ; $4de2: $5e
  rst $20                                         ; $4de3: $e7
  rlca                                            ; $4de4: $07
  call z, $e755                                   ; $4de5: $cc $55 $e7
  rlca                                            ; $4de8: $07
  and $55                                         ; $4de9: $e6 $55
  daa                                             ; $4deb: $27
  ldh a, [c]                                      ; $4dec: $f2
  ld c, l                                         ; $4ded: $4d
  rst $20                                         ; $4dee: $e7
  rlca                                            ; $4def: $07
  jp hl                                           ; $4df0: $e9


  ld e, [hl]                                      ; $4df1: $5e
  rst $20                                         ; $4df2: $e7
  rlca                                            ; $4df3: $07
  jp nc, $e755                                    ; $4df4: $d2 $55 $e7

  rlca                                            ; $4df7: $07
  and $55                                         ; $4df8: $e6 $55
  daa                                             ; $4dfa: $27
  ld bc, $e74e                                    ; $4dfb: $01 $4e $e7
  rlca                                            ; $4dfe: $07
  jp hl                                           ; $4dff: $e9


  ld e, [hl]                                      ; $4e00: $5e
  ld d, a                                         ; $4e01: $57
  nop                                             ; $4e02: $00
  nop                                             ; $4e03: $00

Jump_005_4e04:
  rst $20                                         ; $4e04: $e7
  rlca                                            ; $4e05: $07
  add $55                                         ; $4e06: $c6 $55
  rst $20                                         ; $4e08: $e7
  rlca                                            ; $4e09: $07
  and $55                                         ; $4e0a: $e6 $55
  daa                                             ; $4e0c: $27
  jr nz, jr_005_4e5d                              ; $4e0d: $20 $4e

  rst $20                                         ; $4e0f: $e7
  rlca                                            ; $4e10: $07
  xor e                                           ; $4e11: $ab
  ld e, c                                         ; $4e12: $59
  rst $20                                         ; $4e13: $e7
  rlca                                            ; $4e14: $07
  pop af                                          ; $4e15: $f1
  ld e, d                                         ; $4e16: $5a
  or $01                                          ; $4e17: $f6 $01
  add hl, sp                                      ; $4e19: $39
  ld a, [hl]                                      ; $4e1a: $7e
  ld h, e                                         ; $4e1b: $63
  ld [$0057], a                                   ; $4e1c: $ea $57 $00
  nop                                             ; $4e1f: $00
  or $01                                          ; $4e20: $f6 $01
  add hl, sp                                      ; $4e22: $39
  ld a, [hl]                                      ; $4e23: $7e
  ld d, a                                         ; $4e24: $57
  nop                                             ; $4e25: $00
  nop                                             ; $4e26: $00
  rst $20                                         ; $4e27: $e7
  rlca                                            ; $4e28: $07
  call z, $e755                                   ; $4e29: $cc $55 $e7
  rlca                                            ; $4e2c: $07
  and $55                                         ; $4e2d: $e6 $55
  daa                                             ; $4e2f: $27
  ld b, e                                         ; $4e30: $43
  ld c, [hl]                                      ; $4e31: $4e
  rst $20                                         ; $4e32: $e7
  rlca                                            ; $4e33: $07
  xor e                                           ; $4e34: $ab
  ld e, c                                         ; $4e35: $59
  rst $20                                         ; $4e36: $e7
  rlca                                            ; $4e37: $07
  pop af                                          ; $4e38: $f1
  ld e, d                                         ; $4e39: $5a
  or $02                                          ; $4e3a: $f6 $02
  add hl, sp                                      ; $4e3c: $39
  ld a, [hl]                                      ; $4e3d: $7e
  ld h, e                                         ; $4e3e: $63
  ld [$0057], a                                   ; $4e3f: $ea $57 $00
  nop                                             ; $4e42: $00
  or $02                                          ; $4e43: $f6 $02
  add hl, sp                                      ; $4e45: $39
  ld a, [hl]                                      ; $4e46: $7e
  ld d, a                                         ; $4e47: $57
  nop                                             ; $4e48: $00
  nop                                             ; $4e49: $00
  rst $20                                         ; $4e4a: $e7
  rlca                                            ; $4e4b: $07
  jp nc, $e755                                    ; $4e4c: $d2 $55 $e7

  rlca                                            ; $4e4f: $07
  xor e                                           ; $4e50: $ab
  ld e, c                                         ; $4e51: $59
  rst $20                                         ; $4e52: $e7
  rlca                                            ; $4e53: $07
  pop af                                          ; $4e54: $f1
  ld e, d                                         ; $4e55: $5a
  rst $20                                         ; $4e56: $e7
  rlca                                            ; $4e57: $07
  and $55                                         ; $4e58: $e6 $55
  daa                                             ; $4e5a: $27
  ld e, [hl]                                      ; $4e5b: $5e
  ld c, [hl]                                      ; $4e5c: $4e

jr_005_4e5d:
  ld h, e                                         ; $4e5d: $63
  ld [$03f6], a                                   ; $4e5e: $ea $f6 $03
  add hl, sp                                      ; $4e61: $39
  ld a, [hl]                                      ; $4e62: $7e
  ld d, a                                         ; $4e63: $57
  nop                                             ; $4e64: $00
  nop                                             ; $4e65: $00

  db $9f, $ed, $a2, $f8, $63, $e7, $07, $d1, $5a, $0c, $d9, $59, $0c, $3a, $5a, $57
  db $00, $00, $9f, $ed, $a2, $f8, $63, $e7, $07, $d1, $5a, $0c, $d9, $59, $0c, $3a
  db $5a, $57, $00, $00, $e4, $02, $fc, $4e, $e4, $03, $0d, $4f, $e4, $04, $17, $4f
  db $9f, $ed, $a2, $f8, $63, $e7, $07, $d1, $5a, $e7, $07, $bb, $5a, $e7, $07, $ef
  db $58, $00, $03, $f6, $02, $39, $7e, $00, $03, $f6, $02, $39, $7e, $00, $13, $03
  db $00, $00, $06, $00, $00, $a2, $0e, $03, $00, $00, $06, $00, $00, $e7, $07, $f1
  db $5a, $e7, $07, $e1, $5a, $ea, $60, $48, $06, $4b, $f8, $f6, $03, $39, $7e, $00
  db $05, $48, $02, $4b, $f4, $f6, $04, $39, $7e, $00, $05, $48, $fe, $4b, $f0, $f6
  db $03, $39, $7e, $00, $05, $48, $fa, $4b, $ec, $f6, $04, $39, $7e, $00, $0a, $e7
  db $07, $e9, $5e, $57, $00, $00, $9f, $ed, $a2, $f8, $63, $e7, $07, $4d, $5a, $e7
  db $07, $ef, $58, $ea, $57, $00, $00, $66, $63, $51, $10, $72, $00, $0a, $57, $00
  db $00, $66, $63, $51, $10, $72, $00, $0a, $57, $00, $00, $0c, $ed, $59, $03, $00
  db $00, $06, $00, $00, $9f, $f8, $a2, $f8, $63, $e7, $07, $e1, $5a, $e7, $07, $f1
  db $5a, $ea, $9f, $10, $a2, $08, $e7, $07, $e1, $5a, $e7, $07, $f1, $5a, $ea, $9f
  db $f8, $a2, $08, $e7, $07, $e1, $5a, $e7, $07, $f1, $5a, $ea, $e7, $07, $e9, $5e
  db $57, $00, $00, $0c, $ed, $59, $a2, $ee, $0c, $3a, $5a, $57, $00, $00

  db $e4                                          ; $4f64: $e4
  ld a, [bc]                                      ; $4f65: $0a
  jp c, $e74f                                     ; $4f66: $da $4f $e7

  rlca                                            ; $4f69: $07
  ld e, d                                         ; $4f6a: $5a
  ld l, e                                         ; $4f6b: $6b
  db $e4                                          ; $4f6c: $e4
  inc bc                                          ; $4f6d: $03
  ld a, b                                         ; $4f6e: $78
  ld c, a                                         ; $4f6f: $4f
  db $e4                                          ; $4f70: $e4
  inc b                                           ; $4f71: $04
  adc e                                           ; $4f72: $8b
  ld c, a                                         ; $4f73: $4f
  db $e4                                          ; $4f74: $e4
  dec b                                           ; $4f75: $05
  sbc [hl]                                        ; $4f76: $9e
  ld c, a                                         ; $4f77: $4f
  rst $20                                         ; $4f78: $e7
  rlca                                            ; $4f79: $07
  dec sp                                          ; $4f7a: $3b
  ld h, l                                         ; $4f7b: $65
  ldh a, [$ff72]                                  ; $4f7c: $f0 $72
  nop                                             ; $4f7e: $00
  di                                              ; $4f7f: $f3
  ld a, [hl-]                                     ; $4f80: $3a
  nop                                             ; $4f81: $00
  add c                                           ; $4f82: $81
  ld [hl+], a                                     ; $4f83: $22
  nop                                             ; $4f84: $00
  add h                                           ; $4f85: $84
  inc e                                           ; $4f86: $1c
  nop                                             ; $4f87: $00
  jr @-$50                                        ; $4f88: $18 $ae

  ld c, a                                         ; $4f8a: $4f
  rst $20                                         ; $4f8b: $e7
  rlca                                            ; $4f8c: $07
  inc sp                                          ; $4f8d: $33
  ld h, l                                         ; $4f8e: $65
  ldh a, [$ff7b]                                  ; $4f8f: $f0 $7b
  nop                                             ; $4f91: $00
  di                                              ; $4f92: $f3
  ld a, [hl-]                                     ; $4f93: $3a
  nop                                             ; $4f94: $00
  add c                                           ; $4f95: $81
  jr nz, jr_005_4f98                              ; $4f96: $20 $00

jr_005_4f98:
  add h                                           ; $4f98: $84
  inc a                                           ; $4f99: $3c
  nop                                             ; $4f9a: $00
  jr @-$50                                        ; $4f9b: $18 $ae

  ld c, a                                         ; $4f9d: $4f
  rst $20                                         ; $4f9e: $e7
  rlca                                            ; $4f9f: $07
  inc l                                           ; $4fa0: $2c
  ld h, l                                         ; $4fa1: $65
  ldh a, [rNR51]                                  ; $4fa2: $f0 $25
  nop                                             ; $4fa4: $00
  di                                              ; $4fa5: $f3
  ld e, e                                         ; $4fa6: $5b
  nop                                             ; $4fa7: $00
  add c                                           ; $4fa8: $81
  ld [hl], e                                      ; $4fa9: $73
  nop                                             ; $4faa: $00
  add h                                           ; $4fab: $84
  dec sp                                          ; $4fac: $3b
  nop                                             ; $4fad: $00
  nop                                             ; $4fae: $00
  rrca                                            ; $4faf: $0f
  or $0a                                          ; $4fb0: $f6 $0a
  add hl, sp                                      ; $4fb2: $39
  ld a, [hl]                                      ; $4fb3: $7e
  nop                                             ; $4fb4: $00
  ld bc, $e763                                    ; $4fb5: $01 $63 $e7
  rlca                                            ; $4fb8: $07
  ld c, l                                         ; $4fb9: $4d
  ld e, d                                         ; $4fba: $5a
  rst $20                                         ; $4fbb: $e7
  rlca                                            ; $4fbc: $07
  pop hl                                          ; $4fbd: $e1
  ld e, d                                         ; $4fbe: $5a
  rst $20                                         ; $4fbf: $e7
  rlca                                            ; $4fc0: $07
  rrca                                            ; $4fc1: $0f
  ld h, [hl]                                      ; $4fc2: $66
  ret nz                                          ; $4fc3: $c0

  inc d                                           ; $4fc4: $14
  nop                                             ; $4fc5: $00
  ld [bc], a                                      ; $4fc6: $02
  rst $20                                         ; $4fc7: $e7
  ld e, $18                                       ; $4fc8: $1e $18
  ld e, a                                         ; $4fca: $5f
  ccf                                             ; $4fcb: $3f
  ld a, [hl+]                                     ; $4fcc: $2a
  push bc                                         ; $4fcd: $c5
  ld c, a                                         ; $4fce: $4f
  rst $20                                         ; $4fcf: $e7
  rlca                                            ; $4fd0: $07
  ld h, c                                         ; $4fd1: $61
  ld h, [hl]                                      ; $4fd2: $66
  rst $20                                         ; $4fd3: $e7
  rlca                                            ; $4fd4: $07
  jp hl                                           ; $4fd5: $e9


  ld e, [hl]                                      ; $4fd6: $5e
  ld d, a                                         ; $4fd7: $57
  nop                                             ; $4fd8: $00
  nop                                             ; $4fd9: $00
  inc c                                           ; $4fda: $0c
  ret nc                                          ; $4fdb: $d0

  ld e, c                                         ; $4fdc: $59
  ld d, a                                         ; $4fdd: $57
  nop                                             ; $4fde: $00
  nop                                             ; $4fdf: $00

  db $0c, $ed, $59, $a2, $0c, $63, $e7, $07, $e1, $5a, $e7, $07, $f1, $5a, $ea, $e7
  db $07, $f9, $61, $e7, $07, $b8, $5e, $e7, $07, $43, $56, $57, $00, $00

  db $e4                                          ; $4ffe: $e4
  inc bc                                          ; $4fff: $03
  ld [hl], e                                      ; $5000: $73
  ld d, b                                         ; $5001: $50
  db $e4                                          ; $5002: $e4
  ld bc, $507b                                    ; $5003: $01 $7b $50
  db $e4                                          ; $5006: $e4
  ld [bc], a                                      ; $5007: $02
  add e                                           ; $5008: $83
  ld d, b                                         ; $5009: $50
  rst $20                                         ; $500a: $e7
  rlca                                            ; $500b: $07
  cp d                                            ; $500c: $ba

jr_005_500d:
  ld d, l                                         ; $500d: $55
  rst $20                                         ; $500e: $e7
  rlca                                            ; $500f: $07
  and $55                                         ; $5010: $e6 $55
  daa                                             ; $5012: $27
  add hl, de                                      ; $5013: $19
  ld d, b                                         ; $5014: $50

jr_005_5015:
  or $01                                          ; $5015: $f6 $01
  add hl, sp                                      ; $5017: $39
  ld a, [hl]                                      ; $5018: $7e
  rst $20                                         ; $5019: $e7
  rlca                                            ; $501a: $07
  ret nz                                          ; $501b: $c0

  ld d, l                                         ; $501c: $55
  rst $20                                         ; $501d: $e7
  rlca                                            ; $501e: $07
  and $55                                         ; $501f: $e6 $55
  daa                                             ; $5021: $27
  jr z, jr_005_5074                               ; $5022: $28 $50

  or $02                                          ; $5024: $f6 $02
  add hl, sp                                      ; $5026: $39
  ld a, [hl]                                      ; $5027: $7e
  rst $20                                         ; $5028: $e7
  rlca                                            ; $5029: $07
  or h                                            ; $502a: $b4
  ld d, l                                         ; $502b: $55
  rst $20                                         ; $502c: $e7
  rlca                                            ; $502d: $07
  and $55                                         ; $502e: $e6 $55
  daa                                             ; $5030: $27
  scf                                             ; $5031: $37
  ld d, b                                         ; $5032: $50
  or $03                                          ; $5033: $f6 $03
  add hl, sp                                      ; $5035: $39
  ld a, [hl]                                      ; $5036: $7e
  nop                                             ; $5037: $00
  ld e, $e7                                       ; $5038: $1e $e7
  rlca                                            ; $503a: $07
  or h                                            ; $503b: $b4
  ld d, l                                         ; $503c: $55
  rst $20                                         ; $503d: $e7
  rlca                                            ; $503e: $07
  and $55                                         ; $503f: $e6 $55
  daa                                             ; $5041: $27
  ld c, b                                         ; $5042: $48
  ld d, b                                         ; $5043: $50
  rst $20                                         ; $5044: $e7
  rlca                                            ; $5045: $07
  ld sp, hl                                       ; $5046: $f9
  ld h, c                                         ; $5047: $61
  rst $20                                         ; $5048: $e7
  rlca                                            ; $5049: $07
  cp d                                            ; $504a: $ba
  ld d, l                                         ; $504b: $55
  rst $20                                         ; $504c: $e7
  rlca                                            ; $504d: $07
  and $55                                         ; $504e: $e6 $55
  daa                                             ; $5050: $27
  ld d, a                                         ; $5051: $57
  ld d, b                                         ; $5052: $50
  rst $20                                         ; $5053: $e7
  rlca                                            ; $5054: $07
  ld sp, hl                                       ; $5055: $f9
  ld h, c                                         ; $5056: $61
  rst $20                                         ; $5057: $e7
  rlca                                            ; $5058: $07
  ret nz                                          ; $5059: $c0

  ld d, l                                         ; $505a: $55
  rst $20                                         ; $505b: $e7
  rlca                                            ; $505c: $07
  and $55                                         ; $505d: $e6 $55
  daa                                             ; $505f: $27
  ld h, [hl]                                      ; $5060: $66
  ld d, b                                         ; $5061: $50
  rst $20                                         ; $5062: $e7
  rlca                                            ; $5063: $07
  ld sp, hl                                       ; $5064: $f9
  ld h, c                                         ; $5065: $61
  nop                                             ; $5066: $00
  ld e, $e7                                       ; $5067: $1e $e7
  rlca                                            ; $5069: $07
  cp b                                            ; $506a: $b8
  ld e, [hl]                                      ; $506b: $5e
  rst $20                                         ; $506c: $e7
  rlca                                            ; $506d: $07
  ld b, e                                         ; $506e: $43
  ld d, [hl]                                      ; $506f: $56
  ld d, a                                         ; $5070: $57
  nop                                             ; $5071: $00
  nop                                             ; $5072: $00
  inc c                                           ; $5073: $0c

jr_005_5074:
  ld hl, sp+$59                                   ; $5074: $f8 $59
  and d                                           ; $5076: $a2
  inc c                                           ; $5077: $0c
  jr @-$73                                        ; $5078: $18 $8b

  ld d, b                                         ; $507a: $50
  inc c                                           ; $507b: $0c
  inc bc                                          ; $507c: $03
  ld e, d                                         ; $507d: $5a
  and d                                           ; $507e: $a2
  inc c                                           ; $507f: $0c
  jr jr_005_500d                                  ; $5080: $18 $8b

  ld d, b                                         ; $5082: $50
  inc c                                           ; $5083: $0c
  ld c, $5a                                       ; $5084: $0e $5a
  and d                                           ; $5086: $a2
  inc c                                           ; $5087: $0c
  jr jr_005_5015                                  ; $5088: $18 $8b

  ld d, b                                         ; $508a: $50
  ld h, e                                         ; $508b: $63
  rst $20                                         ; $508c: $e7
  rlca                                            ; $508d: $07
  pop hl                                          ; $508e: $e1
  ld e, d                                         ; $508f: $5a
  rst $20                                         ; $5090: $e7
  rlca                                            ; $5091: $07
  pop af                                          ; $5092: $f1
  ld e, d                                         ; $5093: $5a
  nop                                             ; $5094: $00
  ld e, $57                                       ; $5095: $1e $57
  nop                                             ; $5097: $00
  nop                                             ; $5098: $00

  db $e4, $02, $de, $50, $e7, $07, $ab, $59, $a2, $0c, $e7, $07, $4d, $5a, $00, $01
  db $63, $ea, $63, $e7, $07, $d1, $5a, $1b, $74, $4b, $06, $9c, $ff, $90, $0f, $f6
  db $02, $48, $00, $4b, $06, $39, $7e, $00, $05, $93, $e4, $00, $ca, $50, $18, $b8
  db $50, $e7, $07, $f1, $5a, $ea, $e7, $06, $e4, $7b, $e7, $07, $b8, $5e, $e7, $07
  db $43, $56, $57, $00, $00, $e7, $07, $e1, $5a, $63, $e7, $07, $bb, $5a, $06, $96
  db $00, $00, $18, $57, $00, $00, $e4, $02, $2d, $51, $9f, $ed, $a2, $f8, $63, $e7
  db $07, $d1, $5a, $0c, $d9, $59, $60, $f6, $02, $48, $fc, $4b, $0c, $39, $7e, $f6
  db $02, $48, $04, $4b, $0c, $39, $7e, $f6, $02, $48, $f8, $4b, $08, $39, $7e, $f6
  db $02, $48, $08, $4b, $08, $39, $7e, $e7, $07, $e1, $5a, $00, $1c, $e7, $07, $e9
  db $5e, $57, $00, $00, $e7, $07, $f1, $5a, $63, $ea, $57, $00, $00, $e4, $02, $58
  db $51, $9f, $ed, $a2, $f8, $63, $e7, $07, $d1, $5a, $0c, $e3, $59, $03, $00, $00
  db $06, $00, $00, $f6, $02, $39, $7e, $15, $38, $0c, $d0, $59, $57, $00, $00, $e7
  db $07, $ab, $59, $a2, $0e, $00, $0c, $63, $0c, $3a, $5a, $57, $00, $00

  sbc a                                           ; $5167: $9f
  db $ed                                          ; $5168: $ed
  and d                                           ; $5169: $a2
  ld hl, sp+$63                                   ; $516a: $f8 $63
  rst $20                                         ; $516c: $e7
  rlca                                            ; $516d: $07
  pop de                                          ; $516e: $d1
  ld e, d                                         ; $516f: $5a
  inc c                                           ; $5170: $0c
  reti                                            ; $5171: $d9


  ld e, c                                         ; $5172: $59
  and d                                           ; $5173: $a2
  ld c, $0c                                       ; $5174: $0e $0c
  ld a, [hl-]                                     ; $5176: $3a
  ld e, d                                         ; $5177: $5a
  ld d, a                                         ; $5178: $57
  nop                                             ; $5179: $00
  nop                                             ; $517a: $00

  db $0c, $ed, $59, $a2, $0c, $63, $e7, $07, $e1, $5a, $e7, $07, $f1, $5a, $ea, $e7
  db $07, $7c, $56, $e7, $07, $1c, $62, $e7, $07, $b8, $5e, $e7, $07, $43, $56, $57
  db $00, $00

  inc c                                           ; $519d: $0c
  db $ed                                          ; $519e: $ed
  ld e, c                                         ; $519f: $59
  ld h, e                                         ; $51a0: $63
  rst $20                                         ; $51a1: $e7
  rlca                                            ; $51a2: $07
  pop hl                                          ; $51a3: $e1
  ld e, d                                         ; $51a4: $5a
  rst $20                                         ; $51a5: $e7
  rlca                                            ; $51a6: $07
  pop af                                          ; $51a7: $f1
  ld e, d                                         ; $51a8: $5a
  ld [$07e7], a                                   ; $51a9: $ea $e7 $07
  ld a, h                                         ; $51ac: $7c
  ld d, [hl]                                      ; $51ad: $56
  rst $20                                         ; $51ae: $e7
  rlca                                            ; $51af: $07
  ld [hl], b                                      ; $51b0: $70
  ld h, d                                         ; $51b1: $62
  rst $20                                         ; $51b2: $e7
  rlca                                            ; $51b3: $07
  cp b                                            ; $51b4: $b8
  ld e, [hl]                                      ; $51b5: $5e
  rst $20                                         ; $51b6: $e7
  rlca                                            ; $51b7: $07
  ld b, e                                         ; $51b8: $43
  ld d, [hl]                                      ; $51b9: $56
  ld d, a                                         ; $51ba: $57
  nop                                             ; $51bb: $00
  nop                                             ; $51bc: $00
  inc c                                           ; $51bd: $0c
  db $ed                                          ; $51be: $ed
  ld e, c                                         ; $51bf: $59
  and d                                           ; $51c0: $a2
  inc c                                           ; $51c1: $0c
  ld h, e                                         ; $51c2: $63
  rst $20                                         ; $51c3: $e7
  rlca                                            ; $51c4: $07
  pop hl                                          ; $51c5: $e1
  ld e, d                                         ; $51c6: $5a
  rst $20                                         ; $51c7: $e7
  rlca                                            ; $51c8: $07
  pop af                                          ; $51c9: $f1
  ld e, d                                         ; $51ca: $5a
  ld [$07e7], a                                   ; $51cb: $ea $e7 $07
  ld a, h                                         ; $51ce: $7c
  ld d, [hl]                                      ; $51cf: $56
  rst $20                                         ; $51d0: $e7
  rlca                                            ; $51d1: $07
  db $ec                                          ; $51d2: $ec
  ld h, d                                         ; $51d3: $62
  rst $20                                         ; $51d4: $e7
  rlca                                            ; $51d5: $07
  cp b                                            ; $51d6: $b8
  ld e, [hl]                                      ; $51d7: $5e
  rst $20                                         ; $51d8: $e7
  rlca                                            ; $51d9: $07
  ld b, e                                         ; $51da: $43
  ld d, [hl]                                      ; $51db: $56
  ld d, a                                         ; $51dc: $57
  nop                                             ; $51dd: $00
  nop                                             ; $51de: $00
  db $e4                                          ; $51df: $e4
  nop                                             ; $51e0: $00
  db $eb                                          ; $51e1: $eb
  ld d, c                                         ; $51e2: $51
  db $e4                                          ; $51e3: $e4
  ld bc, $5208                                    ; $51e4: $01 $08 $52
  db $e4                                          ; $51e7: $e4
  ld [bc], a                                      ; $51e8: $02
  inc e                                           ; $51e9: $1c
  ld d, d                                         ; $51ea: $52
  inc c                                           ; $51eb: $0c
  db $ed                                          ; $51ec: $ed
  ld e, c                                         ; $51ed: $59
  sbc a                                           ; $51ee: $9f
  ld [$07e7], sp                                  ; $51ef: $08 $e7 $07
  ld c, l                                         ; $51f2: $4d
  ld e, d                                         ; $51f3: $5a
  ld h, e                                         ; $51f4: $63
  rst $20                                         ; $51f5: $e7
  rlca                                            ; $51f6: $07
  pop hl                                          ; $51f7: $e1
  ld e, d                                         ; $51f8: $5a
  nop                                             ; $51f9: $00
  ld b, $f6                                       ; $51fa: $06 $f6
  ld bc, $f848                                    ; $51fc: $01 $48 $f8
  ld c, e                                         ; $51ff: $4b
  nop                                             ; $5200: $00
  add hl, sp                                      ; $5201: $39
  ld a, [hl]                                      ; $5202: $7e
  nop                                             ; $5203: $00
  ld de, $0057                                    ; $5204: $11 $57 $00
  nop                                             ; $5207: $00
  rst $20                                         ; $5208: $e7
  rlca                                            ; $5209: $07
  ld c, l                                         ; $520a: $4d
  ld e, d                                         ; $520b: $5a
  ld h, e                                         ; $520c: $63
  nop                                             ; $520d: $00
  ld b, $f6                                       ; $520e: $06 $f6
  ld [bc], a                                      ; $5210: $02
  ld c, b                                         ; $5211: $48
  ld hl, sp+$4b                                   ; $5212: $f8 $4b
  nop                                             ; $5214: $00
  add hl, sp                                      ; $5215: $39
  ld a, [hl]                                      ; $5216: $7e
  nop                                             ; $5217: $00
  ld de, $0057                                    ; $5218: $11 $57 $00
  nop                                             ; $521b: $00
  rst $20                                         ; $521c: $e7
  rlca                                            ; $521d: $07
  ld c, l                                         ; $521e: $4d
  ld e, d                                         ; $521f: $5a
  ld h, e                                         ; $5220: $63
  nop                                             ; $5221: $00
  ld de, $e760                                    ; $5222: $11 $60 $e7
  rlca                                            ; $5225: $07
  xor e                                           ; $5226: $ab
  ld e, c                                         ; $5227: $59
  ld h, e                                         ; $5228: $63
  rst $20                                         ; $5229: $e7
  rlca                                            ; $522a: $07
  pop af                                          ; $522b: $f1
  ld e, d                                         ; $522c: $5a
  ld [$07e7], a                                   ; $522d: $ea $e7 $07
  nop                                             ; $5230: $00
  ld h, h                                         ; $5231: $64
  rst $20                                         ; $5232: $e7
  rlca                                            ; $5233: $07
  cp b                                            ; $5234: $b8
  ld e, [hl]                                      ; $5235: $5e
  rst $20                                         ; $5236: $e7
  rlca                                            ; $5237: $07
  ld b, e                                         ; $5238: $43
  ld d, [hl]                                      ; $5239: $56
  ld d, a                                         ; $523a: $57
  nop                                             ; $523b: $00
  nop                                             ; $523c: $00
  inc c                                           ; $523d: $0c
  db $ed                                          ; $523e: $ed
  ld e, c                                         ; $523f: $59
  and d                                           ; $5240: $a2
  jr jr_005_52a6                                  ; $5241: $18 $63

  rst $20                                         ; $5243: $e7
  rlca                                            ; $5244: $07
  pop hl                                          ; $5245: $e1
  ld e, d                                         ; $5246: $5a
  rst $20                                         ; $5247: $e7
  rlca                                            ; $5248: $07
  pop af                                          ; $5249: $f1
  ld e, d                                         ; $524a: $5a
  ld b, $b5                                       ; $524b: $06 $b5
  rst $38                                         ; $524d: $ff
  ld [$07e7], a                                   ; $524e: $ea $e7 $07
  adc b                                           ; $5251: $88
  ld d, [hl]                                      ; $5252: $56
  nop                                             ; $5253: $00
  dec b                                           ; $5254: $05
  rst $20                                         ; $5255: $e7
  rlca                                            ; $5256: $07
  ld h, h                                         ; $5257: $64
  ld h, h                                         ; $5258: $64
  rst $20                                         ; $5259: $e7
  rlca                                            ; $525a: $07
  cp b                                            ; $525b: $b8
  ld e, [hl]                                      ; $525c: $5e
  rst $20                                         ; $525d: $e7
  rlca                                            ; $525e: $07
  ld b, e                                         ; $525f: $43
  ld d, [hl]                                      ; $5260: $56
  ld d, a                                         ; $5261: $57
  nop                                             ; $5262: $00
  nop                                             ; $5263: $00
  db $e4                                          ; $5264: $e4
  inc bc                                          ; $5265: $03
  reti                                            ; $5266: $d9


  ld d, d                                         ; $5267: $52
  db $e4                                          ; $5268: $e4
  ld bc, $52e1                                    ; $5269: $01 $e1 $52
  db $e4                                          ; $526c: $e4
  ld [bc], a                                      ; $526d: $02
  jp hl                                           ; $526e: $e9


  ld d, d                                         ; $526f: $52
  rst $20                                         ; $5270: $e7
  rlca                                            ; $5271: $07
  add $55                                         ; $5272: $c6 $55
  rst $20                                         ; $5274: $e7
  rlca                                            ; $5275: $07
  and $55                                         ; $5276: $e6 $55
  daa                                             ; $5278: $27
  ld a, a                                         ; $5279: $7f
  ld d, d                                         ; $527a: $52
  rst $20                                         ; $527b: $e7
  rlca                                            ; $527c: $07
  ld h, h                                         ; $527d: $64
  ld h, h                                         ; $527e: $64
  rst $20                                         ; $527f: $e7
  rlca                                            ; $5280: $07
  call z, $e755                                   ; $5281: $cc $55 $e7
  rlca                                            ; $5284: $07
  and $55                                         ; $5285: $e6 $55
  daa                                             ; $5287: $27
  adc [hl]                                        ; $5288: $8e
  ld d, d                                         ; $5289: $52
  rst $20                                         ; $528a: $e7
  rlca                                            ; $528b: $07
  ld h, h                                         ; $528c: $64
  ld h, h                                         ; $528d: $64
  rst $20                                         ; $528e: $e7
  rlca                                            ; $528f: $07
  jp nc, $e755                                    ; $5290: $d2 $55 $e7

  rlca                                            ; $5293: $07
  and $55                                         ; $5294: $e6 $55
  daa                                             ; $5296: $27
  sbc l                                           ; $5297: $9d
  ld d, d                                         ; $5298: $52
  rst $20                                         ; $5299: $e7
  rlca                                            ; $529a: $07
  ld h, h                                         ; $529b: $64
  ld h, h                                         ; $529c: $64
  rst $20                                         ; $529d: $e7
  rlca                                            ; $529e: $07
  call z, $e755                                   ; $529f: $cc $55 $e7
  rlca                                            ; $52a2: $07
  and $55                                         ; $52a3: $e6 $55
  daa                                             ; $52a5: $27

jr_005_52a6:
  xor h                                           ; $52a6: $ac
  ld d, d                                         ; $52a7: $52
  or $01                                          ; $52a8: $f6 $01
  add hl, sp                                      ; $52aa: $39
  ld a, [hl]                                      ; $52ab: $7e
  rst $20                                         ; $52ac: $e7
  rlca                                            ; $52ad: $07
  jp nc, $e755                                    ; $52ae: $d2 $55 $e7

  rlca                                            ; $52b1: $07
  and $55                                         ; $52b2: $e6 $55
  daa                                             ; $52b4: $27
  cp e                                            ; $52b5: $bb
  ld d, d                                         ; $52b6: $52
  or $02                                          ; $52b7: $f6 $02
  add hl, sp                                      ; $52b9: $39
  ld a, [hl]                                      ; $52ba: $7e
  rst $20                                         ; $52bb: $e7
  rlca                                            ; $52bc: $07
  add $55                                         ; $52bd: $c6 $55
  rst $20                                         ; $52bf: $e7
  rlca                                            ; $52c0: $07
  and $55                                         ; $52c1: $e6 $55
  daa                                             ; $52c3: $27
  jp z, $f652                                     ; $52c4: $ca $52 $f6

  inc bc                                          ; $52c7: $03
  add hl, sp                                      ; $52c8: $39
  ld a, [hl]                                      ; $52c9: $7e
  nop                                             ; $52ca: $00
  ld bc, $3b00                                    ; $52cb: $01 $00 $3b
  rst $20                                         ; $52ce: $e7
  rlca                                            ; $52cf: $07
  cp b                                            ; $52d0: $b8

jr_005_52d1:
  ld e, [hl]                                      ; $52d1: $5e
  rst $20                                         ; $52d2: $e7
  rlca                                            ; $52d3: $07
  ld b, e                                         ; $52d4: $43
  ld d, [hl]                                      ; $52d5: $56
  ld d, a                                         ; $52d6: $57
  nop                                             ; $52d7: $00
  nop                                             ; $52d8: $00

jr_005_52d9:
  inc c                                           ; $52d9: $0c
  add hl, de                                      ; $52da: $19
  ld e, d                                         ; $52db: $5a
  and d                                           ; $52dc: $a2
  inc c                                           ; $52dd: $0c
  jr jr_005_52d1                                  ; $52de: $18 $f1

  ld d, d                                         ; $52e0: $52

jr_005_52e1:
  inc c                                           ; $52e1: $0c
  inc h                                           ; $52e2: $24
  ld e, d                                         ; $52e3: $5a
  and d                                           ; $52e4: $a2
  inc c                                           ; $52e5: $0c
  jr jr_005_52d9                                  ; $52e6: $18 $f1

  ld d, d                                         ; $52e8: $52
  inc c                                           ; $52e9: $0c
  cpl                                             ; $52ea: $2f
  ld e, d                                         ; $52eb: $5a
  and d                                           ; $52ec: $a2
  inc c                                           ; $52ed: $0c
  jr jr_005_52e1                                  ; $52ee: $18 $f1

  ld d, d                                         ; $52f0: $52
  ld h, e                                         ; $52f1: $63
  rst $20                                         ; $52f2: $e7
  rlca                                            ; $52f3: $07
  pop hl                                          ; $52f4: $e1
  ld e, d                                         ; $52f5: $5a
  rst $20                                         ; $52f6: $e7
  rlca                                            ; $52f7: $07
  pop af                                          ; $52f8: $f1
  ld e, d                                         ; $52f9: $5a
  nop                                             ; $52fa: $00
  dec e                                           ; $52fb: $1d
  ld b, $b5                                       ; $52fc: $06 $b5
  rst $38                                         ; $52fe: $ff
  nop                                             ; $52ff: $00
  inc e                                           ; $5300: $1c
  ld d, a                                         ; $5301: $57
  nop                                             ; $5302: $00
  nop                                             ; $5303: $00
  inc c                                           ; $5304: $0c
  db $ed                                          ; $5305: $ed
  ld e, c                                         ; $5306: $59
  and d                                           ; $5307: $a2
  ld c, $63                                       ; $5308: $0e $63
  rst $20                                         ; $530a: $e7
  rlca                                            ; $530b: $07
  pop de                                          ; $530c: $d1
  ld e, d                                         ; $530d: $5a
  inc c                                           ; $530e: $0c
  ret nc                                          ; $530f: $d0

  ld e, c                                         ; $5310: $59
  inc c                                           ; $5311: $0c
  ld a, [hl-]                                     ; $5312: $3a
  ld e, d                                         ; $5313: $5a
  ld d, a                                         ; $5314: $57
  nop                                             ; $5315: $00
  nop                                             ; $5316: $00

  db $e4, $00, $60, $53, $e4, $03, $46, $53, $e4, $04, $55, $53, $e4, $f0, $60, $53
  db $9f, $ed, $a2, $f8, $63, $0c, $d9, $59, $03, $00, $00, $06, $00, $00, $e4, $02
  db $3c, $53, $57, $00, $00, $0c, $d0, $59, $f6, $03, $39, $7e, $57, $00, $00, $66
  db $e7, $07, $ab, $59, $0c, $d0, $59, $f6, $04, $39, $7e, $57, $00, $00, $e7, $07
  db $ab, $59, $63, $0c, $3a, $5a, $57, $00, $00, $60, $f6, $01, $39, $7e, $00, $02
  db $f6, $01, $39, $7e, $00, $02, $f6, $02, $39, $7e, $57, $00, $00, $60, $66, $e4
  db $2a, $93, $53, $00, $16, $9f, $0d, $a2, $f7, $63, $e7, $07, $4d, $5a, $63, $00
  db $04, $f6, $2a, $39, $7e, $f6, $00, $00, $04, $57, $00, $00, $bd, $f8, $01, $66
  db $9f, $24, $a2, $f7, $63, $0c, $d9, $59, $03, $00, $00, $06, $00, $00, $e7, $07
  db $f1, $5a, $ea, $e7, $07, $de, $5e, $57, $00, $00, $66, $bd, $08, $02, $00, $0a
  db $9f, $12, $a2, $f3, $63, $0c, $d9, $59, $03, $00, $00, $06, $00, $00, $e7, $07
  db $de, $5e, $57, $00, $00, $66, $00, $0d, $e7, $07, $ab, $59, $9f, $f6, $a2, $08
  db $63, $0c, $3a, $5a, $57, $00, $00

  ld h, [hl]                                      ; $53de: $66
  nop                                             ; $53df: $00
  ld a, [bc]                                      ; $53e0: $0a
  sbc a                                           ; $53e1: $9f
  ld [de], a                                      ; $53e2: $12
  and d                                           ; $53e3: $a2
  di                                              ; $53e4: $f3
  ld h, e                                         ; $53e5: $63
  inc c                                           ; $53e6: $0c
  reti                                            ; $53e7: $d9


  ld e, c                                         ; $53e8: $59
  inc c                                           ; $53e9: $0c
  ld a, [hl-]                                     ; $53ea: $3a
  ld e, d                                         ; $53eb: $5a
  ld d, a                                         ; $53ec: $57
  nop                                             ; $53ed: $00
  nop                                             ; $53ee: $00

  db $00, $0d, $9f, $12, $a2, $f8, $63, $0c, $3a, $5a, $57, $00, $00

  rst $20                                         ; $53fc: $e7
  rlca                                            ; $53fd: $07
  sbc l                                           ; $53fe: $9d
  ld l, d                                         ; $53ff: $6a
  ld h, e                                         ; $5400: $63
  rst $20                                         ; $5401: $e7
  rlca                                            ; $5402: $07
  cp e                                            ; $5403: $bb
  ld e, d                                         ; $5404: $5a
  dec d                                           ; $5405: $15
  ld b, e                                         ; $5406: $43
  rst $20                                         ; $5407: $e7
  rlca                                            ; $5408: $07
  rst $28                                         ; $5409: $ef
  ld e, b                                         ; $540a: $58
  ld [$0200], a                                   ; $540b: $ea $00 $02
  rst $20                                         ; $540e: $e7
  rlca                                            ; $540f: $07
  nop                                             ; $5410: $00
  ld h, h                                         ; $5411: $64
  inc bc                                          ; $5412: $03
  nop                                             ; $5413: $00
  nop                                             ; $5414: $00
  ld b, $00                                       ; $5415: $06 $00
  nop                                             ; $5417: $00
  ld d, a                                         ; $5418: $57
  nop                                             ; $5419: $00
  nop                                             ; $541a: $00

  db $e7, $07, $ab, $59, $a2, $0c, $63, $e7, $07, $4d, $5a, $e7, $06, $02, $7b, $ea
  db $57, $00, $00, $e4, $02, $4c, $54, $e4, $03, $62, $54, $e7, $07, $ab, $59, $a2
  db $0a, $63, $e7, $07, $4d, $5a, $00, $10, $f6, $02, $39, $7e, $00, $22, $57, $00
  db $00, $e7, $07, $ab, $59, $a2, $fe, $63, $e7, $07, $4d, $5a, $00, $10, $f6, $03
  db $39, $7e, $00, $22, $57, $00, $00, $e7, $07, $ab, $59, $a2, $f2, $63, $e7, $07
  db $4d, $5a, $ea, $a2, $00, $e7, $07, $f1, $5a, $ea, $a2, $06, $e7, $07, $f1, $5a
  db $ea, $a2, $0c, $e7, $07, $f1, $5a, $ea, $e7, $07, $0e, $68, $57, $00, $00

  db $e4                                          ; $548a: $e4
  ld [bc], a                                      ; $548b: $02
  xor b                                           ; $548c: $a8
  ld d, h                                         ; $548d: $54
  db $e4                                          ; $548e: $e4
  inc bc                                          ; $548f: $03
  cp [hl]                                         ; $5490: $be
  ld d, h                                         ; $5491: $54
  rst $20                                         ; $5492: $e7
  rlca                                            ; $5493: $07
  xor e                                           ; $5494: $ab
  ld e, c                                         ; $5495: $59
  and d                                           ; $5496: $a2
  ld a, [bc]                                      ; $5497: $0a
  ld h, e                                         ; $5498: $63
  rst $20                                         ; $5499: $e7
  rlca                                            ; $549a: $07
  ld c, l                                         ; $549b: $4d
  ld e, d                                         ; $549c: $5a
  nop                                             ; $549d: $00
  db $10                                          ; $549e: $10
  or $02                                          ; $549f: $f6 $02
  add hl, sp                                      ; $54a1: $39
  ld a, [hl]                                      ; $54a2: $7e
  nop                                             ; $54a3: $00
  ld [hl+], a                                     ; $54a4: $22
  ld d, a                                         ; $54a5: $57
  nop                                             ; $54a6: $00
  nop                                             ; $54a7: $00
  rst $20                                         ; $54a8: $e7
  rlca                                            ; $54a9: $07
  xor e                                           ; $54aa: $ab
  ld e, c                                         ; $54ab: $59
  and d                                           ; $54ac: $a2
  cp $63                                          ; $54ad: $fe $63
  rst $20                                         ; $54af: $e7
  rlca                                            ; $54b0: $07
  ld c, l                                         ; $54b1: $4d
  ld e, d                                         ; $54b2: $5a
  nop                                             ; $54b3: $00
  db $10                                          ; $54b4: $10
  or $03                                          ; $54b5: $f6 $03
  add hl, sp                                      ; $54b7: $39
  ld a, [hl]                                      ; $54b8: $7e
  nop                                             ; $54b9: $00
  ld [hl+], a                                     ; $54ba: $22
  ld d, a                                         ; $54bb: $57
  nop                                             ; $54bc: $00
  nop                                             ; $54bd: $00
  rst $20                                         ; $54be: $e7
  rlca                                            ; $54bf: $07
  xor e                                           ; $54c0: $ab
  ld e, c                                         ; $54c1: $59
  and d                                           ; $54c2: $a2
  ldh a, [c]                                      ; $54c3: $f2
  ld h, e                                         ; $54c4: $63
  rst $20                                         ; $54c5: $e7
  rlca                                            ; $54c6: $07
  ld c, l                                         ; $54c7: $4d
  ld e, d                                         ; $54c8: $5a
  ld [$00a2], a                                   ; $54c9: $ea $a2 $00
  rst $20                                         ; $54cc: $e7
  rlca                                            ; $54cd: $07
  pop af                                          ; $54ce: $f1
  ld e, d                                         ; $54cf: $5a
  ld [$06a2], a                                   ; $54d0: $ea $a2 $06
  rst $20                                         ; $54d3: $e7
  rlca                                            ; $54d4: $07
  pop af                                          ; $54d5: $f1
  ld e, d                                         ; $54d6: $5a
  ld [$0ca2], a                                   ; $54d7: $ea $a2 $0c
  rst $20                                         ; $54da: $e7
  rlca                                            ; $54db: $07
  pop af                                          ; $54dc: $f1
  ld e, d                                         ; $54dd: $5a
  ld [$06e7], a                                   ; $54de: $ea $e7 $06
  daa                                             ; $54e1: $27
  ld a, e                                         ; $54e2: $7b
  ld d, a                                         ; $54e3: $57
  nop                                             ; $54e4: $00
  nop                                             ; $54e5: $00
  rst $20                                         ; $54e6: $e7
  rlca                                            ; $54e7: $07
  or h                                            ; $54e8: $b4
  ld d, l                                         ; $54e9: $55
  rst $20                                         ; $54ea: $e7
  rlca                                            ; $54eb: $07
  and $55                                         ; $54ec: $e6 $55
  daa                                             ; $54ee: $27
  ld bc, $e755                                    ; $54ef: $01 $55 $e7
  rlca                                            ; $54f2: $07
  xor e                                           ; $54f3: $ab
  ld e, c                                         ; $54f4: $59
  and d                                           ; $54f5: $a2
  inc c                                           ; $54f6: $0c
  ld h, e                                         ; $54f7: $63
  rst $20                                         ; $54f8: $e7
  rlca                                            ; $54f9: $07
  ld c, l                                         ; $54fa: $4d
  ld e, d                                         ; $54fb: $5a
  ld [$06e7], a                                   ; $54fc: $ea $e7 $06
  ld [bc], a                                      ; $54ff: $02
  ld a, e                                         ; $5500: $7b
  rst $20                                         ; $5501: $e7
  rlca                                            ; $5502: $07
  cp d                                            ; $5503: $ba
  ld d, l                                         ; $5504: $55
  rst $20                                         ; $5505: $e7
  rlca                                            ; $5506: $07
  and $55                                         ; $5507: $e6 $55
  daa                                             ; $5509: $27
  inc e                                           ; $550a: $1c
  ld d, l                                         ; $550b: $55
  rst $20                                         ; $550c: $e7
  rlca                                            ; $550d: $07
  xor e                                           ; $550e: $ab
  ld e, c                                         ; $550f: $59
  and d                                           ; $5510: $a2
  inc c                                           ; $5511: $0c
  ld h, e                                         ; $5512: $63
  rst $20                                         ; $5513: $e7
  rlca                                            ; $5514: $07
  ld c, l                                         ; $5515: $4d
  ld e, d                                         ; $5516: $5a
  ld [$06e7], a                                   ; $5517: $ea $e7 $06
  ld [bc], a                                      ; $551a: $02
  ld a, e                                         ; $551b: $7b
  rst $20                                         ; $551c: $e7
  rlca                                            ; $551d: $07
  ret nz                                          ; $551e: $c0

  ld d, l                                         ; $551f: $55
  rst $20                                         ; $5520: $e7
  rlca                                            ; $5521: $07
  and $55                                         ; $5522: $e6 $55
  daa                                             ; $5524: $27
  scf                                             ; $5525: $37
  ld d, l                                         ; $5526: $55
  rst $20                                         ; $5527: $e7
  rlca                                            ; $5528: $07
  xor e                                           ; $5529: $ab
  ld e, c                                         ; $552a: $59
  and d                                           ; $552b: $a2
  inc c                                           ; $552c: $0c
  ld h, e                                         ; $552d: $63
  rst $20                                         ; $552e: $e7
  rlca                                            ; $552f: $07
  ld c, l                                         ; $5530: $4d
  ld e, d                                         ; $5531: $5a
  ld [$06e7], a                                   ; $5532: $ea $e7 $06
  ld [bc], a                                      ; $5535: $02
  ld a, e                                         ; $5536: $7b
  ld d, a                                         ; $5537: $57
  nop                                             ; $5538: $00
  nop                                             ; $5539: $00
  db $e4                                          ; $553a: $e4
  inc bc                                          ; $553b: $03
  db $e3                                          ; $553c: $e3
  ld d, l                                         ; $553d: $55
  sub b                                           ; $553e: $90
  ld [bc], a                                      ; $553f: $02
  rst $20                                         ; $5540: $e7
  rlca                                            ; $5541: $07
  jp nc, $e755                                    ; $5542: $d2 $55 $e7

  rlca                                            ; $5545: $07
  and $55                                         ; $5546: $e6 $55
  daa                                             ; $5548: $27
  ld e, e                                         ; $5549: $5b
  ld d, l                                         ; $554a: $55
  rst $20                                         ; $554b: $e7
  rlca                                            ; $554c: $07
  ld [bc], a                                      ; $554d: $02
  ld e, h                                         ; $554e: $5c
  nop                                             ; $554f: $00
  rla                                             ; $5550: $17
  inc c                                           ; $5551: $0c
  xor e                                           ; $5552: $ab
  ld d, l                                         ; $5553: $55
  ld h, b                                         ; $5554: $60
  inc bc                                          ; $5555: $03
  nop                                             ; $5556: $00
  nop                                             ; $5557: $00
  ld b, $00                                       ; $5558: $06 $00
  nop                                             ; $555a: $00
  ld c, [hl]                                      ; $555b: $4e
  dec h                                           ; $555c: $25
  rst $20                                         ; $555d: $e7
  rlca                                            ; $555e: $07
  call z, $e755                                   ; $555f: $cc $55 $e7
  rlca                                            ; $5562: $07
  and $55                                         ; $5563: $e6 $55
  daa                                             ; $5565: $27
  add b                                           ; $5566: $80
  ld d, l                                         ; $5567: $55
  rst $20                                         ; $5568: $e7
  rlca                                            ; $5569: $07
  add b                                           ; $556a: $80
  ld e, c                                         ; $556b: $59
  ld c, b                                         ; $556c: $48
  ldh a, [c]                                      ; $556d: $f2
  ld c, e                                         ; $556e: $4b
  ldh a, [c]                                      ; $556f: $f2
  rst $20                                         ; $5570: $e7
  rlca                                            ; $5571: $07
  ld [bc], a                                      ; $5572: $02
  ld e, h                                         ; $5573: $5c
  nop                                             ; $5574: $00
  rla                                             ; $5575: $17
  inc c                                           ; $5576: $0c
  xor e                                           ; $5577: $ab
  ld d, l                                         ; $5578: $55
  ld h, b                                         ; $5579: $60
  inc bc                                          ; $557a: $03
  nop                                             ; $557b: $00
  nop                                             ; $557c: $00
  ld b, $00                                       ; $557d: $06 $00
  nop                                             ; $557f: $00
  ld c, [hl]                                      ; $5580: $4e
  dec h                                           ; $5581: $25
  rst $20                                         ; $5582: $e7
  rlca                                            ; $5583: $07
  add $55                                         ; $5584: $c6 $55
  rst $20                                         ; $5586: $e7
  rlca                                            ; $5587: $07
  and $55                                         ; $5588: $e6 $55
  daa                                             ; $558a: $27
  and h                                           ; $558b: $a4
  ld d, l                                         ; $558c: $55
  rst $20                                         ; $558d: $e7
  rlca                                            ; $558e: $07
  add b                                           ; $558f: $80
  ld e, c                                         ; $5590: $59
  ld c, b                                         ; $5591: $48
  ldh a, [c]                                      ; $5592: $f2
  ld c, e                                         ; $5593: $4b
  ldh a, [c]                                      ; $5594: $f2
  rst $20                                         ; $5595: $e7
  rlca                                            ; $5596: $07
  ld [bc], a                                      ; $5597: $02
  ld e, h                                         ; $5598: $5c
  nop                                             ; $5599: $00
  rla                                             ; $559a: $17
  inc c                                           ; $559b: $0c
  xor e                                           ; $559c: $ab
  ld d, l                                         ; $559d: $55
  inc bc                                          ; $559e: $03
  nop                                             ; $559f: $00
  nop                                             ; $55a0: $00
  ld b, $00                                       ; $55a1: $06 $00
  nop                                             ; $55a3: $00
  ld d, a                                         ; $55a4: $57
  nop                                             ; $55a5: $00
  nop                                             ; $55a6: $00

  db $e4, $03, $e3, $55, $e7, $07, $4d, $5a, $63, $e7, $07, $ef, $58, $00, $0a, $e7
  db $07, $bb, $5a, $00, $0f, $48, $00, $4b, $00, $f6, $03, $39, $7e, $03, $38, $ff
  db $06, $38, $ff, $e7, $07, $7c, $56, $e7, $07, $f1, $5a, $ea, $e7, $09, $14, $68
  db $e7, $07, $c8, $64, $e4, $01, $e0, $55

  rrca                                            ; $55df: $0f

  db $57, $00, $00, $63, $bd, $b0, $04, $51, $a4, $77, $00, $08, $57, $00, $00, $e4
  db $03, $4a, $56, $e7, $07, $4d, $5a, $63, $e7, $07, $bb, $5a, $e7, $07, $b7, $58
  db $ea, $03, $00, $00, $06, $00, $00, $e7, $06, $7e, $7b, $63, $a2, $f2, $7e, $1b
  db $7e, $4b, $f6, $03, $39, $7e, $00, $0a, $d5, $e7, $06, $45, $7b, $00, $07, $f6
  db $03, $39, $7e, $7e, $e7, $06, $6b, $7b, $00, $0a, $d5, $e7, $06, $45, $7b, $00
  db $07, $f6, $03, $39, $7e, $7e, $e7, $06, $6b, $7b, $00, $0a, $d5, $e7, $06, $45
  db $7b, $00, $04, $e7, $06, $6b, $7b, $57, $00, $00, $bd, $b8, $04, $e7, $07, $ab
  db $59, $9f, $08, $a2, $f6, $66, $63, $e7, $07, $f1, $5a, $ea, $57, $00, $00

  db $e4                                          ; $565f: $e4
  inc bc                                          ; $5660: $03
  ld c, d                                         ; $5661: $4a
  ld d, [hl]                                      ; $5662: $56
  db $e4                                          ; $5663: $e4
  dec b                                           ; $5664: $05
  rlca                                            ; $5665: $07
  ld d, [hl]                                      ; $5666: $56
  rst $20                                         ; $5667: $e7
  rlca                                            ; $5668: $07
  jp nc, $e755                                    ; $5669: $d2 $55 $e7

  rlca                                            ; $566c: $07
  and $55                                         ; $566d: $e6 $55
  daa                                             ; $566f: $27
  adc c                                           ; $5670: $89
  ld d, [hl]                                      ; $5671: $56
  rst $20                                         ; $5672: $e7
  rlca                                            ; $5673: $07
  ld c, l                                         ; $5674: $4d
  ld e, d                                         ; $5675: $5a
  ld h, e                                         ; $5676: $63

jr_005_5677:
  rst $20                                         ; $5677: $e7
  rlca                                            ; $5678: $07
  cp e                                            ; $5679: $bb
  ld e, d                                         ; $567a: $5a
  rst $20                                         ; $567b: $e7
  rlca                                            ; $567c: $07
  or a                                            ; $567d: $b7
  ld e, b                                         ; $567e: $58
  ld [$0003], a                                   ; $567f: $ea $03 $00
  nop                                             ; $5682: $00
  ld b, $00                                       ; $5683: $06 $00
  nop                                             ; $5685: $00
  jr @-$38                                        ; $5686: $18 $c6

  ld d, [hl]                                      ; $5688: $56
  rst $20                                         ; $5689: $e7
  rlca                                            ; $568a: $07
  call z, $e755                                   ; $568b: $cc $55 $e7
  rlca                                            ; $568e: $07
  and $55                                         ; $568f: $e6 $55
  daa                                             ; $5691: $27
  xor e                                           ; $5692: $ab
  ld d, [hl]                                      ; $5693: $56
  rst $20                                         ; $5694: $e7
  rlca                                            ; $5695: $07
  ld c, l                                         ; $5696: $4d
  ld e, d                                         ; $5697: $5a
  ld h, e                                         ; $5698: $63

jr_005_5699:
  rst $20                                         ; $5699: $e7
  rlca                                            ; $569a: $07
  cp e                                            ; $569b: $bb
  ld e, d                                         ; $569c: $5a
  rst $20                                         ; $569d: $e7
  rlca                                            ; $569e: $07
  or a                                            ; $569f: $b7
  ld e, b                                         ; $56a0: $58
  ld [$0003], a                                   ; $56a1: $ea $03 $00
  nop                                             ; $56a4: $00
  ld b, $00                                       ; $56a5: $06 $00
  nop                                             ; $56a7: $00
  jr jr_005_5677                                  ; $56a8: $18 $cd

  ld d, [hl]                                      ; $56aa: $56
  rst $20                                         ; $56ab: $e7
  rlca                                            ; $56ac: $07
  add $55                                         ; $56ad: $c6 $55
  rst $20                                         ; $56af: $e7
  rlca                                            ; $56b0: $07
  ld c, l                                         ; $56b1: $4d
  ld e, d                                         ; $56b2: $5a
  ld h, e                                         ; $56b3: $63
  rst $20                                         ; $56b4: $e7
  rlca                                            ; $56b5: $07
  cp e                                            ; $56b6: $bb
  ld e, d                                         ; $56b7: $5a
  rst $20                                         ; $56b8: $e7
  rlca                                            ; $56b9: $07
  or a                                            ; $56ba: $b7
  ld e, b                                         ; $56bb: $58
  ld [$0003], a                                   ; $56bc: $ea $03 $00
  nop                                             ; $56bf: $00
  ld b, $00                                       ; $56c0: $06 $00
  nop                                             ; $56c2: $00
  jr jr_005_5699                                  ; $56c3: $18 $d4

  ld d, [hl]                                      ; $56c5: $56
  rst $20                                         ; $56c6: $e7
  rlca                                            ; $56c7: $07
  jp nc, Jump_000_0c55                            ; $56c8: $d2 $55 $0c

  sbc $56                                         ; $56cb: $de $56
  rst $20                                         ; $56cd: $e7
  rlca                                            ; $56ce: $07
  call z, Call_000_0c55                           ; $56cf: $cc $55 $0c
  sbc $56                                         ; $56d2: $de $56
  rst $20                                         ; $56d4: $e7
  rlca                                            ; $56d5: $07
  add $55                                         ; $56d6: $c6 $55
  inc c                                           ; $56d8: $0c
  sbc $56                                         ; $56d9: $de $56
  ld d, a                                         ; $56db: $57
  nop                                             ; $56dc: $00
  nop                                             ; $56dd: $00
  rst $20                                         ; $56de: $e7
  rlca                                            ; $56df: $07
  and $55                                         ; $56e0: $e6 $55
  daa                                             ; $56e2: $27
  ldh a, [rRP]                                    ; $56e3: $f0 $56
  ld h, b                                         ; $56e5: $60
  rst $20                                         ; $56e6: $e7
  rlca                                            ; $56e7: $07
  ld bc, $f66e                                    ; $56e8: $01 $6e $f6
  dec b                                           ; $56eb: $05
  add hl, sp                                      ; $56ec: $39
  ld a, [hl]                                      ; $56ed: $7e
  nop                                             ; $56ee: $00
  ld [hl-], a                                     ; $56ef: $32
  rrca                                            ; $56f0: $0f

  db $e4, $fe, $40, $57, $e4, $05, $30, $57, $e7, $06, $45, $7b, $d5, $a2, $f8, $9f
  db $08, $0c, $d0, $59, $60, $00, $05, $e7, $07, $ab, $59, $a2, $08, $e7, $07, $bb
  db $5a, $63, $00, $12, $f6, $05, $39, $7e, $00, $0e, $e7, $06, $6b, $7b, $e7, $07
  db $0a, $67, $00, $0a, $e7, $07, $b8, $5e, $e7, $07, $43, $56, $57, $00, $00, $7e
  db $e7, $07, $ab, $59, $a2, $08, $e7, $07, $f1, $5a, $63, $ea, $57, $00, $00, $e7
  db $06, $0f, $7d, $00, $02, $0c, $4e, $5a, $e7, $06, $55, $7d, $e7, $07, $b4, $55
  db $e7, $07, $64, $64, $e7, $07, $ba, $55, $e7, $07, $64, $64, $e7, $07, $b8, $5e
  db $e7, $07, $43, $56, $57, $00, $00, $00, $0c, $e7, $07, $f1, $5a, $63, $ea, $e7
  db $06, $02, $7b, $e7, $07, $b8, $5e, $e7, $07, $43, $56, $57, $00, $00

  nop                                             ; $577f: $00
  ld a, [bc]                                      ; $5780: $0a
  rst $20                                         ; $5781: $e7
  rlca                                            ; $5782: $07
  xor e                                           ; $5783: $ab
  ld e, c                                         ; $5784: $59
  and d                                           ; $5785: $a2
  inc c                                           ; $5786: $0c
  rst $20                                         ; $5787: $e7
  rlca                                            ; $5788: $07
  ld c, l                                         ; $5789: $4d
  ld e, d                                         ; $578a: $5a
  ld h, e                                         ; $578b: $63
  ld [$07e7], a                                   ; $578c: $ea $e7 $07
  ld h, h                                         ; $578f: $64
  ld h, h                                         ; $5790: $64
  rst $20                                         ; $5791: $e7
  rlca                                            ; $5792: $07
  cp b                                            ; $5793: $b8
  ld e, [hl]                                      ; $5794: $5e
  rst $20                                         ; $5795: $e7
  rlca                                            ; $5796: $07
  ld b, e                                         ; $5797: $43
  ld d, [hl]                                      ; $5798: $56
  ld d, a                                         ; $5799: $57
  nop                                             ; $579a: $00
  nop                                             ; $579b: $00

  db $00, $0a, $e7, $07, $ab, $59, $a2, $0c, $e7, $07, $4d, $5a, $63, $ea, $e7, $07
  db $64, $64, $e7, $07, $b8, $5e, $e7, $07, $43, $56, $57, $00, $00, $00, $0a, $e7
  db $07, $ab, $59, $a2, $0c, $e7, $07, $4d, $5a, $63, $ea, $e7, $07, $de, $5e, $00
  db $05, $e7, $07, $00, $64, $e7, $07, $43, $56, $57, $00, $00, $00, $0a, $e7, $07
  db $ab, $59, $a2, $0c, $e7, $07, $4d, $5a, $63, $ea, $e7, $07, $ac, $62, $e7, $07
  db $b8, $5e, $e7, $07, $43, $56, $57, $00, $00, $00, $0a, $e7, $07, $ab, $59, $a2
  db $0c, $e7, $07, $4d, $5a, $63, $ea, $e7, $07, $76, $63, $e7, $07, $b8, $5e, $e7
  db $07, $43, $56, $57, $00, $00, $00, $0a, $e7, $07, $ab, $59, $a2, $0c, $e7, $07
  db $4d, $5a, $63, $ea, $e7, $07, $de, $5e, $00, $05, $e7, $07, $64, $64, $57, $00
  db $00, $00, $0a, $e7, $07, $ab, $59, $a2, $0c, $e7, $07, $4d, $5a, $63, $ea, $e7
  db $07, $00, $64, $e7, $07, $b8, $5e, $e7, $07, $43, $56, $57, $00, $00, $00, $14
  db $e4, $02, $7d, $58, $e7, $07, $ab, $59, $f6, $02, $48, $fc, $4b, $0c, $39, $7e
  db $f6, $02, $48, $04, $4b, $0c, $39, $7e, $f6, $02, $48, $f8, $4b, $08, $39, $7e
  db $f6, $02, $48, $08, $4b, $08, $39, $7e, $00, $1c, $e7, $07, $de, $5e, $57, $00
  db $00, $e7, $07, $f1, $5a, $63, $ea, $57, $00, $00

  rst $20                                         ; $5886: $e7
  rlca                                            ; $5887: $07
  xor e                                           ; $5888: $ab
  ld e, c                                         ; $5889: $59
  and d                                           ; $588a: $a2
  ld c, $00                                       ; $588b: $0e $00
  inc d                                           ; $588d: $14
  rst $20                                         ; $588e: $e7
  rlca                                            ; $588f: $07
  pop af                                          ; $5890: $f1
  ld e, d                                         ; $5891: $5a
  ld h, e                                         ; $5892: $63
  ld [$07e7], a                                   ; $5893: $ea $e7 $07
  sbc $5e                                         ; $5896: $de $5e
  ld d, a                                         ; $5898: $57
  nop                                             ; $5899: $00
  nop                                             ; $589a: $00

  db $00, $10, $66, $9f, $24, $a2, $f7, $63, $0c, $d9, $59, $03, $00, $00, $06, $00
  db $00, $e7, $07, $f1, $5a, $ea, $e7, $07, $de, $5e, $57, $00, $00, $00, $14, $e7
  db $07, $ab, $59, $9f, $f0, $66, $e7, $07, $f1, $5a, $63, $03, $64, $00, $ea, $e7
  db $07, $de, $5e, $57, $00, $00

  nop                                             ; $58d1: $00
  inc d                                           ; $58d2: $14
  rst $20                                         ; $58d3: $e7
  rlca                                            ; $58d4: $07
  and e                                           ; $58d5: $a3
  ld l, d                                         ; $58d6: $6a
  jr nc, @-$21                                    ; $58d7: $30 $dd

  ld e, b                                         ; $58d9: $58
  jr @-$0c                                        ; $58da: $18 $f2

  ld e, b                                         ; $58dc: $58
  dec d                                           ; $58dd: $15
  adc b                                           ; $58de: $88
  rst $20                                         ; $58df: $e7
  rlca                                            ; $58e0: $07
  cp d                                            ; $58e1: $ba
  ld d, l                                         ; $58e2: $55
  rst $20                                         ; $58e3: $e7
  rlca                                            ; $58e4: $07
  jp nc, $e76a                                    ; $58e5: $d2 $6a $e7

  rlca                                            ; $58e8: $07
  cp b                                            ; $58e9: $b8
  ld e, [hl]                                      ; $58ea: $5e
  rst $20                                         ; $58eb: $e7
  rlca                                            ; $58ec: $07
  ld b, e                                         ; $58ed: $43
  ld d, [hl]                                      ; $58ee: $56
  ld d, a                                         ; $58ef: $57
  nop                                             ; $58f0: $00
  nop                                             ; $58f1: $00
  rst $20                                         ; $58f2: $e7
  rlca                                            ; $58f3: $07
  sbc $5e                                         ; $58f4: $de $5e
  ld d, a                                         ; $58f6: $57
  nop                                             ; $58f7: $00
  nop                                             ; $58f8: $00

  db $66, $00, $10, $9f, $12, $a2, $f3, $63, $0c, $d9, $59, $e7, $07, $ec, $62, $e7
  db $07, $b8, $5e, $e7, $07, $43, $56, $57, $00, $00

  db $e4                                          ; $5913: $e4
  ld [bc], a                                      ; $5914: $02
  dec l                                           ; $5915: $2d
  ld e, c                                         ; $5916: $59
  inc c                                           ; $5917: $0c
  db $ed                                          ; $5918: $ed
  ld e, c                                         ; $5919: $59
  and d                                           ; $591a: $a2
  inc c                                           ; $591b: $0c
  ld h, e                                         ; $591c: $63
  rst $20                                         ; $591d: $e7
  rlca                                            ; $591e: $07
  pop hl                                          ; $591f: $e1
  ld e, d                                         ; $5920: $5a
  rst $20                                         ; $5921: $e7
  rlca                                            ; $5922: $07
  pop af                                          ; $5923: $f1
  ld e, d                                         ; $5924: $5a
  ld [$02f6], a                                   ; $5925: $ea $f6 $02
  add hl, sp                                      ; $5928: $39
  ld a, [hl]                                      ; $5929: $7e
  ld d, a                                         ; $592a: $57
  nop                                             ; $592b: $00
  nop                                             ; $592c: $00
  rst $20                                         ; $592d: $e7
  rlca                                            ; $592e: $07
  xor e                                           ; $592f: $ab
  ld e, c                                         ; $5930: $59
  inc c                                           ; $5931: $0c
  ret nc                                          ; $5932: $d0

  ld e, c                                         ; $5933: $59
  rst $20                                         ; $5934: $e7
  rlca                                            ; $5935: $07
  ld a, h                                         ; $5936: $7c
  ld d, [hl]                                      ; $5937: $56
  rst $20                                         ; $5938: $e7
  rlca                                            ; $5939: $07
  ld sp, $e763                                    ; $593a: $31 $63 $e7
  rlca                                            ; $593d: $07
  cp b                                            ; $593e: $b8
  ld e, [hl]                                      ; $593f: $5e
  rst $20                                         ; $5940: $e7
  rlca                                            ; $5941: $07
  ld b, e                                         ; $5942: $43
  ld d, [hl]                                      ; $5943: $56
  ld d, a                                         ; $5944: $57
  nop                                             ; $5945: $00
  nop                                             ; $5946: $00

  db $e7, $06, $fa, $7d, $e7, $07, $4d, $5a, $63, $e7, $07, $ef, $58, $00, $0a, $e7
  db $07, $bb, $5a, $00, $0f, $e7, $07, $f1, $5a, $06, $00, $00, $03, $90, $01, $00
  db $4b, $57, $00, $00, $9f, $ed, $a2, $f8, $15, $58, $e7, $07, $4d, $5a, $63, $00
  db $03, $15, $58, $ea, $9f, $13, $a2, $f8, $15, $77, $e7, $07, $f1, $5a, $ea, $60
  db $e7, $09, $ea, $67, $00, $14, $e7, $07, $d3, $5e, $57, $00, $00

  nop                                             ; $5994: $00
  ld a, [bc]                                      ; $5995: $0a
  sbc a                                           ; $5996: $9f
  db $f4                                          ; $5997: $f4
  and d                                           ; $5998: $a2
  inc c                                           ; $5999: $0c
  rst $20                                         ; $599a: $e7
  rlca                                            ; $599b: $07
  ld c, l                                         ; $599c: $4d
  ld e, d                                         ; $599d: $5a
  ld h, e                                         ; $599e: $63
  ld [$07e7], a                                   ; $599f: $ea $e7 $07
  call z, $e755                                   ; $59a2: $cc $55 $e7
  rlca                                            ; $59a5: $07
  ld c, [hl]                                      ; $59a6: $4e
  ld l, l                                         ; $59a7: $6d
  rst $20                                         ; $59a8: $e7
  rlca                                            ; $59a9: $07
  cp b                                            ; $59aa: $b8
  ld e, [hl]                                      ; $59ab: $5e
  rst $20                                         ; $59ac: $e7
  rlca                                            ; $59ad: $07
  ld b, e                                         ; $59ae: $43
  ld d, [hl]                                      ; $59af: $56
  ld d, a                                         ; $59b0: $57
  nop                                             ; $59b1: $00
  nop                                             ; $59b2: $00
  nop                                             ; $59b3: $00
  inc d                                           ; $59b4: $14
  rst $20                                         ; $59b5: $e7
  rlca                                            ; $59b6: $07
  xor e                                           ; $59b7: $ab
  ld e, c                                         ; $59b8: $59
  and d                                           ; $59b9: $a2
  inc c                                           ; $59ba: $0c
  rst $20                                         ; $59bb: $e7
  rlca                                            ; $59bc: $07
  ld c, l                                         ; $59bd: $4d
  ld e, d                                         ; $59be: $5a
  ld h, e                                         ; $59bf: $63
  ld [$07e7], a                                   ; $59c0: $ea $e7 $07
  cp e                                            ; $59c3: $bb
  ld h, e                                         ; $59c4: $63
  rst $20                                         ; $59c5: $e7
  rlca                                            ; $59c6: $07
  cp b                                            ; $59c7: $b8
  ld e, [hl]                                      ; $59c8: $5e
  rst $20                                         ; $59c9: $e7
  rlca                                            ; $59ca: $07
  ld b, e                                         ; $59cb: $43
  ld d, [hl]                                      ; $59cc: $56
  ld d, a                                         ; $59cd: $57
  nop                                             ; $59ce: $00
  nop                                             ; $59cf: $00

  db $e7, $07, $4d, $5a, $00, $01, $63, $ea, $0f, $e7, $07, $bb, $5a, $e7, $07, $b7
  db $58, $ea, $0f, $e7, $07, $bb, $5a, $e7, $07, $ef, $58, $ea, $0f, $60, $00, $0c
  db $e7, $07, $ab, $59, $00, $01, $63, $0f

  ld h, b                                         ; $59f8: $60
  nop                                             ; $59f9: $00
  inc c                                           ; $59fa: $0c
  rst $20                                         ; $59fb: $e7
  rlca                                            ; $59fc: $07
  adc l                                           ; $59fd: $8d
  ld e, c                                         ; $59fe: $59
  nop                                             ; $59ff: $00
  ld bc, $0f63                                    ; $5a00: $01 $63 $0f
  ld h, b                                         ; $5a03: $60
  nop                                             ; $5a04: $00
  inc c                                           ; $5a05: $0c
  rst $20                                         ; $5a06: $e7
  rlca                                            ; $5a07: $07
  sub d                                           ; $5a08: $92
  ld e, c                                         ; $5a09: $59
  nop                                             ; $5a0a: $00
  ld bc, $0f63                                    ; $5a0b: $01 $63 $0f
  ld h, b                                         ; $5a0e: $60
  nop                                             ; $5a0f: $00
  inc c                                           ; $5a10: $0c
  rst $20                                         ; $5a11: $e7
  rlca                                            ; $5a12: $07
  sub a                                           ; $5a13: $97
  ld e, c                                         ; $5a14: $59
  nop                                             ; $5a15: $00
  ld bc, $0f63                                    ; $5a16: $01 $63 $0f
  ld h, b                                         ; $5a19: $60
  nop                                             ; $5a1a: $00
  inc c                                           ; $5a1b: $0c
  rst $20                                         ; $5a1c: $e7
  rlca                                            ; $5a1d: $07
  sbc h                                           ; $5a1e: $9c
  ld e, c                                         ; $5a1f: $59
  nop                                             ; $5a20: $00
  ld bc, $0f63                                    ; $5a21: $01 $63 $0f
  ld h, b                                         ; $5a24: $60
  nop                                             ; $5a25: $00
  inc c                                           ; $5a26: $0c
  rst $20                                         ; $5a27: $e7
  rlca                                            ; $5a28: $07
  and c                                           ; $5a29: $a1
  ld e, c                                         ; $5a2a: $59
  nop                                             ; $5a2b: $00
  ld bc, $0f63                                    ; $5a2c: $01 $63 $0f
  ld h, b                                         ; $5a2f: $60
  nop                                             ; $5a30: $00
  inc c                                           ; $5a31: $0c
  rst $20                                         ; $5a32: $e7
  rlca                                            ; $5a33: $07
  and [hl]                                        ; $5a34: $a6
  ld e, c                                         ; $5a35: $59
  nop                                             ; $5a36: $00
  ld bc, $0f63                                    ; $5a37: $01 $63 $0f

  db $03, $00, $00, $06, $00, $00, $e7, $07, $f1, $5a, $e7, $07, $e1, $5a, $ea, $e7
  db $07, $e9, $5e, $0f, $e7, $09, $47, $7f, $00, $04, $e7, $07, $23, $56, $2a, $4e
  db $5a, $0f, $e7, $07, $19, $56, $e7, $07, $fb, $56, $00, $02, $e7, $07, $0e, $57
  db $e7, $07, $23, $56, $27, $7a, $5a, $00, $02, $e7, $07, $23, $56, $2a, $60, $5a
  db $0f, $2f, $5e, $40, $5e, $4e, $5e, $6f, $5e, $79, $5e, $83, $5e, $91, $5e, $99
  db $5e, $be, $5e, $d5, $5e, $ee, $5e

  inc de                                          ; $5a91: $13
  ld e, a                                         ; $5a92: $5f
  inc sp                                          ; $5a93: $33
  ld e, a                                         ; $5a94: $5f
  ld d, e                                         ; $5a95: $53
  ld e, a                                         ; $5a96: $5f

  db $73, $5f

  sbc b                                           ; $5a99: $98
  ld e, a                                         ; $5a9a: $5f

  db $d1, $5f

  add sp, $5f                                     ; $5a9d: $e8 $5f

  db $ff, $5f, $08, $60, $11, $60, $a6, $62, $bf, $60

  db $ed                                          ; $5aa9: $ed
  ld h, b                                         ; $5aaa: $60

  db $cf, $61, $cb, $61, $94, $63, $4a, $63, $72, $63, $9d, $62, $08, $61, $ff, $6f
  db $17, $64, $4a, $64, $6e, $64

  ld a, h                                         ; $5ac1: $7c
  ld h, h                                         ; $5ac2: $64

  db $72, $60

  jr @+$62                                        ; $5ac5: $18 $60

  db $41, $60, $3f, $65

  sbc l                                           ; $5acb: $9d
  ld h, l                                         ; $5acc: $65

  db $e7, $6f

  or $6f                                          ; $5acf: $f6 $6f

  db $d1, $6a, $3b, $6e, $99, $60, $a0, $60, $a7, $60, $ad, $60, $0d, $63, $b9, $64

  inc l                                           ; $5ae1: $2c
  ld e, [hl]                                      ; $5ae2: $5e

  db $7b, $6d

  ld l, l                                         ; $5ae5: $6d
  ld l, l                                         ; $5ae6: $6d
  adc $6a                                         ; $5ae7: $ce $6a

  db $e4, $6a, $ed, $6a

  or $6a                                          ; $5aed: $f6 $6a

  db $9f, $70, $7f, $66

  rst $00                                         ; $5af3: $c7
  ld h, [hl]                                      ; $5af4: $66

  db $76, $67, $34, $6b, $57, $6b, $6d, $6b

  sub a                                           ; $5afd: $97
  ld l, e                                         ; $5afe: $6b
  ld c, a                                         ; $5aff: $4f
  ld l, h                                         ; $5b00: $6c
  adc h                                           ; $5b01: $8c
  ld l, h                                         ; $5b02: $6c

  db $0b, $70, $25, $70, $31, $70, $60, $70

  ld b, $67                                       ; $5b0b: $06 $67
  ret nc                                          ; $5b0d: $d0

  ld h, [hl]                                      ; $5b0e: $66
  call c, Call_000_0666                           ; $5b0f: $dc $66 $06
  ld h, a                                         ; $5b12: $67

  db $27, $67, $b1, $6e, $c1, $6e, $17, $70, $26, $65, $61, $6d, $88, $70, $38, $67
  db $9f, $67, $0f, $6a, $18, $6a, $21, $6a, $2a, $6a, $38, $6a, $4a, $6a, $5a, $6a
  db $68, $6a, $71, $6a, $8b, $6a, $15, $6d, $1e, $6d, $b6, $5f

  db $f4                                          ; $5b3f: $f4
  ld l, h                                         ; $5b40: $6c

  db $91, $6d, $9d, $6d

  xor c                                           ; $5b45: $a9
  ld l, l                                         ; $5b46: $6d
  xor h                                           ; $5b47: $ac
  ld l, l                                         ; $5b48: $6d
  sbc $6d                                         ; $5b49: $de $6d

  db $65, $6e, $85, $6e, $a6, $70

  push de                                         ; $5b51: $d5
  ld l, [hl]                                      ; $5b52: $6e

  db $19, $6f, $69, $62

  add e                                           ; $5b57: $83
  ld h, h                                         ; $5b58: $64
  sub c                                           ; $5b59: $91
  ld h, h                                         ; $5b5a: $64

  db $2c, $61

  dec hl                                          ; $5b5d: $2b
  ld l, a                                         ; $5b5e: $6f

  db $1c, $66, $f8, $65

  dec a                                           ; $5b63: $3d
  ld l, a                                         ; $5b64: $6f

  db $f7, $60, $5f, $61, $3b, $61, $48, $6f, $85, $6f, $96, $6f

  ret nz                                          ; $5b71: $c0

  ld l, a                                         ; $5b72: $6f

  db $8e, $67

  db $db                                          ; $5b75: $db
  ld l, a                                         ; $5b76: $6f
  sbc a                                           ; $5b77: $9f
  ld h, h                                         ; $5b78: $64
  ld h, b                                         ; $5b79: $60
  ld b, c                                         ; $5b7a: $41
  ld h, b                                         ; $5b7b: $60
  ld b, c                                         ; $5b7c: $41
  ld h, b                                         ; $5b7d: $60
  ld b, c                                         ; $5b7e: $41
  ld h, b                                         ; $5b7f: $60
  ld b, c                                         ; $5b80: $41
  ld h, b                                         ; $5b81: $60
  ld b, c                                         ; $5b82: $41
  ld h, b                                         ; $5b83: $60
  ld b, c                                         ; $5b84: $41
  ld h, b                                         ; $5b85: $60
  ld b, c                                         ; $5b86: $41
  ld h, b                                         ; $5b87: $60
  ld b, c                                         ; $5b88: $41
  ld h, b                                         ; $5b89: $60
  ld b, c                                         ; $5b8a: $41
  ld h, b                                         ; $5b8b: $60
  ld b, c                                         ; $5b8c: $41
  ld h, b                                         ; $5b8d: $60
  ld b, c                                         ; $5b8e: $41
  ld h, b                                         ; $5b8f: $60
  ld b, c                                         ; $5b90: $41
  ld h, b                                         ; $5b91: $60
  ld b, c                                         ; $5b92: $41

  db $65, $42, $84, $47, $79, $42, $8f, $42, $9d, $42, $a7, $42, $b5, $43, $d3, $43
  db $e5, $43, $eb, $43, $f9, $43, $a9, $42, $17, $43, $40, $43, $61, $43, $b9, $42
  db $ae, $45, $90, $43, $01, $43, $f6, $4a

  ld h, b                                         ; $5bbb: $60
  ld b, c                                         ; $5bbc: $41

  db $eb, $4d, $b9, $48, $bd, $48, $c1, $48, $bb, $48, $bf, $48, $c3, $48, $94, $4d
  db $3e, $4d, $42, $4d, $fe, $4c, $10, $4d, $37, $46, $45, $49, $ad, $49

  add e                                           ; $5bdb: $83
  ld c, d                                         ; $5bdc: $4a

  db $43, $44, $45, $44, $47, $44, $6e, $43, $70, $43, $72, $43

  and l                                           ; $5be9: $a5
  ld c, d                                         ; $5bea: $4a
  and a                                           ; $5beb: $a7
  ld c, d                                         ; $5bec: $4a
  xor c                                           ; $5bed: $a9
  ld c, d                                         ; $5bee: $4a
  cp c                                            ; $5bef: $b9
  ld c, d                                         ; $5bf0: $4a
  cp e                                            ; $5bf1: $bb
  ld c, d                                         ; $5bf2: $4a
  cp l                                            ; $5bf3: $bd
  ld c, d                                         ; $5bf4: $4a
  ld e, e                                         ; $5bf5: $5b
  ld c, c                                         ; $5bf6: $49
  ld e, l                                         ; $5bf7: $5d
  ld c, c                                         ; $5bf8: $49
  ld e, a                                         ; $5bf9: $5f
  ld c, c                                         ; $5bfa: $49

  db $49, $44, $60, $44, $66, $44, $86, $44

  add h                                           ; $5c03: $84
  ld b, h                                         ; $5c04: $44

  db $5e, $45, $60, $45, $c8, $45, $e1, $45, $fa, $45, $13, $46, $2c, $46

  add hl, de                                      ; $5c13: $19
  ld c, c                                         ; $5c14: $49

  db $92, $4e, $5a, $4b, $0a, $4c, $01, $49, $66, $4d, $46, $4d

  ld [hl], h                                      ; $5c21: $74
  ld c, l                                         ; $5c22: $4d
  push bc                                         ; $5c23: $c5
  ld c, b                                         ; $5c24: $48

  db $98, $44, $c7, $48, $dd, $42, $54, $4d

  xor b                                           ; $5c2d: $a8
  ld b, h                                         ; $5c2e: $44

  db $d7, $48, $cc, $50

  adc b                                           ; $5c33: $88
  ld b, e                                         ; $5c34: $43
  add $44                                         ; $5c35: $c6 $44

  db $cf, $50

  inc bc                                          ; $5c39: $03
  ld b, h                                         ; $5c3a: $44
  ld b, c                                         ; $5c3b: $41
  ld b, [hl]                                      ; $5c3c: $46
  ld c, e                                         ; $5c3d: $4b
  ld b, [hl]                                      ; $5c3e: $46
  ld a, e                                         ; $5c3f: $7b
  ld b, [hl]                                      ; $5c40: $46
  xor c                                           ; $5c41: $a9
  ld b, [hl]                                      ; $5c42: $46
  adc e                                           ; $5c43: $8b
  ld b, [hl]                                      ; $5c44: $46

  db $4f, $4c, $79, $4c, $84, $4c

  rst $10                                         ; $5c4b: $d7
  ld b, h                                         ; $5c4c: $44

  db $70, $45, $86, $45

  push bc                                         ; $5c51: $c5
  ld c, h                                         ; $5c52: $4c
  db $d3                                          ; $5c53: $d3
  ld c, h                                         ; $5c54: $4c
  db $db                                          ; $5c55: $db
  ld c, h                                         ; $5c56: $4c

  db $bf, $4a, $cf, $4a, $93, $45

  ld [hl+], a                                     ; $5c5d: $22
  ld c, h                                         ; $5c5e: $4c
  or [hl]                                         ; $5c5f: $b6
  ld b, a                                         ; $5c60: $47
  ld d, $45                                       ; $5c61: $16 $45
  jr @+$47                                        ; $5c63: $18 $45

  inc h                                           ; $5c65: $24
  ld b, l                                         ; $5c66: $45
  ld b, d                                         ; $5c67: $42
  ld b, l                                         ; $5c68: $45
  db $d3                                          ; $5c69: $d3
  ld b, [hl]                                      ; $5c6a: $46
  db $eb                                          ; $5c6b: $eb
  ld b, [hl]                                      ; $5c6c: $46

  db $96, $4c

  db $fa                                          ; $5c6f: $fa
  ld b, h                                         ; $5c70: $44

  db $2f, $44, $0e, $19, $1a, $1b, $1e, $22, $29, $30, $41, $48, $49, $4a, $4b, $4c
  db $5c, $5d, $5e, $5f, $64, $67, $6b, $00, $53, $59, $5a, $5b, $5c, $3a, $5d, $5e
  db $67, $68, $6b, $6c, $75, $16, $4d, $6f, $1d, $1e, $00, $4a, $00, $5f, $60, $61
  db $62, $63, $64, $65, $66, $69, $70, $36, $17, $18, $19, $3c, $3d, $26, $25, $00

  ld bc, $0101                                    ; $5cb1: $01 $01 $01
  ld bc, $0101                                    ; $5cb4: $01 $01 $01
  ld bc, $0101                                    ; $5cb7: $01 $01 $01
  ld bc, $0101                                    ; $5cba: $01 $01 $01
  ld bc, $0101                                    ; $5cbd: $01 $01 $01
  ld bc, $0101                                    ; $5cc0: $01 $01 $01
  ld bc, $0101                                    ; $5cc3: $01 $01 $01
  ld bc, $0101                                    ; $5cc6: $01 $01 $01
  ld bc, $0101                                    ; $5cc9: $01 $01 $01
  ld bc, $0101                                    ; $5ccc: $01 $01 $01
  ld bc, $0101                                    ; $5ccf: $01 $01 $01
  ld bc, $0101                                    ; $5cd2: $01 $01 $01
  ld bc, $0101                                    ; $5cd5: $01 $01 $01
  ld bc, $0101                                    ; $5cd8: $01 $01 $01
  ld bc, $0101                                    ; $5cdb: $01 $01 $01
  ld bc, $0101                                    ; $5cde: $01 $01 $01
  ld bc, $0101                                    ; $5ce1: $01 $01 $01
  ld bc, $0101                                    ; $5ce4: $01 $01 $01
  ld bc, $0101                                    ; $5ce7: $01 $01 $01
  ld bc, $0101                                    ; $5cea: $01 $01 $01
  ld bc, $0101                                    ; $5ced: $01 $01 $01
  ld bc, $0101                                    ; $5cf0: $01 $01 $01
  ld bc, $0101                                    ; $5cf3: $01 $01 $01
  ld bc, $0101                                    ; $5cf6: $01 $01 $01
  ld bc, $0101                                    ; $5cf9: $01 $01 $01
  ld bc, $0101                                    ; $5cfc: $01 $01 $01
  ld bc, $0101                                    ; $5cff: $01 $01 $01
  ld bc, $0101                                    ; $5d02: $01 $01 $01
  ld bc, $0101                                    ; $5d05: $01 $01 $01
  ld bc, $0101                                    ; $5d08: $01 $01 $01
  ld bc, $0101                                    ; $5d0b: $01 $01 $01
  inc d                                           ; $5d0e: $14
  ld bc, $0101                                    ; $5d0f: $01 $01 $01
  ld bc, $0101                                    ; $5d12: $01 $01 $01
  ld bc, $0101                                    ; $5d15: $01 $01 $01
  ld bc, $0101                                    ; $5d18: $01 $01 $01
  ld bc, $0101                                    ; $5d1b: $01 $01 $01
  ld bc, $0101                                    ; $5d1e: $01 $01 $01
  ld bc, $0101                                    ; $5d21: $01 $01 $01
  ld bc, $0101                                    ; $5d24: $01 $01 $01
  ld bc, $0101                                    ; $5d27: $01 $01 $01
  ld bc, $0101                                    ; $5d2a: $01 $01 $01
  ld bc, $0101                                    ; $5d2d: $01 $01 $01
  ld bc, $0101                                    ; $5d30: $01 $01 $01
  ld bc, $0101                                    ; $5d33: $01 $01 $01
  ld bc, $0101                                    ; $5d36: $01 $01 $01
  ld bc, $0101                                    ; $5d39: $01 $01 $01
  ld bc, $f001                                    ; $5d3c: $01 $01 $f0
  sub $3c                                         ; $5d3f: $d6 $3c

Jump_005_5d41:
  ld [$cb30], a                                   ; $5d41: $ea $30 $cb
  push hl                                         ; $5d44: $e5
  call Call_000_33f3                              ; $5d45: $cd $f3 $33

  db $00, $ae, $34

  pop bc                                          ; $5d4b: $c1
  add hl, bc                                      ; $5d4c: $09
  ld de, $cb2e                                    ; $5d4d: $11 $2e $cb
  ld a, l                                         ; $5d50: $7d
  ld [de], a                                      ; $5d51: $12
  inc de                                          ; $5d52: $13
  ld a, h                                         ; $5d53: $7c
  ld [de], a                                      ; $5d54: $12
  ld a, $01                                       ; $5d55: $3e $01
  ld [$cb2d], a                                   ; $5d57: $ea $2d $cb
  ld a, [$cb1a]                                   ; $5d5a: $fa $1a $cb
  set 7, a                                        ; $5d5d: $cb $ff
  ld [$cb1a], a                                   ; $5d5f: $ea $1a $cb
  jp Jump_000_02a6                                ; $5d62: $c3 $a6 $02


Jump_005_5d65:
  ldh a, [$ffd6]                                  ; $5d65: $f0 $d6
  inc a                                           ; $5d67: $3c
  ld d, a                                         ; $5d68: $57
  ld a, [$cb2d]                                   ; $5d69: $fa $2d $cb
  or a                                            ; $5d6c: $b7
  jr nz, jr_005_5da4                              ; $5d6d: $20 $35

  ldh a, [rSVBK]                                  ; $5d6f: $f0 $70
  push af                                         ; $5d71: $f5
  ld a, $06                                       ; $5d72: $3e $06
  ldh [rSVBK], a                                  ; $5d74: $e0 $70
  ldh a, [$ffa6]                                  ; $5d76: $f0 $a6
  and $01                                         ; $5d78: $e6 $01
  ld [$ddc1], a                                   ; $5d7a: $ea $c1 $dd
  pop af                                          ; $5d7d: $f1
  ldh [rSVBK], a                                  ; $5d7e: $e0 $70
  ld a, d                                         ; $5d80: $7a
  push bc                                         ; $5d81: $c5
  ld [$cb30], a                                   ; $5d82: $ea $30 $cb
  call Call_000_33f3                              ; $5d85: $cd $f3 $33

  db $00, $94, $34

  ld de, $cb2e                                    ; $5d8b: $11 $2e $cb
  ld a, l                                         ; $5d8e: $7d
  ld [de], a                                      ; $5d8f: $12
  inc de                                          ; $5d90: $13
  ld a, h                                         ; $5d91: $7c
  ld [de], a                                      ; $5d92: $12
  ld a, $01                                       ; $5d93: $3e $01
  ld [$cb2d], a                                   ; $5d95: $ea $2d $cb
  ld a, [$cb1a]                                   ; $5d98: $fa $1a $cb
  set 7, a                                        ; $5d9b: $cb $ff
  ld [$cb1a], a                                   ; $5d9d: $ea $1a $cb
  pop bc                                          ; $5da0: $c1
  jp Jump_000_02a6                                ; $5da1: $c3 $a6 $02


jr_005_5da4:
  ld hl, $caef                                    ; $5da4: $21 $ef $ca
  xor a                                           ; $5da7: $af
  ld [hl+], a                                     ; $5da8: $22
  ld [hl+], a                                     ; $5da9: $22
  ld [hl+], a                                     ; $5daa: $22
  ld [hl], a                                      ; $5dab: $77
  ret                                             ; $5dac: $c9


Jump_005_5dad:
  ld a, [$cb2d]                                   ; $5dad: $fa $2d $cb
  or a                                            ; $5db0: $b7
  ret z                                           ; $5db1: $c8

  ldh a, [$ffcd]                                  ; $5db2: $f0 $cd
  cp $0e                                          ; $5db4: $fe $0e
  jr nz, jr_005_5dba                              ; $5db6: $20 $02

  ld b, b                                         ; $5db8: $40
  ret z                                           ; $5db9: $c8

jr_005_5dba:
  ld a, [$cb2d]                                   ; $5dba: $fa $2d $cb
  cp $01                                          ; $5dbd: $fe $01
  jr z, jr_005_5de0                               ; $5dbf: $28 $1f

  cp $07                                          ; $5dc1: $fe $07
  ret nc                                          ; $5dc3: $d0

  cp $02                                          ; $5dc4: $fe $02
  jp z, Jump_005_6041                             ; $5dc6: $ca $41 $60

  cp $06                                          ; $5dc9: $fe $06
  jp z, Jump_005_712c                             ; $5dcb: $ca $2c $71

  cp $03                                          ; $5dce: $fe $03
  jp z, Jump_005_6072                             ; $5dd0: $ca $72 $60

  cp $05                                          ; $5dd3: $fe $05
  jp z, Jump_005_6018                             ; $5dd5: $ca $18 $60

  cp $04                                          ; $5dd8: $fe $04
  jp z, Jump_005_6018                             ; $5dda: $ca $18 $60

  call Call_000_0a6c                              ; $5ddd: $cd $6c $0a

jr_005_5de0:
  push bc                                         ; $5de0: $c5
  ld a, [$cb30]                                   ; $5de1: $fa $30 $cb
  ld c, a                                         ; $5de4: $4f
  call Call_000_34b7                              ; $5de5: $cd $b7 $34
  pop bc                                          ; $5de8: $c1
  or a                                            ; $5de9: $b7
  jr z, jr_005_5dfb                               ; $5dea: $28 $0f

  push bc                                         ; $5dec: $c5
  ld hl, $5a7b                                    ; $5ded: $21 $7b $5a
  dec a                                           ; $5df0: $3d
  add a                                           ; $5df1: $87
  ld c, a                                         ; $5df2: $4f
  ld b, $00                                       ; $5df3: $06 $00
  add hl, bc                                      ; $5df5: $09
  pop bc                                          ; $5df6: $c1
  ld a, [hl+]                                     ; $5df7: $2a
  ld h, [hl]                                      ; $5df8: $66
  ld l, a                                         ; $5df9: $6f
  jp hl                                           ; $5dfa: $e9


jr_005_5dfb:
  xor a                                           ; $5dfb: $af
  ld [$cb2d], a                                   ; $5dfc: $ea $2d $cb
  ld a, [$cb33]                                   ; $5dff: $fa $33 $cb
  or a                                            ; $5e02: $b7
  jr nz, jr_005_5e0a                              ; $5e03: $20 $05

  ld a, [$cb34]                                   ; $5e05: $fa $34 $cb
  or a                                            ; $5e08: $b7
  ret z                                           ; $5e09: $c8

jr_005_5e0a:
  ld a, [$cb33]                                   ; $5e0a: $fa $33 $cb
  ld [$cb2e], a                                   ; $5e0d: $ea $2e $cb
  ld a, [$cb34]                                   ; $5e10: $fa $34 $cb
  ld [$cb2f], a                                   ; $5e13: $ea $2f $cb
  ld a, [$cb35]                                   ; $5e16: $fa $35 $cb
  ld [$cb30], a                                   ; $5e19: $ea $30 $cb
  xor a                                           ; $5e1c: $af
  ld [$cb33], a                                   ; $5e1d: $ea $33 $cb
  ld [$cb34], a                                   ; $5e20: $ea $34 $cb
  ld [$cb35], a                                   ; $5e23: $ea $35 $cb
  ld a, $01                                       ; $5e26: $3e $01
  ld [$cb2d], a                                   ; $5e28: $ea $2d $cb
  ret                                             ; $5e2b: $c9


  jp Jump_005_70b5                                ; $5e2c: $c3 $b5 $70


  call Call_005_70dd                              ; $5e2f: $cd $dd $70
  ld [$cb30], a                                   ; $5e32: $ea $30 $cb
  ld bc, $cb2e                                    ; $5e35: $01 $2e $cb
  ld a, l                                         ; $5e38: $7d
  ld [bc], a                                      ; $5e39: $02
  inc bc                                          ; $5e3a: $03
  ld a, h                                         ; $5e3b: $7c
  ld [bc], a                                      ; $5e3c: $02
  jp Jump_005_70b5                                ; $5e3d: $c3 $b5 $70


  ld bc, $cb2e                                    ; $5e40: $01 $2e $cb
  ld a, [bc]                                      ; $5e43: $0a
  ld l, a                                         ; $5e44: $6f
  inc bc                                          ; $5e45: $03
  ld a, [bc]                                      ; $5e46: $0a
  ld h, a                                         ; $5e47: $67
  ld a, [$cb30]                                   ; $5e48: $fa $30 $cb
  call Call_005_70bd                              ; $5e4b: $cd $bd $70

jr_005_5e4e:
  dec d                                           ; $5e4e: $15
  ld l, d                                         ; $5e4f: $6a
  ld h, $00                                       ; $5e50: $26 $00
  bit 7, l                                        ; $5e52: $cb $7d
  jr z, jr_005_5e57                               ; $5e54: $28 $01

  dec h                                           ; $5e56: $25

jr_005_5e57:
  ld e, l                                         ; $5e57: $5d
  ld d, h                                         ; $5e58: $54
  add hl, de                                      ; $5e59: $19
  add hl, de                                      ; $5e5a: $19
  ld a, [$cb2e]                                   ; $5e5b: $fa $2e $cb
  ld e, a                                         ; $5e5e: $5f
  ld a, [$cb2f]                                   ; $5e5f: $fa $2f $cb
  ld d, a                                         ; $5e62: $57
  add hl, de                                      ; $5e63: $19
  ld a, l                                         ; $5e64: $7d
  ld [$cb2e], a                                   ; $5e65: $ea $2e $cb
  ld a, h                                         ; $5e68: $7c
  ld [$cb2f], a                                   ; $5e69: $ea $2f $cb
  jp Jump_005_70b5                                ; $5e6c: $c3 $b5 $70


  ld a, [$cb1a]                                   ; $5e6f: $fa $1a $cb
  bit 5, a                                        ; $5e72: $cb $6f
  jr nz, jr_005_5e4e                              ; $5e74: $20 $d8

  jp Jump_005_70b5                                ; $5e76: $c3 $b5 $70


  ld a, [$cb1a]                                   ; $5e79: $fa $1a $cb
  bit 5, a                                        ; $5e7c: $cb $6f
  jr z, jr_005_5e4e                               ; $5e7e: $28 $ce

  jp Jump_005_70b5                                ; $5e80: $c3 $b5 $70


  ld bc, $cb2e                                    ; $5e83: $01 $2e $cb
  ld a, [bc]                                      ; $5e86: $0a
  ld l, a                                         ; $5e87: $6f
  inc bc                                          ; $5e88: $03
  ld a, [bc]                                      ; $5e89: $0a
  ld h, a                                         ; $5e8a: $67
  ld a, [$cb30]                                   ; $5e8b: $fa $30 $cb
  call Call_005_70bd                              ; $5e8e: $cd $bd $70
  push de                                         ; $5e91: $d5
  pop hl                                          ; $5e92: $e1
  ld a, [$cb19]                                   ; $5e93: $fa $19 $cb
  jp Jump_005_5d41                                ; $5e96: $c3 $41 $5d


  ldh a, [rSVBK]                                  ; $5e99: $f0 $70
  push af                                         ; $5e9b: $f5
  ld a, $06                                       ; $5e9c: $3e $06
  ldh [rSVBK], a                                  ; $5e9e: $e0 $70
  ld a, d                                         ; $5ea0: $7a
  ld hl, $dcc8                                    ; $5ea1: $21 $c8 $dc
  rst $08                                         ; $5ea4: $cf
  ld d, a                                         ; $5ea5: $57
  ld hl, $cb2e                                    ; $5ea6: $21 $2e $cb
  ld a, [hl+]                                     ; $5ea9: $2a
  ld h, [hl]                                      ; $5eaa: $66
  ld l, a                                         ; $5eab: $6f
  ld a, d                                         ; $5eac: $7a
  call Call_000_315f                              ; $5ead: $cd $5f $31
  pop af                                          ; $5eb0: $f1
  ldh [rSVBK], a                                  ; $5eb1: $e0 $70
  ld a, l                                         ; $5eb3: $7d
  ld [$cb2e], a                                   ; $5eb4: $ea $2e $cb
  ld a, h                                         ; $5eb7: $7c
  ld [$cb2f], a                                   ; $5eb8: $ea $2f $cb
  jp Jump_005_5dad                                ; $5ebb: $c3 $ad $5d


  ldh a, [rSVBK]                                  ; $5ebe: $f0 $70
  push af                                         ; $5ec0: $f5
  ld a, $06                                       ; $5ec1: $3e $06
  ldh [rSVBK], a                                  ; $5ec3: $e0 $70
  ld hl, $dcc8                                    ; $5ec5: $21 $c8 $dc
  ld c, d                                         ; $5ec8: $4a
  ld b, $00                                       ; $5ec9: $06 $00
  add hl, bc                                      ; $5ecb: $09
  ld a, [hl]                                      ; $5ecc: $7e
  ld hl, $cb1a                                    ; $5ecd: $21 $1a $cb
  cp e                                            ; $5ed0: $bb
  jr z, jr_005_5f07                               ; $5ed1: $28 $34

  jr jr_005_5f0b                                  ; $5ed3: $18 $36

  ldh a, [rSVBK]                                  ; $5ed5: $f0 $70
  push af                                         ; $5ed7: $f5
  ld a, $06                                       ; $5ed8: $3e $06
  ldh [rSVBK], a                                  ; $5eda: $e0 $70
  ld hl, $dcc8                                    ; $5edc: $21 $c8 $dc
  ld c, d                                         ; $5edf: $4a
  ld b, $00                                       ; $5ee0: $06 $00
  add hl, bc                                      ; $5ee2: $09
  ld a, [hl]                                      ; $5ee3: $7e
  ld hl, $cb1a                                    ; $5ee4: $21 $1a $cb
  ld d, a                                         ; $5ee7: $57
  ld a, e                                         ; $5ee8: $7b
  cp d                                            ; $5ee9: $ba
  jr c, jr_005_5f07                               ; $5eea: $38 $1b

  jr jr_005_5f0b                                  ; $5eec: $18 $1d

  ldh a, [rSVBK]                                  ; $5eee: $f0 $70
  push af                                         ; $5ef0: $f5
  ld a, $06                                       ; $5ef1: $3e $06
  ldh [rSVBK], a                                  ; $5ef3: $e0 $70
  ld hl, $dcc8                                    ; $5ef5: $21 $c8 $dc
  ld c, d                                         ; $5ef8: $4a
  ld b, $00                                       ; $5ef9: $06 $00
  add hl, bc                                      ; $5efb: $09
  ld a, [hl]                                      ; $5efc: $7e
  ld d, a                                         ; $5efd: $57
  ld hl, $cb1a                                    ; $5efe: $21 $1a $cb
  ld a, e                                         ; $5f01: $7b
  cp d                                            ; $5f02: $ba
  jr c, jr_005_5f0b                               ; $5f03: $38 $06

  jr z, jr_005_5f0b                               ; $5f05: $28 $04

jr_005_5f07:
  set 5, [hl]                                     ; $5f07: $cb $ee
  jr jr_005_5f0d                                  ; $5f09: $18 $02

jr_005_5f0b:
  res 5, [hl]                                     ; $5f0b: $cb $ae

jr_005_5f0d:
  pop af                                          ; $5f0d: $f1
  ldh [rSVBK], a                                  ; $5f0e: $e0 $70
  jp Jump_005_70b5                                ; $5f10: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $5f13: $f0 $70
  push af                                         ; $5f15: $f5
  ld a, $06                                       ; $5f16: $3e $06
  ldh [rSVBK], a                                  ; $5f18: $e0 $70
  ld hl, $dcc8                                    ; $5f1a: $21 $c8 $dc
  ld c, d                                         ; $5f1d: $4a
  ld b, $00                                       ; $5f1e: $06 $00
  add hl, bc                                      ; $5f20: $09
  ld a, [hl]                                      ; $5f21: $7e
  ld d, a                                         ; $5f22: $57
  ld hl, $dcc8                                    ; $5f23: $21 $c8 $dc
  ld c, e                                         ; $5f26: $4b
  ld b, $00                                       ; $5f27: $06 $00
  add hl, bc                                      ; $5f29: $09
  ld a, [hl]                                      ; $5f2a: $7e
  ld hl, $cb1a                                    ; $5f2b: $21 $1a $cb
  cp d                                            ; $5f2e: $ba
  jr z, jr_005_5f07                               ; $5f2f: $28 $d6

  jr jr_005_5f0b                                  ; $5f31: $18 $d8

  ldh a, [rSVBK]                                  ; $5f33: $f0 $70
  push af                                         ; $5f35: $f5
  ld a, $06                                       ; $5f36: $3e $06
  ldh [rSVBK], a                                  ; $5f38: $e0 $70
  ld hl, $dcc8                                    ; $5f3a: $21 $c8 $dc
  ld c, d                                         ; $5f3d: $4a
  ld b, $00                                       ; $5f3e: $06 $00
  add hl, bc                                      ; $5f40: $09
  ld a, [hl]                                      ; $5f41: $7e
  ld d, a                                         ; $5f42: $57
  ld hl, $dcc8                                    ; $5f43: $21 $c8 $dc
  ld c, e                                         ; $5f46: $4b
  ld b, $00                                       ; $5f47: $06 $00
  add hl, bc                                      ; $5f49: $09
  ld a, [hl]                                      ; $5f4a: $7e
  ld hl, $cb1a                                    ; $5f4b: $21 $1a $cb
  cp d                                            ; $5f4e: $ba
  jr c, jr_005_5f07                               ; $5f4f: $38 $b6

  jr jr_005_5f0b                                  ; $5f51: $18 $b8

  ldh a, [rSVBK]                                  ; $5f53: $f0 $70
  push af                                         ; $5f55: $f5
  ld a, $06                                       ; $5f56: $3e $06
  ldh [rSVBK], a                                  ; $5f58: $e0 $70
  ld hl, $dcc8                                    ; $5f5a: $21 $c8 $dc
  ld c, d                                         ; $5f5d: $4a
  ld b, $00                                       ; $5f5e: $06 $00
  add hl, bc                                      ; $5f60: $09
  ld a, [hl]                                      ; $5f61: $7e
  ld d, a                                         ; $5f62: $57
  ld hl, $dcc8                                    ; $5f63: $21 $c8 $dc
  ld c, e                                         ; $5f66: $4b
  ld b, $00                                       ; $5f67: $06 $00
  add hl, bc                                      ; $5f69: $09
  ld a, [hl]                                      ; $5f6a: $7e
  ld hl, $cb1a                                    ; $5f6b: $21 $1a $cb
  cp d                                            ; $5f6e: $ba
  jr c, jr_005_5f0b                               ; $5f6f: $38 $9a

  jr jr_005_5f07                                  ; $5f71: $18 $94

  ldh a, [rSVBK]                                  ; $5f73: $f0 $70
  push af                                         ; $5f75: $f5
  ld a, $06                                       ; $5f76: $3e $06
  ldh [rSVBK], a                                  ; $5f78: $e0 $70
  ld hl, $dcc8                                    ; $5f7a: $21 $c8 $dc
  ld c, d                                         ; $5f7d: $4a
  ld b, $00                                       ; $5f7e: $06 $00
  add hl, bc                                      ; $5f80: $09
  ld a, e                                         ; $5f81: $7b
  ld [hl], a                                      ; $5f82: $77
  pop af                                          ; $5f83: $f1
  ldh [rSVBK], a                                  ; $5f84: $e0 $70
  ld a, d                                         ; $5f86: $7a
  cp $ff                                          ; $5f87: $fe $ff
  jp nz, Jump_005_70b5                            ; $5f89: $c2 $b5 $70

  ld bc, $c2cf                                    ; $5f8c: $01 $cf $c2
  call Call_000_33f3                              ; $5f8f: $cd $f3 $33

  db $08, $6b, $77

  jp Jump_005_70b5                                ; $5f95: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $5f98: $f0 $70
  push af                                         ; $5f9a: $f5
  ld a, $06                                       ; $5f9b: $3e $06
  ldh [rSVBK], a                                  ; $5f9d: $e0 $70
  ld hl, $dcc8                                    ; $5f9f: $21 $c8 $dc
  ld c, d                                         ; $5fa2: $4a
  ld b, $00                                       ; $5fa3: $06 $00
  add hl, bc                                      ; $5fa5: $09
  ld c, l                                         ; $5fa6: $4d
  ld b, h                                         ; $5fa7: $44
  ld hl, $dcc8                                    ; $5fa8: $21 $c8 $dc
  ld d, $00                                       ; $5fab: $16 $00
  add hl, de                                      ; $5fad: $19
  ld a, [hl]                                      ; $5fae: $7e
  ld [bc], a                                      ; $5faf: $02
  pop af                                          ; $5fb0: $f1
  ldh [rSVBK], a                                  ; $5fb1: $e0 $70
  jp Jump_005_70b5                                ; $5fb3: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $5fb6: $f0 $70
  push af                                         ; $5fb8: $f5
  ld a, $06                                       ; $5fb9: $3e $06
  ldh [rSVBK], a                                  ; $5fbb: $e0 $70
  ld hl, $dcc8                                    ; $5fbd: $21 $c8 $dc
  ld a, [hl]                                      ; $5fc0: $7e
  ld [hl], d                                      ; $5fc1: $72
  ld hl, $dcc9                                    ; $5fc2: $21 $c9 $dc
  ld bc, $0020                                    ; $5fc5: $01 $20 $00
  call Call_000_1248                              ; $5fc8: $cd $48 $12
  pop af                                          ; $5fcb: $f1
  ldh [rSVBK], a                                  ; $5fcc: $e0 $70
  jp Jump_005_70b5                                ; $5fce: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $5fd1: $f0 $70
  push af                                         ; $5fd3: $f5
  ld a, $06                                       ; $5fd4: $3e $06
  ldh [rSVBK], a                                  ; $5fd6: $e0 $70
  ld hl, $dcc8                                    ; $5fd8: $21 $c8 $dc
  ld c, d                                         ; $5fdb: $4a
  ld b, $00                                       ; $5fdc: $06 $00
  add hl, bc                                      ; $5fde: $09
  ld a, [hl]                                      ; $5fdf: $7e
  add e                                           ; $5fe0: $83
  ld [hl], a                                      ; $5fe1: $77
  pop af                                          ; $5fe2: $f1
  ldh [rSVBK], a                                  ; $5fe3: $e0 $70
  jp Jump_005_70b5                                ; $5fe5: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $5fe8: $f0 $70
  push af                                         ; $5fea: $f5
  ld a, $06                                       ; $5feb: $3e $06
  ldh [rSVBK], a                                  ; $5fed: $e0 $70
  ld hl, $dcc8                                    ; $5fef: $21 $c8 $dc
  ld c, d                                         ; $5ff2: $4a
  ld b, $00                                       ; $5ff3: $06 $00
  add hl, bc                                      ; $5ff5: $09
  ld a, [hl]                                      ; $5ff6: $7e
  sub e                                           ; $5ff7: $93
  ld [hl], a                                      ; $5ff8: $77
  pop af                                          ; $5ff9: $f1
  ldh [rSVBK], a                                  ; $5ffa: $e0 $70
  jp Jump_005_70b5                                ; $5ffc: $c3 $b5 $70


  ld hl, $cb15                                    ; $5fff: $21 $15 $cb
  ld [hl], e                                      ; $6002: $73
  inc hl                                          ; $6003: $23
  ld [hl], d                                      ; $6004: $72
  jp Jump_005_5dad                                ; $6005: $c3 $ad $5d


  ld hl, $cb17                                    ; $6008: $21 $17 $cb
  ld [hl], e                                      ; $600b: $73
  inc hl                                          ; $600c: $23
  ld [hl], d                                      ; $600d: $72
  jp Jump_005_5dad                                ; $600e: $c3 $ad $5d


  ld a, d                                         ; $6011: $7a
  ld [$cb19], a                                   ; $6012: $ea $19 $cb
  jp Jump_005_5dad                                ; $6015: $c3 $ad $5d


Jump_005_6018:
  ld a, [$cb2d]                                   ; $6018: $fa $2d $cb
  cp $05                                          ; $601b: $fe $05
  jr z, jr_005_6036                               ; $601d: $28 $17

  cp $04                                          ; $601f: $fe $04
  jr z, jr_005_6029                               ; $6021: $28 $06

  ld a, $05                                       ; $6023: $3e $05
  ld [$cb2d], a                                   ; $6025: $ea $2d $cb
  ret                                             ; $6028: $c9


jr_005_6029:
  ldh a, [$ffa6]                                  ; $6029: $f0 $a6
  and $01                                         ; $602b: $e6 $01
  ret nz                                          ; $602d: $c0

  ld a, $01                                       ; $602e: $3e $01
  ld [$cb2d], a                                   ; $6030: $ea $2d $cb
  jp Jump_005_70b5                                ; $6033: $c3 $b5 $70


jr_005_6036:
  ldh a, [$ffa6]                                  ; $6036: $f0 $a6
  and $01                                         ; $6038: $e6 $01
  ret z                                           ; $603a: $c8

  ld a, $04                                       ; $603b: $3e $04
  ld [$cb2d], a                                   ; $603d: $ea $2d $cb
  ret                                             ; $6040: $c9


Jump_005_6041:
  ld a, [$cb2d]                                   ; $6041: $fa $2d $cb
  cp $02                                          ; $6044: $fe $02
  jr z, jr_005_6056                               ; $6046: $28 $0e

  ld a, $02                                       ; $6048: $3e $02
  ld [$cb2d], a                                   ; $604a: $ea $2d $cb
  ld a, d                                         ; $604d: $7a
  ld [$cb31], a                                   ; $604e: $ea $31 $cb
  ld a, e                                         ; $6051: $7b
  ld [$cb32], a                                   ; $6052: $ea $32 $cb
  ret                                             ; $6055: $c9


jr_005_6056:
  ld hl, $cb31                                    ; $6056: $21 $31 $cb
  ld a, [hl+]                                     ; $6059: $2a
  ld e, [hl]                                      ; $605a: $5e
  ld d, a                                         ; $605b: $57
  dec de                                          ; $605c: $1b
  ld a, e                                         ; $605d: $7b
  or d                                            ; $605e: $b2
  jr nz, jr_005_6069                              ; $605f: $20 $08

  ld a, $01                                       ; $6061: $3e $01
  ld [$cb2d], a                                   ; $6063: $ea $2d $cb
  jp Jump_005_70b5                                ; $6066: $c3 $b5 $70


jr_005_6069:
  ld a, d                                         ; $6069: $7a
  ld [$cb31], a                                   ; $606a: $ea $31 $cb
  ld a, e                                         ; $606d: $7b
  ld [$cb32], a                                   ; $606e: $ea $32 $cb
  ret                                             ; $6071: $c9


Jump_005_6072:
  ld a, [$cb1a]                                   ; $6072: $fa $1a $cb
  rla                                             ; $6075: $17
  jp c, Jump_005_5dad                             ; $6076: $da $ad $5d

  ld a, [$cb2d]                                   ; $6079: $fa $2d $cb
  cp $03                                          ; $607c: $fe $03
  jr z, jr_005_6088                               ; $607e: $28 $08

  ld a, $03                                       ; $6080: $3e $03
  ld [$cb2d], a                                   ; $6082: $ea $2d $cb
  jp Jump_005_70b5                                ; $6085: $c3 $b5 $70


jr_005_6088:
  call Call_005_70ac                              ; $6088: $cd $ac $70
  call Call_000_2fc9                              ; $608b: $cd $c9 $2f
  inc a                                           ; $608e: $3c
  ret nz                                          ; $608f: $c0

  ld [hl], a                                      ; $6090: $77
  ld a, $01                                       ; $6091: $3e $01
  ld [$cb2d], a                                   ; $6093: $ea $2d $cb
  jp Jump_005_70b5                                ; $6096: $c3 $b5 $70


  ld a, d                                         ; $6099: $7a
  call Call_000_392b                              ; $609a: $cd $2b $39
  jp Jump_005_70b5                                ; $609d: $c3 $b5 $70


  ld a, d                                         ; $60a0: $7a
  call Call_000_394b                              ; $60a1: $cd $4b $39
  jp Jump_005_70b5                                ; $60a4: $c3 $b5 $70


  call Call_000_3978                              ; $60a7: $cd $78 $39
  jp Jump_005_70b5                                ; $60aa: $c3 $b5 $70


  ld a, $01                                       ; $60ad: $3e $01
  ld [$cec3], a                                   ; $60af: $ea $c3 $ce
  ld b, $01                                       ; $60b2: $06 $01
  ld c, $0e                                       ; $60b4: $0e $0e
  call Call_000_33f3                              ; $60b6: $cd $f3 $33

  db $04, $d2, $6a

  jp Jump_005_70b5                                ; $60bc: $c3 $b5 $70


Call_005_60bf:
  push de                                         ; $60bf: $d5
  ld hl, $c2cf                                    ; $60c0: $21 $cf $c2
  ld a, d                                         ; $60c3: $7a
  or a                                            ; $60c4: $b7
  jr z, jr_005_60db                               ; $60c5: $28 $14

  ld c, $54                                       ; $60c7: $0e $54
  ld b, $00                                       ; $60c9: $06 $00
  ld e, $18                                       ; $60cb: $1e $18

jr_005_60cd:
  ld a, [hl]                                      ; $60cd: $7e
  cp d                                            ; $60ce: $ba
  jr z, jr_005_60db                               ; $60cf: $28 $0a

  add hl, bc                                      ; $60d1: $09
  dec e                                           ; $60d2: $1d
  call z, Call_000_0a6c                           ; $60d3: $cc $6c $0a
  jr jr_005_60cd                                  ; $60d6: $18 $f5

  ld hl, $c2cf                                    ; $60d8: $21 $cf $c2

jr_005_60db:
  pop de                                          ; $60db: $d1
  ld a, l                                         ; $60dc: $7d
  ld [$cb1b], a                                   ; $60dd: $ea $1b $cb
  ld a, h                                         ; $60e0: $7c
  ld [$cb1c], a                                   ; $60e1: $ea $1c $cb
  ld b, h                                         ; $60e4: $44
  ld c, l                                         ; $60e5: $4d
  ld a, e                                         ; $60e6: $7b
  cp $ff                                          ; $60e7: $fe $ff
  ret z                                           ; $60e9: $c8

  jp Jump_005_70b5                                ; $60ea: $c3 $b5 $70


  call Call_005_70ac                              ; $60ed: $cd $ac $70
  ld a, d                                         ; $60f0: $7a
  call Call_000_0864                              ; $60f1: $cd $64 $08
  jp Jump_005_70b5                                ; $60f4: $c3 $b5 $70


  ld a, d                                         ; $60f7: $7a
  call Call_000_0a46                              ; $60f8: $cd $46 $0a
  ld a, l                                         ; $60fb: $7d
  ld [$cb1b], a                                   ; $60fc: $ea $1b $cb
  ld a, h                                         ; $60ff: $7c
  ld [$cb1c], a                                   ; $6100: $ea $1c $cb
  ld b, h                                         ; $6103: $44
  ld c, l                                         ; $6104: $4d
  jp Jump_005_70b5                                ; $6105: $c3 $b5 $70


  ld a, d                                         ; $6108: $7a
  or a                                            ; $6109: $b7
  jr nz, jr_005_6111                              ; $610a: $20 $05

  ld bc, $c2cf                                    ; $610c: $01 $cf $c2
  jr jr_005_6116                                  ; $610f: $18 $05

jr_005_6111:
  call Call_000_0a46                              ; $6111: $cd $46 $0a
  ld b, h                                         ; $6114: $44
  ld c, l                                         ; $6115: $4d

jr_005_6116:
  ld hl, $000d                                    ; $6116: $21 $0d $00
  add hl, bc                                      ; $6119: $09
  ld a, [hl+]                                     ; $611a: $2a
  ld h, [hl]                                      ; $611b: $66
  ld l, a                                         ; $611c: $6f
  ld a, l                                         ; $611d: $7d
  ld [$cb15], a                                   ; $611e: $ea $15 $cb
  ld a, h                                         ; $6121: $7c
  ld [$cb16], a                                   ; $6122: $ea $16 $cb
  ld hl, $000b                                    ; $6125: $21 $0b $00
  add hl, bc                                      ; $6128: $09
  ld e, [hl]                                      ; $6129: $5e
  inc hl                                          ; $612a: $23
  ld d, [hl]                                      ; $612b: $56
  push de                                         ; $612c: $d5
  call Call_005_70ac                              ; $612d: $cd $ac $70
  ld hl, $0044                                    ; $6130: $21 $44 $00
  add hl, bc                                      ; $6133: $09
  ld a, $80                                       ; $6134: $3e $80
  ld [hl+], a                                     ; $6136: $22
  ld [hl], $01                                    ; $6137: $36 $01
  jr jr_005_616c                                  ; $6139: $18 $31

  ld a, d                                         ; $613b: $7a
  or a                                            ; $613c: $b7
  jr nz, jr_005_6144                              ; $613d: $20 $05

  ld bc, $c2cf                                    ; $613f: $01 $cf $c2
  jr jr_005_6149                                  ; $6142: $18 $05

jr_005_6144:
  call Call_000_0a46                              ; $6144: $cd $46 $0a
  ld b, h                                         ; $6147: $44
  ld c, l                                         ; $6148: $4d

jr_005_6149:
  ld hl, $000d                                    ; $6149: $21 $0d $00
  add hl, bc                                      ; $614c: $09
  ld a, [hl+]                                     ; $614d: $2a
  ld h, [hl]                                      ; $614e: $66
  ld l, a                                         ; $614f: $6f
  ld a, l                                         ; $6150: $7d
  ld [$cb15], a                                   ; $6151: $ea $15 $cb
  ld a, h                                         ; $6154: $7c
  ld [$cb16], a                                   ; $6155: $ea $16 $cb
  ld hl, $000b                                    ; $6158: $21 $0b $00
  add hl, bc                                      ; $615b: $09
  ld e, [hl]                                      ; $615c: $5e
  inc hl                                          ; $615d: $23
  ld d, [hl]                                      ; $615e: $56
  push de                                         ; $615f: $d5
  call Call_005_70ac                              ; $6160: $cd $ac $70
  ld hl, $0044                                    ; $6163: $21 $44 $00
  add hl, bc                                      ; $6166: $09
  ld a, $00                                       ; $6167: $3e $00
  ld [hl+], a                                     ; $6169: $22
  ld [hl], $04                                    ; $616a: $36 $04

Jump_005_616c:
jr_005_616c:
  ld hl, $cb15                                    ; $616c: $21 $15 $cb
  ld a, [hl+]                                     ; $616f: $2a
  ld h, [hl]                                      ; $6170: $66
  ld l, a                                         ; $6171: $6f
  call Call_000_33f3                              ; $6172: $cd $f3 $33

  db $03, $af, $70

  ld hl, $0044                                    ; $6178: $21 $44 $00
  add hl, bc                                      ; $617b: $09
  ld e, [hl]                                      ; $617c: $5e
  inc hl                                          ; $617d: $23
  ld d, [hl]                                      ; $617e: $56
  pop hl                                          ; $617f: $e1
  push de                                         ; $6180: $d5
  push hl                                         ; $6181: $e5
  ld hl, $cb15                                    ; $6182: $21 $15 $cb
  ld e, [hl]                                      ; $6185: $5e
  inc hl                                          ; $6186: $23
  ld d, [hl]                                      ; $6187: $56
  pop hl                                          ; $6188: $e1
  call Call_000_09d7                              ; $6189: $cd $d7 $09
  xor $04                                         ; $618c: $ee $04
  call Call_000_2fdd                              ; $618e: $cd $dd $2f
  cp $05                                          ; $6191: $fe $05
  jr c, jr_005_619c                               ; $6193: $38 $07

  ld a, $20                                       ; $6195: $3e $20
  call Call_000_0806                              ; $6197: $cd $06 $08
  jr jr_005_61a0                                  ; $619a: $18 $04

jr_005_619c:
  xor a                                           ; $619c: $af
  call Call_000_0806                              ; $619d: $cd $06 $08

jr_005_61a0:
  call Call_005_70f6                              ; $61a0: $cd $f6 $70
  or a                                            ; $61a3: $b7
  jr z, jr_005_61b3                               ; $61a4: $28 $0d

  cp $01                                          ; $61a6: $fe $01
  jr z, jr_005_61b8                               ; $61a8: $28 $0e

  cp $02                                          ; $61aa: $fe $02
  jr z, jr_005_61bd                               ; $61ac: $28 $0f

  call Call_005_7a99                              ; $61ae: $cd $99 $7a
  jr jr_005_61c0                                  ; $61b1: $18 $0d

jr_005_61b3:
  call Call_005_7ab7                              ; $61b3: $cd $b7 $7a
  jr jr_005_61c0                                  ; $61b6: $18 $08

jr_005_61b8:
  call Call_005_7af3                              ; $61b8: $cd $f3 $7a
  jr jr_005_61c0                                  ; $61bb: $18 $03

jr_005_61bd:
  call Call_005_7ade                              ; $61bd: $cd $de $7a

jr_005_61c0:
  pop de                                          ; $61c0: $d1
  ld a, [$cb1a]                                   ; $61c1: $fa $1a $cb
  rla                                             ; $61c4: $17
  jp nc, Jump_005_712c                            ; $61c5: $d2 $2c $71

  jp Jump_005_70b5                                ; $61c8: $c3 $b5 $70


  ld h, $01                                       ; $61cb: $26 $01
  jr jr_005_61d1                                  ; $61cd: $18 $02

  ld h, $00                                       ; $61cf: $26 $00

jr_005_61d1:
  push hl                                         ; $61d1: $e5
  call Call_005_70ac                              ; $61d2: $cd $ac $70
  push de                                         ; $61d5: $d5
  push hl                                         ; $61d6: $e5
  call Call_005_70f6                              ; $61d7: $cd $f6 $70
  or a                                            ; $61da: $b7
  jr z, jr_005_6203                               ; $61db: $28 $26

  cp $01                                          ; $61dd: $fe $01
  jr z, jr_005_61ef                               ; $61df: $28 $0e

  cp $02                                          ; $61e1: $fe $02
  jr z, jr_005_61f9                               ; $61e3: $28 $14

  pop hl                                          ; $61e5: $e1
  ld de, $792e                                    ; $61e6: $11 $2e $79
  call Call_000_09ff                              ; $61e9: $cd $ff $09
  pop de                                          ; $61ec: $d1
  jr jr_005_6217                                  ; $61ed: $18 $28

jr_005_61ef:
  pop hl                                          ; $61ef: $e1
  ld de, $7943                                    ; $61f0: $11 $43 $79
  call Call_000_09ff                              ; $61f3: $cd $ff $09
  pop de                                          ; $61f6: $d1
  jr jr_005_6217                                  ; $61f7: $18 $1e

jr_005_61f9:
  pop hl                                          ; $61f9: $e1
  ld de, $793c                                    ; $61fa: $11 $3c $79
  call Call_000_09ff                              ; $61fd: $cd $ff $09
  pop de                                          ; $6200: $d1
  jr jr_005_6217                                  ; $6201: $18 $14

jr_005_6203:
  pop hl                                          ; $6203: $e1
  ld de, $7935                                    ; $6204: $11 $35 $79
  call Call_000_09ff                              ; $6207: $cd $ff $09
  pop de                                          ; $620a: $d1
  ld a, [bc]                                      ; $620b: $0a
  cp $01                                          ; $620c: $fe $01
  jr nz, jr_005_6217                              ; $620e: $20 $07

  ld a, d                                         ; $6210: $7a
  ld [$cadd], a                                   ; $6211: $ea $dd $ca
  ld [$cadc], a                                   ; $6214: $ea $dc $ca

jr_005_6217:
  ld a, [$cb19]                                   ; $6217: $fa $19 $cb
  and $0f                                         ; $621a: $e6 $0f
  call Call_000_2fdd                              ; $621c: $cd $dd $2f
  call Call_000_2fe3                              ; $621f: $cd $e3 $2f
  pop hl                                          ; $6222: $e1
  ld a, h                                         ; $6223: $7c
  or a                                            ; $6224: $b7
  jr nz, jr_005_6231                              ; $6225: $20 $0a

  ld a, [$cb1a]                                   ; $6227: $fa $1a $cb
  and $40                                         ; $622a: $e6 $40
  or a                                            ; $622c: $b7
  ret nz                                          ; $622d: $c0

  jp Jump_005_6072                                ; $622e: $c3 $72 $60


jr_005_6231:
  ld a, [bc]                                      ; $6231: $0a
  cp $01                                          ; $6232: $fe $01
  jr z, jr_005_6252                               ; $6234: $28 $1c

  ld hl, $002a                                    ; $6236: $21 $2a $00
  add hl, bc                                      ; $6239: $09
  bit 3, [hl]                                     ; $623a: $cb $5e
  jr nz, jr_005_6248                              ; $623c: $20 $0a

  push de                                         ; $623e: $d5
  ld de, $79e5                                    ; $623f: $11 $e5 $79
  call Call_000_09ff                              ; $6242: $cd $ff $09
  pop de                                          ; $6245: $d1
  jr jr_005_625a                                  ; $6246: $18 $12

jr_005_6248:
  push de                                         ; $6248: $d5
  ld de, $795a                                    ; $6249: $11 $5a $79
  call Call_000_09ff                              ; $624c: $cd $ff $09
  pop de                                          ; $624f: $d1
  jr jr_005_625a                                  ; $6250: $18 $08

jr_005_6252:
  push de                                         ; $6252: $d5
  ld de, $7a70                                    ; $6253: $11 $70 $7a
  call Call_000_09ff                              ; $6256: $cd $ff $09
  pop de                                          ; $6259: $d1

jr_005_625a:
  call Call_000_2fe3                              ; $625a: $cd $e3 $2f
  ld a, [$cb1a]                                   ; $625d: $fa $1a $cb
  and $40                                         ; $6260: $e6 $40
  or a                                            ; $6262: $b7
  jp z, Jump_005_6072                             ; $6263: $ca $72 $60

  jp Jump_005_70b5                                ; $6266: $c3 $b5 $70


  call Call_005_70ac                              ; $6269: $cd $ac $70
  call Call_000_2fe3                              ; $626c: $cd $e3 $2f
  ld hl, $cb15                                    ; $626f: $21 $15 $cb
  ld e, [hl]                                      ; $6272: $5e
  inc hl                                          ; $6273: $23
  ld d, [hl]                                      ; $6274: $56
  ld a, d                                         ; $6275: $7a
  call Call_000_2fdd                              ; $6276: $cd $dd $2f
  ld a, e                                         ; $6279: $7b
  or a                                            ; $627a: $b7
  jr z, jr_005_6286                               ; $627b: $28 $09

  cp $01                                          ; $627d: $fe $01
  jr z, jr_005_628b                               ; $627f: $28 $0a

  ld de, $7c17                                    ; $6281: $11 $17 $7c
  jr jr_005_628e                                  ; $6284: $18 $08

jr_005_6286:
  ld de, $7c09                                    ; $6286: $11 $09 $7c
  jr jr_005_628e                                  ; $6289: $18 $03

jr_005_628b:
  ld de, $7c12                                    ; $628b: $11 $12 $7c

jr_005_628e:
  call Call_000_09ff                              ; $628e: $cd $ff $09
  ld a, [$cb1a]                                   ; $6291: $fa $1a $cb
  and $40                                         ; $6294: $e6 $40
  or a                                            ; $6296: $b7
  jp z, Jump_005_6072                             ; $6297: $ca $72 $60

  jp Jump_005_70b5                                ; $629a: $c3 $b5 $70


  call Call_005_70ac                              ; $629d: $cd $ac $70
  call Call_000_0dbb                              ; $62a0: $cd $bb $0d
  jp Jump_005_70b5                                ; $62a3: $c3 $b5 $70


  ld a, e                                         ; $62a6: $7b
  cp $01                                          ; $62a7: $fe $01
  jr nz, jr_005_62d3                              ; $62a9: $20 $28

  ld hl, $cb15                                    ; $62ab: $21 $15 $cb
  ld c, [hl]                                      ; $62ae: $4e
  inc hl                                          ; $62af: $23
  ld b, [hl]                                      ; $62b0: $46
  ld hl, $c2d5                                    ; $62b1: $21 $d5 $c2
  ld a, [hl+]                                     ; $62b4: $2a
  ld h, [hl]                                      ; $62b5: $66
  ld l, a                                         ; $62b6: $6f
  add hl, bc                                      ; $62b7: $09
  ld a, l                                         ; $62b8: $7d
  ldh [$ff9b], a                                  ; $62b9: $e0 $9b
  ld a, h                                         ; $62bb: $7c
  ldh [$ff9c], a                                  ; $62bc: $e0 $9c
  ld hl, $cb17                                    ; $62be: $21 $17 $cb
  ld c, [hl]                                      ; $62c1: $4e
  inc hl                                          ; $62c2: $23
  ld b, [hl]                                      ; $62c3: $46
  ld hl, $c2d8                                    ; $62c4: $21 $d8 $c2
  ld a, [hl+]                                     ; $62c7: $2a
  ld h, [hl]                                      ; $62c8: $66
  ld l, a                                         ; $62c9: $6f
  add hl, bc                                      ; $62ca: $09
  ld a, l                                         ; $62cb: $7d
  ldh [$ff9d], a                                  ; $62cc: $e0 $9d
  ld a, h                                         ; $62ce: $7c
  ldh [$ff9e], a                                  ; $62cf: $e0 $9e
  jr jr_005_62de                                  ; $62d1: $18 $0b

jr_005_62d3:
  push de                                         ; $62d3: $d5
  ld hl, $cb15                                    ; $62d4: $21 $15 $cb
  ld de, $ff9b                                    ; $62d7: $11 $9b $ff
  call Call_000_0269                              ; $62da: $cd $69 $02
  pop de                                          ; $62dd: $d1

jr_005_62de:
  ld a, [$cb19]                                   ; $62de: $fa $19 $cb
  ldh [$ff9a], a                                  ; $62e1: $e0 $9a
  ld a, d                                         ; $62e3: $7a
  push de                                         ; $62e4: $d5
  call Call_000_33f3                              ; $62e5: $cd $f3 $33

  db $03, $59, $75

  jr c, jr_005_6300                               ; $62eb: $38 $13

  ld hl, $cb2e                                    ; $62ed: $21 $2e $cb
  ld a, [hl+]                                     ; $62f0: $2a
  ld h, [hl]                                      ; $62f1: $66
  ld l, a                                         ; $62f2: $6f
  dec hl                                          ; $62f3: $2b
  dec hl                                          ; $62f4: $2b
  dec hl                                          ; $62f5: $2b
  ld a, l                                         ; $62f6: $7d
  ld [$cb2e], a                                   ; $62f7: $ea $2e $cb
  ld a, h                                         ; $62fa: $7c
  ld [$cb2f], a                                   ; $62fb: $ea $2f $cb
  pop de                                          ; $62fe: $d1
  ret                                             ; $62ff: $c9


jr_005_6300:
  ld hl, $cb1b                                    ; $6300: $21 $1b $cb
  ld [hl], e                                      ; $6303: $73
  inc hl                                          ; $6304: $23
  ld [hl], d                                      ; $6305: $72
  call Call_005_70ac                              ; $6306: $cd $ac $70
  pop de                                          ; $6309: $d1
  jp Jump_005_70b5                                ; $630a: $c3 $b5 $70


  push de                                         ; $630d: $d5
  ld hl, $cb15                                    ; $630e: $21 $15 $cb
  ld de, $ff9b                                    ; $6311: $11 $9b $ff
  call Call_000_0269                              ; $6314: $cd $69 $02
  pop de                                          ; $6317: $d1
  ld a, [$cb19]                                   ; $6318: $fa $19 $cb
  ldh [$ffa0], a                                  ; $631b: $e0 $a0
  ld a, e                                         ; $631d: $7b
  ldh [$ff9a], a                                  ; $631e: $e0 $9a
  ld a, d                                         ; $6320: $7a
  push de                                         ; $6321: $d5
  call Call_000_33f3                              ; $6322: $cd $f3 $33

  db $03, $59, $75

  jr c, jr_005_633d                               ; $6328: $38 $13

  ld hl, $cb2e                                    ; $632a: $21 $2e $cb
  ld a, [hl+]                                     ; $632d: $2a
  ld h, [hl]                                      ; $632e: $66
  ld l, a                                         ; $632f: $6f
  dec hl                                          ; $6330: $2b
  dec hl                                          ; $6331: $2b
  dec hl                                          ; $6332: $2b
  ld a, l                                         ; $6333: $7d
  ld [$cb2e], a                                   ; $6334: $ea $2e $cb
  ld a, h                                         ; $6337: $7c
  ld [$cb2f], a                                   ; $6338: $ea $2f $cb
  pop de                                          ; $633b: $d1
  ret                                             ; $633c: $c9


jr_005_633d:
  ld hl, $cb1b                                    ; $633d: $21 $1b $cb
  ld [hl], e                                      ; $6340: $73
  inc hl                                          ; $6341: $23
  ld [hl], d                                      ; $6342: $72
  call Call_005_70ac                              ; $6343: $cd $ac $70
  pop de                                          ; $6346: $d1
  jp Jump_005_70b5                                ; $6347: $c3 $b5 $70


  ld a, d                                         ; $634a: $7a
  or a                                            ; $634b: $b7
  jr nz, jr_005_6353                              ; $634c: $20 $05

  ld bc, $c2cf                                    ; $634e: $01 $cf $c2
  jr jr_005_6358                                  ; $6351: $18 $05

jr_005_6353:
  call Call_000_0a46                              ; $6353: $cd $46 $0a
  ld b, h                                         ; $6356: $44
  ld c, l                                         ; $6357: $4d

jr_005_6358:
  ld hl, $000d                                    ; $6358: $21 $0d $00
  add hl, bc                                      ; $635b: $09
  ld e, [hl]                                      ; $635c: $5e
  inc hl                                          ; $635d: $23
  ld d, [hl]                                      ; $635e: $56
  ld hl, $000b                                    ; $635f: $21 $0b $00
  add hl, bc                                      ; $6362: $09
  ld a, [hl+]                                     ; $6363: $2a
  ld h, [hl]                                      ; $6364: $66
  ld l, a                                         ; $6365: $6f
  call Call_005_70ac                              ; $6366: $cd $ac $70
  call Call_000_09d7                              ; $6369: $cd $d7 $09
  xor $04                                         ; $636c: $ee $04
  ld d, a                                         ; $636e: $57
  jp Jump_005_6397                                ; $636f: $c3 $97 $63


  call Call_005_70ac                              ; $6372: $cd $ac $70
  ld a, [bc]                                      ; $6375: $0a
  push af                                         ; $6376: $f5
  push bc                                         ; $6377: $c5
  ld e, $ff                                       ; $6378: $1e $ff
  call Call_005_60bf                              ; $637a: $cd $bf $60
  call Call_005_70ac                              ; $637d: $cd $ac $70
  ld hl, $0019                                    ; $6380: $21 $19 $00
  add hl, bc                                      ; $6383: $09
  ld l, [hl]                                      ; $6384: $6e
  pop bc                                          ; $6385: $c1
  pop af                                          ; $6386: $f1
  push hl                                         ; $6387: $e5
  push bc                                         ; $6388: $c5
  ld d, a                                         ; $6389: $57
  ld e, $ff                                       ; $638a: $1e $ff
  call Call_005_60bf                              ; $638c: $cd $bf $60
  pop bc                                          ; $638f: $c1
  pop hl                                          ; $6390: $e1
  ld d, l                                         ; $6391: $55
  jr jr_005_6397                                  ; $6392: $18 $03

Jump_005_6394:
  call Call_005_70ac                              ; $6394: $cd $ac $70

Call_005_6397:
Jump_005_6397:
jr_005_6397:
  ld hl, $0051                                    ; $6397: $21 $51 $00
  add hl, bc                                      ; $639a: $09
  ld a, [hl]                                      ; $639b: $7e
  or a                                            ; $639c: $b7
  jp nz, Jump_005_70b5                            ; $639d: $c2 $b5 $70

  ld a, d                                         ; $63a0: $7a
  cp $08                                          ; $63a1: $fe $08
  jr z, jr_005_6408                               ; $63a3: $28 $63

  cp $09                                          ; $63a5: $fe $09
  jr z, jr_005_6410                               ; $63a7: $28 $67

  cp $0a                                          ; $63a9: $fe $0a
  jr nz, jr_005_63b3                              ; $63ab: $20 $06

  ld hl, $0002                                    ; $63ad: $21 $02 $00
  add hl, bc                                      ; $63b0: $09
  ld a, [hl]                                      ; $63b1: $7e
  ld d, a                                         ; $63b2: $57

jr_005_63b3:
  ld a, [bc]                                      ; $63b3: $0a
  cp $01                                          ; $63b4: $fe $01
  jr nz, jr_005_63bf                              ; $63b6: $20 $07

  ld a, d                                         ; $63b8: $7a
  ld [$cadd], a                                   ; $63b9: $ea $dd $ca
  ld [$cadc], a                                   ; $63bc: $ea $dc $ca

jr_005_63bf:
  push de                                         ; $63bf: $d5
  ld de, $7b95                                    ; $63c0: $11 $95 $7b
  call Call_000_09ff                              ; $63c3: $cd $ff $09
  call Call_005_70f6                              ; $63c6: $cd $f6 $70
  or a                                            ; $63c9: $b7
  jr z, jr_005_63d8                               ; $63ca: $28 $0c

  cp $01                                          ; $63cc: $fe $01
  jr z, jr_005_63e0                               ; $63ce: $28 $10

  cp $02                                          ; $63d0: $fe $02
  jr z, jr_005_63e8                               ; $63d2: $28 $14

  cp $03                                          ; $63d4: $fe $03
  jr z, jr_005_63ee                               ; $63d6: $28 $16

jr_005_63d8:
  ld de, $7bc8                                    ; $63d8: $11 $c8 $7b
  call Call_000_09ff                              ; $63db: $cd $ff $09
  jr jr_005_63ee                                  ; $63de: $18 $0e

jr_005_63e0:
  ld de, $7bc8                                    ; $63e0: $11 $c8 $7b
  call Call_000_09ff                              ; $63e3: $cd $ff $09
  jr jr_005_63ee                                  ; $63e6: $18 $06

jr_005_63e8:
  ld de, $7b95                                    ; $63e8: $11 $95 $7b
  call Call_000_09ff                              ; $63eb: $cd $ff $09

jr_005_63ee:
  pop de                                          ; $63ee: $d1
  ld a, d                                         ; $63ef: $7a
  call Call_000_2fdd                              ; $63f0: $cd $dd $2f
  ld hl, $0021                                    ; $63f3: $21 $21 $00
  add hl, bc                                      ; $63f6: $09
  ld a, [$cb19]                                   ; $63f7: $fa $19 $cb
  and $40                                         ; $63fa: $e6 $40
  jp z, Jump_005_6072                             ; $63fc: $ca $72 $60

  ld a, [$cb1a]                                   ; $63ff: $fa $1a $cb
  and $10                                         ; $6402: $e6 $10
  ret nz                                          ; $6404: $c0

  jp Jump_005_70b5                                ; $6405: $c3 $b5 $70


jr_005_6408:
  ld a, $20                                       ; $6408: $3e $20
  call Call_000_0806                              ; $640a: $cd $06 $08
  jp Jump_005_70b5                                ; $640d: $c3 $b5 $70


jr_005_6410:
  xor a                                           ; $6410: $af
  call Call_000_0806                              ; $6411: $cd $06 $08
  jp Jump_005_70b5                                ; $6414: $c3 $b5 $70


  ld hl, $5c73                                    ; $6417: $21 $73 $5c

jr_005_641a:
  ld a, [hl+]                                     ; $641a: $2a
  or a                                            ; $641b: $b7
  jr z, jr_005_6435                               ; $641c: $28 $17

  cp d                                            ; $641e: $ba
  jr nz, jr_005_641a                              ; $641f: $20 $f9

  push de                                         ; $6421: $d5
  ld hl, $5b79                                    ; $6422: $21 $79 $5b
  call Call_000_317a                              ; $6425: $cd $7a $31
  ld a, [hl+]                                     ; $6428: $2a
  ld d, [hl]                                      ; $6429: $56
  ld e, a                                         ; $642a: $5f
  call Call_005_70ac                              ; $642b: $cd $ac $70
  call Call_000_09ff                              ; $642e: $cd $ff $09
  pop de                                          ; $6431: $d1
  jp Jump_005_70b5                                ; $6432: $c3 $b5 $70


jr_005_6435:
  ld a, d                                         ; $6435: $7a
  push de                                         ; $6436: $d5
  ld hl, $5b79                                    ; $6437: $21 $79 $5b
  call Call_000_317a                              ; $643a: $cd $7a $31
  ld a, [hl+]                                     ; $643d: $2a
  ld d, [hl]                                      ; $643e: $56
  ld e, a                                         ; $643f: $5f
  call Call_005_70ac                              ; $6440: $cd $ac $70
  call Call_000_09f4                              ; $6443: $cd $f4 $09
  pop de                                          ; $6446: $d1
  jp Jump_005_70b5                                ; $6447: $c3 $b5 $70


  call Call_005_70ac                              ; $644a: $cd $ac $70
  ld a, d                                         ; $644d: $7a
  or a                                            ; $644e: $b7
  jr nz, jr_005_6456                              ; $644f: $20 $05

  ld hl, $c2cf                                    ; $6451: $21 $cf $c2
  jr jr_005_645c                                  ; $6454: $18 $06

jr_005_6456:
  ld e, $00                                       ; $6456: $1e $00
  ld a, d                                         ; $6458: $7a
  call Call_000_0a46                              ; $6459: $cd $46 $0a

jr_005_645c:
  push de                                         ; $645c: $d5
  push hl                                         ; $645d: $e5
  ld hl, $0051                                    ; $645e: $21 $51 $00
  add hl, bc                                      ; $6461: $09
  push hl                                         ; $6462: $e5
  pop de                                          ; $6463: $d1
  pop hl                                          ; $6464: $e1
  ld a, l                                         ; $6465: $7d
  ld [de], a                                      ; $6466: $12
  inc de                                          ; $6467: $13
  ld a, h                                         ; $6468: $7c
  ld [de], a                                      ; $6469: $12
  pop de                                          ; $646a: $d1
  jp Jump_005_70b5                                ; $646b: $c3 $b5 $70


  call Call_005_70ac                              ; $646e: $cd $ac $70
  ld hl, $0051                                    ; $6471: $21 $51 $00
  add hl, bc                                      ; $6474: $09
  xor a                                           ; $6475: $af
  ld [hl+], a                                     ; $6476: $22
  ld [hl], $00                                    ; $6477: $36 $00
  jp Jump_005_70b5                                ; $6479: $c3 $b5 $70


  ld a, d                                         ; $647c: $7a
  ld [$cb3e], a                                   ; $647d: $ea $3e $cb
  jp Jump_005_70b5                                ; $6480: $c3 $b5 $70


  ld hl, $00ae                                    ; $6483: $21 $ae $00
  ld a, l                                         ; $6486: $7d
  ld [$c2f4], a                                   ; $6487: $ea $f4 $c2
  ld a, h                                         ; $648a: $7c
  ld [$c2f5], a                                   ; $648b: $ea $f5 $c2
  jp Jump_005_70b5                                ; $648e: $c3 $b5 $70


  ld hl, $0039                                    ; $6491: $21 $39 $00
  ld a, l                                         ; $6494: $7d
  ld [$c2f4], a                                   ; $6495: $ea $f4 $c2
  ld a, h                                         ; $6498: $7c
  ld [$c2f5], a                                   ; $6499: $ea $f5 $c2
  jp Jump_005_70b5                                ; $649c: $c3 $b5 $70


  ld a, $03                                       ; $649f: $3e $03
  ld [$cd5b], a                                   ; $64a1: $ea $5b $cd
  ld h, d                                         ; $64a4: $62
  ld l, e                                         ; $64a5: $6b
  add hl, de                                      ; $64a6: $19
  add hl, de                                      ; $64a7: $19
  inc hl                                          ; $64a8: $23
  ld a, $29                                       ; $64a9: $3e $29
  call Call_000_33f3                              ; $64ab: $cd $f3 $33
  inc b                                           ; $64ae: $04
  ret                                             ; $64af: $c9


  ld b, d                                         ; $64b0: $42
  ld a, $09                                       ; $64b1: $3e $09
  ld [$cb2d], a                                   ; $64b3: $ea $2d $cb
  jp Jump_005_70b5                                ; $64b6: $c3 $b5 $70


  ld a, [$cb19]                                   ; $64b9: $fa $19 $cb
  cp $ff                                          ; $64bc: $fe $ff
  jr nz, jr_005_6510                              ; $64be: $20 $50

  ld hl, $cb36                                    ; $64c0: $21 $36 $cb
  ld [hl], c                                      ; $64c3: $71
  inc hl                                          ; $64c4: $23
  ld [hl], b                                      ; $64c5: $70
  ld hl, $001a                                    ; $64c6: $21 $1a $00
  add hl, bc                                      ; $64c9: $09
  ld a, [hl+]                                     ; $64ca: $2a
  ld h, [hl]                                      ; $64cb: $66
  ld l, a                                         ; $64cc: $6f
  ld a, l                                         ; $64cd: $7d
  ld [$cb38], a                                   ; $64ce: $ea $38 $cb
  ld a, h                                         ; $64d1: $7c
  ld [$cb39], a                                   ; $64d2: $ea $39 $cb
  ld hl, $0021                                    ; $64d5: $21 $21 $00
  add hl, bc                                      ; $64d8: $09
  ld a, [hl+]                                     ; $64d9: $2a
  ld [$cb3b], a                                   ; $64da: $ea $3b $cb
  ld a, [hl+]                                     ; $64dd: $2a
  ld [$cb3c], a                                   ; $64de: $ea $3c $cb
  ld a, [hl]                                      ; $64e1: $7e
  ld [$cb3d], a                                   ; $64e2: $ea $3d $cb
  ld hl, $001c                                    ; $64e5: $21 $1c $00
  add hl, bc                                      ; $64e8: $09
  ld a, [hl+]                                     ; $64e9: $2a
  ld d, a                                         ; $64ea: $57
  ld a, [hl]                                      ; $64eb: $7e
  or d                                            ; $64ec: $b2
  jr z, jr_005_64f1                               ; $64ed: $28 $02

  ld a, $01                                       ; $64ef: $3e $01

jr_005_64f1:
  ld [$cb3a], a                                   ; $64f1: $ea $3a $cb
  call Call_000_09ab                              ; $64f4: $cd $ab $09
  xor $04                                         ; $64f7: $ee $04
  ld d, a                                         ; $64f9: $57
  ld a, [$cb1a]                                   ; $64fa: $fa $1a $cb
  set 4, a                                        ; $64fd: $cb $e7
  ld [$cb1a], a                                   ; $64ff: $ea $1a $cb
  call Call_005_6397                              ; $6502: $cd $97 $63
  call Call_000_2fc1                              ; $6505: $cd $c1 $2f
  ld e, a                                         ; $6508: $5f
  xor a                                           ; $6509: $af
  ld [$cb2d], a                                   ; $650a: $ea $2d $cb
  jp Jump_005_5d65                                ; $650d: $c3 $65 $5d


jr_005_6510:
  ld a, [$cb19]                                   ; $6510: $fa $19 $cb
  ld h, d                                         ; $6513: $62
  ld l, e                                         ; $6514: $6b
  add hl, de                                      ; $6515: $19
  add hl, de                                      ; $6516: $19
  inc hl                                          ; $6517: $23
  call Call_000_33f3                              ; $6518: $cd $f3 $33

  db $04, $c9, $42

  ld a, $09                                       ; $651e: $3e $09
  ld [$cb2d], a                                   ; $6520: $ea $2d $cb
  jp Jump_005_70b5                                ; $6523: $c3 $b5 $70


  ld a, [$cb19]                                   ; $6526: $fa $19 $cb
  ld h, d                                         ; $6529: $62
  ld l, e                                         ; $652a: $6b
  add hl, de                                      ; $652b: $19
  add hl, de                                      ; $652c: $19
  inc hl                                          ; $652d: $23
  call Call_000_33f3                              ; $652e: $cd $f3 $33

  db $04, $c0, $43

  ld a, $09                                       ; $6534: $3e $09
  ld [$cb2d], a                                   ; $6536: $ea $2d $cb
  jp Jump_005_70b5                                ; $6539: $c3 $b5 $70


  jp Jump_005_70b5                                ; $653c: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $653f: $f0 $70
  push af                                         ; $6541: $f5
  ld a, $06                                       ; $6542: $3e $06
  ldh [rSVBK], a                                  ; $6544: $e0 $70
  ldh a, [$ffd6]                                  ; $6546: $f0 $d6
  ld [$ddc4], a                                   ; $6548: $ea $c4 $dd
  ld a, d                                         ; $654b: $7a
  cp $ff                                          ; $654c: $fe $ff
  jr nz, jr_005_6565                              ; $654e: $20 $15

  pop af                                          ; $6550: $f1
  ldh [rSVBK], a                                  ; $6551: $e0 $70
  ld hl, $cdbd                                    ; $6553: $21 $bd $cd
  ld c, [hl]                                      ; $6556: $4e
  inc hl                                          ; $6557: $23
  ld b, [hl]                                      ; $6558: $46
  inc bc                                          ; $6559: $03
  ld a, [bc]                                      ; $655a: $0a
  dec bc                                          ; $655b: $0b
  call Call_000_33f3                              ; $655c: $cd $f3 $33

  db $01, $20, $53

  jp Jump_000_0c3e                                ; $6562: $c3 $3e $0c


jr_005_6565:
  ldh [$ffd8], a                                  ; $6565: $e0 $d8
  ld [$ddc5], a                                   ; $6567: $ea $c5 $dd
  ld a, e                                         ; $656a: $7b
  ldh [$ffd7], a                                  ; $656b: $e0 $d7
  ld a, $09                                       ; $656d: $3e $09
  ld [$cb2d], a                                   ; $656f: $ea $2d $cb
  ld a, $01                                       ; $6572: $3e $01
  ld [$c0a6], a                                   ; $6574: $ea $a6 $c0
  pop af                                          ; $6577: $f1
  ldh [rSVBK], a                                  ; $6578: $e0 $70
  ldh a, [$ffd7]                                  ; $657a: $f0 $d7
  call Call_000_33f3                              ; $657c: $cd $f3 $33

  db $01, $41, $53

  cp $02                                          ; $6582: $fe $02
  jr z, jr_005_658b                               ; $6584: $28 $05

  cp $03                                          ; $6586: $fe $03
  jr z, jr_005_6594                               ; $6588: $28 $0a

  ret                                             ; $658a: $c9


jr_005_658b:
  xor a                                           ; $658b: $af
  ld [$c0a6], a                                   ; $658c: $ea $a6 $c0
  ld a, $33                                       ; $658f: $3e $33
  jp Jump_000_261e                                ; $6591: $c3 $1e $26


jr_005_6594:
  xor a                                           ; $6594: $af
  ld [$c0a6], a                                   ; $6595: $ea $a6 $c0
  ld a, $34                                       ; $6598: $3e $34
  jp Jump_000_261e                                ; $659a: $c3 $1e $26


  push de                                         ; $659d: $d5
  ld hl, $cd72                                    ; $659e: $21 $72 $cd
  ld a, [hl+]                                     ; $65a1: $2a
  ld h, [hl]                                      ; $65a2: $66
  ld l, a                                         ; $65a3: $6f
  ld a, l                                         ; $65a4: $7d
  ldh [$ff9b], a                                  ; $65a5: $e0 $9b
  ld a, h                                         ; $65a7: $7c
  ldh [$ff9c], a                                  ; $65a8: $e0 $9c
  ld hl, $cd74                                    ; $65aa: $21 $74 $cd
  ld a, [hl+]                                     ; $65ad: $2a
  ld h, [hl]                                      ; $65ae: $66
  ld l, a                                         ; $65af: $6f
  ld a, l                                         ; $65b0: $7d
  ldh [$ff9d], a                                  ; $65b1: $e0 $9d
  ld a, h                                         ; $65b3: $7c
  ldh [$ff9e], a                                  ; $65b4: $e0 $9e
  ld a, $09                                       ; $65b6: $3e $09
  call Call_000_04e0                              ; $65b8: $cd $e0 $04
  ld a, e                                         ; $65bb: $7b
  ld [$cb1b], a                                   ; $65bc: $ea $1b $cb
  ld a, d                                         ; $65bf: $7a
  ld [$cb1c], a                                   ; $65c0: $ea $1c $cb
  call Call_005_70ac                              ; $65c3: $cd $ac $70
  ld hl, $004b                                    ; $65c6: $21 $4b $00
  add hl, bc                                      ; $65c9: $09
  ld a, [hl]                                      ; $65ca: $7e
  ld [$cd85], a                                   ; $65cb: $ea $85 $cd
  ld de, $791b                                    ; $65ce: $11 $1b $79
  call Call_000_09ff                              ; $65d1: $cd $ff $09
  pop de                                          ; $65d4: $d1
  ld a, [$cb19]                                   ; $65d5: $fa $19 $cb
  call Call_000_2fd9                              ; $65d8: $cd $d9 $2f
  ld a, d                                         ; $65db: $7a
  call Call_000_2fdd                              ; $65dc: $cd $dd $2f
  ld d, $00                                       ; $65df: $16 $00
  sla e                                           ; $65e1: $cb $23
  rl d                                            ; $65e3: $cb $12
  sla e                                           ; $65e5: $cb $23
  rl d                                            ; $65e7: $cb $12
  sla e                                           ; $65e9: $cb $23
  rl d                                            ; $65eb: $cb $12
  call Call_000_2fe3                              ; $65ed: $cd $e3 $2f
  ld a, $07                                       ; $65f0: $3e $07
  ld [$cb2d], a                                   ; $65f2: $ea $2d $cb
  jp Jump_005_70b5                                ; $65f5: $c3 $b5 $70


  ld a, d                                         ; $65f8: $7a
  or a                                            ; $65f9: $b7
  jr nz, jr_005_6601                              ; $65fa: $20 $05

  ld bc, $c2cf                                    ; $65fc: $01 $cf $c2
  jr jr_005_6606                                  ; $65ff: $18 $05

jr_005_6601:
  call Call_000_0a46                              ; $6601: $cd $46 $0a
  ld b, h                                         ; $6604: $44
  ld c, l                                         ; $6605: $4d

jr_005_6606:
  ld hl, $000d                                    ; $6606: $21 $0d $00
  add hl, bc                                      ; $6609: $09
  ld a, [hl+]                                     ; $660a: $2a
  ld h, [hl]                                      ; $660b: $66
  ld l, a                                         ; $660c: $6f
  ld a, l                                         ; $660d: $7d
  ld [$cb15], a                                   ; $660e: $ea $15 $cb
  ld a, h                                         ; $6611: $7c
  ld [$cb16], a                                   ; $6612: $ea $16 $cb
  ld hl, $000b                                    ; $6615: $21 $0b $00
  add hl, bc                                      ; $6618: $09
  ld e, [hl]                                      ; $6619: $5e
  inc hl                                          ; $661a: $23
  ld d, [hl]                                      ; $661b: $56
  push de                                         ; $661c: $d5
  ld hl, $cd72                                    ; $661d: $21 $72 $cd
  ld a, [hl+]                                     ; $6620: $2a
  ld h, [hl]                                      ; $6621: $66
  ld l, a                                         ; $6622: $6f
  ld a, l                                         ; $6623: $7d
  ldh [$ff9b], a                                  ; $6624: $e0 $9b
  ld a, h                                         ; $6626: $7c
  ldh [$ff9c], a                                  ; $6627: $e0 $9c
  ld hl, $cd74                                    ; $6629: $21 $74 $cd
  ld a, [hl+]                                     ; $662c: $2a
  ld h, [hl]                                      ; $662d: $66
  ld l, a                                         ; $662e: $6f
  ld a, l                                         ; $662f: $7d
  ldh [$ff9d], a                                  ; $6630: $e0 $9d
  ld a, h                                         ; $6632: $7c
  ldh [$ff9e], a                                  ; $6633: $e0 $9e
  ld a, $09                                       ; $6635: $3e $09
  call Call_000_04e0                              ; $6637: $cd $e0 $04
  ld a, e                                         ; $663a: $7b
  ld [$cb1b], a                                   ; $663b: $ea $1b $cb
  ld a, d                                         ; $663e: $7a
  ld [$cb1c], a                                   ; $663f: $ea $1c $cb
  call Call_005_70ac                              ; $6642: $cd $ac $70
  ld hl, $004b                                    ; $6645: $21 $4b $00
  add hl, bc                                      ; $6648: $09
  ld a, [hl]                                      ; $6649: $7e
  ld [$cd85], a                                   ; $664a: $ea $85 $cd
  ld a, [$cb19]                                   ; $664d: $fa $19 $cb
  cp $01                                          ; $6650: $fe $01
  jr z, jr_005_6665                               ; $6652: $28 $11

  cp $02                                          ; $6654: $fe $02
  jr z, jr_005_6672                               ; $6656: $28 $1a

  ld hl, $0044                                    ; $6658: $21 $44 $00
  add hl, bc                                      ; $665b: $09
  ld a, $c0                                       ; $665c: $3e $c0
  ld [hl+], a                                     ; $665e: $22
  ld [hl], $00                                    ; $665f: $36 $00
  pop de                                          ; $6661: $d1
  jp Jump_005_616c                                ; $6662: $c3 $6c $61


jr_005_6665:
  ld hl, $0044                                    ; $6665: $21 $44 $00
  add hl, bc                                      ; $6668: $09
  ld a, $80                                       ; $6669: $3e $80
  ld [hl+], a                                     ; $666b: $22
  ld [hl], $01                                    ; $666c: $36 $01
  pop de                                          ; $666e: $d1
  jp Jump_005_616c                                ; $666f: $c3 $6c $61


jr_005_6672:
  ld hl, $0044                                    ; $6672: $21 $44 $00
  add hl, bc                                      ; $6675: $09
  ld a, $00                                       ; $6676: $3e $00
  ld [hl+], a                                     ; $6678: $22
  ld [hl], $03                                    ; $6679: $36 $03
  pop de                                          ; $667b: $d1
  jp Jump_005_616c                                ; $667c: $c3 $6c $61


  ld a, d                                         ; $667f: $7a
  call Call_000_33f3                              ; $6680: $cd $f3 $33

  db $04, $f2, $46

  ld e, d                                         ; $6686: $5a
  ld d, $03                                       ; $6687: $16 $03
  ld bc, $18fd                                    ; $6689: $01 $fd $18
  ld hl, $1f84                                    ; $668c: $21 $84 $1f
  ld a, $09                                       ; $668f: $3e $09
  ld [$cb2d], a                                   ; $6691: $ea $2d $cb
  ldh a, [rSVBK]                                  ; $6694: $f0 $70
  push af                                         ; $6696: $f5
  ld a, $06                                       ; $6697: $3e $06
  ldh [rSVBK], a                                  ; $6699: $e0 $70
  ld a, [$dcc8]                                   ; $669b: $fa $c8 $dc
  ldh [$ffbd], a                                  ; $669e: $e0 $bd
  pop af                                          ; $66a0: $f1
  ldh [rSVBK], a                                  ; $66a1: $e0 $70
  ldh a, [$ffbd]                                  ; $66a3: $f0 $bd
  cp $42                                          ; $66a5: $fe $42
  jr z, jr_005_66ae                               ; $66a7: $28 $05

  ld a, $43                                       ; $66a9: $3e $43
  call Call_000_394b                              ; $66ab: $cd $4b $39

jr_005_66ae:
  xor a                                           ; $66ae: $af
  call Call_000_33f3                              ; $66af: $cd $f3 $33

  db $04, $01, $44

  ldh a, [rSVBK]                                  ; $66b5: $f0 $70
  push af                                         ; $66b7: $f5
  ld a, $06                                       ; $66b8: $3e $06
  ldh [rSVBK], a                                  ; $66ba: $e0 $70
  ld a, $01                                       ; $66bc: $3e $01
  ld [$ddc6], a                                   ; $66be: $ea $c6 $dd
  pop af                                          ; $66c1: $f1
  ldh [rSVBK], a                                  ; $66c2: $e0 $70
  jp Jump_005_70b5                                ; $66c4: $c3 $b5 $70


  call Call_000_33f3                              ; $66c7: $cd $f3 $33
  ld e, $a7                                       ; $66ca: $1e $a7
  ld d, a                                         ; $66cc: $57
  jp Jump_005_70b5                                ; $66cd: $c3 $b5 $70


  call Call_000_33f3                              ; $66d0: $cd $f3 $33
  ld b, $8d                                       ; $66d3: $06 $8d
  ld d, c                                         ; $66d5: $51
  jp Jump_005_70b5                                ; $66d6: $c3 $b5 $70


  jp Jump_005_70b5                                ; $66d9: $c3 $b5 $70


  push de                                         ; $66dc: $d5
  ldh a, [rSVBK]                                  ; $66dd: $f0 $70
  push af                                         ; $66df: $f5
  ld a, $02                                       ; $66e0: $3e $02
  ldh [rSVBK], a                                  ; $66e2: $e0 $70
  ld de, $da80                                    ; $66e4: $11 $80 $da
  ld hl, $d080                                    ; $66e7: $21 $80 $d0
  call Call_000_0212                              ; $66ea: $cd $12 $02
  ld de, $d040                                    ; $66ed: $11 $40 $d0
  call Call_000_0212                              ; $66f0: $cd $12 $02
  ld a, $01                                       ; $66f3: $3e $01
  call Call_005_763b                              ; $66f5: $cd $3b $76
  pop af                                          ; $66f8: $f1
  ldh [rSVBK], a                                  ; $66f9: $e0 $70
  call Call_000_28b5                              ; $66fb: $cd $b5 $28
  pop de                                          ; $66fe: $d1
  ld a, d                                         ; $66ff: $7a
  call Call_005_71cb                              ; $6700: $cd $cb $71
  jp Jump_005_70b5                                ; $6703: $c3 $b5 $70


  ld a, $08                                       ; $6706: $3e $08
  ld [$cb2d], a                                   ; $6708: $ea $2d $cb
  push de                                         ; $670b: $d5
  ldh a, [rSVBK]                                  ; $670c: $f0 $70
  push af                                         ; $670e: $f5
  ld a, $02                                       ; $670f: $3e $02
  ldh [rSVBK], a                                  ; $6711: $e0 $70
  ld hl, $da80                                    ; $6713: $21 $80 $da
  ld de, $d000                                    ; $6716: $11 $00 $d0
  call Call_000_020c                              ; $6719: $cd $0c $02
  pop af                                          ; $671c: $f1
  ldh [rSVBK], a                                  ; $671d: $e0 $70
  pop de                                          ; $671f: $d1
  ld a, d                                         ; $6720: $7a
  call Call_005_7227                              ; $6721: $cd $27 $72
  jp Jump_005_70b5                                ; $6724: $c3 $b5 $70


  ldh a, [rSVBK]                                  ; $6727: $f0 $70
  push af                                         ; $6729: $f5
  ld a, $06                                       ; $672a: $3e $06
  ldh [rSVBK], a                                  ; $672c: $e0 $70
  ld a, d                                         ; $672e: $7a
  ld [$ddc0], a                                   ; $672f: $ea $c0 $dd
  pop af                                          ; $6732: $f1
  ldh [rSVBK], a                                  ; $6733: $e0 $70
  jp Jump_005_70b5                                ; $6735: $c3 $b5 $70


  call Call_005_7167                              ; $6738: $cd $67 $71
  ld a, d                                         ; $673b: $7a
  rst $00                                         ; $673c: $c7

  db $4c, $67

  ld h, [hl]                                      ; $673f: $66
  ld h, a                                         ; $6740: $67
  ld l, c                                         ; $6741: $69
  ld h, a                                         ; $6742: $67
  ld l, a                                         ; $6743: $6f
  ld h, a                                         ; $6744: $67
  ld [hl], l                                      ; $6745: $75
  ld h, a                                         ; $6746: $67
  ld c, c                                         ; $6747: $49
  ld h, a                                         ; $6748: $67
  jp Jump_005_70b5                                ; $6749: $c3 $b5 $70


  ld d, e                                         ; $674c: $53
  ld hl, $7f68                                    ; $674d: $21 $68 $7f
  ld e, $04                                       ; $6750: $1e $04
  ld a, d                                         ; $6752: $7a
  call Call_000_34dc                              ; $6753: $cd $dc $34
  ld a, l                                         ; $6756: $7d
  ld [$cc0a], a                                   ; $6757: $ea $0a $cc
  ld a, h                                         ; $675a: $7c
  ld [$cc0b], a                                   ; $675b: $ea $0b $cc
  ld a, $29                                       ; $675e: $3e $29
  call Call_000_261e                              ; $6760: $cd $1e $26
  jp Jump_005_70b5                                ; $6763: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6766: $c3 $b5 $70


  ld a, $03                                       ; $6769: $3e $03
  call Call_000_261e                              ; $676b: $cd $1e $26
  ret                                             ; $676e: $c9


  ld a, $30                                       ; $676f: $3e $30
  call Call_000_261e                              ; $6771: $cd $1e $26
  ret                                             ; $6774: $c9


  ret                                             ; $6775: $c9


  ld de, $cec0                                    ; $6776: $11 $c0 $ce
  ld hl, $cebd                                    ; $6779: $21 $bd $ce
  ld b, $03                                       ; $677c: $06 $03

jr_005_677e:
  ld a, [hl+]                                     ; $677e: $2a
  ld [de], a                                      ; $677f: $12
  inc de                                          ; $6780: $13
  dec b                                           ; $6781: $05
  jr nz, jr_005_677e                              ; $6782: $20 $fa

  xor a                                           ; $6784: $af
  ld hl, $cebd                                    ; $6785: $21 $bd $ce
  ld [hl+], a                                     ; $6788: $22
  ld [hl+], a                                     ; $6789: $22
  ld [hl], a                                      ; $678a: $77
  jp Jump_005_70b5                                ; $678b: $c3 $b5 $70


  ld de, $cebd                                    ; $678e: $11 $bd $ce
  ld hl, $cec0                                    ; $6791: $21 $c0 $ce
  ld b, $03                                       ; $6794: $06 $03

jr_005_6796:
  ld a, [hl+]                                     ; $6796: $2a
  ld [de], a                                      ; $6797: $12
  inc de                                          ; $6798: $13
  dec b                                           ; $6799: $05
  jr nz, jr_005_6796                              ; $679a: $20 $fa

  jp Jump_005_70b5                                ; $679c: $c3 $b5 $70


  ld a, d                                         ; $679f: $7a
  rst $00                                         ; $67a0: $c7

  db $85, $69, $a5, $68, $bc, $68, $ef, $68, $db, $68, $9f, $69

  cp c                                            ; $67ad: $b9
  ld l, c                                         ; $67ae: $69
  inc bc                                          ; $67af: $03
  ld l, b                                         ; $67b0: $68

  db $ed, $69

  inc bc                                          ; $67b3: $03
  ld l, d                                         ; $67b4: $6a
  ld b, $6a                                       ; $67b5: $06 $6a
  dec e                                           ; $67b7: $1d
  ld l, c                                         ; $67b8: $69
  add hl, bc                                      ; $67b9: $09
  ld l, d                                         ; $67ba: $6a
  inc c                                           ; $67bb: $0c
  ld l, d                                         ; $67bc: $6a
  dec [hl]                                        ; $67bd: $35
  ld l, c                                         ; $67be: $69
  ld e, a                                         ; $67bf: $5f
  ld l, c                                         ; $67c0: $69
  inc hl                                          ; $67c1: $23
  ld l, c                                         ; $67c2: $69
  inc l                                           ; $67c3: $2c
  ld l, c                                         ; $67c4: $69
  jr nz, jr_005_6830                              ; $67c5: $20 $69

  db $0d, $69, $d3, $69

  ld a, [bc]                                      ; $67cb: $0a
  ld l, c                                         ; $67cc: $69
  rst $38                                         ; $67cd: $ff
  ld l, b                                         ; $67ce: $68

  db $02, $69, $8e, $68, $6c, $68, $82, $68, $67, $68, $50, $68, $2b, $68, $36, $68

  inc hl                                          ; $67df: $23
  ld l, b                                         ; $67e0: $68
  dec de                                          ; $67e1: $1b
  ld l, b                                         ; $67e2: $68
  dec bc                                          ; $67e3: $0b
  ld l, b                                         ; $67e4: $68
  inc de                                          ; $67e5: $13
  ld l, b                                         ; $67e6: $68

  db $eb, $67, $ee, $67

  xor a                                           ; $67eb: $af
  jr jr_005_67f0                                  ; $67ec: $18 $02

  ld a, $01                                       ; $67ee: $3e $01

jr_005_67f0:
  ld [$cbdb], a                                   ; $67f0: $ea $db $cb
  ld a, $0a                                       ; $67f3: $3e $0a
  ld [$cb2d], a                                   ; $67f5: $ea $2d $cb
  call Call_005_7167                              ; $67f8: $cd $67 $71
  ld a, $4c                                       ; $67fb: $3e $4c
  call Call_000_261e                              ; $67fd: $cd $1e $26
  jp Jump_005_70b5                                ; $6800: $c3 $b5 $70


  ld a, $3c                                       ; $6803: $3e $3c
  call Call_000_261e                              ; $6805: $cd $1e $26
  jp Jump_005_70b5                                ; $6808: $c3 $b5 $70


  ld a, $36                                       ; $680b: $3e $36
  call Call_000_261e                              ; $680d: $cd $1e $26
  jp Jump_005_70b5                                ; $6810: $c3 $b5 $70


  ld a, $35                                       ; $6813: $3e $35
  call Call_000_261e                              ; $6815: $cd $1e $26
  jp Jump_005_70b5                                ; $6818: $c3 $b5 $70


  ld a, $04                                       ; $681b: $3e $04
  call Call_000_261e                              ; $681d: $cd $1e $26
  jp Jump_005_70b5                                ; $6820: $c3 $b5 $70


  ld a, $53                                       ; $6823: $3e $53
  call Call_000_261e                              ; $6825: $cd $1e $26
  jp Jump_005_70b5                                ; $6828: $c3 $b5 $70


  call Call_005_7167                              ; $682b: $cd $67 $71
  ld a, $4b                                       ; $682e: $3e $4b

jr_005_6830:
  call Call_000_261e                              ; $6830: $cd $1e $26
  jp Jump_005_70b5                                ; $6833: $c3 $b5 $70


  xor a                                           ; $6836: $af
  ld [$cbdd], a                                   ; $6837: $ea $dd $cb
  call Call_005_7167                              ; $683a: $cd $67 $71
  ld a, $04                                       ; $683d: $3e $04
  ld [$cbdc], a                                   ; $683f: $ea $dc $cb
  call Call_000_33f3                              ; $6842: $cd $f3 $33

  db $09, $bb, $74

  ld a, $3b                                       ; $6848: $3e $3b
  call Call_000_261e                              ; $684a: $cd $1e $26
  jp Jump_005_70b5                                ; $684d: $c3 $b5 $70


  xor a                                           ; $6850: $af
  ld [$cbdd], a                                   ; $6851: $ea $dd $cb
  ld a, $07                                       ; $6854: $3e $07
  ld [$cbdc], a                                   ; $6856: $ea $dc $cb
  call Call_000_33f3                              ; $6859: $cd $f3 $33

  db $09, $bb, $74

  ld a, $3b                                       ; $685f: $3e $3b
  call Call_000_261e                              ; $6861: $cd $1e $26
  jp Jump_005_70b5                                ; $6864: $c3 $b5 $70


  ld a, $01                                       ; $6867: $3e $01
  ld [$cbfe], a                                   ; $6869: $ea $fe $cb
  xor a                                           ; $686c: $af
  ld [$cbdd], a                                   ; $686d: $ea $dd $cb
  xor a                                           ; $6870: $af
  ld [$cbdc], a                                   ; $6871: $ea $dc $cb
  call Call_000_33f3                              ; $6874: $cd $f3 $33

  db $09, $bb, $74

  ld a, $3b                                       ; $687a: $3e $3b
  call Call_000_261e                              ; $687c: $cd $1e $26
  jp Jump_005_70b5                                ; $687f: $c3 $b5 $70


  xor a                                           ; $6882: $af
  ld [$cbdd], a                                   ; $6883: $ea $dd $cb
  ld a, $3f                                       ; $6886: $3e $3f
  call Call_000_261e                              ; $6888: $cd $1e $26
  jp Jump_005_70b5                                ; $688b: $c3 $b5 $70


  xor a                                           ; $688e: $af
  ld [$cbdd], a                                   ; $688f: $ea $dd $cb
  ld a, $06                                       ; $6892: $3e $06
  ld [$cbdc], a                                   ; $6894: $ea $dc $cb
  call Call_000_33f3                              ; $6897: $cd $f3 $33

  db $09, $bb, $74

  ld a, $3b                                       ; $689d: $3e $3b
  call Call_000_261e                              ; $689f: $cd $1e $26
  jp Jump_005_70b5                                ; $68a2: $c3 $b5 $70


  xor a                                           ; $68a5: $af
  ld [$cbdd], a                                   ; $68a6: $ea $dd $cb
  ld a, $01                                       ; $68a9: $3e $01
  ld [$cbdc], a                                   ; $68ab: $ea $dc $cb
  call Call_000_33f3                              ; $68ae: $cd $f3 $33

  db $09, $bb, $74

  ld a, $3b                                       ; $68b4: $3e $3b
  call Call_000_261e                              ; $68b6: $cd $1e $26
  jp Jump_005_70b5                                ; $68b9: $c3 $b5 $70


  ld a, $0a                                       ; $68bc: $3e $0a
  ld [$cb2d], a                                   ; $68be: $ea $2d $cb
  call Call_005_7167                              ; $68c1: $cd $67 $71
  xor a                                           ; $68c4: $af
  ld [$cbdd], a                                   ; $68c5: $ea $dd $cb
  ld a, $02                                       ; $68c8: $3e $02
  ld [$cbdc], a                                   ; $68ca: $ea $dc $cb
  call Call_000_33f3                              ; $68cd: $cd $f3 $33

  db $09, $bb, $74

  ld a, $3b                                       ; $68d3: $3e $3b
  call Call_000_261e                              ; $68d5: $cd $1e $26
  jp Jump_005_70b5                                ; $68d8: $c3 $b5 $70


  ld a, $0a                                       ; $68db: $3e $0a
  ld [$cb2d], a                                   ; $68dd: $ea $2d $cb
  call Call_005_7167                              ; $68e0: $cd $67 $71
  ld a, $4f                                       ; $68e3: $3e $4f
  ld d, $01                                       ; $68e5: $16 $01
  ld e, $00                                       ; $68e7: $1e $00
  call Call_000_2621                              ; $68e9: $cd $21 $26
  jp Jump_005_70b5                                ; $68ec: $c3 $b5 $70


  ld a, $0a                                       ; $68ef: $3e $0a
  ld [$cb2d], a                                   ; $68f1: $ea $2d $cb
  call Call_005_7167                              ; $68f4: $cd $67 $71
  ld a, $4f                                       ; $68f7: $3e $4f
  call Call_000_261e                              ; $68f9: $cd $1e $26
  jp Jump_005_70b5                                ; $68fc: $c3 $b5 $70


  jp Jump_005_70b5                                ; $68ff: $c3 $b5 $70


  ld a, $50                                       ; $6902: $3e $50
  call Call_000_261e                              ; $6904: $cd $1e $26
  jp Jump_005_70b5                                ; $6907: $c3 $b5 $70


  jp Jump_005_70b5                                ; $690a: $c3 $b5 $70


  ld a, $0a                                       ; $690d: $3e $0a
  ld [$cb2d], a                                   ; $690f: $ea $2d $cb
  call Call_005_7167                              ; $6912: $cd $67 $71
  ld a, $0a                                       ; $6915: $3e $0a
  call Call_000_261e                              ; $6917: $cd $1e $26
  jp Jump_005_70b5                                ; $691a: $c3 $b5 $70


  jp Jump_005_70b5                                ; $691d: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6920: $c3 $b5 $70


  call Call_000_33f3                              ; $6923: $cd $f3 $33
  rlca                                            ; $6926: $07
  add e                                           ; $6927: $83
  ld e, b                                         ; $6928: $58
  jp Jump_005_70b5                                ; $6929: $c3 $b5 $70


  call Call_000_33f3                              ; $692c: $cd $f3 $33
  rlca                                            ; $692f: $07
  sbc [hl]                                        ; $6930: $9e
  ld e, b                                         ; $6931: $58
  jp Jump_005_70b5                                ; $6932: $c3 $b5 $70


  ld a, $01                                       ; $6935: $3e $01
  ld [$cc22], a                                   ; $6937: $ea $22 $cc
  ldh a, [rSVBK]                                  ; $693a: $f0 $70
  push af                                         ; $693c: $f5
  ld a, $02                                       ; $693d: $3e $02
  ldh [rSVBK], a                                  ; $693f: $e0 $70
  ld de, $da80                                    ; $6941: $11 $80 $da
  ld hl, $d080                                    ; $6944: $21 $80 $d0
  call Call_000_0212                              ; $6947: $cd $12 $02
  ld de, $d040                                    ; $694a: $11 $40 $d0
  call Call_000_0212                              ; $694d: $cd $12 $02
  xor a                                           ; $6950: $af
  call Call_005_763b                              ; $6951: $cd $3b $76
  pop af                                          ; $6954: $f1
  ldh [rSVBK], a                                  ; $6955: $e0 $70
  ld a, $01                                       ; $6957: $3e $01
  call Call_005_71cb                              ; $6959: $cd $cb $71
  jp Jump_005_70b5                                ; $695c: $c3 $b5 $70


  ld a, $01                                       ; $695f: $3e $01
  ld [$cc22], a                                   ; $6961: $ea $22 $cc
  ld a, $08                                       ; $6964: $3e $08
  ld [$cb2d], a                                   ; $6966: $ea $2d $cb
  ldh a, [rSVBK]                                  ; $6969: $f0 $70
  push af                                         ; $696b: $f5
  ld a, $02                                       ; $696c: $3e $02
  ldh [rSVBK], a                                  ; $696e: $e0 $70
  ld hl, $da80                                    ; $6970: $21 $80 $da
  ld de, $d000                                    ; $6973: $11 $00 $d0
  call Call_000_0212                              ; $6976: $cd $12 $02
  pop af                                          ; $6979: $f1
  ldh [rSVBK], a                                  ; $697a: $e0 $70
  ld a, $01                                       ; $697c: $3e $01
  ld e, a                                         ; $697e: $5f
  call Call_005_741b                              ; $697f: $cd $1b $74
  jp Jump_005_70b5                                ; $6982: $c3 $b5 $70


  call Call_005_7167                              ; $6985: $cd $67 $71
  ld a, $0a                                       ; $6988: $3e $0a
  ld [$cb2d], a                                   ; $698a: $ea $2d $cb
  ld a, $01                                       ; $698d: $3e $01
  ld [$cc0f], a                                   ; $698f: $ea $0f $cc
  ld a, $07                                       ; $6992: $3e $07
  ld [$cc10], a                                   ; $6994: $ea $10 $cc
  ld a, $31                                       ; $6997: $3e $31
  call Call_000_2617                              ; $6999: $cd $17 $26
  jp Jump_005_70b5                                ; $699c: $c3 $b5 $70


  call Call_005_7167                              ; $699f: $cd $67 $71
  ld a, $0a                                       ; $69a2: $3e $0a
  ld [$cb2d], a                                   ; $69a4: $ea $2d $cb
  ld a, $01                                       ; $69a7: $3e $01
  ld [$cc0f], a                                   ; $69a9: $ea $0f $cc
  ld a, $02                                       ; $69ac: $3e $02
  ld [$cc10], a                                   ; $69ae: $ea $10 $cc
  ld a, $31                                       ; $69b1: $3e $31
  call Call_000_2617                              ; $69b3: $cd $17 $26
  jp Jump_005_70b5                                ; $69b6: $c3 $b5 $70


  call Call_005_7167                              ; $69b9: $cd $67 $71
  ld a, $0a                                       ; $69bc: $3e $0a
  ld [$cb2d], a                                   ; $69be: $ea $2d $cb
  ld a, $05                                       ; $69c1: $3e $05
  ld [$cc0f], a                                   ; $69c3: $ea $0f $cc
  ld a, $06                                       ; $69c6: $3e $06
  ld [$cc10], a                                   ; $69c8: $ea $10 $cc
  ld a, $31                                       ; $69cb: $3e $31
  call Call_000_2617                              ; $69cd: $cd $17 $26
  jp Jump_005_70b5                                ; $69d0: $c3 $b5 $70


  call Call_005_7167                              ; $69d3: $cd $67 $71
  ld a, $0a                                       ; $69d6: $3e $0a
  ld [$cb2d], a                                   ; $69d8: $ea $2d $cb
  ld a, $14                                       ; $69db: $3e $14
  ld [$cc0f], a                                   ; $69dd: $ea $0f $cc
  ld a, $19                                       ; $69e0: $3e $19
  ld [$cc10], a                                   ; $69e2: $ea $10 $cc
  ld a, $31                                       ; $69e5: $3e $31
  call Call_000_2617                              ; $69e7: $cd $17 $26
  jp Jump_005_70b5                                ; $69ea: $c3 $b5 $70


  call Call_005_7167                              ; $69ed: $cd $67 $71
  ld a, $0a                                       ; $69f0: $3e $0a
  ld [$cb2d], a                                   ; $69f2: $ea $2d $cb
  ld a, $32                                       ; $69f5: $3e $32
  call Call_000_261e                              ; $69f7: $cd $1e $26
  jp Jump_005_70b5                                ; $69fa: $c3 $b5 $70


  jp Jump_005_70b5                                ; $69fd: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6a00: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6a03: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6a06: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6a09: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6a0c: $c3 $b5 $70


  ld a, $00                                       ; $6a0f: $3e $00
  ldh [$ffe1], a                                  ; $6a11: $e0 $e1
  ldh [$ffe0], a                                  ; $6a13: $e0 $e0
  jp Jump_005_70b5                                ; $6a15: $c3 $b5 $70


  ld a, $01                                       ; $6a18: $3e $01
  ldh [$ffe1], a                                  ; $6a1a: $e0 $e1
  ldh [$ffe0], a                                  ; $6a1c: $e0 $e0
  jp Jump_005_70b5                                ; $6a1e: $c3 $b5 $70


  call Call_000_33f3                              ; $6a21: $cd $f3 $33

  db $01, $76, $78

  jp Jump_005_70b5                                ; $6a27: $c3 $b5 $70


  call Call_005_70ac                              ; $6a2a: $cd $ac $70
  ld hl, $004b                                    ; $6a2d: $21 $4b $00
  add hl, bc                                      ; $6a30: $09
  ld a, [hl]                                      ; $6a31: $7e
  ld [$cd85], a                                   ; $6a32: $ea $85 $cd
  jp Jump_005_70b5                                ; $6a35: $c3 $b5 $70


  call Call_005_70ac                              ; $6a38: $cd $ac $70
  ld hl, $002c                                    ; $6a3b: $21 $2c $00
  add hl, bc                                      ; $6a3e: $09
  ld a, [hl]                                      ; $6a3f: $7e
  res 4, a                                        ; $6a40: $cb $a7
  res 7, a                                        ; $6a42: $cb $bf
  res 6, a                                        ; $6a44: $cb $b7
  ld [hl], a                                      ; $6a46: $77
  jp Jump_005_70b5                                ; $6a47: $c3 $b5 $70


  call Call_005_70ac                              ; $6a4a: $cd $ac $70
  ld hl, $002c                                    ; $6a4d: $21 $2c $00
  add hl, bc                                      ; $6a50: $09
  ld a, [hl]                                      ; $6a51: $7e
  set 4, a                                        ; $6a52: $cb $e7
  set 7, a                                        ; $6a54: $cb $ff
  ld [hl], a                                      ; $6a56: $77
  jp Jump_005_70b5                                ; $6a57: $c3 $b5 $70


Jump_005_6a5a:
  ldh a, [$ffda]                                  ; $6a5a: $f0 $da
  set 4, a                                        ; $6a5c: $cb $e7
  ldh [$ffda], a                                  ; $6a5e: $e0 $da
  ld a, $01                                       ; $6a60: $3e $01
  ld [$cd8f], a                                   ; $6a62: $ea $8f $cd
  jp Jump_005_70b5                                ; $6a65: $c3 $b5 $70


  xor a                                           ; $6a68: $af
  ldh [$ffda], a                                  ; $6a69: $e0 $da
  ld [$cd8f], a                                   ; $6a6b: $ea $8f $cd
  jp Jump_005_70b5                                ; $6a6e: $c3 $b5 $70


  ld a, d                                         ; $6a71: $7a
  or a                                            ; $6a72: $b7
  jr nz, jr_005_6a80                              ; $6a73: $20 $0b

  ld a, [$cb1a]                                   ; $6a75: $fa $1a $cb
  set 6, a                                        ; $6a78: $cb $f7
  ld [$cb1a], a                                   ; $6a7a: $ea $1a $cb
  jp Jump_005_70b5                                ; $6a7d: $c3 $b5 $70


jr_005_6a80:
  ld a, [$cb1a]                                   ; $6a80: $fa $1a $cb
  res 6, a                                        ; $6a83: $cb $b7
  ld [$cb1a], a                                   ; $6a85: $ea $1a $cb
  jp Jump_005_70b5                                ; $6a88: $c3 $b5 $70


  ld a, d                                         ; $6a8b: $7a
  or a                                            ; $6a8c: $b7
  jr nz, jr_005_6a9a                              ; $6a8d: $20 $0b

  ld a, [$cb1a]                                   ; $6a8f: $fa $1a $cb
  set 7, a                                        ; $6a92: $cb $ff
  ld [$cb1a], a                                   ; $6a94: $ea $1a $cb
  jp Jump_005_70b5                                ; $6a97: $c3 $b5 $70


jr_005_6a9a:
  ld a, [$cb1a]                                   ; $6a9a: $fa $1a $cb
  res 7, a                                        ; $6a9d: $cb $bf
  ld [$cb1a], a                                   ; $6a9f: $ea $1a $cb
  jp Jump_005_70b5                                ; $6aa2: $c3 $b5 $70


  ld a, d                                         ; $6aa5: $7a
  call Call_000_33f3                              ; $6aa6: $cd $f3 $33
  inc b                                           ; $6aa9: $04
  ld a, a                                         ; $6aaa: $7f
  ld b, d                                         ; $6aab: $42
  push af                                         ; $6aac: $f5
  ld a, [$cdc3]                                   ; $6aad: $fa $c3 $cd
  ld l, a                                         ; $6ab0: $6f
  ld h, $00                                       ; $6ab1: $26 $00
  pop af                                          ; $6ab3: $f1
  push hl                                         ; $6ab4: $e5
  ld bc, $6029                                    ; $6ab5: $01 $29 $60
  call Call_000_33f3                              ; $6ab8: $cd $f3 $33
  nop                                             ; $6abb: $00
  ld c, a                                         ; $6abc: $4f
  db $10                                          ; $6abd: $10
  pop hl                                          ; $6abe: $e1
  ld bc, $624b                                    ; $6abf: $01 $4b $62
  ld de, $d420                                    ; $6ac2: $11 $20 $d4
  call Call_000_33f3                              ; $6ac5: $cd $f3 $33
  nop                                             ; $6ac8: $00
  ld e, a                                         ; $6ac9: $5f
  db $10                                          ; $6aca: $10
  jp Jump_005_70b5                                ; $6acb: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6ace: $c3 $b5 $70


  ld a, $0a                                       ; $6ad1: $3e $0a
  ld [$cb2d], a                                   ; $6ad3: $ea $2d $cb
  call Call_005_7167                              ; $6ad6: $cd $67 $71
  ld a, e                                         ; $6ad9: $7b
  ld e, d                                         ; $6ada: $5a
  ld d, a                                         ; $6adb: $57
  ld a, $39                                       ; $6adc: $3e $39
  jp Jump_000_2621                                ; $6ade: $c3 $21 $26


  jp Jump_005_70b5                                ; $6ae1: $c3 $b5 $70


  call Call_000_33f3                              ; $6ae4: $cd $f3 $33

  db $01, $8e, $78

  jp Jump_005_70b5                                ; $6aea: $c3 $b5 $70


  call Call_000_33f3                              ; $6aed: $cd $f3 $33

  db $01, $af, $78

  jp Jump_005_70b5                                ; $6af3: $c3 $b5 $70


  ld hl, $cdd2                                    ; $6af6: $21 $d2 $cd
  ld a, [hl+]                                     ; $6af9: $2a
  ld h, [hl]                                      ; $6afa: $66
  ld l, a                                         ; $6afb: $6f
  ld a, l                                         ; $6afc: $7d
  ld [$cdd6], a                                   ; $6afd: $ea $d6 $cd
  ld a, h                                         ; $6b00: $7c
  ld [$cdd7], a                                   ; $6b01: $ea $d7 $cd
  ld hl, $cdd4                                    ; $6b04: $21 $d4 $cd
  ld a, [hl+]                                     ; $6b07: $2a
  ld h, [hl]                                      ; $6b08: $66
  ld l, a                                         ; $6b09: $6f
  ld a, l                                         ; $6b0a: $7d
  ld [$cdd8], a                                   ; $6b0b: $ea $d8 $cd
  ld a, h                                         ; $6b0e: $7c
  ld [$cdd9], a                                   ; $6b0f: $ea $d9 $cd
  ldh a, [rSVBK]                                  ; $6b12: $f0 $70
  push af                                         ; $6b14: $f5
  ld a, $06                                       ; $6b15: $3e $06
  ldh [rSVBK], a                                  ; $6b17: $e0 $70
  ldh [$ffd6], a                                  ; $6b19: $e0 $d6
  ld [$ddc4], a                                   ; $6b1b: $ea $c4 $dd
  ldh [$ffd8], a                                  ; $6b1e: $e0 $d8
  ld [$ddc5], a                                   ; $6b20: $ea $c5 $dd
  pop af                                          ; $6b23: $f1
  ldh [rSVBK], a                                  ; $6b24: $e0 $70
  ld a, $07                                       ; $6b26: $3e $07
  ldh [$ffd7], a                                  ; $6b28: $e0 $d7
  xor a                                           ; $6b2a: $af
  ld [$c0a0], a                                   ; $6b2b: $ea $a0 $c0
  ld a, $01                                       ; $6b2e: $3e $01
  ld [$c0a6], a                                   ; $6b30: $ea $a6 $c0
  ret                                             ; $6b33: $c9


  ld l, e                                         ; $6b34: $6b
  ld h, d                                         ; $6b35: $62
  call Call_000_33f3                              ; $6b36: $cd $f3 $33

  db $06, $aa, $6b

  ld a, $09                                       ; $6b3c: $3e $09
  ld [$cb2d], a                                   ; $6b3e: $ea $2d $cb
  ld b, d                                         ; $6b41: $42
  ld c, e                                         ; $6b42: $4b
  ld d, $01                                       ; $6b43: $16 $01
  ld a, $00                                       ; $6b45: $3e $00
  call Call_000_392b                              ; $6b47: $cd $2b $39
  xor a                                           ; $6b4a: $af
  ld hl, $154c                                    ; $6b4b: $21 $4c $15
  call Call_000_33f3                              ; $6b4e: $cd $f3 $33

  db $04, $01, $44

  jp Jump_005_70b5                                ; $6b54: $c3 $b5 $70


  ld h, d                                         ; $6b57: $62
  ld l, e                                         ; $6b58: $6b
  push hl                                         ; $6b59: $e5
  ld hl, $ce38                                    ; $6b5a: $21 $38 $ce
  ld a, [hl+]                                     ; $6b5d: $2a
  ld d, [hl]                                      ; $6b5e: $56
  ld e, a                                         ; $6b5f: $5f
  pop hl                                          ; $6b60: $e1
  call Call_000_01ee                              ; $6b61: $cd $ee $01
  ld hl, $ce38                                    ; $6b64: $21 $38 $ce
  ld [hl], e                                      ; $6b67: $73
  inc hl                                          ; $6b68: $23
  ld [hl], d                                      ; $6b69: $72
  jp Jump_005_70b5                                ; $6b6a: $c3 $b5 $70


  ld a, d                                         ; $6b6d: $7a
  call Call_000_33f3                              ; $6b6e: $cd $f3 $33

  db $04, $67, $51

  ld hl, $ddc6                                    ; $6b74: $21 $c6 $dd
  jr z, jr_005_6b88                               ; $6b77: $28 $0f

  ldh a, [rSVBK]                                  ; $6b79: $f0 $70
  push af                                         ; $6b7b: $f5
  ld a, $06                                       ; $6b7c: $3e $06
  ldh [rSVBK], a                                  ; $6b7e: $e0 $70
  ld [hl], $01                                    ; $6b80: $36 $01
  pop af                                          ; $6b82: $f1
  ldh [rSVBK], a                                  ; $6b83: $e0 $70
  jp Jump_005_70b5                                ; $6b85: $c3 $b5 $70


jr_005_6b88:
  ldh a, [rSVBK]                                  ; $6b88: $f0 $70
  push af                                         ; $6b8a: $f5
  ld a, $06                                       ; $6b8b: $3e $06
  ldh [rSVBK], a                                  ; $6b8d: $e0 $70
  ld [hl], $00                                    ; $6b8f: $36 $00
  pop af                                          ; $6b91: $f1
  ldh [rSVBK], a                                  ; $6b92: $e0 $70
  jp Jump_005_70b5                                ; $6b94: $c3 $b5 $70


  ld a, d                                         ; $6b97: $7a
  rst $00                                         ; $6b98: $c7
  xor a                                           ; $6b99: $af
  ld l, e                                         ; $6b9a: $6b
  rst $08                                         ; $6b9b: $cf
  ld l, e                                         ; $6b9c: $6b
  jp c, $f36b                                     ; $6b9d: $da $6b $f3

  ld l, e                                         ; $6ba0: $6b
  or $6b                                          ; $6ba1: $f6 $6b
  ld bc, $0f6c                                    ; $6ba3: $01 $6c $0f
  ld l, h                                         ; $6ba6: $6c
  ld a, [de]                                      ; $6ba7: $1a
  ld l, h                                         ; $6ba8: $6c
  jr z, jr_005_6c17                               ; $6ba9: $28 $6c

  ld [hl], $6c                                    ; $6bab: $36 $6c
  add hl, sp                                      ; $6bad: $39
  ld l, h                                         ; $6bae: $6c
  ldh a, [rSVBK]                                  ; $6baf: $f0 $70
  push af                                         ; $6bb1: $f5
  ld a, $06                                       ; $6bb2: $3e $06
  ldh [rSVBK], a                                  ; $6bb4: $e0 $70
  ld hl, $d9fd                                    ; $6bb6: $21 $fd $d9
  ld c, $0a                                       ; $6bb9: $0e $0a
  ld b, $08                                       ; $6bbb: $06 $08

jr_005_6bbd:
  ld a, [hl]                                      ; $6bbd: $7e
  add c                                           ; $6bbe: $81
  cp $64                                          ; $6bbf: $fe $64
  jr c, jr_005_6bc5                               ; $6bc1: $38 $02

  ld a, $63                                       ; $6bc3: $3e $63

jr_005_6bc5:
  ld [hl+], a                                     ; $6bc5: $22
  dec b                                           ; $6bc6: $05
  jr nz, jr_005_6bbd                              ; $6bc7: $20 $f4

  pop af                                          ; $6bc9: $f1
  ldh [rSVBK], a                                  ; $6bca: $e0 $70
  jp Jump_005_70b5                                ; $6bcc: $c3 $b5 $70


  ld a, $05                                       ; $6bcf: $3e $05
  call Call_000_33f3                              ; $6bd1: $cd $f3 $33
  rlca                                            ; $6bd4: $07
  push hl                                         ; $6bd5: $e5
  ld c, l                                         ; $6bd6: $4d
  jp Jump_005_70b5                                ; $6bd7: $c3 $b5 $70


jr_005_6bda:
  ld a, $04                                       ; $6bda: $3e $04
  call Call_000_33f3                              ; $6bdc: $cd $f3 $33
  ld b, $1b                                       ; $6bdf: $06 $1b
  ld l, l                                         ; $6be1: $6d
  or a                                            ; $6be2: $b7
  jr nz, jr_005_6bda                              ; $6be3: $20 $f5

jr_005_6be5:
  ld a, $05                                       ; $6be5: $3e $05
  call Call_000_33f3                              ; $6be7: $cd $f3 $33
  ld b, $1b                                       ; $6bea: $06 $1b
  ld l, l                                         ; $6bec: $6d
  or a                                            ; $6bed: $b7
  jr nz, jr_005_6be5                              ; $6bee: $20 $f5

  jp Jump_005_70b5                                ; $6bf0: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6bf3: $c3 $b5 $70


  ld a, $05                                       ; $6bf6: $3e $05
  call Call_000_33f3                              ; $6bf8: $cd $f3 $33
  ld b, $49                                       ; $6bfb: $06 $49
  ld l, e                                         ; $6bfd: $6b
  jp Jump_005_70b5                                ; $6bfe: $c3 $b5 $70


jr_005_6c01:
  ld a, $00                                       ; $6c01: $3e $00
  call Call_000_33f3                              ; $6c03: $cd $f3 $33
  ld b, $1b                                       ; $6c06: $06 $1b
  ld l, l                                         ; $6c08: $6d
  or a                                            ; $6c09: $b7
  jr nz, jr_005_6c01                              ; $6c0a: $20 $f5

  jp Jump_005_70b5                                ; $6c0c: $c3 $b5 $70


  ld a, $02                                       ; $6c0f: $3e $02
  call Call_000_33f3                              ; $6c11: $cd $f3 $33
  ld b, $49                                       ; $6c14: $06 $49
  ld l, e                                         ; $6c16: $6b

jr_005_6c17:
  jp Jump_005_70b5                                ; $6c17: $c3 $b5 $70


jr_005_6c1a:
  ld a, $03                                       ; $6c1a: $3e $03
  call Call_000_33f3                              ; $6c1c: $cd $f3 $33
  ld b, $1b                                       ; $6c1f: $06 $1b
  ld l, l                                         ; $6c21: $6d
  or a                                            ; $6c22: $b7
  jr nz, jr_005_6c1a                              ; $6c23: $20 $f5

  jp Jump_005_70b5                                ; $6c25: $c3 $b5 $70


jr_005_6c28:
  ld a, $02                                       ; $6c28: $3e $02
  call Call_000_33f3                              ; $6c2a: $cd $f3 $33
  ld b, $1b                                       ; $6c2d: $06 $1b
  ld l, l                                         ; $6c2f: $6d
  or a                                            ; $6c30: $b7
  jr nz, jr_005_6c28                              ; $6c31: $20 $f5

  jp Jump_005_70b5                                ; $6c33: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6c36: $c3 $b5 $70


jr_005_6c39:
  ld a, $01                                       ; $6c39: $3e $01
  call Call_000_33f3                              ; $6c3b: $cd $f3 $33
  ld b, $1b                                       ; $6c3e: $06 $1b
  ld l, l                                         ; $6c40: $6d
  or a                                            ; $6c41: $b7
  jr nz, jr_005_6c39                              ; $6c42: $20 $f5

  ld a, $03                                       ; $6c44: $3e $03
  call Call_000_33f3                              ; $6c46: $cd $f3 $33
  rlca                                            ; $6c49: $07
  push hl                                         ; $6c4a: $e5
  ld c, l                                         ; $6c4b: $4d
  jp Jump_005_70b5                                ; $6c4c: $c3 $b5 $70


  push de                                         ; $6c4f: $d5
  ld a, $09                                       ; $6c50: $3e $09
  ld [$cb2d], a                                   ; $6c52: $ea $2d $cb
  ld b, d                                         ; $6c55: $42
  ld c, e                                         ; $6c56: $4b
  ld d, $01                                       ; $6c57: $16 $01
  xor a                                           ; $6c59: $af
  ld hl, $2119                                    ; $6c5a: $21 $19 $21
  call Call_000_33f3                              ; $6c5d: $cd $f3 $33
  inc b                                           ; $6c60: $04
  ld bc, $d144                                    ; $6c61: $01 $44 $d1
  ld hl, $cdd6                                    ; $6c64: $21 $d6 $cd
  ld a, [hl+]                                     ; $6c67: $2a
  ld h, [hl]                                      ; $6c68: $66
  ld l, a                                         ; $6c69: $6f
  add hl, de                                      ; $6c6a: $19
  ld a, [$cdd2]                                   ; $6c6b: $fa $d2 $cd
  ld e, a                                         ; $6c6e: $5f
  ld a, [$cdd3]                                   ; $6c6f: $fa $d3 $cd
  ld d, a                                         ; $6c72: $57
  rst $10                                         ; $6c73: $d7
  jr c, jr_005_6c81                               ; $6c74: $38 $0b

  ld a, l                                         ; $6c76: $7d
  ld [$cdd6], a                                   ; $6c77: $ea $d6 $cd
  ld a, h                                         ; $6c7a: $7c
  ld [$cdd7], a                                   ; $6c7b: $ea $d7 $cd
  jp Jump_005_70b5                                ; $6c7e: $c3 $b5 $70


jr_005_6c81:
  ld a, e                                         ; $6c81: $7b
  ld [$cdd6], a                                   ; $6c82: $ea $d6 $cd
  ld a, d                                         ; $6c85: $7a
  ld [$cdd7], a                                   ; $6c86: $ea $d7 $cd
  jp Jump_005_70b5                                ; $6c89: $c3 $b5 $70


  push de                                         ; $6c8c: $d5
  ld h, d                                         ; $6c8d: $62
  ld l, e                                         ; $6c8e: $6b
  ld a, [$cdd6]                                   ; $6c8f: $fa $d6 $cd
  ld e, a                                         ; $6c92: $5f
  ld a, [$cdd7]                                   ; $6c93: $fa $d7 $cd
  ld d, a                                         ; $6c96: $57
  call Call_000_01ee                              ; $6c97: $cd $ee $01
  jr c, jr_005_6cc7                               ; $6c9a: $38 $2b

  ld hl, $cdd6                                    ; $6c9c: $21 $d6 $cd
  ld [hl], e                                      ; $6c9f: $73
  inc hl                                          ; $6ca0: $23
  ld [hl], d                                      ; $6ca1: $72
  ldh a, [rSVBK]                                  ; $6ca2: $f0 $70
  push af                                         ; $6ca4: $f5
  ld a, $06                                       ; $6ca5: $3e $06
  ldh [rSVBK], a                                  ; $6ca7: $e0 $70
  xor a                                           ; $6ca9: $af
  ld [$ddc6], a                                   ; $6caa: $ea $c6 $dd
  pop af                                          ; $6cad: $f1
  ldh [rSVBK], a                                  ; $6cae: $e0 $70
  pop de                                          ; $6cb0: $d1
  ld a, $09                                       ; $6cb1: $3e $09
  ld [$cb2d], a                                   ; $6cb3: $ea $2d $cb
  ld b, d                                         ; $6cb6: $42
  ld c, e                                         ; $6cb7: $4b
  ld d, $01                                       ; $6cb8: $16 $01
  xor a                                           ; $6cba: $af
  ld hl, $2116                                    ; $6cbb: $21 $16 $21
  call Call_000_33f3                              ; $6cbe: $cd $f3 $33
  inc b                                           ; $6cc1: $04
  ld bc, $c344                                    ; $6cc2: $01 $44 $c3
  or l                                            ; $6cc5: $b5
  ld [hl], b                                      ; $6cc6: $70

jr_005_6cc7:
  pop de                                          ; $6cc7: $d1
  ld a, $09                                       ; $6cc8: $3e $09
  ld [$cb2d], a                                   ; $6cca: $ea $2d $cb
  ld b, d                                         ; $6ccd: $42
  ld c, e                                         ; $6cce: $4b
  ld d, $01                                       ; $6ccf: $16 $01
  xor a                                           ; $6cd1: $af
  ld hl, $2116                                    ; $6cd2: $21 $16 $21
  call Call_000_33f3                              ; $6cd5: $cd $f3 $33
  inc b                                           ; $6cd8: $04
  ld bc, $af44                                    ; $6cd9: $01 $44 $af
  ld [$cdd6], a                                   ; $6cdc: $ea $d6 $cd
  ld [$cdd7], a                                   ; $6cdf: $ea $d7 $cd
  ldh a, [rSVBK]                                  ; $6ce2: $f0 $70
  push af                                         ; $6ce4: $f5
  ld a, $06                                       ; $6ce5: $3e $06
  ldh [rSVBK], a                                  ; $6ce7: $e0 $70
  ld a, $01                                       ; $6ce9: $3e $01
  ld [$ddc6], a                                   ; $6ceb: $ea $c6 $dd
  pop af                                          ; $6cee: $f1
  ldh [rSVBK], a                                  ; $6cef: $e0 $70
  jp Jump_005_70b5                                ; $6cf1: $c3 $b5 $70


  ldh [$ffbd], a                                  ; $6cf4: $e0 $bd
  ldh a, [rSVBK]                                  ; $6cf6: $f0 $70
  push af                                         ; $6cf8: $f5
  ld a, $06                                       ; $6cf9: $3e $06
  ldh [rSVBK], a                                  ; $6cfb: $e0 $70
  ldh a, [$ffbd]                                  ; $6cfd: $f0 $bd
  ld hl, $dcc8                                    ; $6cff: $21 $c8 $dc
  ld c, d                                         ; $6d02: $4a
  ld b, $00                                       ; $6d03: $06 $00
  add hl, bc                                      ; $6d05: $09
  ld a, e                                         ; $6d06: $7b
  call Call_000_28e6                              ; $6d07: $cd $e6 $28
  ld [hl], a                                      ; $6d0a: $77
  ldh [$ffbd], a                                  ; $6d0b: $e0 $bd
  pop af                                          ; $6d0d: $f1
  ldh [rSVBK], a                                  ; $6d0e: $e0 $70
  ldh a, [$ffbd]                                  ; $6d10: $f0 $bd
  jp Jump_005_70b5                                ; $6d12: $c3 $b5 $70


  call Call_000_33f3                              ; $6d15: $cd $f3 $33

  db $09, $b1, $7d

  jp Jump_005_70b5                                ; $6d1b: $c3 $b5 $70


  ld a, $2b                                       ; $6d1e: $3e $2b
  call Call_000_394b                              ; $6d20: $cd $4b $39
  push de                                         ; $6d23: $d5
  ld hl, $cdd2                                    ; $6d24: $21 $d2 $cd
  ld de, $cdd6                                    ; $6d27: $11 $d6 $cd
  call Call_000_0269                              ; $6d2a: $cd $69 $02
  ld hl, $cdeb                                    ; $6d2d: $21 $eb $cd
  ld de, $cdef                                    ; $6d30: $11 $ef $cd
  call Call_000_0269                              ; $6d33: $cd $69 $02
  ld hl, $ce04                                    ; $6d36: $21 $04 $ce
  ld de, $ce08                                    ; $6d39: $11 $08 $ce
  call Call_000_0269                              ; $6d3c: $cd $69 $02
  ld hl, $ce1d                                    ; $6d3f: $21 $1d $ce
  ld de, $ce21                                    ; $6d42: $11 $21 $ce
  call Call_000_0269                              ; $6d45: $cd $69 $02
  pop de                                          ; $6d48: $d1
  ld a, d                                         ; $6d49: $7a
  or a                                            ; $6d4a: $b7
  jp z, Jump_005_70b5                             ; $6d4b: $ca $b5 $70

  ld a, $09                                       ; $6d4e: $3e $09
  ld [$cb2d], a                                   ; $6d50: $ea $2d $cb
  xor a                                           ; $6d53: $af
  ld d, a                                         ; $6d54: $57
  ld hl, $1552                                    ; $6d55: $21 $52 $15
  call Call_000_33f3                              ; $6d58: $cd $f3 $33

  db $04, $01, $44

  jp Jump_005_70b5                                ; $6d5e: $c3 $b5 $70


  call Call_005_70ac                              ; $6d61: $cd $ac $70
  ld hl, $002a                                    ; $6d64: $21 $2a $00
  add hl, bc                                      ; $6d67: $09
  set 7, [hl]                                     ; $6d68: $cb $fe
  jp Jump_005_70b5                                ; $6d6a: $c3 $b5 $70


  ld hl, $c2f9                                    ; $6d6d: $21 $f9 $c2
  res 2, [hl]                                     ; $6d70: $cb $96
  res 7, [hl]                                     ; $6d72: $cb $be
  xor a                                           ; $6d74: $af
  ld [$cd86], a                                   ; $6d75: $ea $86 $cd
  jp Jump_005_70b5                                ; $6d78: $c3 $b5 $70


  ld a, d                                         ; $6d7b: $7a
  ld [$cc49], a                                   ; $6d7c: $ea $49 $cc
  ld a, $0a                                       ; $6d7f: $3e $0a
  ld [$cb2d], a                                   ; $6d81: $ea $2d $cb
  call Call_005_7167                              ; $6d84: $cd $67 $71
  ld a, $1e                                       ; $6d87: $3e $1e
  ld [$cbdf], a                                   ; $6d89: $ea $df $cb
  ld a, $19                                       ; $6d8c: $3e $19
  jp Jump_000_261e                                ; $6d8e: $c3 $1e $26


  call Call_005_70ac                              ; $6d91: $cd $ac $70
  ld hl, $002a                                    ; $6d94: $21 $2a $00
  add hl, bc                                      ; $6d97: $09
  set 0, [hl]                                     ; $6d98: $cb $c6
  jp Jump_005_70b5                                ; $6d9a: $c3 $b5 $70


  call Call_005_70ac                              ; $6d9d: $cd $ac $70
  ld hl, $002a                                    ; $6da0: $21 $2a $00
  add hl, bc                                      ; $6da3: $09
  res 0, [hl]                                     ; $6da4: $cb $86
  jp Jump_005_70b5                                ; $6da6: $c3 $b5 $70


  jp Jump_005_70b5                                ; $6da9: $c3 $b5 $70


  ld h, d                                         ; $6dac: $62
  ld l, e                                         ; $6dad: $6b
  ld de, $0040                                    ; $6dae: $11 $40 $00
  ld a, l                                         ; $6db1: $7d
  sbc e                                           ; $6db2: $9b
  ld l, a                                         ; $6db3: $6f
  ld a, h                                         ; $6db4: $7c
  sbc d                                           ; $6db5: $9a
  ld h, a                                         ; $6db6: $67
  jr c, jr_005_6dc3                               ; $6db7: $38 $0a

  ld a, l                                         ; $6db9: $7d
  ld [$c1e1], a                                   ; $6dba: $ea $e1 $c1
  ld a, h                                         ; $6dbd: $7c
  ld [$c1e2], a                                   ; $6dbe: $ea $e2 $c1
  jr jr_005_6dce                                  ; $6dc1: $18 $0b

jr_005_6dc3:
  ld hl, $0000                                    ; $6dc3: $21 $00 $00
  ld a, l                                         ; $6dc6: $7d
  ld [$c1e1], a                                   ; $6dc7: $ea $e1 $c1
  ld a, h                                         ; $6dca: $7c
  ld [$c1e2], a                                   ; $6dcb: $ea $e2 $c1

jr_005_6dce:
  ld hl, $c1e1                                    ; $6dce: $21 $e1 $c1
  ld de, $ff91                                    ; $6dd1: $11 $91 $ff
  call Call_000_026f                              ; $6dd4: $cd $6f $02
  ld a, $03                                       ; $6dd7: $3e $03
  ldh [$ffda], a                                  ; $6dd9: $e0 $da
  jp Jump_005_70b5                                ; $6ddb: $c3 $b5 $70


  push de                                         ; $6dde: $d5
  ld hl, $cb15                                    ; $6ddf: $21 $15 $cb
  ld a, [hl+]                                     ; $6de2: $2a
  ld h, [hl]                                      ; $6de3: $66
  ld l, a                                         ; $6de4: $6f
  ld de, $0040                                    ; $6de5: $11 $40 $00
  ld a, l                                         ; $6de8: $7d
  sbc e                                           ; $6de9: $9b
  ld l, a                                         ; $6dea: $6f
  ld a, h                                         ; $6deb: $7c
  sbc d                                           ; $6dec: $9a
  ld h, a                                         ; $6ded: $67
  jr c, jr_005_6dfa                               ; $6dee: $38 $0a

  ld a, l                                         ; $6df0: $7d
  ld [$c1e1], a                                   ; $6df1: $ea $e1 $c1
  ld a, h                                         ; $6df4: $7c
  ld [$c1e2], a                                   ; $6df5: $ea $e2 $c1
  jr jr_005_6e05                                  ; $6df8: $18 $0b

jr_005_6dfa:
  ld hl, $0000                                    ; $6dfa: $21 $00 $00
  ld a, l                                         ; $6dfd: $7d
  ld [$c1e1], a                                   ; $6dfe: $ea $e1 $c1
  ld a, h                                         ; $6e01: $7c
  ld [$c1e2], a                                   ; $6e02: $ea $e2 $c1

jr_005_6e05:
  ld hl, $c1e1                                    ; $6e05: $21 $e1 $c1
  ld de, $ff91                                    ; $6e08: $11 $91 $ff
  call Call_000_026f                              ; $6e0b: $cd $6f $02
  pop hl                                          ; $6e0e: $e1
  ld de, $0048                                    ; $6e0f: $11 $48 $00
  ld a, l                                         ; $6e12: $7d
  sbc e                                           ; $6e13: $9b
  ld l, a                                         ; $6e14: $6f
  ld a, h                                         ; $6e15: $7c
  sbc d                                           ; $6e16: $9a
  ld h, a                                         ; $6e17: $67
  jr c, jr_005_6e24                               ; $6e18: $38 $0a

  ld a, l                                         ; $6e1a: $7d
  ld [$c1df], a                                   ; $6e1b: $ea $df $c1
  ld a, h                                         ; $6e1e: $7c
  ld [$c1e0], a                                   ; $6e1f: $ea $e0 $c1
  jr jr_005_6e2f                                  ; $6e22: $18 $0b

jr_005_6e24:
  ld hl, $0000                                    ; $6e24: $21 $00 $00
  ld a, l                                         ; $6e27: $7d
  ld [$c1df], a                                   ; $6e28: $ea $df $c1
  ld a, h                                         ; $6e2b: $7c
  ld [$c1e0], a                                   ; $6e2c: $ea $e0 $c1

jr_005_6e2f:
  ld hl, $c1df                                    ; $6e2f: $21 $df $c1
  ld de, $ff8f                                    ; $6e32: $11 $8f $ff
  call Call_000_026f                              ; $6e35: $cd $6f $02
  jp Jump_005_6a5a                                ; $6e38: $c3 $5a $6a


  ld hl, $ce38                                    ; $6e3b: $21 $38 $ce
  ld a, [hl+]                                     ; $6e3e: $2a
  ld h, [hl]                                      ; $6e3f: $66
  ld l, a                                         ; $6e40: $6f
  call CompareDEtoHL                                     ; $6e41: $cd $10 $00
  jr z, jr_005_6e48                               ; $6e44: $28 $02

  jr nc, jr_005_6e4c                              ; $6e46: $30 $04

jr_005_6e48:
  ld a, $01                                       ; $6e48: $3e $01
  jr jr_005_6e4d                                  ; $6e4a: $18 $01

jr_005_6e4c:
  xor a                                           ; $6e4c: $af

jr_005_6e4d:
  ldh [$ffbd], a                                  ; $6e4d: $e0 $bd
  ldh a, [rSVBK]                                  ; $6e4f: $f0 $70
  push af                                         ; $6e51: $f5
  ld a, $06                                       ; $6e52: $3e $06
  ldh [rSVBK], a                                  ; $6e54: $e0 $70
  ldh a, [$ffbd]                                  ; $6e56: $f0 $bd
  ld [$ddc6], a                                   ; $6e58: $ea $c6 $dd
  ldh [$ffbd], a                                  ; $6e5b: $e0 $bd
  pop af                                          ; $6e5d: $f1
  ldh [rSVBK], a                                  ; $6e5e: $e0 $70
  ldh a, [$ffbd]                                  ; $6e60: $f0 $bd
  jp Jump_005_70b5                                ; $6e62: $c3 $b5 $70


  ldh [$ffbd], a                                  ; $6e65: $e0 $bd
  ldh a, [rSVBK]                                  ; $6e67: $f0 $70
  push af                                         ; $6e69: $f5
  ld a, $06                                       ; $6e6a: $3e $06
  ldh [rSVBK], a                                  ; $6e6c: $e0 $70
  ldh a, [$ffbd]                                  ; $6e6e: $f0 $bd
  ld a, d                                         ; $6e70: $7a
  call Call_000_33f3                              ; $6e71: $cd $f3 $33

  db $04, $32, $6b

  ld hl, $ddc6                                    ; $6e77: $21 $c6 $dd
  ld [hl], a                                      ; $6e7a: $77
  ldh [$ffbd], a                                  ; $6e7b: $e0 $bd
  pop af                                          ; $6e7d: $f1
  ldh [rSVBK], a                                  ; $6e7e: $e0 $70
  ldh a, [$ffbd]                                  ; $6e80: $f0 $bd
  jp Jump_005_70b5                                ; $6e82: $c3 $b5 $70


  push de                                         ; $6e85: $d5
  ld h, d                                         ; $6e86: $62
  ld l, $03                                       ; $6e87: $2e $03
  call $00b0                                      ; $6e89: $cd $b0 $00
  ld a, h                                         ; $6e8c: $7c
  call Call_000_33f3                              ; $6e8d: $cd $f3 $33

  db $06, $1b, $6d

  ld a, $09                                       ; $6e93: $3e $09
  ld [$cb2d], a                                   ; $6e95: $ea $2d $cb
  pop de                                          ; $6e98: $d1
  ld bc, $215e                                    ; $6e99: $01 $5e $21
  ld e, d                                         ; $6e9c: $5a
  ld d, $04                                       ; $6e9d: $16 $04
  ld hl, $215b                                    ; $6e9f: $21 $5b $21
  ld a, $41                                       ; $6ea2: $3e $41
  call Call_000_394b                              ; $6ea4: $cd $4b $39
  xor a                                           ; $6ea7: $af
  call Call_000_33f3                              ; $6ea8: $cd $f3 $33

  db $04, $01, $44

  jp Jump_005_70b5                                ; $6eae: $c3 $b5 $70


  ld h, d                                         ; $6eb1: $62
  ld l, $03                                       ; $6eb2: $2e $03
  call $00b0                                      ; $6eb4: $cd $b0 $00
  ld a, h                                         ; $6eb7: $7c
  call Call_000_33f3                              ; $6eb8: $cd $f3 $33

  db $1e, $e6, $5f

  jp Jump_005_70b5                                ; $6ebe: $c3 $b5 $70


  ld h, d                                         ; $6ec1: $62
  ld l, $03                                       ; $6ec2: $2e $03
  call $00b0                                      ; $6ec4: $cd $b0 $00
  ld a, h                                         ; $6ec7: $7c
  call Call_000_33f3                              ; $6ec8: $cd $f3 $33

  db $1e, $30, $60

  jp Jump_005_70b5                                ; $6ece: $c3 $b5 $70


  ld b, b                                         ; $6ed1: $40
  jp Jump_005_70b5                                ; $6ed2: $c3 $b5 $70


  ld b, $04                                       ; $6ed5: $06 $04

jr_005_6ed7:
  call Call_000_33f3                              ; $6ed7: $cd $f3 $33
  inc b                                           ; $6eda: $04
  ld e, l                                         ; $6edb: $5d
  ld l, e                                         ; $6edc: $6b
  cp d                                            ; $6edd: $ba
  jr z, jr_005_6eff                               ; $6ede: $28 $1f

  dec b                                           ; $6ee0: $05
  ld a, b                                         ; $6ee1: $78
  cp $ff                                          ; $6ee2: $fe $ff
  jr nz, jr_005_6ed7                              ; $6ee4: $20 $f1

  ldh [$ffbd], a                                  ; $6ee6: $e0 $bd
  ldh a, [rSVBK]                                  ; $6ee8: $f0 $70
  push af                                         ; $6eea: $f5
  ld a, $06                                       ; $6eeb: $3e $06
  ldh [rSVBK], a                                  ; $6eed: $e0 $70
  ldh a, [$ffbd]                                  ; $6eef: $f0 $bd
  xor a                                           ; $6ef1: $af
  ld [$ddc6], a                                   ; $6ef2: $ea $c6 $dd
  ldh [$ffbd], a                                  ; $6ef5: $e0 $bd
  pop af                                          ; $6ef7: $f1
  ldh [rSVBK], a                                  ; $6ef8: $e0 $70
  ldh a, [$ffbd]                                  ; $6efa: $f0 $bd
  jp Jump_005_70b5                                ; $6efc: $c3 $b5 $70


jr_005_6eff:
  ldh [$ffbd], a                                  ; $6eff: $e0 $bd
  ldh a, [rSVBK]                                  ; $6f01: $f0 $70
  push af                                         ; $6f03: $f5
  ld a, $06                                       ; $6f04: $3e $06
  ldh [rSVBK], a                                  ; $6f06: $e0 $70
  ldh a, [$ffbd]                                  ; $6f08: $f0 $bd
  ld a, $01                                       ; $6f0a: $3e $01
  ld [$ddc6], a                                   ; $6f0c: $ea $c6 $dd
  ldh [$ffbd], a                                  ; $6f0f: $e0 $bd
  pop af                                          ; $6f11: $f1
  ldh [rSVBK], a                                  ; $6f12: $e0 $70
  ldh a, [$ffbd]                                  ; $6f14: $f0 $bd
  jp Jump_005_70b5                                ; $6f16: $c3 $b5 $70


  ldh a, [rLCDC]                                  ; $6f19: $f0 $40
  rla                                             ; $6f1b: $17
  jr nc, jr_005_6f25                              ; $6f1c: $30 $07

  ld a, [$cd9a]                                   ; $6f1e: $fa $9a $cd
  or a                                            ; $6f21: $b7
  jp z, Jump_005_70b5                             ; $6f22: $ca $b5 $70

jr_005_6f25:
  ld a, $08                                       ; $6f25: $3e $08
  ld [$cb2d], a                                   ; $6f27: $ea $2d $cb
  ret                                             ; $6f2a: $c9


  ldh a, [rSVBK]                                  ; $6f2b: $f0 $70
  push af                                         ; $6f2d: $f5
  ld a, $06                                       ; $6f2e: $3e $06
  ldh [rSVBK], a                                  ; $6f30: $e0 $70
  ldh a, [$ffd7]                                  ; $6f32: $f0 $d7
  ld [$ddc6], a                                   ; $6f34: $ea $c6 $dd
  pop af                                          ; $6f37: $f1
  ldh [rSVBK], a                                  ; $6f38: $e0 $70
  jp Jump_005_70b5                                ; $6f3a: $c3 $b5 $70


  call Call_005_70ac                              ; $6f3d: $cd $ac $70
  ld hl, $004a                                    ; $6f40: $21 $4a $00
  add hl, bc                                      ; $6f43: $09
  ld [hl], d                                      ; $6f44: $72
  jp Jump_005_70b5                                ; $6f45: $c3 $b5 $70


  ld hl, $cb15                                    ; $6f48: $21 $15 $cb
  ld a, [hl+]                                     ; $6f4b: $2a
  ld h, [hl]                                      ; $6f4c: $66
  ld l, a                                         ; $6f4d: $6f
  ld a, l                                         ; $6f4e: $7d
  ldh [$ffdb], a                                  ; $6f4f: $e0 $db
  ld a, h                                         ; $6f51: $7c
  ldh [$ffdc], a                                  ; $6f52: $e0 $dc
  ld hl, $cb17                                    ; $6f54: $21 $17 $cb
  ld a, [hl+]                                     ; $6f57: $2a
  ld h, [hl]                                      ; $6f58: $66
  ld l, a                                         ; $6f59: $6f
  ld a, l                                         ; $6f5a: $7d
  ldh [$ffdd], a                                  ; $6f5b: $e0 $dd
  ld a, h                                         ; $6f5d: $7c
  ldh [$ffde], a                                  ; $6f5e: $e0 $de
  ld a, e                                         ; $6f60: $7b
  ldh [$ffdf], a                                  ; $6f61: $e0 $df
  ldh a, [rSVBK]                                  ; $6f63: $f0 $70
  push af                                         ; $6f65: $f5
  ld a, $06                                       ; $6f66: $3e $06
  ldh [rSVBK], a                                  ; $6f68: $e0 $70
  ldh a, [$ffd6]                                  ; $6f6a: $f0 $d6
  ld [$ddc4], a                                   ; $6f6c: $ea $c4 $dd
  ld a, d                                         ; $6f6f: $7a
  ldh [$ffd8], a                                  ; $6f70: $e0 $d8
  ld [$ddc5], a                                   ; $6f72: $ea $c5 $dd
  xor a                                           ; $6f75: $af
  ldh [$ffd7], a                                  ; $6f76: $e0 $d7
  xor a                                           ; $6f78: $af
  ld [$cb2d], a                                   ; $6f79: $ea $2d $cb
  ld a, $01                                       ; $6f7c: $3e $01
  ld [$c0a6], a                                   ; $6f7e: $ea $a6 $c0
  pop af                                          ; $6f81: $f1
  ldh [rSVBK], a                                  ; $6f82: $e0 $70
  ret                                             ; $6f84: $c9


  ldh a, [rSVBK]                                  ; $6f85: $f0 $70
  push af                                         ; $6f87: $f5
  ld a, $06                                       ; $6f88: $3e $06
  ldh [rSVBK], a                                  ; $6f8a: $e0 $70
  ld a, d                                         ; $6f8c: $7a
  ld [$ddba], a                                   ; $6f8d: $ea $ba $dd
  pop af                                          ; $6f90: $f1
  ldh [rSVBK], a                                  ; $6f91: $e0 $70
  jp Jump_005_70b5                                ; $6f93: $c3 $b5 $70


  ldh [$ffbd], a                                  ; $6f96: $e0 $bd
  ldh a, [rSVBK]                                  ; $6f98: $f0 $70
  push af                                         ; $6f9a: $f5
  ld a, $06                                       ; $6f9b: $3e $06
  ldh [rSVBK], a                                  ; $6f9d: $e0 $70
  ldh a, [$ffbd]                                  ; $6f9f: $f0 $bd
  ld a, d                                         ; $6fa1: $7a
  call Call_000_33f3                              ; $6fa2: $cd $f3 $33

  db $06, $f5, $6e

  or a                                            ; $6fa8: $b7
  jr nz, jr_005_6fb6                              ; $6fa9: $20 $0b

  ld a, $01                                       ; $6fab: $3e $01
  ld [$ddc6], a                                   ; $6fad: $ea $c6 $dd
  pop af                                          ; $6fb0: $f1
  ldh [rSVBK], a                                  ; $6fb1: $e0 $70
  jp Jump_005_70b5                                ; $6fb3: $c3 $b5 $70


jr_005_6fb6:
  xor a                                           ; $6fb6: $af
  ld [$ddc6], a                                   ; $6fb7: $ea $c6 $dd
  pop af                                          ; $6fba: $f1
  ldh [rSVBK], a                                  ; $6fbb: $e0 $70
  jp Jump_005_70b5                                ; $6fbd: $c3 $b5 $70


  ld a, d                                         ; $6fc0: $7a
  call Call_000_33f3                              ; $6fc1: $cd $f3 $33
  inc b                                           ; $6fc4: $04
  di                                              ; $6fc5: $f3
  ld c, a                                         ; $6fc6: $4f
  ldh [$ffbd], a                                  ; $6fc7: $e0 $bd
  ldh a, [rSVBK]                                  ; $6fc9: $f0 $70
  push af                                         ; $6fcb: $f5
  ld a, $06                                       ; $6fcc: $3e $06
  ldh [rSVBK], a                                  ; $6fce: $e0 $70
  ldh a, [$ffbd]                                  ; $6fd0: $f0 $bd
  ld [$ddc6], a                                   ; $6fd2: $ea $c6 $dd
  pop af                                          ; $6fd5: $f1
  ldh [rSVBK], a                                  ; $6fd6: $e0 $70
  jp Jump_005_70b5                                ; $6fd8: $c3 $b5 $70


  ld hl, $c2f4                                    ; $6fdb: $21 $f4 $c2
  ld de, $0039                                    ; $6fde: $11 $39 $00
  ld [hl], e                                      ; $6fe1: $73
  inc hl                                          ; $6fe2: $23
  ld [hl], d                                      ; $6fe3: $72
  jp Jump_005_70b5                                ; $6fe4: $c3 $b5 $70


  ld a, d                                         ; $6fe7: $7a
  call Call_000_33f3                              ; $6fe8: $cd $f3 $33

  db $06, $af, $6e

  ld a, $09                                       ; $6fee: $3e $09
  ld [$cb2d], a                                   ; $6ff0: $ea $2d $cb
  jp Jump_005_70b5                                ; $6ff3: $c3 $b5 $70


  call Call_000_33f3                              ; $6ff6: $cd $f3 $33
  inc b                                           ; $6ff9: $04
  adc l                                           ; $6ffa: $8d
  ld l, l                                         ; $6ffb: $6d
  jp Jump_005_70b5                                ; $6ffc: $c3 $b5 $70


  call Call_005_70ac                              ; $6fff: $cd $ac $70
  ld hl, $001c                                    ; $7002: $21 $1c $00
  add hl, bc                                      ; $7005: $09
  ld [hl], $01                                    ; $7006: $36 $01
  jp Jump_005_70b5                                ; $7008: $c3 $b5 $70


  call Call_005_70ac                              ; $700b: $cd $ac $70
  ld hl, $002d                                    ; $700e: $21 $2d $00
  add hl, bc                                      ; $7011: $09
  set 3, [hl]                                     ; $7012: $cb $de
  jp Jump_005_70b5                                ; $7014: $c3 $b5 $70


  call Call_005_70ac                              ; $7017: $cd $ac $70
  ld hl, $002d                                    ; $701a: $21 $2d $00
  add hl, bc                                      ; $701d: $09
  res 3, [hl]                                     ; $701e: $cb $9e
  res 4, [hl]                                     ; $7020: $cb $a6
  jp Jump_005_70b5                                ; $7022: $c3 $b5 $70


  call Call_005_70ac                              ; $7025: $cd $ac $70
  ld hl, $002d                                    ; $7028: $21 $2d $00
  add hl, bc                                      ; $702b: $09
  set 4, [hl]                                     ; $702c: $cb $e6
  jp Jump_005_70b5                                ; $702e: $c3 $b5 $70


  ld a, d                                         ; $7031: $7a
  call Call_000_33f3                              ; $7032: $cd $f3 $33

  db $06, $3c, $6f

  ld a, $09                                       ; $7038: $3e $09
  ld [$cb2d], a                                   ; $703a: $ea $2d $cb
  ld a, d                                         ; $703d: $7a
  call Call_000_33f3                              ; $703e: $cd $f3 $33

  db $1e, $e4, $57

  ld bc, $1555                                    ; $7044: $01 $55 $15
  ld hl, $0055                                    ; $7047: $21 $55 $00
  ld a, d                                         ; $704a: $7a
  call Call_000_3173                              ; $704b: $cd $73 $31
  ld e, $00                                       ; $704e: $1e $00
  ld d, $02                                       ; $7050: $16 $02
  ld a, $3e                                       ; $7052: $3e $3e
  call Call_000_394b                              ; $7054: $cd $4b $39
  xor a                                           ; $7057: $af
  call Call_000_33f3                              ; $7058: $cd $f3 $33

  db $04, $01, $44

  jr jr_005_70b5                                  ; $705e: $18 $55

  ld a, d                                         ; $7060: $7a
  call Call_000_33f3                              ; $7061: $cd $f3 $33

  db $06, $56, $6f

  ld a, $09                                       ; $7067: $3e $09
  ld [$cb2d], a                                   ; $7069: $ea $2d $cb
  ld bc, $1558                                    ; $706c: $01 $58 $15
  ld hl, $0055                                    ; $706f: $21 $55 $00
  ld a, d                                         ; $7072: $7a
  call Call_000_3173                              ; $7073: $cd $73 $31
  ld e, $00                                       ; $7076: $1e $00
  ld d, $02                                       ; $7078: $16 $02
  ld a, $00                                       ; $707a: $3e $00
  call Call_000_394b                              ; $707c: $cd $4b $39
  xor a                                           ; $707f: $af
  call Call_000_33f3                              ; $7080: $cd $f3 $33

  db $04, $01, $44

  jr jr_005_70b5                                  ; $7086: $18 $2d

  ldh a, [$ffe1]                                  ; $7088: $f0 $e1
  push af                                         ; $708a: $f5
  ld bc, $c2cf                                    ; $708b: $01 $cf $c2
  call Call_000_33f3                              ; $708e: $cd $f3 $33

  db $08, $6b, $77

  call Call_000_33f3                              ; $7094: $cd $f3 $33

  db $08, $1a, $78

  pop af                                          ; $709a: $f1
  ldh [$ffe1], a                                  ; $709b: $e0 $e1
  jr jr_005_70b5                                  ; $709d: $18 $16

  ld a, $01                                       ; $709f: $3e $01
  ld [$cafb], a                                   ; $70a1: $ea $fb $ca
  jr jr_005_70b5                                  ; $70a4: $18 $0f

  xor a                                           ; $70a6: $af
  ld [$cafb], a                                   ; $70a7: $ea $fb $ca
  jr jr_005_70b5                                  ; $70aa: $18 $09

Call_005_70ac:
  ld a, [$cb1b]                                   ; $70ac: $fa $1b $cb
  ld c, a                                         ; $70af: $4f
  ld a, [$cb1c]                                   ; $70b0: $fa $1c $cb
  ld b, a                                         ; $70b3: $47
  ret                                             ; $70b4: $c9


Jump_005_70b5:
jr_005_70b5:
  ld a, [$cb1a]                                   ; $70b5: $fa $1a $cb
  rla                                             ; $70b8: $17
  ret nc                                          ; $70b9: $d0

  jp Jump_005_5dad                                ; $70ba: $c3 $ad $5d


Call_005_70bd:
  push bc                                         ; $70bd: $c5
  push hl                                         ; $70be: $e5
  push hl                                         ; $70bf: $e5
  push af                                         ; $70c0: $f5
  ld a, [$cb2c]                                   ; $70c1: $fa $2c $cb
  ld c, a                                         ; $70c4: $4f
  ld b, $00                                       ; $70c5: $06 $00
  ld hl, $cb1d                                    ; $70c7: $21 $1d $cb
  add hl, bc                                      ; $70ca: $09
  pop af                                          ; $70cb: $f1
  pop bc                                          ; $70cc: $c1
  ld [hl+], a                                     ; $70cd: $22
  ld [hl], c                                      ; $70ce: $71
  inc hl                                          ; $70cf: $23
  ld [hl], b                                      ; $70d0: $70
  ld a, [$cb2c]                                   ; $70d1: $fa $2c $cb
  inc a                                           ; $70d4: $3c
  inc a                                           ; $70d5: $3c
  inc a                                           ; $70d6: $3c
  ld [$cb2c], a                                   ; $70d7: $ea $2c $cb
  pop hl                                          ; $70da: $e1
  pop bc                                          ; $70db: $c1
  ret                                             ; $70dc: $c9


Call_005_70dd:
  push bc                                         ; $70dd: $c5
  ld a, [$cb2c]                                   ; $70de: $fa $2c $cb
  dec a                                           ; $70e1: $3d
  dec a                                           ; $70e2: $3d
  dec a                                           ; $70e3: $3d
  ld [$cb2c], a                                   ; $70e4: $ea $2c $cb
  ld c, a                                         ; $70e7: $4f
  ld b, $00                                       ; $70e8: $06 $00
  ld hl, $cb1d                                    ; $70ea: $21 $1d $cb
  add hl, bc                                      ; $70ed: $09
  ld a, [hl+]                                     ; $70ee: $2a
  push af                                         ; $70ef: $f5
  ld a, [hl+]                                     ; $70f0: $2a
  ld h, [hl]                                      ; $70f1: $66
  ld l, a                                         ; $70f2: $6f
  pop af                                          ; $70f3: $f1
  pop bc                                          ; $70f4: $c1
  ret                                             ; $70f5: $c9


Call_005_70f6:
  ld a, [bc]                                      ; $70f6: $0a
  cp $01                                          ; $70f7: $fe $01
  jr z, jr_005_7123                               ; $70f9: $28 $28

  ld d, a                                         ; $70fb: $57
  ld hl, $5c89                                    ; $70fc: $21 $89 $5c

jr_005_70ff:
  ld a, [hl+]                                     ; $70ff: $2a
  or a                                            ; $7100: $b7
  jr z, jr_005_7108                               ; $7101: $28 $05

  cp d                                            ; $7103: $ba
  jr z, jr_005_7123                               ; $7104: $28 $1d

  jr jr_005_70ff                                  ; $7106: $18 $f7

jr_005_7108:
  ld hl, $5c9c                                    ; $7108: $21 $9c $5c

jr_005_710b:
  ld a, [hl+]                                     ; $710b: $2a
  or a                                            ; $710c: $b7
  jr z, jr_005_7114                               ; $710d: $28 $05

  cp d                                            ; $710f: $ba
  jr z, jr_005_7125                               ; $7110: $28 $13

  jr jr_005_710b                                  ; $7112: $18 $f7

jr_005_7114:
  ld hl, $5c9e                                    ; $7114: $21 $9e $5c

jr_005_7117:
  ld a, [hl+]                                     ; $7117: $2a
  or a                                            ; $7118: $b7
  jr z, jr_005_7120                               ; $7119: $28 $05

  cp d                                            ; $711b: $ba
  jr z, jr_005_7128                               ; $711c: $28 $0a

  jr jr_005_7117                                  ; $711e: $18 $f7

jr_005_7120:
  ld a, $03                                       ; $7120: $3e $03
  ret                                             ; $7122: $c9


jr_005_7123:
  xor a                                           ; $7123: $af
  ret                                             ; $7124: $c9


jr_005_7125:
  ld a, $01                                       ; $7125: $3e $01
  ret                                             ; $7127: $c9


jr_005_7128:
  ld a, $02                                       ; $7128: $3e $02
  ret                                             ; $712a: $c9


  ret                                             ; $712b: $c9


Jump_005_712c:
  ld a, [$cb2d]                                   ; $712c: $fa $2d $cb
  cp $06                                          ; $712f: $fe $06
  jr z, jr_005_7141                               ; $7131: $28 $0e

  ld a, $06                                       ; $7133: $3e $06
  ld [$cb2d], a                                   ; $7135: $ea $2d $cb
  ld a, d                                         ; $7138: $7a
  ld [$cb31], a                                   ; $7139: $ea $31 $cb
  ld a, e                                         ; $713c: $7b
  ld [$cb32], a                                   ; $713d: $ea $32 $cb
  ret                                             ; $7140: $c9


jr_005_7141:
  ld hl, $cb31                                    ; $7141: $21 $31 $cb
  ld a, [hl+]                                     ; $7144: $2a
  ld e, [hl]                                      ; $7145: $5e
  ld d, a                                         ; $7146: $57
  or e                                            ; $7147: $b3
  jr z, jr_005_714f                               ; $7148: $28 $05

  dec de                                          ; $714a: $1b
  ld a, e                                         ; $714b: $7b
  or d                                            ; $714c: $b2
  jr nz, jr_005_715e                              ; $714d: $20 $0f

jr_005_714f:
  ld a, $01                                       ; $714f: $3e $01
  ld [$cb2d], a                                   ; $7151: $ea $2d $cb
  call Call_005_70ac                              ; $7154: $cd $ac $70
  call Call_000_2fc9                              ; $7157: $cd $c9 $2f
  ld d, a                                         ; $715a: $57
  jp Jump_005_6394                                ; $715b: $c3 $94 $63


jr_005_715e:
  ld a, d                                         ; $715e: $7a
  ld [$cb31], a                                   ; $715f: $ea $31 $cb
  ld a, e                                         ; $7162: $7b
  ld [$cb32], a                                   ; $7163: $ea $32 $cb
  ret                                             ; $7166: $c9


Call_005_7167:
  ldh a, [$ffd6]                                  ; $7167: $f0 $d6
  push hl                                         ; $7169: $e5
  ld a, [$cadc]                                   ; $716a: $fa $dc $ca
  ld [$cc35], a                                   ; $716d: $ea $35 $cc
  ld hl, $c2d5                                    ; $7170: $21 $d5 $c2
  ld a, [hl+]                                     ; $7173: $2a
  ld [$cc31], a                                   ; $7174: $ea $31 $cc
  ld a, [hl+]                                     ; $7177: $2a
  ld [$cc32], a                                   ; $7178: $ea $32 $cc
  inc hl                                          ; $717b: $23
  ld a, [hl+]                                     ; $717c: $2a
  ld [$cc33], a                                   ; $717d: $ea $33 $cc
  ld a, [hl]                                      ; $7180: $7e
  ld [$cc34], a                                   ; $7181: $ea $34 $cc
  pop hl                                          ; $7184: $e1
  ret                                             ; $7185: $c9


  db $68, $72, $7a, $73

  and d                                           ; $718a: $a2
  ld [hl], h                                      ; $718b: $74
  sbc [hl]                                        ; $718c: $9e
  ld [hl], h                                      ; $718d: $74
  sbc d                                           ; $718e: $9a
  ld [hl], h                                      ; $718f: $74

  db $82, $75

  nop                                             ; $7192: $00
  nop                                             ; $7193: $00
  nop                                             ; $7194: $00
  nop                                             ; $7195: $00
  nop                                             ; $7196: $00
  nop                                             ; $7197: $00

  db $aa, $73

  sub l                                           ; $719a: $95
  ld [hl], d                                      ; $719b: $72
  db $e3                                          ; $719c: $e3
  ld [hl], e                                      ; $719d: $73

  db $c2, $72, $1b, $74

  db $f4                                          ; $71a2: $f4
  ld [hl], h                                      ; $71a3: $74

  db $ed, $74

  db $e4                                          ; $71a6: $e4
  ld [hl], h                                      ; $71a7: $74
  db $db                                          ; $71a8: $db
  ld [hl], l                                      ; $71a9: $75
  nop                                             ; $71aa: $00
  nop                                             ; $71ab: $00
  nop                                             ; $71ac: $00
  nop                                             ; $71ad: $00
  nop                                             ; $71ae: $00
  nop                                             ; $71af: $00

  db $6c, $74

  ld hl, $f073                                    ; $71b2: $21 $73 $f0
  ld [hl], b                                      ; $71b5: $70
  push af                                         ; $71b6: $f5
  ld a, $02                                       ; $71b7: $3e $02
  ldh [rSVBK], a                                  ; $71b9: $e0 $70
  ld hl, $d000                                    ; $71bb: $21 $00 $d0
  ld bc, $0080                                    ; $71be: $01 $80 $00
  ld a, $ff                                       ; $71c1: $3e $ff
  call Call_000_1249                              ; $71c3: $cd $49 $12
  pop af                                          ; $71c6: $f1
  ldh [rSVBK], a                                  ; $71c7: $e0 $70
  ld a, $01                                       ; $71c9: $3e $01

Call_005_71cb:
  ld [$cd98], a                                   ; $71cb: $ea $98 $cd
  ld [$cd99], a                                   ; $71ce: $ea $99 $cd
  call Call_000_33f3                              ; $71d1: $cd $f3 $33

  db $03, $5a, $79

  ld a, $08                                       ; $71d7: $3e $08
  ld [$cd9a], a                                   ; $71d9: $ea $9a $cd
  ret                                             ; $71dc: $c9


Call_005_71dd:
  ld [$cd98], a                                   ; $71dd: $ea $98 $cd
  ld [$cd99], a                                   ; $71e0: $ea $99 $cd
  call Call_000_33f3                              ; $71e3: $cd $f3 $33

  db $03, $4c, $79

  ld a, $08                                       ; $71e9: $3e $08
  ld [$cd9a], a                                   ; $71eb: $ea $9a $cd
  ret                                             ; $71ee: $c9


Jump_005_71ef:
  ld d, $01                                       ; $71ef: $16 $01
  jr jr_005_71f5                                  ; $71f1: $18 $02

  ld d, $00                                       ; $71f3: $16 $00

jr_005_71f5:
  push af                                         ; $71f5: $f5
  push de                                         ; $71f6: $d5
  ld a, $05                                       ; $71f7: $3e $05
  ld [$cc1e], a                                   ; $71f9: $ea $1e $cc
  ld a, [$cc22]                                   ; $71fc: $fa $22 $cc
  or a                                            ; $71ff: $b7
  jr nz, jr_005_720c                              ; $7200: $20 $0a

  ld hl, $ffda                                    ; $7202: $21 $da $ff
  set 4, [hl]                                     ; $7205: $cb $e6
  ld a, $01                                       ; $7207: $3e $01
  ld [$cd8f], a                                   ; $7209: $ea $8f $cd

jr_005_720c:
  xor a                                           ; $720c: $af
  ld hl, $c2de                                    ; $720d: $21 $de $c2
  ld [hl+], a                                     ; $7210: $22
  ld [hl+], a                                     ; $7211: $22
  ld [hl+], a                                     ; $7212: $22
  ld [hl+], a                                     ; $7213: $22
  ld [$cd99], a                                   ; $7214: $ea $99 $cd
  ld [$cd9a], a                                   ; $7217: $ea $9a $cd
  pop de                                          ; $721a: $d1
  pop af                                          ; $721b: $f1
  ld hl, $7186                                    ; $721c: $21 $86 $71
  call ResolveIndexedPointer16                              ; $721f: $cd $8b $31
  jp hl                                           ; $7222: $e9


Call_005_7223:
  ld d, $01                                       ; $7223: $16 $01
  jr jr_005_7229                                  ; $7225: $18 $02

Call_005_7227:
  ld d, $00                                       ; $7227: $16 $00

jr_005_7229:
  push af                                         ; $7229: $f5
  push de                                         ; $722a: $d5
  ld a, [$cafa]                                   ; $722b: $fa $fa $ca
  or a                                            ; $722e: $b7
  jr z, jr_005_7243                               ; $722f: $28 $12

  ld a, [$cc24]                                   ; $7231: $fa $24 $cc
  or a                                            ; $7234: $b7
  jr z, jr_005_723d                               ; $7235: $28 $06

  xor a                                           ; $7237: $af
  ld [$cc24], a                                   ; $7238: $ea $24 $cc
  jr jr_005_7243                                  ; $723b: $18 $06

jr_005_723d:
  call Call_000_33f3                              ; $723d: $cd $f3 $33
  ld e, $41                                       ; $7240: $1e $41
  ld e, l                                         ; $7242: $5d

jr_005_7243:
  ld a, $05                                       ; $7243: $3e $05
  ld [$cc1e], a                                   ; $7245: $ea $1e $cc
  ld a, [$cc22]                                   ; $7248: $fa $22 $cc
  or a                                            ; $724b: $b7
  jr nz, jr_005_7258                              ; $724c: $20 $0a

  ld hl, $ffda                                    ; $724e: $21 $da $ff
  set 4, [hl]                                     ; $7251: $cb $e6
  ld a, $01                                       ; $7253: $3e $01
  ld [$cd8f], a                                   ; $7255: $ea $8f $cd

jr_005_7258:
  xor a                                           ; $7258: $af
  ld [$cd99], a                                   ; $7259: $ea $99 $cd
  ld [$cd9a], a                                   ; $725c: $ea $9a $cd
  pop de                                          ; $725f: $d1
  pop af                                          ; $7260: $f1
  ld hl, $719e                                    ; $7261: $21 $9e $71
  call ResolveIndexedPointer16                              ; $7264: $cd $8b $31
  jp hl                                           ; $7267: $e9


  push de                                         ; $7268: $d5
  ldh a, [rSVBK]                                  ; $7269: $f0 $70
  push af                                         ; $726b: $f5
  ld a, $02                                       ; $726c: $3e $02
  ldh [rSVBK], a                                  ; $726e: $e0 $70
  ld hl, $d080                                    ; $7270: $21 $80 $d0
  ld bc, $0080                                    ; $7273: $01 $80 $00
  ld a, $ff                                       ; $7276: $3e $ff
  call Call_000_1249                              ; $7278: $cd $49 $12
  pop af                                          ; $727b: $f1
  ldh [rSVBK], a                                  ; $727c: $e0 $70
  call Call_000_28b5                              ; $727e: $cd $b5 $28
  pop de                                          ; $7281: $d1
  ld a, d                                         ; $7282: $7a
  or a                                            ; $7283: $b7
  jp z, Jump_005_7617                             ; $7284: $ca $17 $76

  ld hl, $7617                                    ; $7287: $21 $17 $76
  ld a, l                                         ; $728a: $7d
  ld [$cd9b], a                                   ; $728b: $ea $9b $cd
  ld a, h                                         ; $728e: $7c
  ld [$cd9c], a                                   ; $728f: $ea $9c $cd
  jp Jump_000_3819                                ; $7292: $c3 $19 $38


  push de                                         ; $7295: $d5
  ldh a, [rSVBK]                                  ; $7296: $f0 $70
  push af                                         ; $7298: $f5
  ld a, $02                                       ; $7299: $3e $02
  ldh [rSVBK], a                                  ; $729b: $e0 $70
  ld hl, $d080                                    ; $729d: $21 $80 $d0
  ld bc, $0040                                    ; $72a0: $01 $40 $00
  ld a, $00                                       ; $72a3: $3e $00
  call Call_000_1249                              ; $72a5: $cd $49 $12
  pop af                                          ; $72a8: $f1
  ldh [rSVBK], a                                  ; $72a9: $e0 $70
  call Call_000_28b5                              ; $72ab: $cd $b5 $28
  pop de                                          ; $72ae: $d1
  ld a, d                                         ; $72af: $7a
  or a                                            ; $72b0: $b7
  jp z, Jump_005_7617                             ; $72b1: $ca $17 $76

  ld hl, $7617                                    ; $72b4: $21 $17 $76
  ld a, l                                         ; $72b7: $7d
  ld [$cd9b], a                                   ; $72b8: $ea $9b $cd
  ld a, h                                         ; $72bb: $7c
  ld [$cd9c], a                                   ; $72bc: $ea $9c $cd
  jp Jump_000_3819                                ; $72bf: $c3 $19 $38


Call_005_72c2:
  push de                                         ; $72c2: $d5
  ldh a, [rSVBK]                                  ; $72c3: $f0 $70
  push af                                         ; $72c5: $f5
  ld a, $02                                       ; $72c6: $3e $02
  ldh [rSVBK], a                                  ; $72c8: $e0 $70
  ldh a, [rSVBK]                                  ; $72ca: $f0 $70
  push af                                         ; $72cc: $f5
  ld a, $06                                       ; $72cd: $3e $06
  ldh [rSVBK], a                                  ; $72cf: $e0 $70
  ld a, [$ddc0]                                   ; $72d1: $fa $c0 $dd
  ldh [$ffbd], a                                  ; $72d4: $e0 $bd
  pop af                                          ; $72d6: $f1
  ldh [rSVBK], a                                  ; $72d7: $e0 $70
  ldh a, [$ffbd]                                  ; $72d9: $f0 $bd
  or a                                            ; $72db: $b7
  jr z, jr_005_72fe                               ; $72dc: $28 $20

  cp $02                                          ; $72de: $fe $02
  jr nz, jr_005_72f1                              ; $72e0: $20 $0f

  ldh a, [$ffd0]                                  ; $72e2: $f0 $d0
  cp $19                                          ; $72e4: $fe $19
  jr nz, jr_005_72fe                              ; $72e6: $20 $16

  push de                                         ; $72e8: $d5
  ld a, $01                                       ; $72e9: $3e $01
  call Call_005_7673                              ; $72eb: $cd $73 $76
  pop de                                          ; $72ee: $d1
  jr jr_005_72fe                                  ; $72ef: $18 $0d

jr_005_72f1:
  ldh a, [$ffd0]                                  ; $72f1: $f0 $d0
  cp $19                                          ; $72f3: $fe $19
  jr nz, jr_005_72fe                              ; $72f5: $20 $07

  push de                                         ; $72f7: $d5
  ld a, $01                                       ; $72f8: $3e $01
  call Call_005_763b                              ; $72fa: $cd $3b $76
  pop de                                          ; $72fd: $d1

jr_005_72fe:
  ld hl, $d000                                    ; $72fe: $21 $00 $d0
  ld de, $d080                                    ; $7301: $11 $80 $d0
  call Call_000_020c                              ; $7304: $cd $0c $02
  pop af                                          ; $7307: $f1
  ldh [rSVBK], a                                  ; $7308: $e0 $70
  call Call_000_28b5                              ; $730a: $cd $b5 $28
  pop de                                          ; $730d: $d1
  ld a, d                                         ; $730e: $7a
  or a                                            ; $730f: $b7
  jp z, Jump_005_7617                             ; $7310: $ca $17 $76

  ld hl, $7617                                    ; $7313: $21 $17 $76
  ld a, l                                         ; $7316: $7d
  ld [$cd9b], a                                   ; $7317: $ea $9b $cd
  ld a, h                                         ; $731a: $7c
  ld [$cd9c], a                                   ; $731b: $ea $9c $cd
  jp Jump_000_3819                                ; $731e: $c3 $19 $38


  push de                                         ; $7321: $d5
  ldh a, [rSVBK]                                  ; $7322: $f0 $70
  push af                                         ; $7324: $f5
  ld a, $02                                       ; $7325: $3e $02
  ldh [rSVBK], a                                  ; $7327: $e0 $70
  ldh a, [$ffd0]                                  ; $7329: $f0 $d0
  cp $19                                          ; $732b: $fe $19
  jr nz, jr_005_72fe                              ; $732d: $20 $cf

  ldh a, [rSVBK]                                  ; $732f: $f0 $70
  push af                                         ; $7331: $f5
  ld a, $06                                       ; $7332: $3e $06
  ldh [rSVBK], a                                  ; $7334: $e0 $70
  ld a, [$ddc0]                                   ; $7336: $fa $c0 $dd
  ldh [$ffbd], a                                  ; $7339: $e0 $bd
  pop af                                          ; $733b: $f1
  ldh [rSVBK], a                                  ; $733c: $e0 $70
  ldh a, [$ffbd]                                  ; $733e: $f0 $bd
  or a                                            ; $7340: $b7
  jr z, jr_005_7357                               ; $7341: $28 $14

  cp $02                                          ; $7343: $fe $02
  jr nz, jr_005_7350                              ; $7345: $20 $09

  push de                                         ; $7347: $d5
  ld a, $01                                       ; $7348: $3e $01
  call Call_005_7673                              ; $734a: $cd $73 $76
  pop de                                          ; $734d: $d1
  jr jr_005_72fe                                  ; $734e: $18 $ae

jr_005_7350:
  push de                                         ; $7350: $d5
  ld a, $01                                       ; $7351: $3e $01
  call Call_005_763b                              ; $7353: $cd $3b $76
  pop de                                          ; $7356: $d1

jr_005_7357:
  ld hl, $d000                                    ; $7357: $21 $00 $d0
  ld de, $d080                                    ; $735a: $11 $80 $d0
  call Call_000_0212                              ; $735d: $cd $12 $02
  pop af                                          ; $7360: $f1
  ldh [rSVBK], a                                  ; $7361: $e0 $70
  call Call_000_28b5                              ; $7363: $cd $b5 $28
  pop de                                          ; $7366: $d1
  ld a, d                                         ; $7367: $7a
  or a                                            ; $7368: $b7
  jp z, Jump_005_7617                             ; $7369: $ca $17 $76

  ld hl, $7617                                    ; $736c: $21 $17 $76
  ld a, l                                         ; $736f: $7d
  ld [$cd9b], a                                   ; $7370: $ea $9b $cd
  ld a, h                                         ; $7373: $7c
  ld [$cd9c], a                                   ; $7374: $ea $9c $cd
  jp Jump_000_3819                                ; $7377: $c3 $19 $38


  push de                                         ; $737a: $d5
  ldh a, [rSVBK]                                  ; $737b: $f0 $70
  push af                                         ; $737d: $f5
  ld a, $02                                       ; $737e: $3e $02
  ldh [rSVBK], a                                  ; $7380: $e0 $70
  ld hl, $d000                                    ; $7382: $21 $00 $d0
  ld bc, $0080                                    ; $7385: $01 $80 $00
  ld a, $ff                                       ; $7388: $3e $ff
  call Call_000_1249                              ; $738a: $cd $49 $12
  pop af                                          ; $738d: $f1
  ldh [rSVBK], a                                  ; $738e: $e0 $70
  pop de                                          ; $7390: $d1
  push de                                         ; $7391: $d5
  ld a, e                                         ; $7392: $7b
  call Call_005_71cb                              ; $7393: $cd $cb $71
  pop de                                          ; $7396: $d1
  ld a, d                                         ; $7397: $7a
  or a                                            ; $7398: $b7
  jp z, Jump_005_7617                             ; $7399: $ca $17 $76

  ld hl, $7617                                    ; $739c: $21 $17 $76
  ld a, l                                         ; $739f: $7d
  ld [$cd9b], a                                   ; $73a0: $ea $9b $cd
  ld a, h                                         ; $73a3: $7c
  ld [$cd9c], a                                   ; $73a4: $ea $9c $cd
  jp Jump_000_3819                                ; $73a7: $c3 $19 $38


  push de                                         ; $73aa: $d5
  ldh a, [rSVBK]                                  ; $73ab: $f0 $70
  push af                                         ; $73ad: $f5
  ld a, $02                                       ; $73ae: $3e $02
  ldh [rSVBK], a                                  ; $73b0: $e0 $70
  ld hl, $d000                                    ; $73b2: $21 $00 $d0
  ld bc, $0040                                    ; $73b5: $01 $40 $00
  ld a, $ff                                       ; $73b8: $3e $ff
  call Call_000_1249                              ; $73ba: $cd $49 $12
  ld hl, $d0c0                                    ; $73bd: $21 $c0 $d0
  ld de, $d040                                    ; $73c0: $11 $40 $d0
  call Call_000_0212                              ; $73c3: $cd $12 $02
  pop af                                          ; $73c6: $f1
  ldh [rSVBK], a                                  ; $73c7: $e0 $70
  pop de                                          ; $73c9: $d1
  push de                                         ; $73ca: $d5
  ld a, e                                         ; $73cb: $7b
  call Call_005_71cb                              ; $73cc: $cd $cb $71
  pop de                                          ; $73cf: $d1
  ld a, d                                         ; $73d0: $7a
  or a                                            ; $73d1: $b7
  jp z, Jump_005_7617                             ; $73d2: $ca $17 $76

  ld hl, $7617                                    ; $73d5: $21 $17 $76
  ld a, l                                         ; $73d8: $7d
  ld [$cd9b], a                                   ; $73d9: $ea $9b $cd
  ld a, h                                         ; $73dc: $7c
  ld [$cd9c], a                                   ; $73dd: $ea $9c $cd
  jp Jump_000_3819                                ; $73e0: $c3 $19 $38


  push de                                         ; $73e3: $d5
  ldh a, [rSVBK]                                  ; $73e4: $f0 $70
  push af                                         ; $73e6: $f5
  ld a, $02                                       ; $73e7: $3e $02
  ldh [rSVBK], a                                  ; $73e9: $e0 $70
  ld hl, $d000                                    ; $73eb: $21 $00 $d0
  ld bc, $0040                                    ; $73ee: $01 $40 $00
  xor a                                           ; $73f1: $af
  call Call_000_1249                              ; $73f2: $cd $49 $12
  ld hl, $d0c0                                    ; $73f5: $21 $c0 $d0
  ld de, $d040                                    ; $73f8: $11 $40 $d0
  call Call_000_0212                              ; $73fb: $cd $12 $02
  pop af                                          ; $73fe: $f1
  ldh [rSVBK], a                                  ; $73ff: $e0 $70
  pop de                                          ; $7401: $d1
  push de                                         ; $7402: $d5
  ld a, e                                         ; $7403: $7b
  call Call_005_71cb                              ; $7404: $cd $cb $71
  pop de                                          ; $7407: $d1
  ld a, d                                         ; $7408: $7a
  or a                                            ; $7409: $b7
  jp z, Jump_005_7617                             ; $740a: $ca $17 $76

  ld hl, $7617                                    ; $740d: $21 $17 $76
  ld a, l                                         ; $7410: $7d
  ld [$cd9b], a                                   ; $7411: $ea $9b $cd
  ld a, h                                         ; $7414: $7c
  ld [$cd9c], a                                   ; $7415: $ea $9c $cd
  jp Jump_000_3819                                ; $7418: $c3 $19 $38


Call_005_741b:
  push de                                         ; $741b: $d5
  ldh a, [rSVBK]                                  ; $741c: $f0 $70
  push af                                         ; $741e: $f5
  ld a, $02                                       ; $741f: $3e $02
  ldh [rSVBK], a                                  ; $7421: $e0 $70
  ldh a, [$ffd0]                                  ; $7423: $f0 $d0
  cp $0b                                          ; $7425: $fe $0b
  jr nz, jr_005_7451                              ; $7427: $20 $28

  ldh a, [rSVBK]                                  ; $7429: $f0 $70
  push af                                         ; $742b: $f5
  ld a, $06                                       ; $742c: $3e $06
  ldh [rSVBK], a                                  ; $742e: $e0 $70
  ld a, [$ddc0]                                   ; $7430: $fa $c0 $dd
  ldh [$ffbd], a                                  ; $7433: $e0 $bd
  pop af                                          ; $7435: $f1
  ldh [rSVBK], a                                  ; $7436: $e0 $70
  ldh a, [$ffbd]                                  ; $7438: $f0 $bd
  or a                                            ; $743a: $b7
  jr z, jr_005_7451                               ; $743b: $28 $14

  cp $02                                          ; $743d: $fe $02
  jr nz, jr_005_744a                              ; $743f: $20 $09

  push de                                         ; $7441: $d5
  ld a, $01                                       ; $7442: $3e $01
  call Call_005_7673                              ; $7444: $cd $73 $76
  pop de                                          ; $7447: $d1
  jr jr_005_7451                                  ; $7448: $18 $07

jr_005_744a:
  push de                                         ; $744a: $d5
  ld a, $01                                       ; $744b: $3e $01
  call Call_005_763b                              ; $744d: $cd $3b $76
  pop de                                          ; $7450: $d1

jr_005_7451:
  ld a, e                                         ; $7451: $7b
  call Call_005_71cb                              ; $7452: $cd $cb $71
  pop af                                          ; $7455: $f1
  ldh [rSVBK], a                                  ; $7456: $e0 $70
  pop de                                          ; $7458: $d1
  ld a, d                                         ; $7459: $7a
  or a                                            ; $745a: $b7
  jp z, Jump_005_7617                             ; $745b: $ca $17 $76

  ld hl, $7617                                    ; $745e: $21 $17 $76
  ld a, l                                         ; $7461: $7d
  ld [$cd9b], a                                   ; $7462: $ea $9b $cd
  ld a, h                                         ; $7465: $7c
  ld [$cd9c], a                                   ; $7466: $ea $9c $cd
  jp Jump_000_3819                                ; $7469: $c3 $19 $38


  push de                                         ; $746c: $d5
  ldh a, [rSVBK]                                  ; $746d: $f0 $70
  push af                                         ; $746f: $f5
  ld a, $02                                       ; $7470: $3e $02
  ldh [rSVBK], a                                  ; $7472: $e0 $70
  push de                                         ; $7474: $d5
  ld hl, $d0c0                                    ; $7475: $21 $c0 $d0
  ld de, $d040                                    ; $7478: $11 $40 $d0
  call Call_000_0212                              ; $747b: $cd $12 $02
  pop de                                          ; $747e: $d1
  ld a, e                                         ; $747f: $7b
  call Call_005_71dd                              ; $7480: $cd $dd $71
  pop af                                          ; $7483: $f1
  ldh [rSVBK], a                                  ; $7484: $e0 $70
  pop de                                          ; $7486: $d1
  ld a, d                                         ; $7487: $7a
  or a                                            ; $7488: $b7
  jp z, Jump_005_7617                             ; $7489: $ca $17 $76

  ld hl, $7617                                    ; $748c: $21 $17 $76
  ld a, l                                         ; $748f: $7d
  ld [$cd9b], a                                   ; $7490: $ea $9b $cd
  ld a, h                                         ; $7493: $7c
  ld [$cd9c], a                                   ; $7494: $ea $9c $cd
  jp Jump_000_3819                                ; $7497: $c3 $19 $38


  ld d, $02                                       ; $749a: $16 $02
  jr jr_005_74a4                                  ; $749c: $18 $06

  ld d, $01                                       ; $749e: $16 $01
  jr jr_005_74a4                                  ; $74a0: $18 $02

  ld d, $00                                       ; $74a2: $16 $00

jr_005_74a4:
  ld a, $05                                       ; $74a4: $3e $05
  ld [$cc1e], a                                   ; $74a6: $ea $1e $cc
  ld a, [$c048]                                   ; $74a9: $fa $48 $c0
  ld [$cc15], a                                   ; $74ac: $ea $15 $cc
  ld a, [$c049]                                   ; $74af: $fa $49 $c0
  ld [$cc16], a                                   ; $74b2: $ea $16 $cc
  ld a, e                                         ; $74b5: $7b
  dec a                                           ; $74b6: $3d
  ld [$cc13], a                                   ; $74b7: $ea $13 $cc
  xor a                                           ; $74ba: $af
  ld [$cc14], a                                   ; $74bb: $ea $14 $cc
  ldh a, [rSCY]                                   ; $74be: $f0 $42
  ld [$cc12], a                                   ; $74c0: $ea $12 $cc
  inc a                                           ; $74c3: $3c
  ld [$cc11], a                                   ; $74c4: $ea $11 $cc
  ldh a, [rSCX]                                   ; $74c7: $f0 $43
  ld [$cc1c], a                                   ; $74c9: $ea $1c $cc
  ld a, d                                         ; $74cc: $7a
  or a                                            ; $74cd: $b7
  jr nz, jr_005_74da                              ; $74ce: $20 $0a

  ld hl, $7d85                                    ; $74d0: $21 $85 $7d
  call Call_000_33f3                              ; $74d3: $cd $f3 $33
  inc bc                                          ; $74d6: $03
  adc b                                           ; $74d7: $88
  ld a, [hl]                                      ; $74d8: $7e
  ret                                             ; $74d9: $c9


jr_005_74da:
  ld hl, $7d92                                    ; $74da: $21 $92 $7d
  call Call_000_33f3                              ; $74dd: $cd $f3 $33
  inc bc                                          ; $74e0: $03
  adc b                                           ; $74e1: $88
  ld a, [hl]                                      ; $74e2: $7e
  ret                                             ; $74e3: $c9


  ld a, $0a                                       ; $74e4: $3e $0a
  ld [$cc19], a                                   ; $74e6: $ea $19 $cc
  ld d, $02                                       ; $74e9: $16 $02
  jr jr_005_74fa                                  ; $74eb: $18 $0d

  call Call_000_37d9                              ; $74ed: $cd $d9 $37
  ld d, $01                                       ; $74f0: $16 $01
  jr jr_005_74f6                                  ; $74f2: $18 $02

  ld d, $00                                       ; $74f4: $16 $00

jr_005_74f6:
  push de                                         ; $74f6: $d5
  ld d, $01                                       ; $74f7: $16 $01
  pop de                                          ; $74f9: $d1

jr_005_74fa:
  ld a, [$c048]                                   ; $74fa: $fa $48 $c0
  ld [$cc15], a                                   ; $74fd: $ea $15 $cc
  ld a, [$c049]                                   ; $7500: $fa $49 $c0
  ld [$cc16], a                                   ; $7503: $ea $16 $cc
  ld a, e                                         ; $7506: $7b
  dec a                                           ; $7507: $3d
  ld [$cc13], a                                   ; $7508: $ea $13 $cc
  xor a                                           ; $750b: $af
  ld [$cc14], a                                   ; $750c: $ea $14 $cc
  ld a, d                                         ; $750f: $7a
  cp $01                                          ; $7510: $fe $01
  jr z, jr_005_753a                               ; $7512: $28 $26

  cp $02                                          ; $7514: $fe $02
  jr z, jr_005_7560                               ; $7516: $28 $48

  ldh a, [rSCY]                                   ; $7518: $f0 $42
  ld [$cc12], a                                   ; $751a: $ea $12 $cc
  add $8f                                         ; $751d: $c6 $8f
  ld [$cc11], a                                   ; $751f: $ea $11 $cc
  ldh a, [rSCX]                                   ; $7522: $f0 $43
  ld [$cc1c], a                                   ; $7524: $ea $1c $cc
  ld hl, $7da3                                    ; $7527: $21 $a3 $7d
  call Call_000_33f3                              ; $752a: $cd $f3 $33
  inc bc                                          ; $752d: $03
  adc b                                           ; $752e: $88
  ld a, [hl]                                      ; $752f: $7e
  call Call_000_37d9                              ; $7530: $cd $d9 $37
  call Call_000_37d9                              ; $7533: $cd $d9 $37
  call Call_005_72c2                              ; $7536: $cd $c2 $72
  ret                                             ; $7539: $c9


jr_005_753a:
  xor a                                           ; $753a: $af
  ld [$c084], a                                   ; $753b: $ea $84 $c0
  ldh a, [rSCY]                                   ; $753e: $f0 $42
  ld [$cc12], a                                   ; $7540: $ea $12 $cc
  add $69                                         ; $7543: $c6 $69
  ld [$cc11], a                                   ; $7545: $ea $11 $cc
  ldh a, [rSCX]                                   ; $7548: $f0 $43
  ld [$cc1c], a                                   ; $754a: $ea $1c $cc
  ld hl, $7db0                                    ; $754d: $21 $b0 $7d
  call Call_000_33f3                              ; $7550: $cd $f3 $33

  db $03, $88, $7e

  call Call_000_37d9                              ; $7556: $cd $d9 $37
  call Call_000_37d9                              ; $7559: $cd $d9 $37
  call Call_005_72c2                              ; $755c: $cd $c2 $72
  ret                                             ; $755f: $c9


jr_005_7560:
  ldh a, [rSCY]                                   ; $7560: $f0 $42
  ld [$cc12], a                                   ; $7562: $ea $12 $cc
  add $8f                                         ; $7565: $c6 $8f
  ld [$cc11], a                                   ; $7567: $ea $11 $cc
  ldh a, [rSCX]                                   ; $756a: $f0 $43
  ld [$cc1c], a                                   ; $756c: $ea $1c $cc
  ld hl, $7dc9                                    ; $756f: $21 $c9 $7d
  call Call_000_33f3                              ; $7572: $cd $f3 $33
  inc bc                                          ; $7575: $03
  adc b                                           ; $7576: $88
  ld a, [hl]                                      ; $7577: $7e
  call Call_000_37d9                              ; $7578: $cd $d9 $37
  call Call_000_37d9                              ; $757b: $cd $d9 $37
  call Call_005_72c2                              ; $757e: $cd $c2 $72
  ret                                             ; $7581: $c9


  push de                                         ; $7582: $d5
  call Call_000_37d9                              ; $7583: $cd $d9 $37
  ld d, $00                                       ; $7586: $16 $00
  ld a, $05                                       ; $7588: $3e $05
  ld [$cc1e], a                                   ; $758a: $ea $1e $cc
  ld a, [$c048]                                   ; $758d: $fa $48 $c0
  ld [$cc15], a                                   ; $7590: $ea $15 $cc
  ld a, [$c049]                                   ; $7593: $fa $49 $c0
  ld [$cc16], a                                   ; $7596: $ea $16 $cc
  ld a, e                                         ; $7599: $7b
  dec a                                           ; $759a: $3d
  ld [$cc13], a                                   ; $759b: $ea $13 $cc
  xor a                                           ; $759e: $af
  ld [$cc14], a                                   ; $759f: $ea $14 $cc
  ldh a, [rSCY]                                   ; $75a2: $f0 $42
  ld [$cc12], a                                   ; $75a4: $ea $12 $cc
  inc a                                           ; $75a7: $3c
  ld [$cc11], a                                   ; $75a8: $ea $11 $cc
  ld a, $8e                                       ; $75ab: $3e $8e
  ld [$cc1d], a                                   ; $75ad: $ea $1d $cc
  ldh a, [rSCX]                                   ; $75b0: $f0 $43
  ld [$cc1c], a                                   ; $75b2: $ea $1c $cc
  xor a                                           ; $75b5: $af
  ld [$cc1b], a                                   ; $75b6: $ea $1b $cc
  ld [$cc1a], a                                   ; $75b9: $ea $1a $cc
  ld hl, $7deb                                    ; $75bc: $21 $eb $7d
  call Call_000_33f3                              ; $75bf: $cd $f3 $33

  db $03, $88, $7e

  pop de                                          ; $75c5: $d1
  ld a, d                                         ; $75c6: $7a
  or a                                            ; $75c7: $b7
  ret z                                           ; $75c8: $c8

  ld a, $19                                       ; $75c9: $3e $19

jr_005_75cb:
  push af                                         ; $75cb: $f5
  call Call_000_37d9                              ; $75cc: $cd $d9 $37
  pop af                                          ; $75cf: $f1
  dec a                                           ; $75d0: $3d
  jr nz, jr_005_75cb                              ; $75d1: $20 $f8

  xor a                                           ; $75d3: $af
  ld [$cc1e], a                                   ; $75d4: $ea $1e $cc
  ld [$cd99], a                                   ; $75d7: $ea $99 $cd
  ret                                             ; $75da: $c9


  ld d, $00                                       ; $75db: $16 $00
  push de                                         ; $75dd: $d5
  ld d, $01                                       ; $75de: $16 $01
  call Call_005_72c2                              ; $75e0: $cd $c2 $72
  pop de                                          ; $75e3: $d1
  ld a, [$c048]                                   ; $75e4: $fa $48 $c0
  ld [$cc15], a                                   ; $75e7: $ea $15 $cc
  ld a, [$c049]                                   ; $75ea: $fa $49 $c0
  ld [$cc16], a                                   ; $75ed: $ea $16 $cc
  ld a, e                                         ; $75f0: $7b
  dec a                                           ; $75f1: $3d
  ld [$cc13], a                                   ; $75f2: $ea $13 $cc
  xor a                                           ; $75f5: $af
  ld [$cc14], a                                   ; $75f6: $ea $14 $cc
  ldh a, [rSCY]                                   ; $75f9: $f0 $42
  ld [$cc12], a                                   ; $75fb: $ea $12 $cc
  add $47                                         ; $75fe: $c6 $47
  ld [$cc11], a                                   ; $7600: $ea $11 $cc
  ld a, $48                                       ; $7603: $3e $48
  ld [$cc1d], a                                   ; $7605: $ea $1d $cc
  ldh a, [rSCX]                                   ; $7608: $f0 $43
  ld [$cc1c], a                                   ; $760a: $ea $1c $cc
  ld hl, $7dd6                                    ; $760d: $21 $d6 $7d
  call Call_000_33f3                              ; $7610: $cd $f3 $33
  inc bc                                          ; $7613: $03
  adc b                                           ; $7614: $88
  ld a, [hl]                                      ; $7615: $7e
  ret                                             ; $7616: $c9


Jump_005_7617:
  ld a, [$cc22]                                   ; $7617: $fa $22 $cc
  or a                                            ; $761a: $b7
  jr nz, jr_005_7623                              ; $761b: $20 $06

  xor a                                           ; $761d: $af
  ldh [$ffda], a                                  ; $761e: $e0 $da
  ld [$cd8f], a                                   ; $7620: $ea $8f $cd

jr_005_7623:
  xor a                                           ; $7623: $af
  ld [$cc22], a                                   ; $7624: $ea $22 $cc
  ld [$cc1e], a                                   ; $7627: $ea $1e $cc
  ld a, [$cb2d]                                   ; $762a: $fa $2d $cb
  or a                                            ; $762d: $b7
  ret z                                           ; $762e: $c8

  cp $0a                                          ; $762f: $fe $0a
  ret z                                           ; $7631: $c8

  cp $08                                          ; $7632: $fe $08
  ret z                                           ; $7634: $c8

  ld a, $01                                       ; $7635: $3e $01
  ld [$cb2d], a                                   ; $7637: $ea $2d $cb
  ret                                             ; $763a: $c9


Call_005_763b:
  ld hl, $d000                                    ; $763b: $21 $00 $d0
  ld bc, $0020                                    ; $763e: $01 $20 $00

jr_005_7641:
  ld a, [hl+]                                     ; $7641: $2a
  ld e, a                                         ; $7642: $5f
  ld a, [hl-]                                     ; $7643: $3a
  ld d, a                                         ; $7644: $57
  push hl                                         ; $7645: $e5
  call Call_005_7656                              ; $7646: $cd $56 $76
  pop hl                                          ; $7649: $e1
  ld [hl], e                                      ; $764a: $73
  inc hl                                          ; $764b: $23
  ld [hl], d                                      ; $764c: $72
  inc hl                                          ; $764d: $23
  dec bc                                          ; $764e: $0b
  ld a, b                                         ; $764f: $78
  or c                                            ; $7650: $b1
  jr nz, jr_005_7641                              ; $7651: $20 $ee

  ret                                             ; $7653: $c9


Call_005_7654:
  xor a                                           ; $7654: $af
  ret                                             ; $7655: $c9


Call_005_7656:
  res 7, d                                        ; $7656: $cb $ba
  call Call_000_33f3                              ; $7658: $cd $f3 $33

  db $03, $63, $7a

  sub $10                                         ; $765e: $d6 $10
  call c, Call_005_7654                           ; $7660: $dc $54 $76
  push af                                         ; $7663: $f5
  ld a, l                                         ; $7664: $7d
  sub $10                                         ; $7665: $d6 $10
  call c, Call_005_7654                           ; $7667: $dc $54 $76
  ld l, a                                         ; $766a: $6f
  pop af                                          ; $766b: $f1
  call Call_000_33f3                              ; $766c: $cd $f3 $33

  db $03, $77, $7a

  ret                                             ; $7672: $c9


Call_005_7673:
  ld hl, $d000                                    ; $7673: $21 $00 $d0
  or a                                            ; $7676: $b7
  jr z, jr_005_767e                               ; $7677: $28 $05

  ld bc, $0040                                    ; $7679: $01 $40 $00
  jr jr_005_7681                                  ; $767c: $18 $03

jr_005_767e:
  ld bc, $0020                                    ; $767e: $01 $20 $00

jr_005_7681:
  ld a, [hl+]                                     ; $7681: $2a
  ld e, a                                         ; $7682: $5f
  ld a, [hl-]                                     ; $7683: $3a
  ld d, a                                         ; $7684: $57
  push hl                                         ; $7685: $e5
  res 7, d                                        ; $7686: $cb $ba
  call Call_000_33f3                              ; $7688: $cd $f3 $33

  db $03, $63, $7a

  sub $02                                         ; $768e: $d6 $02
  call c, Call_005_76b4                           ; $7690: $dc $b4 $76
  push af                                         ; $7693: $f5
  ld a, h                                         ; $7694: $7c
  sub $08                                         ; $7695: $d6 $08
  call c, Call_005_76b4                           ; $7697: $dc $b4 $76
  ld h, a                                         ; $769a: $67
  ld a, l                                         ; $769b: $7d
  sub $04                                         ; $769c: $d6 $04
  call c, Call_005_76b4                           ; $769e: $dc $b4 $76
  ld l, a                                         ; $76a1: $6f
  pop af                                          ; $76a2: $f1
  call Call_000_33f3                              ; $76a3: $cd $f3 $33

  db $03, $77, $7a

  pop hl                                          ; $76a9: $e1
  ld [hl], e                                      ; $76aa: $73
  inc hl                                          ; $76ab: $23
  ld [hl], d                                      ; $76ac: $72
  inc hl                                          ; $76ad: $23
  dec bc                                          ; $76ae: $0b
  ld a, b                                         ; $76af: $78
  or c                                            ; $76b0: $b1
  jr nz, jr_005_7681                              ; $76b1: $20 $ce

  ret                                             ; $76b3: $c9


Call_005_76b4:
  xor a                                           ; $76b4: $af
  ret                                             ; $76b5: $c9


  db $f8, $0b, $0d, $0c, $22, $0c, $37, $0c, $5c, $0c, $71, $0c, $86, $0c, $a4, $0b
  db $b9, $0b, $ce, $0b, $e3, $0b, $60, $08, $75, $08, $8a, $08, $9f, $08, $b4, $08
  db $c9, $08, $de, $08, $f3, $08

  dec d                                           ; $76dc: $15
  add hl, bc                                      ; $76dd: $09

  db $2a, $09, $3f, $09

  ld d, h                                         ; $76e2: $54
  add hl, bc                                      ; $76e3: $09

  db $69, $09

  ld a, [hl]                                      ; $76e6: $7e
  add hl, bc                                      ; $76e7: $09

  db $93, $09, $a8, $09

  cp l                                            ; $76ec: $bd
  add hl, bc                                      ; $76ed: $09

  db $d2, $09

  rst $20                                         ; $76f0: $e7
  add hl, bc                                      ; $76f1: $09

  db $fc, $09, $11, $0a, $26, $0a, $3b, $0a, $50, $0a

  ld h, l                                         ; $76fc: $65
  ld a, [bc]                                      ; $76fd: $0a
  ld a, d                                         ; $76fe: $7a
  ld a, [bc]                                      ; $76ff: $0a

  db $8f, $0a, $a4, $0a

  cp c                                            ; $7704: $b9
  ld a, [bc]                                      ; $7705: $0a

  db $ce, $0a, $e3, $0a, $f8, $0a

  dec c                                           ; $770c: $0d
  dec bc                                          ; $770d: $0b
  ld [hl+], a                                     ; $770e: $22
  dec bc                                          ; $770f: $0b
  scf                                             ; $7710: $37
  dec bc                                          ; $7711: $0b

  db $4c, $0b, $61, $0b, $76, $0b, $04, $06, $32, $06, $4d, $06

  ld [hl], b                                      ; $771e: $70
  db $06                                          ; $771f: $06

  db $a1, $06, $bc, $06

  rst $10                                         ; $7724: $d7
  ld b, $8b                                       ; $7725: $06 $8b
  dec bc                                          ; $7727: $0b

  db $93, $0b, $9b, $0b

  adc e                                           ; $772c: $8b
  dec bc                                          ; $772d: $0b
  sub e                                           ; $772e: $93
  dec bc                                          ; $772f: $0b
  sbc e                                           ; $7730: $9b
  dec bc                                          ; $7731: $0b
  adc e                                           ; $7732: $8b
  dec bc                                          ; $7733: $0b
  sub e                                           ; $7734: $93
  dec bc                                          ; $7735: $0b
  sbc e                                           ; $7736: $9b
  dec bc                                          ; $7737: $0b
  adc e                                           ; $7738: $8b
  dec bc                                          ; $7739: $0b
  sub e                                           ; $773a: $93
  dec bc                                          ; $773b: $0b

  db $9b, $0b

  adc e                                           ; $773e: $8b
  dec bc                                          ; $773f: $0b
  sub e                                           ; $7740: $93
  dec bc                                          ; $7741: $0b
  sbc e                                           ; $7742: $9b
  dec bc                                          ; $7743: $0b
  adc e                                           ; $7744: $8b
  dec bc                                          ; $7745: $0b

  db $93, $0b

  sbc e                                           ; $7748: $9b
  dec bc                                          ; $7749: $0b
  adc e                                           ; $774a: $8b
  dec bc                                          ; $774b: $0b
  sub e                                           ; $774c: $93
  dec bc                                          ; $774d: $0b
  sbc e                                           ; $774e: $9b
  dec bc                                          ; $774f: $0b
  adc e                                           ; $7750: $8b
  dec bc                                          ; $7751: $0b
  sub e                                           ; $7752: $93
  dec bc                                          ; $7753: $0b

  db $9b, $0b

  nop                                             ; $7756: $00
  nop                                             ; $7757: $00
  ld b, b                                         ; $7758: $40
  rst $38                                         ; $7759: $ff

  db $00, $00, $80, $fe

  nop                                             ; $775e: $00
  nop                                             ; $775f: $00
  nop                                             ; $7760: $00
  db $fd                                          ; $7761: $fd
  sub b                                           ; $7762: $90
  nop                                             ; $7763: $00
  ld [hl], b                                      ; $7764: $70
  rst $38                                         ; $7765: $ff

  db $20, $01, $e0, $fe

  ld b, b                                         ; $776a: $40
  ld [bc], a                                      ; $776b: $02
  ret nz                                          ; $776c: $c0

  db $fd                                          ; $776d: $fd
  ret nz                                          ; $776e: $c0

  nop                                             ; $776f: $00
  nop                                             ; $7770: $00
  nop                                             ; $7771: $00

  db $80, $01, $00, $00

  nop                                             ; $7776: $00
  inc bc                                          ; $7777: $03
  nop                                             ; $7778: $00
  nop                                             ; $7779: $00
  sub b                                           ; $777a: $90
  nop                                             ; $777b: $00
  sub b                                           ; $777c: $90
  nop                                             ; $777d: $00

  db $20, $01, $20, $01

  ld b, b                                         ; $7782: $40
  ld [bc], a                                      ; $7783: $02
  ld b, b                                         ; $7784: $40
  ld [bc], a                                      ; $7785: $02
  nop                                             ; $7786: $00
  nop                                             ; $7787: $00
  ret nz                                          ; $7788: $c0

  nop                                             ; $7789: $00

  db $00, $00, $80, $01

  nop                                             ; $778e: $00
  nop                                             ; $778f: $00
  nop                                             ; $7790: $00
  inc bc                                          ; $7791: $03
  ld [hl], b                                      ; $7792: $70
  rst $38                                         ; $7793: $ff
  sub b                                           ; $7794: $90
  nop                                             ; $7795: $00

  db $e0, $fe, $20, $01

  ret nz                                          ; $779a: $c0

  db $fd                                          ; $779b: $fd
  ld b, b                                         ; $779c: $40
  ld [bc], a                                      ; $779d: $02
  ld b, b                                         ; $779e: $40
  rst $38                                         ; $779f: $ff
  nop                                             ; $77a0: $00
  nop                                             ; $77a1: $00

  db $80, $fe, $00, $00

  nop                                             ; $77a6: $00
  db $fd                                          ; $77a7: $fd
  nop                                             ; $77a8: $00
  nop                                             ; $77a9: $00
  ld [hl], b                                      ; $77aa: $70
  rst $38                                         ; $77ab: $ff
  ld [hl], b                                      ; $77ac: $70
  rst $38                                         ; $77ad: $ff

  db $e0, $fe, $e0, $fe

  ret nz                                          ; $77b2: $c0

  db $fd                                          ; $77b3: $fd
  ret nz                                          ; $77b4: $c0

  db $fd                                          ; $77b5: $fd

  db $e1, $41, $fd, $41, $fd, $41, $fd, $41, $ef, $41, $fd, $41, $fd, $41, $fd, $41
  db $4c, $7e, $70, $7e, $70, $7e, $70, $7e, $5e, $7e, $70, $7e, $70, $7e, $70, $7e
  db $e1, $41, $4f, $42, $4f, $42, $4f, $42, $41, $42, $4f, $42, $4f, $42, $4f, $42
  db $0b, $42

  cpl                                             ; $77e8: $2f
  ld b, d                                         ; $77e9: $42

  db $2f, $42

  cpl                                             ; $77ec: $2f
  ld b, d                                         ; $77ed: $42

  db $1d, $42, $2f, $42, $2f, $42

  cpl                                             ; $77f4: $2f
  ld b, d                                         ; $77f5: $42

  db $00, $00, $00, $00, $00, $20, $20, $20

  call Call_000_33f3                              ; $77fe: $cd $f3 $33

  db $06, $80, $51

  jp Jump_000_0885                                ; $7804: $c3 $85 $08


  ld a, [$cbac]                                   ; $7807: $fa $ac $cb
  inc a                                           ; $780a: $3c
  add a                                           ; $780b: $87
  add a                                           ; $780c: $87
  add a                                           ; $780d: $87
  dec a                                           ; $780e: $3d
  ld hl, $0006                                    ; $780f: $21 $06 $00
  add hl, bc                                      ; $7812: $09
  ld [hl+], a                                     ; $7813: $22
  ld [hl], $00                                    ; $7814: $36 $00
  call Call_000_2fc1                              ; $7816: $cd $c1 $2f
  sub $06                                         ; $7819: $d6 $06
  ld e, a                                         ; $781b: $5f
  add e                                           ; $781c: $83
  add e                                           ; $781d: $83
  ld d, a                                         ; $781e: $57
  ld a, [$cbad]                                   ; $781f: $fa $ad $cb
  add d                                           ; $7822: $82
  add a                                           ; $7823: $87
  add a                                           ; $7824: $87
  add a                                           ; $7825: $87
  dec a                                           ; $7826: $3d
  ld hl, $0009                                    ; $7827: $21 $09 $00
  add hl, bc                                      ; $782a: $09
  ld [hl+], a                                     ; $782b: $22
  ld [hl], $00                                    ; $782c: $36 $00
  ret                                             ; $782e: $c9


  ld a, $57                                       ; $782f: $3e $57
  ld hl, $0009                                    ; $7831: $21 $09 $00
  add hl, bc                                      ; $7834: $09
  ld [hl+], a                                     ; $7835: $22
  ld [hl], $00                                    ; $7836: $36 $00
  ld hl, $0001                                    ; $7838: $21 $01 $00
  add hl, bc                                      ; $783b: $09
  ld a, [hl]                                      ; $783c: $7e
  ld d, a                                         ; $783d: $57
  add a                                           ; $783e: $87
  add a                                           ; $783f: $87
  add d                                           ; $7840: $82
  add $02                                         ; $7841: $c6 $02
  add a                                           ; $7843: $87
  add a                                           ; $7844: $87
  add a                                           ; $7845: $87
  add $08                                         ; $7846: $c6 $08
  ld hl, $0006                                    ; $7848: $21 $06 $00
  add hl, bc                                      ; $784b: $09
  ld [hl+], a                                     ; $784c: $22
  ld [hl], $00                                    ; $784d: $36 $00
  ret                                             ; $784f: $c9


  db $21, $01, $26, $01, $2b, $01

  push bc                                         ; $7856: $c5
  ld hl, $0001                                    ; $7857: $21 $01 $00
  add hl, bc                                      ; $785a: $09
  ld a, [hl]                                      ; $785b: $7e
  ld hl, $7850                                    ; $785c: $21 $50 $78
  call ResolveIndexedPointer16                              ; $785f: $cd $8b $31
  xor a                                           ; $7862: $af
  ld b, a                                         ; $7863: $47
  rst $18                                         ; $7864: $df
  ld c, $80                                       ; $7865: $0e $80
  ld e, $04                                       ; $7867: $1e $04
  ld d, $04                                       ; $7869: $16 $04
  call Call_000_14a1                              ; $786b: $cd $a1 $14
  rst $20                                         ; $786e: $e7
  pop bc                                          ; $786f: $c1
  ret                                             ; $7870: $c9


  ld a, [$cb6f]                                   ; $7871: $fa $6f $cb
  dec a                                           ; $7874: $3d
  ld [$cb6f], a                                   ; $7875: $ea $6f $cb
  ret                                             ; $7878: $c9


  call Call_000_2fc1                              ; $7879: $cd $c1 $2f
  ldh [$ffd7], a                                  ; $787c: $e0 $d7
  call Call_000_33f3                              ; $787e: $cd $f3 $33

  db $01, $fc, $52

  ld l, a                                         ; $7884: $6f
  ldh a, [$ffd6]                                  ; $7885: $f0 $d6
  cp l                                            ; $7887: $bd
  ret z                                           ; $7888: $c8

  ldh [$ffbd], a                                  ; $7889: $e0 $bd
  ldh a, [rSVBK]                                  ; $788b: $f0 $70
  push af                                         ; $788d: $f5
  ld a, $06                                       ; $788e: $3e $06
  ldh [rSVBK], a                                  ; $7890: $e0 $70
  ldh a, [$ffbd]                                  ; $7892: $f0 $bd
  ld [$ddc4], a                                   ; $7894: $ea $c4 $dd
  ld a, l                                         ; $7897: $7d
  ldh [$ffd8], a                                  ; $7898: $e0 $d8
  ld [$ddc5], a                                   ; $789a: $ea $c5 $dd
  pop af                                          ; $789d: $f1
  ldh [rSVBK], a                                  ; $789e: $e0 $70
  xor a                                           ; $78a0: $af
  ld hl, $c2de                                    ; $78a1: $21 $de $c2
  ld [hl+], a                                     ; $78a4: $22
  ld [hl+], a                                     ; $78a5: $22
  ld [hl+], a                                     ; $78a6: $22
  ld [hl+], a                                     ; $78a7: $22
  ld [hl+], a                                     ; $78a8: $22
  ld [hl], a                                      ; $78a9: $77
  ld a, $01                                       ; $78aa: $3e $01
  ldh [$ffe1], a                                  ; $78ac: $e0 $e1
  ld a, $01                                       ; $78ae: $3e $01
  ld [$c0a6], a                                   ; $78b0: $ea $a6 $c0
  ret                                             ; $78b3: $c9


  call Call_000_2fc1                              ; $78b4: $cd $c1 $2f
  ld l, a                                         ; $78b7: $6f
  ldh a, [$ffd6]                                  ; $78b8: $f0 $d6
  cp l                                            ; $78ba: $bd
  ret z                                           ; $78bb: $c8

  ldh [$ffbd], a                                  ; $78bc: $e0 $bd
  ldh a, [rSVBK]                                  ; $78be: $f0 $70
  push af                                         ; $78c0: $f5
  ld a, $06                                       ; $78c1: $3e $06
  ldh [rSVBK], a                                  ; $78c3: $e0 $70
  ldh a, [$ffbd]                                  ; $78c5: $f0 $bd
  ld [$ddc4], a                                   ; $78c7: $ea $c4 $dd
  call Call_000_2fc1                              ; $78ca: $cd $c1 $2f
  ldh [$ffd6], a                                  ; $78cd: $e0 $d6
  ld [$ddc5], a                                   ; $78cf: $ea $c5 $dd
  ldh [$ffbd], a                                  ; $78d2: $e0 $bd
  pop af                                          ; $78d4: $f1
  ldh [rSVBK], a                                  ; $78d5: $e0 $70
  ldh a, [$ffbd]                                  ; $78d7: $f0 $bd
  xor a                                           ; $78d9: $af
  ld hl, $c2de                                    ; $78da: $21 $de $c2
  ld [hl+], a                                     ; $78dd: $22
  ld [hl+], a                                     ; $78de: $22
  ld [hl+], a                                     ; $78df: $22
  ld [hl+], a                                     ; $78e0: $22
  ld [hl+], a                                     ; $78e1: $22
  ld [hl+], a                                     ; $78e2: $22
  ld a, $01                                       ; $78e3: $3e $01
  ldh [$ffe1], a                                  ; $78e5: $e0 $e1
  ld a, $01                                       ; $78e7: $3e $01
  ld [$c0a6], a                                   ; $78e9: $ea $a6 $c0
  ret                                             ; $78ec: $c9


  call Call_000_2fc1                              ; $78ed: $cd $c1 $2f
  call Call_000_3427                              ; $78f0: $cd $27 $34

  db $06, $af, $6e

  call Call_000_2fc1                              ; $78f6: $cd $c1 $2f
  call Call_000_33f3                              ; $78f9: $cd $f3 $33

  db $06, $66, $66

  cp $ff                                          ; $78ff: $fe $ff
  jr nz, jr_005_793a                              ; $7901: $20 $37

  call Call_000_2fc1                              ; $7903: $cd $c1 $2f
  call Call_000_33f3                              ; $7906: $cd $f3 $33

  db $06, $74, $66

  cp $ff                                          ; $790c: $fe $ff
  ret z                                           ; $790e: $c8

  push bc                                         ; $790f: $c5
  ld hl, $0001                                    ; $7910: $21 $01 $00
  add hl, bc                                      ; $7913: $09
  ld b, [hl]                                      ; $7914: $46
  ld c, a                                         ; $7915: $4f
  ld a, b                                         ; $7916: $78
  call Call_000_33f3                              ; $7917: $cd $f3 $33

  db $06, $86, $66

  ld e, c                                         ; $791d: $59
  ld bc, $18fd                                    ; $791e: $01 $fd $18
  ld hl, $1f84                                    ; $7921: $21 $84 $1f
  ld a, $43                                       ; $7924: $3e $43
  call Call_000_394b                              ; $7926: $cd $4b $39
  xor a                                           ; $7929: $af
  call Call_000_33f3                              ; $792a: $cd $f3 $33

  db $04, $01, $44

  pop bc                                          ; $7930: $c1
  call Call_000_2fc1                              ; $7931: $cd $c1 $2f
  call Call_000_3427                              ; $7934: $cd $27 $34

  db $06, $d1, $66

jr_005_793a:
  push bc                                         ; $793a: $c5
  ld hl, $0001                                    ; $793b: $21 $01 $00
  add hl, bc                                      ; $793e: $09
  ld b, [hl]                                      ; $793f: $46
  ld c, a                                         ; $7940: $4f
  ld a, b                                         ; $7941: $78
  call Call_000_33f3                              ; $7942: $cd $f3 $33

  db $06, $86, $66

  ld a, d                                         ; $7948: $7a
  cp $01                                          ; $7949: $fe $01
  jr nz, jr_005_7968                              ; $794b: $20 $1b

  ld a, $24                                       ; $794d: $3e $24
  call Call_000_392b                              ; $794f: $cd $2b $39
  ld c, l                                         ; $7952: $4d
  ld b, h                                         ; $7953: $44
  ld hl, $154c                                    ; $7954: $21 $4c $15
  xor a                                           ; $7957: $af
  call Call_000_33f3                              ; $7958: $cd $f3 $33
  inc b                                           ; $795b: $04
  ld bc, $c144                                    ; $795c: $01 $44 $c1
  call Call_000_2fc1                              ; $795f: $cd $c1 $2f
  call Call_000_3427                              ; $7962: $cd $27 $34
  ld b, $d1                                       ; $7965: $06 $d1
  ld h, [hl]                                      ; $7967: $66

jr_005_7968:
  ld a, $16                                       ; $7968: $3e $16
  call Call_000_392b                              ; $796a: $cd $2b $39
  ld e, c                                         ; $796d: $59
  ld bc, $15fa                                    ; $796e: $01 $fa $15
  ld hl, $154f                                    ; $7971: $21 $4f $15
  xor a                                           ; $7974: $af
  call Call_000_33f3                              ; $7975: $cd $f3 $33

  db $04, $01, $44

  pop bc                                          ; $797b: $c1
  call Call_000_2fc1                              ; $797c: $cd $c1 $2f
  call Call_000_3427                              ; $797f: $cd $27 $34

  db $06, $d1, $66

  ld a, [$cc2c]                                   ; $7985: $fa $2c $cc
  cp $08                                          ; $7988: $fe $08
  ret nz                                          ; $798a: $c0

  call Call_000_33f3                              ; $798b: $cd $f3 $33

  db $06, $80, $51

  jp Jump_000_0885                                ; $7991: $c3 $85 $08


  ld hl, $002a                                    ; $7994: $21 $2a $00
  add hl, bc                                      ; $7997: $09
  res 0, [hl]                                     ; $7998: $cb $86
  ld a, [$cc2c]                                   ; $799a: $fa $2c $cc
  and $08                                         ; $799d: $e6 $08
  ret nz                                          ; $799f: $c0

  set 0, [hl]                                     ; $79a0: $cb $c6
  ret                                             ; $79a2: $c9


  call Call_000_33f3                              ; $79a3: $cd $f3 $33
  ld b, $88                                       ; $79a6: $06 $88
  ld d, c                                         ; $79a8: $51
  jp Jump_000_0864                                ; $79a9: $c3 $64 $08


  call Call_000_33f3                              ; $79ac: $cd $f3 $33

  db $06, $80, $51

  jp Jump_000_0885                                ; $79b2: $c3 $85 $08


  db $30, $01, $38, $01, $40, $01, $48, $01, $50, $01, $58, $01, $60, $01, $68, $01

  call Call_000_2fc9                              ; $79c5: $cd $c9 $2f
  and $1f                                         ; $79c8: $e6 $1f
  rra                                             ; $79ca: $1f
  srl a                                           ; $79cb: $cb $3f
  ld hl, $79b5                                    ; $79cd: $21 $b5 $79
  call Call_000_3182                              ; $79d0: $cd $82 $31
  call Call_000_3427                              ; $79d3: $cd $27 $34

  db $03, $63, $78

  ret                                             ; $79d9: $c9


  ld a, [$ddc7]                                   ; $79da: $fa $c7 $dd
  or a                                            ; $79dd: $b7
  jr z, jr_005_79e9                               ; $79de: $28 $09

  ld de, $0037                                    ; $79e0: $11 $37 $00
  call Call_000_3427                              ; $79e3: $cd $27 $34
  ld [bc], a                                      ; $79e6: $02
  adc [hl]                                        ; $79e7: $8e
  ld l, b                                         ; $79e8: $68

jr_005_79e9:
  ld de, $1274                                    ; $79e9: $11 $74 $12
  call Call_000_3427                              ; $79ec: $cd $27 $34
  ld [bc], a                                      ; $79ef: $02
  adc [hl]                                        ; $79f0: $8e
  ld l, b                                         ; $79f1: $68
  ld a, [$ddc7]                                   ; $79f2: $fa $c7 $dd
  or a                                            ; $79f5: $b7
  jr z, jr_005_7a01                               ; $79f6: $28 $09

  ld de, $009c                                    ; $79f8: $11 $9c $00
  call Call_000_3427                              ; $79fb: $cd $27 $34
  ld [bc], a                                      ; $79fe: $02
  adc [hl]                                        ; $79ff: $8e
  ld l, b                                         ; $7a00: $68

jr_005_7a01:
  ld de, $1274                                    ; $7a01: $11 $74 $12
  call Call_000_3427                              ; $7a04: $cd $27 $34
  ld [bc], a                                      ; $7a07: $02
  adc [hl]                                        ; $7a08: $8e
  ld l, b                                         ; $7a09: $68
  ld a, [$ddc7]                                   ; $7a0a: $fa $c7 $dd
  or a                                            ; $7a0d: $b7
  jr z, jr_005_7a19                               ; $7a0e: $28 $09

  ld de, $0100                                    ; $7a10: $11 $00 $01
  call Call_000_3427                              ; $7a13: $cd $27 $34
  ld [bc], a                                      ; $7a16: $02
  adc [hl]                                        ; $7a17: $8e
  ld l, b                                         ; $7a18: $68

jr_005_7a19:
  ld de, $1274                                    ; $7a19: $11 $74 $12
  call Call_000_3427                              ; $7a1c: $cd $27 $34
  ld [bc], a                                      ; $7a1f: $02
  adc [hl]                                        ; $7a20: $8e
  ld l, b                                         ; $7a21: $68

  push bc                                         ; $7a22: $c5
  ldh a, [$ffce]                                  ; $7a23: $f0 $ce
  or a                                            ; $7a25: $b7
  jr z, jr_005_7a2f                               ; $7a26: $28 $07

  ld a, $0b                                       ; $7a28: $3e $0b
  call Call_000_261e                              ; $7a2a: $cd $1e $26
  jr jr_005_7a3c                                  ; $7a2d: $18 $0d

jr_005_7a2f:
  call Call_000_2fc1                              ; $7a2f: $cd $c1 $2f
  ld d, a                                         ; $7a32: $57
  ld [$cdd0], a                                   ; $7a33: $ea $d0 $cd
  call Call_000_33f3                              ; $7a36: $cd $f3 $33

  db $04, $83, $59

jr_005_7a3c:
  pop bc                                          ; $7a3c: $c1
  ret                                             ; $7a3d: $c9


  ld a, $ff                                       ; $7a3e: $3e $ff
  call Call_000_2fdd                              ; $7a40: $cd $dd $2f
  inc a                                           ; $7a43: $3c
  ld hl, $0000                                    ; $7a44: $21 $00 $00
  add hl, bc                                      ; $7a47: $09
  ld [hl], a                                      ; $7a48: $77
  inc a                                           ; $7a49: $3c
  ld [$cb2d], a                                   ; $7a4a: $ea $2d $cb
  ret                                             ; $7a4d: $c9


Call_005_7a4e:
  call Call_000_2fc9                              ; $7a4e: $cd $c9 $2f
  add a                                           ; $7a51: $87
  add a                                           ; $7a52: $87
  ld hl, $7756                                    ; $7a53: $21 $56 $77
  call Call_000_3173                              ; $7a56: $cd $73 $31
  ld e, l                                         ; $7a59: $5d
  ld d, h                                         ; $7a5a: $54
  ret                                             ; $7a5b: $c9


Call_005_7a5c:
  call Call_000_2fc1                              ; $7a5c: $cd $c1 $2f
  ld l, a                                         ; $7a5f: $6f
  ld h, $00                                       ; $7a60: $26 $00
  add hl, hl                                      ; $7a62: $29
  add hl, hl                                      ; $7a63: $29
  add hl, de                                      ; $7a64: $19
  ld e, l                                         ; $7a65: $5d
  ld d, h                                         ; $7a66: $54
  ret                                             ; $7a67: $c9


  call Call_000_2fc9                              ; $7a68: $cd $c9 $2f
  ld hl, $0019                                    ; $7a6b: $21 $19 $00
  add hl, bc                                      ; $7a6e: $09
  ld [hl], a                                      ; $7a6f: $77
  and $04                                         ; $7a70: $e6 $04
  ld a, $20                                       ; $7a72: $3e $20
  jr nz, jr_005_7a77                              ; $7a74: $20 $01

  xor a                                           ; $7a76: $af

jr_005_7a77:
  call Call_000_0806                              ; $7a77: $cd $06 $08
  jp Jump_005_7a85                                ; $7a7a: $c3 $85 $7a


  call Call_005_7a4e                              ; $7a7d: $cd $4e $7a
  call Call_005_7a5c                              ; $7a80: $cd $5c $7a
  jr jr_005_7a8e                                  ; $7a83: $18 $09

Jump_005_7a85:
  call Call_005_7a4e                              ; $7a85: $cd $4e $7a
  ld hl, $0004                                    ; $7a88: $21 $04 $00
  add hl, de                                      ; $7a8b: $19
  ld e, l                                         ; $7a8c: $5d
  ld d, h                                         ; $7a8d: $54

jr_005_7a8e:
  ld hl, $000f                                    ; $7a8e: $21 $0f $00
  add hl, bc                                      ; $7a91: $09
  push de                                         ; $7a92: $d5
  ld d, h                                         ; $7a93: $54
  ld e, l                                         ; $7a94: $5d
  pop hl                                          ; $7a95: $e1
  jp Jump_000_0269                                ; $7a96: $c3 $69 $02


Call_005_7a99:
  call Call_000_2fc9                              ; $7a99: $cd $c9 $2f
  push af                                         ; $7a9c: $f5
  ld hl, $77b6                                    ; $7a9d: $21 $b6 $77
  call Call_000_3182                              ; $7aa0: $cd $82 $31
  call Call_000_09f4                              ; $7aa3: $cd $f4 $09
  pop af                                          ; $7aa6: $f1
  ld hl, $77f6                                    ; $7aa7: $21 $f6 $77
  rst $08                                         ; $7aaa: $cf
  call Call_000_0806                              ; $7aab: $cd $06 $08
  call Call_000_2fc9                              ; $7aae: $cd $c9 $2f
  ld hl, $77b6                                    ; $7ab1: $21 $b6 $77
  push af                                         ; $7ab4: $f5
  jr jr_005_7b06                                  ; $7ab5: $18 $4f

Call_005_7ab7:
  call Call_000_2fc9                              ; $7ab7: $cd $c9 $2f
  cp $04                                          ; $7aba: $fe $04
  jr c, jr_005_7ac5                               ; $7abc: $38 $07

  ld a, $20                                       ; $7abe: $3e $20
  call Call_000_0806                              ; $7ac0: $cd $06 $08
  jr jr_005_7ac9                                  ; $7ac3: $18 $04

jr_005_7ac5:
  xor a                                           ; $7ac5: $af
  call Call_000_0806                              ; $7ac6: $cd $06 $08

jr_005_7ac9:
  call Call_000_2fc9                              ; $7ac9: $cd $c9 $2f
  ld hl, $77c6                                    ; $7acc: $21 $c6 $77
  call Call_000_3182                              ; $7acf: $cd $82 $31
  jp Jump_000_09f4                                ; $7ad2: $c3 $f4 $09


  call Call_000_2fc9                              ; $7ad5: $cd $c9 $2f
  ld hl, $77c6                                    ; $7ad8: $21 $c6 $77
  push af                                         ; $7adb: $f5
  jr jr_005_7b06                                  ; $7adc: $18 $28

Call_005_7ade:
  call Call_000_2fc9                              ; $7ade: $cd $c9 $2f
  ld hl, $77d6                                    ; $7ae1: $21 $d6 $77
  call Call_000_3182                              ; $7ae4: $cd $82 $31
  jp Jump_000_09f4                                ; $7ae7: $c3 $f4 $09


  call Call_000_2fc9                              ; $7aea: $cd $c9 $2f
  ld hl, $77d6                                    ; $7aed: $21 $d6 $77
  push af                                         ; $7af0: $f5
  jr jr_005_7b06                                  ; $7af1: $18 $13

Call_005_7af3:
  call Call_000_2fc9                              ; $7af3: $cd $c9 $2f
  ld hl, $77e6                                    ; $7af6: $21 $e6 $77
  call Call_000_3182                              ; $7af9: $cd $82 $31
  jp Jump_000_09f4                                ; $7afc: $c3 $f4 $09


  call Call_000_2fc9                              ; $7aff: $cd $c9 $2f
  ld hl, $77e6                                    ; $7b02: $21 $e6 $77
  push af                                         ; $7b05: $f5

jr_005_7b06:
  call Call_000_3182                              ; $7b06: $cd $82 $31
  ld hl, $0021                                    ; $7b09: $21 $21 $00
  add hl, bc                                      ; $7b0c: $09
  ld a, e                                         ; $7b0d: $7b
  ld [hl+], a                                     ; $7b0e: $22
  ld a, d                                         ; $7b0f: $7a
  ld [hl], a                                      ; $7b10: $77
  inc hl                                          ; $7b11: $23
  ld a, [hl]                                      ; $7b12: $7e
  or a                                            ; $7b13: $b7
  jr nz, jr_005_7b19                              ; $7b14: $20 $03

  ld a, $01                                       ; $7b16: $3e $01
  ld [hl], a                                      ; $7b18: $77

jr_005_7b19:
  pop af                                          ; $7b19: $f1
  ld hl, $77f6                                    ; $7b1a: $21 $f6 $77
  rst $08                                         ; $7b1d: $cf
  jp Jump_000_0806                                ; $7b1e: $c3 $06 $08


  ldh a, [rSVBK]                                  ; $7b21: $f0 $70
  push af                                         ; $7b23: $f5
  ld a, $03                                       ; $7b24: $3e $03
  ldh [rSVBK], a                                  ; $7b26: $e0 $70
  ldh a, [$ffa9]                                  ; $7b28: $f0 $a9
  cp $06                                          ; $7b2a: $fe $06
  jr nz, jr_005_7b4f                              ; $7b2c: $20 $21

  ldh a, [rLY]                                    ; $7b2e: $f0 $44
  cp $90                                          ; $7b30: $fe $90
  jp c, Jump_005_7be9                             ; $7b32: $da $e9 $7b

  jp nz, Jump_005_7be9                            ; $7b35: $c2 $e9 $7b

  ld c, $2f                                       ; $7b38: $0e $2f
  ld de, $9800                                    ; $7b3a: $11 $00 $98
  ld hl, $d000                                    ; $7b3d: $21 $00 $d0
  rst $28                                         ; $7b40: $ef
  ld a, $01                                       ; $7b41: $3e $01
  ldh [rVBK], a                                   ; $7b43: $e0 $4f
  ld hl, $d500                                    ; $7b45: $21 $00 $d5
  rst $28                                         ; $7b48: $ef
  xor a                                           ; $7b49: $af
  ldh [$ffa9], a                                  ; $7b4a: $e0 $a9
  jp Jump_005_7be6                                ; $7b4c: $c3 $e6 $7b


jr_005_7b4f:
  ldh a, [$ffa9]                                  ; $7b4f: $f0 $a9
  cp $05                                          ; $7b51: $fe $05
  jr nz, jr_005_7b5a                              ; $7b53: $20 $05

  ld hl, $d000                                    ; $7b55: $21 $00 $d0
  jr jr_005_7b67                                  ; $7b58: $18 $0d

jr_005_7b5a:
  ldh a, [$ffa9]                                  ; $7b5a: $f0 $a9
  cp $04                                          ; $7b5c: $fe $04
  jr nz, jr_005_7b87                              ; $7b5e: $20 $27

  ld a, $01                                       ; $7b60: $3e $01
  ldh [rVBK], a                                   ; $7b62: $e0 $4f
  ld hl, $d500                                    ; $7b64: $21 $00 $d5

jr_005_7b67:
  ldh a, [rLY]                                    ; $7b67: $f0 $44
  cp $90                                          ; $7b69: $fe $90
  jr c, jr_005_7be9                               ; $7b6b: $38 $7c

  cp $94                                          ; $7b6d: $fe $94
  jr nc, jr_005_7be9                              ; $7b6f: $30 $78

  ld de, $9800                                    ; $7b71: $11 $00 $98
  ld a, [$c0aa]                                   ; $7b74: $fa $aa $c0
  bit 2, a                                        ; $7b77: $cb $57
  jr z, jr_005_7b7e                               ; $7b79: $28 $03

  ld de, $9c00                                    ; $7b7b: $11 $00 $9c

jr_005_7b7e:
  ld c, $3f                                       ; $7b7e: $0e $3f
  rst $28                                         ; $7b80: $ef
  ld hl, $ffa9                                    ; $7b81: $21 $a9 $ff
  dec [hl]                                        ; $7b84: $35
  jr jr_005_7be6                                  ; $7b85: $18 $5f

jr_005_7b87:
  ldh a, [$ffa9]                                  ; $7b87: $f0 $a9
  cp $03                                          ; $7b89: $fe $03
  jr nz, jr_005_7bb7                              ; $7b8b: $20 $2a

  ldh a, [rLY]                                    ; $7b8d: $f0 $44
  cp $90                                          ; $7b8f: $fe $90
  jr c, jr_005_7be9                               ; $7b91: $38 $56

  cp $94                                          ; $7b93: $fe $94
  jr nc, jr_005_7be9                              ; $7b95: $30 $52

  xor a                                           ; $7b97: $af
  ldh [$ffa9], a                                  ; $7b98: $e0 $a9
  ld de, $9800                                    ; $7b9a: $11 $00 $98
  ld a, [$c0aa]                                   ; $7b9d: $fa $aa $c0
  bit 2, a                                        ; $7ba0: $cb $57
  jr z, jr_005_7ba7                               ; $7ba2: $28 $03

  ld de, $9c00                                    ; $7ba4: $11 $00 $9c

jr_005_7ba7:
  ld hl, $d000                                    ; $7ba7: $21 $00 $d0
  ld c, $23                                       ; $7baa: $0e $23
  rst $28                                         ; $7bac: $ef
  ld a, $01                                       ; $7bad: $3e $01
  ldh [rVBK], a                                   ; $7baf: $e0 $4f
  ld hl, $d500                                    ; $7bb1: $21 $00 $d5
  rst $28                                         ; $7bb4: $ef
  jr jr_005_7be6                                  ; $7bb5: $18 $2f

jr_005_7bb7:
  cp $02                                          ; $7bb7: $fe $02
  jr nz, jr_005_7be9                              ; $7bb9: $20 $2e

  ldh a, [rLY]                                    ; $7bbb: $f0 $44
  cp $90                                          ; $7bbd: $fe $90
  jr c, jr_005_7be9                               ; $7bbf: $38 $28

  ldh a, [rLY]                                    ; $7bc1: $f0 $44
  cp $96                                          ; $7bc3: $fe $96
  jr nc, jr_005_7be9                              ; $7bc5: $30 $22

  ld hl, $ffa9                                    ; $7bc7: $21 $a9 $ff
  dec [hl]                                        ; $7bca: $35
  ld de, $9800                                    ; $7bcb: $11 $00 $98
  ld a, [$c0aa]                                   ; $7bce: $fa $aa $c0
  bit 2, a                                        ; $7bd1: $cb $57
  jr z, jr_005_7bd8                               ; $7bd3: $28 $03

  ld de, $9c00                                    ; $7bd5: $11 $00 $9c

jr_005_7bd8:
  ld hl, $d000                                    ; $7bd8: $21 $00 $d0
  ld c, $0f                                       ; $7bdb: $0e $0f
  rst $28                                         ; $7bdd: $ef
  ld a, $01                                       ; $7bde: $3e $01
  ldh [rVBK], a                                   ; $7be0: $e0 $4f
  ld hl, $d500                                    ; $7be2: $21 $00 $d5
  rst $28                                         ; $7be5: $ef

Jump_005_7be6:
jr_005_7be6:
  xor a                                           ; $7be6: $af
  ldh [rVBK], a                                   ; $7be7: $e0 $4f

Jump_005_7be9:
jr_005_7be9:
  pop af                                          ; $7be9: $f1
  ldh [rSVBK], a                                  ; $7bea: $e0 $70
  ret                                             ; $7bec: $c9


  ld a, [bc]                                      ; $7bed: $0a
  cp $01                                          ; $7bee: $fe $01
  ret nz                                          ; $7bf0: $c0

  ld a, $ff                                       ; $7bf1: $3e $ff
  ld hl, $cae1                                    ; $7bf3: $21 $e1 $ca
  ld [hl+], a                                     ; $7bf6: $22
  ld [hl+], a                                     ; $7bf7: $22
  ld [hl+], a                                     ; $7bf8: $22
  ld [hl+], a                                     ; $7bf9: $22
  ret                                             ; $7bfa: $c9


  push bc                                         ; $7bfb: $c5
  push de                                         ; $7bfc: $d5
  call Call_000_33f3                              ; $7bfd: $cd $f3 $33
  inc bc                                          ; $7c00: $03
  db $ed                                          ; $7c01: $ed
  ld a, b                                         ; $7c02: $78
  ld hl, $0027                                    ; $7c03: $21 $27 $00
  add hl, bc                                      ; $7c06: $09
  ld a, [hl]                                      ; $7c07: $7e
  cp $05                                          ; $7c08: $fe $05
  jr c, jr_005_7c15                               ; $7c0a: $38 $09

  cp $0b                                          ; $7c0c: $fe $0b
  jr c, jr_005_7c15                               ; $7c0e: $38 $05

  ld de, $01d0                                    ; $7c10: $11 $d0 $01
  jr jr_005_7c18                                  ; $7c13: $18 $03

jr_005_7c15:
  ld de, $01d0                                    ; $7c15: $11 $d0 $01

jr_005_7c18:
  call Call_000_33f3                              ; $7c18: $cd $f3 $33
  inc bc                                          ; $7c1b: $03
  ld h, e                                         ; $7c1c: $63
  ld a, b                                         ; $7c1d: $78
  pop de                                          ; $7c1e: $d1
  pop bc                                          ; $7c1f: $c1
  ret                                             ; $7c20: $c9


  inc bc                                          ; $7c21: $03
  ld a, [bc]                                      ; $7c22: $0a
  dec bc                                          ; $7c23: $0b
  inc a                                           ; $7c24: $3c
  ldh [$ff9a], a                                  ; $7c25: $e0 $9a
  ret                                             ; $7c27: $c9


  push de                                         ; $7c28: $d5
  push hl                                         ; $7c29: $e5
  ld a, $31                                       ; $7c2a: $3e $31
  call Call_000_28e6                              ; $7c2c: $cd $e6 $28
  add $2f                                         ; $7c2f: $c6 $2f
  ld d, a                                         ; $7c31: $57
  ld a, $20                                       ; $7c32: $3e $20
  call Call_000_28e6                              ; $7c34: $cd $e6 $28
  ld e, a                                         ; $7c37: $5f
  ld hl, $0006                                    ; $7c38: $21 $06 $00
  add hl, bc                                      ; $7c3b: $09
  ld [hl], d                                      ; $7c3c: $72
  inc hl                                          ; $7c3d: $23
  ld [hl], $00                                    ; $7c3e: $36 $00
  ld hl, $0009                                    ; $7c40: $21 $09 $00
  add hl, bc                                      ; $7c43: $09
  ld [hl], e                                      ; $7c44: $73
  inc hl                                          ; $7c45: $23
  ld [hl], $00                                    ; $7c46: $36 $00
  pop hl                                          ; $7c48: $e1
  pop de                                          ; $7c49: $d1
  ret                                             ; $7c4a: $c9


  db $49, $4a, $4b, $4c, $4d

  call Call_000_33f3                              ; $7c50: $cd $f3 $33

  db $01, $35, $71

  ld hl, $0002                                    ; $7c56: $21 $02 $00
  add hl, bc                                      ; $7c59: $09
  add [hl]                                        ; $7c5a: $86
  bit 7, a                                        ; $7c5b: $cb $7f
  jr z, jr_005_7c69                               ; $7c5d: $28 $0a

  push hl                                         ; $7c5f: $e5
  and $7f                                         ; $7c60: $e6 $7f
  ld hl, $0023                                    ; $7c62: $21 $23 $00
  add hl, bc                                      ; $7c65: $09
  ld [hl], $01                                    ; $7c66: $36 $01
  pop hl                                          ; $7c68: $e1

jr_005_7c69:
  ld [hl], a                                      ; $7c69: $77
  ret                                             ; $7c6a: $c9


  ld hl, $002d                                    ; $7c6b: $21 $2d $00
  add hl, bc                                      ; $7c6e: $09
  set 4, [hl]                                     ; $7c6f: $cb $e6
  res 3, [hl]                                     ; $7c71: $cb $9e
  ld hl, $0028                                    ; $7c73: $21 $28 $00
  add hl, bc                                      ; $7c76: $09
  ld a, [hl]                                      ; $7c77: $7e
  srl a                                           ; $7c78: $cb $3f
  srl a                                           ; $7c7a: $cb $3f
  ret z                                           ; $7c7c: $c8

  ld hl, $002d                                    ; $7c7d: $21 $2d $00
  add hl, bc                                      ; $7c80: $09
  res 4, [hl]                                     ; $7c81: $cb $a6
  set 3, [hl]                                     ; $7c83: $cb $de
  ret                                             ; $7c85: $c9


  ld hl, $0027                                    ; $7c86: $21 $27 $00
  add hl, bc                                      ; $7c89: $09
  ld a, [hl]                                      ; $7c8a: $7e
  or a                                            ; $7c8b: $b7
  ret nz                                          ; $7c8c: $c0

  call Call_000_33f3                              ; $7c8d: $cd $f3 $33

  db $01, $35, $71

  ld h, a                                         ; $7c93: $67
  ld l, $1c                                       ; $7c94: $2e $1c
  call $00b0                                      ; $7c96: $cd $b0 $00
  ld a, h                                         ; $7c99: $7c
  ld hl, $7c4b                                    ; $7c9a: $21 $4b $7c
  rst $08                                         ; $7c9d: $cf
  jp Jump_000_392b                                ; $7c9e: $c3 $2b $39


  ld hl, $000d                                    ; $7ca1: $21 $0d $00
  add hl, bc                                      ; $7ca4: $09
  call Call_005_7cac                              ; $7ca5: $cd $ac $7c
  ld hl, $0009                                    ; $7ca8: $21 $09 $00
  add hl, bc                                      ; $7cab: $09

Call_005_7cac:
  push hl                                         ; $7cac: $e5
  ld a, [hl+]                                     ; $7cad: $2a
  ld d, [hl]                                      ; $7cae: $56
  ld e, a                                         ; $7caf: $5f
  ld hl, $fff0                                    ; $7cb0: $21 $f0 $ff
  add hl, de                                      ; $7cb3: $19
  ld a, l                                         ; $7cb4: $7d
  ld d, h                                         ; $7cb5: $54
  pop hl                                          ; $7cb6: $e1
  ld [hl+], a                                     ; $7cb7: $22
  ld [hl], d                                      ; $7cb8: $72
  ret                                             ; $7cb9: $c9


  ld hl, $0043                                    ; $7cba: $21 $43 $00
  add hl, bc                                      ; $7cbd: $09
  ld a, [hl]                                      ; $7cbe: $7e
  ld hl, $76b6                                    ; $7cbf: $21 $b6 $76
  call Call_000_3182                              ; $7cc2: $cd $82 $31
  call Call_000_3427                              ; $7cc5: $cd $27 $34

  db $02, $8e, $68

  push bc                                         ; $7ccb: $c5
  ldh a, [rSVBK]                                  ; $7ccc: $f0 $70
  push af                                         ; $7cce: $f5
  ld a, $05                                       ; $7ccf: $3e $05
  ldh [rSVBK], a                                  ; $7cd1: $e0 $70
  ld a, [$cc2a]                                   ; $7cd3: $fa $2a $cc
  dec a                                           ; $7cd6: $3d
  call Call_000_33f3                              ; $7cd7: $cd $f3 $33
  inc bc                                          ; $7cda: $03
  halt                                            ; $7cdb: $76
  ld c, c                                         ; $7cdc: $49
  push hl                                         ; $7cdd: $e5
  ld de, $000a                                    ; $7cde: $11 $0a $00
  add hl, de                                      ; $7ce1: $19
  res 1, [hl]                                     ; $7ce2: $cb $8e
  res 2, [hl]                                     ; $7ce4: $cb $96
  pop hl                                          ; $7ce6: $e1
  push hl                                         ; $7ce7: $e5
  push hl                                         ; $7ce8: $e5
  ld de, $0001                                    ; $7ce9: $11 $01 $00
  add hl, de                                      ; $7cec: $19
  ld e, [hl]                                      ; $7ced: $5e
  inc hl                                          ; $7cee: $23
  ld d, [hl]                                      ; $7cef: $56
  pop bc                                          ; $7cf0: $c1
  ld hl, $0005                                    ; $7cf1: $21 $05 $00
  add hl, bc                                      ; $7cf4: $09
  ld a, e                                         ; $7cf5: $7b
  ld [hl+], a                                     ; $7cf6: $22
  ld a, d                                         ; $7cf7: $7a
  ld [hl], a                                      ; $7cf8: $77
  pop hl                                          ; $7cf9: $e1
  push hl                                         ; $7cfa: $e5
  ld de, $0003                                    ; $7cfb: $11 $03 $00
  add hl, de                                      ; $7cfe: $19
  ld e, [hl]                                      ; $7cff: $5e
  inc hl                                          ; $7d00: $23
  ld d, [hl]                                      ; $7d01: $56
  pop bc                                          ; $7d02: $c1
  push bc                                         ; $7d03: $c5
  ld hl, $0007                                    ; $7d04: $21 $07 $00
  add hl, bc                                      ; $7d07: $09
  ld a, e                                         ; $7d08: $7b
  ld [hl+], a                                     ; $7d09: $22
  ld a, d                                         ; $7d0a: $7a
  ld [hl], a                                      ; $7d0b: $77
  pop bc                                          ; $7d0c: $c1
  ld hl, $0015                                    ; $7d0d: $21 $15 $00
  add hl, bc                                      ; $7d10: $09
  xor a                                           ; $7d11: $af
  ld [hl+], a                                     ; $7d12: $22
  ld [hl], a                                      ; $7d13: $77
  ldh [$ffbd], a                                  ; $7d14: $e0 $bd
  pop af                                          ; $7d16: $f1
  ldh [rSVBK], a                                  ; $7d17: $e0 $70
  ldh a, [$ffbd]                                  ; $7d19: $f0 $bd
  pop bc                                          ; $7d1b: $c1
  ret                                             ; $7d1c: $c9


  push bc                                         ; $7d1d: $c5
  ldh a, [rSVBK]                                  ; $7d1e: $f0 $70
  push af                                         ; $7d20: $f5
  ld a, $05                                       ; $7d21: $3e $05
  ldh [rSVBK], a                                  ; $7d23: $e0 $70
  ld a, [$cc2a]                                   ; $7d25: $fa $2a $cc
  dec a                                           ; $7d28: $3d
  call Call_000_33f3                              ; $7d29: $cd $f3 $33
  inc bc                                          ; $7d2c: $03
  halt                                            ; $7d2d: $76
  ld c, c                                         ; $7d2e: $49
  push hl                                         ; $7d2f: $e5
  ld bc, $0001                                    ; $7d30: $01 $01 $00
  add hl, bc                                      ; $7d33: $09
  ld e, [hl]                                      ; $7d34: $5e
  inc hl                                          ; $7d35: $23
  ld d, [hl]                                      ; $7d36: $56
  pop bc                                          ; $7d37: $c1
  ld hl, $0005                                    ; $7d38: $21 $05 $00
  add hl, bc                                      ; $7d3b: $09
  ld a, e                                         ; $7d3c: $7b
  ld [hl+], a                                     ; $7d3d: $22
  ld a, d                                         ; $7d3e: $7a
  ld [hl], a                                      ; $7d3f: $77
  ldh [$ffbd], a                                  ; $7d40: $e0 $bd
  pop af                                          ; $7d42: $f1
  ldh [rSVBK], a                                  ; $7d43: $e0 $70
  ldh a, [$ffbd]                                  ; $7d45: $f0 $bd
  pop bc                                          ; $7d47: $c1
  ret                                             ; $7d48: $c9


  ld hl, $cc4a                                    ; $7d49: $21 $4a $cc
  set 1, [hl]                                     ; $7d4c: $cb $ce
  ret                                             ; $7d4e: $c9


  ld hl, $cc4a                                    ; $7d4f: $21 $4a $cc
  set 6, [hl]                                     ; $7d52: $cb $f6
  ret                                             ; $7d54: $c9


  ldh a, [rSVBK]                                  ; $7d55: $f0 $70
  push af                                         ; $7d57: $f5
  ld a, $05                                       ; $7d58: $3e $05
  ldh [rSVBK], a                                  ; $7d5a: $e0 $70
  push de                                         ; $7d5c: $d5
  ld a, [$cc2a]                                   ; $7d5d: $fa $2a $cc
  dec a                                           ; $7d60: $3d
  call Call_000_33f3                              ; $7d61: $cd $f3 $33
  inc bc                                          ; $7d64: $03
  halt                                            ; $7d65: $76
  ld c, c                                         ; $7d66: $49
  ld de, $0005                                    ; $7d67: $11 $05 $00
  add hl, de                                      ; $7d6a: $19
  pop de                                          ; $7d6b: $d1
  ld a, [hl+]                                     ; $7d6c: $2a
  or [hl]                                         ; $7d6d: $b6
  pop af                                          ; $7d6e: $f1
  ldh [rSVBK], a                                  ; $7d6f: $e0 $70
  ret z                                           ; $7d71: $c8

  ld hl, $003c                                    ; $7d72: $21 $3c $00
  call Call_000_3427                              ; $7d75: $cd $27 $34
  inc bc                                          ; $7d78: $03
  ld [hl], l                                      ; $7d79: $75
  ld b, [hl]                                      ; $7d7a: $46
  ldh a, [rSVBK]                                  ; $7d7b: $f0 $70
  push af                                         ; $7d7d: $f5
  ld a, $05                                       ; $7d7e: $3e $05
  ldh [rSVBK], a                                  ; $7d80: $e0 $70
  push de                                         ; $7d82: $d5
  ld a, [$cc2a]                                   ; $7d83: $fa $2a $cc
  dec a                                           ; $7d86: $3d
  call Call_000_33f3                              ; $7d87: $cd $f3 $33
  inc bc                                          ; $7d8a: $03
  halt                                            ; $7d8b: $76
  ld c, c                                         ; $7d8c: $49
  ld de, $0005                                    ; $7d8d: $11 $05 $00
  add hl, de                                      ; $7d90: $19
  pop de                                          ; $7d91: $d1
  ld a, [hl+]                                     ; $7d92: $2a
  or [hl]                                         ; $7d93: $b6
  pop af                                          ; $7d94: $f1
  ldh [rSVBK], a                                  ; $7d95: $e0 $70
  ret z                                           ; $7d97: $c8

  ld hl, $001e                                    ; $7d98: $21 $1e $00
  call Call_000_3427                              ; $7d9b: $cd $27 $34
  inc bc                                          ; $7d9e: $03
  ld [hl], l                                      ; $7d9f: $75
  ld b, [hl]                                      ; $7da0: $46
  ldh a, [rSVBK]                                  ; $7da1: $f0 $70
  push af                                         ; $7da3: $f5
  ld a, $05                                       ; $7da4: $3e $05
  ldh [rSVBK], a                                  ; $7da6: $e0 $70
  push de                                         ; $7da8: $d5
  ld a, [$cc2a]                                   ; $7da9: $fa $2a $cc
  dec a                                           ; $7dac: $3d
  call Call_000_33f3                              ; $7dad: $cd $f3 $33
  inc bc                                          ; $7db0: $03
  halt                                            ; $7db1: $76
  ld c, c                                         ; $7db2: $49
  ld de, $0005                                    ; $7db3: $11 $05 $00
  add hl, de                                      ; $7db6: $19
  pop de                                          ; $7db7: $d1
  ld a, [hl+]                                     ; $7db8: $2a
  or [hl]                                         ; $7db9: $b6
  pop af                                          ; $7dba: $f1
  ldh [rSVBK], a                                  ; $7dbb: $e0 $70
  ret z                                           ; $7dbd: $c8

  ld hl, $0046                                    ; $7dbe: $21 $46 $00
  call Call_000_3427                              ; $7dc1: $cd $27 $34
  inc bc                                          ; $7dc4: $03
  ld [hl], l                                      ; $7dc5: $75
  ld b, [hl]                                      ; $7dc6: $46
  ldh a, [rSVBK]                                  ; $7dc7: $f0 $70
  push af                                         ; $7dc9: $f5
  ld a, $05                                       ; $7dca: $3e $05
  ldh [rSVBK], a                                  ; $7dcc: $e0 $70
  xor a                                           ; $7dce: $af
  ld [$d096], a                                   ; $7dcf: $ea $96 $d0
  ld a, [$cc2a]                                   ; $7dd2: $fa $2a $cc
  cp $04                                          ; $7dd5: $fe $04
  jr z, jr_005_7df3                               ; $7dd7: $28 $1a

  cp $05                                          ; $7dd9: $fe $05
  jr z, jr_005_7dea                               ; $7ddb: $28 $0d

  ld a, $18                                       ; $7ddd: $3e $18
  ld [$d096], a                                   ; $7ddf: $ea $96 $d0
  xor a                                           ; $7de2: $af
  ld [$d097], a                                   ; $7de3: $ea $97 $d0
  pop af                                          ; $7de6: $f1
  ldh [rSVBK], a                                  ; $7de7: $e0 $70
  ret                                             ; $7de9: $c9


jr_005_7dea:
  ld a, $20                                       ; $7dea: $3e $20
  ld [$d097], a                                   ; $7dec: $ea $97 $d0
  pop af                                          ; $7def: $f1
  ldh [rSVBK], a                                  ; $7df0: $e0 $70
  ret                                             ; $7df2: $c9


jr_005_7df3:
  ld a, $18                                       ; $7df3: $3e $18
  ld [$d096], a                                   ; $7df5: $ea $96 $d0
  ld a, $44                                       ; $7df8: $3e $44
  ld [$d097], a                                   ; $7dfa: $ea $97 $d0
  pop af                                          ; $7dfd: $f1
  ldh [rSVBK], a                                  ; $7dfe: $e0 $70
  ret                                             ; $7e00: $c9


  ldh a, [rSVBK]                                  ; $7e01: $f0 $70
  push af                                         ; $7e03: $f5
  ld a, $05                                       ; $7e04: $3e $05
  ldh [rSVBK], a                                  ; $7e06: $e0 $70
  ld a, [$cc2a]                                   ; $7e08: $fa $2a $cc
  dec a                                           ; $7e0b: $3d
  call Call_000_33f3                              ; $7e0c: $cd $f3 $33
  inc bc                                          ; $7e0f: $03
  halt                                            ; $7e10: $76
  ld c, c                                         ; $7e11: $49
  ld de, $000d                                    ; $7e12: $11 $0d $00
  add hl, de                                      ; $7e15: $19
  ld a, [hl]                                      ; $7e16: $7e
  srl a                                           ; $7e17: $cb $3f
  srl a                                           ; $7e19: $cb $3f
  ld [hl+], a                                     ; $7e1b: $22
  ld a, [hl]                                      ; $7e1c: $7e
  srl a                                           ; $7e1d: $cb $3f
  srl a                                           ; $7e1f: $cb $3f
  ld [hl+], a                                     ; $7e21: $22
  ld a, [hl]                                      ; $7e22: $7e
  srl a                                           ; $7e23: $cb $3f
  srl a                                           ; $7e25: $cb $3f
  ld [hl+], a                                     ; $7e27: $22
  ld a, [hl]                                      ; $7e28: $7e
  srl a                                           ; $7e29: $cb $3f
  srl a                                           ; $7e2b: $cb $3f
  ld [hl], a                                      ; $7e2d: $77
  pop af                                          ; $7e2e: $f1
  ldh [rSVBK], a                                  ; $7e2f: $e0 $70
  ret                                             ; $7e31: $c9


  ldh a, [rSVBK]                                  ; $7e32: $f0 $70
  push af                                         ; $7e34: $f5
  ld a, $05                                       ; $7e35: $3e $05
  ldh [rSVBK], a                                  ; $7e37: $e0 $70
  push de                                         ; $7e39: $d5
  ld a, [$cc2a]                                   ; $7e3a: $fa $2a $cc
  dec a                                           ; $7e3d: $3d
  call Call_000_33f3                              ; $7e3e: $cd $f3 $33
  inc bc                                          ; $7e41: $03
  halt                                            ; $7e42: $76
  ld c, c                                         ; $7e43: $49
  ld de, $0005                                    ; $7e44: $11 $05 $00
  add hl, de                                      ; $7e47: $19
  pop de                                          ; $7e48: $d1
  ld a, [hl+]                                     ; $7e49: $2a
  or [hl]                                         ; $7e4a: $b6
  pop af                                          ; $7e4b: $f1
  ldh [rSVBK], a                                  ; $7e4c: $e0 $70
  ret z                                           ; $7e4e: $c8

  ld hl, $002d                                    ; $7e4f: $21 $2d $00
  call Call_000_3427                              ; $7e52: $cd $27 $34
  inc bc                                          ; $7e55: $03
  ld [hl], l                                      ; $7e56: $75
  ld b, [hl]                                      ; $7e57: $46
  ldh a, [rSVBK]                                  ; $7e58: $f0 $70
  push af                                         ; $7e5a: $f5
  ld a, $05                                       ; $7e5b: $3e $05
  ldh [rSVBK], a                                  ; $7e5d: $e0 $70
  ld a, $01                                       ; $7e5f: $3e $01
  call Call_000_33f3                              ; $7e61: $cd $f3 $33
  inc bc                                          ; $7e64: $03
  halt                                            ; $7e65: $76
  ld c, c                                         ; $7e66: $49
  ld de, $000a                                    ; $7e67: $11 $0a $00
  add hl, de                                      ; $7e6a: $19
  res 2, [hl]                                     ; $7e6b: $cb $96
  ld de, $000b                                    ; $7e6d: $11 $0b $00
  add hl, de                                      ; $7e70: $19
  ld de, $0000                                    ; $7e71: $11 $00 $00
  ld [hl], e                                      ; $7e74: $73
  inc hl                                          ; $7e75: $23
  ld [hl], d                                      ; $7e76: $72
  ldh [$ffbd], a                                  ; $7e77: $e0 $bd
  pop af                                          ; $7e79: $f1
  ldh [rSVBK], a                                  ; $7e7a: $e0 $70
  ldh a, [$ffbd]                                  ; $7e7c: $f0 $bd
  ret                                             ; $7e7e: $c9


  ldh a, [rSVBK]                                  ; $7e7f: $f0 $70
  push af                                         ; $7e81: $f5
  ld a, $05                                       ; $7e82: $3e $05
  ldh [rSVBK], a                                  ; $7e84: $e0 $70
  ld a, $01                                       ; $7e86: $3e $01
  call Call_000_33f3                              ; $7e88: $cd $f3 $33
  inc bc                                          ; $7e8b: $03
  halt                                            ; $7e8c: $76
  ld c, c                                         ; $7e8d: $49
  ld de, $000a                                    ; $7e8e: $11 $0a $00
  add hl, de                                      ; $7e91: $19
  res 2, [hl]                                     ; $7e92: $cb $96
  ld de, $000b                                    ; $7e94: $11 $0b $00
  add hl, de                                      ; $7e97: $19
  ld de, $ffff                                    ; $7e98: $11 $ff $ff
  ld [hl], e                                      ; $7e9b: $73
  inc hl                                          ; $7e9c: $23
  ld [hl], d                                      ; $7e9d: $72
  ldh [$ffbd], a                                  ; $7e9e: $e0 $bd
  pop af                                          ; $7ea0: $f1
  ldh [rSVBK], a                                  ; $7ea1: $e0 $70
  ldh a, [$ffbd]                                  ; $7ea3: $f0 $bd
  ret                                             ; $7ea5: $c9


  ldh a, [rSVBK]                                  ; $7ea6: $f0 $70
  push af                                         ; $7ea8: $f5
  ld a, $05                                       ; $7ea9: $3e $05
  ldh [rSVBK], a                                  ; $7eab: $e0 $70
  ld hl, $d000                                    ; $7ead: $21 $00 $d0
  call Call_005_7ec3                              ; $7eb0: $cd $c3 $7e
  ld hl, $d019                                    ; $7eb3: $21 $19 $d0
  call Call_005_7ec3                              ; $7eb6: $cd $c3 $7e
  ld hl, $d032                                    ; $7eb9: $21 $32 $d0
  call Call_005_7ec3                              ; $7ebc: $cd $c3 $7e
  pop af                                          ; $7ebf: $f1
  ldh [rSVBK], a                                  ; $7ec0: $e0 $70
  ret                                             ; $7ec2: $c9


Call_005_7ec3:
  ld a, [hl]                                      ; $7ec3: $7e
  or a                                            ; $7ec4: $b7
  jr z, jr_005_7edd                               ; $7ec5: $28 $16

  cp $01                                          ; $7ec7: $fe $01
  jr z, jr_005_7edd                               ; $7ec9: $28 $12

  cp $02                                          ; $7ecb: $fe $02
  jr z, jr_005_7f15                               ; $7ecd: $28 $46

  cp $03                                          ; $7ecf: $fe $03
  jr z, jr_005_7f15                               ; $7ed1: $28 $42

  cp $04                                          ; $7ed3: $fe $04
  jr z, jr_005_7f4d                               ; $7ed5: $28 $76

  cp $05                                          ; $7ed7: $fe $05
  jp z, Jump_005_7f85                             ; $7ed9: $ca $85 $7f

  ret                                             ; $7edc: $c9


jr_005_7edd:
  ld de, $0005                                    ; $7edd: $11 $05 $00
  add hl, de                                      ; $7ee0: $19
  ld de, $cdd6                                    ; $7ee1: $11 $d6 $cd
  call Call_000_0269                              ; $7ee4: $cd $69 $02
  ld hl, $cdd4                                    ; $7ee7: $21 $d4 $cd
  ld a, [hl+]                                     ; $7eea: $2a
  ld d, [hl]                                      ; $7eeb: $56
  ld e, a                                         ; $7eec: $5f
  ld hl, $cdd8                                    ; $7eed: $21 $d8 $cd
  ld a, [hl+]                                     ; $7ef0: $2a
  ld h, [hl]                                      ; $7ef1: $66
  ld l, a                                         ; $7ef2: $6f
  call CompareDEtoHL                                     ; $7ef3: $cd $10 $00
  jr nc, jr_005_7efe                              ; $7ef6: $30 $06

  ld hl, $cdd8                                    ; $7ef8: $21 $d8 $cd
  ld [hl], e                                      ; $7efb: $73
  inc hl                                          ; $7efc: $23
  ld [hl], d                                      ; $7efd: $72

jr_005_7efe:
  ld hl, $cdd2                                    ; $7efe: $21 $d2 $cd
  ld a, [hl+]                                     ; $7f01: $2a
  ld d, [hl]                                      ; $7f02: $56
  ld e, a                                         ; $7f03: $5f
  ld hl, $cdd6                                    ; $7f04: $21 $d6 $cd
  ld a, [hl+]                                     ; $7f07: $2a
  ld h, [hl]                                      ; $7f08: $66
  ld l, a                                         ; $7f09: $6f
  call CompareDEtoHL                                     ; $7f0a: $cd $10 $00
  ret nc                                          ; $7f0d: $d0

  ld hl, $cdd6                                    ; $7f0e: $21 $d6 $cd
  ld [hl], e                                      ; $7f11: $73
  inc hl                                          ; $7f12: $23
  ld [hl], d                                      ; $7f13: $72
  ret                                             ; $7f14: $c9


jr_005_7f15:
  ld de, $0005                                    ; $7f15: $11 $05 $00
  add hl, de                                      ; $7f18: $19
  ld de, $ce08                                    ; $7f19: $11 $08 $ce
  call Call_000_0269                              ; $7f1c: $cd $69 $02
  ld hl, $ce06                                    ; $7f1f: $21 $06 $ce
  ld a, [hl+]                                     ; $7f22: $2a
  ld d, [hl]                                      ; $7f23: $56
  ld e, a                                         ; $7f24: $5f
  ld hl, $ce0a                                    ; $7f25: $21 $0a $ce
  ld a, [hl+]                                     ; $7f28: $2a
  ld h, [hl]                                      ; $7f29: $66
  ld l, a                                         ; $7f2a: $6f
  call CompareDEtoHL                                     ; $7f2b: $cd $10 $00
  jr nc, jr_005_7f36                              ; $7f2e: $30 $06

  ld hl, $ce0a                                    ; $7f30: $21 $0a $ce
  ld [hl], e                                      ; $7f33: $73
  inc hl                                          ; $7f34: $23
  ld [hl], d                                      ; $7f35: $72

jr_005_7f36:
  ld hl, $ce04                                    ; $7f36: $21 $04 $ce
  ld a, [hl+]                                     ; $7f39: $2a
  ld d, [hl]                                      ; $7f3a: $56
  ld e, a                                         ; $7f3b: $5f
  ld hl, $ce08                                    ; $7f3c: $21 $08 $ce
  ld a, [hl+]                                     ; $7f3f: $2a
  ld h, [hl]                                      ; $7f40: $66
  ld l, a                                         ; $7f41: $6f
  call CompareDEtoHL                                     ; $7f42: $cd $10 $00
  ret nc                                          ; $7f45: $d0

  ld hl, $ce08                                    ; $7f46: $21 $08 $ce
  ld [hl], e                                      ; $7f49: $73
  inc hl                                          ; $7f4a: $23
  ld [hl], d                                      ; $7f4b: $72
  ret                                             ; $7f4c: $c9


jr_005_7f4d:
  ld de, $0005                                    ; $7f4d: $11 $05 $00
  add hl, de                                      ; $7f50: $19
  ld de, $cdef                                    ; $7f51: $11 $ef $cd
  call Call_000_0269                              ; $7f54: $cd $69 $02
  ld hl, $cded                                    ; $7f57: $21 $ed $cd
  ld a, [hl+]                                     ; $7f5a: $2a
  ld d, [hl]                                      ; $7f5b: $56
  ld e, a                                         ; $7f5c: $5f
  ld hl, $cdf1                                    ; $7f5d: $21 $f1 $cd
  ld a, [hl+]                                     ; $7f60: $2a
  ld h, [hl]                                      ; $7f61: $66
  ld l, a                                         ; $7f62: $6f
  call CompareDEtoHL                                     ; $7f63: $cd $10 $00
  jr nc, jr_005_7f6e                              ; $7f66: $30 $06

  ld hl, $cdf1                                    ; $7f68: $21 $f1 $cd
  ld [hl], e                                      ; $7f6b: $73
  inc hl                                          ; $7f6c: $23
  ld [hl], d                                      ; $7f6d: $72

jr_005_7f6e:
  ld hl, $cdeb                                    ; $7f6e: $21 $eb $cd
  ld a, [hl+]                                     ; $7f71: $2a
  ld d, [hl]                                      ; $7f72: $56
  ld e, a                                         ; $7f73: $5f
  ld hl, $cdef                                    ; $7f74: $21 $ef $cd
  ld a, [hl+]                                     ; $7f77: $2a
  ld h, [hl]                                      ; $7f78: $66
  ld l, a                                         ; $7f79: $6f
  call CompareDEtoHL                                     ; $7f7a: $cd $10 $00
  ret nc                                          ; $7f7d: $d0

  ld hl, $cdef                                    ; $7f7e: $21 $ef $cd
  ld [hl], e                                      ; $7f81: $73
  inc hl                                          ; $7f82: $23
  ld [hl], d                                      ; $7f83: $72
  ret                                             ; $7f84: $c9


Jump_005_7f85:
  ld de, $0005                                    ; $7f85: $11 $05 $00
  add hl, de                                      ; $7f88: $19
  ld de, $ce21                                    ; $7f89: $11 $21 $ce
  call Call_000_0269                              ; $7f8c: $cd $69 $02
  ld hl, $ce1f                                    ; $7f8f: $21 $1f $ce
  ld a, [hl+]                                     ; $7f92: $2a
  ld d, [hl]                                      ; $7f93: $56
  ld e, a                                         ; $7f94: $5f
  ld hl, $ce23                                    ; $7f95: $21 $23 $ce
  ld a, [hl+]                                     ; $7f98: $2a
  ld h, [hl]                                      ; $7f99: $66
  ld l, a                                         ; $7f9a: $6f
  call CompareDEtoHL                                     ; $7f9b: $cd $10 $00
  jr nc, jr_005_7fa6                              ; $7f9e: $30 $06

  ld hl, $ce23                                    ; $7fa0: $21 $23 $ce
  ld [hl], e                                      ; $7fa3: $73
  inc hl                                          ; $7fa4: $23
  ld [hl], d                                      ; $7fa5: $72

jr_005_7fa6:
  ld hl, $ce1d                                    ; $7fa6: $21 $1d $ce
  ld a, [hl+]                                     ; $7fa9: $2a
  ld d, [hl]                                      ; $7faa: $56
  ld e, a                                         ; $7fab: $5f
  ld hl, $ce21                                    ; $7fac: $21 $21 $ce
  ld a, [hl+]                                     ; $7faf: $2a
  ld h, [hl]                                      ; $7fb0: $66
  ld l, a                                         ; $7fb1: $6f
  call CompareDEtoHL                                     ; $7fb2: $cd $10 $00
  ret nc                                          ; $7fb5: $d0

  ld hl, $ce21                                    ; $7fb6: $21 $21 $ce
  ld [hl], e                                      ; $7fb9: $73
  inc hl                                          ; $7fba: $23
  ld [hl], d                                      ; $7fbb: $72
  ret                                             ; $7fbc: $c9


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
