; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

  db $06, $01, $2b, $80, $00, $00, $00, $99, $26, $00, $02, $01, $02, $21, $01, $22
  db $40, $a4, $00, $41, $21, $01, $2a, $40, $b7, $00, $c0, $21, $01, $28, $40, $b5
  db $00, $41, $85, $d0, $8b, $d0, $e3, $d0, $a5, $d0, $ae, $d0, $21, $01, $33, $40
  db $b9, $00, $41, $25, $d1, $45, $d1, $85, $d1, $a5, $d1, $e5, $d1, $05, $d2, $01
  db $80, $00, $00, $12, $14, $0b, $00, $04, $20, $01, $4f, $40, $19, $01, $40, $aa
  db $d0, $ca, $d0, $e3, $d0, $03, $d1, $23, $d1, $43, $d1, $63, $d1, $83, $d1, $a3
  db $d1, $c3, $d1, $e3, $d1, $e3, $d1, $e3, $d1, $e3, $d1, $e3, $d1, $e3, $d1, $e3
  db $d1, $20, $01, $78, $40, $19, $01, $40, $ea, $d0, $0a, $d1, $2a, $d1, $4a, $d1
  db $6a, $d1, $8a, $d1, $aa, $d1, $ca, $d1

  ld hl, $4001                                    ; $4088: $21 $01 $40
  jp Jump_000_2952                                ; $408b: $c3 $52 $29


  ld a, $0a                                       ; $408e: $3e $0a
  ldh [$ffc2], a                                  ; $4090: $e0 $c2
  ld hl, $5413                                    ; $4092: $21 $13 $54
  call Call_000_33f3                              ; $4095: $cd $f3 $33

  db $01, $33, $55

  call Call_000_33f3                              ; $409b: $cd $f3 $33

  db $03, $83, $44

  xor a                                           ; $40a1: $af
  ld [$cc49], a                                   ; $40a2: $ea $49 $cc
  ld hl, $7b8d                                    ; $40a5: $21 $8d $7b
  call Call_000_33f3                              ; $40a8: $cd $f3 $33

  db $03, $88, $7e

  call Call_000_33f3                              ; $40ae: $cd $f3 $33

  db $08, $3f, $74

  call Call_006_40e9                              ; $40b4: $cd $e9 $40
  call Call_006_4119                              ; $40b7: $cd $19 $41
  call Call_006_4178                              ; $40ba: $cd $78 $41
  ld a, $04                                       ; $40bd: $3e $04
  call Call_000_33f3                              ; $40bf: $cd $f3 $33

  db $03, $45, $7b

  ld a, $20                                       ; $40c5: $3e $20
  call Call_000_33f3                              ; $40c7: $cd $f3 $33

  db $03, $5e, $7b

  ld a, $80                                       ; $40cd: $3e $80
  call Call_000_33f3                              ; $40cf: $cd $f3 $33

  db $03, $5e, $7b

  ld a, $46                                       ; $40d5: $3e $46
  call Call_000_394b                              ; $40d7: $cd $4b $39
  ldh a, [rSVBK]                                  ; $40da: $f0 $70
  push af                                         ; $40dc: $f5
  ld a, $06                                       ; $40dd: $3e $06
  ldh [rSVBK], a                                  ; $40df: $e0 $70
  ld hl, $ddc2                                    ; $40e1: $21 $c2 $dd
  dec [hl]                                        ; $40e4: $35
  pop af                                          ; $40e5: $f1
  ldh [rSVBK], a                                  ; $40e6: $e0 $70
  ret                                             ; $40e8: $c9


Call_006_40e9:
  ld hl, $400d                                    ; $40e9: $21 $0d $40
  call Call_000_3013                              ; $40ec: $cd $13 $30
  ld a, $7c                                       ; $40ef: $3e $7c
  ld [$c159], a                                   ; $40f1: $ea $59 $c1
  ld a, $01                                       ; $40f4: $3e $01
  ld [$c1a2], a                                   ; $40f6: $ea $a2 $c1
  ld hl, $1b8e                                    ; $40f9: $21 $8e $1b
  call Call_000_33f3                              ; $40fc: $cd $f3 $33

  db $01, $3a, $65

  ld hl, $1b91                                    ; $4102: $21 $91 $1b
  call Call_000_33f3                              ; $4105: $cd $f3 $33

  db $01, $3a, $65

  ld a, [$cc3e]                                   ; $410b: $fa $3e $cc
  inc a                                           ; $410e: $3c
  ret z                                           ; $410f: $c8

  ld hl, $1b94                                    ; $4110: $21 $94 $1b
  call Call_000_3427                              ; $4113: $cd $27 $34

  db $01, $3a, $65

Call_006_4119:
  ld hl, $401b                                    ; $4119: $21 $1b $40
  call Call_000_3013                              ; $411c: $cd $13 $30
  ld a, $7c                                       ; $411f: $3e $7c
  ld [$c159], a                                   ; $4121: $ea $59 $c1
  ld a, $01                                       ; $4124: $3e $01
  ld [$c1a2], a                                   ; $4126: $ea $a2 $c1
  ld hl, $cc39                                    ; $4129: $21 $39 $cc
  ld a, [hl+]                                     ; $412c: $2a
  ld h, [hl]                                      ; $412d: $66
  ld l, a                                         ; $412e: $6f
  ld a, [$cc4a]                                   ; $412f: $fa $4a $cc
  bit 0, a                                        ; $4132: $cb $47
  jr z, jr_006_413f                               ; $4134: $28 $09

  add hl, hl                                      ; $4136: $29
  ld a, l                                         ; $4137: $7d
  ld [$cc39], a                                   ; $4138: $ea $39 $cc
  ld a, h                                         ; $413b: $7c
  ld [$cc3a], a                                   ; $413c: $ea $3a $cc

jr_006_413f:
  ld a, [$cc4a]                                   ; $413f: $fa $4a $cc
  bit 7, a                                        ; $4142: $cb $7f
  jr z, jr_006_414f                               ; $4144: $28 $09

  push hl                                         ; $4146: $e5
  ld de, $000a                                    ; $4147: $11 $0a $00
  call Call_000_322f                              ; $414a: $cd $2f $32
  pop de                                          ; $414d: $d1
  add hl, de                                      ; $414e: $19

jr_006_414f:
  call Call_000_33f3                              ; $414f: $cd $f3 $33

  db $01, $ee, $66

  ld hl, $4014                                    ; $4155: $21 $14 $40
  call Call_000_3013                              ; $4158: $cd $13 $30
  ld hl, $cc3b                                    ; $415b: $21 $3b $cc
  ld a, [hl+]                                     ; $415e: $2a
  ld h, [hl]                                      ; $415f: $66
  ld l, a                                         ; $4160: $6f
  ld a, [$cc4a]                                   ; $4161: $fa $4a $cc
  bit 1, a                                        ; $4164: $cb $4f
  jr z, jr_006_4172                               ; $4166: $28 $0a

  add hl, hl                                      ; $4168: $29
  add hl, hl                                      ; $4169: $29
  ld a, l                                         ; $416a: $7d
  ld [$cc3b], a                                   ; $416b: $ea $3b $cc
  ld a, h                                         ; $416e: $7c
  ld [$cc3c], a                                   ; $416f: $ea $3c $cc

jr_006_4172:
  call Call_000_3427                              ; $4172: $cd $27 $34

  db $01, $ee, $66

Call_006_4178:
  ld a, $02                                       ; $4178: $3e $02
  ld [$cbac], a                                   ; $417a: $ea $ac $cb
  ld a, $09                                       ; $417d: $3e $09
  ld [$cbad], a                                   ; $417f: $ea $ad $cb
  ld hl, $402c                                    ; $4182: $21 $2c $40
  call Call_000_3013                              ; $4185: $cd $13 $30
  ld a, $60                                       ; $4188: $3e $60
  ld [$c159], a                                   ; $418a: $ea $59 $c1
  ld a, $02                                       ; $418d: $3e $02
  ld [$c1a2], a                                   ; $418f: $ea $a2 $c1
  ld hl, $cc3d                                    ; $4192: $21 $3d $cc
  ld a, [hl+]                                     ; $4195: $2a
  or a                                            ; $4196: $b7
  ret z                                           ; $4197: $c8

  ld c, a                                         ; $4198: $4f
  ld b, $00                                       ; $4199: $06 $00

Jump_006_419b:
  push bc                                         ; $419b: $c5
  ld a, b                                         ; $419c: $78
  add $06                                         ; $419d: $c6 $06
  push hl                                         ; $419f: $e5
  call Call_000_33f3                              ; $41a0: $cd $f3 $33

  db $04, $d8, $78

  pop hl                                          ; $41a6: $e1
  push hl                                         ; $41a7: $e5
  ld a, [hl]                                      ; $41a8: $7e
  cp $99                                          ; $41a9: $fe $99
  jr nc, jr_006_41ce                              ; $41ab: $30 $21

  ld d, a                                         ; $41ad: $57
  ld a, b                                         ; $41ae: $78
  add $06                                         ; $41af: $c6 $06
  ld e, a                                         ; $41b1: $5f
  push de                                         ; $41b2: $d5
  call Call_000_33f3                              ; $41b3: $cd $f3 $33

  db $04, $7d, $78

  pop de                                          ; $41b9: $d1
  pop hl                                          ; $41ba: $e1
  ld a, [hl+]                                     ; $41bb: $2a
  push hl                                         ; $41bc: $e5
  ld hl, $15fa                                    ; $41bd: $21 $fa $15
  call Call_000_33f3                              ; $41c0: $cd $f3 $33

  db $01, $75, $66

  call Call_000_33f3                              ; $41c6: $cd $f3 $33

  db $01, $bd, $64

  jr jr_006_41f0                                  ; $41cc: $18 $22

jr_006_41ce:
  ld d, $56                                       ; $41ce: $16 $56
  ld a, b                                         ; $41d0: $78
  add $06                                         ; $41d1: $c6 $06
  ld e, a                                         ; $41d3: $5f
  push de                                         ; $41d4: $d5
  call Call_000_33f3                              ; $41d5: $cd $f3 $33

  db $04, $7d, $78

  pop de                                          ; $41db: $d1
  pop hl                                          ; $41dc: $e1
  inc hl                                          ; $41dd: $23
  ld a, $56                                       ; $41de: $3e $56
  push hl                                         ; $41e0: $e5
  ld hl, $15fa                                    ; $41e1: $21 $fa $15
  call Call_000_33f3                              ; $41e4: $cd $f3 $33

  db $01, $75, $66

  call Call_000_33f3                              ; $41ea: $cd $f3 $33

  db $01, $bd, $64

jr_006_41f0:
  pop hl                                          ; $41f0: $e1
  pop bc                                          ; $41f1: $c1
  inc b                                           ; $41f2: $04
  ld a, b                                         ; $41f3: $78
  cp c                                            ; $41f4: $b9
  jp nz, Jump_006_419b                            ; $41f5: $c2 $9b $41

  ret                                             ; $41f8: $c9


  ldh a, [$ffa6]                                  ; $41f9: $f0 $a6
  and $03                                         ; $41fb: $e6 $03
  ret z                                           ; $41fd: $c8

  ldh a, [$ffce]                                  ; $41fe: $f0 $ce
  rst $00                                         ; $4200: $c7

  db $18, $42, $70, $42, $94, $42, $d1, $42

  ld c, $43                                       ; $4209: $0e $43

  db $2a, $43, $4c, $43

  ld l, [hl]                                      ; $420f: $6e
  ld b, e                                         ; $4210: $43

  db $ad, $42

  ld c, $43                                       ; $4213: $0e $43
  jp Jump_006_4377                                ; $4215: $c3 $77 $43


  ld hl, $cc39                                    ; $4218: $21 $39 $cc
  ld a, [hl+]                                     ; $421b: $2a
  ld h, [hl]                                      ; $421c: $66
  ld l, a                                         ; $421d: $6f
  call Call_006_6ace                              ; $421e: $cd $ce $6a
  ld hl, $cc3b                                    ; $4221: $21 $3b $cc
  ld a, [hl+]                                     ; $4224: $2a
  ld h, [hl]                                      ; $4225: $66
  ld l, a                                         ; $4226: $6f
  call Call_006_6baa                              ; $4227: $cd $aa $6b
  ld b, $03                                       ; $422a: $06 $03
  ld hl, $cc3e                                    ; $422c: $21 $3e $cc

jr_006_422f:
  ld a, [hl+]                                     ; $422f: $2a
  cp $ff                                          ; $4230: $fe $ff
  jr z, jr_006_4252                               ; $4232: $28 $1e

  push bc                                         ; $4234: $c5
  push hl                                         ; $4235: $e5
  cp $fc                                          ; $4236: $fe $fc
  jr c, jr_006_4247                               ; $4238: $38 $0d

  sub $fc                                         ; $423a: $d6 $fc
  call Call_006_6634                              ; $423c: $cd $34 $66
  call Call_000_33f3                              ; $423f: $cd $f3 $33

  db $04, $f2, $46

  jr jr_006_424d                                  ; $4245: $18 $06

jr_006_4247:
  call Call_000_33f3                              ; $4247: $cd $f3 $33

  db $04, $2b, $6d

jr_006_424d:
  pop hl                                          ; $424d: $e1
  pop bc                                          ; $424e: $c1
  dec b                                           ; $424f: $05
  jr nz, jr_006_422f                              ; $4250: $20 $dd

jr_006_4252:
  ld a, [$ce37]                                   ; $4252: $fa $37 $ce
  ld [$cc41], a                                   ; $4255: $ea $41 $cc
  call Call_006_6d65                              ; $4258: $cd $65 $6d
  or a                                            ; $425b: $b7
  jr z, jr_006_4270                               ; $425c: $28 $12

  ld a, [$ce37]                                   ; $425e: $fa $37 $ce
  ld [$cc42], a                                   ; $4261: $ea $42 $cc
  ld a, $02                                       ; $4264: $3e $02
  ld [$cc43], a                                   ; $4266: $ea $43 $cc
  ld a, $01                                       ; $4269: $3e $01
  ldh [$ffce], a                                  ; $426b: $e0 $ce
  jp Jump_006_43d4                                ; $426d: $c3 $d4 $43


jr_006_4270:
  ld a, [$cebd]                                   ; $4270: $fa $bd $ce
  or a                                            ; $4273: $b7
  jr z, jr_006_42ad                               ; $4274: $28 $37

  ld a, [$ce6d]                                   ; $4276: $fa $6d $ce
  ld [$cc41], a                                   ; $4279: $ea $41 $cc
  call Call_006_6d85                              ; $427c: $cd $85 $6d
  or a                                            ; $427f: $b7
  jr z, jr_006_42ad                               ; $4280: $28 $2b

  ld a, [$ce6d]                                   ; $4282: $fa $6d $ce
  ld [$cc42], a                                   ; $4285: $ea $42 $cc
  ld a, $01                                       ; $4288: $3e $01
  ld [$cc43], a                                   ; $428a: $ea $43 $cc
  ld a, $02                                       ; $428d: $3e $02
  ldh [$ffce], a                                  ; $428f: $e0 $ce
  jp Jump_006_43d4                                ; $4291: $c3 $d4 $43


  ld a, [$cc42]                                   ; $4294: $fa $42 $cc
  ld h, a                                         ; $4297: $67
  ld l, $08                                       ; $4298: $2e $08
  call $00b0                                      ; $429a: $cd $b0 $00
  ld a, l                                         ; $429d: $7d
  or a                                            ; $429e: $b7
  jr nz, jr_006_42ad                              ; $429f: $20 $0c

  ld a, h                                         ; $42a1: $7c
  cp $05                                          ; $42a2: $fe $05
  jr nc, jr_006_42ad                              ; $42a4: $30 $07

  ld a, $08                                       ; $42a6: $3e $08
  ldh [$ffce], a                                  ; $42a8: $e0 $ce
  jp Jump_006_4411                                ; $42aa: $c3 $11 $44


jr_006_42ad:
  ld a, [$cebe]                                   ; $42ad: $fa $be $ce
  or a                                            ; $42b0: $b7
  jr z, jr_006_42ea                               ; $42b1: $28 $37

  ld a, [$ce7e]                                   ; $42b3: $fa $7e $ce
  ld [$cc41], a                                   ; $42b6: $ea $41 $cc
  call Call_006_6da5                              ; $42b9: $cd $a5 $6d
  or a                                            ; $42bc: $b7
  jr z, jr_006_42ea                               ; $42bd: $28 $2b

  ld a, [$ce7e]                                   ; $42bf: $fa $7e $ce
  ld [$cc42], a                                   ; $42c2: $ea $42 $cc
  ld a, $04                                       ; $42c5: $3e $04
  ld [$cc43], a                                   ; $42c7: $ea $43 $cc
  ld a, $03                                       ; $42ca: $3e $03
  ldh [$ffce], a                                  ; $42cc: $e0 $ce
  jp Jump_006_43d4                                ; $42ce: $c3 $d4 $43


  ld a, [$cc42]                                   ; $42d1: $fa $42 $cc
  ld h, a                                         ; $42d4: $67
  ld l, $08                                       ; $42d5: $2e $08
  call $00b0                                      ; $42d7: $cd $b0 $00
  ld a, l                                         ; $42da: $7d
  or a                                            ; $42db: $b7
  jr nz, jr_006_42ea                              ; $42dc: $20 $0c

  ld a, h                                         ; $42de: $7c
  cp $04                                          ; $42df: $fe $04
  jr nc, jr_006_42ea                              ; $42e1: $30 $07

  ld a, $08                                       ; $42e3: $3e $08
  ldh [$ffce], a                                  ; $42e5: $e0 $ce
  jp Jump_006_443a                                ; $42e7: $c3 $3a $44


jr_006_42ea:
  ld a, [$cebf]                                   ; $42ea: $fa $bf $ce
  or a                                            ; $42ed: $b7
  jr z, jr_006_430e                               ; $42ee: $28 $1e

  ld a, [$ce8f]                                   ; $42f0: $fa $8f $ce
  ld [$cc41], a                                   ; $42f3: $ea $41 $cc
  call Call_006_6dc5                              ; $42f6: $cd $c5 $6d
  or a                                            ; $42f9: $b7
  jr z, jr_006_430e                               ; $42fa: $28 $12

  ld a, [$ce8f]                                   ; $42fc: $fa $8f $ce
  ld [$cc42], a                                   ; $42ff: $ea $42 $cc
  ld a, $08                                       ; $4302: $3e $08
  ld [$cc43], a                                   ; $4304: $ea $43 $cc
  ld a, $04                                       ; $4307: $3e $04
  ldh [$ffce], a                                  ; $4309: $e0 $ce
  jp Jump_006_43d4                                ; $430b: $c3 $d4 $43


jr_006_430e:
  xor a                                           ; $430e: $af
  ld [$cc44], a                                   ; $430f: $ea $44 $cc
  ld a, $02                                       ; $4312: $3e $02
  ld [$cc43], a                                   ; $4314: $ea $43 $cc
  ld hl, $ce3f                                    ; $4317: $21 $3f $ce
  call Call_006_6cd8                              ; $431a: $cd $d8 $6c
  or a                                            ; $431d: $b7
  jr z, jr_006_4330                               ; $431e: $28 $10

  ld [$cc44], a                                   ; $4320: $ea $44 $cc
  ld a, $05                                       ; $4323: $3e $05
  ldh [$ffce], a                                  ; $4325: $e0 $ce
  jp Jump_006_438b                                ; $4327: $c3 $8b $43


  ld a, [$cc44]                                   ; $432a: $fa $44 $cc
  or a                                            ; $432d: $b7
  jr nz, jr_006_438b                              ; $432e: $20 $5b

jr_006_4330:
  xor a                                           ; $4330: $af
  ld [$cc44], a                                   ; $4331: $ea $44 $cc
  ld a, $01                                       ; $4334: $3e $01
  ld [$cc43], a                                   ; $4336: $ea $43 $cc
  ld hl, $ce71                                    ; $4339: $21 $71 $ce
  call Call_006_6cd8                              ; $433c: $cd $d8 $6c
  or a                                            ; $433f: $b7
  jr z, jr_006_4352                               ; $4340: $28 $10

  ld [$cc44], a                                   ; $4342: $ea $44 $cc
  ld a, $06                                       ; $4345: $3e $06
  ldh [$ffce], a                                  ; $4347: $e0 $ce
  jp Jump_006_438b                                ; $4349: $c3 $8b $43


  ld a, [$cc44]                                   ; $434c: $fa $44 $cc
  or a                                            ; $434f: $b7
  jr nz, jr_006_438b                              ; $4350: $20 $39

jr_006_4352:
  xor a                                           ; $4352: $af
  ld [$cc44], a                                   ; $4353: $ea $44 $cc
  ld a, $04                                       ; $4356: $3e $04
  ld [$cc43], a                                   ; $4358: $ea $43 $cc
  ld hl, $ce82                                    ; $435b: $21 $82 $ce
  call Call_006_6cd8                              ; $435e: $cd $d8 $6c
  or a                                            ; $4361: $b7
  jr z, jr_006_4377                               ; $4362: $28 $13

  ld [$cc44], a                                   ; $4364: $ea $44 $cc
  ld a, $07                                       ; $4367: $3e $07
  ldh [$ffce], a                                  ; $4369: $e0 $ce
  jp Jump_006_438b                                ; $436b: $c3 $8b $43


  ld a, [$cc44]                                   ; $436e: $fa $44 $cc
  or a                                            ; $4371: $b7
  jr nz, jr_006_438b                              ; $4372: $20 $17

  jp Jump_006_4377                                ; $4374: $c3 $77 $43


Jump_006_4377:
jr_006_4377:
  call Call_000_33f3                              ; $4377: $cd $f3 $33

  db $03, $76, $7b

  xor a                                           ; $437d: $af
  ld [$cc4a], a                                   ; $437e: $ea $4a $cc
  ld a, $02                                       ; $4381: $3e $02
  ld [$c0a0], a                                   ; $4383: $ea $a0 $c0
  ld a, $0b                                       ; $4386: $3e $0b
  jp Jump_000_261e                                ; $4388: $c3 $1e $26


Jump_006_438b:
jr_006_438b:
  call Call_006_4486                              ; $438b: $cd $86 $44
  ld hl, $4071                                    ; $438e: $21 $71 $40
  call Call_000_3013                              ; $4391: $cd $13 $30
  ld hl, $1f8a                                    ; $4394: $21 $8a $1f
  call Call_000_33f3                              ; $4397: $cd $f3 $33

  db $01, $a2, $66

  call Call_000_33f3                              ; $439d: $cd $f3 $33

  db $01, $bd, $64

  call Call_000_33f3                              ; $43a3: $cd $f3 $33

  db $01, $bd, $64

  ld a, [$cc44]                                   ; $43a9: $fa $44 $cc
  ld c, a                                         ; $43ac: $4f
  ld b, $00                                       ; $43ad: $06 $00

jr_006_43af:
  srl c                                           ; $43af: $cb $39
  jr nc, jr_006_43cd                              ; $43b1: $30 $1a

  ld a, b                                         ; $43b3: $78
  push bc                                         ; $43b4: $c5
  ld hl, $24dc                                    ; $43b5: $21 $dc $24
  call Call_000_3173                              ; $43b8: $cd $73 $31
  call Call_000_33f3                              ; $43bb: $cd $f3 $33

  db $01, $28, $66

  pop bc                                          ; $43c1: $c1
  inc b                                           ; $43c2: $04
  ld a, c                                         ; $43c3: $79

jr_006_43c4:
  sla a                                           ; $43c4: $cb $27
  dec b                                           ; $43c6: $05
  jr nz, jr_006_43c4                              ; $43c7: $20 $fb

  ld [$cc44], a                                   ; $43c9: $ea $44 $cc
  ret                                             ; $43cc: $c9


jr_006_43cd:
  inc b                                           ; $43cd: $04
  ld a, b                                         ; $43ce: $78
  cp $07                                          ; $43cf: $fe $07
  jr nz, jr_006_43af                              ; $43d1: $20 $dc

  ret                                             ; $43d3: $c9


Jump_006_43d4:
  call Call_006_4486                              ; $43d4: $cd $86 $44
  rst $18                                         ; $43d7: $df
  ld hl, $4048                                    ; $43d8: $21 $48 $40
  call Call_000_3013                              ; $43db: $cd $13 $30
  ld hl, $1f87                                    ; $43de: $21 $87 $1f
  call Call_000_33f3                              ; $43e1: $cd $f3 $33

  db $01, $a2, $66

  call Call_000_33f3                              ; $43e7: $cd $f3 $33

  db $01, $bd, $64

  ld a, $41                                       ; $43ed: $3e $41
  call Call_000_33f3                              ; $43ef: $cd $f3 $33

  db $01, $b5, $64

  xor a                                           ; $43f5: $af
  ld b, a                                         ; $43f6: $47
  ld hl, $1f8d                                    ; $43f7: $21 $8d $1f

jr_006_43fa:
  push hl                                         ; $43fa: $e5
  call Call_006_6e23                              ; $43fb: $cd $23 $6e
  call Call_000_33f3                              ; $43fe: $cd $f3 $33

  db $01, $5a, $65

  pop hl                                          ; $4404: $e1
  ld de, $0003                                    ; $4405: $11 $03 $00
  add hl, de                                      ; $4408: $19
  inc b                                           ; $4409: $04
  ld a, b                                         ; $440a: $78
  cp $07                                          ; $440b: $fe $07
  jr nz, jr_006_43fa                              ; $440d: $20 $eb

  rst $20                                         ; $440f: $e7
  ret                                             ; $4410: $c9


Jump_006_4411:
  push hl                                         ; $4411: $e5
  call Call_006_4486                              ; $4412: $cd $86 $44
  ld hl, $4071                                    ; $4415: $21 $71 $40
  call Call_000_3013                              ; $4418: $cd $13 $30
  ld hl, $2c74                                    ; $441b: $21 $74 $2c
  call Call_000_33f3                              ; $441e: $cd $f3 $33

  db $01, $28, $66

  call Call_000_33f3                              ; $4424: $cd $f3 $33

  db $01, $bd, $64

  call Call_000_33f3                              ; $442a: $cd $f3 $33

  db $01, $bd, $64

  pop af                                          ; $4430: $f1
  ld hl, $1fb4                                    ; $4431: $21 $b4 $1f
  call Call_000_3427                              ; $4434: $cd $27 $34

  db $01, $75, $66

Jump_006_443a:
  push hl                                         ; $443a: $e5
  call Call_006_4486                              ; $443b: $cd $86 $44
  ld hl, $4071                                    ; $443e: $21 $71 $40
  call Call_000_3013                              ; $4441: $cd $13 $30
  ld hl, $2c71                                    ; $4444: $21 $71 $2c
  call Call_000_33f3                              ; $4447: $cd $f3 $33
  ld bc, $6628                                    ; $444a: $01 $28 $66
  call Call_000_33f3                              ; $444d: $cd $f3 $33
  ld bc, $64bd                                    ; $4450: $01 $bd $64
  call Call_000_33f3                              ; $4453: $cd $f3 $33
  ld bc, $64bd                                    ; $4456: $01 $bd $64
  pop af                                          ; $4459: $f1
  ld hl, $1fa8                                    ; $445a: $21 $a8 $1f
  call Call_000_3427                              ; $445d: $cd $27 $34
  ld bc, $6675                                    ; $4460: $01 $75 $66

Call_006_4463:
  ld a, [$cc43]                                   ; $4463: $fa $43 $cc
  cp $02                                          ; $4466: $fe $02
  jr z, jr_006_4476                               ; $4468: $28 $0c

  cp $01                                          ; $446a: $fe $01
  jr z, jr_006_447a                               ; $446c: $28 $0c

  cp $04                                          ; $446e: $fe $04
  jr z, jr_006_447e                               ; $4470: $28 $0c

  cp $08                                          ; $4472: $fe $08
  jr z, jr_006_4482                               ; $4474: $28 $0c

jr_006_4476:
  ld hl, $0061                                    ; $4476: $21 $61 $00
  ret                                             ; $4479: $c9


jr_006_447a:
  ld hl, $0064                                    ; $447a: $21 $64 $00
  ret                                             ; $447d: $c9


jr_006_447e:
  ld hl, $0067                                    ; $447e: $21 $67 $00
  ret                                             ; $4481: $c9


jr_006_4482:
  ld hl, $006a                                    ; $4482: $21 $6a $00
  ret                                             ; $4485: $c9


Call_006_4486:
jr_006_4486:
  ld a, $83                                       ; $4486: $3e $83
  ld e, $ff                                       ; $4488: $1e $ff
  call Call_000_0a46                              ; $448a: $cd $46 $0a
  jr nz, jr_006_4496                              ; $448d: $20 $07

  ld b, h                                         ; $448f: $44
  ld c, l                                         ; $4490: $4d
  call Call_000_0dbb                              ; $4491: $cd $bb $0d
  jr jr_006_4486                                  ; $4494: $18 $f0

jr_006_4496:
  ld a, $21                                       ; $4496: $3e $21
  call Call_000_392b                              ; $4498: $cd $2b $39
  rst $18                                         ; $449b: $df
  ld c, $8a                                       ; $449c: $0e $8a
  ld de, $090d                                    ; $449e: $11 $0d $09
  ld hl, $00a3                                    ; $44a1: $21 $a3 $00
  call Call_000_149f                              ; $44a4: $cd $9f $14
  rst $20                                         ; $44a7: $e7
  call Call_000_3363                              ; $44a8: $cd $63 $33
  ld de, $403f                                    ; $44ab: $11 $3f $40
  call Call_000_1411                              ; $44ae: $cd $11 $14
  ld a, $68                                       ; $44b1: $3e $68
  ld [$c159], a                                   ; $44b3: $ea $59 $c1
  ld a, $02                                       ; $44b6: $3e $02
  ld [$c1a2], a                                   ; $44b8: $ea $a2 $c1
  call Call_006_4463                              ; $44bb: $cd $63 $44
  call Call_000_3427                              ; $44be: $cd $27 $34

  db $01, $44, $67

  ld bc, $8005                                    ; $44c4: $01 $05 $80
  nop                                             ; $44c7: $00
  nop                                             ; $44c8: $00
  nop                                             ; $44c9: $00
  sbc c                                           ; $44ca: $99
  ld h, $00                                       ; $44cb: $26 $00
  ld [bc], a                                      ; $44cd: $02
  nop                                             ; $44ce: $00
  ld [bc], a                                      ; $44cf: $02
  ldh [$ffd5], a                                  ; $44d0: $e0 $d5
  jr nz, @-$28                                    ; $44d2: $20 $d6

  ld h, b                                         ; $44d4: $60
  sub $a0                                         ; $44d5: $d6 $a0
  sub $e0                                         ; $44d7: $d6 $e0
  sub $ea                                         ; $44d9: $d6 $ea
  push de                                         ; $44db: $d5
  ld a, [hl+]                                     ; $44dc: $2a
  sub $6a                                         ; $44dd: $d6 $6a
  sub $aa                                         ; $44df: $d6 $aa
  sub $ea                                         ; $44e1: $d6 $ea
  sub $1d                                         ; $44e3: $d6 $1d
  rra                                             ; $44e5: $1f
  ld h, $2f                                       ; $44e6: $26 $2f
  scf                                             ; $44e8: $37
  ccf                                             ; $44e9: $3f
  ld b, a                                         ; $44ea: $47
  ld c, a                                         ; $44eb: $4f
  ld d, a                                         ; $44ec: $57
  ld e, a                                         ; $44ed: $5f
  xor a                                           ; $44ee: $af
  ldh [$ffcf], a                                  ; $44ef: $e0 $cf
  ld hl, $44c4                                    ; $44f1: $21 $c4 $44
  jp Jump_000_2952                                ; $44f4: $c3 $52 $29


  ld hl, $7b8d                                    ; $44f7: $21 $8d $7b
  call Call_000_33f3                              ; $44fa: $cd $f3 $33
  inc bc                                          ; $44fd: $03
  adc b                                           ; $44fe: $88
  ld a, [hl]                                      ; $44ff: $7e
  call Call_000_33eb                              ; $4500: $cd $eb $33
  ldh [$ffd3], a                                  ; $4503: $e0 $d3
  ldh [$ffcf], a                                  ; $4505: $e0 $cf
  ld hl, $45e4                                    ; $4507: $21 $e4 $45
  call Call_006_50f0                              ; $450a: $cd $f0 $50
  ld c, $01                                       ; $450d: $0e $01
  call Call_006_459c                              ; $450f: $cd $9c $45

jr_006_4512:
  ld a, $08                                       ; $4512: $3e $08
  ldh [$fff7], a                                  ; $4514: $e0 $f7
  ld a, $05                                       ; $4516: $3e $05
  ldh [$fff8], a                                  ; $4518: $e0 $f8
  ldh a, [$ffcf]                                  ; $451a: $f0 $cf
  and $03                                         ; $451c: $e6 $03
  add a                                           ; $451e: $87
  add a                                           ; $451f: $87
  add a                                           ; $4520: $87
  ldh [$fff5], a                                  ; $4521: $e0 $f5
  ldh a, [$ffcf]                                  ; $4523: $f0 $cf
  and $fc                                         ; $4525: $e6 $fc
  ld c, a                                         ; $4527: $4f
  rra                                             ; $4528: $1f
  rra                                             ; $4529: $1f
  add c                                           ; $452a: $81
  ldh [$fff6], a                                  ; $452b: $e0 $f6
  ld a, $06                                       ; $452d: $3e $06
  ld bc, $0000                                    ; $452f: $01 $00 $00
  ld de, $d026                                    ; $4532: $11 $26 $d0
  ld hl, $56d8                                    ; $4535: $21 $d8 $56
  call Call_000_3427                              ; $4538: $cd $27 $34
  nop                                             ; $453b: $00
  ld a, h                                         ; $453c: $7c
  inc sp                                          ; $453d: $33
  ldh a, [$ffa6]                                  ; $453e: $f0 $a6
  bit 0, a                                        ; $4540: $cb $47
  jr nz, jr_006_455f                              ; $4542: $20 $1b

  bit 1, a                                        ; $4544: $cb $4f
  jr nz, jr_006_457b                              ; $4546: $20 $33

  call Call_006_5117                              ; $4548: $cd $17 $51
  ld hl, $ffcf                                    ; $454b: $21 $cf $ff
  cp [hl]                                         ; $454e: $be
  ret z                                           ; $454f: $c8

  push af                                         ; $4550: $f5
  ld c, $00                                       ; $4551: $0e $00
  call Call_006_459c                              ; $4553: $cd $9c $45
  pop af                                          ; $4556: $f1
  ld [hl], a                                      ; $4557: $77
  ld c, $01                                       ; $4558: $0e $01
  call Call_006_459c                              ; $455a: $cd $9c $45
  jr jr_006_4512                                  ; $455d: $18 $b3

jr_006_455f:
  ldh a, [$ffd3]                                  ; $455f: $f0 $d3
  call Call_006_458b                              ; $4561: $cd $8b $45
  call Call_000_33f3                              ; $4564: $cd $f3 $33
  inc b                                           ; $4567: $04
  ld l, b                                         ; $4568: $68
  ld d, a                                         ; $4569: $57
  ld a, $00                                       ; $456a: $3e $00
  call Call_000_392b                              ; $456c: $cd $2b $39
  ldh a, [$ffca]                                  ; $456f: $f0 $ca
  cp $03                                          ; $4571: $fe $03
  jp z, Jump_000_261e                             ; $4573: $ca $1e $26

  ld a, $00                                       ; $4576: $3e $00
  jp Jump_000_261e                                ; $4578: $c3 $1e $26


jr_006_457b:
  ld a, $03                                       ; $457b: $3e $03
  call Call_000_392b                              ; $457d: $cd $2b $39
  ld a, [$cdcd]                                   ; $4580: $fa $cd $cd
  cp $ff                                          ; $4583: $fe $ff
  ret z                                           ; $4585: $c8

  ld a, $03                                       ; $4586: $3e $03
  jp Jump_000_261e                                ; $4588: $c3 $1e $26


Call_006_458b:
  ld [$cdcd], a                                   ; $458b: $ea $cd $cd
  ld hl, $44e4                                    ; $458e: $21 $e4 $44
  rst $08                                         ; $4591: $cf
  ld a, [hl]                                      ; $4592: $7e
  ld [$cdcc], a                                   ; $4593: $ea $cc $cd
  call Call_000_3427                              ; $4596: $cd $27 $34
  ld bc, $5fdb                                    ; $4599: $01 $db $5f

Call_006_459c:
  push bc                                         ; $459c: $c5
  push hl                                         ; $459d: $e5
  ldh a, [$ffcf]                                  ; $459e: $f0 $cf
  ld hl, $44d0                                    ; $45a0: $21 $d0 $44
  call ResolveIndexedPointer16                              ; $45a3: $cd $8b $31
  ld d, $02                                       ; $45a6: $16 $02
  ld e, $0a                                       ; $45a8: $1e $0a
  ld b, $07                                       ; $45aa: $06 $07
  call Call_000_1463                              ; $45ac: $cd $63 $14
  pop hl                                          ; $45af: $e1
  pop bc                                          ; $45b0: $c1
  ret                                             ; $45b1: $c9


  db $03, $88, $28, $02, $01

  inc bc                                          ; $45b7: $03
  inc bc                                          ; $45b8: $03
  nop                                             ; $45b9: $00

  db $00, $88, $40, $00

  ld [bc], a                                      ; $45be: $02

  db $04

  inc b                                           ; $45c0: $04
  nop                                             ; $45c1: $00

  db $01, $88, $78

  ld bc, $0500                                    ; $45c5: $01 $00 $05
  dec b                                           ; $45c8: $05
  nop                                             ; $45c9: $00

  db $02, $50, $30, $05, $04

  nop                                             ; $45cf: $00
  nop                                             ; $45d0: $00
  nop                                             ; $45d1: $00

  db $03, $50, $58, $03, $05

  ld bc, $0001                                    ; $45d7: $01 $01 $00

  db $04, $50, $78, $04

  inc bc                                          ; $45de: $03
  ld [bc], a                                      ; $45df: $02

  db $02

  nop                                             ; $45e1: $00

  db $05

  nop                                             ; $45e3: $00
  nop                                             ; $45e4: $00
  nop                                             ; $45e5: $00
  inc b                                           ; $45e6: $04
  ld bc, $0505                                    ; $45e7: $01 $05 $05
  rst $38                                         ; $45ea: $ff
  nop                                             ; $45eb: $00
  nop                                             ; $45ec: $00
  nop                                             ; $45ed: $00
  nop                                             ; $45ee: $00
  ld [bc], a                                      ; $45ef: $02
  ld b, $06                                       ; $45f0: $06 $06
  rst $38                                         ; $45f2: $ff
  ld bc, $0000                                    ; $45f3: $01 $00 $00
  ld bc, $0703                                    ; $45f6: $01 $03 $07
  rlca                                            ; $45f9: $07
  rst $38                                         ; $45fa: $ff
  ld [bc], a                                      ; $45fb: $02
  nop                                             ; $45fc: $00
  nop                                             ; $45fd: $00
  ld [bc], a                                      ; $45fe: $02
  inc b                                           ; $45ff: $04
  ld [$ff08], sp                                  ; $4600: $08 $08 $ff
  inc bc                                          ; $4603: $03
  nop                                             ; $4604: $00
  nop                                             ; $4605: $00
  inc bc                                          ; $4606: $03
  nop                                             ; $4607: $00
  add hl, bc                                      ; $4608: $09
  add hl, bc                                      ; $4609: $09
  rst $38                                         ; $460a: $ff
  inc b                                           ; $460b: $04
  nop                                             ; $460c: $00
  nop                                             ; $460d: $00
  add hl, bc                                      ; $460e: $09
  ld b, $00                                       ; $460f: $06 $00
  nop                                             ; $4611: $00
  rst $38                                         ; $4612: $ff
  dec b                                           ; $4613: $05
  nop                                             ; $4614: $00
  nop                                             ; $4615: $00
  dec b                                           ; $4616: $05
  rlca                                            ; $4617: $07
  ld bc, $ff01                                    ; $4618: $01 $01 $ff
  ld b, $00                                       ; $461b: $06 $00
  nop                                             ; $461d: $00
  ld b, $08                                       ; $461e: $06 $08
  ld [bc], a                                      ; $4620: $02
  ld [bc], a                                      ; $4621: $02
  rst $38                                         ; $4622: $ff
  rlca                                            ; $4623: $07
  nop                                             ; $4624: $00
  nop                                             ; $4625: $00
  rlca                                            ; $4626: $07
  add hl, bc                                      ; $4627: $09
  inc bc                                          ; $4628: $03
  inc bc                                          ; $4629: $03
  rst $38                                         ; $462a: $ff
  ld [$0000], sp                                  ; $462b: $08 $00 $00
  ld [$0405], sp                                  ; $462e: $08 $05 $04
  inc b                                           ; $4631: $04
  rst $38                                         ; $4632: $ff
  add hl, bc                                      ; $4633: $09
  nop                                             ; $4634: $00
  jr z, @+$0a                                     ; $4635: $28 $08

  dec b                                           ; $4637: $05
  ld [bc], a                                      ; $4638: $02
  ld bc, $0001                                    ; $4639: $01 $01 $00
  nop                                             ; $463c: $00
  ld e, b                                         ; $463d: $58
  ld [$0407], sp                                  ; $463e: $08 $07 $04
  nop                                             ; $4641: $00
  nop                                             ; $4642: $00
  nop                                             ; $4643: $00
  ld bc, $3018                                    ; $4644: $01 $18 $30
  nop                                             ; $4647: $00
  dec b                                           ; $4648: $05
  inc b                                           ; $4649: $04
  inc bc                                          ; $464a: $03
  nop                                             ; $464b: $00
  ld [bc], a                                      ; $464c: $02
  ld b, b                                         ; $464d: $40
  jr nc, @+$03                                    ; $464e: $30 $01

  ld b, $02                                       ; $4650: $06 $02
  inc b                                           ; $4652: $04
  nop                                             ; $4653: $00
  inc bc                                          ; $4654: $03
  ld l, b                                         ; $4655: $68
  jr nc, jr_006_4659                              ; $4656: $30 $01

  rlca                                            ; $4658: $07

jr_006_4659:
  inc bc                                          ; $4659: $03
  ld [bc], a                                      ; $465a: $02
  nop                                             ; $465b: $00
  inc b                                           ; $465c: $04
  jr jr_006_46b7                                  ; $465d: $18 $58

  ld [bc], a                                      ; $465f: $02
  nop                                             ; $4660: $00
  rlca                                            ; $4661: $07
  ld b, $00                                       ; $4662: $06 $00
  dec b                                           ; $4664: $05
  ld b, b                                         ; $4665: $40
  ld e, b                                         ; $4666: $58
  inc bc                                          ; $4667: $03
  nop                                             ; $4668: $00
  dec b                                           ; $4669: $05
  rlca                                            ; $466a: $07
  nop                                             ; $466b: $00
  ld b, $68                                       ; $466c: $06 $68
  ld e, b                                         ; $466e: $58
  inc b                                           ; $466f: $04
  ld bc, $0506                                    ; $4670: $01 $06 $05
  nop                                             ; $4673: $00
  rlca                                            ; $4674: $07
  nop                                             ; $4675: $00
  nop                                             ; $4676: $00
  nop                                             ; $4677: $00
  inc bc                                          ; $4678: $03
  ld bc, $0000                                    ; $4679: $01 $00 $00
  rst $38                                         ; $467c: $ff
  nop                                             ; $467d: $00
  nop                                             ; $467e: $00
  nop                                             ; $467f: $00
  nop                                             ; $4680: $00
  ld [bc], a                                      ; $4681: $02
  ld bc, $ff01                                    ; $4682: $01 $01 $ff
  ld bc, $0000                                    ; $4685: $01 $00 $00
  ld bc, $0203                                    ; $4688: $01 $03 $02
  ld [bc], a                                      ; $468b: $02
  rst $38                                         ; $468c: $ff
  ld [bc], a                                      ; $468d: $02
  nop                                             ; $468e: $00
  nop                                             ; $468f: $00
  ld [bc], a                                      ; $4690: $02
  nop                                             ; $4691: $00
  inc bc                                          ; $4692: $03
  inc bc                                          ; $4693: $03
  rst $38                                         ; $4694: $ff
  inc bc                                          ; $4695: $03
  nop                                             ; $4696: $00
  nop                                             ; $4697: $00
  nop                                             ; $4698: $00
  inc bc                                          ; $4699: $03
  ld bc, $0000                                    ; $469a: $01 $00 $00
  rst $38                                         ; $469d: $ff
  nop                                             ; $469e: $00
  nop                                             ; $469f: $00
  nop                                             ; $46a0: $00
  nop                                             ; $46a1: $00
  ld [bc], a                                      ; $46a2: $02
  ld bc, $ff01                                    ; $46a3: $01 $01 $ff
  ld bc, $0000                                    ; $46a6: $01 $00 $00
  ld bc, $0203                                    ; $46a9: $01 $03 $02
  ld [bc], a                                      ; $46ac: $02
  rst $38                                         ; $46ad: $ff
  ld [bc], a                                      ; $46ae: $02
  nop                                             ; $46af: $00
  nop                                             ; $46b0: $00
  ld [bc], a                                      ; $46b1: $02
  nop                                             ; $46b2: $00
  inc bc                                          ; $46b3: $03
  inc bc                                          ; $46b4: $03
  rst $38                                         ; $46b5: $ff
  inc bc                                          ; $46b6: $03

jr_006_46b7:
  nop                                             ; $46b7: $00
  nop                                             ; $46b8: $00
  nop                                             ; $46b9: $00

  db $00, $00

  db $01                                          ; $46bc: $01

  db $01

  rst $38                                         ; $46be: $ff

  db $00

  nop                                             ; $46c0: $00
  nop                                             ; $46c1: $00

  db $01

  db $01                                          ; $46c3: $01

  db $00, $00

  rst $38                                         ; $46c6: $ff

  db $01, $03, $0b, $4c

  nop                                             ; $46cb: $00
  ld bc, $0000                                    ; $46cc: $01 $00 $00
  nop                                             ; $46cf: $00

  db $00

  dec bc                                          ; $46d1: $0b
  ld d, h                                         ; $46d2: $54
  nop                                             ; $46d3: $00
  ld bc, $0101                                    ; $46d4: $01 $01 $01
  nop                                             ; $46d7: $00
  db $01                                          ; $46d8: $01

  db $00, $03, $24, $04, $01

  nop                                             ; $46de: $00
  nop                                             ; $46df: $00
  nop                                             ; $46e0: $00

  db $00, $03, $2c, $00, $02

  db $01                                          ; $46e6: $01
  db $01                                          ; $46e7: $01

  db $00, $01, $03, $34, $01, $03

  ld [bc], a                                      ; $46ee: $02
  ld [bc], a                                      ; $46ef: $02
  nop                                             ; $46f0: $00

  db $02, $03, $3c, $02, $04

  inc bc                                          ; $46f6: $03
  inc bc                                          ; $46f7: $03
  nop                                             ; $46f8: $00

  db $03, $03, $44

  inc bc                                          ; $46fc: $03
  nop                                             ; $46fd: $00
  inc b                                           ; $46fe: $04
  inc b                                           ; $46ff: $04
  nop                                             ; $4700: $00

  db $04, $03, $0b, $2c, $02, $01, $00, $00

  nop                                             ; $4709: $00

  db $00

  dec bc                                          ; $470b: $0b
  inc [hl]                                        ; $470c: $34

  db $00, $02

  db $01                                          ; $470f: $01

  db $01

  nop                                             ; $4711: $00

  db $01

  dec bc                                          ; $4713: $0b
  inc a                                           ; $4714: $3c

  db $01, $00, $02

  ld [bc], a                                      ; $4718: $02
  nop                                             ; $4719: $00

  db $02, $00, $03, $1c, $06, $01, $00, $00, $00, $00, $03, $24, $00, $02, $01, $01

  nop                                             ; $472a: $00

  db $01, $03, $2c, $01, $03

  ld [bc], a                                      ; $4730: $02

  db $02

  nop                                             ; $4732: $00

  db $02, $03, $34, $02, $04

  inc bc                                          ; $4738: $03

  db $03

  nop                                             ; $473a: $00

  db $03, $03, $3c, $03

  dec b                                           ; $473f: $05
  inc b                                           ; $4740: $04
  inc b                                           ; $4741: $04
  nop                                             ; $4742: $00

  db $04, $03, $44, $04, $06

  dec b                                           ; $4748: $05
  dec b                                           ; $4749: $05
  nop                                             ; $474a: $00

  db $05

  inc bc                                          ; $474c: $03
  ld c, h                                         ; $474d: $4c

  db $05

  nop                                             ; $474f: $00

  db $06, $06

  nop                                             ; $4752: $00

  db $06, $00, $03, $1c, $02, $01

  nop                                             ; $4759: $00
  nop                                             ; $475a: $00
  nop                                             ; $475b: $00

  db $00, $03, $24, $00, $02

  ld bc, $0001                                    ; $4761: $01 $01 $00

  db $01, $03, $2c, $01, $00

  ld [bc], a                                      ; $4769: $02
  ld [bc], a                                      ; $476a: $02
  nop                                             ; $476b: $00

  db $02, $00, $19, $32, $02, $01

  nop                                             ; $4772: $00
  nop                                             ; $4773: $00
  nop                                             ; $4774: $00

  db $00, $19, $52, $00, $02

  ld bc, $0001                                    ; $477a: $01 $01 $00

  db $01, $19, $72, $01, $00

  ld [bc], a                                      ; $4782: $02
  ld [bc], a                                      ; $4783: $02
  nop                                             ; $4784: $00

  db $02

  nop                                             ; $4786: $00
  inc bc                                          ; $4787: $03
  inc h                                           ; $4788: $24
  inc c                                           ; $4789: $0c
  ld bc, $0000                                    ; $478a: $01 $00 $00
  nop                                             ; $478d: $00
  nop                                             ; $478e: $00
  inc bc                                          ; $478f: $03
  inc l                                           ; $4790: $2c
  nop                                             ; $4791: $00
  ld [bc], a                                      ; $4792: $02
  ld bc, $0001                                    ; $4793: $01 $01 $00
  ld bc, $3403                                    ; $4796: $01 $03 $34
  ld bc, $0203                                    ; $4799: $01 $03 $02
  ld [bc], a                                      ; $479c: $02
  nop                                             ; $479d: $00
  ld [bc], a                                      ; $479e: $02
  inc bc                                          ; $479f: $03
  inc a                                           ; $47a0: $3c
  ld [bc], a                                      ; $47a1: $02
  inc b                                           ; $47a2: $04
  inc bc                                          ; $47a3: $03
  inc bc                                          ; $47a4: $03
  nop                                             ; $47a5: $00
  inc bc                                          ; $47a6: $03
  inc bc                                          ; $47a7: $03
  ld b, h                                         ; $47a8: $44
  inc bc                                          ; $47a9: $03
  dec b                                           ; $47aa: $05
  inc b                                           ; $47ab: $04
  inc b                                           ; $47ac: $04
  nop                                             ; $47ad: $00
  inc b                                           ; $47ae: $04
  inc bc                                          ; $47af: $03
  ld c, h                                         ; $47b0: $4c
  inc b                                           ; $47b1: $04
  ld b, $05                                       ; $47b2: $06 $05
  dec b                                           ; $47b4: $05
  nop                                             ; $47b5: $00
  dec b                                           ; $47b6: $05
  inc bc                                          ; $47b7: $03
  ld d, h                                         ; $47b8: $54
  dec b                                           ; $47b9: $05
  rlca                                            ; $47ba: $07
  ld b, $06                                       ; $47bb: $06 $06
  nop                                             ; $47bd: $00
  ld b, $03                                       ; $47be: $06 $03
  ld e, h                                         ; $47c0: $5c
  ld b, $08                                       ; $47c1: $06 $08
  rlca                                            ; $47c3: $07
  rlca                                            ; $47c4: $07
  nop                                             ; $47c5: $00
  rlca                                            ; $47c6: $07
  inc bc                                          ; $47c7: $03
  ld h, h                                         ; $47c8: $64
  rlca                                            ; $47c9: $07
  add hl, bc                                      ; $47ca: $09
  ld [$0008], sp                                  ; $47cb: $08 $08 $00
  ld [$6c03], sp                                  ; $47ce: $08 $03 $6c
  ld [$090a], sp                                  ; $47d1: $08 $0a $09
  add hl, bc                                      ; $47d4: $09
  nop                                             ; $47d5: $00
  add hl, bc                                      ; $47d6: $09
  inc bc                                          ; $47d7: $03
  ld [hl], h                                      ; $47d8: $74
  add hl, bc                                      ; $47d9: $09
  dec bc                                          ; $47da: $0b
  ld a, [bc]                                      ; $47db: $0a
  ld a, [bc]                                      ; $47dc: $0a
  nop                                             ; $47dd: $00
  ld a, [bc]                                      ; $47de: $0a
  inc bc                                          ; $47df: $03
  ld a, h                                         ; $47e0: $7c
  ld a, [bc]                                      ; $47e1: $0a
  inc c                                           ; $47e2: $0c
  dec bc                                          ; $47e3: $0b
  dec bc                                          ; $47e4: $0b
  nop                                             ; $47e5: $00
  dec bc                                          ; $47e6: $0b
  inc bc                                          ; $47e7: $03
  add h                                           ; $47e8: $84
  dec bc                                          ; $47e9: $0b
  nop                                             ; $47ea: $00
  inc c                                           ; $47eb: $0c
  inc c                                           ; $47ec: $0c
  nop                                             ; $47ed: $00
  inc c                                           ; $47ee: $0c

  db $00, $07, $78, $00, $00, $04, $01

  nop                                             ; $47f6: $00

  db $00, $17, $78, $01, $01, $00, $02

  nop                                             ; $47fe: $00

  db $01, $27, $78, $02, $02, $01, $03

  nop                                             ; $4806: $00

  db $02, $37, $78, $03, $03, $02, $04

  nop                                             ; $480e: $00

  db $03, $47, $78, $04, $04, $03, $00

  nop                                             ; $4816: $00

  db $04, $00, $07, $78, $00

  nop                                             ; $481c: $00
  inc bc                                          ; $481d: $03

  db $01

  nop                                             ; $481f: $00

  db $00, $17, $78, $01

  db $01                                          ; $4824: $01

  db $00, $02

  nop                                             ; $4827: $00

  db $01, $27, $78, $02

  ld [bc], a                                      ; $482c: $02
  db $01                                          ; $482d: $01

  db $03

  nop                                             ; $482f: $00

  db $02, $37, $78, $03

  inc bc                                          ; $4834: $03
  ld [bc], a                                      ; $4835: $02
  nop                                             ; $4836: $00
  nop                                             ; $4837: $00

  db $03, $00, $07, $78, $00, $00, $02, $01

  nop                                             ; $4840: $00

  db $00, $17, $78, $01, $01, $00, $02

  nop                                             ; $4848: $00

  db $01, $27, $78, $02, $02, $01, $00

  nop                                             ; $4850: $00

  db $02, $00, $07, $78, $00

  nop                                             ; $4856: $00
  db $01                                          ; $4857: $01

  db $01

  nop                                             ; $4859: $00

  db $00, $17, $78, $01

  db $01                                          ; $485e: $01

  db $00

  nop                                             ; $4860: $00
  nop                                             ; $4861: $00

  db $01

  nop                                             ; $4863: $00

  db $1a, $20, $02, $01, $ff

  rst $38                                         ; $4869: $ff
  rst $38                                         ; $486a: $ff

  db $00, $1a, $48, $00

  ld [bc], a                                      ; $486f: $02
  rst $38                                         ; $4870: $ff
  rst $38                                         ; $4871: $ff
  rst $38                                         ; $4872: $ff

  db $01

  ld a, [de]                                      ; $4874: $1a
  ld [hl], b                                      ; $4875: $70
  ld bc, $ff00                                    ; $4876: $01 $00 $ff
  rst $38                                         ; $4879: $ff
  rst $38                                         ; $487a: $ff
  ld [bc], a                                      ; $487b: $02
  nop                                             ; $487c: $00
  ld c, d                                         ; $487d: $4a
  ld d, e                                         ; $487e: $53
  ld bc, $ff01                                    ; $487f: $01 $01 $ff
  rst $38                                         ; $4882: $ff
  rst $38                                         ; $4883: $ff
  nop                                             ; $4884: $00
  ld c, d                                         ; $4885: $4a
  ld e, e                                         ; $4886: $5b
  nop                                             ; $4887: $00
  nop                                             ; $4888: $00
  rst $38                                         ; $4889: $ff
  rst $38                                         ; $488a: $ff
  rst $38                                         ; $488b: $ff
  ld bc, $0b00                                    ; $488c: $01 $00 $0b
  inc l                                           ; $488f: $2c
  inc c                                           ; $4890: $0c
  ld bc, $0000                                    ; $4891: $01 $00 $00
  nop                                             ; $4894: $00
  ld bc, $340b                                    ; $4895: $01 $0b $34
  nop                                             ; $4898: $00
  ld [bc], a                                      ; $4899: $02
  ld bc, $0001                                    ; $489a: $01 $01 $00
  ld [bc], a                                      ; $489d: $02
  dec bc                                          ; $489e: $0b
  inc a                                           ; $489f: $3c
  ld bc, $0203                                    ; $48a0: $01 $03 $02
  ld [bc], a                                      ; $48a3: $02
  nop                                             ; $48a4: $00
  inc bc                                          ; $48a5: $03
  dec bc                                          ; $48a6: $0b
  ld b, h                                         ; $48a7: $44
  ld [bc], a                                      ; $48a8: $02
  inc b                                           ; $48a9: $04
  inc bc                                          ; $48aa: $03
  inc bc                                          ; $48ab: $03
  nop                                             ; $48ac: $00
  inc b                                           ; $48ad: $04
  dec bc                                          ; $48ae: $0b
  ld c, h                                         ; $48af: $4c
  inc bc                                          ; $48b0: $03
  dec b                                           ; $48b1: $05
  inc b                                           ; $48b2: $04
  inc b                                           ; $48b3: $04
  nop                                             ; $48b4: $00
  dec b                                           ; $48b5: $05
  dec bc                                          ; $48b6: $0b
  ld d, h                                         ; $48b7: $54
  inc b                                           ; $48b8: $04
  ld b, $05                                       ; $48b9: $06 $05
  dec b                                           ; $48bb: $05
  nop                                             ; $48bc: $00
  ld b, $0b                                       ; $48bd: $06 $0b
  ld e, h                                         ; $48bf: $5c
  dec b                                           ; $48c0: $05
  rlca                                            ; $48c1: $07
  ld b, $06                                       ; $48c2: $06 $06
  nop                                             ; $48c4: $00
  rlca                                            ; $48c5: $07
  dec bc                                          ; $48c6: $0b
  ld h, h                                         ; $48c7: $64
  ld b, $08                                       ; $48c8: $06 $08
  rlca                                            ; $48ca: $07
  rlca                                            ; $48cb: $07
  nop                                             ; $48cc: $00
  ld [$6c0b], sp                                  ; $48cd: $08 $0b $6c
  rlca                                            ; $48d0: $07
  add hl, bc                                      ; $48d1: $09
  ld [$0008], sp                                  ; $48d2: $08 $08 $00
  add hl, bc                                      ; $48d5: $09
  dec bc                                          ; $48d6: $0b
  ld [hl], h                                      ; $48d7: $74
  ld [$090a], sp                                  ; $48d8: $08 $0a $09
  add hl, bc                                      ; $48db: $09
  nop                                             ; $48dc: $00
  ld a, [bc]                                      ; $48dd: $0a
  dec bc                                          ; $48de: $0b
  ld a, h                                         ; $48df: $7c
  add hl, bc                                      ; $48e0: $09
  dec bc                                          ; $48e1: $0b
  ld a, [bc]                                      ; $48e2: $0a
  ld a, [bc]                                      ; $48e3: $0a
  nop                                             ; $48e4: $00
  dec bc                                          ; $48e5: $0b
  dec bc                                          ; $48e6: $0b
  add h                                           ; $48e7: $84
  ld a, [bc]                                      ; $48e8: $0a
  inc c                                           ; $48e9: $0c
  dec bc                                          ; $48ea: $0b
  dec bc                                          ; $48eb: $0b
  nop                                             ; $48ec: $00
  inc c                                           ; $48ed: $0c
  dec bc                                          ; $48ee: $0b
  adc h                                           ; $48ef: $8c
  dec bc                                          ; $48f0: $0b
  nop                                             ; $48f1: $00
  inc c                                           ; $48f2: $0c
  inc c                                           ; $48f3: $0c
  nop                                             ; $48f4: $00
  dec c                                           ; $48f5: $0d
  nop                                             ; $48f6: $00
  dec bc                                          ; $48f7: $0b
  inc l                                           ; $48f8: $2c
  ld bc, $0001                                    ; $48f9: $01 $01 $00
  nop                                             ; $48fc: $00
  nop                                             ; $48fd: $00
  ld bc, $340b                                    ; $48fe: $01 $0b $34
  nop                                             ; $4901: $00
  nop                                             ; $4902: $00
  ld bc, $0001                                    ; $4903: $01 $01 $00
  ld [bc], a                                      ; $4906: $02
  ld bc, $2c0b                                    ; $4907: $01 $0b $2c
  ld bc, $0001                                    ; $490a: $01 $01 $00
  nop                                             ; $490d: $00
  nop                                             ; $490e: $00
  nop                                             ; $490f: $00
  dec bc                                          ; $4910: $0b
  inc l                                           ; $4911: $2c
  nop                                             ; $4912: $00
  ld [bc], a                                      ; $4913: $02
  ld bc, $0001                                    ; $4914: $01 $01 $00
  ld bc, $340b                                    ; $4917: $01 $0b $34
  ld bc, $0203                                    ; $491a: $01 $03 $02
  ld [bc], a                                      ; $491d: $02
  nop                                             ; $491e: $00
  ld [bc], a                                      ; $491f: $02
  dec bc                                          ; $4920: $0b
  inc a                                           ; $4921: $3c
  ld [bc], a                                      ; $4922: $02
  inc b                                           ; $4923: $04
  inc bc                                          ; $4924: $03
  inc bc                                          ; $4925: $03
  nop                                             ; $4926: $00
  inc bc                                          ; $4927: $03
  dec bc                                          ; $4928: $0b
  ld b, h                                         ; $4929: $44
  inc bc                                          ; $492a: $03
  dec b                                           ; $492b: $05
  inc b                                           ; $492c: $04
  inc b                                           ; $492d: $04
  nop                                             ; $492e: $00
  inc b                                           ; $492f: $04
  dec bc                                          ; $4930: $0b
  ld c, h                                         ; $4931: $4c
  inc b                                           ; $4932: $04
  ld b, $05                                       ; $4933: $06 $05
  dec b                                           ; $4935: $05
  nop                                             ; $4936: $00
  dec b                                           ; $4937: $05
  dec bc                                          ; $4938: $0b
  ld d, h                                         ; $4939: $54
  dec b                                           ; $493a: $05
  rlca                                            ; $493b: $07
  ld b, $06                                       ; $493c: $06 $06
  nop                                             ; $493e: $00
  ld b, $0b                                       ; $493f: $06 $0b
  ld e, h                                         ; $4941: $5c
  ld b, $08                                       ; $4942: $06 $08
  rlca                                            ; $4944: $07
  rlca                                            ; $4945: $07
  nop                                             ; $4946: $00
  rlca                                            ; $4947: $07
  dec bc                                          ; $4948: $0b
  ld h, h                                         ; $4949: $64
  rlca                                            ; $494a: $07
  add hl, bc                                      ; $494b: $09
  ld [$0008], sp                                  ; $494c: $08 $08 $00
  ld [$6c0b], sp                                  ; $494f: $08 $0b $6c
  ld [$090a], sp                                  ; $4952: $08 $0a $09
  add hl, bc                                      ; $4955: $09
  nop                                             ; $4956: $00
  add hl, bc                                      ; $4957: $09
  dec bc                                          ; $4958: $0b
  ld [hl], h                                      ; $4959: $74
  add hl, bc                                      ; $495a: $09
  dec bc                                          ; $495b: $0b
  ld a, [bc]                                      ; $495c: $0a
  ld a, [bc]                                      ; $495d: $0a
  nop                                             ; $495e: $00
  ld a, [bc]                                      ; $495f: $0a
  dec bc                                          ; $4960: $0b
  ld a, h                                         ; $4961: $7c
  ld a, [bc]                                      ; $4962: $0a
  inc c                                           ; $4963: $0c
  dec bc                                          ; $4964: $0b
  dec bc                                          ; $4965: $0b
  nop                                             ; $4966: $00
  dec bc                                          ; $4967: $0b
  dec bc                                          ; $4968: $0b
  add h                                           ; $4969: $84
  dec bc                                          ; $496a: $0b
  dec c                                           ; $496b: $0d
  inc c                                           ; $496c: $0c
  inc c                                           ; $496d: $0c
  nop                                             ; $496e: $00
  inc c                                           ; $496f: $0c
  dec bc                                          ; $4970: $0b
  adc h                                           ; $4971: $8c
  inc c                                           ; $4972: $0c
  ld c, $0d                                       ; $4973: $0e $0d
  dec c                                           ; $4975: $0d
  nop                                             ; $4976: $00
  dec c                                           ; $4977: $0d
  dec bc                                          ; $4978: $0b
  sub h                                           ; $4979: $94
  dec c                                           ; $497a: $0d
  rrca                                            ; $497b: $0f
  ld c, $0e                                       ; $497c: $0e $0e
  nop                                             ; $497e: $00
  ld c, $0b                                       ; $497f: $0e $0b
  sub h                                           ; $4981: $94
  ld c, $0e                                       ; $4982: $0e $0e
  rrca                                            ; $4984: $0f
  rrca                                            ; $4985: $0f
  nop                                             ; $4986: $00
  rrca                                            ; $4987: $0f
  nop                                             ; $4988: $00

  db $18, $20, $46, $0e, $0d, $01

  ld [bc], a                                      ; $498f: $02

  db $00, $20, $20, $47, $0f, $00, $02

  ld [bc], a                                      ; $4997: $02

  db $01, $28, $20, $48

  db $10                                          ; $499c: $10

  db $01, $03

  ld [bc], a                                      ; $499f: $02

  db $02, $30, $20, $49, $11, $02, $04

  ld [bc], a                                      ; $49a7: $02

  db $03, $38, $20, $4a, $12, $03, $05

  ld [bc], a                                      ; $49af: $02

  db $04, $40, $20, $4b, $13, $04, $06

  ld [bc], a                                      ; $49b7: $02

  db $05, $48, $20, $4c

  inc d                                           ; $49bc: $14

  db $05, $07

  ld [bc], a                                      ; $49bf: $02

  db $06, $50, $20, $3f

  dec d                                           ; $49c4: $15

  db $06, $08

  ld [bc], a                                      ; $49c7: $02

  db $07, $58, $20, $40, $16, $07, $09

  ld [bc], a                                      ; $49cf: $02

  db $08, $60, $20, $41, $17, $08, $0a

  ld [bc], a                                      ; $49d7: $02

  db $09, $68, $20, $42, $18, $09, $0b

  ld [bc], a                                      ; $49df: $02

  db $0a, $70, $20, $43, $19, $0a, $0c

  ld [bc], a                                      ; $49e7: $02

  db $0b, $78, $20, $44, $1a, $0b, $0d

  ld [bc], a                                      ; $49ef: $02

  db $0c, $80, $20, $45, $1b, $0c, $00

  ld [bc], a                                      ; $49f7: $02

  db $0d, $18, $28, $00, $1c, $1b, $0f

  ld [bc], a                                      ; $49ff: $02

  db $0e, $20, $28, $01, $1d, $0e, $10

  ld [bc], a                                      ; $4a07: $02

  db $0f, $28, $28, $02, $1e, $0f, $11

  ld [bc], a                                      ; $4a0f: $02

  db $10, $30, $28, $03, $1f, $10, $12

  ld [bc], a                                      ; $4a17: $02

  db $11, $38, $28, $04, $20, $11, $13

  ld [bc], a                                      ; $4a1f: $02

  db $12, $40, $28, $05, $21, $12, $14

  ld [bc], a                                      ; $4a27: $02

  db $13, $48, $28, $06, $22, $13, $15

  ld [bc], a                                      ; $4a2f: $02

  db $14, $50, $28, $07, $23, $14, $16

  ld [bc], a                                      ; $4a37: $02

  db $15, $58, $28, $08, $24, $15, $17

  ld [bc], a                                      ; $4a3f: $02

  db $16, $60, $28, $09, $25, $16, $18

  ld [bc], a                                      ; $4a47: $02

  db $17, $68, $28, $0a, $26, $17, $19

  ld [bc], a                                      ; $4a4f: $02

  db $18, $70, $28, $0b, $27, $18, $1a

  ld [bc], a                                      ; $4a57: $02

  db $19, $78, $28, $0c, $28, $19

  dec de                                          ; $4a5e: $1b
  ld [bc], a                                      ; $4a5f: $02

  db $1a, $80, $28, $0d, $29, $1a

  ld c, $02                                       ; $4a66: $0e $02

  db $1b, $18, $30, $0e, $2a, $29, $1d

  ld [bc], a                                      ; $4a6f: $02

  db $1c, $20, $30, $0f, $2b, $1c, $1e

  ld [bc], a                                      ; $4a77: $02

  db $1d, $28, $30, $10, $2c, $1d, $1f

  ld [bc], a                                      ; $4a7f: $02

  db $1e, $30, $30, $11, $2d, $1e, $20

  ld [bc], a                                      ; $4a87: $02

  db $1f, $38, $30, $12, $2e, $1f, $21

  ld [bc], a                                      ; $4a8f: $02

  db $20, $40, $30, $13, $2f, $20, $22

  ld [bc], a                                      ; $4a97: $02

  db $21, $48, $30, $14, $30, $21, $23

  ld [bc], a                                      ; $4a9f: $02

  db $22, $50, $30, $15, $31, $22, $24

  ld [bc], a                                      ; $4aa7: $02

  db $23, $58, $30, $16, $32, $23, $25

  ld [bc], a                                      ; $4aaf: $02

  db $24, $60, $30, $17, $33, $24, $26

  ld [bc], a                                      ; $4ab7: $02

  db $25, $68, $30, $18, $34, $25, $27

  ld [bc], a                                      ; $4abf: $02

  db $26, $70, $30, $19, $35, $26, $28

  ld [bc], a                                      ; $4ac7: $02

  db $27, $78, $30, $1a, $36, $27, $29

  ld [bc], a                                      ; $4acf: $02

  db $28, $80, $30, $1b, $37, $28, $1c

  ld [bc], a                                      ; $4ad7: $02

  db $29, $18, $38, $1c, $38, $37, $2b

  ld [bc], a                                      ; $4adf: $02

  db $2a, $20, $38, $1d, $39, $2a, $2c

  ld [bc], a                                      ; $4ae7: $02

  db $2b, $28, $38, $1e, $3a, $2b, $2d

  ld [bc], a                                      ; $4aef: $02

  db $2c, $30, $38, $1f, $3b, $2c, $2e

  ld [bc], a                                      ; $4af7: $02

  db $2d, $38, $38, $20, $3c, $2d, $2f

  ld [bc], a                                      ; $4aff: $02

  db $2e, $40, $38, $21

  dec a                                           ; $4b04: $3d

  db $2e, $30

  ld [bc], a                                      ; $4b07: $02

  db $2f, $48, $38, $22, $3e, $2f, $31

  ld [bc], a                                      ; $4b0f: $02

  db $30, $50, $38, $23

  ccf                                             ; $4b14: $3f

  db $30, $32

  ld [bc], a                                      ; $4b17: $02

  db $31, $58, $38, $24, $40, $31, $33

  ld [bc], a                                      ; $4b1f: $02

  db $32, $60, $38, $25, $41, $32, $34

  ld [bc], a                                      ; $4b27: $02

  db $33, $68, $38, $26, $42, $33, $35

  ld [bc], a                                      ; $4b2f: $02

  db $34, $70, $38, $27

  ld b, e                                         ; $4b34: $43

  db $34, $36

  ld [bc], a                                      ; $4b37: $02

  db $35, $78, $38, $28, $44, $35, $37

  ld [bc], a                                      ; $4b3f: $02

  db $36, $80, $38, $29, $45, $36

  ld a, [hl+]                                     ; $4b46: $2a
  ld [bc], a                                      ; $4b47: $02

  db $37, $18, $40, $2a, $46, $45, $39

  ld [bc], a                                      ; $4b4f: $02

  db $38, $20, $40, $2b, $47, $38, $3a

  ld [bc], a                                      ; $4b57: $02

  db $39, $28, $40, $2c, $48, $39, $3b

  ld [bc], a                                      ; $4b5f: $02

  db $3a, $30, $40, $2d

  ld c, c                                         ; $4b64: $49

  db $3a, $3c

  ld [bc], a                                      ; $4b67: $02

  db $3b, $38, $40, $2e

  ld c, d                                         ; $4b6c: $4a

  db $3b, $3d

  ld [bc], a                                      ; $4b6f: $02

  db $3c, $40, $40, $2f, $4b, $3c, $3e

  ld [bc], a                                      ; $4b77: $02

  db $3d, $48, $40, $30, $4c, $3d, $3f

  ld [bc], a                                      ; $4b7f: $02

  db $3e, $50, $40, $31

  rlca                                            ; $4b84: $07

  db $3e, $40

  ld [bc], a                                      ; $4b87: $02

  db $3f, $58, $40, $32

  db $08                                          ; $4b8c: $08

  db $3f, $41

  ld [bc], a                                      ; $4b8f: $02

  db $40, $60, $40, $33, $09, $40, $42

  ld [bc], a                                      ; $4b97: $02

  db $41, $68, $40, $34

  ld a, [bc]                                      ; $4b9c: $0a

  db $41, $43

  ld [bc], a                                      ; $4b9f: $02

  db $42, $70, $40, $35, $0b, $42, $44

  ld [bc], a                                      ; $4ba7: $02

  db $43, $78, $40, $36

  inc c                                           ; $4bac: $0c

  db $43, $45

  ld [bc], a                                      ; $4baf: $02

  db $44, $80, $40, $37

  dec c                                           ; $4bb4: $0d

  db $44, $38

  ld [bc], a                                      ; $4bb7: $02

  db $45, $18, $48, $38, $00, $4c, $47

  ld [bc], a                                      ; $4bbf: $02

  db $46, $20, $48, $39, $01, $46, $48

  ld [bc], a                                      ; $4bc7: $02

  db $47, $28, $48, $3a

  ld [bc], a                                      ; $4bcc: $02

  db $47, $49

  ld [bc], a                                      ; $4bcf: $02

  db $48, $30, $48, $3b

  inc bc                                          ; $4bd4: $03

  db $48, $4a

  ld [bc], a                                      ; $4bd7: $02

  db $49, $38, $48, $3c

  inc b                                           ; $4bdc: $04
  ld c, c                                         ; $4bdd: $49

  db $4b

  ld [bc], a                                      ; $4bdf: $02

  db $4a, $40, $48, $3d

  dec b                                           ; $4be4: $05
  ld c, d                                         ; $4be5: $4a

  db $4c

  ld [bc], a                                      ; $4be7: $02

  db $4b, $48, $48, $3e, $06

  ld c, e                                         ; $4bed: $4b

  db $46

  ld [bc], a                                      ; $4bef: $02

  db $4c

  nop                                             ; $4bf1: $00

  db $50, $08, $5d, $0a

  add hl, bc                                      ; $4bf6: $09

  db $01

  ld [bc], a                                      ; $4bf8: $02

  db $00, $58, $08, $5e

  dec bc                                          ; $4bfd: $0b
  nop                                             ; $4bfe: $00

  db $02

  ld [bc], a                                      ; $4c00: $02

  db $01, $60, $08, $5f, $0c

  db $01                                          ; $4c06: $01

  db $03

  ld [bc], a                                      ; $4c08: $02

  db $02, $68, $08, $60

  dec c                                           ; $4c0d: $0d
  ld [bc], a                                      ; $4c0e: $02

  db $04

  ld [bc], a                                      ; $4c10: $02

  db $03, $70, $08, $61

  ld c, $03                                       ; $4c15: $0e $03

  db $05

  ld [bc], a                                      ; $4c18: $02

  db $04, $78, $08, $62

  rrca                                            ; $4c1d: $0f
  inc b                                           ; $4c1e: $04

  db $06

  ld [bc], a                                      ; $4c20: $02

  db $05, $80, $08, $63

  db $10                                          ; $4c25: $10
  dec b                                           ; $4c26: $05
  rlca                                            ; $4c27: $07
  ld [bc], a                                      ; $4c28: $02

  db $06, $88, $08

  ld h, h                                         ; $4c2c: $64
  ld de, $0806                                    ; $4c2d: $11 $06 $08
  ld [bc], a                                      ; $4c30: $02
  rlca                                            ; $4c31: $07
  sub b                                           ; $4c32: $90
  ld [$1264], sp                                  ; $4c33: $08 $64 $12
  rlca                                            ; $4c36: $07
  add hl, bc                                      ; $4c37: $09
  ld [bc], a                                      ; $4c38: $02
  ld [$0898], sp                                  ; $4c39: $08 $98 $08
  ld h, h                                         ; $4c3c: $64
  ld [de], a                                      ; $4c3d: $12
  ld [$0200], sp                                  ; $4c3e: $08 $00 $02
  add hl, bc                                      ; $4c41: $09

  db $50, $10, $00, $13

  ld [de], a                                      ; $4c46: $12
  dec bc                                          ; $4c47: $0b
  ld [bc], a                                      ; $4c48: $02

  db $0a, $58, $10

  ld bc, $0a14                                    ; $4c4c: $01 $14 $0a
  inc c                                           ; $4c4f: $0c
  ld [bc], a                                      ; $4c50: $02
  dec bc                                          ; $4c51: $0b

  db $60, $10, $02

  dec d                                           ; $4c55: $15
  dec bc                                          ; $4c56: $0b
  dec c                                           ; $4c57: $0d
  ld [bc], a                                      ; $4c58: $02

  db $0c, $68, $10

  inc bc                                          ; $4c5c: $03
  ld d, $0c                                       ; $4c5d: $16 $0c
  ld c, $02                                       ; $4c5f: $0e $02
  dec c                                           ; $4c61: $0d

  db $70, $10

  inc b                                           ; $4c64: $04
  rla                                             ; $4c65: $17
  dec c                                           ; $4c66: $0d
  rrca                                            ; $4c67: $0f
  ld [bc], a                                      ; $4c68: $02
  db $0e                                          ; $4c69: $0e

  db $78, $10

  dec b                                           ; $4c6c: $05
  jr jr_006_4c7d                                  ; $4c6d: $18 $0e

  db $10                                          ; $4c6f: $10
  ld [bc], a                                      ; $4c70: $02
  rrca                                            ; $4c71: $0f
  add b                                           ; $4c72: $80
  db $10                                          ; $4c73: $10
  ld b, $19                                       ; $4c74: $06 $19
  rrca                                            ; $4c76: $0f
  ld de, $1002                                    ; $4c77: $11 $02 $10
  adc b                                           ; $4c7a: $88
  db $10                                          ; $4c7b: $10
  rlca                                            ; $4c7c: $07

jr_006_4c7d:
  ld a, [de]                                      ; $4c7d: $1a
  db $10                                          ; $4c7e: $10
  ld [de], a                                      ; $4c7f: $12
  ld [bc], a                                      ; $4c80: $02
  db $11                                          ; $4c81: $11

  db $90, $10

  ld [$111b], sp                                  ; $4c84: $08 $1b $11
  ld a, [bc]                                      ; $4c87: $0a
  ld [bc], a                                      ; $4c88: $02
  ld [de], a                                      ; $4c89: $12

  db $50, $18, $0a

  inc e                                           ; $4c8d: $1c
  dec de                                          ; $4c8e: $1b

  db $14

  ld [bc], a                                      ; $4c90: $02

  db $13, $58, $18, $0b

  dec e                                           ; $4c95: $1d
  inc de                                          ; $4c96: $13

  db $15

  ld [bc], a                                      ; $4c98: $02

  db $14, $60, $18, $0c, $1e

  inc d                                           ; $4c9e: $14
  ld d, $02                                       ; $4c9f: $16 $02

  db $15

  ld l, b                                         ; $4ca2: $68
  jr jr_006_4cb2                                  ; $4ca3: $18 $0d

  rra                                             ; $4ca5: $1f
  dec d                                           ; $4ca6: $15
  rla                                             ; $4ca7: $17
  ld [bc], a                                      ; $4ca8: $02
  ld d, $70                                       ; $4ca9: $16 $70
  jr jr_006_4cbb                                  ; $4cab: $18 $0e

  jr nz, @+$18                                    ; $4cad: $20 $16

  jr jr_006_4cb3                                  ; $4caf: $18 $02

  rla                                             ; $4cb1: $17

jr_006_4cb2:
  ld a, b                                         ; $4cb2: $78

jr_006_4cb3:
  jr jr_006_4cc4                                  ; $4cb3: $18 $0f

  ld hl, $1917                                    ; $4cb5: $21 $17 $19
  ld [bc], a                                      ; $4cb8: $02
  jr @-$7e                                        ; $4cb9: $18 $80

jr_006_4cbb:
  jr jr_006_4ccd                                  ; $4cbb: $18 $10

  ld [hl+], a                                     ; $4cbd: $22
  jr jr_006_4cda                                  ; $4cbe: $18 $1a

  ld [bc], a                                      ; $4cc0: $02
  add hl, de                                      ; $4cc1: $19

  db $88, $18

jr_006_4cc4:
  ld de, $1923                                    ; $4cc4: $11 $23 $19
  dec de                                          ; $4cc7: $1b
  ld [bc], a                                      ; $4cc8: $02
  ld a, [de]                                      ; $4cc9: $1a
  sub b                                           ; $4cca: $90
  jr jr_006_4cdf                                  ; $4ccb: $18 $12

jr_006_4ccd:
  inc h                                           ; $4ccd: $24
  ld a, [de]                                      ; $4cce: $1a
  inc de                                          ; $4ccf: $13
  ld [bc], a                                      ; $4cd0: $02
  dec de                                          ; $4cd1: $1b
  ld d, b                                         ; $4cd2: $50
  jr nz, jr_006_4ce8                              ; $4cd3: $20 $13

  ld h, $25                                       ; $4cd5: $26 $25
  dec e                                           ; $4cd7: $1d
  ld [bc], a                                      ; $4cd8: $02
  inc e                                           ; $4cd9: $1c

jr_006_4cda:
  ld e, b                                         ; $4cda: $58
  jr nz, @+$16                                    ; $4cdb: $20 $14

  daa                                             ; $4cdd: $27
  inc e                                           ; $4cde: $1c

jr_006_4cdf:
  ld e, $02                                       ; $4cdf: $1e $02
  dec e                                           ; $4ce1: $1d

  db $60, $20, $15

  jr z, jr_006_4d04                               ; $4ce5: $28 $1d

  db $1f

jr_006_4ce8:
  ld [bc], a                                      ; $4ce8: $02

  db $1e, $68, $20, $16, $29

  ld e, $20                                       ; $4cee: $1e $20
  ld [bc], a                                      ; $4cf0: $02

  db $1f, $70, $20

  rla                                             ; $4cf4: $17
  ld a, [hl+]                                     ; $4cf5: $2a
  rra                                             ; $4cf6: $1f
  ld hl, $2002                                    ; $4cf7: $21 $02 $20
  ld a, b                                         ; $4cfa: $78
  jr nz, jr_006_4d15                              ; $4cfb: $20 $18

  dec hl                                          ; $4cfd: $2b
  jr nz, jr_006_4d22                              ; $4cfe: $20 $22

  ld [bc], a                                      ; $4d00: $02
  ld hl, $2080                                    ; $4d01: $21 $80 $20

jr_006_4d04:
  add hl, de                                      ; $4d04: $19
  inc l                                           ; $4d05: $2c
  ld hl, $0223                                    ; $4d06: $21 $23 $02
  ld [hl+], a                                     ; $4d09: $22
  adc b                                           ; $4d0a: $88
  jr nz, jr_006_4d27                              ; $4d0b: $20 $1a

  dec l                                           ; $4d0d: $2d
  ld [hl+], a                                     ; $4d0e: $22
  inc h                                           ; $4d0f: $24
  ld [bc], a                                      ; $4d10: $02
  inc hl                                          ; $4d11: $23
  sub b                                           ; $4d12: $90
  jr nz, jr_006_4d30                              ; $4d13: $20 $1b

jr_006_4d15:
  ld l, $23                                       ; $4d15: $2e $23
  dec h                                           ; $4d17: $25
  ld [bc], a                                      ; $4d18: $02
  inc h                                           ; $4d19: $24
  sbc b                                           ; $4d1a: $98
  jr nz, jr_006_4d38                              ; $4d1b: $20 $1b

  cpl                                             ; $4d1d: $2f
  inc h                                           ; $4d1e: $24
  inc e                                           ; $4d1f: $1c
  ld [bc], a                                      ; $4d20: $02
  dec h                                           ; $4d21: $25

jr_006_4d22:
  ld d, b                                         ; $4d22: $50
  jr z, @+$1e                                     ; $4d23: $28 $1c

  jr nc, @+$31                                    ; $4d25: $30 $2f

jr_006_4d27:
  daa                                             ; $4d27: $27
  ld [bc], a                                      ; $4d28: $02
  ld h, $58                                       ; $4d29: $26 $58
  jr z, @+$1f                                     ; $4d2b: $28 $1d

  ld sp, $2826                                    ; $4d2d: $31 $26 $28

jr_006_4d30:
  ld [bc], a                                      ; $4d30: $02
  daa                                             ; $4d31: $27

  db $60, $28

  ld e, $32                                       ; $4d34: $1e $32
  daa                                             ; $4d36: $27
  add hl, hl                                      ; $4d37: $29

jr_006_4d38:
  ld [bc], a                                      ; $4d38: $02
  db $28                                          ; $4d39: $28

  db $68, $28, $1f, $33

  jr z, @+$2c                                     ; $4d3e: $28 $2a

  ld [bc], a                                      ; $4d40: $02

  db $29

  ld [hl], b                                      ; $4d42: $70
  jr z, jr_006_4d65                               ; $4d43: $28 $20

  inc [hl]                                        ; $4d45: $34
  add hl, hl                                      ; $4d46: $29
  dec hl                                          ; $4d47: $2b
  ld [bc], a                                      ; $4d48: $02
  ld a, [hl+]                                     ; $4d49: $2a

  db $78, $28

  ld hl, $2a35                                    ; $4d4c: $21 $35 $2a
  inc l                                           ; $4d4f: $2c
  ld [bc], a                                      ; $4d50: $02
  dec hl                                          ; $4d51: $2b
  add b                                           ; $4d52: $80
  jr z, @+$24                                     ; $4d53: $28 $22

  ld [hl], $2b                                    ; $4d55: $36 $2b
  dec l                                           ; $4d57: $2d
  ld [bc], a                                      ; $4d58: $02
  inc l                                           ; $4d59: $2c
  adc b                                           ; $4d5a: $88
  jr z, jr_006_4d80                               ; $4d5b: $28 $23

  scf                                             ; $4d5d: $37
  inc l                                           ; $4d5e: $2c
  ld l, $02                                       ; $4d5f: $2e $02
  dec l                                           ; $4d61: $2d
  sub b                                           ; $4d62: $90
  jr z, jr_006_4d89                               ; $4d63: $28 $24

jr_006_4d65:
  jr c, jr_006_4d94                               ; $4d65: $38 $2d

  cpl                                             ; $4d67: $2f
  ld [bc], a                                      ; $4d68: $02
  ld l, $98                                       ; $4d69: $2e $98
  jr z, @+$27                                     ; $4d6b: $28 $25

  jr c, jr_006_4d9d                               ; $4d6d: $38 $2e

  ld h, $02                                       ; $4d6f: $26 $02
  cpl                                             ; $4d71: $2f
  ld d, b                                         ; $4d72: $50
  jr nc, jr_006_4d9b                              ; $4d73: $30 $26

  add hl, sp                                      ; $4d75: $39
  jr c, jr_006_4da9                               ; $4d76: $38 $31

  ld [bc], a                                      ; $4d78: $02
  db $30                                          ; $4d79: $30

  db $58, $30

  daa                                             ; $4d7c: $27
  ld a, [hl-]                                     ; $4d7d: $3a
  jr nc, jr_006_4db2                              ; $4d7e: $30 $32

jr_006_4d80:
  ld [bc], a                                      ; $4d80: $02
  ld sp, $3060                                    ; $4d81: $31 $60 $30
  jr z, jr_006_4dc1                               ; $4d84: $28 $3b

  ld sp, $0233                                    ; $4d86: $31 $33 $02

jr_006_4d89:
  ld [hl-], a                                     ; $4d89: $32

  db $68, $30, $29, $3c

  ld [hl-], a                                     ; $4d8e: $32
  inc [hl]                                        ; $4d8f: $34
  ld [bc], a                                      ; $4d90: $02

  db $33, $70, $30

jr_006_4d94:
  ld a, [hl+]                                     ; $4d94: $2a
  dec a                                           ; $4d95: $3d
  inc sp                                          ; $4d96: $33
  dec [hl]                                        ; $4d97: $35
  ld [bc], a                                      ; $4d98: $02
  inc [hl]                                        ; $4d99: $34
  ld a, b                                         ; $4d9a: $78

jr_006_4d9b:
  jr nc, jr_006_4dc8                              ; $4d9b: $30 $2b

jr_006_4d9d:
  ld a, $34                                       ; $4d9d: $3e $34
  ld [hl], $02                                    ; $4d9f: $36 $02
  dec [hl]                                        ; $4da1: $35
  add b                                           ; $4da2: $80

jr_006_4da3:
  jr nc, jr_006_4dd1                              ; $4da3: $30 $2c

  ccf                                             ; $4da5: $3f
  dec [hl]                                        ; $4da6: $35
  scf                                             ; $4da7: $37
  ld [bc], a                                      ; $4da8: $02

jr_006_4da9:
  db $36                                          ; $4da9: $36

  db $88, $30

  dec l                                           ; $4dac: $2d
  ccf                                             ; $4dad: $3f
  ld [hl], $38                                    ; $4dae: $36 $38
  ld [bc], a                                      ; $4db0: $02
  scf                                             ; $4db1: $37

jr_006_4db2:
  sub b                                           ; $4db2: $90
  jr nc, jr_006_4de3                              ; $4db3: $30 $2e

  ccf                                             ; $4db5: $3f
  scf                                             ; $4db6: $37
  jr nc, jr_006_4dbb                              ; $4db7: $30 $02

  jr c, @+$52                                     ; $4db9: $38 $50

jr_006_4dbb:
  jr c, jr_006_4ded                               ; $4dbb: $38 $30

  ld b, b                                         ; $4dbd: $40
  ccf                                             ; $4dbe: $3f
  ld a, [hl-]                                     ; $4dbf: $3a
  ld [bc], a                                      ; $4dc0: $02

jr_006_4dc1:
  add hl, sp                                      ; $4dc1: $39
  ld e, b                                         ; $4dc2: $58
  jr c, jr_006_4df6                               ; $4dc3: $38 $31

  ld b, c                                         ; $4dc5: $41
  add hl, sp                                      ; $4dc6: $39
  dec sp                                          ; $4dc7: $3b

jr_006_4dc8:
  ld [bc], a                                      ; $4dc8: $02
  ld a, [hl-]                                     ; $4dc9: $3a
  ld h, b                                         ; $4dca: $60
  jr c, jr_006_4dff                               ; $4dcb: $38 $32

  ld b, d                                         ; $4dcd: $42
  ld a, [hl-]                                     ; $4dce: $3a
  inc a                                           ; $4dcf: $3c
  ld [bc], a                                      ; $4dd0: $02

jr_006_4dd1:
  dec sp                                          ; $4dd1: $3b

  db $68, $38, $33, $43

  dec sp                                          ; $4dd6: $3b
  dec a                                           ; $4dd7: $3d
  ld [bc], a                                      ; $4dd8: $02

  db $3c

  ld [hl], b                                      ; $4dda: $70
  jr c, @+$36                                     ; $4ddb: $38 $34

  ld b, h                                         ; $4ddd: $44
  inc a                                           ; $4dde: $3c
  ld a, $02                                       ; $4ddf: $3e $02
  dec a                                           ; $4de1: $3d
  ld a, b                                         ; $4de2: $78

jr_006_4de3:
  jr c, jr_006_4e1a                               ; $4de3: $38 $35

  ld b, l                                         ; $4de5: $45
  dec a                                           ; $4de6: $3d
  ccf                                             ; $4de7: $3f
  ld [bc], a                                      ; $4de8: $02
  ld a, $80                                       ; $4de9: $3e $80
  jr c, @+$38                                     ; $4deb: $38 $36

jr_006_4ded:
  ld b, [hl]                                      ; $4ded: $46
  ld a, $39                                       ; $4dee: $3e $39
  ld [bc], a                                      ; $4df0: $02
  ccf                                             ; $4df1: $3f
  ld d, b                                         ; $4df2: $50
  ld b, b                                         ; $4df3: $40
  add hl, sp                                      ; $4df4: $39
  ld c, d                                         ; $4df5: $4a

jr_006_4df6:
  ld c, c                                         ; $4df6: $49
  ld b, c                                         ; $4df7: $41
  ld [bc], a                                      ; $4df8: $02
  ld b, b                                         ; $4df9: $40

  db $58, $40

  ld a, [hl-]                                     ; $4dfc: $3a
  ld c, e                                         ; $4dfd: $4b
  ld b, b                                         ; $4dfe: $40

jr_006_4dff:
  ld b, d                                         ; $4dff: $42
  ld [bc], a                                      ; $4e00: $02
  ld b, c                                         ; $4e01: $41
  ld h, b                                         ; $4e02: $60
  ld b, b                                         ; $4e03: $40
  dec sp                                          ; $4e04: $3b
  ld c, h                                         ; $4e05: $4c
  ld b, c                                         ; $4e06: $41
  ld b, e                                         ; $4e07: $43
  ld [bc], a                                      ; $4e08: $02
  ld b, d                                         ; $4e09: $42

  db $68, $40, $3c, $4d

  ld b, d                                         ; $4e0e: $42
  ld b, h                                         ; $4e0f: $44
  ld [bc], a                                      ; $4e10: $02

  db $43

  ld [hl], b                                      ; $4e12: $70
  ld b, b                                         ; $4e13: $40
  dec a                                           ; $4e14: $3d
  ld c, [hl]                                      ; $4e15: $4e
  ld b, e                                         ; $4e16: $43
  ld b, l                                         ; $4e17: $45
  ld [bc], a                                      ; $4e18: $02
  ld b, h                                         ; $4e19: $44

jr_006_4e1a:
  ld a, b                                         ; $4e1a: $78
  ld b, b                                         ; $4e1b: $40
  ld a, $4f                                       ; $4e1c: $3e $4f
  ld b, h                                         ; $4e1e: $44
  ld b, [hl]                                      ; $4e1f: $46
  ld [bc], a                                      ; $4e20: $02
  ld b, l                                         ; $4e21: $45

  db $80, $40

  ccf                                             ; $4e24: $3f
  ld d, b                                         ; $4e25: $50
  ld b, l                                         ; $4e26: $45
  ld b, a                                         ; $4e27: $47
  ld [bc], a                                      ; $4e28: $02
  ld b, [hl]                                      ; $4e29: $46
  adc b                                           ; $4e2a: $88
  ld b, b                                         ; $4e2b: $40
  ccf                                             ; $4e2c: $3f
  ld d, c                                         ; $4e2d: $51
  ld b, [hl]                                      ; $4e2e: $46
  ld c, b                                         ; $4e2f: $48
  ld [bc], a                                      ; $4e30: $02
  ld b, a                                         ; $4e31: $47
  sub b                                           ; $4e32: $90
  ld b, b                                         ; $4e33: $40
  ccf                                             ; $4e34: $3f
  ld d, d                                         ; $4e35: $52
  ld b, a                                         ; $4e36: $47
  ld c, c                                         ; $4e37: $49
  ld [bc], a                                      ; $4e38: $02
  ld c, b                                         ; $4e39: $48
  sbc b                                           ; $4e3a: $98
  ld b, b                                         ; $4e3b: $40
  ccf                                             ; $4e3c: $3f
  ld d, e                                         ; $4e3d: $53
  ld c, b                                         ; $4e3e: $48
  ld b, b                                         ; $4e3f: $40
  ld [bc], a                                      ; $4e40: $02
  ld c, c                                         ; $4e41: $49
  ld d, b                                         ; $4e42: $50
  ld c, b                                         ; $4e43: $48
  ld b, b                                         ; $4e44: $40
  ld d, h                                         ; $4e45: $54
  ld d, e                                         ; $4e46: $53
  ld c, e                                         ; $4e47: $4b
  ld [bc], a                                      ; $4e48: $02
  ld c, d                                         ; $4e49: $4a
  ld e, b                                         ; $4e4a: $58
  ld c, b                                         ; $4e4b: $48
  ld b, c                                         ; $4e4c: $41
  ld d, l                                         ; $4e4d: $55
  ld c, d                                         ; $4e4e: $4a
  ld c, h                                         ; $4e4f: $4c
  ld [bc], a                                      ; $4e50: $02
  ld c, e                                         ; $4e51: $4b
  ld h, b                                         ; $4e52: $60
  ld c, b                                         ; $4e53: $48
  ld b, d                                         ; $4e54: $42
  ld d, [hl]                                      ; $4e55: $56
  ld c, e                                         ; $4e56: $4b
  ld c, l                                         ; $4e57: $4d
  ld [bc], a                                      ; $4e58: $02
  ld c, h                                         ; $4e59: $4c

  db $68, $48, $43

  ld d, a                                         ; $4e5d: $57
  ld c, h                                         ; $4e5e: $4c
  ld c, [hl]                                      ; $4e5f: $4e
  ld [bc], a                                      ; $4e60: $02

  db $4d, $70, $48

  ld b, h                                         ; $4e64: $44
  ld e, b                                         ; $4e65: $58
  ld c, l                                         ; $4e66: $4d
  ld c, a                                         ; $4e67: $4f
  ld [bc], a                                      ; $4e68: $02
  ld c, [hl]                                      ; $4e69: $4e
  ld a, b                                         ; $4e6a: $78
  ld c, b                                         ; $4e6b: $48
  ld b, l                                         ; $4e6c: $45
  ld e, c                                         ; $4e6d: $59
  ld c, [hl]                                      ; $4e6e: $4e
  ld d, b                                         ; $4e6f: $50
  ld [bc], a                                      ; $4e70: $02
  ld c, a                                         ; $4e71: $4f

  db $80, $48

  ld b, [hl]                                      ; $4e74: $46
  ld e, d                                         ; $4e75: $5a
  ld c, a                                         ; $4e76: $4f
  ld d, c                                         ; $4e77: $51
  ld [bc], a                                      ; $4e78: $02
  ld d, b                                         ; $4e79: $50
  adc b                                           ; $4e7a: $88
  ld c, b                                         ; $4e7b: $48
  ld b, a                                         ; $4e7c: $47
  ld e, e                                         ; $4e7d: $5b
  ld d, b                                         ; $4e7e: $50
  ld d, d                                         ; $4e7f: $52
  ld [bc], a                                      ; $4e80: $02
  ld d, c                                         ; $4e81: $51
  sub b                                           ; $4e82: $90
  ld c, b                                         ; $4e83: $48
  ld c, b                                         ; $4e84: $48
  ld e, h                                         ; $4e85: $5c
  ld d, c                                         ; $4e86: $51
  ld d, e                                         ; $4e87: $53
  ld [bc], a                                      ; $4e88: $02
  ld d, d                                         ; $4e89: $52
  sbc b                                           ; $4e8a: $98
  ld c, b                                         ; $4e8b: $48
  ld c, c                                         ; $4e8c: $49
  ld e, h                                         ; $4e8d: $5c
  ld d, d                                         ; $4e8e: $52
  ld c, d                                         ; $4e8f: $4a
  ld [bc], a                                      ; $4e90: $02
  ld d, e                                         ; $4e91: $53
  ld d, b                                         ; $4e92: $50
  ld d, b                                         ; $4e93: $50
  ld c, d                                         ; $4e94: $4a
  ld e, l                                         ; $4e95: $5d
  ld e, h                                         ; $4e96: $5c
  ld d, l                                         ; $4e97: $55
  ld [bc], a                                      ; $4e98: $02
  ld d, h                                         ; $4e99: $54
  ld e, b                                         ; $4e9a: $58
  ld d, b                                         ; $4e9b: $50
  ld c, e                                         ; $4e9c: $4b
  ld e, [hl]                                      ; $4e9d: $5e
  ld d, h                                         ; $4e9e: $54
  ld d, [hl]                                      ; $4e9f: $56
  ld [bc], a                                      ; $4ea0: $02
  ld d, l                                         ; $4ea1: $55
  ld h, b                                         ; $4ea2: $60
  ld d, b                                         ; $4ea3: $50
  ld c, h                                         ; $4ea4: $4c
  ld e, a                                         ; $4ea5: $5f
  ld d, l                                         ; $4ea6: $55
  ld d, a                                         ; $4ea7: $57
  ld [bc], a                                      ; $4ea8: $02
  ld d, [hl]                                      ; $4ea9: $56
  ld l, b                                         ; $4eaa: $68
  ld d, b                                         ; $4eab: $50
  ld c, l                                         ; $4eac: $4d
  ld h, b                                         ; $4ead: $60
  ld d, [hl]                                      ; $4eae: $56
  ld e, b                                         ; $4eaf: $58
  ld [bc], a                                      ; $4eb0: $02
  ld d, a                                         ; $4eb1: $57
  ld [hl], b                                      ; $4eb2: $70
  ld d, b                                         ; $4eb3: $50
  ld c, [hl]                                      ; $4eb4: $4e
  ld h, c                                         ; $4eb5: $61
  ld d, a                                         ; $4eb6: $57
  ld e, c                                         ; $4eb7: $59
  ld [bc], a                                      ; $4eb8: $02
  ld e, b                                         ; $4eb9: $58
  ld a, b                                         ; $4eba: $78
  ld d, b                                         ; $4ebb: $50
  ld c, a                                         ; $4ebc: $4f
  ld h, d                                         ; $4ebd: $62
  ld e, b                                         ; $4ebe: $58
  ld e, d                                         ; $4ebf: $5a
  ld [bc], a                                      ; $4ec0: $02
  ld e, c                                         ; $4ec1: $59
  add b                                           ; $4ec2: $80
  ld d, b                                         ; $4ec3: $50
  ld d, b                                         ; $4ec4: $50
  ld h, e                                         ; $4ec5: $63
  ld e, c                                         ; $4ec6: $59
  ld e, e                                         ; $4ec7: $5b
  ld [bc], a                                      ; $4ec8: $02
  ld e, d                                         ; $4ec9: $5a
  adc b                                           ; $4eca: $88
  ld d, b                                         ; $4ecb: $50
  ld d, c                                         ; $4ecc: $51
  ld h, h                                         ; $4ecd: $64
  ld e, d                                         ; $4ece: $5a
  ld e, h                                         ; $4ecf: $5c
  ld [bc], a                                      ; $4ed0: $02
  ld e, e                                         ; $4ed1: $5b
  sub b                                           ; $4ed2: $90
  ld d, b                                         ; $4ed3: $50
  ld d, d                                         ; $4ed4: $52
  ld h, h                                         ; $4ed5: $64
  ld e, e                                         ; $4ed6: $5b
  ld d, h                                         ; $4ed7: $54
  ld [bc], a                                      ; $4ed8: $02
  ld e, h                                         ; $4ed9: $5c
  ld d, b                                         ; $4eda: $50
  ld e, b                                         ; $4edb: $58
  ld d, h                                         ; $4edc: $54
  nop                                             ; $4edd: $00
  ld h, h                                         ; $4ede: $64
  ld e, [hl]                                      ; $4edf: $5e
  ld [bc], a                                      ; $4ee0: $02
  ld e, l                                         ; $4ee1: $5d
  ld e, b                                         ; $4ee2: $58
  ld e, b                                         ; $4ee3: $58
  ld d, l                                         ; $4ee4: $55
  ld bc, $5f5d                                    ; $4ee5: $01 $5d $5f
  ld [bc], a                                      ; $4ee8: $02
  ld e, [hl]                                      ; $4ee9: $5e

  db $60, $58

  ld d, [hl]                                      ; $4eec: $56
  ld [bc], a                                      ; $4eed: $02
  ld e, [hl]                                      ; $4eee: $5e
  ld h, b                                         ; $4eef: $60
  ld [bc], a                                      ; $4ef0: $02
  ld e, a                                         ; $4ef1: $5f
  ld l, b                                         ; $4ef2: $68
  ld e, b                                         ; $4ef3: $58
  ld d, a                                         ; $4ef4: $57
  inc bc                                          ; $4ef5: $03
  ld e, a                                         ; $4ef6: $5f
  ld h, c                                         ; $4ef7: $61
  ld [bc], a                                      ; $4ef8: $02
  ld h, b                                         ; $4ef9: $60
  ld [hl], b                                      ; $4efa: $70
  ld e, b                                         ; $4efb: $58
  ld e, b                                         ; $4efc: $58
  inc b                                           ; $4efd: $04
  ld h, b                                         ; $4efe: $60
  ld h, d                                         ; $4eff: $62
  ld [bc], a                                      ; $4f00: $02
  ld h, c                                         ; $4f01: $61
  ld a, b                                         ; $4f02: $78
  ld e, b                                         ; $4f03: $58
  ld e, c                                         ; $4f04: $59
  dec b                                           ; $4f05: $05
  ld h, c                                         ; $4f06: $61
  ld h, e                                         ; $4f07: $63
  ld [bc], a                                      ; $4f08: $02
  ld h, d                                         ; $4f09: $62

  db $80, $58

  ld e, d                                         ; $4f0c: $5a
  ld b, $62                                       ; $4f0d: $06 $62
  ld h, h                                         ; $4f0f: $64
  ld [bc], a                                      ; $4f10: $02
  ld h, e                                         ; $4f11: $63
  adc b                                           ; $4f12: $88
  ld e, b                                         ; $4f13: $58
  ld e, e                                         ; $4f14: $5b
  rlca                                            ; $4f15: $07
  ld h, e                                         ; $4f16: $63
  ld e, l                                         ; $4f17: $5d
  ld [bc], a                                      ; $4f18: $02
  ld h, h                                         ; $4f19: $64
  ld bc, $5000                                    ; $4f1a: $01 $00 $50
  ld bc, $0001                                    ; $4f1d: $01 $01 $00
  nop                                             ; $4f20: $00
  nop                                             ; $4f21: $00
  nop                                             ; $4f22: $00
  nop                                             ; $4f23: $00
  ld d, b                                         ; $4f24: $50
  nop                                             ; $4f25: $00
  ld b, $05                                       ; $4f26: $06 $05
  ld [bc], a                                      ; $4f28: $02
  nop                                             ; $4f29: $00
  ld bc, $5020                                    ; $4f2a: $01 $20 $50
  nop                                             ; $4f2d: $00
  rlca                                            ; $4f2e: $07
  ld bc, $0003                                    ; $4f2f: $01 $03 $00
  ld [bc], a                                      ; $4f32: $02
  ld b, b                                         ; $4f33: $40
  ld d, b                                         ; $4f34: $50
  nop                                             ; $4f35: $00
  ld [$0402], sp                                  ; $4f36: $08 $02 $04
  nop                                             ; $4f39: $00
  inc bc                                          ; $4f3a: $03
  ld h, b                                         ; $4f3b: $60
  ld d, b                                         ; $4f3c: $50
  nop                                             ; $4f3d: $00
  add hl, bc                                      ; $4f3e: $09
  inc bc                                          ; $4f3f: $03
  dec b                                           ; $4f40: $05
  nop                                             ; $4f41: $00
  inc b                                           ; $4f42: $04
  add b                                           ; $4f43: $80
  ld d, b                                         ; $4f44: $50
  nop                                             ; $4f45: $00
  ld a, [bc]                                      ; $4f46: $0a
  inc b                                           ; $4f47: $04
  ld bc, $0500                                    ; $4f48: $01 $00 $05
  nop                                             ; $4f4b: $00
  ld [hl], b                                      ; $4f4c: $70
  ld bc, $0a0b                                    ; $4f4d: $01 $0b $0a
  rlca                                            ; $4f50: $07
  nop                                             ; $4f51: $00
  ld b, $20                                       ; $4f52: $06 $20
  ld [hl], b                                      ; $4f54: $70
  ld [bc], a                                      ; $4f55: $02
  dec bc                                          ; $4f56: $0b
  ld b, $08                                       ; $4f57: $06 $08
  nop                                             ; $4f59: $00
  rlca                                            ; $4f5a: $07
  ld b, b                                         ; $4f5b: $40
  ld [hl], b                                      ; $4f5c: $70
  inc bc                                          ; $4f5d: $03
  dec bc                                          ; $4f5e: $0b
  rlca                                            ; $4f5f: $07
  add hl, bc                                      ; $4f60: $09
  nop                                             ; $4f61: $00
  ld [$7060], sp                                  ; $4f62: $08 $60 $70
  inc b                                           ; $4f65: $04
  dec bc                                          ; $4f66: $0b
  ld [$000a], sp                                  ; $4f67: $08 $0a $00
  add hl, bc                                      ; $4f6a: $09
  add b                                           ; $4f6b: $80
  ld [hl], b                                      ; $4f6c: $70
  dec b                                           ; $4f6d: $05
  dec bc                                          ; $4f6e: $0b
  add hl, bc                                      ; $4f6f: $09
  ld b, $00                                       ; $4f70: $06 $00
  ld a, [bc]                                      ; $4f72: $0a
  add b                                           ; $4f73: $80
  ld [hl], b                                      ; $4f74: $70
  ld a, [bc]                                      ; $4f75: $0a
  ld a, [bc]                                      ; $4f76: $0a
  dec bc                                          ; $4f77: $0b
  dec bc                                          ; $4f78: $0b
  nop                                             ; $4f79: $00
  dec bc                                          ; $4f7a: $0b

  db $00, $28, $18, $1e, $0a, $09, $01

  ld [bc], a                                      ; $4f82: $02

  db $00, $30, $18, $1f

  dec bc                                          ; $4f87: $0b
  nop                                             ; $4f88: $00

  db $02

  ld [bc], a                                      ; $4f8a: $02

  db $01, $38, $18, $20

  inc c                                           ; $4f8f: $0c

  db $01, $03

  ld [bc], a                                      ; $4f92: $02

  db $02, $40, $18, $21

  dec c                                           ; $4f97: $0d

  db $02, $04

  ld [bc], a                                      ; $4f9a: $02

  db $03, $48, $18, $22, $0e

  inc bc                                          ; $4fa0: $03

  db $05

  ld [bc], a                                      ; $4fa2: $02

  db $04, $50, $18, $23, $0f, $04, $06

  ld [bc], a                                      ; $4faa: $02

  db $05, $58, $18, $24

  db $10                                          ; $4faf: $10

  db $05, $07

  ld [bc], a                                      ; $4fb2: $02

  db $06, $60, $18, $25, $11, $06

  db $08                                          ; $4fb9: $08
  ld [bc], a                                      ; $4fba: $02

  db $07

  ld l, b                                         ; $4fbc: $68
  jr @+$28                                        ; $4fbd: $18 $26

  ld [de], a                                      ; $4fbf: $12
  rlca                                            ; $4fc0: $07
  add hl, bc                                      ; $4fc1: $09
  ld [bc], a                                      ; $4fc2: $02
  db $08                                          ; $4fc3: $08

  db $70, $18, $27, $13

  ld [$0200], sp                                  ; $4fc8: $08 $00 $02

  db $09, $28, $20, $00

  inc d                                           ; $4fcf: $14
  inc de                                          ; $4fd0: $13

  db $0b

  ld [bc], a                                      ; $4fd2: $02

  db $0a, $30, $20, $01, $15

  ld a, [bc]                                      ; $4fd8: $0a
  inc c                                           ; $4fd9: $0c
  ld [bc], a                                      ; $4fda: $02

  db $0b

  jr c, @+$22                                     ; $4fdc: $38 $20

  ld [bc], a                                      ; $4fde: $02
  ld d, $0b                                       ; $4fdf: $16 $0b
  dec c                                           ; $4fe1: $0d
  ld [bc], a                                      ; $4fe2: $02
  inc c                                           ; $4fe3: $0c

  db $40, $20, $03

  rla                                             ; $4fe7: $17
  inc c                                           ; $4fe8: $0c
  ld c, $02                                       ; $4fe9: $0e $02

  db $0d, $48, $20, $04

  jr @+$0f                                        ; $4fef: $18 $0d

  db $0f

  ld [bc], a                                      ; $4ff2: $02

  db $0e, $50, $20, $05, $19

  ld c, $10                                       ; $4ff8: $0e $10
  ld [bc], a                                      ; $4ffa: $02

  db $0f, $58, $20, $06

  ld a, [de]                                      ; $4fff: $1a

  db $0f

  db $11                                          ; $5001: $11
  ld [bc], a                                      ; $5002: $02

  db $10, $60, $20, $07

  dec de                                          ; $5007: $1b

  db $10

  ld [de], a                                      ; $5009: $12
  ld [bc], a                                      ; $500a: $02

  db $11, $68, $20

  ld [$111c], sp                                  ; $500e: $08 $1c $11
  inc de                                          ; $5011: $13
  ld [bc], a                                      ; $5012: $02
  ld [de], a                                      ; $5013: $12

  db $70, $20, $09, $1d

  ld [de], a                                      ; $5018: $12
  ld a, [bc]                                      ; $5019: $0a
  ld [bc], a                                      ; $501a: $02

  db $13, $28, $28

  ld a, [bc]                                      ; $501e: $0a
  ld e, $1d                                       ; $501f: $1e $1d
  dec d                                           ; $5021: $15
  ld [bc], a                                      ; $5022: $02
  inc d                                           ; $5023: $14

  db $30, $28, $0b

  rra                                             ; $5027: $1f
  inc d                                           ; $5028: $14

  db $16

  ld [bc], a                                      ; $502a: $02

  db $15, $38, $28, $0c

  jr nz, @+$17                                    ; $502f: $20 $15

  db $17

  ld [bc], a                                      ; $5032: $02

  db $16, $40, $28, $0d

  db $21                                          ; $5037: $21
  db $16                                          ; $5038: $16

  db $18

  ld [bc], a                                      ; $503a: $02

  db $17, $48, $28, $0e, $22

  rla                                             ; $5040: $17
  add hl, de                                      ; $5041: $19
  ld [bc], a                                      ; $5042: $02

  db $18, $50, $28, $0f, $23

  jr @+$1c                                        ; $5048: $18 $1a

  ld [bc], a                                      ; $504a: $02

  db $19, $58, $28

  db $10                                          ; $504e: $10
  inc h                                           ; $504f: $24
  add hl, de                                      ; $5050: $19
  dec de                                          ; $5051: $1b
  ld [bc], a                                      ; $5052: $02
  ld a, [de]                                      ; $5053: $1a

  db $60, $28, $11

  dec h                                           ; $5057: $25
  ld a, [de]                                      ; $5058: $1a
  inc e                                           ; $5059: $1c
  ld [bc], a                                      ; $505a: $02

  db $1b, $68, $28, $12

  db $26                                          ; $505f: $26

  db $1b

  dec e                                           ; $5061: $1d
  ld [bc], a                                      ; $5062: $02

  db $1c, $70, $28, $13

  daa                                             ; $5067: $27

  db $1c

  inc d                                           ; $5069: $14
  ld [bc], a                                      ; $506a: $02

  db $1d

  jr z, @+$32                                     ; $506c: $28 $30

  inc d                                           ; $506e: $14
  nop                                             ; $506f: $00
  daa                                             ; $5070: $27
  rra                                             ; $5071: $1f
  ld [bc], a                                      ; $5072: $02
  db $1e                                          ; $5073: $1e

  db $30, $30

  dec d                                           ; $5076: $15
  ld bc, $201e                                    ; $5077: $01 $1e $20
  ld [bc], a                                      ; $507a: $02
  rra                                             ; $507b: $1f
  jr c, @+$32                                     ; $507c: $38 $30

  ld d, $02                                       ; $507e: $16 $02
  rra                                             ; $5080: $1f
  ld hl, $2002                                    ; $5081: $21 $02 $20

  db $40, $30, $17

  inc bc                                          ; $5087: $03
  jr nz, jr_006_50ac                              ; $5088: $20 $22

  ld [bc], a                                      ; $508a: $02

  db $21, $48, $30, $18

  inc b                                           ; $508f: $04
  db $21                                          ; $5090: $21

  db $23

  ld [bc], a                                      ; $5092: $02

  db $22, $50, $30, $19, $05

  ld [hl+], a                                     ; $5098: $22

  db $24

  ld [bc], a                                      ; $509a: $02

  db $23, $58, $30, $1a, $06

  inc hl                                          ; $50a0: $23
  dec h                                           ; $50a1: $25
  ld [bc], a                                      ; $50a2: $02

  db $24

  ld h, b                                         ; $50a4: $60
  jr nc, @+$1d                                    ; $50a5: $30 $1b

  rlca                                            ; $50a7: $07
  inc h                                           ; $50a8: $24
  ld h, $02                                       ; $50a9: $26 $02
  dec h                                           ; $50ab: $25

jr_006_50ac:
  ld l, b                                         ; $50ac: $68
  jr nc, jr_006_50cb                              ; $50ad: $30 $1c

  ld [$2725], sp                                  ; $50af: $08 $25 $27
  ld [bc], a                                      ; $50b2: $02
  ld h, $70                                       ; $50b3: $26 $70
  jr nc, jr_006_50d4                              ; $50b5: $30 $1d

  add hl, bc                                      ; $50b7: $09
  ld h, $1e                                       ; $50b8: $26 $1e
  ld [bc], a                                      ; $50ba: $02
  daa                                             ; $50bb: $27

  db $01, $2c, $94, $01

  db $01                                          ; $50c0: $01
  nop                                             ; $50c1: $00

  db $00

  nop                                             ; $50c3: $00

  db $00, $2c, $8c, $00, $00, $01

  db $01                                          ; $50ca: $01

jr_006_50cb:
  nop                                             ; $50cb: $00

  db $01

  nop                                             ; $50cd: $00
  and e                                           ; $50ce: $a3
  sbc h                                           ; $50cf: $9c
  nop                                             ; $50d0: $00
  nop                                             ; $50d1: $00
  nop                                             ; $50d2: $00
  nop                                             ; $50d3: $00

jr_006_50d4:
  nop                                             ; $50d4: $00
  nop                                             ; $50d5: $00

  db $00, $0a, $2c, $02, $01

  nop                                             ; $50db: $00

  db $00

  nop                                             ; $50dd: $00

  db $00, $0a, $34, $00

  ld [bc], a                                      ; $50e2: $02
  ld bc, $0001                                    ; $50e3: $01 $01 $00

  db $01

  ld a, [bc]                                      ; $50e7: $0a
  inc a                                           ; $50e8: $3c
  ld bc, $0200                                    ; $50e9: $01 $00 $02
  ld [bc], a                                      ; $50ec: $02
  nop                                             ; $50ed: $00
  ld [bc], a                                      ; $50ee: $02

Call_006_50ef:
  ld a, [hl+]                                     ; $50ef: $2a

Call_006_50f0:
  ldh [$ffd3], a                                  ; $50f0: $e0 $d3
  ld a, l                                         ; $50f2: $7d
  ldh [$ffd4], a                                  ; $50f3: $e0 $d4
  ld a, h                                         ; $50f5: $7c
  ldh [$ffd5], a                                  ; $50f6: $e0 $d5
  ld a, $07                                       ; $50f8: $3e $07
  jp Jump_006_5163                                ; $50fa: $c3 $63 $51


Call_006_50fd:
Jump_006_50fd:
  push bc                                         ; $50fd: $c5
  ld c, a                                         ; $50fe: $4f
  call Call_006_50ef                              ; $50ff: $cd $ef $50
  ld b, $00                                       ; $5102: $06 $00

jr_006_5104:
  ld a, b                                         ; $5104: $78
  ldh [$ffd3], a                                  ; $5105: $e0 $d3
  ld a, $07                                       ; $5107: $3e $07
  call Call_006_5163                              ; $5109: $cd $63 $51
  cp c                                            ; $510c: $b9
  jr z, jr_006_5115                               ; $510d: $28 $06

  inc b                                           ; $510f: $04
  call z, Call_000_0a6c                           ; $5110: $cc $6c $0a
  jr jr_006_5104                                  ; $5113: $18 $ef

jr_006_5115:
  pop bc                                          ; $5115: $c1
  ret                                             ; $5116: $c9


Call_006_5117:
  push bc                                         ; $5117: $c5
  ldh a, [$ffd3]                                  ; $5118: $f0 $d3
  ld b, a                                         ; $511a: $47
  call Call_006_512b                              ; $511b: $cd $2b $51
  ldh a, [$ffd3]                                  ; $511e: $f0 $d3
  cp b                                            ; $5120: $b8
  pop bc                                          ; $5121: $c1
  ret z                                           ; $5122: $c8

  push af                                         ; $5123: $f5
  ld a, $01                                       ; $5124: $3e $01
  call Call_000_392b                              ; $5126: $cd $2b $39
  pop af                                          ; $5129: $f1
  ret                                             ; $512a: $c9


Call_006_512b:
Jump_006_512b:
  ld a, $02                                       ; $512b: $3e $02
  call Call_006_5163                              ; $512d: $cd $63 $51
  ldh a, [$ffa6]                                  ; $5130: $f0 $a6
  bit 3, a                                        ; $5132: $cb $5f
  jr nz, jr_006_514b                              ; $5134: $20 $15

  bit 6, a                                        ; $5136: $cb $77
  jr nz, jr_006_514e                              ; $5138: $20 $14

  bit 7, a                                        ; $513a: $cb $7f
  inc hl                                          ; $513c: $23
  jr nz, jr_006_514e                              ; $513d: $20 $0f

  bit 5, a                                        ; $513f: $cb $6f
  inc hl                                          ; $5141: $23
  jr nz, jr_006_514e                              ; $5142: $20 $0a

  bit 4, a                                        ; $5144: $cb $67
  inc hl                                          ; $5146: $23
  jr nz, jr_006_514e                              ; $5147: $20 $05

  jr jr_006_5155                                  ; $5149: $18 $0a

jr_006_514b:
  call Call_006_515a                              ; $514b: $cd $5a $51

jr_006_514e:
  ld a, [hl]                                      ; $514e: $7e
  cp $ff                                          ; $514f: $fe $ff
  jr z, jr_006_5155                               ; $5151: $28 $02

  ldh [$ffd3], a                                  ; $5153: $e0 $d3

jr_006_5155:
  ld a, $07                                       ; $5155: $3e $07
  jp Jump_006_5163                                ; $5157: $c3 $63 $51


Call_006_515a:
  ld hl, $ffd4                                    ; $515a: $21 $d4 $ff
  ld a, [hl+]                                     ; $515d: $2a
  ld h, [hl]                                      ; $515e: $66
  ld l, a                                         ; $515f: $6f
  dec hl                                          ; $5160: $2b
  ld a, [hl]                                      ; $5161: $7e
  ret                                             ; $5162: $c9


Call_006_5163:
Jump_006_5163:
  push af                                         ; $5163: $f5
  ldh a, [$ffd3]                                  ; $5164: $f0 $d3
  ld e, a                                         ; $5166: $5f
  ld d, $00                                       ; $5167: $16 $00
  sla e                                           ; $5169: $cb $23
  rl d                                            ; $516b: $cb $12
  sla e                                           ; $516d: $cb $23
  rl d                                            ; $516f: $cb $12
  sla e                                           ; $5171: $cb $23
  rl d                                            ; $5173: $cb $12
  ld hl, $ffd4                                    ; $5175: $21 $d4 $ff
  ld a, [hl+]                                     ; $5178: $2a
  ld h, [hl]                                      ; $5179: $66
  ld l, a                                         ; $517a: $6f
  add hl, de                                      ; $517b: $19
  pop af                                          ; $517c: $f1
  jp ResolveIndexedPointer8                                       ; $517d: $c3 $08 $00


  xor a                                           ; $5180: $af
  call Call_006_5163                              ; $5181: $cd $63 $51
  ld e, a                                         ; $5184: $5f
  inc hl                                          ; $5185: $23
  ld d, [hl]                                      ; $5186: $56
  ret                                             ; $5187: $c9


  ld a, $06                                       ; $5188: $3e $06
  jp Jump_006_5163                                ; $518a: $c3 $63 $51


  ld a, $08                                       ; $518d: $3e $08
  ld [$cb2d], a                                   ; $518f: $ea $2d $cb
  push de                                         ; $5192: $d5
  ldh a, [rSVBK]                                  ; $5193: $f0 $70
  push af                                         ; $5195: $f5
  ld a, $02                                       ; $5196: $3e $02
  ldh [rSVBK], a                                  ; $5198: $e0 $70
  ld de, $da80                                    ; $519a: $11 $80 $da
  ld hl, $d080                                    ; $519d: $21 $80 $d0
  call Call_000_020c                              ; $51a0: $cd $0c $02
  pop af                                          ; $51a3: $f1
  ldh [rSVBK], a                                  ; $51a4: $e0 $70
  pop de                                          ; $51a6: $d1
  ld a, d                                         ; $51a7: $7a
  call Call_000_3427                              ; $51a8: $cd $27 $34
  dec b                                           ; $51ab: $05
  di                                              ; $51ac: $f3
  ld [hl], c                                      ; $51ad: $71
  call Call_000_33f3                              ; $51ae: $cd $f3 $33
  ld bc, $47d5                                    ; $51b1: $01 $d5 $47
  jp StoreCPUFlags                                ; $51b4: $c3 $39 $00


  ld a, [$cc1e]                                   ; $51b7: $fa $1e $cc
  or a                                            ; $51ba: $b7
  jp StoreCPUFlags                                ; $51bb: $c3 $39 $00


  ld a, $01                                       ; $51be: $3e $01
  ld [$caf3], a                                   ; $51c0: $ea $f3 $ca
  ret                                             ; $51c3: $c9


  xor a                                           ; $51c4: $af
  ld [$caf3], a                                   ; $51c5: $ea $f3 $ca
  ret                                             ; $51c8: $c9


  ld bc, $803f                                    ; $51c9: $01 $3f $80
  nop                                             ; $51cc: $00
  nop                                             ; $51cd: $00
  nop                                             ; $51ce: $00
  sbc c                                           ; $51cf: $99
  ld h, $00                                       ; $51d0: $26 $00
  ld [bc], a                                      ; $51d2: $02
  nop                                             ; $51d3: $00
  ld [bc], a                                      ; $51d4: $02
  ld a, $49                                       ; $51d5: $3e $49
  jp Jump_000_261e                                ; $51d7: $c3 $1e $26


  ret                                             ; $51da: $c9


  ldh a, [rSVBK]                                  ; $51db: $f0 $70
  push af                                         ; $51dd: $f5
  ld a, $02                                       ; $51de: $3e $02
  ldh [rSVBK], a                                  ; $51e0: $e0 $70
  ld b, $80                                       ; $51e2: $06 $80
  ld hl, $d080                                    ; $51e4: $21 $80 $d0

jr_006_51e7:
  ld a, [hl+]                                     ; $51e7: $2a
  ld d, [hl]                                      ; $51e8: $56
  ld e, a                                         ; $51e9: $5f
  dec hl                                          ; $51ea: $2b
  push hl                                         ; $51eb: $e5
  call Call_000_33f3                              ; $51ec: $cd $f3 $33
  inc bc                                          ; $51ef: $03
  ld h, e                                         ; $51f0: $63
  ld a, d                                         ; $51f1: $7a
  srl h                                           ; $51f2: $cb $3c
  srl l                                           ; $51f4: $cb $3d
  srl a                                           ; $51f6: $cb $3f
  call Call_000_33f3                              ; $51f8: $cd $f3 $33
  inc bc                                          ; $51fb: $03
  ld [hl], a                                      ; $51fc: $77
  ld a, d                                         ; $51fd: $7a
  pop hl                                          ; $51fe: $e1
  ld [hl], e                                      ; $51ff: $73
  inc hl                                          ; $5200: $23
  ld [hl], d                                      ; $5201: $72
  inc hl                                          ; $5202: $23
  dec b                                           ; $5203: $05
  jr nz, jr_006_51e7                              ; $5204: $20 $e1

  call Call_000_28b5                              ; $5206: $cd $b5 $28
  pop af                                          ; $5209: $f1
  ldh [rSVBK], a                                  ; $520a: $e0 $70
  ld a, $00                                       ; $520c: $3e $00
  call Call_000_392b                              ; $520e: $cd $2b $39
  ld a, $b7                                       ; $5211: $3e $b7
  call Call_000_04e0                              ; $5213: $cd $e0 $04
  ret                                             ; $5216: $c9


  ldh a, [$ffa6]                                  ; $5217: $f0 $a6
  and $08                                         ; $5219: $e6 $08
  ret z                                           ; $521b: $c8

  ld a, $00                                       ; $521c: $3e $00
  jp Jump_000_392b                                ; $521e: $c3 $2b $39


  ret                                             ; $5221: $c9


  ld a, [$cbde]                                   ; $5222: $fa $de $cb
  or a                                            ; $5225: $b7
  ret z                                           ; $5226: $c8

  ldh a, [$ffa6]                                  ; $5227: $f0 $a6
  cp $04                                          ; $5229: $fe $04
  jr z, jr_006_522f                               ; $522b: $28 $02

  xor a                                           ; $522d: $af
  ret                                             ; $522e: $c9


jr_006_522f:
  ld hl, $cbd6                                    ; $522f: $21 $d6 $cb
  ld [hl], $00                                    ; $5232: $36 $00
  inc hl                                          ; $5234: $23
  ld [hl], $00                                    ; $5235: $36 $00
  ld a, $3d                                       ; $5237: $3e $3d
  call Call_000_261e                              ; $5239: $cd $1e $26
  ld a, $01                                       ; $523c: $3e $01
  or a                                            ; $523e: $b7
  ret                                             ; $523f: $c9


  ldh a, [$ffa6]                                  ; $5240: $f0 $a6
  and $08                                         ; $5242: $e6 $08
  ret z                                           ; $5244: $c8

  call Call_000_38d6                              ; $5245: $cd $d6 $38
  ld a, $48                                       ; $5248: $3e $48
  call Call_000_261e                              ; $524a: $cd $1e $26
  ld a, $01                                       ; $524d: $3e $01
  or a                                            ; $524f: $b7
  ret                                             ; $5250: $c9


  ldh a, [rSVBK]                                  ; $5251: $f0 $70
  push af                                         ; $5253: $f5
  ld a, $02                                       ; $5254: $3e $02
  ldh [rSVBK], a                                  ; $5256: $e0 $70
  ld de, $da80                                    ; $5258: $11 $80 $da
  ld hl, $d080                                    ; $525b: $21 $80 $d0
  ld c, $80                                       ; $525e: $0e $80
  call Call_000_12a6                              ; $5260: $cd $a6 $12
  ld b, $80                                       ; $5263: $06 $80
  ld hl, $d080                                    ; $5265: $21 $80 $d0

jr_006_5268:
  ld a, [hl+]                                     ; $5268: $2a
  ld d, [hl]                                      ; $5269: $56
  ld e, a                                         ; $526a: $5f
  dec hl                                          ; $526b: $2b
  push hl                                         ; $526c: $e5
  call Call_000_33f3                              ; $526d: $cd $f3 $33
  inc bc                                          ; $5270: $03
  ld h, e                                         ; $5271: $63
  ld a, d                                         ; $5272: $7a
  srl h                                           ; $5273: $cb $3c
  srl l                                           ; $5275: $cb $3d
  srl a                                           ; $5277: $cb $3f
  call Call_000_33f3                              ; $5279: $cd $f3 $33
  inc bc                                          ; $527c: $03
  ld [hl], a                                      ; $527d: $77
  ld a, d                                         ; $527e: $7a
  pop hl                                          ; $527f: $e1
  ld [hl], e                                      ; $5280: $73
  inc hl                                          ; $5281: $23
  ld [hl], d                                      ; $5282: $72
  inc hl                                          ; $5283: $23
  dec b                                           ; $5284: $05
  jr nz, jr_006_5268                              ; $5285: $20 $e1

  call Call_000_28b5                              ; $5287: $cd $b5 $28
  pop af                                          ; $528a: $f1
  ldh [rSVBK], a                                  ; $528b: $e0 $70
  ld a, $00                                       ; $528d: $3e $00
  jp Jump_000_392b                                ; $528f: $c3 $2b $39


  ld c, e                                         ; $5292: $4b
  ld c, h                                         ; $5293: $4c
  dec de                                          ; $5294: $1b
  jr nc, @+$1c                                    ; $5295: $30 $1a

  nop                                             ; $5297: $00
  jr nc, @+$34                                    ; $5298: $30 $32

  ldh a, [$ffa6]                                  ; $529a: $f0 $a6
  and $08                                         ; $529c: $e6 $08
  ret z                                           ; $529e: $c8

  ld hl, $5292                                    ; $529f: $21 $92 $52
  ld a, [$cbdc]                                   ; $52a2: $fa $dc $cb
  rst $08                                         ; $52a5: $cf
  call Call_000_394b                              ; $52a6: $cd $4b $39
  ldh a, [rSVBK]                                  ; $52a9: $f0 $70
  push af                                         ; $52ab: $f5
  ld a, $02                                       ; $52ac: $3e $02
  ldh [rSVBK], a                                  ; $52ae: $e0 $70
  ldh a, [$ffca]                                  ; $52b0: $f0 $ca
  call Call_000_33f3                              ; $52b2: $cd $f3 $33
  nop                                             ; $52b5: $00
  pop bc                                          ; $52b6: $c1
  dec h                                           ; $52b7: $25
  ld de, $d080                                    ; $52b8: $11 $80 $d0
  ld hl, $da80                                    ; $52bb: $21 $80 $da
  ld c, $80                                       ; $52be: $0e $80
  call Call_000_12a6                              ; $52c0: $cd $a6 $12
  call Call_000_28b5                              ; $52c3: $cd $b5 $28
  pop af                                          ; $52c6: $f1
  ldh [rSVBK], a                                  ; $52c7: $e0 $70
  ld a, $00                                       ; $52c9: $3e $00
  jp Jump_000_392b                                ; $52cb: $c3 $2b $39


  ret                                             ; $52ce: $c9


  ld hl, $51c9                                    ; $52cf: $21 $c9 $51
  jp Jump_000_2952                                ; $52d2: $c3 $52 $29


  ret                                             ; $52d5: $c9


  ret                                             ; $52d6: $c9


  ccf                                             ; $52d7: $3f
  ld b, e                                         ; $52d8: $43
  ld b, h                                         ; $52d9: $44
  ld b, c                                         ; $52da: $41
  ld b, l                                         ; $52db: $45
  ld b, a                                         ; $52dc: $47
  ld b, d                                         ; $52dd: $42
  ld b, [hl]                                      ; $52de: $46
  or [hl]                                         ; $52df: $b6
  ld [hl], b                                      ; $52e0: $70
  ld sp, $9c71                                    ; $52e1: $31 $71 $9c
  ld [hl], c                                      ; $52e4: $71
  push hl                                         ; $52e5: $e5
  ld [hl], c                                      ; $52e6: $71
  ld b, b                                         ; $52e7: $40
  ld [hl], d                                      ; $52e8: $72
  and e                                           ; $52e9: $a3
  ld [hl], d                                      ; $52ea: $72
  ld b, e                                         ; $52eb: $43
  ld [hl], e                                      ; $52ec: $73
  sub d                                           ; $52ed: $92
  ld [hl], e                                      ; $52ee: $73
  rst $38                                         ; $52ef: $ff
  ld d, d                                         ; $52f0: $52
  rla                                             ; $52f1: $17
  ld d, e                                         ; $52f2: $53
  inc hl                                          ; $52f3: $23
  ld d, e                                         ; $52f4: $53
  dec bc                                          ; $52f5: $0b
  ld d, e                                         ; $52f6: $53
  cpl                                             ; $52f7: $2f
  ld d, e                                         ; $52f8: $53
  dec sp                                          ; $52f9: $3b
  ld d, e                                         ; $52fa: $53
  ld b, a                                         ; $52fb: $47
  ld d, e                                         ; $52fc: $53
  ld d, e                                         ; $52fd: $53
  ld d, e                                         ; $52fe: $53
  ld bc, $8046                                    ; $52ff: $01 $46 $80
  nop                                             ; $5302: $00
  nop                                             ; $5303: $00
  nop                                             ; $5304: $00
  sbc c                                           ; $5305: $99
  ld h, $00                                       ; $5306: $26 $00
  ld [bc], a                                      ; $5308: $02
  ld bc, $0102                                    ; $5309: $01 $02 $01
  ld b, a                                         ; $530c: $47
  add b                                           ; $530d: $80
  nop                                             ; $530e: $00
  nop                                             ; $530f: $00
  nop                                             ; $5310: $00
  sbc c                                           ; $5311: $99
  ld h, $00                                       ; $5312: $26 $00
  ld [bc], a                                      ; $5314: $02
  ld bc, $0102                                    ; $5315: $01 $02 $01
  ld c, d                                         ; $5318: $4a
  add b                                           ; $5319: $80
  nop                                             ; $531a: $00
  nop                                             ; $531b: $00
  nop                                             ; $531c: $00
  sbc c                                           ; $531d: $99
  ld h, $00                                       ; $531e: $26 $00
  ld [bc], a                                      ; $5320: $02
  ld bc, $0102                                    ; $5321: $01 $02 $01
  ld c, b                                         ; $5324: $48
  add b                                           ; $5325: $80
  nop                                             ; $5326: $00
  nop                                             ; $5327: $00
  nop                                             ; $5328: $00
  sbc c                                           ; $5329: $99
  ld h, $00                                       ; $532a: $26 $00
  ld [bc], a                                      ; $532c: $02
  ld bc, $0102                                    ; $532d: $01 $02 $01
  ld c, c                                         ; $5330: $49
  add b                                           ; $5331: $80
  nop                                             ; $5332: $00
  nop                                             ; $5333: $00
  nop                                             ; $5334: $00
  sbc c                                           ; $5335: $99
  ld h, $00                                       ; $5336: $26 $00
  ld [bc], a                                      ; $5338: $02
  ld bc, $0102                                    ; $5339: $01 $02 $01
  ld c, l                                         ; $533c: $4d
  add b                                           ; $533d: $80
  nop                                             ; $533e: $00
  nop                                             ; $533f: $00
  nop                                             ; $5340: $00
  sbc c                                           ; $5341: $99
  ld h, $00                                       ; $5342: $26 $00
  ld [bc], a                                      ; $5344: $02
  ld bc, $0102                                    ; $5345: $01 $02 $01
  ld c, e                                         ; $5348: $4b
  add b                                           ; $5349: $80
  nop                                             ; $534a: $00
  nop                                             ; $534b: $00
  nop                                             ; $534c: $00
  sbc c                                           ; $534d: $99
  ld h, $00                                       ; $534e: $26 $00
  ld [bc], a                                      ; $5350: $02
  ld bc, $0102                                    ; $5351: $01 $02 $01
  ld c, h                                         ; $5354: $4c
  add b                                           ; $5355: $80
  nop                                             ; $5356: $00
  nop                                             ; $5357: $00
  nop                                             ; $5358: $00
  sbc c                                           ; $5359: $99
  ld h, $00                                       ; $535a: $26 $00
  ld [bc], a                                      ; $535c: $02
  ld bc, $1002                                    ; $535d: $01 $02 $10
  ld bc, $5366                                    ; $5360: $01 $66 $53
  nop                                             ; $5363: $00
  ld bc, $ca40                                    ; $5364: $01 $40 $ca
  ret nc                                          ; $5367: $d0

  db $10                                          ; $5368: $10
  ld bc, $536f                                    ; $5369: $01 $6f $53
  inc d                                           ; $536c: $14
  ld bc, $2a40                                    ; $536d: $01 $40 $2a
  pop de                                          ; $5370: $d1
  ld c, d                                         ; $5371: $4a
  pop de                                          ; $5372: $d1
  ld l, d                                         ; $5373: $6a
  pop de                                          ; $5374: $d1
  adc d                                           ; $5375: $8a
  pop de                                          ; $5376: $d1
  db $10                                          ; $5377: $10
  ld bc, $537e                                    ; $5378: $01 $7e $53
  ld [hl-], a                                     ; $537b: $32
  ld bc, $e241                                    ; $537c: $01 $41 $e2
  pop de                                          ; $537f: $d1
  ld [bc], a                                      ; $5380: $02
  jp nc, $0110                                    ; $5381: $d2 $10 $01

  sub b                                           ; $5384: $90
  ld d, e                                         ; $5385: $53
  ld b, d                                         ; $5386: $42
  ld bc, $10c0                                    ; $5387: $01 $c0 $10
  ld bc, $5390                                    ; $538a: $01 $90 $53
  ld e, b                                         ; $538d: $58
  ld bc, $cdc0                                    ; $538e: $01 $c0 $cd
  pop de                                          ; $5391: $d1
  pop de                                          ; $5392: $d1
  pop de                                          ; $5393: $d1
  db $ed                                          ; $5394: $ed
  pop de                                          ; $5395: $d1
  pop af                                          ; $5396: $f1
  pop de                                          ; $5397: $d1
  dec c                                           ; $5398: $0d
  jp nc, $d211                                    ; $5399: $d2 $11 $d2

  ld hl, $52df                                    ; $539c: $21 $df $52
  ld a, [$cbdc]                                   ; $539f: $fa $dc $cb
  call ResolveIndexedPointer16                              ; $53a2: $cd $8b $31
  ld a, $3e                                       ; $53a5: $3e $3e
  call Call_000_33f3                              ; $53a7: $cd $f3 $33
  add hl, bc                                      ; $53aa: $09
  adc e                                           ; $53ab: $8b
  ld [hl], h                                      ; $53ac: $74
  xor a                                           ; $53ad: $af
  ld [$cbdd], a                                   ; $53ae: $ea $dd $cb
  ld [$cb3f], a                                   ; $53b1: $ea $3f $cb
  ld hl, $52ef                                    ; $53b4: $21 $ef $52
  ld a, [$cbdc]                                   ; $53b7: $fa $dc $cb
  call Call_000_317a                              ; $53ba: $cd $7a $31
  ld a, [hl+]                                     ; $53bd: $2a
  ld h, [hl]                                      ; $53be: $66
  ld l, a                                         ; $53bf: $6f
  jp Jump_000_2952                                ; $53c0: $c3 $52 $29


  call Call_000_38d6                              ; $53c3: $cd $d6 $38
  ld a, $4a                                       ; $53c6: $3e $4a
  call Call_000_394b                              ; $53c8: $cd $4b $39
  ld hl, $7b8d                                    ; $53cb: $21 $8d $7b
  call Call_000_33f3                              ; $53ce: $cd $f3 $33
  inc bc                                          ; $53d1: $03
  adc b                                           ; $53d2: $88
  ld a, [hl]                                      ; $53d3: $7e
  ld hl, $535f                                    ; $53d4: $21 $5f $53
  call Call_000_3013                              ; $53d7: $cd $13 $30
  ld a, $94                                       ; $53da: $3e $94
  ld [$c159], a                                   ; $53dc: $ea $59 $c1
  ld a, $01                                       ; $53df: $3e $01
  ld [$c1a2], a                                   ; $53e1: $ea $a2 $c1
  ld a, [$cbdc]                                   ; $53e4: $fa $dc $cb
  ld hl, $0019                                    ; $53e7: $21 $19 $00
  call Call_000_3173                              ; $53ea: $cd $73 $31
  call Call_000_33f3                              ; $53ed: $cd $f3 $33
  ld bc, $6628                                    ; $53f0: $01 $28 $66
  ld hl, $5377                                    ; $53f3: $21 $77 $53
  call Call_000_3013                              ; $53f6: $cd $13 $30
  ld a, $40                                       ; $53f9: $3e $40
  ld [$c159], a                                   ; $53fb: $ea $59 $c1
  ld a, $02                                       ; $53fe: $3e $02
  ld [$c1a2], a                                   ; $5400: $ea $a2 $c1
  ld hl, $0040                                    ; $5403: $21 $40 $00
  call Call_000_33f3                              ; $5406: $cd $f3 $33
  ld bc, $6628                                    ; $5409: $01 $28 $66
  xor a                                           ; $540c: $af
  ld hl, $4696                                    ; $540d: $21 $96 $46
  call Call_006_50fd                              ; $5410: $cd $fd $50
  jp Jump_006_5456                                ; $5413: $c3 $56 $54


  ldh a, [$ffa6]                                  ; $5416: $f0 $a6
  bit 0, a                                        ; $5418: $cb $47
  jr nz, jr_006_5431                              ; $541a: $20 $15

  bit 1, a                                        ; $541c: $cb $4f
  jr nz, jr_006_544b                              ; $541e: $20 $2b

  and $c0                                         ; $5420: $e6 $c0
  ret z                                           ; $5422: $c8

  call Call_006_5117                              ; $5423: $cd $17 $51
  ld hl, $cbdd                                    ; $5426: $21 $dd $cb
  ldh a, [$ffd3]                                  ; $5429: $f0 $d3
  cp [hl]                                         ; $542b: $be
  ret z                                           ; $542c: $c8

  ld [hl], a                                      ; $542d: $77
  jp Jump_006_5456                                ; $542e: $c3 $56 $54


jr_006_5431:
  ld a, $00                                       ; $5431: $3e $00
  call Call_000_392b                              ; $5433: $cd $2b $39
  ldh a, [$ffd3]                                  ; $5436: $f0 $d3
  cp $03                                          ; $5438: $fe $03
  jr nz, jr_006_5441                              ; $543a: $20 $05

  ld a, $3b                                       ; $543c: $3e $3b
  jp Jump_000_261e                                ; $543e: $c3 $1e $26


jr_006_5441:
  ld a, [$cbdc]                                   ; $5441: $fa $dc $cb
  ld hl, $52d7                                    ; $5444: $21 $d7 $52
  rst $08                                         ; $5447: $cf
  jp Jump_000_261e                                ; $5448: $c3 $1e $26


jr_006_544b:
  ld a, $03                                       ; $544b: $3e $03
  call Call_000_392b                              ; $544d: $cd $2b $39
  ld a, [$cbde]                                   ; $5450: $fa $de $cb
  jp Jump_000_261e                                ; $5453: $c3 $1e $26


Jump_006_5456:
  rst $18                                         ; $5456: $df
  ld hl, $5368                                    ; $5457: $21 $68 $53
  call Call_000_3013                              ; $545a: $cd $13 $30
  ld a, $94                                       ; $545d: $3e $94
  ld [$c159], a                                   ; $545f: $ea $59 $c1
  ld a, $01                                       ; $5462: $3e $01
  ld [$c1a2], a                                   ; $5464: $ea $a2 $c1
  ldh a, [$ffd3]                                  ; $5467: $f0 $d3
  ld c, a                                         ; $5469: $4f
  ld hl, $0034                                    ; $546a: $21 $34 $00
  ld b, $00                                       ; $546d: $06 $00

jr_006_546f:
  ld a, c                                         ; $546f: $79
  cp b                                            ; $5470: $b8
  jr z, jr_006_547b                               ; $5471: $28 $08

  call Call_000_33f3                              ; $5473: $cd $f3 $33
  ld bc, $6628                                    ; $5476: $01 $28 $66
  jr jr_006_548b                                  ; $5479: $18 $10

jr_006_547b:
  ld a, $12                                       ; $547b: $3e $12
  ld [$c15a], a                                   ; $547d: $ea $5a $c1
  call Call_000_33f3                              ; $5480: $cd $f3 $33
  ld bc, $6628                                    ; $5483: $01 $28 $66
  ld a, $10                                       ; $5486: $3e $10
  ld [$c15a], a                                   ; $5488: $ea $5a $c1

jr_006_548b:
  ld de, $0003                                    ; $548b: $11 $03 $00
  add hl, de                                      ; $548e: $19
  inc b                                           ; $548f: $04
  ld a, b                                         ; $5490: $78
  cp $04                                          ; $5491: $fe $04
  jr nz, jr_006_546f                              ; $5493: $20 $da

  rst $18                                         ; $5495: $df
  ld c, $80                                       ; $5496: $0e $80
  ld de, $0308                                    ; $5498: $11 $08 $03
  ld hl, $01cb                                    ; $549b: $21 $cb $01
  call Call_000_149f                              ; $549e: $cd $9f $14
  ldh a, [$ffd3]                                  ; $54a1: $f0 $d3
  cp $03                                          ; $54a3: $fe $03
  jp z, Jump_006_54f2                             ; $54a5: $ca $f2 $54

  ld hl, $5382                                    ; $54a8: $21 $82 $53
  ld a, [$cb3f]                                   ; $54ab: $fa $3f $cb
  or a                                            ; $54ae: $b7
  jr z, jr_006_54b4                               ; $54af: $28 $03

  ld hl, $5389                                    ; $54b1: $21 $89 $53

jr_006_54b4:
  xor $01                                         ; $54b4: $ee $01
  ld [$cb3f], a                                   ; $54b6: $ea $3f $cb
  call Call_000_3013                              ; $54b9: $cd $13 $30
  ld a, $40                                       ; $54bc: $3e $40
  ld [$c159], a                                   ; $54be: $ea $59 $c1
  ld a, $01                                       ; $54c1: $3e $01
  ld [$c1a2], a                                   ; $54c3: $ea $a2 $c1
  ld a, [$cbdc]                                   ; $54c6: $fa $dc $cb
  ld c, a                                         ; $54c9: $4f
  ld b, $00                                       ; $54ca: $06 $00

jr_006_54cc:
  push bc                                         ; $54cc: $c5
  ld a, [$cbdd]                                   ; $54cd: $fa $dd $cb
  call Call_000_33f3                              ; $54d0: $cd $f3 $33
  ld e, $c2                                       ; $54d3: $1e $c2
  ld d, [hl]                                      ; $54d5: $56
  ld a, [$cbdd]                                   ; $54d6: $fa $dd $cb
  call Call_000_33f3                              ; $54d9: $cd $f3 $33
  ld e, $9c                                       ; $54dc: $1e $9c
  ld d, [hl]                                      ; $54de: $56
  ld a, e                                         ; $54df: $7b
  or d                                            ; $54e0: $b2
  jr z, jr_006_54eb                               ; $54e1: $28 $08

  ld h, d                                         ; $54e3: $62
  ld l, e                                         ; $54e4: $6b
  call Call_000_33f3                              ; $54e5: $cd $f3 $33
  ld bc, $66ee                                    ; $54e8: $01 $ee $66

jr_006_54eb:
  pop bc                                          ; $54eb: $c1
  inc b                                           ; $54ec: $04
  ld a, $03                                       ; $54ed: $3e $03
  sub b                                           ; $54ef: $90
  jr nz, jr_006_54cc                              ; $54f0: $20 $da

Jump_006_54f2:
  rst $20                                         ; $54f2: $e7
  ret                                             ; $54f3: $c9


  db $f6, $55, $5a, $56, $be, $56, $22, $57, $16, $59, $86, $57, $4e, $58, $f6, $55
  db $7a, $59, $de, $59, $42, $5a, $36, $5c, $a6, $5a, $6e, $5b

  or $55                                          ; $5510: $f6 $55
  sbc d                                           ; $5512: $9a
  ld e, h                                         ; $5513: $5c
  cp $5c                                          ; $5514: $fe $5c
  ld h, d                                         ; $5516: $62
  ld e, l                                         ; $5517: $5d
  ld d, [hl]                                      ; $5518: $56
  ld e, a                                         ; $5519: $5f
  add $5d                                         ; $551a: $c6 $5d
  adc [hl]                                        ; $551c: $8e
  ld e, [hl]                                      ; $551d: $5e
  or $55                                          ; $551e: $f6 $55
  cp d                                            ; $5520: $ba
  ld e, a                                         ; $5521: $5f
  ld e, $60                                       ; $5522: $1e $60
  add d                                           ; $5524: $82
  ld h, b                                         ; $5525: $60
  halt                                            ; $5526: $76
  ld h, d                                         ; $5527: $62
  and $60                                         ; $5528: $e6 $60
  xor [hl]                                        ; $552a: $ae
  ld h, c                                         ; $552b: $61
  nop                                             ; $552c: $00
  nop                                             ; $552d: $00

  db $0d, $00, $27, $00, $4e, $00, $82, $00, $c3, $00, $11, $01, $6c, $01, $d4, $01
  db $49, $02, $cb, $02, $5a, $03, $f6, $03, $9f, $04, $55, $05, $18, $06, $e8, $06
  db $c5, $07, $af, $08, $a6, $09, $aa, $0a, $bb, $0b

  reti                                            ; $5558: $d9


  inc c                                           ; $5559: $0c
  inc b                                           ; $555a: $04
  ld c, $3c                                       ; $555b: $0e $3c
  rrca                                            ; $555d: $0f
  add c                                           ; $555e: $81
  db $10                                          ; $555f: $10
  db $d3                                          ; $5560: $d3
  ld de, $1332                                    ; $5561: $11 $32 $13
  sbc [hl]                                        ; $5564: $9e
  inc d                                           ; $5565: $14
  rla                                             ; $5566: $17
  ld d, $9d                                       ; $5567: $16 $9d
  rla                                             ; $5569: $17
  jr nc, jr_006_5585                              ; $556a: $30 $19

  ret nc                                          ; $556c: $d0

  ld a, [de]                                      ; $556d: $1a
  ld a, l                                         ; $556e: $7d
  inc e                                           ; $556f: $1c
  scf                                             ; $5570: $37
  ld e, $fe                                       ; $5571: $1e $fe
  rra                                             ; $5573: $1f
  jp nc, $b321                                    ; $5574: $d2 $21 $b3

  inc hl                                          ; $5577: $23
  and c                                           ; $5578: $a1
  dec h                                           ; $5579: $25
  sbc h                                           ; $557a: $9c
  daa                                             ; $557b: $27
  and h                                           ; $557c: $a4
  add hl, hl                                      ; $557d: $29
  cp c                                            ; $557e: $b9
  dec hl                                          ; $557f: $2b
  db $db                                          ; $5580: $db
  dec l                                           ; $5581: $2d
  ld a, [bc]                                      ; $5582: $0a
  jr nc, jr_006_55cb                              ; $5583: $30 $46

jr_006_5585:
  ld [hl-], a                                     ; $5585: $32
  adc a                                           ; $5586: $8f
  inc [hl]                                        ; $5587: $34
  push hl                                         ; $5588: $e5
  ld [hl], $48                                    ; $5589: $36 $48
  add hl, sp                                      ; $558b: $39
  cp b                                            ; $558c: $b8
  dec sp                                          ; $558d: $3b
  dec [hl]                                        ; $558e: $35
  ld a, $bf                                       ; $558f: $3e $bf
  ld b, b                                         ; $5591: $40
  ld d, [hl]                                      ; $5592: $56
  ld b, e                                         ; $5593: $43
  ld a, [$ab45]                                   ; $5594: $fa $45 $ab
  ld c, b                                         ; $5597: $48
  ld l, c                                         ; $5598: $69
  ld c, e                                         ; $5599: $4b
  inc [hl]                                        ; $559a: $34
  ld c, [hl]                                      ; $559b: $4e
  inc c                                           ; $559c: $0c
  ld d, c                                         ; $559d: $51
  pop af                                          ; $559e: $f1
  ld d, e                                         ; $559f: $53
  db $e3                                          ; $55a0: $e3
  ld d, [hl]                                      ; $55a1: $56
  ldh [c], a                                      ; $55a2: $e2
  ld e, c                                         ; $55a3: $59
  xor $5c                                         ; $55a4: $ee $5c
  rlca                                            ; $55a6: $07
  ld h, b                                         ; $55a7: $60
  dec l                                           ; $55a8: $2d
  ld h, e                                         ; $55a9: $63
  ld h, b                                         ; $55aa: $60
  ld h, [hl]                                      ; $55ab: $66
  and b                                           ; $55ac: $a0
  ld l, c                                         ; $55ad: $69
  db $ed                                          ; $55ae: $ed
  ld l, h                                         ; $55af: $6c
  ld b, a                                         ; $55b0: $47
  ld [hl], b                                      ; $55b1: $70
  xor [hl]                                        ; $55b2: $ae
  ld [hl], e                                      ; $55b3: $73
  ld [hl+], a                                     ; $55b4: $22
  ld [hl], a                                      ; $55b5: $77
  and e                                           ; $55b6: $a3
  ld a, d                                         ; $55b7: $7a
  ld sp, $cc7e                                    ; $55b8: $31 $7e $cc
  add c                                           ; $55bb: $81
  ld [hl], h                                      ; $55bc: $74
  add l                                           ; $55bd: $85
  add hl, hl                                      ; $55be: $29
  adc c                                           ; $55bf: $89
  db $eb                                          ; $55c0: $eb
  adc h                                           ; $55c1: $8c
  cp d                                            ; $55c2: $ba
  sub b                                           ; $55c3: $90
  sub [hl]                                        ; $55c4: $96
  sub h                                           ; $55c5: $94
  ld a, a                                         ; $55c6: $7f
  sbc b                                           ; $55c7: $98
  ld [hl], l                                      ; $55c8: $75
  sbc h                                           ; $55c9: $9c
  ld a, b                                         ; $55ca: $78

jr_006_55cb:
  and b                                           ; $55cb: $a0
  adc b                                           ; $55cc: $88
  and h                                           ; $55cd: $a4
  and l                                           ; $55ce: $a5
  xor b                                           ; $55cf: $a8
  rst $08                                         ; $55d0: $cf
  xor h                                           ; $55d1: $ac
  ld b, $b1                                       ; $55d2: $06 $b1
  ld c, d                                         ; $55d4: $4a
  or l                                            ; $55d5: $b5
  sbc e                                           ; $55d6: $9b
  cp c                                            ; $55d7: $b9
  ld sp, hl                                       ; $55d8: $f9
  cp l                                            ; $55d9: $bd
  ld h, h                                         ; $55da: $64
  jp nz, $c6dc                                    ; $55db: $c2 $dc $c6

  ld h, c                                         ; $55de: $61
  set 6, e                                        ; $55df: $cb $f3
  rst $08                                         ; $55e1: $cf
  sub d                                           ; $55e2: $92
  call nc, $d93e                                  ; $55e3: $d4 $3e $d9
  rst $30                                         ; $55e6: $f7
  db $dd                                          ; $55e7: $dd
  cp l                                            ; $55e8: $bd
  ldh [c], a                                      ; $55e9: $e2
  sub b                                           ; $55ea: $90
  rst $20                                         ; $55eb: $e7
  ld [hl], b                                      ; $55ec: $70
  db $ec                                          ; $55ed: $ec
  ld e, l                                         ; $55ee: $5d
  pop af                                          ; $55ef: $f1
  ld d, a                                         ; $55f0: $57
  or $5e                                          ; $55f1: $f6 $5e
  ei                                              ; $55f3: $fb
  rst $38                                         ; $55f4: $ff
  rst $38                                         ; $55f5: $ff

  db $06, $07, $07, $08, $08, $09, $09, $0a, $0a, $0b, $0b, $0c, $0c, $0d, $0e, $0f
  db $10, $11, $12, $13, $14

  dec d                                           ; $560b: $15
  ld d, $17                                       ; $560c: $16 $17
  jr jr_006_5629                                  ; $560e: $18 $19

  ld a, [de]                                      ; $5610: $1a
  dec de                                          ; $5611: $1b
  inc e                                           ; $5612: $1c
  dec e                                           ; $5613: $1d
  ld e, $1f                                       ; $5614: $1e $1f
  jr nz, jr_006_5639                              ; $5616: $20 $21

  ld [hl+], a                                     ; $5618: $22
  inc hl                                          ; $5619: $23
  inc h                                           ; $561a: $24
  dec h                                           ; $561b: $25
  ld h, $27                                       ; $561c: $26 $27
  jr z, jr_006_5648                               ; $561e: $28 $28

  add hl, hl                                      ; $5620: $29
  add hl, hl                                      ; $5621: $29
  ld a, [hl+]                                     ; $5622: $2a
  ld a, [hl+]                                     ; $5623: $2a
  ld a, [hl+]                                     ; $5624: $2a
  dec hl                                          ; $5625: $2b
  dec hl                                          ; $5626: $2b
  dec hl                                          ; $5627: $2b
  dec l                                           ; $5628: $2d

jr_006_5629:
  dec l                                           ; $5629: $2d
  dec l                                           ; $562a: $2d
  ld l, $2e                                       ; $562b: $2e $2e
  cpl                                             ; $562d: $2f
  cpl                                             ; $562e: $2f
  jr nc, @+$32                                    ; $562f: $30 $30

  ld [hl-], a                                     ; $5631: $32
  inc sp                                          ; $5632: $33
  inc [hl]                                        ; $5633: $34
  dec [hl]                                        ; $5634: $35
  ld [hl], $37                                    ; $5635: $36 $37
  jr c, jr_006_5672                               ; $5637: $38 $39

jr_006_5639:
  ld a, [hl-]                                     ; $5639: $3a
  dec sp                                          ; $563a: $3b
  inc a                                           ; $563b: $3c
  dec a                                           ; $563c: $3d
  ld a, $3f                                       ; $563d: $3e $3f
  ld b, b                                         ; $563f: $40
  ld b, b                                         ; $5640: $40
  ld b, b                                         ; $5641: $40
  ld b, b                                         ; $5642: $40
  ld b, b                                         ; $5643: $40
  ld b, b                                         ; $5644: $40
  ld b, b                                         ; $5645: $40
  ld b, c                                         ; $5646: $41
  ld b, c                                         ; $5647: $41

jr_006_5648:
  ld b, d                                         ; $5648: $42
  ld b, d                                         ; $5649: $42
  ld b, e                                         ; $564a: $43
  ld b, h                                         ; $564b: $44
  ld b, l                                         ; $564c: $45
  ld b, [hl]                                      ; $564d: $46
  ld c, b                                         ; $564e: $48
  ld c, d                                         ; $564f: $4a
  ld c, h                                         ; $5650: $4c
  ld c, [hl]                                      ; $5651: $4e
  ld d, b                                         ; $5652: $50
  ld d, d                                         ; $5653: $52
  ld d, h                                         ; $5654: $54
  ld d, [hl]                                      ; $5655: $56
  ld e, b                                         ; $5656: $58
  ld e, d                                         ; $5657: $5a
  ld e, [hl]                                      ; $5658: $5e
  ld h, d                                         ; $5659: $62

  db $04, $06, $07, $08, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15
  db $16, $17, $18, $19, $1a

  dec de                                          ; $566f: $1b
  inc e                                           ; $5670: $1c
  dec e                                           ; $5671: $1d

jr_006_5672:
  ld e, $1f                                       ; $5672: $1e $1f
  jr nz, @+$23                                    ; $5674: $20 $21

  ld [hl+], a                                     ; $5676: $22
  inc hl                                          ; $5677: $23
  inc h                                           ; $5678: $24
  inc h                                           ; $5679: $24
  dec h                                           ; $567a: $25
  dec h                                           ; $567b: $25
  ld h, $26                                       ; $567c: $26 $26
  daa                                             ; $567e: $27
  daa                                             ; $567f: $27
  jr z, @+$2a                                     ; $5680: $28 $28

  add hl, hl                                      ; $5682: $29
  add hl, hl                                      ; $5683: $29
  ld a, [hl+]                                     ; $5684: $2a
  ld a, [hl+]                                     ; $5685: $2a
  dec hl                                          ; $5686: $2b
  dec hl                                          ; $5687: $2b
  inc l                                           ; $5688: $2c
  inc l                                           ; $5689: $2c
  dec l                                           ; $568a: $2d
  dec l                                           ; $568b: $2d
  ld l, $2e                                       ; $568c: $2e $2e
  ld l, $2e                                       ; $568e: $2e $2e
  ld l, $2f                                       ; $5690: $2e $2f
  cpl                                             ; $5692: $2f
  cpl                                             ; $5693: $2f
  cpl                                             ; $5694: $2f
  cpl                                             ; $5695: $2f
  jr nc, @+$32                                    ; $5696: $30 $30

  jr nc, @+$32                                    ; $5698: $30 $30

  jr nc, @+$32                                    ; $569a: $30 $30

  jr nc, @+$32                                    ; $569c: $30 $30

  jr nc, @+$32                                    ; $569e: $30 $30

  ld sp, $3131                                    ; $56a0: $31 $31 $31
  ld sp, $3131                                    ; $56a3: $31 $31 $31
  ld sp, $3131                                    ; $56a6: $31 $31 $31
  ld sp, $3232                                    ; $56a9: $31 $32 $32
  ld [hl-], a                                     ; $56ac: $32
  ld [hl-], a                                     ; $56ad: $32
  ld [hl-], a                                     ; $56ae: $32
  ld [hl-], a                                     ; $56af: $32
  ld [hl-], a                                     ; $56b0: $32
  ld [hl-], a                                     ; $56b1: $32
  ld [hl-], a                                     ; $56b2: $32
  ld [hl-], a                                     ; $56b3: $32
  ld [hl-], a                                     ; $56b4: $32
  ld [hl-], a                                     ; $56b5: $32
  ld [hl-], a                                     ; $56b6: $32
  ld [hl-], a                                     ; $56b7: $32
  ld [hl-], a                                     ; $56b8: $32
  ld [hl-], a                                     ; $56b9: $32
  ld [hl-], a                                     ; $56ba: $32
  ld [hl-], a                                     ; $56bb: $32
  ld [hl-], a                                     ; $56bc: $32
  ld [hl-], a                                     ; $56bd: $32

  db $0a, $0b, $0b, $0c, $0c, $0d, $0d, $0e, $0e, $0f, $0f, $10, $10, $11, $11, $12
  db $12, $13, $13, $14, $14

  dec d                                           ; $56d3: $15
  dec d                                           ; $56d4: $15
  ld d, $16                                       ; $56d5: $16 $16
  rla                                             ; $56d7: $17
  rla                                             ; $56d8: $17
  jr jr_006_56f3                                  ; $56d9: $18 $18

  add hl, de                                      ; $56db: $19
  add hl, de                                      ; $56dc: $19
  ld a, [de]                                      ; $56dd: $1a
  ld a, [de]                                      ; $56de: $1a
  dec de                                          ; $56df: $1b
  dec de                                          ; $56e0: $1b
  inc e                                           ; $56e1: $1c
  inc e                                           ; $56e2: $1c
  dec e                                           ; $56e3: $1d
  dec e                                           ; $56e4: $1d
  ld e, $1f                                       ; $56e5: $1e $1f
  jr nz, jr_006_570a                              ; $56e7: $20 $21

  ld [hl+], a                                     ; $56e9: $22
  inc hl                                          ; $56ea: $23
  inc h                                           ; $56eb: $24
  dec h                                           ; $56ec: $25
  ld h, $27                                       ; $56ed: $26 $27
  jr z, jr_006_571a                               ; $56ef: $28 $29

  ld a, [hl+]                                     ; $56f1: $2a
  dec hl                                          ; $56f2: $2b

jr_006_56f3:
  inc l                                           ; $56f3: $2c
  dec l                                           ; $56f4: $2d
  ld l, $2f                                       ; $56f5: $2e $2f
  jr nc, @+$33                                    ; $56f7: $30 $31

  ld [hl-], a                                     ; $56f9: $32
  inc sp                                          ; $56fa: $33
  dec [hl]                                        ; $56fb: $35
  ld [hl], $38                                    ; $56fc: $36 $38
  add hl, sp                                      ; $56fe: $39
  dec sp                                          ; $56ff: $3b
  inc a                                           ; $5700: $3c
  ld a, $3f                                       ; $5701: $3e $3f
  ld b, c                                         ; $5703: $41
  ld b, d                                         ; $5704: $42
  ld b, h                                         ; $5705: $44
  ld b, l                                         ; $5706: $45
  ld b, a                                         ; $5707: $47
  ld c, b                                         ; $5708: $48
  ld c, d                                         ; $5709: $4a

jr_006_570a:
  ld c, e                                         ; $570a: $4b
  ld c, l                                         ; $570b: $4d
  ld c, [hl]                                      ; $570c: $4e
  ld d, b                                         ; $570d: $50
  ld d, d                                         ; $570e: $52
  ld d, h                                         ; $570f: $54
  ld d, [hl]                                      ; $5710: $56
  ld e, b                                         ; $5711: $58
  ld e, d                                         ; $5712: $5a
  ld e, h                                         ; $5713: $5c
  ld e, [hl]                                      ; $5714: $5e
  ld h, b                                         ; $5715: $60
  ld h, d                                         ; $5716: $62
  ld h, h                                         ; $5717: $64
  ld h, [hl]                                      ; $5718: $66
  ld l, b                                         ; $5719: $68

jr_006_571a:
  ld l, d                                         ; $571a: $6a
  ld l, h                                         ; $571b: $6c
  ld l, [hl]                                      ; $571c: $6e
  ld [hl], b                                      ; $571d: $70
  ld [hl], d                                      ; $571e: $72
  ld [hl], h                                      ; $571f: $74
  halt                                            ; $5720: $76
  ld a, b                                         ; $5721: $78

  db $05, $06, $06, $07, $07, $08, $08, $09, $09, $0a, $0a, $0b, $0b, $0c, $0c, $0d
  db $0d, $0e, $0e, $0f, $10

  ld de, $1312                                    ; $5737: $11 $12 $13
  inc d                                           ; $573a: $14
  dec d                                           ; $573b: $15
  ld d, $17                                       ; $573c: $16 $17
  jr jr_006_5759                                  ; $573e: $18 $19

  ld a, [de]                                      ; $5740: $1a
  dec de                                          ; $5741: $1b
  inc e                                           ; $5742: $1c
  dec e                                           ; $5743: $1d
  ld e, $1f                                       ; $5744: $1e $1f
  jr nz, jr_006_5769                              ; $5746: $20 $21

  ld [hl+], a                                     ; $5748: $22
  inc hl                                          ; $5749: $23
  inc h                                           ; $574a: $24
  ld h, $27                                       ; $574b: $26 $27
  add hl, hl                                      ; $574d: $29
  ld a, [hl+]                                     ; $574e: $2a
  inc l                                           ; $574f: $2c
  dec l                                           ; $5750: $2d
  cpl                                             ; $5751: $2f
  jr nc, @+$34                                    ; $5752: $30 $32

  inc [hl]                                        ; $5754: $34
  ld [hl], $38                                    ; $5755: $36 $38
  ld a, [hl-]                                     ; $5757: $3a
  inc a                                           ; $5758: $3c

jr_006_5759:
  ld a, $40                                       ; $5759: $3e $40
  ld b, d                                         ; $575b: $42
  ld b, h                                         ; $575c: $44
  ld b, [hl]                                      ; $575d: $46
  ld c, b                                         ; $575e: $48
  ld c, e                                         ; $575f: $4b
  ld c, l                                         ; $5760: $4d
  ld d, b                                         ; $5761: $50
  ld d, d                                         ; $5762: $52
  ld d, l                                         ; $5763: $55
  ld d, a                                         ; $5764: $57
  ld e, d                                         ; $5765: $5a
  ld e, h                                         ; $5766: $5c
  ld e, a                                         ; $5767: $5f
  ld h, c                                         ; $5768: $61

jr_006_5769:
  ld h, h                                         ; $5769: $64
  ld h, [hl]                                      ; $576a: $66
  ld l, c                                         ; $576b: $69
  ld l, e                                         ; $576c: $6b
  ld l, [hl]                                      ; $576d: $6e
  ld [hl], b                                      ; $576e: $70
  ld [hl], e                                      ; $576f: $73
  ld [hl], l                                      ; $5770: $75
  ld a, b                                         ; $5771: $78
  ld a, e                                         ; $5772: $7b
  ld a, [hl]                                      ; $5773: $7e
  add c                                           ; $5774: $81
  add h                                           ; $5775: $84
  add a                                           ; $5776: $87
  adc d                                           ; $5777: $8a
  adc l                                           ; $5778: $8d
  sub b                                           ; $5779: $90
  sub e                                           ; $577a: $93
  sub [hl]                                        ; $577b: $96
  sbc c                                           ; $577c: $99
  sbc h                                           ; $577d: $9c
  sbc a                                           ; $577e: $9f
  and d                                           ; $577f: $a2
  and l                                           ; $5780: $a5
  xor b                                           ; $5781: $a8
  xor e                                           ; $5782: $ab
  xor [hl]                                        ; $5783: $ae
  or c                                            ; $5784: $b1
  or h                                            ; $5785: $b4

  db $1e, $00, $29, $00, $34, $00, $3f, $00, $4a, $00, $55, $00, $60, $00, $6b, $00
  db $76, $00, $82, $00, $95, $00, $9e, $00, $a7, $00, $b0, $00, $b9, $00, $c2, $00
  db $cb, $00, $d4, $00, $dd, $00, $e6, $00, $ed, $00

  db $f4                                          ; $57b0: $f4
  nop                                             ; $57b1: $00
  ei                                              ; $57b2: $fb
  nop                                             ; $57b3: $00
  ld [bc], a                                      ; $57b4: $02
  ld bc, $0109                                    ; $57b5: $01 $09 $01
  db $10                                          ; $57b8: $10
  ld bc, $0117                                    ; $57b9: $01 $17 $01
  ld e, $01                                       ; $57bc: $1e $01
  dec h                                           ; $57be: $25
  ld bc, $012c                                    ; $57bf: $01 $2c $01
  inc [hl]                                        ; $57c2: $34
  ld bc, $013c                                    ; $57c3: $01 $3c $01
  ld b, h                                         ; $57c6: $44
  db $01, $4c, $01                     ; $57c7: $01 $4c $01
  ld d, h                                         ; $57ca: $54
  ld bc, $015c                                    ; $57cb: $01 $5c $01
  ld h, h                                         ; $57ce: $64
  ld bc, $016c                                    ; $57cf: $01 $6c $01
  ld [hl], h                                      ; $57d2: $74
  ld bc, $017c                                    ; $57d3: $01 $7c $01
  add e                                           ; $57d6: $83
  ld bc, $018a                                    ; $57d7: $01 $8a $01
  sub c                                           ; $57da: $91
  ld bc, $0198                                    ; $57db: $01 $98 $01
  sbc a                                           ; $57de: $9f
  ld bc, $01a6                                    ; $57df: $01 $a6 $01
  xor l                                           ; $57e2: $ad
  ld bc, $01b4                                    ; $57e3: $01 $b4 $01
  cp e                                            ; $57e6: $bb
  ld bc, $01c2                                    ; $57e7: $01 $c2 $01
  ret z                                           ; $57ea: $c8

  ld bc, $01ce                                    ; $57eb: $01 $ce $01
  call nc, $da01                                  ; $57ee: $d4 $01 $da
  ld bc, $01e0                                    ; $57f1: $01 $e0 $01
  and $01                                         ; $57f4: $e6 $01
  db $ec                                          ; $57f6: $ec
  ld bc, $01f2                                    ; $57f7: $01 $f2 $01
  ld hl, sp+$01                                   ; $57fa: $f8 $01
  cp $01                                          ; $57fc: $fe $01
  inc b                                           ; $57fe: $04
  ld [bc], a                                      ; $57ff: $02
  ld a, [bc]                                      ; $5800: $0a
  ld [bc], a                                      ; $5801: $02
  db $10                                          ; $5802: $10
  ld [bc], a                                      ; $5803: $02
  ld d, $02                                       ; $5804: $16 $02
  inc e                                           ; $5806: $1c
  ld [bc], a                                      ; $5807: $02
  ld [hl+], a                                     ; $5808: $22
  ld [bc], a                                      ; $5809: $02
  jr z, jr_006_580e                               ; $580a: $28 $02

  ld l, $02                                       ; $580c: $2e $02

jr_006_580e:
  inc [hl]                                        ; $580e: $34
  ld [bc], a                                      ; $580f: $02
  ld a, [hl-]                                     ; $5810: $3a
  ld [bc], a                                      ; $5811: $02
  ld b, b                                         ; $5812: $40
  ld [bc], a                                      ; $5813: $02
  ld b, [hl]                                      ; $5814: $46
  ld [bc], a                                      ; $5815: $02
  ld c, h                                         ; $5816: $4c
  ld [bc], a                                      ; $5817: $02
  ld d, d                                         ; $5818: $52
  ld [bc], a                                      ; $5819: $02
  ld e, b                                         ; $581a: $58
  ld [bc], a                                      ; $581b: $02
  ld e, [hl]                                      ; $581c: $5e
  ld [bc], a                                      ; $581d: $02
  ld h, h                                         ; $581e: $64
  ld [bc], a                                      ; $581f: $02
  ld l, d                                         ; $5820: $6a
  ld [bc], a                                      ; $5821: $02
  ld [hl], b                                      ; $5822: $70
  ld [bc], a                                      ; $5823: $02
  halt                                            ; $5824: $76
  ld [bc], a                                      ; $5825: $02
  ld a, h                                         ; $5826: $7c
  ld [bc], a                                      ; $5827: $02
  add d                                           ; $5828: $82
  ld [bc], a                                      ; $5829: $02
  adc b                                           ; $582a: $88
  ld [bc], a                                      ; $582b: $02
  adc [hl]                                        ; $582c: $8e
  ld [bc], a                                      ; $582d: $02
  sub h                                           ; $582e: $94
  ld [bc], a                                      ; $582f: $02
  sbc d                                           ; $5830: $9a
  ld [bc], a                                      ; $5831: $02
  and b                                           ; $5832: $a0
  ld [bc], a                                      ; $5833: $02
  and [hl]                                        ; $5834: $a6
  ld [bc], a                                      ; $5835: $02
  xor h                                           ; $5836: $ac
  ld [bc], a                                      ; $5837: $02
  or d                                            ; $5838: $b2
  ld [bc], a                                      ; $5839: $02
  cp b                                            ; $583a: $b8
  ld [bc], a                                      ; $583b: $02
  cp [hl]                                         ; $583c: $be
  ld [bc], a                                      ; $583d: $02
  call nz, $ca02                                  ; $583e: $c4 $02 $ca
  ld [bc], a                                      ; $5841: $02
  ret nc                                          ; $5842: $d0

  ld [bc], a                                      ; $5843: $02
  sub $02                                         ; $5844: $d6 $02
  call c, $e202                                   ; $5846: $dc $02 $e2
  ld [bc], a                                      ; $5849: $02
  add sp, $02                                     ; $584a: $e8 $02
  xor $02                                         ; $584c: $ee $02

  db $14, $00, $16, $00, $17, $00, $19, $00, $1a, $00, $1c, $00, $1d, $00, $1f, $00
  db $20, $00, $23, $00, $26, $00, $28, $00, $2b, $00, $2d, $00, $30, $00, $32, $00
  db $35, $00, $37, $00, $3a, $00, $3c, $00, $40, $00

  ld b, h                                         ; $5878: $44
  nop                                             ; $5879: $00
  ld c, b                                         ; $587a: $48
  nop                                             ; $587b: $00
  ld c, h                                         ; $587c: $4c
  nop                                             ; $587d: $00
  ld d, b                                         ; $587e: $50
  nop                                             ; $587f: $00
  ld d, h                                         ; $5880: $54
  nop                                             ; $5881: $00
  ld e, b                                         ; $5882: $58
  nop                                             ; $5883: $00
  ld e, h                                         ; $5884: $5c
  nop                                             ; $5885: $00
  ld h, b                                         ; $5886: $60
  nop                                             ; $5887: $00
  ld h, h                                         ; $5888: $64
  nop                                             ; $5889: $00
  ld l, c                                         ; $588a: $69
  nop                                             ; $588b: $00
  ld l, [hl]                                      ; $588c: $6e
  nop                                             ; $588d: $00
  ld [hl], e                                      ; $588e: $73
  nop                                             ; $588f: $00
  ld a, b                                         ; $5890: $78
  nop                                             ; $5891: $00
  ld a, l                                         ; $5892: $7d
  nop                                             ; $5893: $00
  add d                                           ; $5894: $82
  nop                                             ; $5895: $00
  add a                                           ; $5896: $87
  nop                                             ; $5897: $00
  adc h                                           ; $5898: $8c
  nop                                             ; $5899: $00
  sub c                                           ; $589a: $91
  nop                                             ; $589b: $00
  sub [hl]                                        ; $589c: $96
  nop                                             ; $589d: $00
  sbc l                                           ; $589e: $9d
  nop                                             ; $589f: $00
  and h                                           ; $58a0: $a4
  nop                                             ; $58a1: $00
  xor e                                           ; $58a2: $ab
  nop                                             ; $58a3: $00
  or d                                            ; $58a4: $b2
  nop                                             ; $58a5: $00
  cp c                                            ; $58a6: $b9
  nop                                             ; $58a7: $00
  ret nz                                          ; $58a8: $c0

  nop                                             ; $58a9: $00
  rst $00                                         ; $58aa: $c7
  nop                                             ; $58ab: $00
  adc $00                                         ; $58ac: $ce $00
  push de                                         ; $58ae: $d5
  nop                                             ; $58af: $00
  call c, $e500                                   ; $58b0: $dc $00 $e5
  nop                                             ; $58b3: $00
  xor $00                                         ; $58b4: $ee $00
  rst $30                                         ; $58b6: $f7
  nop                                             ; $58b7: $00
  nop                                             ; $58b8: $00
  ld bc, $0109                                    ; $58b9: $01 $09 $01
  ld [de], a                                      ; $58bc: $12
  ld bc, $011b                                    ; $58bd: $01 $1b $01
  inc h                                           ; $58c0: $24
  ld bc, $012d                                    ; $58c1: $01 $2d $01
  ld [hl], $01                                    ; $58c4: $36 $01
  ld b, c                                         ; $58c6: $41
  db $01, $4c, $01                     ; $58c7: $01 $4c $01
  ld d, a                                         ; $58ca: $57
  ld bc, $0162                                    ; $58cb: $01 $62 $01
  ld l, l                                         ; $58ce: $6d
  ld bc, $0178                                    ; $58cf: $01 $78 $01
  add e                                           ; $58d2: $83
  ld bc, $018e                                    ; $58d3: $01 $8e $01
  sbc c                                           ; $58d6: $99
  ld bc, $01a4                                    ; $58d7: $01 $a4 $01
  or c                                            ; $58da: $b1
  ld bc, $01be                                    ; $58db: $01 $be $01
  rlc c                                           ; $58de: $cb $01
  ret c                                           ; $58e0: $d8

  ld bc, $01e5                                    ; $58e1: $01 $e5 $01
  ldh a, [c]                                      ; $58e4: $f2
  ld bc, $01ff                                    ; $58e5: $01 $ff $01
  inc c                                           ; $58e8: $0c
  ld [bc], a                                      ; $58e9: $02
  add hl, de                                      ; $58ea: $19
  ld [bc], a                                      ; $58eb: $02
  ld h, $02                                       ; $58ec: $26 $02
  dec [hl]                                        ; $58ee: $35
  ld [bc], a                                      ; $58ef: $02
  ld b, h                                         ; $58f0: $44
  ld [bc], a                                      ; $58f1: $02
  ld d, e                                         ; $58f2: $53
  ld [bc], a                                      ; $58f3: $02
  ld h, d                                         ; $58f4: $62
  ld [bc], a                                      ; $58f5: $02
  ld [hl], c                                      ; $58f6: $71
  ld [bc], a                                      ; $58f7: $02
  add b                                           ; $58f8: $80
  ld [bc], a                                      ; $58f9: $02
  adc a                                           ; $58fa: $8f
  ld [bc], a                                      ; $58fb: $02
  sbc [hl]                                        ; $58fc: $9e
  ld [bc], a                                      ; $58fd: $02
  xor l                                           ; $58fe: $ad
  ld [bc], a                                      ; $58ff: $02
  cp h                                            ; $5900: $bc
  ld [bc], a                                      ; $5901: $02
  rlc d                                           ; $5902: $cb $02
  jp c, $e902                                     ; $5904: $da $02 $e9

  ld [bc], a                                      ; $5907: $02
  ld hl, sp+$02                                   ; $5908: $f8 $02
  rlca                                            ; $590a: $07
  inc bc                                          ; $590b: $03
  ld d, $03                                       ; $590c: $16 $03
  dec h                                           ; $590e: $25
  inc bc                                          ; $590f: $03
  inc [hl]                                        ; $5910: $34
  inc bc                                          ; $5911: $03
  ld b, e                                         ; $5912: $43
  inc bc                                          ; $5913: $03
  ld d, d                                         ; $5914: $52
  inc bc                                          ; $5915: $03

  db $96, $95, $94, $93, $92, $90, $8f, $8e, $8d, $8c, $8b, $8b, $8a, $8a, $89, $89
  db $88, $88, $87, $87, $86

  add [hl]                                        ; $592b: $86
  add l                                           ; $592c: $85
  add l                                           ; $592d: $85
  add h                                           ; $592e: $84
  add h                                           ; $592f: $84
  add e                                           ; $5930: $83
  add e                                           ; $5931: $83
  add d                                           ; $5932: $82
  add d                                           ; $5933: $82
  add c                                           ; $5934: $81
  add c                                           ; $5935: $81
  add b                                           ; $5936: $80
  add b                                           ; $5937: $80
  ld a, a                                         ; $5938: $7f
  ld a, a                                         ; $5939: $7f
  ld a, [hl]                                      ; $593a: $7e
  ld a, [hl]                                      ; $593b: $7e
  ld a, l                                         ; $593c: $7d
  ld a, l                                         ; $593d: $7d
  ld a, h                                         ; $593e: $7c
  ld a, h                                         ; $593f: $7c
  ld a, e                                         ; $5940: $7b
  ld a, e                                         ; $5941: $7b
  ld a, d                                         ; $5942: $7a
  ld a, d                                         ; $5943: $7a
  ld a, c                                         ; $5944: $79
  ld a, c                                         ; $5945: $79
  ld a, b                                         ; $5946: $78
  ld a, b                                         ; $5947: $78
  ld [hl], a                                      ; $5948: $77
  halt                                            ; $5949: $76
  ld [hl], l                                      ; $594a: $75
  ld [hl], h                                      ; $594b: $74
  ld [hl], e                                      ; $594c: $73
  ld [hl], d                                      ; $594d: $72
  ld [hl], c                                      ; $594e: $71
  ld [hl], b                                      ; $594f: $70
  ld l, a                                         ; $5950: $6f
  ld l, [hl]                                      ; $5951: $6e
  ld l, l                                         ; $5952: $6d
  ld l, h                                         ; $5953: $6c
  ld l, e                                         ; $5954: $6b
  ld l, d                                         ; $5955: $6a
  ld l, c                                         ; $5956: $69
  ld l, b                                         ; $5957: $68
  ld h, a                                         ; $5958: $67
  ld h, [hl]                                      ; $5959: $66
  ld h, l                                         ; $595a: $65
  ld h, h                                         ; $595b: $64
  ld h, e                                         ; $595c: $63
  ld h, d                                         ; $595d: $62
  ld h, c                                         ; $595e: $61
  ld h, b                                         ; $595f: $60
  ld e, a                                         ; $5960: $5f
  ld e, [hl]                                      ; $5961: $5e
  ld e, l                                         ; $5962: $5d
  ld e, h                                         ; $5963: $5c
  ld e, e                                         ; $5964: $5b
  ld e, d                                         ; $5965: $5a
  ld e, c                                         ; $5966: $59
  ld e, b                                         ; $5967: $58
  ld d, a                                         ; $5968: $57
  ld d, [hl]                                      ; $5969: $56
  ld d, l                                         ; $596a: $55
  ld d, h                                         ; $596b: $54
  ld d, e                                         ; $596c: $53
  ld d, d                                         ; $596d: $52
  ld d, c                                         ; $596e: $51
  ld d, b                                         ; $596f: $50
  ld c, a                                         ; $5970: $4f
  ld c, [hl]                                      ; $5971: $4e
  ld c, l                                         ; $5972: $4d
  ld c, h                                         ; $5973: $4c
  ld c, e                                         ; $5974: $4b
  ld c, d                                         ; $5975: $4a
  ld c, c                                         ; $5976: $49
  ld c, b                                         ; $5977: $48
  ld b, a                                         ; $5978: $47
  ld b, [hl]                                      ; $5979: $46

  db $0a, $0c, $0d, $0f, $11, $13, $14, $16, $17, $19, $1a, $1b, $1c, $1d, $1e, $1f
  db $20, $21, $22, $23

  inc hl                                          ; $598e: $23
  inc h                                           ; $598f: $24
  inc h                                           ; $5990: $24
  dec h                                           ; $5991: $25
  dec h                                           ; $5992: $25
  ld h, $26                                       ; $5993: $26 $26
  daa                                             ; $5995: $27
  daa                                             ; $5996: $27
  jr z, jr_006_59c1                               ; $5997: $28 $28

  add hl, hl                                      ; $5999: $29
  add hl, hl                                      ; $599a: $29
  ld a, [hl+]                                     ; $599b: $2a
  ld a, [hl+]                                     ; $599c: $2a
  dec hl                                          ; $599d: $2b
  dec hl                                          ; $599e: $2b
  inc l                                           ; $599f: $2c
  inc l                                           ; $59a0: $2c
  dec l                                           ; $59a1: $2d
  dec l                                           ; $59a2: $2d
  ld l, $2e                                       ; $59a3: $2e $2e
  cpl                                             ; $59a5: $2f
  cpl                                             ; $59a6: $2f
  jr nc, jr_006_59d9                              ; $59a7: $30 $30

  ld sp, $3231                                    ; $59a9: $31 $31 $32
  ld [hl-], a                                     ; $59ac: $32
  inc sp                                          ; $59ad: $33
  inc sp                                          ; $59ae: $33
  inc [hl]                                        ; $59af: $34
  inc [hl]                                        ; $59b0: $34
  dec [hl]                                        ; $59b1: $35
  dec [hl]                                        ; $59b2: $35
  ld [hl], $36                                    ; $59b3: $36 $36
  scf                                             ; $59b5: $37
  scf                                             ; $59b6: $37
  jr c, @+$3a                                     ; $59b7: $38 $38

  add hl, sp                                      ; $59b9: $39
  add hl, sp                                      ; $59ba: $39
  ld a, [hl-]                                     ; $59bb: $3a
  ld a, [hl-]                                     ; $59bc: $3a
  dec sp                                          ; $59bd: $3b
  dec sp                                          ; $59be: $3b
  inc a                                           ; $59bf: $3c
  inc a                                           ; $59c0: $3c

jr_006_59c1:
  dec a                                           ; $59c1: $3d
  dec a                                           ; $59c2: $3d
  ld a, $3e                                       ; $59c3: $3e $3e
  ccf                                             ; $59c5: $3f
  ccf                                             ; $59c6: $3f
  ld b, b                                         ; $59c7: $40
  ld b, b                                         ; $59c8: $40
  ld b, c                                         ; $59c9: $41
  ld b, c                                         ; $59ca: $41
  ld b, d                                         ; $59cb: $42
  ld b, d                                         ; $59cc: $42
  ld b, e                                         ; $59cd: $43
  ld b, e                                         ; $59ce: $43
  ld b, h                                         ; $59cf: $44
  ld b, h                                         ; $59d0: $44
  ld b, l                                         ; $59d1: $45
  ld b, l                                         ; $59d2: $45
  ld b, [hl]                                      ; $59d3: $46
  ld b, [hl]                                      ; $59d4: $46
  ld b, a                                         ; $59d5: $47
  ld b, a                                         ; $59d6: $47
  ld c, b                                         ; $59d7: $48
  ld c, b                                         ; $59d8: $48

jr_006_59d9:
  ld c, c                                         ; $59d9: $49
  ld c, c                                         ; $59da: $49
  ld c, d                                         ; $59db: $4a
  ld c, d                                         ; $59dc: $4a
  ld c, e                                         ; $59dd: $4b

  db $05, $05, $06, $06, $07, $07, $08, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10
  db $11, $12, $13, $14

  dec d                                           ; $59f2: $15
  ld d, $17                                       ; $59f3: $16 $17
  jr jr_006_5a10                                  ; $59f5: $18 $19

  ld a, [de]                                      ; $59f7: $1a
  dec de                                          ; $59f8: $1b
  inc e                                           ; $59f9: $1c
  dec e                                           ; $59fa: $1d
  ld e, $1f                                       ; $59fb: $1e $1f
  jr nz, jr_006_5a20                              ; $59fd: $20 $21

  ld [hl+], a                                     ; $59ff: $22
  inc hl                                          ; $5a00: $23
  inc h                                           ; $5a01: $24
  dec h                                           ; $5a02: $25
  ld h, $27                                       ; $5a03: $26 $27
  jr z, jr_006_5a30                               ; $5a05: $28 $29

  ld a, [hl+]                                     ; $5a07: $2a
  dec hl                                          ; $5a08: $2b
  inc l                                           ; $5a09: $2c
  dec l                                           ; $5a0a: $2d
  ld l, $2f                                       ; $5a0b: $2e $2f
  jr nc, jr_006_5a40                              ; $5a0d: $30 $31

  ld [hl-], a                                     ; $5a0f: $32

jr_006_5a10:
  inc sp                                          ; $5a10: $33
  inc [hl]                                        ; $5a11: $34
  dec [hl]                                        ; $5a12: $35
  ld [hl], $37                                    ; $5a13: $36 $37
  jr c, @+$3b                                     ; $5a15: $38 $39

  ld a, [hl-]                                     ; $5a17: $3a
  dec sp                                          ; $5a18: $3b
  inc a                                           ; $5a19: $3c
  dec a                                           ; $5a1a: $3d
  ld a, $3f                                       ; $5a1b: $3e $3f
  ld b, b                                         ; $5a1d: $40
  ld b, c                                         ; $5a1e: $41
  ld b, d                                         ; $5a1f: $42

jr_006_5a20:
  ld b, e                                         ; $5a20: $43
  ld b, h                                         ; $5a21: $44
  ld b, l                                         ; $5a22: $45
  ld b, [hl]                                      ; $5a23: $46
  ld b, a                                         ; $5a24: $47
  ld c, b                                         ; $5a25: $48
  ld c, c                                         ; $5a26: $49
  ld c, d                                         ; $5a27: $4a
  ld c, e                                         ; $5a28: $4b
  ld c, h                                         ; $5a29: $4c
  ld c, l                                         ; $5a2a: $4d
  ld c, [hl]                                      ; $5a2b: $4e
  ld c, a                                         ; $5a2c: $4f
  ld d, b                                         ; $5a2d: $50
  ld d, c                                         ; $5a2e: $51
  ld d, d                                         ; $5a2f: $52

jr_006_5a30:
  ld d, e                                         ; $5a30: $53
  ld d, h                                         ; $5a31: $54
  ld d, l                                         ; $5a32: $55
  ld d, [hl]                                      ; $5a33: $56
  ld d, a                                         ; $5a34: $57
  ld e, b                                         ; $5a35: $58
  ld e, c                                         ; $5a36: $59
  ld e, d                                         ; $5a37: $5a
  ld e, e                                         ; $5a38: $5b
  ld e, h                                         ; $5a39: $5c
  ld e, l                                         ; $5a3a: $5d
  ld e, [hl]                                      ; $5a3b: $5e
  ld e, a                                         ; $5a3c: $5f
  ld h, b                                         ; $5a3d: $60
  ld h, c                                         ; $5a3e: $61
  ld h, d                                         ; $5a3f: $62

jr_006_5a40:
  ld h, e                                         ; $5a40: $63
  ld h, h                                         ; $5a41: $64

  db $02, $03, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10
  db $11, $12, $13, $14

  dec d                                           ; $5a56: $15
  ld d, $17                                       ; $5a57: $16 $17
  jr jr_006_5a74                                  ; $5a59: $18 $19

  ld a, [de]                                      ; $5a5b: $1a
  dec de                                          ; $5a5c: $1b
  inc e                                           ; $5a5d: $1c
  dec e                                           ; $5a5e: $1d
  ld e, $20                                       ; $5a5f: $1e $20
  ld [hl+], a                                     ; $5a61: $22
  inc h                                           ; $5a62: $24
  ld h, $28                                       ; $5a63: $26 $28
  ld a, [hl+]                                     ; $5a65: $2a
  inc l                                           ; $5a66: $2c
  ld l, $30                                       ; $5a67: $2e $30
  ld [hl-], a                                     ; $5a69: $32
  inc [hl]                                        ; $5a6a: $34
  ld [hl], $38                                    ; $5a6b: $36 $38
  ld a, [hl-]                                     ; $5a6d: $3a
  inc a                                           ; $5a6e: $3c
  ld a, $40                                       ; $5a6f: $3e $40
  ld b, d                                         ; $5a71: $42
  ld b, h                                         ; $5a72: $44
  ld b, [hl]                                      ; $5a73: $46

jr_006_5a74:
  ld b, a                                         ; $5a74: $47
  ld c, b                                         ; $5a75: $48
  ld c, c                                         ; $5a76: $49
  ld c, d                                         ; $5a77: $4a
  ld c, e                                         ; $5a78: $4b
  ld c, h                                         ; $5a79: $4c
  ld c, l                                         ; $5a7a: $4d
  ld c, [hl]                                      ; $5a7b: $4e
  ld c, a                                         ; $5a7c: $4f
  ld d, b                                         ; $5a7d: $50
  ld d, c                                         ; $5a7e: $51
  ld d, d                                         ; $5a7f: $52
  ld d, e                                         ; $5a80: $53
  ld d, h                                         ; $5a81: $54
  ld d, l                                         ; $5a82: $55
  ld d, [hl]                                      ; $5a83: $56
  ld d, a                                         ; $5a84: $57
  ld e, b                                         ; $5a85: $58
  ld e, c                                         ; $5a86: $59
  ld e, d                                         ; $5a87: $5a
  ld e, e                                         ; $5a88: $5b
  ld e, h                                         ; $5a89: $5c
  ld e, l                                         ; $5a8a: $5d
  ld e, [hl]                                      ; $5a8b: $5e
  ld e, a                                         ; $5a8c: $5f
  ld h, b                                         ; $5a8d: $60
  ld h, c                                         ; $5a8e: $61
  ld h, d                                         ; $5a8f: $62
  ld h, e                                         ; $5a90: $63
  ld h, h                                         ; $5a91: $64
  ld h, l                                         ; $5a92: $65
  ld h, [hl]                                      ; $5a93: $66
  ld h, a                                         ; $5a94: $67
  ld l, b                                         ; $5a95: $68
  ld l, c                                         ; $5a96: $69
  ld l, d                                         ; $5a97: $6a
  ld l, e                                         ; $5a98: $6b
  ld l, h                                         ; $5a99: $6c
  ld l, l                                         ; $5a9a: $6d
  ld l, [hl]                                      ; $5a9b: $6e
  ld l, a                                         ; $5a9c: $6f
  ld [hl], b                                      ; $5a9d: $70
  ld [hl], c                                      ; $5a9e: $71
  ld [hl], d                                      ; $5a9f: $72
  ld [hl], e                                      ; $5aa0: $73
  ld [hl], h                                      ; $5aa1: $74
  ld [hl], l                                      ; $5aa2: $75
  halt                                            ; $5aa3: $76
  ld [hl], a                                      ; $5aa4: $77
  ld a, b                                         ; $5aa5: $78

  db $28, $00, $33, $00, $3e, $00, $49, $00, $54, $00, $5f, $00, $6a, $00, $75, $00
  db $80, $00, $8c, $00, $98, $00, $a4, $00, $af, $00, $ba, $00, $c4, $00, $ce, $00
  db $d7, $00, $df, $00, $e7, $00, $f0, $00

  ld hl, sp+$00                                   ; $5ace: $f8 $00
  nop                                             ; $5ad0: $00
  ld bc, $0108                                    ; $5ad1: $01 $08 $01
  db $10                                          ; $5ad4: $10
  ld bc, $0118                                    ; $5ad5: $01 $18 $01
  jr nz, @+$03                                    ; $5ad8: $20 $01

  jr z, @+$03                                     ; $5ada: $28 $01

  jr nc, @+$03                                    ; $5adc: $30 $01

  jr c, jr_006_5ae1                               ; $5ade: $38 $01

  ld b, b                                         ; $5ae0: $40

jr_006_5ae1:
  db $01, $48, $01                            ; $5ae1: $01 $48 $01
  ld d, b                                         ; $5ae4: $50
  ld bc, $0158                                    ; $5ae5: $01 $58 $01
  ld h, b                                         ; $5ae8: $60
  ld bc, $0168                                    ; $5ae9: $01 $68 $01
  ld [hl], b                                      ; $5aec: $70
  ld bc, $0178                                    ; $5aed: $01 $78 $01
  add b                                           ; $5af0: $80
  ld bc, $0188                                    ; $5af1: $01 $88 $01
  sub b                                           ; $5af4: $90
  ld bc, $0197                                    ; $5af5: $01 $97 $01
  sbc [hl]                                        ; $5af8: $9e
  ld bc, $01a5                                    ; $5af9: $01 $a5 $01
  xor h                                           ; $5afc: $ac
  ld bc, $01b3                                    ; $5afd: $01 $b3 $01
  cp d                                            ; $5b00: $ba
  ld bc, $01c1                                    ; $5b01: $01 $c1 $01
  ret z                                           ; $5b04: $c8

  ld bc, $01cf                                    ; $5b05: $01 $cf $01
  sub $01                                         ; $5b08: $d6 $01
  db $dd                                          ; $5b0a: $dd
  ld bc, $01e4                                    ; $5b0b: $01 $e4 $01
  db $eb                                          ; $5b0e: $eb
  ld bc, $01f2                                    ; $5b0f: $01 $f2 $01
  ld sp, hl                                       ; $5b12: $f9
  ld bc, $0200                                    ; $5b13: $01 $00 $02
  rlca                                            ; $5b16: $07
  ld [bc], a                                      ; $5b17: $02
  ld c, $02                                       ; $5b18: $0e $02
  dec d                                           ; $5b1a: $15
  ld [bc], a                                      ; $5b1b: $02
  inc e                                           ; $5b1c: $1c
  ld [bc], a                                      ; $5b1d: $02
  inc hl                                          ; $5b1e: $23
  ld [bc], a                                      ; $5b1f: $02
  ld a, [hl+]                                     ; $5b20: $2a
  ld [bc], a                                      ; $5b21: $02
  ld sp, $3802                                    ; $5b22: $31 $02 $38
  ld [bc], a                                      ; $5b25: $02
  ccf                                             ; $5b26: $3f
  ld [bc], a                                      ; $5b27: $02
  ld b, [hl]                                      ; $5b28: $46
  ld [bc], a                                      ; $5b29: $02
  ld c, l                                         ; $5b2a: $4d
  ld [bc], a                                      ; $5b2b: $02
  ld d, h                                         ; $5b2c: $54
  ld [bc], a                                      ; $5b2d: $02
  ld e, e                                         ; $5b2e: $5b
  ld [bc], a                                      ; $5b2f: $02
  ld h, d                                         ; $5b30: $62
  ld [bc], a                                      ; $5b31: $02
  ld l, c                                         ; $5b32: $69
  ld [bc], a                                      ; $5b33: $02
  ld [hl], b                                      ; $5b34: $70
  ld [bc], a                                      ; $5b35: $02
  ld [hl], a                                      ; $5b36: $77
  ld [bc], a                                      ; $5b37: $02
  ld a, [hl]                                      ; $5b38: $7e
  ld [bc], a                                      ; $5b39: $02
  add l                                           ; $5b3a: $85
  ld [bc], a                                      ; $5b3b: $02
  adc h                                           ; $5b3c: $8c
  ld [bc], a                                      ; $5b3d: $02
  sub e                                           ; $5b3e: $93
  ld [bc], a                                      ; $5b3f: $02
  sbc c                                           ; $5b40: $99
  ld [bc], a                                      ; $5b41: $02
  and b                                           ; $5b42: $a0
  ld [bc], a                                      ; $5b43: $02
  and a                                           ; $5b44: $a7
  ld [bc], a                                      ; $5b45: $02
  xor [hl]                                        ; $5b46: $ae
  ld [bc], a                                      ; $5b47: $02
  or h                                            ; $5b48: $b4
  ld [bc], a                                      ; $5b49: $02
  cp d                                            ; $5b4a: $ba
  ld [bc], a                                      ; $5b4b: $02
  ret nz                                          ; $5b4c: $c0

  ld [bc], a                                      ; $5b4d: $02
  add $02                                         ; $5b4e: $c6 $02
  call z, $d202                                   ; $5b50: $cc $02 $d2
  ld [bc], a                                      ; $5b53: $02
  ret c                                           ; $5b54: $d8

  ld [bc], a                                      ; $5b55: $02
  sbc $02                                         ; $5b56: $de $02
  db $e4                                          ; $5b58: $e4
  ld [bc], a                                      ; $5b59: $02
  ld [$f002], a                                   ; $5b5a: $ea $02 $f0
  ld [bc], a                                      ; $5b5d: $02
  or $02                                          ; $5b5e: $f6 $02
  db $fc                                          ; $5b60: $fc
  ld [bc], a                                      ; $5b61: $02
  ld [bc], a                                      ; $5b62: $02
  inc bc                                          ; $5b63: $03
  ld [$0e03], sp                                  ; $5b64: $08 $03 $0e
  inc bc                                          ; $5b67: $03
  inc d                                           ; $5b68: $14
  inc bc                                          ; $5b69: $03
  ld a, [de]                                      ; $5b6a: $1a
  inc bc                                          ; $5b6b: $03
  ld d, d                                         ; $5b6c: $52
  inc bc                                          ; $5b6d: $03

  db $14, $00, $15, $00, $15, $00, $16, $00, $16, $00, $17, $00, $17, $00, $18, $00
  db $18, $00, $19, $00, $1a, $00, $1c, $00, $1d, $00, $1f, $00, $20, $00, $22, $00
  db $23, $00, $25, $00, $26, $00, $28, $00

  dec hl                                          ; $5b96: $2b
  nop                                             ; $5b97: $00
  ld l, $00                                       ; $5b98: $2e $00
  ld sp, $3400                                    ; $5b9a: $31 $00 $34
  nop                                             ; $5b9d: $00
  scf                                             ; $5b9e: $37
  nop                                             ; $5b9f: $00
  ld a, [hl-]                                     ; $5ba0: $3a
  nop                                             ; $5ba1: $00
  dec a                                           ; $5ba2: $3d
  nop                                             ; $5ba3: $00
  ld b, b                                         ; $5ba4: $40
  nop                                             ; $5ba5: $00
  ld b, e                                         ; $5ba6: $43
  nop                                             ; $5ba7: $00
  ld b, [hl]                                      ; $5ba8: $46
  nop                                             ; $5ba9: $00
  ld c, d                                         ; $5baa: $4a
  nop                                             ; $5bab: $00
  ld c, [hl]                                      ; $5bac: $4e
  nop                                             ; $5bad: $00
  ld d, d                                         ; $5bae: $52
  nop                                             ; $5baf: $00
  ld d, [hl]                                      ; $5bb0: $56
  nop                                             ; $5bb1: $00
  ld e, d                                         ; $5bb2: $5a
  nop                                             ; $5bb3: $00
  ld e, [hl]                                      ; $5bb4: $5e
  nop                                             ; $5bb5: $00
  ld h, d                                         ; $5bb6: $62
  nop                                             ; $5bb7: $00
  ld h, [hl]                                      ; $5bb8: $66
  nop                                             ; $5bb9: $00
  ld l, d                                         ; $5bba: $6a
  nop                                             ; $5bbb: $00
  ld l, [hl]                                      ; $5bbc: $6e
  nop                                             ; $5bbd: $00
  ld [hl], e                                      ; $5bbe: $73
  nop                                             ; $5bbf: $00
  ld a, b                                         ; $5bc0: $78
  nop                                             ; $5bc1: $00
  ld a, l                                         ; $5bc2: $7d
  nop                                             ; $5bc3: $00
  add d                                           ; $5bc4: $82
  nop                                             ; $5bc5: $00
  add a                                           ; $5bc6: $87
  nop                                             ; $5bc7: $00
  adc h                                           ; $5bc8: $8c
  nop                                             ; $5bc9: $00
  sub c                                           ; $5bca: $91
  nop                                             ; $5bcb: $00
  sub [hl]                                        ; $5bcc: $96
  nop                                             ; $5bcd: $00
  sbc e                                           ; $5bce: $9b
  nop                                             ; $5bcf: $00
  and b                                           ; $5bd0: $a0
  nop                                             ; $5bd1: $00
  xor b                                           ; $5bd2: $a8
  nop                                             ; $5bd3: $00
  or b                                            ; $5bd4: $b0
  nop                                             ; $5bd5: $00
  cp b                                            ; $5bd6: $b8
  nop                                             ; $5bd7: $00
  ret nz                                          ; $5bd8: $c0

  nop                                             ; $5bd9: $00
  ret z                                           ; $5bda: $c8

  nop                                             ; $5bdb: $00
  ret nc                                          ; $5bdc: $d0

  nop                                             ; $5bdd: $00
  ret c                                           ; $5bde: $d8

  nop                                             ; $5bdf: $00
  ldh [rP1], a                                    ; $5be0: $e0 $00
  add sp, $00                                     ; $5be2: $e8 $00
  ldh a, [rP1]                                    ; $5be4: $f0 $00
  ld hl, sp+$00                                   ; $5be6: $f8 $00
  nop                                             ; $5be8: $00
  ld bc, $0108                                    ; $5be9: $01 $08 $01
  db $10                                          ; $5bec: $10
  ld bc, $0118                                    ; $5bed: $01 $18 $01
  jr nz, @+$03                                    ; $5bf0: $20 $01

  jr z, @+$03                                     ; $5bf2: $28 $01

  jr nc, @+$03                                    ; $5bf4: $30 $01

  jr c, jr_006_5bf9                               ; $5bf6: $38 $01

  ld b, b                                         ; $5bf8: $40

jr_006_5bf9:
  db $01, $4d, $01                    ; $5bf9: $01 $4d $01
  ld e, b                                         ; $5bfc: $58
  ld bc, $0163                                    ; $5bfd: $01 $63 $01
  ld l, [hl]                                      ; $5c00: $6e
  ld bc, $0179                                    ; $5c01: $01 $79 $01
  add h                                           ; $5c04: $84
  ld bc, $018f                                    ; $5c05: $01 $8f $01
  sbc d                                           ; $5c08: $9a
  ld bc, $01a5                                    ; $5c09: $01 $a5 $01
  xor [hl]                                        ; $5c0c: $ae
  ld bc, $01bb                                    ; $5c0d: $01 $bb $01
  add $01                                         ; $5c10: $c6 $01
  pop de                                          ; $5c12: $d1
  ld bc, $01dc                                    ; $5c13: $01 $dc $01
  rst $20                                         ; $5c16: $e7
  ld bc, $01f2                                    ; $5c17: $01 $f2 $01
  db $fd                                          ; $5c1a: $fd
  ld bc, $0208                                    ; $5c1b: $01 $08 $02
  inc de                                          ; $5c1e: $13
  ld [bc], a                                      ; $5c1f: $02
  inc e                                           ; $5c20: $1c
  ld [bc], a                                      ; $5c21: $02
  add hl, hl                                      ; $5c22: $29
  ld [bc], a                                      ; $5c23: $02
  inc [hl]                                        ; $5c24: $34
  ld [bc], a                                      ; $5c25: $02
  ccf                                             ; $5c26: $3f
  ld [bc], a                                      ; $5c27: $02
  ld c, d                                         ; $5c28: $4a
  ld [bc], a                                      ; $5c29: $02
  ld d, l                                         ; $5c2a: $55
  ld [bc], a                                      ; $5c2b: $02
  ld h, b                                         ; $5c2c: $60
  ld [bc], a                                      ; $5c2d: $02
  ld l, e                                         ; $5c2e: $6b
  ld [bc], a                                      ; $5c2f: $02
  halt                                            ; $5c30: $76
  ld [bc], a                                      ; $5c31: $02
  add c                                           ; $5c32: $81
  ld [bc], a                                      ; $5c33: $02
  adc d                                           ; $5c34: $8a
  ld [bc], a                                      ; $5c35: $02

  db $96, $95, $94, $93, $92, $90, $8f, $8e, $8d, $8c, $8b, $8a, $89, $88, $87, $86
  db $85, $84, $83, $82

  add c                                           ; $5c4a: $81
  add b                                           ; $5c4b: $80
  ld a, a                                         ; $5c4c: $7f
  ld a, [hl]                                      ; $5c4d: $7e
  ld a, l                                         ; $5c4e: $7d
  ld a, h                                         ; $5c4f: $7c
  ld a, e                                         ; $5c50: $7b
  ld a, d                                         ; $5c51: $7a
  ld a, c                                         ; $5c52: $79
  ld a, b                                         ; $5c53: $78
  ld [hl], a                                      ; $5c54: $77
  halt                                            ; $5c55: $76
  ld [hl], l                                      ; $5c56: $75
  ld [hl], h                                      ; $5c57: $74
  ld [hl], e                                      ; $5c58: $73
  ld [hl], d                                      ; $5c59: $72
  ld [hl], c                                      ; $5c5a: $71
  ld [hl], b                                      ; $5c5b: $70
  ld l, a                                         ; $5c5c: $6f
  ld l, [hl]                                      ; $5c5d: $6e
  ld l, l                                         ; $5c5e: $6d
  ld l, h                                         ; $5c5f: $6c
  ld l, e                                         ; $5c60: $6b
  ld l, d                                         ; $5c61: $6a
  ld l, c                                         ; $5c62: $69
  ld l, b                                         ; $5c63: $68
  ld h, a                                         ; $5c64: $67
  ld h, [hl]                                      ; $5c65: $66
  ld h, l                                         ; $5c66: $65
  ld h, h                                         ; $5c67: $64
  ld h, e                                         ; $5c68: $63
  ld h, d                                         ; $5c69: $62
  ld h, c                                         ; $5c6a: $61
  ld h, b                                         ; $5c6b: $60
  ld e, a                                         ; $5c6c: $5f
  ld e, [hl]                                      ; $5c6d: $5e
  ld e, l                                         ; $5c6e: $5d
  ld e, h                                         ; $5c6f: $5c
  ld e, e                                         ; $5c70: $5b
  ld e, d                                         ; $5c71: $5a
  ld e, c                                         ; $5c72: $59
  ld e, b                                         ; $5c73: $58
  ld d, a                                         ; $5c74: $57
  ld d, [hl]                                      ; $5c75: $56
  ld d, l                                         ; $5c76: $55
  ld d, h                                         ; $5c77: $54
  ld d, e                                         ; $5c78: $53
  ld d, d                                         ; $5c79: $52
  ld d, c                                         ; $5c7a: $51
  ld d, b                                         ; $5c7b: $50
  ld c, a                                         ; $5c7c: $4f
  ld c, [hl]                                      ; $5c7d: $4e
  ld c, l                                         ; $5c7e: $4d
  ld c, h                                         ; $5c7f: $4c
  ld c, e                                         ; $5c80: $4b
  ld c, d                                         ; $5c81: $4a
  ld c, c                                         ; $5c82: $49
  ld c, b                                         ; $5c83: $48
  ld b, a                                         ; $5c84: $47
  ld b, [hl]                                      ; $5c85: $46
  ld b, l                                         ; $5c86: $45
  ld b, h                                         ; $5c87: $44
  ld b, e                                         ; $5c88: $43
  ld b, d                                         ; $5c89: $42
  ld b, c                                         ; $5c8a: $41
  ld b, b                                         ; $5c8b: $40
  ccf                                             ; $5c8c: $3f
  ld a, $3d                                       ; $5c8d: $3e $3d
  inc a                                           ; $5c8f: $3c
  dec sp                                          ; $5c90: $3b
  ld a, [hl-]                                     ; $5c91: $3a
  add hl, sp                                      ; $5c92: $39
  jr c, jr_006_5ccc                               ; $5c93: $38 $37

  ld [hl], $35                                    ; $5c95: $36 $35
  inc [hl]                                        ; $5c97: $34
  inc sp                                          ; $5c98: $33
  ld [hl-], a                                     ; $5c99: $32

  db $00, $01, $01, $02, $02, $03, $03, $04, $04, $05, $05, $05, $05, $06, $06, $06

  rlca                                            ; $5caa: $07
  rlca                                            ; $5cab: $07
  ld [$0808], sp                                  ; $5cac: $08 $08 $08
  ld [$0909], sp                                  ; $5caf: $08 $09 $09
  add hl, bc                                      ; $5cb2: $09
  add hl, bc                                      ; $5cb3: $09
  add hl, bc                                      ; $5cb4: $09
  ld a, [bc]                                      ; $5cb5: $0a
  ld a, [bc]                                      ; $5cb6: $0a
  ld a, [bc]                                      ; $5cb7: $0a
  ld a, [bc]                                      ; $5cb8: $0a
  dec bc                                          ; $5cb9: $0b
  dec bc                                          ; $5cba: $0b
  inc c                                           ; $5cbb: $0c
  inc c                                           ; $5cbc: $0c
  inc c                                           ; $5cbd: $0c
  inc c                                           ; $5cbe: $0c
  dec c                                           ; $5cbf: $0d
  dec c                                           ; $5cc0: $0d
  dec c                                           ; $5cc1: $0d
  dec c                                           ; $5cc2: $0d
  ld c, $0e                                       ; $5cc3: $0e $0e
  ld c, $0e                                       ; $5cc5: $0e $0e
  rrca                                            ; $5cc7: $0f
  rrca                                            ; $5cc8: $0f
  rrca                                            ; $5cc9: $0f
  rrca                                            ; $5cca: $0f
  rrca                                            ; $5ccb: $0f

jr_006_5ccc:
  db $10                                          ; $5ccc: $10
  db $10                                          ; $5ccd: $10
  db $10                                          ; $5cce: $10
  ld de, $1111                                    ; $5ccf: $11 $11 $11
  ld de, $1211                                    ; $5cd2: $11 $11 $12
  ld [de], a                                      ; $5cd5: $12
  ld [de], a                                      ; $5cd6: $12
  ld [de], a                                      ; $5cd7: $12
  inc de                                          ; $5cd8: $13
  inc de                                          ; $5cd9: $13
  inc de                                          ; $5cda: $13
  inc de                                          ; $5cdb: $13
  inc de                                          ; $5cdc: $13
  inc d                                           ; $5cdd: $14
  inc d                                           ; $5cde: $14
  inc d                                           ; $5cdf: $14
  inc d                                           ; $5ce0: $14
  dec d                                           ; $5ce1: $15
  dec d                                           ; $5ce2: $15
  dec d                                           ; $5ce3: $15
  dec d                                           ; $5ce4: $15
  ld d, $16                                       ; $5ce5: $16 $16
  ld d, $17                                       ; $5ce7: $16 $17
  rla                                             ; $5ce9: $17
  rla                                             ; $5cea: $17
  rla                                             ; $5ceb: $17
  rla                                             ; $5cec: $17
  rla                                             ; $5ced: $17
  rla                                             ; $5cee: $17
  jr @+$1a                                        ; $5cef: $18 $18

  jr @+$1a                                        ; $5cf1: $18 $18

  jr @+$1a                                        ; $5cf3: $18 $18

  jr @+$1a                                        ; $5cf5: $18 $18

  jr jr_006_5d11                                  ; $5cf7: $18 $18

  add hl, de                                      ; $5cf9: $19
  add hl, de                                      ; $5cfa: $19
  add hl, de                                      ; $5cfb: $19
  add hl, de                                      ; $5cfc: $19
  add hl, de                                      ; $5cfd: $19

  db $14, $15, $15, $16, $16, $17, $17, $18, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f

  jr nz, @+$23                                    ; $5d0e: $20 $21

  ld [hl+], a                                     ; $5d10: $22

jr_006_5d11:
  inc hl                                          ; $5d11: $23
  inc hl                                          ; $5d12: $23
  inc h                                           ; $5d13: $24
  inc h                                           ; $5d14: $24
  dec h                                           ; $5d15: $25
  dec h                                           ; $5d16: $25
  ld h, $26                                       ; $5d17: $26 $26
  daa                                             ; $5d19: $27
  daa                                             ; $5d1a: $27
  jr z, jr_006_5d45                               ; $5d1b: $28 $28

  add hl, hl                                      ; $5d1d: $29
  add hl, hl                                      ; $5d1e: $29
  ld a, [hl+]                                     ; $5d1f: $2a
  ld a, [hl+]                                     ; $5d20: $2a
  dec hl                                          ; $5d21: $2b
  dec hl                                          ; $5d22: $2b
  inc l                                           ; $5d23: $2c
  inc l                                           ; $5d24: $2c
  dec l                                           ; $5d25: $2d
  ld l, $2f                                       ; $5d26: $2e $2f
  jr nc, jr_006_5d5b                              ; $5d28: $30 $31

  ld [hl-], a                                     ; $5d2a: $32
  inc sp                                          ; $5d2b: $33
  inc [hl]                                        ; $5d2c: $34
  dec [hl]                                        ; $5d2d: $35
  ld [hl], $37                                    ; $5d2e: $36 $37
  jr c, @+$3c                                     ; $5d30: $38 $3a

  dec sp                                          ; $5d32: $3b
  dec a                                           ; $5d33: $3d
  ld a, $40                                       ; $5d34: $3e $40
  ld b, c                                         ; $5d36: $41
  ld b, e                                         ; $5d37: $43
  ld b, h                                         ; $5d38: $44
  ld b, [hl]                                      ; $5d39: $46
  ld c, b                                         ; $5d3a: $48
  ld c, d                                         ; $5d3b: $4a
  ld c, h                                         ; $5d3c: $4c
  ld c, [hl]                                      ; $5d3d: $4e
  ld d, b                                         ; $5d3e: $50
  ld d, d                                         ; $5d3f: $52
  ld d, h                                         ; $5d40: $54
  ld d, [hl]                                      ; $5d41: $56
  ld e, b                                         ; $5d42: $58
  ld e, d                                         ; $5d43: $5a
  ld e, h                                         ; $5d44: $5c

jr_006_5d45:
  ld e, [hl]                                      ; $5d45: $5e
  ld h, b                                         ; $5d46: $60
  ld h, d                                         ; $5d47: $62
  ld h, h                                         ; $5d48: $64
  ld h, [hl]                                      ; $5d49: $66
  ld l, b                                         ; $5d4a: $68
  ld l, d                                         ; $5d4b: $6a
  ld l, h                                         ; $5d4c: $6c
  ld l, [hl]                                      ; $5d4d: $6e
  ld [hl], b                                      ; $5d4e: $70
  ld [hl], d                                      ; $5d4f: $72
  ld [hl], h                                      ; $5d50: $74
  halt                                            ; $5d51: $76
  ld a, b                                         ; $5d52: $78
  ld a, d                                         ; $5d53: $7a
  ld a, h                                         ; $5d54: $7c
  ld a, [hl]                                      ; $5d55: $7e
  add b                                           ; $5d56: $80
  add d                                           ; $5d57: $82
  add h                                           ; $5d58: $84
  add [hl]                                        ; $5d59: $86
  adc b                                           ; $5d5a: $88

jr_006_5d5b:
  adc d                                           ; $5d5b: $8a
  adc h                                           ; $5d5c: $8c
  adc [hl]                                        ; $5d5d: $8e
  sub b                                           ; $5d5e: $90
  sub d                                           ; $5d5f: $92
  sub h                                           ; $5d60: $94
  sub [hl]                                        ; $5d61: $96

  db $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $14, $15, $16, $17, $18, $19, $1a

  dec de                                          ; $5d72: $1b
  inc e                                           ; $5d73: $1c
  dec e                                           ; $5d74: $1d
  ld e, $1f                                       ; $5d75: $1e $1f
  jr nz, jr_006_5d9a                              ; $5d77: $20 $21

  ld [hl+], a                                     ; $5d79: $22
  inc hl                                          ; $5d7a: $23
  inc h                                           ; $5d7b: $24
  dec h                                           ; $5d7c: $25
  ld h, $27                                       ; $5d7d: $26 $27
  jr z, jr_006_5daa                               ; $5d7f: $28 $29

  ld a, [hl+]                                     ; $5d81: $2a
  dec hl                                          ; $5d82: $2b
  inc l                                           ; $5d83: $2c
  dec l                                           ; $5d84: $2d
  ld l, $2f                                       ; $5d85: $2e $2f
  jr nc, jr_006_5dba                              ; $5d87: $30 $31

  ld [hl-], a                                     ; $5d89: $32
  inc sp                                          ; $5d8a: $33
  inc [hl]                                        ; $5d8b: $34
  dec [hl]                                        ; $5d8c: $35
  ld [hl], $37                                    ; $5d8d: $36 $37
  jr c, @+$3b                                     ; $5d8f: $38 $39

  ld a, [hl-]                                     ; $5d91: $3a
  dec sp                                          ; $5d92: $3b
  inc a                                           ; $5d93: $3c
  dec a                                           ; $5d94: $3d
  ld a, $3f                                       ; $5d95: $3e $3f
  ld b, b                                         ; $5d97: $40
  ld b, c                                         ; $5d98: $41
  ld b, d                                         ; $5d99: $42

jr_006_5d9a:
  ld b, e                                         ; $5d9a: $43
  ld b, h                                         ; $5d9b: $44
  ld b, l                                         ; $5d9c: $45
  ld b, [hl]                                      ; $5d9d: $46
  ld c, b                                         ; $5d9e: $48
  ld c, d                                         ; $5d9f: $4a
  ld c, h                                         ; $5da0: $4c
  ld c, [hl]                                      ; $5da1: $4e
  ld d, b                                         ; $5da2: $50
  ld d, d                                         ; $5da3: $52
  ld d, h                                         ; $5da4: $54
  ld d, [hl]                                      ; $5da5: $56
  ld e, b                                         ; $5da6: $58
  ld e, d                                         ; $5da7: $5a
  ld e, h                                         ; $5da8: $5c
  ld e, [hl]                                      ; $5da9: $5e

jr_006_5daa:
  ld h, b                                         ; $5daa: $60
  ld h, d                                         ; $5dab: $62
  ld h, h                                         ; $5dac: $64
  ld h, [hl]                                      ; $5dad: $66
  ld l, b                                         ; $5dae: $68
  ld l, d                                         ; $5daf: $6a
  ld l, h                                         ; $5db0: $6c
  ld l, [hl]                                      ; $5db1: $6e
  ld [hl], b                                      ; $5db2: $70
  ld [hl], d                                      ; $5db3: $72
  ld [hl], h                                      ; $5db4: $74
  halt                                            ; $5db5: $76
  ld a, b                                         ; $5db6: $78
  ld a, d                                         ; $5db7: $7a
  ld a, h                                         ; $5db8: $7c
  ld a, [hl]                                      ; $5db9: $7e

jr_006_5dba:
  add b                                           ; $5dba: $80
  add d                                           ; $5dbb: $82
  add h                                           ; $5dbc: $84
  add [hl]                                        ; $5dbd: $86
  adc b                                           ; $5dbe: $88
  adc d                                           ; $5dbf: $8a
  adc h                                           ; $5dc0: $8c
  adc [hl]                                        ; $5dc1: $8e
  sub b                                           ; $5dc2: $90
  sub d                                           ; $5dc3: $92
  sub h                                           ; $5dc4: $94
  sub [hl]                                        ; $5dc5: $96

  db $19, $00, $24, $00, $2f, $00, $3a, $00, $45, $00, $50, $00, $5a, $00, $64, $00
  db $6e, $00, $78, $00, $7e, $00, $84, $00, $8a, $00, $90, $00, $96, $00, $9c, $00

  and d                                           ; $5de6: $a2
  nop                                             ; $5de7: $00
  xor b                                           ; $5de8: $a8
  nop                                             ; $5de9: $00
  xor [hl]                                        ; $5dea: $ae
  nop                                             ; $5deb: $00
  or h                                            ; $5dec: $b4
  nop                                             ; $5ded: $00
  cp d                                            ; $5dee: $ba
  nop                                             ; $5def: $00
  ret nz                                          ; $5df0: $c0

  nop                                             ; $5df1: $00
  add $00                                         ; $5df2: $c6 $00
  call z, $d200                                   ; $5df4: $cc $00 $d2
  nop                                             ; $5df7: $00
  ret c                                           ; $5df8: $d8

  nop                                             ; $5df9: $00
  sbc $00                                         ; $5dfa: $de $00
  db $e4                                          ; $5dfc: $e4
  nop                                             ; $5dfd: $00
  ld [$f000], a                                   ; $5dfe: $ea $00 $f0
  nop                                             ; $5e01: $00
  or $00                                          ; $5e02: $f6 $00
  db $fc                                          ; $5e04: $fc
  nop                                             ; $5e05: $00
  ld [bc], a                                      ; $5e06: $02
  ld bc, $0108                                    ; $5e07: $01 $08 $01
  ld c, $01                                       ; $5e0a: $0e $01
  inc d                                           ; $5e0c: $14
  ld bc, $011a                                    ; $5e0d: $01 $1a $01
  jr nz, @+$03                                    ; $5e10: $20 $01

  ld h, $01                                       ; $5e12: $26 $01
  inc l                                           ; $5e14: $2c
  ld bc, $0132                                    ; $5e15: $01 $32 $01
  jr c, @+$03                                     ; $5e18: $38 $01

  ld a, $01                                       ; $5e1a: $3e $01
  ld b, h                                         ; $5e1c: $44
  db $01, $4a, $01                    ; $5e1d: $01 $4a $01
  ld d, b                                         ; $5e20: $50
  ld bc, $0156                                    ; $5e21: $01 $56 $01
  ld e, h                                         ; $5e24: $5c
  ld bc, $0162                                    ; $5e25: $01 $62 $01
  ld l, b                                         ; $5e28: $68
  ld bc, $016e                                    ; $5e29: $01 $6e $01
  ld [hl], h                                      ; $5e2c: $74
  ld bc, $017a                                    ; $5e2d: $01 $7a $01
  add b                                           ; $5e30: $80
  ld bc, $0186                                    ; $5e31: $01 $86 $01
  adc h                                           ; $5e34: $8c
  ld bc, $0192                                    ; $5e35: $01 $92 $01
  sbc b                                           ; $5e38: $98
  ld bc, $019e                                    ; $5e39: $01 $9e $01
  and h                                           ; $5e3c: $a4
  ld bc, $01aa                                    ; $5e3d: $01 $aa $01
  or b                                            ; $5e40: $b0
  ld bc, $01b6                                    ; $5e41: $01 $b6 $01
  cp h                                            ; $5e44: $bc
  ld bc, $01c2                                    ; $5e45: $01 $c2 $01
  ret z                                           ; $5e48: $c8

  ld bc, $01ce                                    ; $5e49: $01 $ce $01
  call nc, $da01                                  ; $5e4c: $d4 $01 $da
  ld bc, $01e0                                    ; $5e4f: $01 $e0 $01
  and $01                                         ; $5e52: $e6 $01
  db $ec                                          ; $5e54: $ec
  ld bc, $01f2                                    ; $5e55: $01 $f2 $01
  ld hl, sp+$01                                   ; $5e58: $f8 $01
  cp $01                                          ; $5e5a: $fe $01
  inc b                                           ; $5e5c: $04
  ld [bc], a                                      ; $5e5d: $02
  ld a, [bc]                                      ; $5e5e: $0a
  ld [bc], a                                      ; $5e5f: $02
  db $10                                          ; $5e60: $10
  ld [bc], a                                      ; $5e61: $02
  ld d, $02                                       ; $5e62: $16 $02
  inc e                                           ; $5e64: $1c
  ld [bc], a                                      ; $5e65: $02
  ld hl, $2602                                    ; $5e66: $21 $02 $26
  ld [bc], a                                      ; $5e69: $02
  dec hl                                          ; $5e6a: $2b
  ld [bc], a                                      ; $5e6b: $02
  jr nc, jr_006_5e70                              ; $5e6c: $30 $02

  dec [hl]                                        ; $5e6e: $35
  ld [bc], a                                      ; $5e6f: $02

jr_006_5e70:
  ld a, [hl-]                                     ; $5e70: $3a
  ld [bc], a                                      ; $5e71: $02
  ccf                                             ; $5e72: $3f
  ld [bc], a                                      ; $5e73: $02
  ld b, h                                         ; $5e74: $44
  ld [bc], a                                      ; $5e75: $02
  ld c, c                                         ; $5e76: $49
  ld [bc], a                                      ; $5e77: $02
  ld c, [hl]                                      ; $5e78: $4e
  ld [bc], a                                      ; $5e79: $02
  ld d, h                                         ; $5e7a: $54
  ld [bc], a                                      ; $5e7b: $02
  ld e, d                                         ; $5e7c: $5a
  ld [bc], a                                      ; $5e7d: $02
  ld h, b                                         ; $5e7e: $60
  ld [bc], a                                      ; $5e7f: $02
  ld h, [hl]                                      ; $5e80: $66
  ld [bc], a                                      ; $5e81: $02
  ld l, h                                         ; $5e82: $6c
  ld [bc], a                                      ; $5e83: $02
  ld [hl], d                                      ; $5e84: $72
  ld [bc], a                                      ; $5e85: $02
  ld a, b                                         ; $5e86: $78
  ld [bc], a                                      ; $5e87: $02
  ld a, [hl]                                      ; $5e88: $7e
  ld [bc], a                                      ; $5e89: $02
  add h                                           ; $5e8a: $84
  ld [bc], a                                      ; $5e8b: $02
  adc d                                           ; $5e8c: $8a
  ld [bc], a                                      ; $5e8d: $02

  db $14, $00, $16, $00, $19, $00, $1c, $00, $1f, $00, $22, $00, $25, $00, $28, $00
  db $2b, $00, $2e, $00, $31, $00, $34, $00, $37, $00, $3a, $00, $3e, $00, $42, $00

  ld b, [hl]                                      ; $5eae: $46
  nop                                             ; $5eaf: $00
  ld c, d                                         ; $5eb0: $4a
  nop                                             ; $5eb1: $00
  ld c, [hl]                                      ; $5eb2: $4e
  nop                                             ; $5eb3: $00
  ld d, d                                         ; $5eb4: $52
  nop                                             ; $5eb5: $00
  ld d, [hl]                                      ; $5eb6: $56
  nop                                             ; $5eb7: $00
  ld e, d                                         ; $5eb8: $5a
  nop                                             ; $5eb9: $00
  ld e, a                                         ; $5eba: $5f
  nop                                             ; $5ebb: $00
  ld h, h                                         ; $5ebc: $64
  nop                                             ; $5ebd: $00
  ld l, c                                         ; $5ebe: $69
  nop                                             ; $5ebf: $00
  ld l, [hl]                                      ; $5ec0: $6e
  nop                                             ; $5ec1: $00
  ld [hl], e                                      ; $5ec2: $73
  nop                                             ; $5ec3: $00
  ld a, b                                         ; $5ec4: $78
  nop                                             ; $5ec5: $00
  ld a, l                                         ; $5ec6: $7d
  nop                                             ; $5ec7: $00
  add d                                           ; $5ec8: $82
  nop                                             ; $5ec9: $00
  adc b                                           ; $5eca: $88
  nop                                             ; $5ecb: $00
  adc [hl]                                        ; $5ecc: $8e
  nop                                             ; $5ecd: $00
  sub h                                           ; $5ece: $94
  nop                                             ; $5ecf: $00
  sbc d                                           ; $5ed0: $9a
  nop                                             ; $5ed1: $00
  and b                                           ; $5ed2: $a0
  nop                                             ; $5ed3: $00
  and [hl]                                        ; $5ed4: $a6
  nop                                             ; $5ed5: $00
  xor h                                           ; $5ed6: $ac
  nop                                             ; $5ed7: $00
  or d                                            ; $5ed8: $b2
  nop                                             ; $5ed9: $00
  cp b                                            ; $5eda: $b8
  nop                                             ; $5edb: $00
  cp [hl]                                         ; $5edc: $be
  nop                                             ; $5edd: $00
  add $00                                         ; $5ede: $c6 $00
  adc $00                                         ; $5ee0: $ce $00
  sub $00                                         ; $5ee2: $d6 $00
  sbc $00                                         ; $5ee4: $de $00
  and $00                                         ; $5ee6: $e6 $00
  xor $00                                         ; $5ee8: $ee $00
  or $00                                          ; $5eea: $f6 $00
  cp $00                                          ; $5eec: $fe $00
  ld b, $01                                       ; $5eee: $06 $01
  ld c, $01                                       ; $5ef0: $0e $01
  jr jr_006_5ef5                                  ; $5ef2: $18 $01

  ld [hl+], a                                     ; $5ef4: $22

jr_006_5ef5:
  ld bc, $012c                                    ; $5ef5: $01 $2c $01
  ld [hl], $01                                    ; $5ef8: $36 $01
  ld b, b                                         ; $5efa: $40
  db $01, $4a, $01                    ; $5efb: $01 $4a $01
  ld d, h                                         ; $5efe: $54
  ld bc, $015e                                    ; $5eff: $01 $5e $01
  ld l, b                                         ; $5f02: $68
  ld bc, $0172                                    ; $5f03: $01 $72 $01
  ld a, [hl]                                      ; $5f06: $7e
  ld bc, $018a                                    ; $5f07: $01 $8a $01
  sub [hl]                                        ; $5f0a: $96
  ld bc, $01a2                                    ; $5f0b: $01 $a2 $01
  xor [hl]                                        ; $5f0e: $ae
  ld bc, $01ba                                    ; $5f0f: $01 $ba $01
  add $01                                         ; $5f12: $c6 $01
  jp nc, $de01                                    ; $5f14: $d2 $01 $de

  ld bc, $01ea                                    ; $5f17: $01 $ea $01
  ld hl, sp+$01                                   ; $5f1a: $f8 $01
  ld b, $02                                       ; $5f1c: $06 $02
  inc d                                           ; $5f1e: $14
  ld [bc], a                                      ; $5f1f: $02
  ld [hl+], a                                     ; $5f20: $22
  ld [bc], a                                      ; $5f21: $02
  jr nc, jr_006_5f26                              ; $5f22: $30 $02

  ld a, $02                                       ; $5f24: $3e $02

jr_006_5f26:
  ld c, h                                         ; $5f26: $4c
  ld [bc], a                                      ; $5f27: $02
  ld e, d                                         ; $5f28: $5a
  ld [bc], a                                      ; $5f29: $02
  ld l, b                                         ; $5f2a: $68
  ld [bc], a                                      ; $5f2b: $02
  halt                                            ; $5f2c: $76
  ld [bc], a                                      ; $5f2d: $02
  add [hl]                                        ; $5f2e: $86
  ld [bc], a                                      ; $5f2f: $02
  sub [hl]                                        ; $5f30: $96
  ld [bc], a                                      ; $5f31: $02
  and [hl]                                        ; $5f32: $a6
  ld [bc], a                                      ; $5f33: $02
  or [hl]                                         ; $5f34: $b6
  ld [bc], a                                      ; $5f35: $02
  add $02                                         ; $5f36: $c6 $02
  sub $02                                         ; $5f38: $d6 $02
  and $02                                         ; $5f3a: $e6 $02
  or $02                                          ; $5f3c: $f6 $02
  ld b, $03                                       ; $5f3e: $06 $03
  ld d, $03                                       ; $5f40: $16 $03
  ld h, $03                                       ; $5f42: $26 $03
  ld [hl], $03                                    ; $5f44: $36 $03
  ld b, [hl]                                      ; $5f46: $46
  inc bc                                          ; $5f47: $03
  ld d, [hl]                                      ; $5f48: $56
  inc bc                                          ; $5f49: $03
  ld h, [hl]                                      ; $5f4a: $66
  inc bc                                          ; $5f4b: $03
  halt                                            ; $5f4c: $76
  inc bc                                          ; $5f4d: $03
  add [hl]                                        ; $5f4e: $86
  inc bc                                          ; $5f4f: $03
  sub [hl]                                        ; $5f50: $96
  inc bc                                          ; $5f51: $03
  and [hl]                                        ; $5f52: $a6
  inc bc                                          ; $5f53: $03
  or [hl]                                         ; $5f54: $b6
  inc bc                                          ; $5f55: $03

  db $96, $95, $94, $93, $92, $90, $8f, $8e, $8d, $8c, $8b, $8a, $89, $88, $87, $86

  add l                                           ; $5f66: $85
  add h                                           ; $5f67: $84
  add e                                           ; $5f68: $83
  add d                                           ; $5f69: $82
  add c                                           ; $5f6a: $81
  add b                                           ; $5f6b: $80
  ld a, a                                         ; $5f6c: $7f
  ld a, [hl]                                      ; $5f6d: $7e
  ld a, l                                         ; $5f6e: $7d
  ld a, h                                         ; $5f6f: $7c
  ld a, e                                         ; $5f70: $7b
  ld a, d                                         ; $5f71: $7a
  ld a, c                                         ; $5f72: $79
  ld a, b                                         ; $5f73: $78
  ld [hl], a                                      ; $5f74: $77
  halt                                            ; $5f75: $76
  ld [hl], l                                      ; $5f76: $75
  ld [hl], h                                      ; $5f77: $74
  ld [hl], e                                      ; $5f78: $73
  ld [hl], d                                      ; $5f79: $72
  ld [hl], c                                      ; $5f7a: $71
  ld [hl], b                                      ; $5f7b: $70
  ld l, a                                         ; $5f7c: $6f
  ld l, [hl]                                      ; $5f7d: $6e
  ld l, l                                         ; $5f7e: $6d
  ld l, h                                         ; $5f7f: $6c
  ld l, e                                         ; $5f80: $6b
  ld l, d                                         ; $5f81: $6a
  ld l, c                                         ; $5f82: $69
  ld l, b                                         ; $5f83: $68
  ld h, a                                         ; $5f84: $67
  ld h, [hl]                                      ; $5f85: $66
  ld h, l                                         ; $5f86: $65
  ld h, h                                         ; $5f87: $64
  ld h, e                                         ; $5f88: $63
  ld h, e                                         ; $5f89: $63
  ld h, d                                         ; $5f8a: $62
  ld h, d                                         ; $5f8b: $62
  ld h, c                                         ; $5f8c: $61
  ld h, c                                         ; $5f8d: $61
  ld h, b                                         ; $5f8e: $60
  ld h, b                                         ; $5f8f: $60
  ld e, a                                         ; $5f90: $5f
  ld e, a                                         ; $5f91: $5f
  ld e, [hl]                                      ; $5f92: $5e
  ld e, [hl]                                      ; $5f93: $5e
  ld e, l                                         ; $5f94: $5d
  ld e, l                                         ; $5f95: $5d
  ld e, h                                         ; $5f96: $5c
  ld e, h                                         ; $5f97: $5c
  ld e, e                                         ; $5f98: $5b
  ld e, e                                         ; $5f99: $5b
  ld e, d                                         ; $5f9a: $5a
  ld e, d                                         ; $5f9b: $5a
  ld e, c                                         ; $5f9c: $59
  ld e, b                                         ; $5f9d: $58
  ld d, a                                         ; $5f9e: $57
  ld d, [hl]                                      ; $5f9f: $56
  ld d, l                                         ; $5fa0: $55
  ld d, h                                         ; $5fa1: $54
  ld d, e                                         ; $5fa2: $53
  ld d, d                                         ; $5fa3: $52
  ld d, c                                         ; $5fa4: $51
  ld d, b                                         ; $5fa5: $50
  ld c, a                                         ; $5fa6: $4f
  ld c, [hl]                                      ; $5fa7: $4e
  ld c, l                                         ; $5fa8: $4d
  ld c, h                                         ; $5fa9: $4c
  ld c, e                                         ; $5faa: $4b
  ld c, d                                         ; $5fab: $4a
  ld c, c                                         ; $5fac: $49
  ld c, b                                         ; $5fad: $48
  ld b, a                                         ; $5fae: $47
  ld b, [hl]                                      ; $5faf: $46
  ld b, l                                         ; $5fb0: $45
  ld b, h                                         ; $5fb1: $44
  ld b, e                                         ; $5fb2: $43
  ld b, d                                         ; $5fb3: $42
  ld b, c                                         ; $5fb4: $41
  ld b, b                                         ; $5fb5: $40
  ccf                                             ; $5fb6: $3f
  ld a, $3d                                       ; $5fb7: $3e $3d
  inc a                                           ; $5fb9: $3c

  db $0a

  inc c                                           ; $5fbb: $0c
  dec c                                           ; $5fbc: $0d
  rrca                                            ; $5fbd: $0f
  ld de, $1413                                    ; $5fbe: $11 $13 $14
  ld d, $17                                       ; $5fc1: $16 $17
  add hl, de                                      ; $5fc3: $19
  ld a, [de]                                      ; $5fc4: $1a
  dec de                                          ; $5fc5: $1b
  inc e                                           ; $5fc6: $1c
  dec e                                           ; $5fc7: $1d
  ld e, $1f                                       ; $5fc8: $1e $1f
  jr nz, jr_006_5fed                              ; $5fca: $20 $21

  ld [hl+], a                                     ; $5fcc: $22
  inc hl                                          ; $5fcd: $23
  inc hl                                          ; $5fce: $23
  inc h                                           ; $5fcf: $24
  inc h                                           ; $5fd0: $24
  dec h                                           ; $5fd1: $25
  dec h                                           ; $5fd2: $25
  ld h, $26                                       ; $5fd3: $26 $26
  daa                                             ; $5fd5: $27
  daa                                             ; $5fd6: $27
  jr z, jr_006_6001                               ; $5fd7: $28 $28

  add hl, hl                                      ; $5fd9: $29
  add hl, hl                                      ; $5fda: $29
  ld a, [hl+]                                     ; $5fdb: $2a
  ld a, [hl+]                                     ; $5fdc: $2a
  dec hl                                          ; $5fdd: $2b
  dec hl                                          ; $5fde: $2b
  inc l                                           ; $5fdf: $2c
  inc l                                           ; $5fe0: $2c
  dec l                                           ; $5fe1: $2d
  dec l                                           ; $5fe2: $2d
  ld l, $2e                                       ; $5fe3: $2e $2e
  cpl                                             ; $5fe5: $2f
  cpl                                             ; $5fe6: $2f
  jr nc, jr_006_6019                              ; $5fe7: $30 $30

  ld sp, $3231                                    ; $5fe9: $31 $31 $32
  ld [hl-], a                                     ; $5fec: $32

jr_006_5fed:
  inc sp                                          ; $5fed: $33
  inc sp                                          ; $5fee: $33
  inc [hl]                                        ; $5fef: $34
  inc [hl]                                        ; $5ff0: $34
  dec [hl]                                        ; $5ff1: $35
  dec [hl]                                        ; $5ff2: $35
  ld [hl], $36                                    ; $5ff3: $36 $36
  scf                                             ; $5ff5: $37
  scf                                             ; $5ff6: $37
  jr c, jr_006_6031                               ; $5ff7: $38 $38

  add hl, sp                                      ; $5ff9: $39
  add hl, sp                                      ; $5ffa: $39
  ld a, [hl-]                                     ; $5ffb: $3a
  ld a, [hl-]                                     ; $5ffc: $3a
  dec sp                                          ; $5ffd: $3b
  dec sp                                          ; $5ffe: $3b
  inc a                                           ; $5fff: $3c
  inc a                                           ; $6000: $3c

jr_006_6001:
  dec a                                           ; $6001: $3d
  dec a                                           ; $6002: $3d
  ld a, $3e                                       ; $6003: $3e $3e
  ccf                                             ; $6005: $3f
  ccf                                             ; $6006: $3f
  ld b, b                                         ; $6007: $40
  ld b, b                                         ; $6008: $40
  ld b, c                                         ; $6009: $41
  ld b, c                                         ; $600a: $41
  ld b, d                                         ; $600b: $42
  ld b, d                                         ; $600c: $42
  ld b, e                                         ; $600d: $43
  ld b, e                                         ; $600e: $43
  ld b, h                                         ; $600f: $44
  ld b, h                                         ; $6010: $44
  ld b, l                                         ; $6011: $45
  ld b, l                                         ; $6012: $45
  ld b, [hl]                                      ; $6013: $46
  ld b, [hl]                                      ; $6014: $46
  ld b, a                                         ; $6015: $47
  ld b, a                                         ; $6016: $47
  ld c, b                                         ; $6017: $48
  ld c, b                                         ; $6018: $48

jr_006_6019:
  ld c, c                                         ; $6019: $49
  ld c, c                                         ; $601a: $49
  ld c, d                                         ; $601b: $4a
  ld c, d                                         ; $601c: $4a
  ld c, e                                         ; $601d: $4b

  db $05

  dec b                                           ; $601f: $05
  ld b, $06                                       ; $6020: $06 $06
  rlca                                            ; $6022: $07
  rlca                                            ; $6023: $07
  ld [$0908], sp                                  ; $6024: $08 $08 $09
  ld a, [bc]                                      ; $6027: $0a
  dec bc                                          ; $6028: $0b
  inc c                                           ; $6029: $0c
  dec c                                           ; $602a: $0d
  ld c, $0f                                       ; $602b: $0e $0f
  db $10                                          ; $602d: $10
  ld de, $1312                                    ; $602e: $11 $12 $13

jr_006_6031:
  inc d                                           ; $6031: $14
  dec d                                           ; $6032: $15
  ld d, $17                                       ; $6033: $16 $17
  jr jr_006_6050                                  ; $6035: $18 $19

  ld a, [de]                                      ; $6037: $1a
  dec de                                          ; $6038: $1b
  inc e                                           ; $6039: $1c
  dec e                                           ; $603a: $1d
  ld e, $1f                                       ; $603b: $1e $1f
  jr nz, jr_006_6060                              ; $603d: $20 $21

  ld [hl+], a                                     ; $603f: $22
  inc hl                                          ; $6040: $23
  inc h                                           ; $6041: $24
  dec h                                           ; $6042: $25
  ld h, $27                                       ; $6043: $26 $27
  jr z, jr_006_6070                               ; $6045: $28 $29

  ld a, [hl+]                                     ; $6047: $2a
  dec hl                                          ; $6048: $2b
  inc l                                           ; $6049: $2c
  dec l                                           ; $604a: $2d
  ld l, $2f                                       ; $604b: $2e $2f
  jr nc, jr_006_6080                              ; $604d: $30 $31

  ld [hl-], a                                     ; $604f: $32

jr_006_6050:
  inc sp                                          ; $6050: $33
  inc [hl]                                        ; $6051: $34
  dec [hl]                                        ; $6052: $35
  ld [hl], $37                                    ; $6053: $36 $37
  jr c, @+$3b                                     ; $6055: $38 $39

  ld a, [hl-]                                     ; $6057: $3a
  dec sp                                          ; $6058: $3b
  inc a                                           ; $6059: $3c
  dec a                                           ; $605a: $3d
  ld a, $3f                                       ; $605b: $3e $3f
  ld b, b                                         ; $605d: $40
  ld b, c                                         ; $605e: $41
  ld b, d                                         ; $605f: $42

jr_006_6060:
  ld b, e                                         ; $6060: $43
  ld b, h                                         ; $6061: $44
  ld b, l                                         ; $6062: $45
  ld b, [hl]                                      ; $6063: $46
  ld b, a                                         ; $6064: $47
  ld c, b                                         ; $6065: $48
  ld c, c                                         ; $6066: $49
  ld c, d                                         ; $6067: $4a
  ld c, e                                         ; $6068: $4b
  ld c, h                                         ; $6069: $4c
  ld c, l                                         ; $606a: $4d
  ld c, [hl]                                      ; $606b: $4e
  ld c, a                                         ; $606c: $4f
  ld d, b                                         ; $606d: $50
  ld d, c                                         ; $606e: $51
  ld d, d                                         ; $606f: $52

jr_006_6070:
  ld d, e                                         ; $6070: $53
  ld d, h                                         ; $6071: $54
  ld d, l                                         ; $6072: $55
  ld d, [hl]                                      ; $6073: $56
  ld d, a                                         ; $6074: $57
  ld e, b                                         ; $6075: $58
  ld e, c                                         ; $6076: $59
  ld e, d                                         ; $6077: $5a
  ld e, e                                         ; $6078: $5b
  ld e, h                                         ; $6079: $5c
  ld e, l                                         ; $607a: $5d
  ld e, [hl]                                      ; $607b: $5e
  ld e, a                                         ; $607c: $5f
  ld h, b                                         ; $607d: $60
  ld h, c                                         ; $607e: $61
  ld h, d                                         ; $607f: $62

jr_006_6080:
  ld h, e                                         ; $6080: $63
  ld h, h                                         ; $6081: $64

  db $02

  inc bc                                          ; $6083: $03
  inc bc                                          ; $6084: $03
  inc b                                           ; $6085: $04
  dec b                                           ; $6086: $05
  ld b, $07                                       ; $6087: $06 $07
  ld [$0a09], sp                                  ; $6089: $08 $09 $0a
  dec bc                                          ; $608c: $0b
  inc c                                           ; $608d: $0c
  dec c                                           ; $608e: $0d
  ld c, $0f                                       ; $608f: $0e $0f
  db $10                                          ; $6091: $10
  ld de, $1312                                    ; $6092: $11 $12 $13
  inc d                                           ; $6095: $14
  dec d                                           ; $6096: $15
  ld d, $17                                       ; $6097: $16 $17
  jr jr_006_60b4                                  ; $6099: $18 $19

  ld a, [de]                                      ; $609b: $1a
  dec de                                          ; $609c: $1b
  inc e                                           ; $609d: $1c
  dec e                                           ; $609e: $1d
  ld e, $20                                       ; $609f: $1e $20
  ld [hl+], a                                     ; $60a1: $22
  inc h                                           ; $60a2: $24
  ld h, $28                                       ; $60a3: $26 $28
  ld a, [hl+]                                     ; $60a5: $2a
  inc l                                           ; $60a6: $2c
  ld l, $30                                       ; $60a7: $2e $30
  ld [hl-], a                                     ; $60a9: $32
  inc [hl]                                        ; $60aa: $34
  ld [hl], $38                                    ; $60ab: $36 $38
  ld a, [hl-]                                     ; $60ad: $3a
  inc a                                           ; $60ae: $3c
  ld a, $40                                       ; $60af: $3e $40
  ld b, d                                         ; $60b1: $42
  ld b, h                                         ; $60b2: $44
  ld b, [hl]                                      ; $60b3: $46

jr_006_60b4:
  ld b, a                                         ; $60b4: $47
  ld c, b                                         ; $60b5: $48
  ld c, c                                         ; $60b6: $49
  ld c, d                                         ; $60b7: $4a
  ld c, e                                         ; $60b8: $4b
  ld c, h                                         ; $60b9: $4c
  ld c, l                                         ; $60ba: $4d
  ld c, [hl]                                      ; $60bb: $4e
  ld c, a                                         ; $60bc: $4f
  ld d, b                                         ; $60bd: $50
  ld d, c                                         ; $60be: $51
  ld d, d                                         ; $60bf: $52
  ld d, e                                         ; $60c0: $53
  ld d, h                                         ; $60c1: $54
  ld d, l                                         ; $60c2: $55
  ld d, [hl]                                      ; $60c3: $56
  ld d, a                                         ; $60c4: $57
  ld e, b                                         ; $60c5: $58
  ld e, c                                         ; $60c6: $59
  ld e, d                                         ; $60c7: $5a
  ld e, e                                         ; $60c8: $5b
  ld e, h                                         ; $60c9: $5c
  ld e, l                                         ; $60ca: $5d
  ld e, [hl]                                      ; $60cb: $5e
  ld e, a                                         ; $60cc: $5f
  ld h, b                                         ; $60cd: $60
  ld h, c                                         ; $60ce: $61
  ld h, d                                         ; $60cf: $62
  ld h, e                                         ; $60d0: $63
  ld h, h                                         ; $60d1: $64
  ld h, l                                         ; $60d2: $65
  ld h, [hl]                                      ; $60d3: $66
  ld h, a                                         ; $60d4: $67
  ld l, b                                         ; $60d5: $68
  ld l, c                                         ; $60d6: $69
  ld l, d                                         ; $60d7: $6a
  ld l, e                                         ; $60d8: $6b
  ld l, h                                         ; $60d9: $6c
  ld l, l                                         ; $60da: $6d
  ld l, [hl]                                      ; $60db: $6e
  ld l, a                                         ; $60dc: $6f
  ld [hl], b                                      ; $60dd: $70
  ld [hl], c                                      ; $60de: $71
  ld [hl], d                                      ; $60df: $72
  ld [hl], e                                      ; $60e0: $73
  ld [hl], h                                      ; $60e1: $74
  ld [hl], l                                      ; $60e2: $75
  halt                                            ; $60e3: $76
  ld [hl], a                                      ; $60e4: $77
  ld a, b                                         ; $60e5: $78

  db $28, $00

  inc sp                                          ; $60e8: $33
  nop                                             ; $60e9: $00
  ld a, $00                                       ; $60ea: $3e $00
  ld c, c                                         ; $60ec: $49
  nop                                             ; $60ed: $00
  ld d, h                                         ; $60ee: $54
  nop                                             ; $60ef: $00
  ld e, a                                         ; $60f0: $5f
  nop                                             ; $60f1: $00
  ld l, d                                         ; $60f2: $6a
  nop                                             ; $60f3: $00
  ld [hl], l                                      ; $60f4: $75
  nop                                             ; $60f5: $00
  add b                                           ; $60f6: $80
  nop                                             ; $60f7: $00
  adc h                                           ; $60f8: $8c
  nop                                             ; $60f9: $00
  sbc b                                           ; $60fa: $98
  nop                                             ; $60fb: $00
  and h                                           ; $60fc: $a4
  nop                                             ; $60fd: $00
  xor a                                           ; $60fe: $af
  nop                                             ; $60ff: $00
  cp d                                            ; $6100: $ba
  nop                                             ; $6101: $00
  call nz, $ce00                                  ; $6102: $c4 $00 $ce
  nop                                             ; $6105: $00
  rst $10                                         ; $6106: $d7
  nop                                             ; $6107: $00
  rst $18                                         ; $6108: $df
  nop                                             ; $6109: $00
  rst $20                                         ; $610a: $e7
  nop                                             ; $610b: $00
  ldh a, [rP1]                                    ; $610c: $f0 $00
  ld hl, sp+$00                                   ; $610e: $f8 $00
  nop                                             ; $6110: $00
  ld bc, $0108                                    ; $6111: $01 $08 $01
  db $10                                          ; $6114: $10
  ld bc, $0118                                    ; $6115: $01 $18 $01
  jr nz, @+$03                                    ; $6118: $20 $01

  jr z, @+$03                                     ; $611a: $28 $01

  jr nc, @+$03                                    ; $611c: $30 $01

  jr c, jr_006_6121                               ; $611e: $38 $01

  ld b, b                                         ; $6120: $40

jr_006_6121:
  db $01, $48, $01                            ; $6121: $01 $48 $01
  ld d, b                                         ; $6124: $50
  ld bc, $0158                                    ; $6125: $01 $58 $01
  ld h, b                                         ; $6128: $60
  ld bc, $0168                                    ; $6129: $01 $68 $01
  ld [hl], b                                      ; $612c: $70
  ld bc, $0178                                    ; $612d: $01 $78 $01
  add b                                           ; $6130: $80
  ld bc, $0188                                    ; $6131: $01 $88 $01
  sub b                                           ; $6134: $90
  ld bc, $0197                                    ; $6135: $01 $97 $01
  sbc [hl]                                        ; $6138: $9e
  ld bc, $01a5                                    ; $6139: $01 $a5 $01
  xor h                                           ; $613c: $ac
  ld bc, $01b3                                    ; $613d: $01 $b3 $01
  cp d                                            ; $6140: $ba
  ld bc, $01c1                                    ; $6141: $01 $c1 $01
  ret z                                           ; $6144: $c8

  ld bc, $01cf                                    ; $6145: $01 $cf $01
  sub $01                                         ; $6148: $d6 $01
  db $dd                                          ; $614a: $dd
  ld bc, $01e4                                    ; $614b: $01 $e4 $01
  db $eb                                          ; $614e: $eb
  ld bc, $01f2                                    ; $614f: $01 $f2 $01
  ld sp, hl                                       ; $6152: $f9
  ld bc, $0200                                    ; $6153: $01 $00 $02
  rlca                                            ; $6156: $07
  ld [bc], a                                      ; $6157: $02
  ld c, $02                                       ; $6158: $0e $02
  dec d                                           ; $615a: $15
  ld [bc], a                                      ; $615b: $02
  inc e                                           ; $615c: $1c
  ld [bc], a                                      ; $615d: $02
  inc hl                                          ; $615e: $23
  ld [bc], a                                      ; $615f: $02
  ld a, [hl+]                                     ; $6160: $2a
  ld [bc], a                                      ; $6161: $02
  ld sp, $3802                                    ; $6162: $31 $02 $38
  ld [bc], a                                      ; $6165: $02
  ccf                                             ; $6166: $3f
  ld [bc], a                                      ; $6167: $02
  ld b, [hl]                                      ; $6168: $46
  ld [bc], a                                      ; $6169: $02
  ld c, l                                         ; $616a: $4d
  ld [bc], a                                      ; $616b: $02
  ld d, h                                         ; $616c: $54
  ld [bc], a                                      ; $616d: $02
  ld e, e                                         ; $616e: $5b
  ld [bc], a                                      ; $616f: $02
  ld h, d                                         ; $6170: $62
  ld [bc], a                                      ; $6171: $02
  ld l, c                                         ; $6172: $69
  ld [bc], a                                      ; $6173: $02
  ld [hl], b                                      ; $6174: $70
  ld [bc], a                                      ; $6175: $02
  ld [hl], a                                      ; $6176: $77
  ld [bc], a                                      ; $6177: $02
  ld a, [hl]                                      ; $6178: $7e
  ld [bc], a                                      ; $6179: $02
  add l                                           ; $617a: $85
  ld [bc], a                                      ; $617b: $02
  adc h                                           ; $617c: $8c
  ld [bc], a                                      ; $617d: $02
  sub e                                           ; $617e: $93
  ld [bc], a                                      ; $617f: $02
  sbc c                                           ; $6180: $99
  ld [bc], a                                      ; $6181: $02
  and b                                           ; $6182: $a0
  ld [bc], a                                      ; $6183: $02
  and a                                           ; $6184: $a7
  ld [bc], a                                      ; $6185: $02
  xor [hl]                                        ; $6186: $ae
  ld [bc], a                                      ; $6187: $02
  or h                                            ; $6188: $b4
  ld [bc], a                                      ; $6189: $02
  cp d                                            ; $618a: $ba
  ld [bc], a                                      ; $618b: $02
  ret nz                                          ; $618c: $c0

  ld [bc], a                                      ; $618d: $02
  add $02                                         ; $618e: $c6 $02
  call z, $d202                                   ; $6190: $cc $02 $d2
  ld [bc], a                                      ; $6193: $02
  ret c                                           ; $6194: $d8

  ld [bc], a                                      ; $6195: $02
  sbc $02                                         ; $6196: $de $02
  db $e4                                          ; $6198: $e4
  ld [bc], a                                      ; $6199: $02
  ld [$f002], a                                   ; $619a: $ea $02 $f0
  ld [bc], a                                      ; $619d: $02
  or $02                                          ; $619e: $f6 $02
  db $fc                                          ; $61a0: $fc
  ld [bc], a                                      ; $61a1: $02
  ld [bc], a                                      ; $61a2: $02
  inc bc                                          ; $61a3: $03
  ld [$0e03], sp                                  ; $61a4: $08 $03 $0e
  inc bc                                          ; $61a7: $03
  inc d                                           ; $61a8: $14
  inc bc                                          ; $61a9: $03
  ld a, [de]                                      ; $61aa: $1a
  inc bc                                          ; $61ab: $03
  ld d, d                                         ; $61ac: $52
  inc bc                                          ; $61ad: $03

  db $14, $00

  dec d                                           ; $61b0: $15
  nop                                             ; $61b1: $00
  dec d                                           ; $61b2: $15
  nop                                             ; $61b3: $00
  ld d, $00                                       ; $61b4: $16 $00
  ld d, $00                                       ; $61b6: $16 $00
  rla                                             ; $61b8: $17
  nop                                             ; $61b9: $00
  rla                                             ; $61ba: $17
  nop                                             ; $61bb: $00
  jr jr_006_61be                                  ; $61bc: $18 $00

jr_006_61be:
  jr jr_006_61c0                                  ; $61be: $18 $00

jr_006_61c0:
  add hl, de                                      ; $61c0: $19
  nop                                             ; $61c1: $00
  ld a, [de]                                      ; $61c2: $1a
  nop                                             ; $61c3: $00
  inc e                                           ; $61c4: $1c
  nop                                             ; $61c5: $00
  dec e                                           ; $61c6: $1d
  nop                                             ; $61c7: $00
  rra                                             ; $61c8: $1f
  nop                                             ; $61c9: $00
  jr nz, jr_006_61cc                              ; $61ca: $20 $00

jr_006_61cc:
  ld [hl+], a                                     ; $61cc: $22
  nop                                             ; $61cd: $00
  inc hl                                          ; $61ce: $23
  nop                                             ; $61cf: $00
  dec h                                           ; $61d0: $25
  nop                                             ; $61d1: $00
  ld h, $00                                       ; $61d2: $26 $00
  jr z, jr_006_61d6                               ; $61d4: $28 $00

jr_006_61d6:
  dec hl                                          ; $61d6: $2b
  nop                                             ; $61d7: $00
  ld l, $00                                       ; $61d8: $2e $00
  ld sp, $3400                                    ; $61da: $31 $00 $34
  nop                                             ; $61dd: $00
  scf                                             ; $61de: $37
  nop                                             ; $61df: $00
  ld a, [hl-]                                     ; $61e0: $3a
  nop                                             ; $61e1: $00
  dec a                                           ; $61e2: $3d
  nop                                             ; $61e3: $00
  ld b, b                                         ; $61e4: $40
  nop                                             ; $61e5: $00
  ld b, e                                         ; $61e6: $43
  nop                                             ; $61e7: $00
  ld b, [hl]                                      ; $61e8: $46
  nop                                             ; $61e9: $00
  ld c, d                                         ; $61ea: $4a
  nop                                             ; $61eb: $00
  ld c, [hl]                                      ; $61ec: $4e
  nop                                             ; $61ed: $00
  ld d, d                                         ; $61ee: $52
  nop                                             ; $61ef: $00
  ld d, [hl]                                      ; $61f0: $56
  nop                                             ; $61f1: $00
  ld e, d                                         ; $61f2: $5a
  nop                                             ; $61f3: $00
  ld e, [hl]                                      ; $61f4: $5e
  nop                                             ; $61f5: $00
  ld h, d                                         ; $61f6: $62
  nop                                             ; $61f7: $00
  ld h, [hl]                                      ; $61f8: $66
  nop                                             ; $61f9: $00
  ld l, d                                         ; $61fa: $6a
  nop                                             ; $61fb: $00
  ld l, [hl]                                      ; $61fc: $6e
  nop                                             ; $61fd: $00
  ld [hl], e                                      ; $61fe: $73
  nop                                             ; $61ff: $00
  ld a, b                                         ; $6200: $78
  nop                                             ; $6201: $00
  ld a, l                                         ; $6202: $7d
  nop                                             ; $6203: $00
  add d                                           ; $6204: $82
  nop                                             ; $6205: $00
  add a                                           ; $6206: $87
  nop                                             ; $6207: $00
  adc h                                           ; $6208: $8c
  nop                                             ; $6209: $00
  sub c                                           ; $620a: $91
  nop                                             ; $620b: $00
  sub [hl]                                        ; $620c: $96
  nop                                             ; $620d: $00
  sbc e                                           ; $620e: $9b
  nop                                             ; $620f: $00
  and b                                           ; $6210: $a0
  nop                                             ; $6211: $00
  xor b                                           ; $6212: $a8
  nop                                             ; $6213: $00
  or b                                            ; $6214: $b0
  nop                                             ; $6215: $00
  cp b                                            ; $6216: $b8
  nop                                             ; $6217: $00
  ret nz                                          ; $6218: $c0

  nop                                             ; $6219: $00
  ret z                                           ; $621a: $c8

  nop                                             ; $621b: $00
  ret nc                                          ; $621c: $d0

  nop                                             ; $621d: $00
  ret c                                           ; $621e: $d8

  nop                                             ; $621f: $00
  ldh [rP1], a                                    ; $6220: $e0 $00
  add sp, $00                                     ; $6222: $e8 $00
  ldh a, [rP1]                                    ; $6224: $f0 $00
  ld hl, sp+$00                                   ; $6226: $f8 $00
  nop                                             ; $6228: $00
  ld bc, $0108                                    ; $6229: $01 $08 $01
  db $10                                          ; $622c: $10
  ld bc, $0118                                    ; $622d: $01 $18 $01
  jr nz, @+$03                                    ; $6230: $20 $01

  jr z, @+$03                                     ; $6232: $28 $01

  jr nc, @+$03                                    ; $6234: $30 $01

  jr c, jr_006_6239                               ; $6236: $38 $01

  ld b, b                                         ; $6238: $40

jr_006_6239:
  db $01, $4d, $01                    ; $6239: $01 $4d $01
  ld e, b                                         ; $623c: $58
  ld bc, $0163                                    ; $623d: $01 $63 $01
  ld l, [hl]                                      ; $6240: $6e
  ld bc, $0179                                    ; $6241: $01 $79 $01
  add h                                           ; $6244: $84
  ld bc, $018f                                    ; $6245: $01 $8f $01
  sbc d                                           ; $6248: $9a
  ld bc, $01a5                                    ; $6249: $01 $a5 $01
  xor [hl]                                        ; $624c: $ae
  ld bc, $01bb                                    ; $624d: $01 $bb $01
  add $01                                         ; $6250: $c6 $01
  pop de                                          ; $6252: $d1
  ld bc, $01dc                                    ; $6253: $01 $dc $01
  rst $20                                         ; $6256: $e7
  ld bc, $01f2                                    ; $6257: $01 $f2 $01
  db $fd                                          ; $625a: $fd
  ld bc, $0208                                    ; $625b: $01 $08 $02
  inc de                                          ; $625e: $13
  ld [bc], a                                      ; $625f: $02
  inc e                                           ; $6260: $1c
  ld [bc], a                                      ; $6261: $02
  add hl, hl                                      ; $6262: $29
  ld [bc], a                                      ; $6263: $02
  inc [hl]                                        ; $6264: $34
  ld [bc], a                                      ; $6265: $02
  ccf                                             ; $6266: $3f
  ld [bc], a                                      ; $6267: $02
  ld c, d                                         ; $6268: $4a
  ld [bc], a                                      ; $6269: $02
  ld d, l                                         ; $626a: $55
  ld [bc], a                                      ; $626b: $02
  ld h, b                                         ; $626c: $60
  ld [bc], a                                      ; $626d: $02
  ld l, e                                         ; $626e: $6b
  ld [bc], a                                      ; $626f: $02
  halt                                            ; $6270: $76
  ld [bc], a                                      ; $6271: $02
  add c                                           ; $6272: $81
  ld [bc], a                                      ; $6273: $02
  adc d                                           ; $6274: $8a
  ld [bc], a                                      ; $6275: $02

  db $96

  sub l                                           ; $6277: $95
  sub h                                           ; $6278: $94
  sub e                                           ; $6279: $93
  sub d                                           ; $627a: $92
  sub b                                           ; $627b: $90
  adc a                                           ; $627c: $8f
  adc [hl]                                        ; $627d: $8e
  adc l                                           ; $627e: $8d
  adc h                                           ; $627f: $8c
  adc e                                           ; $6280: $8b
  adc d                                           ; $6281: $8a
  adc c                                           ; $6282: $89
  adc b                                           ; $6283: $88
  add a                                           ; $6284: $87
  add [hl]                                        ; $6285: $86
  add l                                           ; $6286: $85
  add h                                           ; $6287: $84
  add e                                           ; $6288: $83
  add d                                           ; $6289: $82
  add c                                           ; $628a: $81
  add b                                           ; $628b: $80
  ld a, a                                         ; $628c: $7f
  ld a, [hl]                                      ; $628d: $7e
  ld a, l                                         ; $628e: $7d
  ld a, h                                         ; $628f: $7c
  ld a, e                                         ; $6290: $7b
  ld a, d                                         ; $6291: $7a
  ld a, c                                         ; $6292: $79
  ld a, b                                         ; $6293: $78
  ld [hl], a                                      ; $6294: $77
  halt                                            ; $6295: $76
  ld [hl], l                                      ; $6296: $75
  ld [hl], h                                      ; $6297: $74
  ld [hl], e                                      ; $6298: $73
  ld [hl], d                                      ; $6299: $72
  ld [hl], c                                      ; $629a: $71
  ld [hl], b                                      ; $629b: $70
  ld l, a                                         ; $629c: $6f
  ld l, [hl]                                      ; $629d: $6e
  ld l, l                                         ; $629e: $6d
  ld l, h                                         ; $629f: $6c
  ld l, e                                         ; $62a0: $6b
  ld l, d                                         ; $62a1: $6a
  ld l, c                                         ; $62a2: $69
  ld l, b                                         ; $62a3: $68
  ld h, a                                         ; $62a4: $67
  ld h, [hl]                                      ; $62a5: $66
  ld h, l                                         ; $62a6: $65
  ld h, h                                         ; $62a7: $64
  ld h, e                                         ; $62a8: $63
  ld h, d                                         ; $62a9: $62
  ld h, c                                         ; $62aa: $61
  ld h, b                                         ; $62ab: $60
  ld e, a                                         ; $62ac: $5f
  ld e, [hl]                                      ; $62ad: $5e
  ld e, l                                         ; $62ae: $5d
  ld e, h                                         ; $62af: $5c
  ld e, e                                         ; $62b0: $5b
  ld e, d                                         ; $62b1: $5a
  ld e, c                                         ; $62b2: $59
  ld e, b                                         ; $62b3: $58
  ld d, a                                         ; $62b4: $57
  ld d, [hl]                                      ; $62b5: $56
  ld d, l                                         ; $62b6: $55
  ld d, h                                         ; $62b7: $54
  ld d, e                                         ; $62b8: $53
  ld d, d                                         ; $62b9: $52
  ld d, c                                         ; $62ba: $51
  ld d, b                                         ; $62bb: $50
  ld c, a                                         ; $62bc: $4f
  ld c, [hl]                                      ; $62bd: $4e
  ld c, l                                         ; $62be: $4d
  ld c, h                                         ; $62bf: $4c
  ld c, e                                         ; $62c0: $4b
  ld c, d                                         ; $62c1: $4a
  ld c, c                                         ; $62c2: $49
  ld c, b                                         ; $62c3: $48
  ld b, a                                         ; $62c4: $47
  ld b, [hl]                                      ; $62c5: $46
  ld b, l                                         ; $62c6: $45
  ld b, h                                         ; $62c7: $44
  ld b, e                                         ; $62c8: $43
  ld b, d                                         ; $62c9: $42
  ld b, c                                         ; $62ca: $41
  ld b, b                                         ; $62cb: $40
  ccf                                             ; $62cc: $3f
  ld a, $3d                                       ; $62cd: $3e $3d
  inc a                                           ; $62cf: $3c
  dec sp                                          ; $62d0: $3b
  ld a, [hl-]                                     ; $62d1: $3a
  add hl, sp                                      ; $62d2: $39
  jr c, jr_006_630c                               ; $62d3: $38 $37

  ld [hl], $35                                    ; $62d5: $36 $35
  inc [hl]                                        ; $62d7: $34
  inc sp                                          ; $62d8: $33
  ld [hl-], a                                     ; $62d9: $32

  db $e0, $62, $09, $63

  ld [hl+], a                                     ; $62de: $22
  ld h, e                                         ; $62df: $63

  db $28

  nop                                             ; $62e1: $00
  ld bc, $0403                                    ; $62e2: $01 $03 $04

  db $08

  ld a, [bc]                                      ; $62e6: $0a

  db $0c, $0e

  rrca                                            ; $62e9: $0f
  db $10                                          ; $62ea: $10
  ld de, $1412                                    ; $62eb: $11 $12 $14
  dec d                                           ; $62ee: $15
  rla                                             ; $62ef: $17
  ld a, [de]                                      ; $62f0: $1a
  dec de                                          ; $62f1: $1b
  dec e                                           ; $62f2: $1d
  rra                                             ; $62f3: $1f
  jr nz, jr_006_6319                              ; $62f4: $20 $23

  dec h                                           ; $62f6: $25
  daa                                             ; $62f7: $27

  db $28

  add hl, hl                                      ; $62f9: $29
  add hl, sp                                      ; $62fa: $39
  ld a, [hl-]                                     ; $62fb: $3a
  dec sp                                          ; $62fc: $3b
  inc a                                           ; $62fd: $3c
  dec a                                           ; $62fe: $3d
  ld a, $3f                                       ; $62ff: $3e $3f
  ld b, b                                         ; $6301: $40
  ld b, c                                         ; $6302: $41
  ld b, d                                         ; $6303: $42
  ld b, e                                         ; $6304: $43
  ld b, h                                         ; $6305: $44
  ld b, l                                         ; $6306: $45
  ld b, [hl]                                      ; $6307: $46
  ld b, a                                         ; $6308: $47

  db $18

  ld [bc], a                                      ; $630a: $02

  db $05

jr_006_630c:
  rlca                                            ; $630c: $07
  dec bc                                          ; $630d: $0b

  db $0d

  inc de                                          ; $630f: $13

  db $16, $18, $19

  ld e, $21                                       ; $6313: $1e $21
  ld [hl+], a                                     ; $6315: $22
  inc h                                           ; $6316: $24
  db $26                                          ; $6317: $26

  db $2a

jr_006_6319:
  dec hl                                          ; $6319: $2b
  db $31                                          ; $631a: $31

  db $32, $33

  inc [hl]                                        ; $631d: $34
  dec [hl]                                        ; $631e: $35
  ld [hl], $37                                    ; $631f: $36 $37
  db $38                                          ; $6321: $38

  db $09, $06, $09, $1c, $2c, $2d, $2e, $2f, $30, $48

jr_006_632c:
  nop                                             ; $632c: $00
  nop                                             ; $632d: $00
  inc bc                                          ; $632e: $03
  inc bc                                          ; $632f: $03
  db $06                                          ; $6330: $06

  db $06

  add hl, bc                                      ; $6332: $09
  add hl, bc                                      ; $6333: $09
  dec c                                           ; $6334: $0d

  db $0d

  rrca                                            ; $6336: $0f

  db $0f, $11, $11

  ld a, [bc]                                      ; $633a: $0a
  ld a, [bc]                                      ; $633b: $0a
  inc c                                           ; $633c: $0c

  db $0c, $0e, $0e

  dec bc                                          ; $6340: $0b

  db $0b

  db $10                                          ; $6342: $10
  db $10                                          ; $6343: $10
  ld [de], a                                      ; $6344: $12

  db $12

  inc de                                          ; $6346: $13

  db $13

  dec d                                           ; $6348: $15

  db $15

  ld d, $16                                       ; $634a: $16 $16
  dec e                                           ; $634c: $1d
  dec e                                           ; $634d: $1d
  ld e, $1e                                       ; $634e: $1e $1e
  inc e                                           ; $6350: $1c
  inc e                                           ; $6351: $1c
  db $20                                          ; $6352: $20

  db $20

  ld hl, $2721                                    ; $6354: $21 $21 $27
  daa                                             ; $6357: $27
  db $28                                          ; $6358: $28

  db $28

  inc l                                           ; $635a: $2c
  inc l                                           ; $635b: $2c
  db $31                                          ; $635c: $31

  db $31

  inc [hl]                                        ; $635e: $34

  db $34

  ld [hl], $36                                    ; $6360: $36 $36
  add hl, sp                                      ; $6362: $39
  add hl, sp                                      ; $6363: $39

  db $3b, $3b

  dec a                                           ; $6366: $3d
  dec a                                           ; $6367: $3d
  ld a, $3e                                       ; $6368: $3e $3e
  ccf                                             ; $636a: $3f
  ccf                                             ; $636b: $3f
  ld b, d                                         ; $636c: $42
  ld b, d                                         ; $636d: $42
  ld b, l                                         ; $636e: $45
  ld b, l                                         ; $636f: $45
  ld b, [hl]                                      ; $6370: $46

  db $46

  ld b, a                                         ; $6372: $47
  ld b, a                                         ; $6373: $47

jr_006_6374:
  ld b, c                                         ; $6374: $41

  db $41

  ld c, b                                         ; $6376: $48
  ld c, b                                         ; $6377: $48
  ld c, h                                         ; $6378: $4c
  ld c, h                                         ; $6379: $4c
  ld c, [hl]                                      ; $637a: $4e

  db $4e

  ld d, b                                         ; $637c: $50

  db $50

  ld d, e                                         ; $637e: $53
  ld d, e                                         ; $637f: $53
  ld h, e                                         ; $6380: $63

  db $63

jr_006_6382:
  ld h, b                                         ; $6382: $60
  ld h, b                                         ; $6383: $60

  db $1f, $01, $2d, $14, $30, $26, $4b, $44, $61, $54

  ld a, [hl+]                                     ; $638e: $2a
  inc b                                           ; $638f: $04
  dec [hl]                                        ; $6390: $35

  db $07

  ld a, [hl-]                                     ; $6392: $3a

  db $1a

  ld b, e                                         ; $6394: $43
  dec h                                           ; $6395: $25
  ld d, l                                         ; $6396: $55
  cpl                                             ; $6397: $2f
  ld e, e                                         ; $6398: $5b
  inc a                                           ; $6399: $3c
  ld d, c                                         ; $639a: $51

  db $4d

  ld e, l                                         ; $639c: $5d
  ld d, a                                         ; $639d: $57
  dec b                                           ; $639e: $05
  ld e, [hl]                                      ; $639f: $5e
  ld [$1764], sp                                  ; $63a0: $08 $64 $17

  db $5f

  jr @+$5a                                        ; $63a4: $18 $58

  dec de                                          ; $63a6: $1b
  ld e, c                                         ; $63a7: $59
  add hl, hl                                      ; $63a8: $29
  ld c, d                                         ; $63a9: $4a
  inc sp                                          ; $63aa: $33
  ld c, c                                         ; $63ab: $49
  ld [hl-], a                                     ; $63ac: $32
  scf                                             ; $63ad: $37
  ld b, b                                         ; $63ae: $40
  dec hl                                          ; $63af: $2b
  ld c, a                                         ; $63b0: $4f
  ld l, $52                                       ; $63b1: $2e $52
  ld [hl+], a                                     ; $63b3: $22
  ld e, d                                         ; $63b4: $5a
  inc h                                           ; $63b5: $24
  ld d, [hl]                                      ; $63b6: $56
  inc hl                                          ; $63b7: $23
  ld e, h                                         ; $63b8: $5c
  add hl, de                                      ; $63b9: $19
  ld h, d                                         ; $63ba: $62

  db $02, $38, $38, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $8e, $95, $ff
  db $ff, $50, $ff, $05, $ff, $91, $96, $04, $ff, $ff, $ff, $33, $ff, $8e, $ff, $10
  db $ff, $ff, $ff, $ff, $ff, $95, $ff, $ff, $ff, $95, $ff, $11, $ff, $ff, $ff, $2c
  db $ff, $96, $ff, $17, $26, $96, $ff, $31, $47, $91, $ff, $ff, $ff, $ff, $ff, $ff
  db $ff, $ff, $ff, $3b, $0d, $ff, $ff, $27, $ff, $8e, $ff, $32, $36, $95, $ff, $ff
  db $ff, $8e, $ff, $2d, $ff, $91, $ff, $40, $ff, $96, $ff, $38, $ff, $93, $ff, $20
  db $47, $ff, $ff, $35, $ff, $ff, $ff, $3c, $ff, $90, $ff, $ff, $ff, $f9, $ff, $41
  db $21, $ff, $ff, $ff, $ff, $f9, $ff, $44, $13, $8f, $90, $ff, $ff, $ff, $ff, $ff
  db $ff, $ff, $ff, $1b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $24
  db $ff, $8e, $ff, $2b, $ff, $91, $ff, $18, $ff, $90, $ff, $05, $ff, $8e, $ff, $ff
  db $ff, $94, $ff, $02, $ff, $8f, $ff, $15, $02, $90, $ff, $24, $04, $96, $ff, $3e
  db $05, $fa, $ff, $29, $21, $93, $ff, $37, $47, $8e, $ff, $0a, $2e, $91, $ff, $0e
  db $34, $95, $ff, $ff, $ff, $94, $ff, $ff, $ff, $ff, $ff, $38, $ff, $91, $ff, $ff
  db $ff, $ff, $ff, $25, $ff, $92, $ff, $1a, $ff, $95, $ff, $1e, $ff, $94, $8e, $1f
  db $0d, $fa, $ff, $06, $ff, $93, $ff, $ff, $ff, $91, $ff, $ff, $ff, $ff, $ff, $19
  db $ff, $90, $ff, $3f, $ff, $fa, $ff, $ff, $ff, $ff, $ff, $08, $ff, $93, $ff, $0b
  db $ff, $95, $ff, $ff, $ff, $96, $ff, $33, $22, $96, $ff, $30, $28, $94, $ff, $01
  db $30, $fa, $ff, $2f, $ff, $93, $ff, $03, $31, $8f, $ff, $07, $ff, $8e, $ff, $16
  db $ff, $fa, $ff, $21, $ff, $8e, $ff, $39, $33, $8f, $ff, $2b, $ff, $8e, $ff, $2d
  db $ff, $92, $ff, $42, $36, $91, $ff, $36, $34, $8f, $ff, $0c, $ff, $90, $ff, $1d
  db $30, $93, $ff, $18, $ff, $90, $ff, $3a, $ff, $94, $ff, $0f, $ff, $96, $ff, $0d
  db $ff, $92, $ff, $34, $2c, $fa, $ff, $23, $26, $90, $ff, $30, $ff, $8f, $ff, $3d
  db $65, $96, $ff, $24, $ff, $93, $ff, $26, $ff, $8f, $ff, $22, $ff, $93, $ff, $43
  db $ff, $fa, $ff, $14, $ff, $92, $ff, $38, $1e, $8e, $ff, $19, $ff, $8e, $ff, $ff
  db $ff, $94, $ff, $12, $ff, $96, $ff, $42, $ff, $91, $ff, $26, $ff, $95, $ff, $06
  db $ff, $90, $ff, $46, $ff, $92, $ff, $1e, $ff, $91, $ff, $45, $ff, $fb, $ff, $32
  db $ff, $8f, $ff, $35, $ff, $96, $ff, $2a, $ff, $95, $ff, $16, $ff, $93, $ff, $2b
  db $ff, $93, $ff, $2f, $ff, $8f, $ff, $2f, $2b, $92, $93, $37, $ff, $ff, $ff, $0b
  db $ff, $ff, $ff, $07, $ff, $8f, $ff, $2e, $07, $92, $ff, $37, $ff, $94, $ff, $ff
  db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
  db $ff, $ff, $ff, $07, $07, $0d, $05, $01, $23, $00, $00, $24, $18, $1e, $1e, $16
  db $06, $23, $01, $0f, $25, $12, $08, $0c, $0c, $10, $10, $1f, $21, $17, $20, $04
  db $1b, $05, $0d, $03, $03, $0b, $1d, $18, $24, $09, $09, $14, $14, $08, $12, $0e
  db $0e, $21, $1f, $0a, $0a, $1a, $1a, $1d, $0b, $19, $19, $06, $16, $11, $11, $27
  db $27, $1c, $1c, $13, $13, $15, $15, $22, $22, $26, $26, $20, $17, $02, $02, $1b
  db $04, $25, $0f

  add hl, de                                      ; $65ee: $19

  db $ff

  rst $38                                         ; $65f0: $ff
  add hl, de                                      ; $65f1: $19

  db $32, $ff

  add hl, de                                      ; $65f4: $19

  db $32

  rst $38                                         ; $65f6: $ff

  db $19, $32

  rst $38                                         ; $65f9: $ff

  db $19

  ld [hl-], a                                     ; $65fb: $32
  rst $38                                         ; $65fc: $ff
  rst $38                                         ; $65fd: $ff
  rst $38                                         ; $65fe: $ff
  rst $38                                         ; $65ff: $ff
  rst $38                                         ; $6600: $ff
  rst $38                                         ; $6601: $ff
  rst $38                                         ; $6602: $ff

  db $ff

  rst $38                                         ; $6604: $ff

  db $ff

  rst $38                                         ; $6606: $ff
  rst $38                                         ; $6607: $ff
  rst $38                                         ; $6608: $ff

  push bc                                         ; $6609: $c5
  push de                                         ; $660a: $d5
  push hl                                         ; $660b: $e5
  ld c, a                                         ; $660c: $4f
  ld hl, $6322                                    ; $660d: $21 $22 $63
  ld a, [hl+]                                     ; $6610: $2a
  ld b, a                                         ; $6611: $47

jr_006_6612:
  ld a, [hl+]                                     ; $6612: $2a
  push hl                                         ; $6613: $e5
  ld hl, $632c                                    ; $6614: $21 $2c $63
  call ResolveIndexedPointer16                              ; $6617: $cd $8b $31
  ld a, l                                         ; $661a: $7d
  cp c                                            ; $661b: $b9
  jr z, jr_006_662a                               ; $661c: $28 $0c

  ld a, h                                         ; $661e: $7c
  cp c                                            ; $661f: $b9
  jr z, jr_006_662a                               ; $6620: $28 $08

  pop hl                                          ; $6622: $e1
  dec b                                           ; $6623: $05
  jr nz, jr_006_6612                              ; $6624: $20 $ec

  ld l, $00                                       ; $6626: $2e $00
  jr jr_006_662c                                  ; $6628: $18 $02

jr_006_662a:
  pop hl                                          ; $662a: $e1
  ld l, a                                         ; $662b: $6f

jr_006_662c:
  or a                                            ; $662c: $b7
  rl l                                            ; $662d: $cb $15
  ld a, c                                         ; $662f: $79
  pop hl                                          ; $6630: $e1
  pop de                                          ; $6631: $d1
  pop bc                                          ; $6632: $c1
  ret                                             ; $6633: $c9


Call_006_6634:
  ld hl, $62da                                    ; $6634: $21 $da $62
  call ResolveIndexedPointer16                              ; $6637: $cd $8b $31
  ld a, [hl+]                                     ; $663a: $2a
  call Call_000_28e6                              ; $663b: $cd $e6 $28
  rst $08                                         ; $663e: $cf

Call_006_663f:
  cp $ff                                          ; $663f: $fe $ff
  ret z                                           ; $6641: $c8

  push hl                                         ; $6642: $e5
  ld hl, $632c                                    ; $6643: $21 $2c $63
  call Call_000_317a                              ; $6646: $cd $7a $31
  ld a, [$ce3d]                                   ; $6649: $fa $3d $ce
  rst $08                                         ; $664c: $cf
  pop hl                                          ; $664d: $e1
  ret                                             ; $664e: $c9


Call_006_664f:
  ldh a, [rSVBK]                                  ; $664f: $f0 $70
  push af                                         ; $6651: $f5
  ld a, $06                                       ; $6652: $3e $06
  ldh [rSVBK], a                                  ; $6654: $e0 $70
  ldh a, [$ffd6]                                  ; $6656: $f0 $d6
  ld hl, $ddc8                                    ; $6658: $21 $c8 $dd
  call Call_000_316b                              ; $665b: $cd $6b $31
  ld a, c                                         ; $665e: $79
  rst $08                                         ; $665f: $cf
  ld b, a                                         ; $6660: $47
  pop af                                          ; $6661: $f1
  ldh [rSVBK], a                                  ; $6662: $e0 $70
  ld a, b                                         ; $6664: $78
  ret                                             ; $6665: $c9


  push bc                                         ; $6666: $c5
  ld b, $ff                                       ; $6667: $06 $ff
  ld c, a                                         ; $6669: $4f
  and $02                                         ; $666a: $e6 $02
  jr z, jr_006_6671                               ; $666c: $28 $03

  call Call_006_664f                              ; $666e: $cd $4f $66

jr_006_6671:
  ld a, b                                         ; $6671: $78
  pop bc                                          ; $6672: $c1
  ret                                             ; $6673: $c9


  push bc                                         ; $6674: $c5
  ld b, $ff                                       ; $6675: $06 $ff
  ld c, a                                         ; $6677: $4f
  and $02                                         ; $6678: $e6 $02
  jr nz, jr_006_6683                              ; $667a: $20 $07

  call Call_006_664f                              ; $667c: $cd $4f $66
  call Call_006_663f                              ; $667f: $cd $3f $66
  ld b, a                                         ; $6682: $47

jr_006_6683:
  ld a, b                                         ; $6683: $78
  pop bc                                          ; $6684: $c1
  ret                                             ; $6685: $c9


  push bc                                         ; $6686: $c5
  and $02                                         ; $6687: $e6 $02
  jr nz, jr_006_6696                              ; $6689: $20 $0b

  ld a, c                                         ; $668b: $79
  call Call_000_33f3                              ; $668c: $cd $f3 $33

  db $04, $f2, $46

  ld d, $03                                       ; $6692: $16 $03
  jr jr_006_66b8                                  ; $6694: $18 $22

jr_006_6696:
  ld d, c                                         ; $6696: $51
  ld a, c                                         ; $6697: $79
  cp $99                                          ; $6698: $fe $99
  jr c, jr_006_66af                               ; $669a: $38 $13

  jr z, jr_006_66af                               ; $669c: $28 $11

  ld a, $64                                       ; $669e: $3e $64
  call Call_000_28e6                              ; $66a0: $cd $e6 $28
  add $64                                         ; $66a3: $c6 $64
  ld l, a                                         ; $66a5: $6f
  ld h, $00                                       ; $66a6: $26 $00
  call Call_006_6baa                              ; $66a8: $cd $aa $6b
  ld d, $01                                       ; $66ab: $16 $01
  jr jr_006_66b8                                  ; $66ad: $18 $09

jr_006_66af:
  ld a, d                                         ; $66af: $7a
  call Call_000_33f3                              ; $66b0: $cd $f3 $33

  db $04, $2b, $6d

  ld d, $02                                       ; $66b6: $16 $02

jr_006_66b8:
  pop bc                                          ; $66b8: $c1
  ret                                             ; $66b9: $c9


Call_006_66ba:
  ldh a, [rSVBK]                                  ; $66ba: $f0 $70
  push af                                         ; $66bc: $f5
  ld a, $06                                       ; $66bd: $3e $06
  ldh [rSVBK], a                                  ; $66bf: $e0 $70
  ld bc, $01e0                                    ; $66c1: $01 $e0 $01
  ld de, $ddc8                                    ; $66c4: $11 $c8 $dd
  ld hl, $63be                                    ; $66c7: $21 $be $63
  call Call_000_129c                              ; $66ca: $cd $9c $12
  pop af                                          ; $66cd: $f1
  ldh [rSVBK], a                                  ; $66ce: $e0 $70
  ret                                             ; $66d0: $c9


  push af                                         ; $66d1: $f5
  ldh a, [$ffd6]                                  ; $66d2: $f0 $d6
  ld hl, $ddc8                                    ; $66d4: $21 $c8 $dd
  call Call_000_316b                              ; $66d7: $cd $6b $31
  pop af                                          ; $66da: $f1
  rst $08                                         ; $66db: $cf
  ldh a, [rSVBK]                                  ; $66dc: $f0 $70
  push af                                         ; $66de: $f5
  ld a, $06                                       ; $66df: $3e $06
  ldh [rSVBK], a                                  ; $66e1: $e0 $70
  ld [hl], $ff                                    ; $66e3: $36 $ff
  pop af                                          ; $66e5: $f1
  ldh [rSVBK], a                                  ; $66e6: $e0 $70
  ret                                             ; $66e8: $c9


Call_006_66e9:
  ldh a, [rSVBK]                                  ; $66e9: $f0 $70
  push af                                         ; $66eb: $f5
  ld a, $06                                       ; $66ec: $3e $06
  ldh [rSVBK], a                                  ; $66ee: $e0 $70
  ld bc, $0050                                    ; $66f0: $01 $50 $00
  ld de, $dfa8                                    ; $66f3: $11 $a8 $df
  ld hl, $659e                                    ; $66f6: $21 $9e $65
  call Call_000_129c                              ; $66f9: $cd $9c $12
  pop af                                          ; $66fc: $f1
  ldh [rSVBK], a                                  ; $66fd: $e0 $70
  ret                                             ; $66ff: $c9


  call Call_006_6778                              ; $6700: $cd $78 $67
  call Call_000_33f3                              ; $6703: $cd $f3 $33

  db $04, $a2, $6a

  call Call_000_33f3                              ; $6709: $cd $f3 $33

  db $04, $b8, $6a

  call Call_006_69ac                              ; $670f: $cd $ac $69
  call Call_006_6a52                              ; $6712: $cd $52 $6a
  call Call_006_6a71                              ; $6715: $cd $71 $6a
  call Call_006_6a90                              ; $6718: $cd $90 $6a
  call Call_006_6aaf                              ; $671b: $cd $af $6a
  ldh a, [rSVBK]                                  ; $671e: $f0 $70
  push af                                         ; $6720: $f5
  ld a, $06                                       ; $6721: $3e $06
  ldh [rSVBK], a                                  ; $6723: $e0 $70
  ld hl, $dcc8                                    ; $6725: $21 $c8 $dc
  ld bc, $0100                                    ; $6728: $01 $00 $01
  call Call_000_1248                              ; $672b: $cd $48 $12
  xor a                                           ; $672e: $af
  ld [$dcc8], a                                   ; $672f: $ea $c8 $dc
  inc a                                           ; $6732: $3c
  ld [$ddc7], a                                   ; $6733: $ea $c7 $dd
  call Call_006_6f2c                              ; $6736: $cd $2c $6f
  pop af                                          ; $6739: $f1
  ldh [rSVBK], a                                  ; $673a: $e0 $70
  call Call_006_66ba                              ; $673c: $cd $ba $66
  call Call_006_66e9                              ; $673f: $cd $e9 $66
  xor a                                           ; $6742: $af
  ld hl, $ce3a                                    ; $6743: $21 $3a $ce
  ld [hl+], a                                     ; $6746: $22
  ld [hl+], a                                     ; $6747: $22
  ld [hl+], a                                     ; $6748: $22
  call Call_000_33f3                              ; $6749: $cd $f3 $33

  db $08, $d1, $73

  call Call_006_67f1                              ; $674f: $cd $f1 $67
  ld a, $32                                       ; $6752: $3e $32
  ld [$caf4], a                                   ; $6754: $ea $f4 $ca
  ld [$caf5], a                                   ; $6757: $ea $f5 $ca
  ld a, $64                                       ; $675a: $3e $64
  ld [$caf7], a                                   ; $675c: $ea $f7 $ca
  ld [$caf8], a                                   ; $675f: $ea $f8 $ca
  ld a, $12                                       ; $6762: $3e $12
  ld [$caf6], a                                   ; $6764: $ea $f6 $ca
  xor a                                           ; $6767: $af
  ld [$c0a0], a                                   ; $6768: $ea $a0 $c0
  ldh [$ffd6], a                                  ; $676b: $e0 $d6
  ldh [$ffd8], a                                  ; $676d: $e0 $d8
  ldh [$ffd7], a                                  ; $676f: $e0 $d7
  ld [$ce38], a                                   ; $6771: $ea $38 $ce
  ld [$ce39], a                                   ; $6774: $ea $39 $ce
  ret                                             ; $6777: $c9


Call_006_6778:
  ld a, $05                                       ; $6778: $3e $05
  ld [$ce4a], a                                   ; $677a: $ea $4a $ce
  ld a, $01                                       ; $677d: $3e $01
  ld [$ce37], a                                   ; $677f: $ea $37 $ce
  ld [$ce6d], a                                   ; $6782: $ea $6d $ce
  ld [$ce7e], a                                   ; $6785: $ea $7e $ce
  ld [$ce8f], a                                   ; $6788: $ea $8f $ce
  xor a                                           ; $678b: $af
  ld [$ce35], a                                   ; $678c: $ea $35 $ce
  ld [$ce36], a                                   ; $678f: $ea $36 $ce
  ld [$ce6b], a                                   ; $6792: $ea $6b $ce
  ld [$ce6c], a                                   ; $6795: $ea $6c $ce
  ld [$ce7c], a                                   ; $6798: $ea $7c $ce
  ld [$ce7d], a                                   ; $679b: $ea $7d $ce
  ld [$ce8d], a                                   ; $679e: $ea $8d $ce
  ld [$ce8e], a                                   ; $67a1: $ea $8e $ce
  ld [$cdd1], a                                   ; $67a4: $ea $d1 $cd
  ld [$ce49], a                                   ; $67a7: $ea $49 $ce
  push bc                                         ; $67aa: $c5
  ld bc, $001e                                    ; $67ab: $01 $1e $00
  ld hl, $ce9e                                    ; $67ae: $21 $9e $ce
  ld a, $ff                                       ; $67b1: $3e $ff
  call Call_000_1249                              ; $67b3: $cd $49 $12
  pop bc                                          ; $67b6: $c1
  ldh a, [rSVBK]                                  ; $67b7: $f0 $70
  push af                                         ; $67b9: $f5
  ld a, $06                                       ; $67ba: $3e $06
  ldh [rSVBK], a                                  ; $67bc: $e0 $70
  ld a, $02                                       ; $67be: $3e $02
  call Call_000_28e6                              ; $67c0: $cd $e6 $28
  ld [$ce3d], a                                   ; $67c3: $ea $3d $ce
  ld [$ddbb], a                                   ; $67c6: $ea $bb $dd
  pop af                                          ; $67c9: $f1
  ldh [rSVBK], a                                  ; $67ca: $e0 $70
  ldh [$ffbd], a                                  ; $67cc: $e0 $bd
  ldh a, [rSVBK]                                  ; $67ce: $f0 $70
  push af                                         ; $67d0: $f5
  ld a, $06                                       ; $67d1: $3e $06
  ldh [rSVBK], a                                  ; $67d3: $e0 $70
  ldh a, [$ffbd]                                  ; $67d5: $f0 $bd
  ld bc, $0018                                    ; $67d7: $01 $18 $00
  ld hl, $da70                                    ; $67da: $21 $70 $da
  ld a, $ff                                       ; $67dd: $3e $ff
  call Call_000_1249                              ; $67df: $cd $49 $12
  ld bc, $0100                                    ; $67e2: $01 $00 $01
  ld hl, $d970                                    ; $67e5: $21 $70 $d9
  call Call_000_1248                              ; $67e8: $cd $48 $12
  pop af                                          ; $67eb: $f1
  ldh [rSVBK], a                                  ; $67ec: $e0 $70
  jp $01be                                        ; $67ee: $c3 $be $01


Call_006_67f1:
  ld a, $19                                       ; $67f1: $3e $19
  ld hl, $ce3f                                    ; $67f3: $21 $3f $ce
  ld [hl+], a                                     ; $67f6: $22
  ld [hl+], a                                     ; $67f7: $22
  ld [hl+], a                                     ; $67f8: $22
  ld [hl+], a                                     ; $67f9: $22
  ld [hl+], a                                     ; $67fa: $22
  ld a, $ff                                       ; $67fb: $3e $ff
  ld [hl+], a                                     ; $67fd: $22
  ld [hl+], a                                     ; $67fe: $22
  ld [hl+], a                                     ; $67ff: $22
  ld [hl+], a                                     ; $6800: $22
  ld [hl+], a                                     ; $6801: $22
  ld a, $19                                       ; $6802: $3e $19
  ld hl, $ce71                                    ; $6804: $21 $71 $ce
  ld [hl+], a                                     ; $6807: $22
  ld a, $ff                                       ; $6808: $3e $ff
  ld [hl+], a                                     ; $680a: $22
  ld [hl+], a                                     ; $680b: $22
  ld a, $19                                       ; $680c: $3e $19
  ld [hl+], a                                     ; $680e: $22
  ld [hl+], a                                     ; $680f: $22
  ld [hl+], a                                     ; $6810: $22
  ld a, $ff                                       ; $6811: $3e $ff
  ld [hl+], a                                     ; $6813: $22
  ld [hl+], a                                     ; $6814: $22
  ld [hl+], a                                     ; $6815: $22
  ld [hl+], a                                     ; $6816: $22
  ld hl, $ce82                                    ; $6817: $21 $82 $ce
  ld [hl+], a                                     ; $681a: $22
  ld a, $19                                       ; $681b: $3e $19
  ld [hl+], a                                     ; $681d: $22
  ld [hl+], a                                     ; $681e: $22
  ld a, $ff                                       ; $681f: $3e $ff
  ld [hl+], a                                     ; $6821: $22
  ld [hl+], a                                     ; $6822: $22
  ld a, $19                                       ; $6823: $3e $19
  ld [hl+], a                                     ; $6825: $22
  ld [hl+], a                                     ; $6826: $22
  ld a, $ff                                       ; $6827: $3e $ff
  ld [hl+], a                                     ; $6829: $22
  ld [hl+], a                                     ; $682a: $22
  ld [hl+], a                                     ; $682b: $22
  ret                                             ; $682c: $c9


Call_006_682d:
  push bc                                         ; $682d: $c5
  ld a, [$ce37]                                   ; $682e: $fa $37 $ce
  dec a                                           ; $6831: $3d
  ld c, a                                         ; $6832: $4f
  ldh a, [rSVBK]                                  ; $6833: $f0 $70
  push af                                         ; $6835: $f5
  ld a, $06                                       ; $6836: $3e $06
  ldh [rSVBK], a                                  ; $6838: $e0 $70
  ld a, [$ddbd]                                   ; $683a: $fa $bd $dd
  ld b, a                                         ; $683d: $47
  pop af                                          ; $683e: $f1
  ldh [rSVBK], a                                  ; $683f: $e0 $70
  ld hl, $5786                                    ; $6841: $21 $86 $57
  ld de, $cdd2                                    ; $6844: $11 $d2 $cd
  call Call_006_6a39                              ; $6847: $cd $39 $6a
  ldh a, [rSVBK]                                  ; $684a: $f0 $70
  push af                                         ; $684c: $f5
  ld a, $06                                       ; $684d: $3e $06
  ldh [rSVBK], a                                  ; $684f: $e0 $70
  ld a, [$ddbe]                                   ; $6851: $fa $be $dd
  ld b, a                                         ; $6854: $47
  pop af                                          ; $6855: $f1
  ldh [rSVBK], a                                  ; $6856: $e0 $70
  ld hl, $584e                                    ; $6858: $21 $4e $58
  ld de, $cdd4                                    ; $685b: $11 $d4 $cd
  call Call_006_6a39                              ; $685e: $cd $39 $6a
  ld hl, $5916                                    ; $6861: $21 $16 $59
  ld de, $cdda                                    ; $6864: $11 $da $cd
  call Call_006_6a35                              ; $6867: $cd $35 $6a
  ld hl, $55f6                                    ; $686a: $21 $f6 $55
  ld de, $cddc                                    ; $686d: $11 $dc $cd
  call Call_006_6a35                              ; $6870: $cd $35 $6a
  ld hl, $565a                                    ; $6873: $21 $5a $56
  ld de, $cdde                                    ; $6876: $11 $de $cd
  call Call_006_6a35                              ; $6879: $cd $35 $6a
  ld hl, $56be                                    ; $687c: $21 $be $56
  ld de, $cddd                                    ; $687f: $11 $dd $cd
  call Call_006_6a35                              ; $6882: $cd $35 $6a
  ld hl, $5722                                    ; $6885: $21 $22 $57
  ld de, $cddf                                    ; $6888: $11 $df $cd
  call Call_006_6a35                              ; $688b: $cd $35 $6a
  ld hl, $5722                                    ; $688e: $21 $22 $57
  ld de, $cde0                                    ; $6891: $11 $e0 $cd
  call Call_006_6a35                              ; $6894: $cd $35 $6a
  ld hl, $5722                                    ; $6897: $21 $22 $57
  ld de, $cde1                                    ; $689a: $11 $e1 $cd
  call Call_006_6a35                              ; $689d: $cd $35 $6a
  xor a                                           ; $68a0: $af
  ld [$cec3], a                                   ; $68a1: $ea $c3 $ce
  call Call_000_33f3                              ; $68a4: $cd $f3 $33

  db $04, $4a, $6b

  pop bc                                          ; $68aa: $c1
  ret                                             ; $68ab: $c9


Call_006_68ac:
  push bc                                         ; $68ac: $c5
  ld a, [$ce6d]                                   ; $68ad: $fa $6d $ce
  dec a                                           ; $68b0: $3d
  ld c, a                                         ; $68b1: $4f
  ldh a, [rSVBK]                                  ; $68b2: $f0 $70
  push af                                         ; $68b4: $f5
  ld a, $06                                       ; $68b5: $3e $06
  ldh [rSVBK], a                                  ; $68b7: $e0 $70
  ld a, [$ddbd]                                   ; $68b9: $fa $bd $dd
  ld b, a                                         ; $68bc: $47
  pop af                                          ; $68bd: $f1
  ldh [rSVBK], a                                  ; $68be: $e0 $70
  ld hl, $5aa6                                    ; $68c0: $21 $a6 $5a
  ld de, $ce04                                    ; $68c3: $11 $04 $ce
  call Call_006_6a39                              ; $68c6: $cd $39 $6a
  ldh a, [rSVBK]                                  ; $68c9: $f0 $70
  push af                                         ; $68cb: $f5
  ld a, $06                                       ; $68cc: $3e $06
  ldh [rSVBK], a                                  ; $68ce: $e0 $70
  ld a, [$ddbe]                                   ; $68d0: $fa $be $dd
  ld b, a                                         ; $68d3: $47
  pop af                                          ; $68d4: $f1
  ldh [rSVBK], a                                  ; $68d5: $e0 $70
  ld hl, $5b6e                                    ; $68d7: $21 $6e $5b
  ld de, $ce06                                    ; $68da: $11 $06 $ce
  call Call_006_6a39                              ; $68dd: $cd $39 $6a
  ld hl, $5c36                                    ; $68e0: $21 $36 $5c
  ld de, $ce0c                                    ; $68e3: $11 $0c $ce
  call Call_006_6a35                              ; $68e6: $cd $35 $6a
  ld hl, $55f6                                    ; $68e9: $21 $f6 $55
  ld de, $ce0e                                    ; $68ec: $11 $0e $ce
  call Call_006_6a35                              ; $68ef: $cd $35 $6a
  ld hl, $597a                                    ; $68f2: $21 $7a $59
  ld de, $ce10                                    ; $68f5: $11 $10 $ce
  call Call_006_6a35                              ; $68f8: $cd $35 $6a
  ld hl, $59de                                    ; $68fb: $21 $de $59
  ld de, $ce0f                                    ; $68fe: $11 $0f $ce
  call Call_006_6a35                              ; $6901: $cd $35 $6a
  ld hl, $5a42                                    ; $6904: $21 $42 $5a
  ld de, $ce11                                    ; $6907: $11 $11 $ce
  call Call_006_6a35                              ; $690a: $cd $35 $6a
  ld hl, $5a42                                    ; $690d: $21 $42 $5a
  ld de, $ce12                                    ; $6910: $11 $12 $ce
  call Call_006_6a35                              ; $6913: $cd $35 $6a
  ld hl, $5a42                                    ; $6916: $21 $42 $5a
  ld de, $ce13                                    ; $6919: $11 $13 $ce
  call Call_006_6a35                              ; $691c: $cd $35 $6a
  ld a, $01                                       ; $691f: $3e $01
  ld [$cec3], a                                   ; $6921: $ea $c3 $ce
  call Call_000_33f3                              ; $6924: $cd $f3 $33

  db $04, $4a, $6b

  pop bc                                          ; $692a: $c1
  ret                                             ; $692b: $c9


Call_006_692c:
  push bc                                         ; $692c: $c5
  ld a, [$ce7e]                                   ; $692d: $fa $7e $ce
  dec a                                           ; $6930: $3d
  ld c, a                                         ; $6931: $4f
  ldh a, [rSVBK]                                  ; $6932: $f0 $70
  push af                                         ; $6934: $f5
  ld a, $06                                       ; $6935: $3e $06
  ldh [rSVBK], a                                  ; $6937: $e0 $70
  ld a, [$ddbd]                                   ; $6939: $fa $bd $dd
  ld b, a                                         ; $693c: $47
  pop af                                          ; $693d: $f1
  ldh [rSVBK], a                                  ; $693e: $e0 $70
  ld hl, $5dc6                                    ; $6940: $21 $c6 $5d
  ld de, $cdeb                                    ; $6943: $11 $eb $cd
  call Call_006_6a39                              ; $6946: $cd $39 $6a
  ldh a, [rSVBK]                                  ; $6949: $f0 $70
  push af                                         ; $694b: $f5
  ld a, $06                                       ; $694c: $3e $06
  ldh [rSVBK], a                                  ; $694e: $e0 $70
  ld a, [$ddbe]                                   ; $6950: $fa $be $dd
  ld b, a                                         ; $6953: $47
  pop af                                          ; $6954: $f1
  ldh [rSVBK], a                                  ; $6955: $e0 $70
  ld hl, $5e8e                                    ; $6957: $21 $8e $5e
  ld de, $cded                                    ; $695a: $11 $ed $cd
  call Call_006_6a39                              ; $695d: $cd $39 $6a
  ld hl, $5f56                                    ; $6960: $21 $56 $5f
  ld de, $cdf3                                    ; $6963: $11 $f3 $cd
  call Call_006_6a35                              ; $6966: $cd $35 $6a
  ld hl, $55f6                                    ; $6969: $21 $f6 $55
  ld de, $cdf5                                    ; $696c: $11 $f5 $cd
  call Call_006_6a35                              ; $696f: $cd $35 $6a
  ld hl, $5c9a                                    ; $6972: $21 $9a $5c
  ld de, $cdf7                                    ; $6975: $11 $f7 $cd
  call Call_006_6a35                              ; $6978: $cd $35 $6a
  ld hl, $5cfe                                    ; $697b: $21 $fe $5c
  ld de, $cdf6                                    ; $697e: $11 $f6 $cd
  call Call_006_6a35                              ; $6981: $cd $35 $6a
  ld hl, $5d62                                    ; $6984: $21 $62 $5d
  ld de, $cdf8                                    ; $6987: $11 $f8 $cd
  call Call_006_6a35                              ; $698a: $cd $35 $6a
  ld hl, $5d62                                    ; $698d: $21 $62 $5d
  ld de, $cdf9                                    ; $6990: $11 $f9 $cd
  call Call_006_6a35                              ; $6993: $cd $35 $6a
  ld hl, $5d62                                    ; $6996: $21 $62 $5d
  ld de, $cdfa                                    ; $6999: $11 $fa $cd
  call Call_006_6a35                              ; $699c: $cd $35 $6a
  ld a, $02                                       ; $699f: $3e $02
  ld [$cec3], a                                   ; $69a1: $ea $c3 $ce
  call Call_000_33f3                              ; $69a4: $cd $f3 $33

  db $04, $4a, $6b

  pop bc                                          ; $69aa: $c1
  ret                                             ; $69ab: $c9


Call_006_69ac:
  call Call_006_682d                              ; $69ac: $cd $2d $68
  call Call_006_68ac                              ; $69af: $cd $ac $68
  call Call_006_692c                              ; $69b2: $cd $2c $69

Call_006_69b5:
  push bc                                         ; $69b5: $c5
  ld a, [$ce8f]                                   ; $69b6: $fa $8f $ce
  dec a                                           ; $69b9: $3d
  ld c, a                                         ; $69ba: $4f
  ldh a, [rSVBK]                                  ; $69bb: $f0 $70
  push af                                         ; $69bd: $f5
  ld a, $06                                       ; $69be: $3e $06
  ldh [rSVBK], a                                  ; $69c0: $e0 $70
  ld a, [$ddbd]                                   ; $69c2: $fa $bd $dd
  ld b, a                                         ; $69c5: $47
  pop af                                          ; $69c6: $f1
  ldh [rSVBK], a                                  ; $69c7: $e0 $70
  ld hl, $60e6                                    ; $69c9: $21 $e6 $60
  ld de, $ce1d                                    ; $69cc: $11 $1d $ce
  call Call_006_6a39                              ; $69cf: $cd $39 $6a
  ldh a, [rSVBK]                                  ; $69d2: $f0 $70
  push af                                         ; $69d4: $f5
  ld a, $06                                       ; $69d5: $3e $06
  ldh [rSVBK], a                                  ; $69d7: $e0 $70
  ld a, [$ddbe]                                   ; $69d9: $fa $be $dd
  ld b, a                                         ; $69dc: $47
  pop af                                          ; $69dd: $f1
  ldh [rSVBK], a                                  ; $69de: $e0 $70
  ld hl, $61ae                                    ; $69e0: $21 $ae $61
  ld de, $ce1f                                    ; $69e3: $11 $1f $ce
  call Call_006_6a39                              ; $69e6: $cd $39 $6a
  ld hl, $6276                                    ; $69e9: $21 $76 $62
  ld de, $ce25                                    ; $69ec: $11 $25 $ce
  call Call_006_6a35                              ; $69ef: $cd $35 $6a
  ld hl, $55f6                                    ; $69f2: $21 $f6 $55
  ld de, $ce27                                    ; $69f5: $11 $27 $ce
  call Call_006_6a35                              ; $69f8: $cd $35 $6a
  ld hl, $5fba                                    ; $69fb: $21 $ba $5f
  ld de, $ce29                                    ; $69fe: $11 $29 $ce
  call Call_006_6a35                              ; $6a01: $cd $35 $6a
  ld hl, $601e                                    ; $6a04: $21 $1e $60
  ld de, $ce28                                    ; $6a07: $11 $28 $ce
  call Call_006_6a35                              ; $6a0a: $cd $35 $6a
  ld hl, $6082                                    ; $6a0d: $21 $82 $60
  ld de, $ce2a                                    ; $6a10: $11 $2a $ce
  call Call_006_6a35                              ; $6a13: $cd $35 $6a
  ld hl, $6082                                    ; $6a16: $21 $82 $60
  ld de, $ce2b                                    ; $6a19: $11 $2b $ce
  call Call_006_6a35                              ; $6a1c: $cd $35 $6a
  ld hl, $6082                                    ; $6a1f: $21 $82 $60
  ld de, $ce2c                                    ; $6a22: $11 $2c $ce
  call Call_006_6a35                              ; $6a25: $cd $35 $6a
  ld a, $03                                       ; $6a28: $3e $03
  ld [$cec3], a                                   ; $6a2a: $ea $c3 $ce
  call Call_000_33f3                              ; $6a2d: $cd $f3 $33

  db $04, $4a, $6b

  pop bc                                          ; $6a33: $c1
  ret                                             ; $6a34: $c9


Call_006_6a35:
  ld a, c                                         ; $6a35: $79
  rst $08                                         ; $6a36: $cf
  ld [de], a                                      ; $6a37: $12
  ret                                             ; $6a38: $c9


Call_006_6a39:
  push de                                         ; $6a39: $d5
  ld a, c                                         ; $6a3a: $79
  call Call_000_317a                              ; $6a3b: $cd $7a $31
  ld e, [hl]                                      ; $6a3e: $5e
  inc hl                                          ; $6a3f: $23
  ld d, [hl]                                      ; $6a40: $56
  ld l, b                                         ; $6a41: $68
  ld h, $00                                       ; $6a42: $26 $00
  add hl, de                                      ; $6a44: $19
  ld de, $03e7                                    ; $6a45: $11 $e7 $03
  call Call_000_32b6                              ; $6a48: $cd $b6 $32
  ld d, h                                         ; $6a4b: $54
  ld e, l                                         ; $6a4c: $5d
  pop hl                                          ; $6a4d: $e1
  ld [hl], e                                      ; $6a4e: $73
  inc hl                                          ; $6a4f: $23
  ld [hl], d                                      ; $6a50: $72
  ret                                             ; $6a51: $c9


Call_006_6a52:
  ld hl, $cdd2                                    ; $6a52: $21 $d2 $cd
  ld a, [hl+]                                     ; $6a55: $2a
  ld h, [hl]                                      ; $6a56: $66
  ld l, a                                         ; $6a57: $6f
  ld [$cdd6], a                                   ; $6a58: $ea $d6 $cd
  ld a, h                                         ; $6a5b: $7c
  ld [$cdd7], a                                   ; $6a5c: $ea $d7 $cd
  ld hl, $cdd4                                    ; $6a5f: $21 $d4 $cd
  ld a, [hl+]                                     ; $6a62: $2a
  ld h, [hl]                                      ; $6a63: $66
  ld l, a                                         ; $6a64: $6f
  ld [$cdd8], a                                   ; $6a65: $ea $d8 $cd
  ld a, h                                         ; $6a68: $7c
  ld [$cdd9], a                                   ; $6a69: $ea $d9 $cd
  xor a                                           ; $6a6c: $af
  ld [$cddb], a                                   ; $6a6d: $ea $db $cd
  ret                                             ; $6a70: $c9


Call_006_6a71:
  ld hl, $ce04                                    ; $6a71: $21 $04 $ce
  ld a, [hl+]                                     ; $6a74: $2a
  ld h, [hl]                                      ; $6a75: $66
  ld l, a                                         ; $6a76: $6f
  ld [$ce08], a                                   ; $6a77: $ea $08 $ce
  ld a, h                                         ; $6a7a: $7c
  ld [$ce09], a                                   ; $6a7b: $ea $09 $ce
  ld hl, $ce06                                    ; $6a7e: $21 $06 $ce
  ld a, [hl+]                                     ; $6a81: $2a
  ld h, [hl]                                      ; $6a82: $66
  ld l, a                                         ; $6a83: $6f
  ld [$ce0a], a                                   ; $6a84: $ea $0a $ce
  ld a, h                                         ; $6a87: $7c
  ld [$ce0b], a                                   ; $6a88: $ea $0b $ce
  xor a                                           ; $6a8b: $af
  ld [$ce0d], a                                   ; $6a8c: $ea $0d $ce
  ret                                             ; $6a8f: $c9


Call_006_6a90:
  ld hl, $cdeb                                    ; $6a90: $21 $eb $cd
  ld a, [hl+]                                     ; $6a93: $2a
  ld h, [hl]                                      ; $6a94: $66
  ld l, a                                         ; $6a95: $6f
  ld [$cdef], a                                   ; $6a96: $ea $ef $cd
  ld a, h                                         ; $6a99: $7c
  ld [$cdf0], a                                   ; $6a9a: $ea $f0 $cd
  ld hl, $cded                                    ; $6a9d: $21 $ed $cd
  ld a, [hl+]                                     ; $6aa0: $2a
  ld h, [hl]                                      ; $6aa1: $66
  ld l, a                                         ; $6aa2: $6f
  ld [$cdf1], a                                   ; $6aa3: $ea $f1 $cd
  ld a, h                                         ; $6aa6: $7c
  ld [$cdf2], a                                   ; $6aa7: $ea $f2 $cd
  xor a                                           ; $6aaa: $af
  ld [$cdf4], a                                   ; $6aab: $ea $f4 $cd
  ret                                             ; $6aae: $c9


Call_006_6aaf:
  ld hl, $ce1d                                    ; $6aaf: $21 $1d $ce
  ld a, [hl+]                                     ; $6ab2: $2a
  ld h, [hl]                                      ; $6ab3: $66
  ld l, a                                         ; $6ab4: $6f
  ld [$ce21], a                                   ; $6ab5: $ea $21 $ce
  ld a, h                                         ; $6ab8: $7c
  ld [$ce22], a                                   ; $6ab9: $ea $22 $ce
  ld hl, $ce1f                                    ; $6abc: $21 $1f $ce
  ld a, [hl+]                                     ; $6abf: $2a
  ld h, [hl]                                      ; $6ac0: $66
  ld l, a                                         ; $6ac1: $6f
  ld [$ce23], a                                   ; $6ac2: $ea $23 $ce
  ld a, h                                         ; $6ac5: $7c
  ld [$ce24], a                                   ; $6ac6: $ea $24 $ce
  xor a                                           ; $6ac9: $af
  ld [$ce26], a                                   ; $6aca: $ea $26 $ce
  ret                                             ; $6acd: $c9


Call_006_6ace:
  push de                                         ; $6ace: $d5
  ld a, [$cdd6]                                   ; $6acf: $fa $d6 $cd
  ld e, a                                         ; $6ad2: $5f
  ld a, [$cdd7]                                   ; $6ad3: $fa $d7 $cd
  ld d, a                                         ; $6ad6: $57
  ld a, d                                         ; $6ad7: $7a
  or e                                            ; $6ad8: $b3
  jr z, jr_006_6ae1                               ; $6ad9: $28 $06

  ld bc, $ce35                                    ; $6adb: $01 $35 $ce
  call Call_006_6b2b                              ; $6ade: $cd $2b $6b

jr_006_6ae1:
  ld a, [$cebd]                                   ; $6ae1: $fa $bd $ce
  or a                                            ; $6ae4: $b7
  jr z, jr_006_6af9                               ; $6ae5: $28 $12

  ld a, [$ce08]                                   ; $6ae7: $fa $08 $ce
  ld e, a                                         ; $6aea: $5f
  ld a, [$ce09]                                   ; $6aeb: $fa $09 $ce
  ld d, a                                         ; $6aee: $57
  ld a, d                                         ; $6aef: $7a
  or e                                            ; $6af0: $b3
  jr z, jr_006_6af9                               ; $6af1: $28 $06

  ld bc, $ce6b                                    ; $6af3: $01 $6b $ce
  call Call_006_6b2b                              ; $6af6: $cd $2b $6b

jr_006_6af9:
  ld a, [$cebe]                                   ; $6af9: $fa $be $ce
  or a                                            ; $6afc: $b7
  jr z, jr_006_6b11                               ; $6afd: $28 $12

  ld a, [$cdef]                                   ; $6aff: $fa $ef $cd
  ld e, a                                         ; $6b02: $5f
  ld a, [$cdf0]                                   ; $6b03: $fa $f0 $cd
  ld d, a                                         ; $6b06: $57
  ld a, d                                         ; $6b07: $7a
  or e                                            ; $6b08: $b3
  jr z, jr_006_6b11                               ; $6b09: $28 $06

  ld bc, $ce7c                                    ; $6b0b: $01 $7c $ce
  call Call_006_6b2b                              ; $6b0e: $cd $2b $6b

jr_006_6b11:
  ld a, [$cebf]                                   ; $6b11: $fa $bf $ce
  or a                                            ; $6b14: $b7
  jr z, jr_006_6b29                               ; $6b15: $28 $12

  ld a, [$cdef]                                   ; $6b17: $fa $ef $cd
  ld e, a                                         ; $6b1a: $5f
  ld a, [$cdf0]                                   ; $6b1b: $fa $f0 $cd
  ld d, a                                         ; $6b1e: $57
  ld a, d                                         ; $6b1f: $7a
  or e                                            ; $6b20: $b3
  jr z, jr_006_6b29                               ; $6b21: $28 $06

  ld bc, $ce8d                                    ; $6b23: $01 $8d $ce
  call Call_006_6b2b                              ; $6b26: $cd $2b $6b

jr_006_6b29:
  pop de                                          ; $6b29: $d1
  ret                                             ; $6b2a: $c9


Call_006_6b2b:
  push hl                                         ; $6b2b: $e5
  ld a, [bc]                                      ; $6b2c: $0a
  ld e, a                                         ; $6b2d: $5f
  inc bc                                          ; $6b2e: $03
  ld a, [bc]                                      ; $6b2f: $0a
  ld d, a                                         ; $6b30: $57
  dec bc                                          ; $6b31: $0b
  add hl, de                                      ; $6b32: $19
  jr nc, jr_006_6b38                              ; $6b33: $30 $03

  ld hl, $fffe                                    ; $6b35: $21 $fe $ff

jr_006_6b38:
  push de                                         ; $6b38: $d5
  push hl                                         ; $6b39: $e5
  ld hl, $0000                                    ; $6b3a: $21 $00 $00
  add hl, bc                                      ; $6b3d: $09
  push hl                                         ; $6b3e: $e5
  pop de                                          ; $6b3f: $d1
  pop hl                                          ; $6b40: $e1
  ld a, l                                         ; $6b41: $7d
  ld [de], a                                      ; $6b42: $12
  inc de                                          ; $6b43: $13
  ld a, h                                         ; $6b44: $7c
  ld [de], a                                      ; $6b45: $12
  pop de                                          ; $6b46: $d1
  pop hl                                          ; $6b47: $e1
  ret                                             ; $6b48: $c9


  dec a                                           ; $6b49: $3d
  push bc                                         ; $6b4a: $c5
  push hl                                         ; $6b4b: $e5
  ld hl, $ce37                                    ; $6b4c: $21 $37 $ce
  add [hl]                                        ; $6b4f: $86
  cp $64                                          ; $6b50: $fe $64
  jr c, jr_006_6b56                               ; $6b52: $38 $02

  ld a, $63                                       ; $6b54: $3e $63

jr_006_6b56:
  ld hl, $552c                                    ; $6b56: $21 $2c $55
  call ResolveIndexedPointer16                              ; $6b59: $cd $8b $31
  ld a, l                                         ; $6b5c: $7d
  ld [$ce35], a                                   ; $6b5d: $ea $35 $ce
  ld a, h                                         ; $6b60: $7c
  ld [$ce36], a                                   ; $6b61: $ea $36 $ce
  call Call_006_6d65                              ; $6b64: $cd $65 $6d
  pop hl                                          ; $6b67: $e1
  pop bc                                          ; $6b68: $c1
  ret                                             ; $6b69: $c9


  push bc                                         ; $6b6a: $c5
  push hl                                         ; $6b6b: $e5
  ld hl, $ce6d                                    ; $6b6c: $21 $6d $ce
  add [hl]                                        ; $6b6f: $86
  cp $64                                          ; $6b70: $fe $64
  jr c, jr_006_6b76                               ; $6b72: $38 $02

  ld a, $63                                       ; $6b74: $3e $63

jr_006_6b76:
  ld hl, $552c                                    ; $6b76: $21 $2c $55
  call ResolveIndexedPointer16                              ; $6b79: $cd $8b $31
  ld a, l                                         ; $6b7c: $7d
  ld [$ce6b], a                                   ; $6b7d: $ea $6b $ce
  ld a, h                                         ; $6b80: $7c
  ld [$ce6c], a                                   ; $6b81: $ea $6c $ce
  call Call_006_68ac                              ; $6b84: $cd $ac $68
  pop hl                                          ; $6b87: $e1
  pop bc                                          ; $6b88: $c1
  ret                                             ; $6b89: $c9


  push bc                                         ; $6b8a: $c5
  push hl                                         ; $6b8b: $e5
  ld hl, $ce7e                                    ; $6b8c: $21 $7e $ce
  add [hl]                                        ; $6b8f: $86
  cp $64                                          ; $6b90: $fe $64
  jr c, jr_006_6b96                               ; $6b92: $38 $02

  ld a, $63                                       ; $6b94: $3e $63

jr_006_6b96:
  ld hl, $552c                                    ; $6b96: $21 $2c $55
  call ResolveIndexedPointer16                              ; $6b99: $cd $8b $31
  ld a, l                                         ; $6b9c: $7d
  ld [$ce7c], a                                   ; $6b9d: $ea $7c $ce
  ld a, h                                         ; $6ba0: $7c
  ld [$ce7d], a                                   ; $6ba1: $ea $7d $ce
  call Call_006_692c                              ; $6ba4: $cd $2c $69
  pop hl                                          ; $6ba7: $e1
  pop bc                                          ; $6ba8: $c1
  ret                                             ; $6ba9: $c9


Call_006_6baa:
  push de                                         ; $6baa: $d5
  push hl                                         ; $6bab: $e5
  ld a, [$ce38]                                   ; $6bac: $fa $38 $ce
  ld e, a                                         ; $6baf: $5f
  ld a, [$ce39]                                   ; $6bb0: $fa $39 $ce
  ld d, a                                         ; $6bb3: $57
  add hl, de                                      ; $6bb4: $19
  jr nc, jr_006_6bba                              ; $6bb5: $30 $03

  ld hl, $ffff                                    ; $6bb7: $21 $ff $ff

jr_006_6bba:
  ld a, l                                         ; $6bba: $7d
  ld [$ce38], a                                   ; $6bbb: $ea $38 $ce
  ld a, h                                         ; $6bbe: $7c
  ld [$ce39], a                                   ; $6bbf: $ea $39 $ce
  pop hl                                          ; $6bc2: $e1
  pop de                                          ; $6bc3: $d1
  ret                                             ; $6bc4: $c9


  db $19, $d0, $00, $d0

  ld [hl-], a                                     ; $6bc9: $32
  ret nc                                          ; $6bca: $d0

  ld [hl-], a                                     ; $6bcb: $32
  ret nc                                          ; $6bcc: $d0

  db $d1, $cd

  inc bc                                          ; $6bcf: $03
  adc $ea                                         ; $6bd0: $ce $ea
  call $ce1c                                      ; $6bd2: $cd $1c $ce

  ldh a, [rSVBK]                                  ; $6bd5: $f0 $70
  push af                                         ; $6bd7: $f5
  ld a, $05                                       ; $6bd8: $3e $05
  ldh [rSVBK], a                                  ; $6bda: $e0 $70
  push hl                                         ; $6bdc: $e5
  ldh a, [$ffcd]                                  ; $6bdd: $f0 $cd
  cp $24                                          ; $6bdf: $fe $24
  jr z, jr_006_6be8                               ; $6be1: $28 $05

  ld hl, $6bcd                                    ; $6be3: $21 $cd $6b
  jr jr_006_6beb                                  ; $6be6: $18 $03

jr_006_6be8:
  ld hl, $6bc5                                    ; $6be8: $21 $c5 $6b

jr_006_6beb:
  ld a, [$cec3]                                   ; $6beb: $fa $c3 $ce
  call ResolveIndexedPointer16                              ; $6bee: $cd $8b $31
  ld a, l                                         ; $6bf1: $7d
  ld [$cbe4], a                                   ; $6bf2: $ea $e4 $cb
  ld a, h                                         ; $6bf5: $7c
  ld [$cbe5], a                                   ; $6bf6: $ea $e5 $cb
  ld de, $0005                                    ; $6bf9: $11 $05 $00
  add hl, de                                      ; $6bfc: $19
  ld a, [hl+]                                     ; $6bfd: $2a
  ld d, [hl]                                      ; $6bfe: $56
  ld e, a                                         ; $6bff: $5f
  push de                                         ; $6c00: $d5
  ld hl, $cbe4                                    ; $6c01: $21 $e4 $cb
  ld a, [hl+]                                     ; $6c04: $2a
  ld h, [hl]                                      ; $6c05: $66
  ld l, a                                         ; $6c06: $6f
  ld de, $0001                                    ; $6c07: $11 $01 $00
  add hl, de                                      ; $6c0a: $19
  ld a, [hl+]                                     ; $6c0b: $2a
  ld h, [hl]                                      ; $6c0c: $66
  ld l, a                                         ; $6c0d: $6f
  pop de                                          ; $6c0e: $d1
  rst $10                                         ; $6c0f: $d7
  jr nc, jr_006_6c4b                              ; $6c10: $30 $39

  call Call_000_0092                              ; $6c12: $cd $92 $00
  add hl, de                                      ; $6c15: $19
  pop de                                          ; $6c16: $d1
  call CompareDEtoHL                                     ; $6c17: $cd $10 $00
  jr nc, jr_006_6c1e                              ; $6c1a: $30 $02

  ld h, d                                         ; $6c1c: $62
  ld l, e                                         ; $6c1d: $6b

jr_006_6c1e:
  push hl                                         ; $6c1e: $e5
  ld hl, $cbe4                                    ; $6c1f: $21 $e4 $cb
  ld a, [hl+]                                     ; $6c22: $2a
  ld h, [hl]                                      ; $6c23: $66
  ld l, a                                         ; $6c24: $6f
  ld de, $0005                                    ; $6c25: $11 $05 $00
  add hl, de                                      ; $6c28: $19
  ld a, [hl+]                                     ; $6c29: $2a
  ld d, [hl]                                      ; $6c2a: $56
  ld e, a                                         ; $6c2b: $5f
  pop hl                                          ; $6c2c: $e1
  push hl                                         ; $6c2d: $e5
  add hl, de                                      ; $6c2e: $19
  ld a, [$cbe4]                                   ; $6c2f: $fa $e4 $cb
  ld e, a                                         ; $6c32: $5f
  ld a, [$cbe5]                                   ; $6c33: $fa $e5 $cb
  ld d, a                                         ; $6c36: $57
  push de                                         ; $6c37: $d5
  push hl                                         ; $6c38: $e5
  ld hl, $0005                                    ; $6c39: $21 $05 $00
  add hl, de                                      ; $6c3c: $19
  push hl                                         ; $6c3d: $e5
  pop de                                          ; $6c3e: $d1
  pop hl                                          ; $6c3f: $e1
  ld a, l                                         ; $6c40: $7d
  ld [de], a                                      ; $6c41: $12
  inc de                                          ; $6c42: $13
  ld a, h                                         ; $6c43: $7c
  ld [de], a                                      ; $6c44: $12
  pop de                                          ; $6c45: $d1
  pop hl                                          ; $6c46: $e1
  pop af                                          ; $6c47: $f1
  ldh [rSVBK], a                                  ; $6c48: $e0 $70
  ret                                             ; $6c4a: $c9


jr_006_6c4b:
  pop de                                          ; $6c4b: $d1
  ld hl, $0000                                    ; $6c4c: $21 $00 $00
  jr jr_006_6c1e                                  ; $6c4f: $18 $cd

  ret                                             ; $6c51: $c9


  ldh a, [rSVBK]                                  ; $6c52: $f0 $70
  push af                                         ; $6c54: $f5
  ld a, $05                                       ; $6c55: $3e $05
  ldh [rSVBK], a                                  ; $6c57: $e0 $70
  push hl                                         ; $6c59: $e5
  ldh a, [$ffcd]                                  ; $6c5a: $f0 $cd
  cp $24                                          ; $6c5c: $fe $24
  jr z, jr_006_6c65                               ; $6c5e: $28 $05

  ld hl, $6bcd                                    ; $6c60: $21 $cd $6b
  jr jr_006_6c68                                  ; $6c63: $18 $03

jr_006_6c65:
  ld hl, $6bc5                                    ; $6c65: $21 $c5 $6b

jr_006_6c68:
  ld a, [$cec3]                                   ; $6c68: $fa $c3 $ce
  call ResolveIndexedPointer16                              ; $6c6b: $cd $8b $31
  ld a, l                                         ; $6c6e: $7d
  ld [$cbe4], a                                   ; $6c6f: $ea $e4 $cb
  ld a, h                                         ; $6c72: $7c
  ld [$cbe5], a                                   ; $6c73: $ea $e5 $cb
  ld de, $0007                                    ; $6c76: $11 $07 $00
  add hl, de                                      ; $6c79: $19
  ld a, [hl+]                                     ; $6c7a: $2a
  ld d, [hl]                                      ; $6c7b: $56
  ld e, a                                         ; $6c7c: $5f
  push de                                         ; $6c7d: $d5
  ld hl, $cbe4                                    ; $6c7e: $21 $e4 $cb
  ld a, [hl+]                                     ; $6c81: $2a
  ld h, [hl]                                      ; $6c82: $66
  ld l, a                                         ; $6c83: $6f
  ld de, $0003                                    ; $6c84: $11 $03 $00
  add hl, de                                      ; $6c87: $19
  ld a, [hl+]                                     ; $6c88: $2a
  ld h, [hl]                                      ; $6c89: $66
  ld l, a                                         ; $6c8a: $6f
  pop de                                          ; $6c8b: $d1
  rst $10                                         ; $6c8c: $d7
  jr nc, jr_006_6cc8                              ; $6c8d: $30 $39

  call Call_000_0092                              ; $6c8f: $cd $92 $00
  add hl, de                                      ; $6c92: $19
  pop de                                          ; $6c93: $d1
  call CompareDEtoHL                                     ; $6c94: $cd $10 $00
  jr nc, jr_006_6c9b                              ; $6c97: $30 $02

  ld h, d                                         ; $6c99: $62
  ld l, e                                         ; $6c9a: $6b

jr_006_6c9b:
  push hl                                         ; $6c9b: $e5
  ld hl, $cbe4                                    ; $6c9c: $21 $e4 $cb
  ld a, [hl+]                                     ; $6c9f: $2a
  ld h, [hl]                                      ; $6ca0: $66
  ld l, a                                         ; $6ca1: $6f
  ld de, $0007                                    ; $6ca2: $11 $07 $00
  add hl, de                                      ; $6ca5: $19
  ld a, [hl+]                                     ; $6ca6: $2a
  ld d, [hl]                                      ; $6ca7: $56
  ld e, a                                         ; $6ca8: $5f
  pop hl                                          ; $6ca9: $e1
  push hl                                         ; $6caa: $e5
  add hl, de                                      ; $6cab: $19
  ld a, [$cbe4]                                   ; $6cac: $fa $e4 $cb
  ld e, a                                         ; $6caf: $5f
  ld a, [$cbe5]                                   ; $6cb0: $fa $e5 $cb
  ld d, a                                         ; $6cb3: $57
  push de                                         ; $6cb4: $d5
  push hl                                         ; $6cb5: $e5
  ld hl, $0007                                    ; $6cb6: $21 $07 $00
  add hl, de                                      ; $6cb9: $19
  push hl                                         ; $6cba: $e5
  pop de                                          ; $6cbb: $d1
  pop hl                                          ; $6cbc: $e1
  ld a, l                                         ; $6cbd: $7d
  ld [de], a                                      ; $6cbe: $12
  inc de                                          ; $6cbf: $13
  ld a, h                                         ; $6cc0: $7c
  ld [de], a                                      ; $6cc1: $12
  pop de                                          ; $6cc2: $d1
  pop hl                                          ; $6cc3: $e1
  pop af                                          ; $6cc4: $f1
  ldh [rSVBK], a                                  ; $6cc5: $e0 $70
  ret                                             ; $6cc7: $c9


jr_006_6cc8:
  pop de                                          ; $6cc8: $d1
  ld hl, $0000                                    ; $6cc9: $21 $00 $00
  jr jr_006_6c9b                                  ; $6ccc: $18 $cd

  rst $08                                         ; $6cce: $cf
  or a                                            ; $6ccf: $b7
  ret z                                           ; $6cd0: $c8

  inc a                                           ; $6cd1: $3c
  ret z                                           ; $6cd2: $c8

  dec [hl]                                        ; $6cd3: $35
  ret                                             ; $6cd4: $c9


Call_006_6cd5:
  rst $08                                         ; $6cd5: $cf
  or a                                            ; $6cd6: $b7
  ret                                             ; $6cd7: $c9


Call_006_6cd8:
  push bc                                         ; $6cd8: $c5
  ld bc, $0000                                    ; $6cd9: $01 $00 $00

jr_006_6cdc:
  push hl                                         ; $6cdc: $e5
  ld a, b                                         ; $6cdd: $78
  call Call_006_6cd5                              ; $6cde: $cd $d5 $6c
  jr nz, jr_006_6d11                              ; $6ce1: $20 $2e

  ld a, [$cc43]                                   ; $6ce3: $fa $43 $cc
  cp $02                                          ; $6ce6: $fe $02
  jr z, jr_006_6cf2                               ; $6ce8: $28 $08

  cp $01                                          ; $6cea: $fe $01
  jr z, jr_006_6cf8                               ; $6cec: $28 $0a

  cp $04                                          ; $6cee: $fe $04
  jr z, jr_006_6d01                               ; $6cf0: $28 $0f

jr_006_6cf2:
  ld a, b                                         ; $6cf2: $78
  call Call_006_6d1b                              ; $6cf3: $cd $1b $6d
  jr jr_006_6d08                                  ; $6cf6: $18 $10

jr_006_6cf8:
  ld a, b                                         ; $6cf8: $78
  call Call_000_33f3                              ; $6cf9: $cd $f3 $33

  db $1e, $30, $60

  jr jr_006_6d08                                  ; $6cff: $18 $07

jr_006_6d01:
  ld a, b                                         ; $6d01: $78
  call Call_000_33f3                              ; $6d02: $cd $f3 $33
  ld e, $e6                                       ; $6d05: $1e $e6
  ld e, a                                         ; $6d07: $5f

jr_006_6d08:
  or a                                            ; $6d08: $b7
  jr z, jr_006_6d11                               ; $6d09: $28 $06

  ld a, b                                         ; $6d0b: $78
  call Call_000_32e5                              ; $6d0c: $cd $e5 $32
  or c                                            ; $6d0f: $b1
  ld c, a                                         ; $6d10: $4f

jr_006_6d11:
  pop hl                                          ; $6d11: $e1
  inc b                                           ; $6d12: $04
  ld a, b                                         ; $6d13: $78
  cp $0a                                          ; $6d14: $fe $0a
  jr nz, jr_006_6cdc                              ; $6d16: $20 $c4

  ld a, c                                         ; $6d18: $79
  pop bc                                          ; $6d19: $c1
  ret                                             ; $6d1a: $c9


Call_006_6d1b:
  push bc                                         ; $6d1b: $c5
  push de                                         ; $6d1c: $d5
  push af                                         ; $6d1d: $f5
  ld b, a                                         ; $6d1e: $47
  add a                                           ; $6d1f: $87
  add b                                           ; $6d20: $80
  cp $18                                          ; $6d21: $fe $18
  jr z, jr_006_6d2d                               ; $6d23: $28 $08

  cp $1b                                          ; $6d25: $fe $1b
  jr nz, jr_006_6d2f                              ; $6d27: $20 $06

  ld a, $17                                       ; $6d29: $3e $17
  jr jr_006_6d2f                                  ; $6d2b: $18 $02

jr_006_6d2d:
  ld a, $16                                       ; $6d2d: $3e $16

jr_006_6d2f:
  ld hl, $ce3a                                    ; $6d2f: $21 $3a $ce
  ld b, $03                                       ; $6d32: $06 $03

jr_006_6d34:
  call Call_000_32c8                              ; $6d34: $cd $c8 $32
  jr z, jr_006_6d47                               ; $6d37: $28 $0e

  inc a                                           ; $6d39: $3c
  dec b                                           ; $6d3a: $05
  jr nz, jr_006_6d34                              ; $6d3b: $20 $f7

  pop af                                          ; $6d3d: $f1
  ld hl, $ce3f                                    ; $6d3e: $21 $3f $ce
  rst $08                                         ; $6d41: $cf
  ld [hl], $ff                                    ; $6d42: $36 $ff
  xor a                                           ; $6d44: $af
  jr jr_006_6d5f                                  ; $6d45: $18 $18

jr_006_6d47:
  cp $1e                                          ; $6d47: $fe $1e
  jr nc, jr_006_6d62                              ; $6d49: $30 $17

  ld b, a                                         ; $6d4b: $47
  call Call_000_32c0                              ; $6d4c: $cd $c0 $32
  ld a, b                                         ; $6d4f: $78
  ld hl, $65ee                                    ; $6d50: $21 $ee $65
  rst $08                                         ; $6d53: $cf
  pop af                                          ; $6d54: $f1
  push hl                                         ; $6d55: $e5
  ld hl, $ce3f                                    ; $6d56: $21 $3f $ce
  rst $08                                         ; $6d59: $cf
  pop de                                          ; $6d5a: $d1
  ld a, [de]                                      ; $6d5b: $1a
  ld [hl], a                                      ; $6d5c: $77
  ld a, $01                                       ; $6d5d: $3e $01

jr_006_6d5f:
  pop de                                          ; $6d5f: $d1
  pop bc                                          ; $6d60: $c1
  ret                                             ; $6d61: $c9


jr_006_6d62:
  pop af                                          ; $6d62: $f1
  jr jr_006_6d5f                                  ; $6d63: $18 $fa

Call_006_6d65:
  push bc                                         ; $6d65: $c5
  push de                                         ; $6d66: $d5
  push hl                                         ; $6d67: $e5
  ld a, [$ce37]                                   ; $6d68: $fa $37 $ce
  ld c, a                                         ; $6d6b: $4f

jr_006_6d6c:
  call Call_006_6de5                              ; $6d6c: $cd $e5 $6d
  jr c, jr_006_6d7d                               ; $6d6f: $38 $0c

  ld hl, $ce37                                    ; $6d71: $21 $37 $ce
  inc [hl]                                        ; $6d74: $34
  call Call_006_682d                              ; $6d75: $cd $2d $68
  call Call_006_6a52                              ; $6d78: $cd $52 $6a
  jr jr_006_6d6c                                  ; $6d7b: $18 $ef

jr_006_6d7d:
  ld a, [$ce37]                                   ; $6d7d: $fa $37 $ce
  sub c                                           ; $6d80: $91
  pop hl                                          ; $6d81: $e1
  pop de                                          ; $6d82: $d1
  pop bc                                          ; $6d83: $c1
  ret                                             ; $6d84: $c9


Call_006_6d85:
  push bc                                         ; $6d85: $c5
  push de                                         ; $6d86: $d5
  push hl                                         ; $6d87: $e5
  ld a, [$ce6d]                                   ; $6d88: $fa $6d $ce
  ld c, a                                         ; $6d8b: $4f

jr_006_6d8c:
  call Call_006_6df2                              ; $6d8c: $cd $f2 $6d
  jr c, jr_006_6d9d                               ; $6d8f: $38 $0c

  ld hl, $ce6d                                    ; $6d91: $21 $6d $ce
  inc [hl]                                        ; $6d94: $34
  call Call_006_68ac                              ; $6d95: $cd $ac $68
  call Call_006_6a71                              ; $6d98: $cd $71 $6a
  jr jr_006_6d8c                                  ; $6d9b: $18 $ef

jr_006_6d9d:
  ld a, [$ce6d]                                   ; $6d9d: $fa $6d $ce
  sub c                                           ; $6da0: $91
  pop hl                                          ; $6da1: $e1
  pop de                                          ; $6da2: $d1
  pop bc                                          ; $6da3: $c1
  ret                                             ; $6da4: $c9


Call_006_6da5:
  push bc                                         ; $6da5: $c5
  push de                                         ; $6da6: $d5
  push hl                                         ; $6da7: $e5
  ld a, [$ce7e]                                   ; $6da8: $fa $7e $ce
  ld c, a                                         ; $6dab: $4f

jr_006_6dac:
  call Call_006_6dff                              ; $6dac: $cd $ff $6d
  jr c, jr_006_6dbd                               ; $6daf: $38 $0c

  ld hl, $ce7e                                    ; $6db1: $21 $7e $ce
  inc [hl]                                        ; $6db4: $34
  call Call_006_692c                              ; $6db5: $cd $2c $69
  call Call_006_6a90                              ; $6db8: $cd $90 $6a
  jr jr_006_6dac                                  ; $6dbb: $18 $ef

jr_006_6dbd:
  ld a, [$ce7e]                                   ; $6dbd: $fa $7e $ce
  sub c                                           ; $6dc0: $91
  pop hl                                          ; $6dc1: $e1
  pop de                                          ; $6dc2: $d1
  pop bc                                          ; $6dc3: $c1
  ret                                             ; $6dc4: $c9


Call_006_6dc5:
  push bc                                         ; $6dc5: $c5
  push de                                         ; $6dc6: $d5
  push hl                                         ; $6dc7: $e5
  ld a, [$ce8f]                                   ; $6dc8: $fa $8f $ce
  ld c, a                                         ; $6dcb: $4f

jr_006_6dcc:
  call Call_006_6e0c                              ; $6dcc: $cd $0c $6e
  jr c, jr_006_6ddd                               ; $6dcf: $38 $0c

  ld hl, $ce8f                                    ; $6dd1: $21 $8f $ce
  inc [hl]                                        ; $6dd4: $34
  call Call_006_69b5                              ; $6dd5: $cd $b5 $69
  call Call_006_6aaf                              ; $6dd8: $cd $af $6a
  jr jr_006_6dcc                                  ; $6ddb: $18 $ef

jr_006_6ddd:
  ld a, [$ce8f]                                   ; $6ddd: $fa $8f $ce
  sub c                                           ; $6de0: $91
  pop hl                                          ; $6de1: $e1
  pop de                                          ; $6de2: $d1
  pop bc                                          ; $6de3: $c1
  ret                                             ; $6de4: $c9


Call_006_6de5:
  ld a, [$ce35]                                   ; $6de5: $fa $35 $ce
  ld e, a                                         ; $6de8: $5f
  ld a, [$ce36]                                   ; $6de9: $fa $36 $ce
  ld d, a                                         ; $6dec: $57
  ld a, [$ce37]                                   ; $6ded: $fa $37 $ce
  jr jr_006_6e17                                  ; $6df0: $18 $25

Call_006_6df2:
  ld a, [$ce6b]                                   ; $6df2: $fa $6b $ce
  ld e, a                                         ; $6df5: $5f
  ld a, [$ce6c]                                   ; $6df6: $fa $6c $ce
  ld d, a                                         ; $6df9: $57
  ld a, [$ce6d]                                   ; $6dfa: $fa $6d $ce
  jr jr_006_6e17                                  ; $6dfd: $18 $18

Call_006_6dff:
  ld a, [$ce7c]                                   ; $6dff: $fa $7c $ce
  ld e, a                                         ; $6e02: $5f
  ld a, [$ce7d]                                   ; $6e03: $fa $7d $ce
  ld d, a                                         ; $6e06: $57
  ld a, [$ce7e]                                   ; $6e07: $fa $7e $ce
  jr jr_006_6e17                                  ; $6e0a: $18 $0b

Call_006_6e0c:
  ld a, [$ce8d]                                   ; $6e0c: $fa $8d $ce
  ld e, a                                         ; $6e0f: $5f
  ld a, [$ce8e]                                   ; $6e10: $fa $8e $ce
  ld d, a                                         ; $6e13: $57
  ld a, [$ce8f]                                   ; $6e14: $fa $8f $ce

jr_006_6e17:
  cp $63                                          ; $6e17: $fe $63
  jr z, jr_006_6e21                               ; $6e19: $28 $06

  call Call_006_6e88                              ; $6e1b: $cd $88 $6e
  jp CompareDEtoHL                                       ; $6e1e: $c3 $10 $00


jr_006_6e21:
  scf                                             ; $6e21: $37
  ret                                             ; $6e22: $c9


Call_006_6e23:
  cp $04                                          ; $6e23: $fe $04
  jr c, jr_006_6e4d                               ; $6e25: $38 $26

  jr nz, jr_006_6e2f                              ; $6e27: $20 $06

  call Call_006_6e4d                              ; $6e29: $cd $4d $6e
  cpl                                             ; $6e2c: $2f
  inc a                                           ; $6e2d: $3c
  ret                                             ; $6e2e: $c9


jr_006_6e2f:
  push hl                                         ; $6e2f: $e5
  call Call_006_6e64                              ; $6e30: $cd $64 $6e
  call ResolveIndexedPointer16                              ; $6e33: $cd $8b $31
  push hl                                         ; $6e36: $e5
  ld a, [$cc41]                                   ; $6e37: $fa $41 $cc
  dec a                                           ; $6e3a: $3d
  call Call_000_3182                              ; $6e3b: $cd $82 $31
  call Call_000_0092                              ; $6e3e: $cd $92 $00
  pop hl                                          ; $6e41: $e1
  ld a, [$cc42]                                   ; $6e42: $fa $42 $cc
  dec a                                           ; $6e45: $3d
  call ResolveIndexedPointer16                              ; $6e46: $cd $8b $31
  add hl, de                                      ; $6e49: $19
  ld a, l                                         ; $6e4a: $7d
  pop hl                                          ; $6e4b: $e1
  ret                                             ; $6e4c: $c9


Call_006_6e4d:
jr_006_6e4d:
  push hl                                         ; $6e4d: $e5
  call Call_006_6e64                              ; $6e4e: $cd $64 $6e
  call ResolveIndexedPointer16                              ; $6e51: $cd $8b $31
  push hl                                         ; $6e54: $e5
  ld a, [$cc41]                                   ; $6e55: $fa $41 $cc
  dec a                                           ; $6e58: $3d
  rst $08                                         ; $6e59: $cf
  ld e, [hl]                                      ; $6e5a: $5e
  pop hl                                          ; $6e5b: $e1
  ld a, [$cc42]                                   ; $6e5c: $fa $42 $cc
  dec a                                           ; $6e5f: $3d
  rst $08                                         ; $6e60: $cf
  sub e                                           ; $6e61: $93
  pop hl                                          ; $6e62: $e1
  ret                                             ; $6e63: $c9


Call_006_6e64:
  push af                                         ; $6e64: $f5
  ld a, [$cc43]                                   ; $6e65: $fa $43 $cc
  cp $02                                          ; $6e68: $fe $02
  jr z, jr_006_6e74                               ; $6e6a: $28 $08

  cp $01                                          ; $6e6c: $fe $01
  jr z, jr_006_6e79                               ; $6e6e: $28 $09

  cp $04                                          ; $6e70: $fe $04
  jr z, jr_006_6e7e                               ; $6e72: $28 $0a

jr_006_6e74:
  ld hl, $54f4                                    ; $6e74: $21 $f4 $54
  jr jr_006_6e86                                  ; $6e77: $18 $0d

jr_006_6e79:
  ld hl, $5502                                    ; $6e79: $21 $02 $55
  jr jr_006_6e86                                  ; $6e7c: $18 $08

jr_006_6e7e:
  ld hl, $5502                                    ; $6e7e: $21 $02 $55
  jr jr_006_6e86                                  ; $6e81: $18 $03

  ld hl, $551e                                    ; $6e83: $21 $1e $55

jr_006_6e86:
  pop af                                          ; $6e86: $f1
  ret                                             ; $6e87: $c9


Call_006_6e88:
  cp $63                                          ; $6e88: $fe $63
  jr z, jr_006_6e92                               ; $6e8a: $28 $06

  ld hl, $552c                                    ; $6e8c: $21 $2c $55
  jp ResolveIndexedPointer16                                ; $6e8f: $c3 $8b $31


jr_006_6e92:
  ld hl, $fffe                                    ; $6e92: $21 $fe $ff
  ret                                             ; $6e95: $c9


  ldh a, [rSVBK]                                  ; $6e96: $f0 $70
  push af                                         ; $6e98: $f5
  ld a, $06                                       ; $6e99: $3e $06
  ldh [rSVBK], a                                  ; $6e9b: $e0 $70
  ld a, [$ddc7]                                   ; $6e9d: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $6ea0: $e0 $bd
  pop af                                          ; $6ea2: $f1
  ldh [rSVBK], a                                  ; $6ea3: $e0 $70
  ldh a, [$ffbd]                                  ; $6ea5: $f0 $bd
  cp $01                                          ; $6ea7: $fe $01
  ld a, $76                                       ; $6ea9: $3e $76
  ret z                                           ; $6eab: $c8

  ld a, $77                                       ; $6eac: $3e $77
  ret                                             ; $6eae: $c9


  push af                                         ; $6eaf: $f5
  ld hl, $dfa8                                    ; $6eb0: $21 $a8 $df
  call Call_000_317a                              ; $6eb3: $cd $7a $31
  ldh a, [rSVBK]                                  ; $6eb6: $f0 $70
  push af                                         ; $6eb8: $f5
  ld a, $06                                       ; $6eb9: $3e $06
  ldh [rSVBK], a                                  ; $6ebb: $e0 $70
  ld a, [$ce3d]                                   ; $6ebd: $fa $3d $ce
  rst $08                                         ; $6ec0: $cf
  cp $ff                                          ; $6ec1: $fe $ff
  jr z, jr_006_6ef0                               ; $6ec3: $28 $2b

  ld [hl], $ff                                    ; $6ec5: $36 $ff
  ld e, a                                         ; $6ec7: $5f
  ld hl, $dcb3                                    ; $6ec8: $21 $b3 $dc
  call Call_000_32c0                              ; $6ecb: $cd $c0 $32
  push bc                                         ; $6ece: $c5
  ld c, e                                         ; $6ecf: $4b
  ld hl, $cea8                                    ; $6ed0: $21 $a8 $ce
  call Call_000_33f3                              ; $6ed3: $cd $f3 $33

  db $04, $19, $47

  ld bc, $15fa                                    ; $6ed9: $01 $fa $15
  ld e, $99                                       ; $6edc: $1e $99
  ld d, $02                                       ; $6ede: $16 $02
  ld hl, $154f                                    ; $6ee0: $21 $4f $15
  ld a, $41                                       ; $6ee3: $3e $41
  call Call_000_394b                              ; $6ee5: $cd $4b $39
  xor a                                           ; $6ee8: $af
  call Call_000_33f3                              ; $6ee9: $cd $f3 $33

  db $04, $01, $44

  pop bc                                          ; $6eef: $c1

jr_006_6ef0:
  pop af                                          ; $6ef0: $f1
  ldh [rSVBK], a                                  ; $6ef1: $e0 $70
  pop af                                          ; $6ef3: $f1
  ret                                             ; $6ef4: $c9


  push hl                                         ; $6ef5: $e5
  ld hl, $dfa8                                    ; $6ef6: $21 $a8 $df
  call Call_000_317a                              ; $6ef9: $cd $7a $31
  ldh a, [rSVBK]                                  ; $6efc: $f0 $70
  push af                                         ; $6efe: $f5
  ld a, $06                                       ; $6eff: $3e $06
  ldh [rSVBK], a                                  ; $6f01: $e0 $70
  ld a, [$ce3d]                                   ; $6f03: $fa $3d $ce
  rst $08                                         ; $6f06: $cf
  ldh [$ffbd], a                                  ; $6f07: $e0 $bd
  pop af                                          ; $6f09: $f1
  ldh [rSVBK], a                                  ; $6f0a: $e0 $70
  ldh a, [$ffbd]                                  ; $6f0c: $f0 $bd
  pop hl                                          ; $6f0e: $e1
  inc a                                           ; $6f0f: $3c
  ret                                             ; $6f10: $c9


  push de                                         ; $6f11: $d5
  ld hl, $552c                                    ; $6f12: $21 $2c $55
  ld a, [$ce37]                                   ; $6f15: $fa $37 $ce
  call Call_000_3182                              ; $6f18: $cd $82 $31
  ld hl, $552c                                    ; $6f1b: $21 $2c $55
  ld a, [$ce37]                                   ; $6f1e: $fa $37 $ce
  dec a                                           ; $6f21: $3d
  call ResolveIndexedPointer16                              ; $6f22: $cd $8b $31
  call Call_000_01ee                              ; $6f25: $cd $ee $01
  ld b, d                                         ; $6f28: $42
  ld c, e                                         ; $6f29: $4b
  pop de                                          ; $6f2a: $d1
  ret                                             ; $6f2b: $c9


Call_006_6f2c:
  ld a, $01                                       ; $6f2c: $3e $01
  ld hl, $cebc                                    ; $6f2e: $21 $bc $ce
  ld [hl+], a                                     ; $6f31: $22
  ld b, $03                                       ; $6f32: $06 $03
  xor a                                           ; $6f34: $af

jr_006_6f35:
  ld [hl+], a                                     ; $6f35: $22
  dec b                                           ; $6f36: $05
  jr nz, jr_006_6f35                              ; $6f37: $20 $fc

  ld [hl+], a                                     ; $6f39: $22
  ld [hl+], a                                     ; $6f3a: $22
  ret                                             ; $6f3b: $c9


  ld hl, $cebc                                    ; $6f3c: $21 $bc $ce
  rst $08                                         ; $6f3f: $cf
  ld [hl], $01                                    ; $6f40: $36 $01
  push af                                         ; $6f42: $f5
  push hl                                         ; $6f43: $e5
  ld hl, $cebc                                    ; $6f44: $21 $bc $ce
  ld a, [hl+]                                     ; $6f47: $2a
  add [hl]                                        ; $6f48: $86
  inc hl                                          ; $6f49: $23
  add [hl]                                        ; $6f4a: $86
  inc hl                                          ; $6f4b: $23
  add [hl]                                        ; $6f4c: $86
  inc hl                                          ; $6f4d: $23
  cp $04                                          ; $6f4e: $fe $04
  call z, Call_000_0a6c                           ; $6f50: $cc $6c $0a
  pop hl                                          ; $6f53: $e1
  pop af                                          ; $6f54: $f1
  ret                                             ; $6f55: $c9


  ld hl, $cebc                                    ; $6f56: $21 $bc $ce
  rst $08                                         ; $6f59: $cf
  ld [hl], $00                                    ; $6f5a: $36 $00
  ret                                             ; $6f5c: $c9


  ld hl, $0011                                    ; $6f5d: $21 $11 $00
  add hl, bc                                      ; $6f60: $09
  push hl                                         ; $6f61: $e5
  ld a, [hl+]                                     ; $6f62: $2a
  ld d, [hl]                                      ; $6f63: $56
  ld e, a                                         ; $6f64: $5f
  ld hl, $fff4                                    ; $6f65: $21 $f4 $ff
  add hl, de                                      ; $6f68: $19
  pop de                                          ; $6f69: $d1
  ld a, l                                         ; $6f6a: $7d
  ld [de], a                                      ; $6f6b: $12
  inc de                                          ; $6f6c: $13
  ld a, h                                         ; $6f6d: $7c
  ld [de], a                                      ; $6f6e: $12
  ret                                             ; $6f6f: $c9


  ld hl, $0009                                    ; $6f70: $21 $09 $00
  add hl, bc                                      ; $6f73: $09
  inc [hl]                                        ; $6f74: $34
  inc [hl]                                        ; $6f75: $34
  inc [hl]                                        ; $6f76: $34
  ret                                             ; $6f77: $c9


  db $01, $2e, $80, $00, $00, $00, $99, $26, $01, $02, $01, $02, $88, $6f

  sub c                                           ; $6f86: $91
  ld l, a                                         ; $6f87: $6f

  db $01, $08, $e0, $00, $00, $04, $04, $0f, $01

  ld bc, $f008                                    ; $6f91: $01 $08 $f0
  nop                                             ; $6f94: $00
  nop                                             ; $6f95: $00
  inc b                                           ; $6f96: $04
  inc b                                           ; $6f97: $04
  rrca                                            ; $6f98: $0f
  ld a, [bc]                                      ; $6f99: $0a
  ld bc, $0002                                    ; $6f9a: $01 $02 $00
  rrca                                            ; $6f9d: $0f
  ld a, [bc]                                      ; $6f9e: $0a
  inc b                                           ; $6f9f: $04
  inc b                                           ; $6fa0: $04
  rrca                                            ; $6fa1: $0f
  ld a, [bc]                                      ; $6fa2: $0a

  db $b1, $6f, $ba, $6f, $c3, $6f

  db $cc                                          ; $6fa9: $cc
  ld l, a                                         ; $6faa: $6f

  db $d5, $6f

  sbc $6f                                         ; $6fad: $de $6f

  db $e7, $6f, $01, $00, $00, $00, $12, $02, $03, $10, $05, $01, $00, $00, $02, $12
  db $02, $03, $10, $05, $01, $00, $00, $04, $12, $02, $03, $10, $0e

  ld bc, $0000                                    ; $6fcc: $01 $00 $00
  ld b, $12                                       ; $6fcf: $06 $12
  ld [bc], a                                      ; $6fd1: $02
  inc bc                                          ; $6fd2: $03
  db $10                                          ; $6fd3: $10
  db $0e                                          ; $6fd4: $0e

  db $01, $00, $00, $06, $08, $06, $02, $07, $08

  ld bc, $0000                                    ; $6fde: $01 $00 $00
  ld [$0612], sp                                  ; $6fe1: $08 $12 $06
  ld [bc], a                                      ; $6fe4: $02
  rlca                                            ; $6fe5: $07
  db $08                                          ; $6fe6: $08

  db $01, $00, $00, $0e, $12, $06, $02, $07, $08, $21, $00, $41, $01, $f8, $6f

  dec b                                           ; $6ff6: $05
  ld [hl], b                                      ; $6ff7: $70

  db $31, $01, $ff, $6f, $b0, $00, $41, $21, $d0, $41, $d0, $61, $d0, $31, $01, $0c
  db $70, $d0, $00, $41, $41, $d1, $61, $d1, $81, $d1, $31, $01, $19, $70, $f0, $00
  db $41, $a2, $d0, $c2, $d0, $e2, $d0, $31, $01, $2d, $70, $10, $01, $41, $31, $01
  db $2d, $70, $30, $01, $41, $a2, $d1, $c2, $d1, $e2, $d1, $02, $d2, $67, $55, $21
  db $78, $6f, $c3, $52, $29, $af, $ea, $60, $cb, $ea, $61, $cb, $3e, $65, $ea, $62
  db $cb, $ea, $63, $cb, $c3, $4a, $7e, $f0, $cf, $b7, $20, $08, $cd, $3d, $70, $cd
  db $d4, $74, $18, $15, $cd, $15, $7e, $f0, $ce, $fe, $65, $38, $02, $3e, $65, $ea
  db $62, $cb, $cd, $56, $71

  xor a                                           ; $706d: $af
  ld [$cb61], a                                   ; $706e: $ea $61 $cb
  ld hl, $7b8d                                    ; $7071: $21 $8d $7b
  call Call_000_33f3                              ; $7074: $cd $f3 $33

  db $03, $88, $7e

  call Call_000_3978                              ; $707a: $cd $78 $39
  ld hl, $65ff                                    ; $707d: $21 $ff $65
  xor a                                           ; $7080: $af
  ld d, $00                                       ; $7081: $16 $00
  ld e, $01                                       ; $7083: $1e $01
  call Call_000_33f3                              ; $7085: $cd $f3 $33

  db $00, $96, $27

  ld hl, $ffb9                                    ; $708b: $21 $b9 $ff
  ld [hl], $00                                    ; $708e: $36 $00
  inc hl                                          ; $7090: $23
  ld [hl], $00                                    ; $7091: $36 $00
  ld a, $7c                                       ; $7093: $3e $7c
  call Call_000_33f3                              ; $7095: $cd $f3 $33

  db $00, $3c, $12

  ld a, $02                                       ; $709b: $3e $02
  ldh [$ff9a], a                                  ; $709d: $e0 $9a
  ld a, $7c                                       ; $709f: $3e $7c
  call Call_000_04e0                              ; $70a1: $cd $e0 $04
  call Call_006_7347                              ; $70a4: $cd $47 $73
  xor a                                           ; $70a7: $af
  ld hl, $50d6                                    ; $70a8: $21 $d6 $50
  jp Jump_006_50fd                                ; $70ab: $c3 $fd $50


  call Call_006_70d3                              ; $70ae: $cd $d3 $70
  jp nz, Jump_006_70dc                            ; $70b1: $c2 $dc $70

  ldh a, [$ffa6]                                  ; $70b4: $f0 $a6
  bit 0, a                                        ; $70b6: $cb $47
  jp nz, Jump_006_718d                            ; $70b8: $c2 $8d $71

  bit 1, a                                        ; $70bb: $cb $4f
  jp nz, Jump_006_71e5                            ; $70bd: $c2 $e5 $71

  call Call_000_3363                              ; $70c0: $cd $63 $33
  ld a, [$c097]                                   ; $70c3: $fa $97 $c0
  or a                                            ; $70c6: $b7
  call z, Call_006_7211                           ; $70c7: $cc $11 $72
  call Call_006_7e15                              ; $70ca: $cd $15 $7e
  call Call_006_7482                              ; $70cd: $cd $82 $74
  jp Jump_006_512b                                ; $70d0: $c3 $2b $51


Call_006_70d3:
  ld a, [$cb60]                                   ; $70d3: $fa $60 $cb
  ld b, a                                         ; $70d6: $47
  ld a, [$cb61]                                   ; $70d7: $fa $61 $cb
  and b                                           ; $70da: $a0
  ret                                             ; $70db: $c9


Jump_006_70dc:
  ld a, [$cb62]                                   ; $70dc: $fa $62 $cb
  cp $65                                          ; $70df: $fe $65
  jr nc, jr_006_70e9                              ; $70e1: $30 $06

  call Call_000_33f3                              ; $70e3: $cd $f3 $33
  inc b                                           ; $70e6: $04
  jr z, jr_006_7130                               ; $70e7: $28 $47

jr_006_70e9:
  ld a, [$cb63]                                   ; $70e9: $fa $63 $cb
  cp $65                                          ; $70ec: $fe $65
  jr nc, jr_006_70f6                              ; $70ee: $30 $06

  call Call_000_33f3                              ; $70f0: $cd $f3 $33
  inc b                                           ; $70f3: $04
  ldh a, [c]                                      ; $70f4: $f2
  ld b, [hl]                                      ; $70f5: $46

jr_006_70f6:
  xor a                                           ; $70f6: $af
  ld [$cb60], a                                   ; $70f7: $ea $60 $cb
  ld [$cb61], a                                   ; $70fa: $ea $61 $cb
  ld a, $65                                       ; $70fd: $3e $65
  ld [$cb62], a                                   ; $70ff: $ea $62 $cb
  ld a, $f4                                       ; $7102: $3e $f4
  call Call_006_7f32                              ; $7104: $cd $32 $7f
  ld a, [$cb62]                                   ; $7107: $fa $62 $cb
  ld hl, $cb63                                    ; $710a: $21 $63 $cb
  cp [hl]                                         ; $710d: $be
  ld a, $03                                       ; $710e: $3e $03
  jp z, Jump_000_392b                             ; $7110: $ca $2b $39

  ld a, $01                                       ; $7113: $3e $01
  call Call_000_392b                              ; $7115: $cd $2b $39
  ld a, [$cdd0]                                   ; $7118: $fa $d0 $cd
  ld d, a                                         ; $711b: $57
  call Call_000_33f3                              ; $711c: $cd $f3 $33
  inc b                                           ; $711f: $04
  and b                                           ; $7120: $a0
  ld e, b                                         ; $7121: $58
  call Call_006_7347                              ; $7122: $cd $47 $73
  ld a, $65                                       ; $7125: $3e $65
  ld [$cb63], a                                   ; $7127: $ea $63 $cb
  ld de, $1f81                                    ; $712a: $11 $81 $1f
  ld hl, $7026                                    ; $712d: $21 $26 $70

Jump_006_7130:
jr_006_7130:
  push de                                         ; $7130: $d5
  call Call_000_3013                              ; $7131: $cd $13 $30
  ld a, $68                                       ; $7134: $3e $68
  ld [$c159], a                                   ; $7136: $ea $59 $c1
  ld a, $04                                       ; $7139: $3e $04
  ld [$c1a2], a                                   ; $713b: $ea $a2 $c1
  call Call_006_7148                              ; $713e: $cd $48 $71
  pop hl                                          ; $7141: $e1
  call Call_000_3427                              ; $7142: $cd $27 $34

  db $01, $28, $66

Call_006_7148:
Jump_006_7148:
  ld hl, $01a1                                    ; $7148: $21 $a1 $01
  ld c, $80                                       ; $714b: $0e $80
  ld b, $ff                                       ; $714d: $06 $ff
  ld e, $0e                                       ; $714f: $1e $0e
  ld d, $04                                       ; $7151: $16 $04
  jp Jump_000_14a1                                ; $7153: $c3 $a1 $14


  cp $65                                          ; $7156: $fe $65
  jr c, jr_006_7161                               ; $7158: $38 $07

  cp $65                                          ; $715a: $fe $65
  jr z, jr_006_7161                               ; $715c: $28 $03

  call Call_000_0a6c                              ; $715e: $cd $6c $0a

jr_006_7161:
  jp Jump_006_7f99                                ; $7161: $c3 $99 $7f


  ret                                             ; $7164: $c9


Jump_006_7165:
  ld [$cb63], a                                   ; $7165: $ea $63 $cb
  xor a                                           ; $7168: $af
  ld [$cb60], a                                   ; $7169: $ea $60 $cb
  jp Jump_006_7347                                ; $716c: $c3 $47 $73


  ld a, $01                                       ; $716f: $3e $01
  ld [$cb61], a                                   ; $7171: $ea $61 $cb
  ld c, a                                         ; $7174: $4f
  ld b, $01                                       ; $7175: $06 $01
  jp Jump_006_737f                                ; $7177: $c3 $7f $73


  xor a                                           ; $717a: $af
  ld [$cb61], a                                   ; $717b: $ea $61 $cb
  ld c, a                                         ; $717e: $4f
  ld b, $01                                       ; $717f: $06 $01
  call Call_006_737f                              ; $7181: $cd $7f $73
  ld de, $1f7e                                    ; $7184: $11 $7e $1f
  ld hl, $7026                                    ; $7187: $21 $26 $70
  jp Jump_006_7130                                ; $718a: $c3 $30 $71


Jump_006_718d:
  ldh a, [$ffd3]                                  ; $718d: $f0 $d3
  rst $00                                         ; $718f: $c7

  db $96, $71, $9b, $71

  db $dd                                          ; $7194: $dd
  ld [hl], c                                      ; $7195: $71

  ld a, $2e                                       ; $7196: $3e $2e
  jp Jump_000_261e                                ; $7198: $c3 $1e $26


  ld a, $01                                       ; $719b: $3e $01
  ld [$cb60], a                                   ; $719d: $ea $60 $cb
  ld a, $f2                                       ; $71a0: $3e $f2
  call Call_006_7f32                              ; $71a2: $cd $32 $7f
  rst $18                                         ; $71a5: $df
  ld a, $01                                       ; $71a6: $3e $01
  call Call_006_743c                              ; $71a8: $cd $3c $74
  ld a, [$cb63]                                   ; $71ab: $fa $63 $cb
  ld b, $01                                       ; $71ae: $06 $01
  ld c, a                                         ; $71b0: $4f
  call Call_006_73b3                              ; $71b1: $cd $b3 $73
  ld b, $00                                       ; $71b4: $06 $00
  ld c, $01                                       ; $71b6: $0e $01
  call Call_006_737f                              ; $71b8: $cd $7f $73
  call RST_20                                     ; $71bb: $cd $20 $00
  ld a, [$c097]                                   ; $71be: $fa $97 $c0
  or a                                            ; $71c1: $b7
  ret nz                                          ; $71c2: $c0

  call Call_000_33f3                              ; $71c3: $cd $f3 $33

  db $00, $a6, $02

  call Call_000_33f3                              ; $71c9: $cd $f3 $33

  db $00, $0f, $03

  ld a, $02                                       ; $71cf: $3e $02
  call Call_006_74a7                              ; $71d1: $cd $a7 $74
  call Call_000_3363                              ; $71d4: $cd $63 $33
  call Call_006_74b5                              ; $71d7: $cd $b5 $74
  jp Jump_006_7211                                ; $71da: $c3 $11 $72


jr_006_71dd:
  call Call_006_7e3d                              ; $71dd: $cd $3d $7e
  ld a, $0e                                       ; $71e0: $3e $0e
  jp Jump_000_261e                                ; $71e2: $c3 $1e $26


Jump_006_71e5:
jr_006_71e5:
  ld a, $03                                       ; $71e5: $3e $03
  call Call_000_392b                              ; $71e7: $cd $2b $39
  call Call_006_74d4                              ; $71ea: $cd $d4 $74
  ld a, [$cb60]                                   ; $71ed: $fa $60 $cb
  or a                                            ; $71f0: $b7
  jr z, jr_006_71dd                               ; $71f1: $28 $ea

  xor a                                           ; $71f3: $af
  ld [$cb60], a                                   ; $71f4: $ea $60 $cb
  ld a, $f3                                       ; $71f7: $3e $f3
  call Call_006_7f32                              ; $71f9: $cd $32 $7f
  rst $18                                         ; $71fc: $df
  ld b, $00                                       ; $71fd: $06 $00
  ld c, $00                                       ; $71ff: $0e $00
  call Call_006_737f                              ; $7201: $cd $7f $73
  ld a, $00                                       ; $7204: $3e $00
  call Call_006_743c                              ; $7206: $cd $3c $74
  call RST_20                                     ; $7209: $cd $20 $00
  ld a, $03                                       ; $720c: $3e $03
  jp Jump_000_392b                                ; $720e: $c3 $2b $39


Call_006_7211:
Jump_006_7211:
  ld a, [$cb60]                                   ; $7211: $fa $60 $cb
  or a                                            ; $7214: $b7
  ret z                                           ; $7215: $c8

  di                                              ; $7216: $f3
  call Call_006_7230                              ; $7217: $cd $30 $72
  jr nz, jr_006_7225                              ; $721a: $20 $09

  ldh a, [$ffa5]                                  ; $721c: $f0 $a5
  and $02                                         ; $721e: $e6 $02
  jr nz, jr_006_7225                              ; $7220: $20 $03

  call Call_006_72b3                              ; $7222: $cd $b3 $72

jr_006_7225:
  xor a                                           ; $7225: $af
  ldh [rIF], a                                    ; $7226: $e0 $0f
  ei                                              ; $7228: $fb
  ldh a, [$ffa5]                                  ; $7229: $f0 $a5
  and $02                                         ; $722b: $e6 $02
  jr nz, jr_006_71e5                              ; $722d: $20 $b6

  ret                                             ; $722f: $c9


Call_006_7230:
  push bc                                         ; $7230: $c5
  push de                                         ; $7231: $d5
  push hl                                         ; $7232: $e5
  jr jr_006_723a                                  ; $7233: $18 $05

jr_006_7235:
  ld a, $2d                                       ; $7235: $3e $2d

jr_006_7237:
  dec a                                           ; $7237: $3d
  jr nz, jr_006_7237                              ; $7238: $20 $fd

jr_006_723a:
  call Call_006_74c9                              ; $723a: $cd $c9 $74
  ld a, $02                                       ; $723d: $3e $02
  call Call_006_74dd                              ; $723f: $cd $dd $74
  ld a, [$c086]                                   ; $7242: $fa $86 $c0
  cp $00                                          ; $7245: $fe $00
  jr nz, jr_006_72ae                              ; $7247: $20 $65

  ld hl, $7035                                    ; $7249: $21 $35 $70
  ld b, $02                                       ; $724c: $06 $02
  call Call_006_75a0                              ; $724e: $cd $a0 $75
  jr nz, jr_006_7235                              ; $7251: $20 $e2

  call Call_006_759e                              ; $7253: $cd $9e $75
  jr nz, jr_006_7235                              ; $7256: $20 $dd

  call Call_006_74c9                              ; $7258: $cd $c9 $74
  call Call_006_750a                              ; $725b: $cd $0a $75
  cp $02                                          ; $725e: $fe $02
  jr z, jr_006_7235                               ; $7260: $28 $d3

  cp $00                                          ; $7262: $fe $00
  jr nz, jr_006_72ae                              ; $7264: $20 $48

  ld hl, $cb3f                                    ; $7266: $21 $3f $cb
  call Call_006_75f3                              ; $7269: $cd $f3 $75
  jr nz, jr_006_7235                              ; $726c: $20 $c7

  call Call_006_75f1                              ; $726e: $cd $f1 $75
  jr nz, jr_006_7235                              ; $7271: $20 $c2

  call Call_006_732d                              ; $7273: $cd $2d $73
  jr nz, jr_006_7235                              ; $7276: $20 $bd

  call Call_006_74c9                              ; $7278: $cd $c9 $74
  call Call_006_7553                              ; $727b: $cd $53 $75
  jr nz, jr_006_72ae                              ; $727e: $20 $2e

  ld hl, $cb62                                    ; $7280: $21 $62 $cb
  ld b, $01                                       ; $7283: $06 $01
  call Call_006_75a0                              ; $7285: $cd $a0 $75
  jr nz, jr_006_7235                              ; $7288: $20 $ab

  call Call_006_759e                              ; $728a: $cd $9e $75
  jr nz, jr_006_7235                              ; $728d: $20 $a6

  call Call_006_74c9                              ; $728f: $cd $c9 $74
  call Call_006_750a                              ; $7292: $cd $0a $75
  cp $02                                          ; $7295: $fe $02
  jr z, jr_006_7235                               ; $7297: $28 $9c

  cp $00                                          ; $7299: $fe $00
  jr nz, jr_006_72ae                              ; $729b: $20 $11

  ld hl, $cb3f                                    ; $729d: $21 $3f $cb
  call Call_006_75f3                              ; $72a0: $cd $f3 $75
  jr nz, jr_006_7235                              ; $72a3: $20 $90

  call Call_006_75f1                              ; $72a5: $cd $f1 $75
  call Call_006_7339                              ; $72a8: $cd $39 $73
  or a                                            ; $72ab: $b7
  jr jr_006_72af                                  ; $72ac: $18 $01

jr_006_72ae:
  xor a                                           ; $72ae: $af

jr_006_72af:
  pop hl                                          ; $72af: $e1
  pop de                                          ; $72b0: $d1
  pop bc                                          ; $72b1: $c1
  ret                                             ; $72b2: $c9


Call_006_72b3:
  push bc                                         ; $72b3: $c5
  push de                                         ; $72b4: $d5
  push hl                                         ; $72b5: $e5

jr_006_72b6:
  call Call_006_74c9                              ; $72b6: $cd $c9 $74
  ld a, $01                                       ; $72b9: $3e $01
  call Call_006_74dd                              ; $72bb: $cd $dd $74
  ld a, [$c086]                                   ; $72be: $fa $86 $c0
  cp $02                                          ; $72c1: $fe $02
  jr z, jr_006_72b6                               ; $72c3: $28 $f1

  cp $00                                          ; $72c5: $fe $00
  jr nz, jr_006_7328                              ; $72c7: $20 $5f

  ld hl, $cb3f                                    ; $72c9: $21 $3f $cb
  call Call_006_75f3                              ; $72cc: $cd $f3 $75
  jr nz, jr_006_72b6                              ; $72cf: $20 $e5

  call Call_006_75f1                              ; $72d1: $cd $f1 $75
  jr nz, jr_006_72b6                              ; $72d4: $20 $e0

  call Call_006_732d                              ; $72d6: $cd $2d $73
  jr nz, jr_006_72b6                              ; $72d9: $20 $db

  call Call_006_74c9                              ; $72db: $cd $c9 $74
  call Call_006_7553                              ; $72de: $cd $53 $75
  jr nz, jr_006_7328                              ; $72e1: $20 $45

  ld hl, $7035                                    ; $72e3: $21 $35 $70
  ld b, $02                                       ; $72e6: $06 $02
  call Call_006_75a0                              ; $72e8: $cd $a0 $75
  jr nz, jr_006_72b6                              ; $72eb: $20 $c9

  call Call_006_759e                              ; $72ed: $cd $9e $75
  jr nz, jr_006_72b6                              ; $72f0: $20 $c4

  call Call_006_74c9                              ; $72f2: $cd $c9 $74
  call Call_006_750a                              ; $72f5: $cd $0a $75
  cp $02                                          ; $72f8: $fe $02
  jr z, jr_006_72b6                               ; $72fa: $28 $ba

  cp $00                                          ; $72fc: $fe $00
  jr nz, jr_006_7328                              ; $72fe: $20 $28

  ld hl, $cb3f                                    ; $7300: $21 $3f $cb
  call Call_006_75f3                              ; $7303: $cd $f3 $75
  jr nz, jr_006_72b6                              ; $7306: $20 $ae

  call Call_006_75f1                              ; $7308: $cd $f1 $75
  jr nz, jr_006_72b6                              ; $730b: $20 $a9

  call Call_006_74c9                              ; $730d: $cd $c9 $74
  call Call_006_7553                              ; $7310: $cd $53 $75
  jr nz, jr_006_7328                              ; $7313: $20 $13

  ld hl, $cb62                                    ; $7315: $21 $62 $cb
  ld b, $01                                       ; $7318: $06 $01
  call Call_006_75a0                              ; $731a: $cd $a0 $75
  jr nz, jr_006_72b6                              ; $731d: $20 $97

  call Call_006_759e                              ; $731f: $cd $9e $75
  call Call_006_7339                              ; $7322: $cd $39 $73
  or a                                            ; $7325: $b7
  jr jr_006_7329                                  ; $7326: $18 $01

jr_006_7328:
  xor a                                           ; $7328: $af

jr_006_7329:
  pop hl                                          ; $7329: $e1
  pop de                                          ; $732a: $d1
  pop bc                                          ; $732b: $c1
  ret                                             ; $732c: $c9


Call_006_732d:
  ld a, [$cb3f]                                   ; $732d: $fa $3f $cb
  cp $67                                          ; $7330: $fe $67
  ret nz                                          ; $7332: $c0

  ld a, [$cb40]                                   ; $7333: $fa $40 $cb
  cp $55                                          ; $7336: $fe $55
  ret                                             ; $7338: $c9


Call_006_7339:
  ld a, [$cb3f]                                   ; $7339: $fa $3f $cb
  ld [$cb63], a                                   ; $733c: $ea $63 $cb
  ld a, $01                                       ; $733f: $3e $01
  ld [$cb61], a                                   ; $7341: $ea $61 $cb
  jp Jump_006_74d4                                ; $7344: $c3 $d4 $74


Call_006_7347:
Jump_006_7347:
  ldh a, [$ffcd]                                  ; $7347: $f0 $cd
  cp $30                                          ; $7349: $fe $30
  ret nz                                          ; $734b: $c0

  rst $18                                         ; $734c: $df
  ld a, [$cb60]                                   ; $734d: $fa $60 $cb
  ld a, $00                                       ; $7350: $3e $00
  call Call_006_743c                              ; $7352: $cd $3c $74
  ld a, [$cb60]                                   ; $7355: $fa $60 $cb
  ld b, $00                                       ; $7358: $06 $00
  ld c, a                                         ; $735a: $4f
  call Call_006_737f                              ; $735b: $cd $7f $73
  ld a, [$cb61]                                   ; $735e: $fa $61 $cb
  ld b, $01                                       ; $7361: $06 $01
  ld c, a                                         ; $7363: $4f
  call Call_006_737f                              ; $7364: $cd $7f $73
  ld a, [$cb62]                                   ; $7367: $fa $62 $cb
  ld b, $00                                       ; $736a: $06 $00
  ld c, a                                         ; $736c: $4f
  call Call_006_73b3                              ; $736d: $cd $b3 $73
  ld a, [$cb63]                                   ; $7370: $fa $63 $cb
  ld b, $01                                       ; $7373: $06 $01
  ld c, a                                         ; $7375: $4f
  call Call_006_73b3                              ; $7376: $cd $b3 $73
  call Call_006_7482                              ; $7379: $cd $82 $74
  jp RST_20                                       ; $737c: $c3 $20 $00


Call_006_737f:
Jump_006_737f:
  push bc                                         ; $737f: $c5
  ld a, b                                         ; $7380: $78
  add a                                           ; $7381: $87
  add c                                           ; $7382: $81
  ld hl, $6fa3                                    ; $7383: $21 $a3 $6f
  call Call_000_3182                              ; $7386: $cd $82 $31
  call Call_000_1411                              ; $7389: $cd $11 $14
  pop bc                                          ; $738c: $c1
  ld a, b                                         ; $738d: $78
  cp $01                                          ; $738e: $fe $01
  jr z, jr_006_73a5                               ; $7390: $28 $13

  ld a, c                                         ; $7392: $79
  or a                                            ; $7393: $b7
  jp z, Jump_006_7148                             ; $7394: $ca $48 $71

  ld a, [$cb61]                                   ; $7397: $fa $61 $cb
  or a                                            ; $739a: $b7
  ret nz                                          ; $739b: $c0

  ld de, $1f7b                                    ; $739c: $11 $7b $1f
  ld hl, $7026                                    ; $739f: $21 $26 $70
  jp Jump_006_7130                                ; $73a2: $c3 $30 $71


jr_006_73a5:
  ld a, c                                         ; $73a5: $79
  or a                                            ; $73a6: $b7
  jp z, Jump_006_7148                             ; $73a7: $ca $48 $71

  ld de, $1f78                                    ; $73aa: $11 $78 $1f
  ld hl, $701f                                    ; $73ad: $21 $1f $70
  jp Jump_006_7130                                ; $73b0: $c3 $30 $71


Call_006_73b3:
  push bc                                         ; $73b3: $c5
  call Call_006_7406                              ; $73b4: $cd $06 $74
  pop bc                                          ; $73b7: $c1
  ld a, c                                         ; $73b8: $79
  cp $65                                          ; $73b9: $fe $65
  ret nc                                          ; $73bb: $d0

  push bc                                         ; $73bc: $c5
  ld hl, $6ff4                                    ; $73bd: $21 $f4 $6f
  ld a, b                                         ; $73c0: $78
  call Call_000_317a                              ; $73c1: $cd $7a $31
  ld a, [hl+]                                     ; $73c4: $2a
  ld h, [hl]                                      ; $73c5: $66
  ld l, a                                         ; $73c6: $6f
  call Call_000_3013                              ; $73c7: $cd $13 $30
  pop bc                                          ; $73ca: $c1
  push bc                                         ; $73cb: $c5
  ld a, $70                                       ; $73cc: $3e $70
  ld [$c159], a                                   ; $73ce: $ea $59 $c1
  ld a, $02                                       ; $73d1: $3e $02
  ld [$c1a2], a                                   ; $73d3: $ea $a2 $c1
  ld hl, $18fd                                    ; $73d6: $21 $fd $18
  ld a, c                                         ; $73d9: $79
  call Call_000_3173                              ; $73da: $cd $73 $31
  call Call_000_33f3                              ; $73dd: $cd $f3 $33

  db $01, $28, $66

  pop bc                                          ; $73e3: $c1
  ld hl, $0260                                    ; $73e4: $21 $60 $02
  ld a, b                                         ; $73e7: $78
  swap a                                          ; $73e8: $cb $37
  rst $08                                         ; $73ea: $cf
  ld a, c                                         ; $73eb: $79
  ld d, h                                         ; $73ec: $54
  ld e, l                                         ; $73ed: $5d
  push bc                                         ; $73ee: $c5
  call Call_006_741a                              ; $73ef: $cd $1a $74
  pop bc                                          ; $73f2: $c1
  ld hl, $6f84                                    ; $73f3: $21 $84 $6f
  ld a, b                                         ; $73f6: $78
  call Call_000_3182                              ; $73f7: $cd $82 $31
  call Call_006_7432                              ; $73fa: $cd $32 $74
  ld a, b                                         ; $73fd: $78
  or a                                            ; $73fe: $b7
  ret z                                           ; $73ff: $c8

  ld de, $6f9a                                    ; $7400: $11 $9a $6f
  jp Jump_000_1411                                ; $7403: $c3 $11 $14


Call_006_7406:
  ld a, b                                         ; $7406: $78
  ld hl, $6ff0                                    ; $7407: $21 $f0 $6f
  call ResolveIndexedPointer16                              ; $740a: $cd $8b $31
  ld a, b                                         ; $740d: $78
  add a                                           ; $740e: $87
  inc a                                           ; $740f: $3c
  ld b, a                                         ; $7410: $47
  ld c, $80                                       ; $7411: $0e $80
  ld e, $12                                       ; $7413: $1e $12
  ld d, $04                                       ; $7415: $16 $04
  jp Jump_000_14a1                                ; $7417: $c3 $a1 $14


Call_006_741a:
  ld hl, $ffb9                                    ; $741a: $21 $b9 $ff
  ld [hl], e                                      ; $741d: $73
  inc hl                                          ; $741e: $23
  ld [hl], d                                      ; $741f: $72
  push bc                                         ; $7420: $c5
  ld hl, $64c7                                    ; $7421: $21 $c7 $64
  call Call_000_33f3                              ; $7424: $cd $f3 $33

  db $00, $76, $2a

  call Call_000_33f3                              ; $742a: $cd $f3 $33

  db $01, $53, $41

  pop bc                                          ; $7430: $c1
  ret                                             ; $7431: $c9


Call_006_7432:
  push bc                                         ; $7432: $c5
  xor a                                           ; $7433: $af
  call Call_000_33f3                              ; $7434: $cd $f3 $33

  db $00, $d3, $26

  pop bc                                          ; $743a: $c1
  ret                                             ; $743b: $c9


Call_006_743c:
  or a                                            ; $743c: $b7
  jr nz, jr_006_7472                              ; $743d: $20 $33

  ld hl, $cc2c                                    ; $743f: $21 $2c $cc
  set 2, [hl]                                     ; $7442: $cb $d6
  xor a                                           ; $7444: $af
  ldh [$ffd3], a                                  ; $7445: $e0 $d3
  ld hl, $7012                                    ; $7447: $21 $12 $70
  call Call_000_3013                              ; $744a: $cd $13 $30
  ld a, $68                                       ; $744d: $3e $68
  ld [$c159], a                                   ; $744f: $ea $59 $c1
  ld a, $01                                       ; $7452: $3e $01
  ld [$c1a2], a                                   ; $7454: $ea $a2 $c1
  ld hl, $1f6f                                    ; $7457: $21 $6f $1f
  call Call_000_33f3                              ; $745a: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1f72                                    ; $7460: $21 $72 $1f
  call Call_000_33f3                              ; $7463: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1f75                                    ; $7469: $21 $75 $1f
  call Call_000_3427                              ; $746c: $cd $27 $34

  db $01, $28, $66

jr_006_7472:
  xor a                                           ; $7472: $af
  ld [$cc2c], a                                   ; $7473: $ea $2c $cc
  ld c, $80                                       ; $7476: $0e $80
  ld e, $0d                                       ; $7478: $1e $0d
  ld d, $03                                       ; $747a: $16 $03
  ld hl, $00a2                                    ; $747c: $21 $a2 $00
  jp Jump_000_149f                                ; $747f: $c3 $9f $14


Call_006_7482:
  ld a, [$c097]                                   ; $7482: $fa $97 $c0
  or a                                            ; $7485: $b7
  jr z, jr_006_749c                               ; $7486: $28 $14

  ld a, [$c098]                                   ; $7488: $fa $98 $c0
  or a                                            ; $748b: $b7
  jr z, jr_006_7492                               ; $748c: $28 $04

  ld a, $01                                       ; $748e: $3e $01
  jr jr_006_74a7                                  ; $7490: $18 $15

jr_006_7492:
  call $703d                                      ; $7492: $cd $3d $70
  xor a                                           ; $7495: $af
  call Call_006_74a7                              ; $7496: $cd $a7 $74
  jp Jump_006_7347                                ; $7499: $c3 $47 $73


jr_006_749c:
  ld a, [$c086]                                   ; $749c: $fa $86 $c0
  cp $ff                                          ; $749f: $fe $ff
  ld a, $00                                       ; $74a1: $3e $00
  jr z, jr_006_74a7                               ; $74a3: $28 $02

  ld a, $02                                       ; $74a5: $3e $02

Call_006_74a7:
jr_006_74a7:
  ld hl, $6fab                                    ; $74a7: $21 $ab $6f
  call Call_000_3182                              ; $74aa: $cd $82 $31
  jp Jump_000_1411                                ; $74ad: $c3 $11 $14


  db $0e, $12, $08, $0c, $0c

Call_006_74b5:
  call Call_006_74c9                              ; $74b5: $cd $c9 $74
  xor a                                           ; $74b8: $af
  ld b, a                                         ; $74b9: $47

jr_006_74ba:
  inc a                                           ; $74ba: $3c
  jr nz, jr_006_74ba                              ; $74bb: $20 $fd

  inc b                                           ; $74bd: $04
  jr nz, jr_006_74ba                              ; $74be: $20 $fa

  ld hl, $74b0                                    ; $74c0: $21 $b0 $74
  ld de, $c088                                    ; $74c3: $11 $88 $c0
  jp Jump_000_0266                                ; $74c6: $c3 $66 $02


Call_006_74c9:
  ld a, $c0                                       ; $74c9: $3e $c0
  call Call_006_74d5                              ; $74cb: $cd $d5 $74
  ld a, $01                                       ; $74ce: $3e $01
  ld [$c085], a                                   ; $74d0: $ea $85 $c0
  ret                                             ; $74d3: $c9


Call_006_74d4:
Jump_006_74d4:
  xor a                                           ; $74d4: $af

Call_006_74d5:
  ldh [rRP], a                                    ; $74d5: $e0 $56
  ld a, $ff                                       ; $74d7: $3e $ff
  ld [$c086], a                                   ; $74d9: $ea $86 $c0
  ret                                             ; $74dc: $c9


Call_006_74dd:
  dec a                                           ; $74dd: $3d
  ld h, a                                         ; $74de: $67
  ld d, $00                                       ; $74df: $16 $00
  ld e, d                                         ; $74e1: $5a
  ld a, $01                                       ; $74e2: $3e $01
  ld [$c085], a                                   ; $74e4: $ea $85 $c0
  ld b, $02                                       ; $74e7: $06 $02
  ld c, $56                                       ; $74e9: $0e $56
  ld a, h                                         ; $74eb: $7c
  or a                                            ; $74ec: $b7
  jr nz, jr_006_7553                              ; $74ed: $20 $64

  ld hl, $0000                                    ; $74ef: $21 $00 $00

jr_006_74f2:
  ld a, l                                         ; $74f2: $7d
  or a                                            ; $74f3: $b7
  jr nz, jr_006_7500                              ; $74f4: $20 $0a

  push bc                                         ; $74f6: $c5
  call Call_000_11e2                              ; $74f7: $cd $e2 $11
  pop bc                                          ; $74fa: $c1
  and $02                                         ; $74fb: $e6 $02
  jp nz, Jump_006_7761                            ; $74fd: $c2 $61 $77

jr_006_7500:
  dec hl                                          ; $7500: $2b
  ld a, h                                         ; $7501: $7c
  or l                                            ; $7502: $b5
  jp z, Jump_006_7761                             ; $7503: $ca $61 $77

  ldh a, [c]                                      ; $7506: $f2
  and b                                           ; $7507: $a0
  jr nz, jr_006_74f2                              ; $7508: $20 $e8

Call_006_750a:
  ld b, $1a                                       ; $750a: $06 $1a
  ld c, $56                                       ; $750c: $0e $56
  ld d, $00                                       ; $750e: $16 $00
  ld e, d                                         ; $7510: $5a
  call Call_006_777f                              ; $7511: $cd $7f $77
  ld a, d                                         ; $7514: $7a
  and a                                           ; $7515: $a7
  jp z, Jump_006_7765                             ; $7516: $ca $65 $77

  ld d, e                                         ; $7519: $53
  call Call_006_7777                              ; $751a: $cd $77 $77
  ld a, d                                         ; $751d: $7a
  and a                                           ; $751e: $a7
  jp z, Jump_006_7765                             ; $751f: $ca $65 $77

  call Call_006_777f                              ; $7522: $cd $7f $77
  ld a, d                                         ; $7525: $7a
  and a                                           ; $7526: $a7
  jp z, Jump_006_7765                             ; $7527: $ca $65 $77

  call Call_006_7777                              ; $752a: $cd $77 $77
  ld a, d                                         ; $752d: $7a
  and a                                           ; $752e: $a7
  jp z, Jump_006_7765                             ; $752f: $ca $65 $77

  cp $08                                          ; $7532: $fe $08
  jp c, Jump_006_7765                             ; $7534: $da $65 $77

  cp $2a                                          ; $7537: $fe $2a
  jp nc, Jump_006_7765                            ; $7539: $d2 $65 $77

  ld d, b                                         ; $753c: $50
  call Call_006_778e                              ; $753d: $cd $8e $77
  ld d, b                                         ; $7540: $50
  call Call_006_7787                              ; $7541: $cd $87 $77
  ld d, b                                         ; $7544: $50
  call Call_006_778e                              ; $7545: $cd $8e $77
  ld d, b                                         ; $7548: $50
  call Call_006_7787                              ; $7549: $cd $87 $77
  ld d, b                                         ; $754c: $50
  call Call_006_778e                              ; $754d: $cd $8e $77
  jp Jump_006_7769                                ; $7550: $c3 $69 $77


Call_006_7553:
jr_006_7553:
  ld a, $02                                       ; $7553: $3e $02
  ld [$c085], a                                   ; $7555: $ea $85 $c0
  ld b, $1a                                       ; $7558: $06 $1a
  ld c, $56                                       ; $755a: $0e $56
  ld d, b                                         ; $755c: $50
  ld e, $00                                       ; $755d: $1e $00
  call Call_006_778e                              ; $755f: $cd $8e $77
  ld d, b                                         ; $7562: $50
  call Call_006_7787                              ; $7563: $cd $87 $77
  ld d, b                                         ; $7566: $50
  call Call_006_778e                              ; $7567: $cd $8e $77
  ld d, b                                         ; $756a: $50
  call Call_006_7787                              ; $756b: $cd $87 $77
  ld d, b                                         ; $756e: $50
  call Call_006_778e                              ; $756f: $cd $8e $77
  ld d, e                                         ; $7572: $53
  call Call_006_777f                              ; $7573: $cd $7f $77
  ld a, d                                         ; $7576: $7a
  and a                                           ; $7577: $a7
  jp z, Jump_006_7765                             ; $7578: $ca $65 $77

  ld d, e                                         ; $757b: $53
  call Call_006_7777                              ; $757c: $cd $77 $77
  ld a, d                                         ; $757f: $7a
  and a                                           ; $7580: $a7
  jp z, Jump_006_7765                             ; $7581: $ca $65 $77

  ld d, e                                         ; $7584: $53
  call Call_006_777f                              ; $7585: $cd $7f $77
  ld a, d                                         ; $7588: $7a
  and a                                           ; $7589: $a7
  jp z, Jump_006_7765                             ; $758a: $ca $65 $77

  ld d, e                                         ; $758d: $53
  call Call_006_7777                              ; $758e: $cd $77 $77
  ld a, d                                         ; $7591: $7a
  and a                                           ; $7592: $a7
  jp z, Jump_006_7765                             ; $7593: $ca $65 $77

  ld d, $1a                                       ; $7596: $16 $1a
  call Call_006_778e                              ; $7598: $cd $8e $77
  jp Jump_006_7769                                ; $759b: $c3 $69 $77


Call_006_759e:
  ld b, $00                                       ; $759e: $06 $00

Call_006_75a0:
  xor a                                           ; $75a0: $af
  ld [$c08d], a                                   ; $75a1: $ea $8d $c0
  ld [$c08e], a                                   ; $75a4: $ea $8e $c0
  push hl                                         ; $75a7: $e5
  push bc                                         ; $75a8: $c5
  ld hl, $c08f                                    ; $75a9: $21 $8f $c0
  ld a, $5a                                       ; $75ac: $3e $5a
  ld [hl+], a                                     ; $75ae: $22
  ld [hl], b                                      ; $75af: $70
  dec hl                                          ; $75b0: $2b
  ld b, $02                                       ; $75b1: $06 $02
  ld d, $1e                                       ; $75b3: $16 $1e
  call Call_006_778e                              ; $75b5: $cd $8e $77
  call Call_006_7653                              ; $75b8: $cd $53 $76
  pop bc                                          ; $75bb: $c1
  pop hl                                          ; $75bc: $e1
  call Call_006_7771                              ; $75bd: $cd $71 $77
  call Call_006_7653                              ; $75c0: $cd $53 $76
  ld a, [$c08d]                                   ; $75c3: $fa $8d $c0
  ld [$c08f], a                                   ; $75c6: $ea $8f $c0
  ld a, [$c08e]                                   ; $75c9: $fa $8e $c0
  ld [$c090], a                                   ; $75cc: $ea $90 $c0
  ld hl, $c08f                                    ; $75cf: $21 $8f $c0
  ld b, $02                                       ; $75d2: $06 $02
  call Call_006_7653                              ; $75d4: $cd $53 $76
  ld hl, $c086                                    ; $75d7: $21 $86 $c0
  ld b, $01                                       ; $75da: $06 $01
  call Call_006_76cb                              ; $75dc: $cd $cb $76
  ld a, [$c08f]                                   ; $75df: $fa $8f $c0
  ld [$c08d], a                                   ; $75e2: $ea $8d $c0
  ld a, [$c090]                                   ; $75e5: $fa $90 $c0
  ld [$c08e], a                                   ; $75e8: $ea $8e $c0
  ld a, [$c086]                                   ; $75eb: $fa $86 $c0
  cp $00                                          ; $75ee: $fe $00
  ret                                             ; $75f0: $c9


Call_006_75f1:
  ld b, $00                                       ; $75f1: $06 $00

Call_006_75f3:
  xor a                                           ; $75f3: $af
  ld [$c08d], a                                   ; $75f4: $ea $8d $c0
  ld [$c08e], a                                   ; $75f7: $ea $8e $c0
  push hl                                         ; $75fa: $e5
  ld hl, $c08f                                    ; $75fb: $21 $8f $c0
  ld b, $02                                       ; $75fe: $06 $02
  call Call_006_76cb                              ; $7600: $cd $cb $76
  ld a, [$c090]                                   ; $7603: $fa $90 $c0
  ld [$c091], a                                   ; $7606: $ea $91 $c0
  ld b, a                                         ; $7609: $47
  pop hl                                          ; $760a: $e1
  ld a, [$c08f]                                   ; $760b: $fa $8f $c0
  cp $5a                                          ; $760e: $fe $5a
  jp nz, Jump_006_7753                            ; $7610: $c2 $53 $77

  call Call_006_76cb                              ; $7613: $cd $cb $76
  ld a, [$c08d]                                   ; $7616: $fa $8d $c0
  ld d, a                                         ; $7619: $57
  ld a, [$c08e]                                   ; $761a: $fa $8e $c0
  ld e, a                                         ; $761d: $5f
  push de                                         ; $761e: $d5
  ld hl, $c08f                                    ; $761f: $21 $8f $c0
  ld b, $02                                       ; $7622: $06 $02
  call Call_006_76cb                              ; $7624: $cd $cb $76
  pop de                                          ; $7627: $d1
  ld hl, $c08f                                    ; $7628: $21 $8f $c0
  ld a, [hl+]                                     ; $762b: $2a
  xor d                                           ; $762c: $aa
  ld b, a                                         ; $762d: $47
  ld a, [hl]                                      ; $762e: $7e
  xor e                                           ; $762f: $ab
  or b                                            ; $7630: $b0
  jr z, jr_006_763b                               ; $7631: $28 $08

  ld a, [$c086]                                   ; $7633: $fa $86 $c0
  or $01                                          ; $7636: $f6 $01
  ld [$c086], a                                   ; $7638: $ea $86 $c0

jr_006_763b:
  push de                                         ; $763b: $d5
  ld hl, $c086                                    ; $763c: $21 $86 $c0
  ld b, $01                                       ; $763f: $06 $01
  call Call_006_7653                              ; $7641: $cd $53 $76
  pop de                                          ; $7644: $d1
  ld a, d                                         ; $7645: $7a
  ld [$c08d], a                                   ; $7646: $ea $8d $c0
  ld a, e                                         ; $7649: $7b
  ld [$c08e], a                                   ; $764a: $ea $8e $c0
  ld a, [$c086]                                   ; $764d: $fa $86 $c0
  cp $00                                          ; $7650: $fe $00
  ret                                             ; $7652: $c9


Call_006_7653:
  ld c, $56                                       ; $7653: $0e $56
  ld d, $16                                       ; $7655: $16 $16
  call Call_006_7787                              ; $7657: $cd $87 $77
  ld d, $16                                       ; $765a: $16 $16
  call Call_006_778e                              ; $765c: $cd $8e $77
  ld a, b                                         ; $765f: $78
  cpl                                             ; $7660: $2f
  ld b, a                                         ; $7661: $47

jr_006_7662:
  inc b                                           ; $7662: $04
  jr z, jr_006_76b7                               ; $7663: $28 $52

  ld a, $08                                       ; $7665: $3e $08
  ld [$c092], a                                   ; $7667: $ea $92 $c0
  ld a, [hl+]                                     ; $766a: $2a
  ld e, a                                         ; $766b: $5f
  ld a, [$c08d]                                   ; $766c: $fa $8d $c0
  add e                                           ; $766f: $83
  ld [$c08d], a                                   ; $7670: $ea $8d $c0
  jr nc, jr_006_767e                              ; $7673: $30 $09

  ld a, [$c08e]                                   ; $7675: $fa $8e $c0
  inc a                                           ; $7678: $3c
  ld [$c08e], a                                   ; $7679: $ea $8e $c0
  jr jr_006_7681                                  ; $767c: $18 $03

jr_006_767e:
  call Call_006_7771                              ; $767e: $cd $71 $77

jr_006_7681:
  ld a, e                                         ; $7681: $7b
  rlca                                            ; $7682: $07
  ld e, a                                         ; $7683: $5f
  jr nc, jr_006_7696                              ; $7684: $30 $10

  ld a, [$c088]                                   ; $7686: $fa $88 $c0
  ld d, a                                         ; $7689: $57
  call Call_006_7787                              ; $768a: $cd $87 $77
  ld a, [$c089]                                   ; $768d: $fa $89 $c0
  ld d, a                                         ; $7690: $57
  call Call_006_778e                              ; $7691: $cd $8e $77
  jr jr_006_76a4                                  ; $7694: $18 $0e

jr_006_7696:
  ld a, [$c08a]                                   ; $7696: $fa $8a $c0
  ld d, a                                         ; $7699: $57
  call Call_006_7787                              ; $769a: $cd $87 $77
  ld a, [$c08b]                                   ; $769d: $fa $8b $c0
  ld d, a                                         ; $76a0: $57
  call Call_006_778e                              ; $76a1: $cd $8e $77

jr_006_76a4:
  ld a, [$c092]                                   ; $76a4: $fa $92 $c0
  dec a                                           ; $76a7: $3d
  ld [$c092], a                                   ; $76a8: $ea $92 $c0
  jr z, jr_006_76b5                               ; $76ab: $28 $08

  call Call_006_7772                              ; $76ad: $cd $72 $77
  call Call_006_7772                              ; $76b0: $cd $72 $77
  jr jr_006_7681                                  ; $76b3: $18 $cc

jr_006_76b5:
  jr jr_006_7662                                  ; $76b5: $18 $ab

jr_006_76b7:
  call Call_006_7771                              ; $76b7: $cd $71 $77
  call Call_006_7771                              ; $76ba: $cd $71 $77
  call Call_006_7772                              ; $76bd: $cd $72 $77
  ld d, $16                                       ; $76c0: $16 $16
  call Call_006_7787                              ; $76c2: $cd $87 $77
  ld d, $16                                       ; $76c5: $16 $16
  call Call_006_778e                              ; $76c7: $cd $8e $77
  ret                                             ; $76ca: $c9


Call_006_76cb:
  ld c, $56                                       ; $76cb: $0e $56
  ld d, $00                                       ; $76cd: $16 $00
  call Call_006_777f                              ; $76cf: $cd $7f $77
  ld a, d                                         ; $76d2: $7a
  or a                                            ; $76d3: $b7
  jp z, Jump_006_7765                             ; $76d4: $ca $65 $77

  ld d, $00                                       ; $76d7: $16 $00
  call Call_006_7777                              ; $76d9: $cd $77 $77
  ld a, d                                         ; $76dc: $7a
  or a                                            ; $76dd: $b7
  jp z, Jump_006_7765                             ; $76de: $ca $65 $77

  ld d, $00                                       ; $76e1: $16 $00
  call Call_006_777f                              ; $76e3: $cd $7f $77
  ld a, d                                         ; $76e6: $7a
  or a                                            ; $76e7: $b7
  jp z, Jump_006_7765                             ; $76e8: $ca $65 $77

  call Call_006_7772                              ; $76eb: $cd $72 $77
  call Call_006_7772                              ; $76ee: $cd $72 $77
  push af                                         ; $76f1: $f5
  pop af                                          ; $76f2: $f1
  ld a, b                                         ; $76f3: $78
  cpl                                             ; $76f4: $2f
  ld b, a                                         ; $76f5: $47

jr_006_76f6:
  inc b                                           ; $76f6: $04
  jr z, jr_006_7743                               ; $76f7: $28 $4a

  ld a, $08                                       ; $76f9: $3e $08
  ld [$c092], a                                   ; $76fb: $ea $92 $c0

jr_006_76fe:
  ld d, $00                                       ; $76fe: $16 $00
  call Call_006_7777                              ; $7700: $cd $77 $77
  call Call_006_777f                              ; $7703: $cd $7f $77
  ld a, [$c08c]                                   ; $7706: $fa $8c $c0
  cp d                                            ; $7709: $ba
  jr nc, jr_006_7712                              ; $770a: $30 $06

  ld a, e                                         ; $770c: $7b
  set 0, a                                        ; $770d: $cb $c7
  ld e, a                                         ; $770f: $5f
  jr jr_006_7716                                  ; $7710: $18 $04

jr_006_7712:
  ld a, e                                         ; $7712: $7b
  res 0, a                                        ; $7713: $cb $87
  ld e, a                                         ; $7715: $5f

jr_006_7716:
  ld a, [$c092]                                   ; $7716: $fa $92 $c0
  dec a                                           ; $7719: $3d
  ld [$c092], a                                   ; $771a: $ea $92 $c0
  jr z, jr_006_772a                               ; $771d: $28 $0b

  ld a, e                                         ; $771f: $7b
  rlca                                            ; $7720: $07
  ld e, a                                         ; $7721: $5f
  call Call_006_7772                              ; $7722: $cd $72 $77
  call Call_006_7772                              ; $7725: $cd $72 $77
  jr jr_006_76fe                                  ; $7728: $18 $d4

jr_006_772a:
  ld a, e                                         ; $772a: $7b
  ld [hl+], a                                     ; $772b: $22
  ld a, [$c08d]                                   ; $772c: $fa $8d $c0
  add e                                           ; $772f: $83
  ld [$c08d], a                                   ; $7730: $ea $8d $c0
  jr nc, jr_006_773e                              ; $7733: $30 $09

  ld a, [$c08e]                                   ; $7735: $fa $8e $c0
  inc a                                           ; $7738: $3c
  ld [$c08e], a                                   ; $7739: $ea $8e $c0
  jr jr_006_7741                                  ; $773c: $18 $03

jr_006_773e:
  call Call_006_7771                              ; $773e: $cd $71 $77

jr_006_7741:
  jr jr_006_76f6                                  ; $7741: $18 $b3

jr_006_7743:
  ld d, $00                                       ; $7743: $16 $00
  call Call_006_7777                              ; $7745: $cd $77 $77
  ld a, d                                         ; $7748: $7a
  and a                                           ; $7749: $a7
  jp z, Jump_006_7765                             ; $774a: $ca $65 $77

  ld d, $11                                       ; $774d: $16 $11
  call Call_006_778e                              ; $774f: $cd $8e $77
  ret                                             ; $7752: $c9


Jump_006_7753:
  ld a, [$c086]                                   ; $7753: $fa $86 $c0
  or $04                                          ; $7756: $f6 $04
  jr jr_006_776b                                  ; $7758: $18 $11

  ld a, [$c086]                                   ; $775a: $fa $86 $c0
  or $01                                          ; $775d: $f6 $01
  jr jr_006_776b                                  ; $775f: $18 $0a

Jump_006_7761:
  ld a, $03                                       ; $7761: $3e $03
  jr jr_006_776b                                  ; $7763: $18 $06

Jump_006_7765:
  ld a, $02                                       ; $7765: $3e $02
  jr jr_006_776b                                  ; $7767: $18 $02

Jump_006_7769:
  ld a, $00                                       ; $7769: $3e $00

jr_006_776b:
  ld [$c086], a                                   ; $776b: $ea $86 $c0
  cp $00                                          ; $776e: $fe $00
  ret                                             ; $7770: $c9


Call_006_7771:
  ret                                             ; $7771: $c9


Call_006_7772:
  jr z, jr_006_7774                               ; $7772: $28 $00

jr_006_7774:
  jr nz, jr_006_7776                              ; $7774: $20 $00

jr_006_7776:
  ret                                             ; $7776: $c9


Call_006_7777:
jr_006_7777:
  inc d                                           ; $7777: $14
  ret z                                           ; $7778: $c8

  ldh a, [c]                                      ; $7779: $f2
  bit 1, a                                        ; $777a: $cb $4f
  jr z, jr_006_7777                               ; $777c: $28 $f9

  ret                                             ; $777e: $c9


Call_006_777f:
jr_006_777f:
  inc d                                           ; $777f: $14
  ret z                                           ; $7780: $c8

  ldh a, [c]                                      ; $7781: $f2
  bit 1, a                                        ; $7782: $cb $4f
  jr nz, jr_006_777f                              ; $7784: $20 $f9

  ret                                             ; $7786: $c9


Call_006_7787:
  ld a, $c1                                       ; $7787: $3e $c1
  ldh [c], a                                      ; $7789: $e2

jr_006_778a:
  dec d                                           ; $778a: $15
  jr nz, jr_006_778a                              ; $778b: $20 $fd

  ret                                             ; $778d: $c9


Call_006_778e:
  ld a, $c0                                       ; $778e: $3e $c0
  ldh [c], a                                      ; $7790: $e2

jr_006_7791:
  dec d                                           ; $7791: $15
  jr nz, jr_006_7791                              ; $7792: $20 $fd

  ret                                             ; $7794: $c9


  db $12, $04, $54, $18, $e7, $07, $31, $55, $2a, $a2, $77, $12, $0c, $e7, $07, $c6
  db $6b, $2a, $b0, $77, $e7, $07, $ce, $6b, $60, $00, $00, $e7, $03, $28, $6c, $e7
  db $07, $1e, $60, $e7, $1e, $7a, $60, $e7, $07, $2f, $5c, $e7, $07, $ed, $5b, $00
  db $01, $e7, $07, $c5, $61, $e7, $07, $e6, $5f, $27, $c4, $77, $63, $d2, $f7, $77
  db $fe, $77, $10, $78, $2b, $78, $db, $78, $ef, $78, $9b, $78, $b0, $78, $d0, $78
  db $01, $79, $31, $79, $cb, $78, $52, $79, $88, $79, $8f, $79, $c4, $79

  push hl                                         ; $77f3: $e5
  ld a, c                                         ; $77f4: $79
  ld b, $7a                                       ; $77f5: $06 $7a

  db $e7, $07, $2f, $5c, $18, $c4, $77, $e7, $07, $d4, $5c, $e7, $1e, $7a, $5f, $15
  db $23, $ea, $e7, $07, $de, $5e, $18, $c4, $77, $e7, $07, $cd, $5b, $e7, $07, $17
  db $5b, $ea, $e7, $07, $2d, $5f, $27, $24, $78, $e7, $07, $d8, $5b, $e7, $07, $69
  db $5b, $18, $c4, $77, $e7, $07, $9f, $55, $27, $4b, $78, $e7, $07, $86, $5f, $15
  db $14, $36, $00, $fc, $cf, $20, $00, $14, $60, $e7, $07, $43, $56, $e7, $07, $d8
  db $5b, $57, $00, $00, $e7, $07, $2a, $6b, $27, $82, $78, $e7, $07, $a0, $5f, $e7
  db $07, $d8, $5b, $15, $14, $e7, $07, $fa, $5a, $e7, $03, $7e, $4a, $2a, $ef, $78
  db $e7, $07, $43, $56, $24, $f3, $7d, $27, $76, $78, $18, $c4, $77

  nop                                             ; $7874: $00
  nop                                             ; $7875: $00
  inc h                                           ; $7876: $24
  xor $7d                                         ; $7877: $ee $7d
  rst $20                                         ; $7879: $e7
  dec b                                           ; $787a: $05
  cpl                                             ; $787b: $2f
  ld c, b                                         ; $787c: $48
  jr @-$3a                                        ; $787d: $18 $c4

  ld [hl], a                                      ; $787f: $77
  nop                                             ; $7880: $00
  nop                                             ; $7881: $00
  rst $20                                         ; $7882: $e7
  rlca                                            ; $7883: $07
  and b                                           ; $7884: $a0
  ld e, a                                         ; $7885: $5f
  dec d                                           ; $7886: $15
  inc d                                           ; $7887: $14
  ld [hl], $00                                    ; $7888: $36 $00
  inc b                                           ; $788a: $04
  rst $08                                         ; $788b: $cf
  jr nz, jr_006_788e                              ; $788c: $20 $00

jr_006_788e:
  inc d                                           ; $788e: $14
  ld h, b                                         ; $788f: $60
  rst $20                                         ; $7890: $e7
  rlca                                            ; $7891: $07
  ld b, e                                         ; $7892: $43
  ld d, [hl]                                      ; $7893: $56
  rst $20                                         ; $7894: $e7
  rlca                                            ; $7895: $07
  ret c                                           ; $7896: $d8

  ld e, e                                         ; $7897: $5b
  ld d, a                                         ; $7898: $57
  nop                                             ; $7899: $00
  nop                                             ; $789a: $00

  db $36, $00, $04, $cf, $20, $00, $0a, $03, $00, $00, $00, $28, $e7, $07, $28, $5d
  db $00, $00

  jr @-$3a                                        ; $78ad: $18 $c4

  ld [hl], a                                      ; $78af: $77

  db $e7, $07, $a3, $5e, $00, $01, $e7, $07, $64, $56, $2a, $b4, $78, $e7, $07, $6c
  db $56, $2a, $b4, $78, $e7, $07, $ae, $5e, $18, $c4, $77, $00, $01, $18, $c4, $77
  db $e7, $07, $a3, $5e, $e7, $07, $43, $56, $18, $c4, $77, $e7, $07, $03, $6b, $27
  db $ed, $78, $cc, $46, $e7, $07, $00, $5b, $ea, $e7, $07, $10, $5d, $00, $00, $cc
  db $40, $e7, $07, $fa, $5a, $00, $28, $e7, $07, $e2, $5b, $e7, $07, $49, $5d, $00
  db $00, $24, $ca, $7b, $27, $21, $79, $e7, $09, $a4, $7e, $e7, $07, $3e, $56, $e7
  db $07, $01, $55, $48, $00, $4b, $00, $39, $7e, $e7, $07, $1a, $5c, $ea, $18, $c4
  db $77

  rst $20                                         ; $7921: $e7
  rlca                                            ; $7922: $07
  ld a, [de]                                      ; $7923: $1a
  ld e, h                                         ; $7924: $5c
  ld [$07e7], a                                   ; $7925: $ea $e7 $07
  xor [hl]                                        ; $7928: $ae
  ld e, [hl]                                      ; $7929: $5e
  rst $20                                         ; $792a: $e7
  rlca                                            ; $792b: $07
  and e                                           ; $792c: $a3
  ld e, [hl]                                      ; $792d: $5e
  jr @-$3a                                        ; $792e: $18 $c4

  ld [hl], a                                      ; $7930: $77

  db $00, $0a, $00, $01, $e7, $07, $64, $56, $2a, $33, $79, $e7, $07, $6c, $56, $2a
  db $33, $79, $e7, $09, $c4, $7e, $e7, $07, $ae, $5e, $e7, $07, $a3, $5e, $18, $c4
  db $77, $e7, $09, $a4, $7e, $24, $ee, $7d, $e7, $07, $14, $5c, $00, $0f, $15, $26
  db $00, $28, $e7, $05, $b7, $45, $e7, $05, $7b, $44, $0c, $1f, $7a, $e7, $09, $c4
  db $7e, $e7, $07, $2d, $5f, $27, $80, $79, $e7, $07, $a3, $5e, $18, $c4, $77

  nop                                             ; $7980: $00
  inc d                                           ; $7981: $14
  inc h                                           ; $7982: $24
  add sp, $7d                                     ; $7983: $e8 $7d
  jr @-$3a                                        ; $7985: $18 $c4

  ld [hl], a                                      ; $7987: $77

  db $e7, $07, $af, $5c, $18, $c4, $77, $e7, $09, $a4, $7e, $24, $61, $7a, $24, $a9
  db $7b, $24, $b5, $7a, $27, $a5, $79, $e7, $07, $14, $5c, $00, $18, $48, $f2, $4b
  db $f2, $f6, $01, $39, $7e, $00, $06, $24, $61, $7a, $15, $a3, $ea, $e7, $09, $c4
  db $7e, $e7, $07, $ae, $5e, $e7, $07, $a3, $5e, $18, $c4, $77, $24, $bd, $7a, $15
  db $5e, $e7, $07, $14, $5c, $ea, $48, $00, $4b, $00, $f6, $01, $39, $7e, $24, $bd
  db $7a, $ea, $e7, $07, $ae, $5e, $e7, $07, $a3, $5e, $18, $c4, $77

  rst $20                                         ; $79e5: $e7
  rlca                                            ; $79e6: $07
  inc d                                           ; $79e7: $14
  ld e, h                                         ; $79e8: $5c
  nop                                             ; $79e9: $00
  ld a, [bc]                                      ; $79ea: $0a
  dec d                                           ; $79eb: $15
  sbc l                                           ; $79ec: $9d
  nop                                             ; $79ed: $00
  inc h                                           ; $79ee: $24
  ld c, b                                         ; $79ef: $48
  ld [$f04b], sp                                  ; $79f0: $08 $4b $f0
  ld c, [hl]                                      ; $79f3: $4e
  dec e                                           ; $79f4: $1d
  or $01                                          ; $79f5: $f6 $01
  add hl, sp                                      ; $79f7: $39
  ld a, [hl]                                      ; $79f8: $7e
  nop                                             ; $79f9: $00
  inc hl                                          ; $79fa: $23
  rst $20                                         ; $79fb: $e7
  rlca                                            ; $79fc: $07
  xor [hl]                                        ; $79fd: $ae
  ld e, [hl]                                      ; $79fe: $5e
  rst $20                                         ; $79ff: $e7
  rlca                                            ; $7a00: $07
  and e                                           ; $7a01: $a3
  ld e, [hl]                                      ; $7a02: $5e
  jr @-$3a                                        ; $7a03: $18 $c4

  ld [hl], a                                      ; $7a05: $77
  rst $20                                         ; $7a06: $e7
  rlca                                            ; $7a07: $07
  db $d4, $5c, $00                                ; $7a08: $d4 $5c $00
  inc c                                           ; $7a0b: $0c
  dec d                                           ; $7a0c: $15
  ld a, l                                         ; $7a0d: $7d
  nop                                             ; $7a0e: $00
  add hl, bc                                      ; $7a0f: $09
  rst $20                                         ; $7a10: $e7
  rlca                                            ; $7a11: $07
  jr nc, jr_006_7a7b                              ; $7a12: $30 $67

  rst $20                                         ; $7a14: $e7
  rlca                                            ; $7a15: $07
  xor [hl]                                        ; $7a16: $ae
  ld e, [hl]                                      ; $7a17: $5e
  rst $20                                         ; $7a18: $e7
  rlca                                            ; $7a19: $07
  and e                                           ; $7a1a: $a3
  ld e, [hl]                                      ; $7a1b: $5e
  jr @-$3a                                        ; $7a1c: $18 $c4

  ld [hl], a                                      ; $7a1e: $77

  db $e7, $05, $c1, $45, $2a, $56, $7a, $e7, $05, $f8, $45, $e7, $07, $c6, $55, $e7
  db $07, $01, $6e, $39, $7f, $e7, $07, $6d, $6e, $00, $01, $e7, $07, $2d, $5f, $27
  db $55, $7a, $e7, $07, $72, $6e, $27, $38, $7a, $e7, $07, $6c, $56, $2a, $38, $7a
  db $00, $01, $e7, $05, $2f, $48, $0f

  nop                                             ; $7a56: $00
  ld bc, $05e7                                    ; $7a57: $01 $e7 $05
  ld a, [$e747]                                   ; $7a5a: $fa $47 $e7
  dec b                                           ; $7a5d: $05
  cpl                                             ; $7a5e: $2f
  ld c, b                                         ; $7a5f: $48
  rrca                                            ; $7a60: $0f

  ld hl, $cbcb                                    ; $7a61: $21 $cb $cb
  set 0, [hl]                                     ; $7a64: $cb $c6
  ld a, [$cbcc]                                   ; $7a66: $fa $cc $cb
  rst $00                                         ; $7a69: $c7

  db $a8, $7a, $81, $7a, $8e, $7a

  sbc e                                           ; $7a70: $9b
  ld a, d                                         ; $7a71: $7a
  ld [hl], h                                      ; $7a72: $74
  ld a, d                                         ; $7a73: $7a
  ld a, $26                                       ; $7a74: $3e $26
  ldh [$ff9a], a                                  ; $7a76: $e0 $9a
  ld [$cc29], a                                   ; $7a78: $ea $29 $cc

jr_006_7a7b:
  ld a, $b4                                       ; $7a7b: $3e $b4
  ld [$cdac], a                                   ; $7a7d: $ea $ac $cd
  ret                                             ; $7a80: $c9


  ld a, $23                                       ; $7a81: $3e $23
  ldh [$ff9a], a                                  ; $7a83: $e0 $9a
  ld [$cc29], a                                   ; $7a85: $ea $29 $cc
  ld a, $3c                                       ; $7a88: $3e $3c
  ld [$cdac], a                                   ; $7a8a: $ea $ac $cd
  ret                                             ; $7a8d: $c9


  ld a, $24                                       ; $7a8e: $3e $24
  ldh [$ff9a], a                                  ; $7a90: $e0 $9a
  ld [$cc29], a                                   ; $7a92: $ea $29 $cc
  ld a, $3c                                       ; $7a95: $3e $3c
  ld [$cdac], a                                   ; $7a97: $ea $ac $cd
  ret                                             ; $7a9a: $c9


  ld a, $25                                       ; $7a9b: $3e $25
  ldh [$ff9a], a                                  ; $7a9d: $e0 $9a
  ld [$cc29], a                                   ; $7a9f: $ea $29 $cc
  ld a, $96                                       ; $7aa2: $3e $96
  ld [$cdac], a                                   ; $7aa4: $ea $ac $cd
  ret                                             ; $7aa7: $c9


  ld a, $22                                       ; $7aa8: $3e $22
  ldh [$ff9a], a                                  ; $7aaa: $e0 $9a
  ld [$cc29], a                                   ; $7aac: $ea $29 $cc
  ld a, $64                                       ; $7aaf: $3e $64
  ld [$cdac], a                                   ; $7ab1: $ea $ac $cd
  ret                                             ; $7ab4: $c9


  ld a, [$cc29]                                   ; $7ab5: $fa $29 $cc
  cp $25                                          ; $7ab8: $fe $25
  jp StoreCPUFlags                                ; $7aba: $c3 $39 $00


  ld hl, $cbcb                                    ; $7abd: $21 $cb $cb
  set 1, [hl]                                     ; $7ac0: $cb $ce
  ld a, [$cbcc]                                   ; $7ac2: $fa $cc $cb
  rst $00                                         ; $7ac5: $c7

  db $db, $7a, $e8, $7a

  push af                                         ; $7aca: $f5
  ld a, d                                         ; $7acb: $7a
  adc $7a                                         ; $7acc: $ce $7a
  ld a, $21                                       ; $7ace: $3e $21
  ldh [$ff9a], a                                  ; $7ad0: $e0 $9a
  ld [$cc29], a                                   ; $7ad2: $ea $29 $cc
  ld a, $5a                                       ; $7ad5: $3e $5a
  ld [$cdac], a                                   ; $7ad7: $ea $ac $cd
  ret                                             ; $7ada: $c9


  ld a, $1e                                       ; $7adb: $3e $1e
  ldh [$ff9a], a                                  ; $7add: $e0 $9a
  ld [$cc29], a                                   ; $7adf: $ea $29 $cc
  ld a, $1e                                       ; $7ae2: $3e $1e
  ld [$cdac], a                                   ; $7ae4: $ea $ac $cd
  ret                                             ; $7ae7: $c9


  ld a, $1f                                       ; $7ae8: $3e $1f
  ldh [$ff9a], a                                  ; $7aea: $e0 $9a
  ld [$cc29], a                                   ; $7aec: $ea $29 $cc
  ld a, $6e                                       ; $7aef: $3e $6e
  ld [$cdac], a                                   ; $7af1: $ea $ac $cd
  ret                                             ; $7af4: $c9


  ld a, $20                                       ; $7af5: $3e $20
  ldh [$ff9a], a                                  ; $7af7: $e0 $9a
  ld [$cc29], a                                   ; $7af9: $ea $29 $cc
  ld a, $6e                                       ; $7afc: $3e $6e
  ld [$cdac], a                                   ; $7afe: $ea $ac $cd
  ret                                             ; $7b01: $c9


  ldh a, [rSVBK]                                  ; $7b02: $f0 $70
  push af                                         ; $7b04: $f5
  ld a, $05                                       ; $7b05: $3e $05
  ldh [rSVBK], a                                  ; $7b07: $e0 $70
  ld a, [$cc2a]                                   ; $7b09: $fa $2a $cc
  dec a                                           ; $7b0c: $3d
  call Call_000_33f3                              ; $7b0d: $cd $f3 $33

  db $03, $76, $49

  ld de, $000d                                    ; $7b13: $11 $0d $00
  add hl, de                                      ; $7b16: $19
  ld a, [hl]                                      ; $7b17: $7e
  sla [hl]                                        ; $7b18: $cb $26
  inc hl                                          ; $7b1a: $23
  sla [hl]                                        ; $7b1b: $cb $26
  inc hl                                          ; $7b1d: $23
  sla [hl]                                        ; $7b1e: $cb $26
  inc hl                                          ; $7b20: $23
  sla [hl]                                        ; $7b21: $cb $26
  pop af                                          ; $7b23: $f1
  ldh [rSVBK], a                                  ; $7b24: $e0 $70
  ret                                             ; $7b26: $c9


  ldh a, [rSVBK]                                  ; $7b27: $f0 $70
  push af                                         ; $7b29: $f5
  ld a, $05                                       ; $7b2a: $3e $05
  ldh [rSVBK], a                                  ; $7b2c: $e0 $70
  ld a, [$cc2a]                                   ; $7b2e: $fa $2a $cc
  dec a                                           ; $7b31: $3d
  call Call_000_33f3                              ; $7b32: $cd $f3 $33
  inc bc                                          ; $7b35: $03
  halt                                            ; $7b36: $76
  ld c, c                                         ; $7b37: $49
  ld de, $000b                                    ; $7b38: $11 $0b $00
  add hl, de                                      ; $7b3b: $19
  sla [hl]                                        ; $7b3c: $cb $26
  inc hl                                          ; $7b3e: $23
  sla [hl]                                        ; $7b3f: $cb $26
  pop af                                          ; $7b41: $f1
  ldh [rSVBK], a                                  ; $7b42: $e0 $70
  ret                                             ; $7b44: $c9


  ld a, [$cc2a]                                   ; $7b45: $fa $2a $cc
  dec a                                           ; $7b48: $3d
  ld e, a                                         ; $7b49: $5f
  ld a, $7b                                       ; $7b4a: $3e $7b
  call Call_000_0a46                              ; $7b4c: $cd $46 $0a
  ld de, $002d                                    ; $7b4f: $11 $2d $00
  add hl, de                                      ; $7b52: $19
  set 4, [hl]                                     ; $7b53: $cb $e6
  res 3, [hl]                                     ; $7b55: $cb $9e
  ret                                             ; $7b57: $c9


  ld a, [$cc2a]                                   ; $7b58: $fa $2a $cc
  dec a                                           ; $7b5b: $3d
  ld e, a                                         ; $7b5c: $5f
  ld a, $7b                                       ; $7b5d: $3e $7b
  call Call_000_0a46                              ; $7b5f: $cd $46 $0a
  ld de, $002d                                    ; $7b62: $11 $2d $00
  add hl, de                                      ; $7b65: $19
  res 4, [hl]                                     ; $7b66: $cb $a6
  res 3, [hl]                                     ; $7b68: $cb $9e
  ret                                             ; $7b6a: $c9


  ld a, [$cc2a]                                   ; $7b6b: $fa $2a $cc
  dec a                                           ; $7b6e: $3d
  ld e, a                                         ; $7b6f: $5f
  ld a, $7b                                       ; $7b70: $3e $7b
  call Call_000_0a46                              ; $7b72: $cd $46 $0a
  ld de, $002d                                    ; $7b75: $11 $2d $00
  add hl, de                                      ; $7b78: $19
  res 4, [hl]                                     ; $7b79: $cb $a6
  set 3, [hl]                                     ; $7b7b: $cb $de
  ret                                             ; $7b7d: $c9


  ldh a, [rSVBK]                                  ; $7b7e: $f0 $70
  push af                                         ; $7b80: $f5
  ld a, $05                                       ; $7b81: $3e $05
  ldh [rSVBK], a                                  ; $7b83: $e0 $70
  ld a, [$cc2a]                                   ; $7b85: $fa $2a $cc
  dec a                                           ; $7b88: $3d
  call Call_000_33f3                              ; $7b89: $cd $f3 $33

  db $03, $76, $49

  ld de, $000b                                    ; $7b8f: $11 $0b $00
  add hl, de                                      ; $7b92: $19
  sra [hl]                                        ; $7b93: $cb $2e
  sra [hl]                                        ; $7b95: $cb $2e
  inc hl                                          ; $7b97: $23
  sra [hl]                                        ; $7b98: $cb $2e
  sra [hl]                                        ; $7b9a: $cb $2e
  pop af                                          ; $7b9c: $f1
  ldh [rSVBK], a                                  ; $7b9d: $e0 $70
  ret                                             ; $7b9f: $c9


  db $07, $d2, $10, $01, $a0, $7b, $3a, $01, $48, $df, $21, $a2, $7b, $cd, $13, $30

  ld a, $7c                                       ; $7bb0: $3e $7c
  ld [$c159], a                                   ; $7bb2: $ea $59 $c1
  ld a, $03                                       ; $7bb5: $3e $03
  ld [$c1a2], a                                   ; $7bb7: $ea $a2 $c1
  ld a, [$cc29]                                   ; $7bba: $fa $29 $cc
  sub $1e                                         ; $7bbd: $d6 $1e
  ld hl, $1fa8                                    ; $7bbf: $21 $a8 $1f
  call Call_000_33f3                              ; $7bc2: $cd $f3 $33

  db $01, $75, $66

  rst $20                                         ; $7bc8: $e7
  ret                                             ; $7bc9: $c9


  ldh a, [rSVBK]                                  ; $7bca: $f0 $70
  push af                                         ; $7bcc: $f5
  ld a, $05                                       ; $7bcd: $3e $05
  ldh [rSVBK], a                                  ; $7bcf: $e0 $70
  call Call_000_33f3                              ; $7bd1: $cd $f3 $33

  db $03, $73, $49

  ld a, [hl]                                      ; $7bd7: $7e
  ldh [$ffbd], a                                  ; $7bd8: $e0 $bd
  pop af                                          ; $7bda: $f1
  ldh [rSVBK], a                                  ; $7bdb: $e0 $70
  ldh a, [$ffbd]                                  ; $7bdd: $f0 $bd
  cp $05                                          ; $7bdf: $fe $05
  jp StoreCPUFlags                                ; $7be1: $c3 $39 $00


  ldh a, [rSVBK]                                  ; $7be4: $f0 $70
  push af                                         ; $7be6: $f5
  ld a, $05                                       ; $7be7: $3e $05
  ldh [rSVBK], a                                  ; $7be9: $e0 $70
  ld a, [$cc2a]                                   ; $7beb: $fa $2a $cc
  dec a                                           ; $7bee: $3d
  call Call_000_33f3                              ; $7bef: $cd $f3 $33

  db $03, $76, $49

  ld a, [hl]                                      ; $7bf5: $7e
  sub $07                                         ; $7bf6: $d6 $07
  ld hl, $ce4b                                    ; $7bf8: $21 $4b $ce
  push af                                         ; $7bfb: $f5
  call Call_000_32c0                              ; $7bfc: $cd $c0 $32
  pop af                                          ; $7bff: $f1
  push bc                                         ; $7c00: $c5
  add $07                                         ; $7c01: $c6 $07
  call Call_000_33f3                              ; $7c03: $cd $f3 $33

  db $04, $4c, $49

  ld c, a                                         ; $7c09: $4f
  ld hl, $ceb2                                    ; $7c0a: $21 $b2 $ce
  call Call_000_33f3                              ; $7c0d: $cd $f3 $33

  db $04, $19, $47

  pop bc                                          ; $7c13: $c1
  pop af                                          ; $7c14: $f1
  ldh [rSVBK], a                                  ; $7c15: $e0 $70
  ret                                             ; $7c17: $c9


  db $40, $d0, $c2, $d0, $40, $d1, $00, $02, $02, $06, $00, $0a

  push bc                                         ; $7c24: $c5
  ld b, $03                                       ; $7c25: $06 $03

jr_006_7c27:
  ld a, $06                                       ; $7c27: $3e $06
  sub b                                           ; $7c29: $90
  ld e, a                                         ; $7c2a: $5f
  ld a, $b0                                       ; $7c2b: $3e $b0
  call Call_000_0a46                              ; $7c2d: $cd $46 $0a
  jr nz, jr_006_7c39                              ; $7c30: $20 $07

  ld de, $0003                                    ; $7c32: $11 $03 $00
  add hl, de                                      ; $7c35: $19
  xor a                                           ; $7c36: $af
  ld [hl+], a                                     ; $7c37: $22
  ld [hl+], a                                     ; $7c38: $22

jr_006_7c39:
  dec b                                           ; $7c39: $05
  jr nz, jr_006_7c27                              ; $7c3a: $20 $eb

  pop bc                                          ; $7c3c: $c1
  ret                                             ; $7c3d: $c9


  call Call_000_33f3                              ; $7c3e: $cd $f3 $33

  db $07, $0f, $5f

  ld de, $0001                                    ; $7c44: $11 $01 $00
  add hl, de                                      ; $7c47: $19
  ldh a, [rSVBK]                                  ; $7c48: $f0 $70
  push af                                         ; $7c4a: $f5
  ld a, $05                                       ; $7c4b: $3e $05
  ldh [rSVBK], a                                  ; $7c4d: $e0 $70
  ld a, [hl+]                                     ; $7c4f: $2a
  ld d, [hl]                                      ; $7c50: $56
  ld e, a                                         ; $7c51: $5f
  inc hl                                          ; $7c52: $23
  inc hl                                          ; $7c53: $23
  inc hl                                          ; $7c54: $23
  ld a, [hl+]                                     ; $7c55: $2a
  ld h, [hl]                                      ; $7c56: $66
  ld l, a                                         ; $7c57: $6f
  pop af                                          ; $7c58: $f1
  ldh [rSVBK], a                                  ; $7c59: $e0 $70
  ld a, h                                         ; $7c5b: $7c
  or l                                            ; $7c5c: $b5
  jr z, jr_006_7cb3                               ; $7c5d: $28 $54

  push de                                         ; $7c5f: $d5
  push hl                                         ; $7c60: $e5
  ld hl, $0003                                    ; $7c61: $21 $03 $00
  add hl, bc                                      ; $7c64: $09
  ld a, [hl+]                                     ; $7c65: $2a
  ld d, [hl]                                      ; $7c66: $56
  ld e, a                                         ; $7c67: $5f
  pop hl                                          ; $7c68: $e1
  rst $10                                         ; $7c69: $d7
  pop de                                          ; $7c6a: $d1
  ret z                                           ; $7c6b: $c8

  push de                                         ; $7c6c: $d5
  ld e, l                                         ; $7c6d: $5d
  ld d, h                                         ; $7c6e: $54
  call Call_000_2fe3                              ; $7c6f: $cd $e3 $2f
  ld de, $000b                                    ; $7c72: $11 $0b $00
  call $00d3                                      ; $7c75: $cd $d3 $00
  pop de                                          ; $7c78: $d1
  call Call_000_322f                              ; $7c79: $cd $2f $32
  ld a, $0b                                       ; $7c7c: $3e $0b
  sub l                                           ; $7c7e: $95
  push bc                                         ; $7c7f: $c5
  ldh [$fff5], a                                  ; $7c80: $e0 $f5
  xor a                                           ; $7c82: $af
  ldh [$fff6], a                                  ; $7c83: $e0 $f6
  inc a                                           ; $7c85: $3c
  ldh [$fff7], a                                  ; $7c86: $e0 $f7
  inc a                                           ; $7c88: $3c
  ldh [$fff8], a                                  ; $7c89: $e0 $f8
  ld hl, $0001                                    ; $7c8b: $21 $01 $00
  add hl, bc                                      ; $7c8e: $09
  ld a, [hl]                                      ; $7c8f: $7e
  sub $03                                         ; $7c90: $d6 $03
  ld hl, $7c18                                    ; $7c92: $21 $18 $7c
  call Call_000_3182                              ; $7c95: $cd $82 $31
  ldh a, [rSVBK]                                  ; $7c98: $f0 $70
  push af                                         ; $7c9a: $f5
  ld a, $01                                       ; $7c9b: $3e $01
  ldh [rSVBK], a                                  ; $7c9d: $e0 $70
  ld a, $6a                                       ; $7c9f: $3e $6a
  ld bc, $0080                                    ; $7ca1: $01 $80 $00
  ld hl, $56d8                                    ; $7ca4: $21 $d8 $56
  call Call_000_33f3                              ; $7ca7: $cd $f3 $33

  db $00, $84, $33

  pop af                                          ; $7cad: $f1
  ldh [rSVBK], a                                  ; $7cae: $e0 $70
  pop bc                                          ; $7cb0: $c1
  rst $20                                         ; $7cb1: $e7
  ret                                             ; $7cb2: $c9


jr_006_7cb3:
  push bc                                         ; $7cb3: $c5
  ld hl, $0001                                    ; $7cb4: $21 $01 $00
  add hl, bc                                      ; $7cb7: $09
  ld a, [hl]                                      ; $7cb8: $7e
  sub $03                                         ; $7cb9: $d6 $03
  push af                                         ; $7cbb: $f5
  ld hl, $7c1e                                    ; $7cbc: $21 $1e $7c
  call Call_000_317a                              ; $7cbf: $cd $7a $31
  ld a, [hl+]                                     ; $7cc2: $2a
  ldh [$fff5], a                                  ; $7cc3: $e0 $f5
  ld a, [hl+]                                     ; $7cc5: $2a
  ldh [$fff6], a                                  ; $7cc6: $e0 $f6
  ld a, $01                                       ; $7cc8: $3e $01
  ldh [$fff7], a                                  ; $7cca: $e0 $f7
  inc a                                           ; $7ccc: $3c
  ldh [$fff8], a                                  ; $7ccd: $e0 $f8
  pop af                                          ; $7ccf: $f1
  ld hl, $7c18                                    ; $7cd0: $21 $18 $7c
  call Call_000_3182                              ; $7cd3: $cd $82 $31
  ldh a, [rSVBK]                                  ; $7cd6: $f0 $70
  push af                                         ; $7cd8: $f5
  ld a, $01                                       ; $7cd9: $3e $01
  ldh [rSVBK], a                                  ; $7cdb: $e0 $70
  ld a, [$cc49]                                   ; $7cdd: $fa $49 $cc
  cp $05                                          ; $7ce0: $fe $05
  jr z, jr_006_7cef                               ; $7ce2: $28 $0b

  cp $06                                          ; $7ce4: $fe $06
  jr nz, jr_006_7cf6                              ; $7ce6: $20 $0e

  ld a, $05                                       ; $7ce8: $3e $05
  ld hl, $5e97                                    ; $7cea: $21 $97 $5e
  jr jr_006_7cff                                  ; $7ced: $18 $10

jr_006_7cef:
  ld a, $04                                       ; $7cef: $3e $04
  ld hl, $5e97                                    ; $7cf1: $21 $97 $5e
  jr jr_006_7cff                                  ; $7cf4: $18 $09

jr_006_7cf6:
  call Call_000_33f3                              ; $7cf6: $cd $f3 $33

  db $03, $2b, $43

  ld hl, $5bb2                                    ; $7cfc: $21 $b2 $5b

jr_006_7cff:
  ld bc, $0000                                    ; $7cff: $01 $00 $00
  call Call_000_33f3                              ; $7d02: $cd $f3 $33

  db $00, $84, $33

  pop af                                          ; $7d08: $f1
  ldh [rSVBK], a                                  ; $7d09: $e0 $70
  pop bc                                          ; $7d0b: $c1
  jp Jump_000_0dbb                                ; $7d0c: $c3 $bb $0d


  ld e, $04                                       ; $7d0f: $1e $04
  ld a, $7b                                       ; $7d11: $3e $7b
  call Call_000_0a46                              ; $7d13: $cd $46 $0a
  ld de, $002a                                    ; $7d16: $11 $2a $00
  add hl, de                                      ; $7d19: $19
  set 0, [hl]                                     ; $7d1a: $cb $c6
  ldh a, [rSVBK]                                  ; $7d1c: $f0 $70
  push af                                         ; $7d1e: $f5
  ld a, $05                                       ; $7d1f: $3e $05
  ldh [rSVBK], a                                  ; $7d21: $e0 $70
  xor a                                           ; $7d23: $af
  call Call_000_33f3                              ; $7d24: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $7d2a: $11 $0a $00
  add hl, de                                      ; $7d2d: $19
  set 7, [hl]                                     ; $7d2e: $cb $fe
  ld a, $01                                       ; $7d30: $3e $01
  call Call_000_33f3                              ; $7d32: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $7d38: $11 $0a $00
  add hl, de                                      ; $7d3b: $19
  set 7, [hl]                                     ; $7d3c: $cb $fe
  pop af                                          ; $7d3e: $f1
  ldh [rSVBK], a                                  ; $7d3f: $e0 $70
  ld a, $06                                       ; $7d41: $3e $06
  ld [$cc4b], a                                   ; $7d43: $ea $4b $cc
  call Call_006_7d8c                              ; $7d46: $cd $8c $7d
  ld de, $0018                                    ; $7d49: $11 $18 $00
  ld hl, $0003                                    ; $7d4c: $21 $03 $00
  add hl, bc                                      ; $7d4f: $09
  ld a, e                                         ; $7d50: $7b
  ld [hl+], a                                     ; $7d51: $22
  ld a, d                                         ; $7d52: $7a
  ld [hl], a                                      ; $7d53: $77
  ret                                             ; $7d54: $c9


  ld e, $04                                       ; $7d55: $1e $04
  ld a, $7b                                       ; $7d57: $3e $7b
  call Call_000_0a46                              ; $7d59: $cd $46 $0a
  ld de, $002a                                    ; $7d5c: $11 $2a $00
  add hl, de                                      ; $7d5f: $19
  res 0, [hl]                                     ; $7d60: $cb $86
  ldh a, [rSVBK]                                  ; $7d62: $f0 $70
  push af                                         ; $7d64: $f5
  ld a, $05                                       ; $7d65: $3e $05
  ldh [rSVBK], a                                  ; $7d67: $e0 $70
  xor a                                           ; $7d69: $af
  call Call_000_33f3                              ; $7d6a: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $7d70: $11 $0a $00
  add hl, de                                      ; $7d73: $19
  res 7, [hl]                                     ; $7d74: $cb $be
  ld a, $01                                       ; $7d76: $3e $01
  call Call_000_33f3                              ; $7d78: $cd $f3 $33

  db $03, $76, $49

  ld de, $000a                                    ; $7d7e: $11 $0a $00
  add hl, de                                      ; $7d81: $19
  res 7, [hl]                                     ; $7d82: $cb $be
  pop af                                          ; $7d84: $f1
  ldh [rSVBK], a                                  ; $7d85: $e0 $70
  ld a, $05                                       ; $7d87: $3e $05
  ld [$cc4b], a                                   ; $7d89: $ea $4b $cc

Call_006_7d8c:
  push bc                                         ; $7d8c: $c5
  rst $18                                         ; $7d8d: $df
  ld de, $0168                                    ; $7d8e: $11 $68 $01
  ld hl, $ffb9                                    ; $7d91: $21 $b9 $ff
  ld [hl], e                                      ; $7d94: $73
  inc hl                                          ; $7d95: $23
  ld [hl], d                                      ; $7d96: $72
  ld hl, $5e82                                    ; $7d97: $21 $82 $5e
  ld a, [$cc4b]                                   ; $7d9a: $fa $4b $cc
  call Call_000_33f3                              ; $7d9d: $cd $f3 $33

  db $00, $60, $2a

  call Call_000_33f3                              ; $7da3: $cd $f3 $33

  db $01, $53, $41

  xor a                                           ; $7da9: $af
  ldh [$fff5], a                                  ; $7daa: $e0 $f5
  ldh [$fff6], a                                  ; $7dac: $e0 $f6
  ldh a, [rSVBK]                                  ; $7dae: $f0 $70
  push af                                         ; $7db0: $f5
  ld a, $01                                       ; $7db1: $3e $01
  ldh [rSVBK], a                                  ; $7db3: $e0 $70
  ld a, [$cc4b]                                   ; $7db5: $fa $4b $cc
  ld de, $d000                                    ; $7db8: $11 $00 $d0
  ld bc, $0000                                    ; $7dbb: $01 $00 $00
  ld hl, $5e97                                    ; $7dbe: $21 $97 $5e
  call Call_000_33f3                              ; $7dc1: $cd $f3 $33

  db $00, $be, $33

  call Call_000_33f3                              ; $7dc7: $cd $f3 $33

  db $01, $53, $41

  pop af                                          ; $7dcd: $f1
  ldh [rSVBK], a                                  ; $7dce: $e0 $70
  ld a, [$cc4b]                                   ; $7dd0: $fa $4b $cc
  ld hl, $5eac                                    ; $7dd3: $21 $ac $5e
  call Call_000_33f3                              ; $7dd6: $cd $f3 $33

  db $00, $51, $27

  rst $20                                         ; $7ddc: $e7
  xor a                                           ; $7ddd: $af
  ld e, $01                                       ; $7dde: $1e $01
  call Call_000_33f3                              ; $7de0: $cd $f3 $33

  db $05, $27, $72

  pop bc                                          ; $7de6: $c1
  ret                                             ; $7de7: $c9


  ld a, $01                                       ; $7de8: $3e $01
  ld [$cbc8], a                                   ; $7dea: $ea $c8 $cb
  ret                                             ; $7ded: $c9


  xor a                                           ; $7dee: $af
  ld [$cbc8], a                                   ; $7def: $ea $c8 $cb
  ret                                             ; $7df2: $c9


  ld a, [$cbc8]                                   ; $7df3: $fa $c8 $cb
  dec a                                           ; $7df6: $3d
  jp StoreCPUFlags                                ; $7df7: $c3 $39 $00


  ld hl, $cc4a                                    ; $7dfa: $21 $4a $cc
  set 5, [hl]                                     ; $7dfd: $cb $ee
  ret                                             ; $7dff: $c9


Call_006_7e00:
Jump_006_7e00:
  ld [$c096], a                                   ; $7e00: $ea $96 $c0
  xor a                                           ; $7e03: $af
  ld [$c097], a                                   ; $7e04: $ea $97 $c0
  ret                                             ; $7e07: $c9


Jump_006_7e08:
  call Call_006_7e00                              ; $7e08: $cd $00 $7e
  ld a, $01                                       ; $7e0b: $3e $01
  ld [$c095], a                                   ; $7e0d: $ea $95 $c0
  ld a, $80                                       ; $7e10: $3e $80
  ldh [rSB], a                                    ; $7e12: $e0 $01
  ret                                             ; $7e14: $c9


Call_006_7e15:
  ld a, [$c097]                                   ; $7e15: $fa $97 $c0
  or a                                            ; $7e18: $b7
  jr z, jr_006_7e3c                               ; $7e19: $28 $21

  ld hl, $c098                                    ; $7e1b: $21 $98 $c0
  ld a, [hl]                                      ; $7e1e: $7e
  or a                                            ; $7e1f: $b7
  jr z, jr_006_7e23                               ; $7e20: $28 $01

  dec [hl]                                        ; $7e22: $35

jr_006_7e23:
  call Call_006_7e84                              ; $7e23: $cd $84 $7e
  jr z, jr_006_7e3c                               ; $7e26: $28 $14

  call Call_006_7ec6                              ; $7e28: $cd $c6 $7e
  cp $ff                                          ; $7e2b: $fe $ff
  jr z, jr_006_7e23                               ; $7e2d: $28 $f4

  cp $81                                          ; $7e2f: $fe $81
  jr z, jr_006_7e23                               ; $7e31: $28 $f0

  cp $80                                          ; $7e33: $fe $80
  jr z, jr_006_7e23                               ; $7e35: $28 $ec

  call Call_006_7f93                              ; $7e37: $cd $93 $7f
  jr jr_006_7e23                                  ; $7e3a: $18 $e7

jr_006_7e3c:
  ret                                             ; $7e3c: $c9


Call_006_7e3d:
  ld hl, $ffff                                    ; $7e3d: $21 $ff $ff
  res 3, [hl]                                     ; $7e40: $cb $9e
  xor a                                           ; $7e42: $af
  ld [$c095], a                                   ; $7e43: $ea $95 $c0
  ld [$c097], a                                   ; $7e46: $ea $97 $c0
  ret                                             ; $7e49: $c9


  ld hl, $ff0f                                    ; $7e4a: $21 $0f $ff
  res 3, [hl]                                     ; $7e4d: $cb $9e
  ldh a, [rSVBK]                                  ; $7e4f: $f0 $70
  push af                                         ; $7e51: $f5
  ld a, $07                                       ; $7e52: $3e $07
  ldh [rSVBK], a                                  ; $7e54: $e0 $70
  ld a, $01                                       ; $7e56: $3e $01
  ld [$c095], a                                   ; $7e58: $ea $95 $c0
  xor a                                           ; $7e5b: $af
  ld [$c097], a                                   ; $7e5c: $ea $97 $c0
  ld [$c096], a                                   ; $7e5f: $ea $96 $c0
  ld [$c099], a                                   ; $7e62: $ea $99 $c0
  ld [$dd4b], a                                   ; $7e65: $ea $4b $dd
  ld [$dd4c], a                                   ; $7e68: $ea $4c $dd
  ld [$dd8d], a                                   ; $7e6b: $ea $8d $dd
  ld [$dd8e], a                                   ; $7e6e: $ea $8e $dd
  pop af                                          ; $7e71: $f1
  ldh [rSVBK], a                                  ; $7e72: $e0 $70
  ld a, $80                                       ; $7e74: $3e $80
  ldh [rSB], a                                    ; $7e76: $e0 $01
  ldh [rSC], a                                    ; $7e78: $e0 $02
  ld hl, $ffff                                    ; $7e7a: $21 $ff $ff
  set 3, [hl]                                     ; $7e7d: $cb $de
  ld a, $f0                                       ; $7e7f: $3e $f0
  jp Jump_006_7f32                                ; $7e81: $c3 $32 $7f


Call_006_7e84:
  ldh a, [rSVBK]                                  ; $7e84: $f0 $70
  push af                                         ; $7e86: $f5
  ld a, $07                                       ; $7e87: $3e $07
  ldh [rSVBK], a                                  ; $7e89: $e0 $70
  ld hl, $dd4b                                    ; $7e8b: $21 $4b $dd
  ld a, [hl+]                                     ; $7e8e: $2a
  ld h, [hl]                                      ; $7e8f: $66
  ld l, a                                         ; $7e90: $6f
  pop af                                          ; $7e91: $f1
  ldh [rSVBK], a                                  ; $7e92: $e0 $70
  ld a, l                                         ; $7e94: $7d
  cp h                                            ; $7e95: $bc
  ret                                             ; $7e96: $c9


Call_006_7e97:
  ld hl, $dd8d                                    ; $7e97: $21 $8d $dd
  ld a, [hl+]                                     ; $7e9a: $2a
  cp [hl]                                         ; $7e9b: $be
  ret                                             ; $7e9c: $c9


Jump_006_7e9d:
  ld a, [$c095]                                   ; $7e9d: $fa $95 $c0
  cp $01                                          ; $7ea0: $fe $01
  jr z, jr_006_7eac                               ; $7ea2: $28 $08

  ldh a, [rSB]                                    ; $7ea4: $f0 $01
  cp $80                                          ; $7ea6: $fe $80
  jr nz, jr_006_7ec1                              ; $7ea8: $20 $17

  jr jr_006_7eb2                                  ; $7eaa: $18 $06

jr_006_7eac:
  ldh a, [rSB]                                    ; $7eac: $f0 $01
  cp $81                                          ; $7eae: $fe $81
  jr nz, jr_006_7ec1                              ; $7eb0: $20 $0f

jr_006_7eb2:
  ld a, $14                                       ; $7eb2: $3e $14
  ld [$c098], a                                   ; $7eb4: $ea $98 $c0
  ld a, $ff                                       ; $7eb7: $3e $ff
  ldh [rSB], a                                    ; $7eb9: $e0 $01
  ld a, $01                                       ; $7ebb: $3e $01
  ld [$c097], a                                   ; $7ebd: $ea $97 $c0
  ret                                             ; $7ec0: $c9


jr_006_7ec1:
  ld a, $01                                       ; $7ec1: $3e $01
  jp Jump_006_7e08                                ; $7ec3: $c3 $08 $7e


Call_006_7ec6:
  push bc                                         ; $7ec6: $c5
  push hl                                         ; $7ec7: $e5
  ldh a, [rSVBK]                                  ; $7ec8: $f0 $70
  push af                                         ; $7eca: $f5
  ld a, $07                                       ; $7ecb: $3e $07
  ldh [rSVBK], a                                  ; $7ecd: $e0 $70
  ld hl, $dd4c                                    ; $7ecf: $21 $4c $dd
  ld a, [hl]                                      ; $7ed2: $7e
  ld b, $00                                       ; $7ed3: $06 $00
  ld c, a                                         ; $7ed5: $4f
  inc a                                           ; $7ed6: $3c
  cp $40                                          ; $7ed7: $fe $40
  jr nz, jr_006_7edc                              ; $7ed9: $20 $01

  xor a                                           ; $7edb: $af

jr_006_7edc:
  ld [hl+], a                                     ; $7edc: $22
  add hl, bc                                      ; $7edd: $09
  ld c, [hl]                                      ; $7ede: $4e
  pop af                                          ; $7edf: $f1
  ldh [rSVBK], a                                  ; $7ee0: $e0 $70
  ld a, c                                         ; $7ee2: $79
  pop hl                                          ; $7ee3: $e1
  pop bc                                          ; $7ee4: $c1
  ret                                             ; $7ee5: $c9


Call_006_7ee6:
  push bc                                         ; $7ee6: $c5
  push hl                                         ; $7ee7: $e5
  ldh a, [rSVBK]                                  ; $7ee8: $f0 $70
  push af                                         ; $7eea: $f5
  ld a, $07                                       ; $7eeb: $3e $07
  ldh [rSVBK], a                                  ; $7eed: $e0 $70
  call Call_006_7e97                              ; $7eef: $cd $97 $7e
  ld a, $fe                                       ; $7ef2: $3e $fe
  jr z, jr_006_7f06                               ; $7ef4: $28 $10

  ld hl, $dd8e                                    ; $7ef6: $21 $8e $dd
  ld a, [hl]                                      ; $7ef9: $7e
  ld b, $00                                       ; $7efa: $06 $00
  ld c, a                                         ; $7efc: $4f
  inc a                                           ; $7efd: $3c
  cp $40                                          ; $7efe: $fe $40
  jr nz, jr_006_7f03                              ; $7f00: $20 $01

  xor a                                           ; $7f02: $af

jr_006_7f03:
  ld [hl+], a                                     ; $7f03: $22
  add hl, bc                                      ; $7f04: $09
  ld a, [hl]                                      ; $7f05: $7e

jr_006_7f06:
  ld c, a                                         ; $7f06: $4f
  pop af                                          ; $7f07: $f1
  ldh [rSVBK], a                                  ; $7f08: $e0 $70
  ld a, c                                         ; $7f0a: $79
  pop hl                                          ; $7f0b: $e1
  pop bc                                          ; $7f0c: $c1
  ret                                             ; $7f0d: $c9


Call_006_7f0e:
  push bc                                         ; $7f0e: $c5
  push hl                                         ; $7f0f: $e5
  ld c, a                                         ; $7f10: $4f
  ldh a, [rSVBK]                                  ; $7f11: $f0 $70
  push af                                         ; $7f13: $f5
  ld a, $07                                       ; $7f14: $3e $07
  ldh [rSVBK], a                                  ; $7f16: $e0 $70
  ld a, c                                         ; $7f18: $79
  push af                                         ; $7f19: $f5
  ld hl, $dd4b                                    ; $7f1a: $21 $4b $dd
  ld a, [hl]                                      ; $7f1d: $7e
  ld b, $00                                       ; $7f1e: $06 $00
  ld c, a                                         ; $7f20: $4f
  inc a                                           ; $7f21: $3c
  cp $40                                          ; $7f22: $fe $40
  jr nz, jr_006_7f27                              ; $7f24: $20 $01

  xor a                                           ; $7f26: $af

jr_006_7f27:
  ld [hl+], a                                     ; $7f27: $22
  inc hl                                          ; $7f28: $23
  add hl, bc                                      ; $7f29: $09
  pop af                                          ; $7f2a: $f1
  ld [hl], a                                      ; $7f2b: $77
  pop af                                          ; $7f2c: $f1
  ldh [rSVBK], a                                  ; $7f2d: $e0 $70
  pop hl                                          ; $7f2f: $e1
  pop bc                                          ; $7f30: $c1
  ret                                             ; $7f31: $c9


Call_006_7f32:
Jump_006_7f32:
  push bc                                         ; $7f32: $c5
  push hl                                         ; $7f33: $e5
  ld c, a                                         ; $7f34: $4f
  ldh a, [rSVBK]                                  ; $7f35: $f0 $70
  push af                                         ; $7f37: $f5
  ld a, $07                                       ; $7f38: $3e $07
  ldh [rSVBK], a                                  ; $7f3a: $e0 $70
  ld a, c                                         ; $7f3c: $79
  push af                                         ; $7f3d: $f5
  ld hl, $dd8d                                    ; $7f3e: $21 $8d $dd
  ld a, [hl+]                                     ; $7f41: $2a
  ld b, $00                                       ; $7f42: $06 $00
  ld c, a                                         ; $7f44: $4f
  inc hl                                          ; $7f45: $23
  add hl, bc                                      ; $7f46: $09
  pop af                                          ; $7f47: $f1
  ld [hl], a                                      ; $7f48: $77
  ld hl, $dd8d                                    ; $7f49: $21 $8d $dd
  ld a, [hl]                                      ; $7f4c: $7e
  inc a                                           ; $7f4d: $3c
  cp $40                                          ; $7f4e: $fe $40
  jr nz, jr_006_7f53                              ; $7f50: $20 $01

  xor a                                           ; $7f52: $af

jr_006_7f53:
  ld [hl], a                                      ; $7f53: $77
  ld a, [$c097]                                   ; $7f54: $fa $97 $c0
  or a                                            ; $7f57: $b7
  jr nz, jr_006_7f65                              ; $7f58: $20 $0b

  ld a, $02                                       ; $7f5a: $3e $02
  ld [$c095], a                                   ; $7f5c: $ea $95 $c0
  ld a, $81                                       ; $7f5f: $3e $81
  ldh [rSB], a                                    ; $7f61: $e0 $01
  ldh [rSC], a                                    ; $7f63: $e0 $02

jr_006_7f65:
  pop af                                          ; $7f65: $f1
  ldh [rSVBK], a                                  ; $7f66: $e0 $70
  pop hl                                          ; $7f68: $e1
  pop bc                                          ; $7f69: $c1
  ret                                             ; $7f6a: $c9


  ld a, $80                                       ; $7f6b: $3e $80
  ldh [rSC], a                                    ; $7f6d: $e0 $02
  ld a, [$c097]                                   ; $7f6f: $fa $97 $c0
  or a                                            ; $7f72: $b7
  jp z, Jump_006_7e9d                             ; $7f73: $ca $9d $7e

  ldh a, [rSB]                                    ; $7f76: $f0 $01
  or a                                            ; $7f78: $b7
  jr z, jr_006_7f8d                               ; $7f79: $28 $12

  cp $ff                                          ; $7f7b: $fe $ff
  jr z, jr_006_7f8d                               ; $7f7d: $28 $0e

  cp $fe                                          ; $7f7f: $fe $fe
  jr z, jr_006_7f88                               ; $7f81: $28 $05

  call Call_006_7f0e                              ; $7f83: $cd $0e $7f
  jr jr_006_7f8d                                  ; $7f86: $18 $05

jr_006_7f88:
  ld a, $0a                                       ; $7f88: $3e $0a
  ld [$c098], a                                   ; $7f8a: $ea $98 $c0

jr_006_7f8d:
  call Call_006_7ee6                              ; $7f8d: $cd $e6 $7e
  ldh [rSB], a                                    ; $7f90: $e0 $01
  ret                                             ; $7f92: $c9


Call_006_7f93:
  cp $f0                                          ; $7f93: $fe $f0
  jr c, jr_006_7fa8                               ; $7f95: $38 $11

  jr jr_006_7fc0                                  ; $7f97: $18 $27

Jump_006_7f99:
  cp $66                                          ; $7f99: $fe $66
  ret nc                                          ; $7f9b: $d0

  push af                                         ; $7f9c: $f5
  ld a, $f1                                       ; $7f9d: $3e $f1
  call Call_006_7f32                              ; $7f9f: $cd $32 $7f
  pop af                                          ; $7fa2: $f1
  add $82                                         ; $7fa3: $c6 $82
  jp Jump_006_7f32                                ; $7fa5: $c3 $32 $7f


jr_006_7fa8:
  sub $82                                         ; $7fa8: $d6 $82
  ret c                                           ; $7faa: $d8

  cp $66                                          ; $7fab: $fe $66
  jp nc, Jump_006_7e00                            ; $7fad: $d2 $00 $7e

  ld b, a                                         ; $7fb0: $47
  ld hl, $c099                                    ; $7fb1: $21 $99 $c0
  ld a, [hl]                                      ; $7fb4: $7e
  ld [hl], $f0                                    ; $7fb5: $36 $f0
  cp $f1                                          ; $7fb7: $fe $f1
  jp nz, Jump_006_7e08                            ; $7fb9: $c2 $08 $7e

  ld a, b                                         ; $7fbc: $78
  jp Jump_006_7165                                ; $7fbd: $c3 $65 $71


jr_006_7fc0:
  cp $f5                                          ; $7fc0: $fe $f5
  jp nc, Jump_006_7e00                            ; $7fc2: $d2 $00 $7e

  ld [$c099], a                                   ; $7fc5: $ea $99 $c0
  sub $f0                                         ; $7fc8: $d6 $f0
  ld c, a                                         ; $7fca: $4f
  rst $00                                         ; $7fcb: $c7
  sub $7f                                         ; $7fcc: $d6 $7f
  sub $7f                                         ; $7fce: $d6 $7f
  ld l, a                                         ; $7fd0: $6f
  ld [hl], c                                      ; $7fd1: $71
  ld a, d                                         ; $7fd2: $7a
  ld [hl], c                                      ; $7fd3: $71
  ld h, h                                         ; $7fd4: $64
  ld [hl], c                                      ; $7fd5: $71
  ret                                             ; $7fd6: $c9


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
