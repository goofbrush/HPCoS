; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

  db $03

Call_003_4001:
  ld a, [$cd86]                                   ; $4001: $fa $86 $cd
  or a                                            ; $4004: $b7
  ret nz                                          ; $4005: $c0

  push bc                                         ; $4006: $c5
  ld hl, $cdb8                                    ; $4007: $21 $b8 $cd
  ld e, [hl]                                      ; $400a: $5e
  inc hl                                          ; $400b: $23
  ld d, [hl]                                      ; $400c: $56
  ld hl, $ff8f                                    ; $400d: $21 $8f $ff
  ld a, [hl+]                                     ; $4010: $2a
  ld h, [hl]                                      ; $4011: $66
  ld l, a                                         ; $4012: $6f
  ld bc, $0010                                    ; $4013: $01 $10 $00
  add hl, bc                                      ; $4016: $09
  call Call_000_312d                              ; $4017: $cd $2d $31
  jr c, jr_003_4025                               ; $401a: $38 $09

  ld bc, $0080                                    ; $401c: $01 $80 $00
  add hl, bc                                      ; $401f: $09
  call Call_000_312d                              ; $4020: $cd $2d $31
  jr c, jr_003_4026                               ; $4023: $38 $01

jr_003_4025:
  xor a                                           ; $4025: $af

jr_003_4026:
  pop bc                                          ; $4026: $c1
  ret                                             ; $4027: $c9


Call_003_4028:
  ld a, [$cd86]                                   ; $4028: $fa $86 $cd
  or a                                            ; $402b: $b7
  ret nz                                          ; $402c: $c0

  push bc                                         ; $402d: $c5
  ld hl, $cdbb                                    ; $402e: $21 $bb $cd
  ld e, [hl]                                      ; $4031: $5e
  inc hl                                          ; $4032: $23
  ld d, [hl]                                      ; $4033: $56
  ld hl, $ff91                                    ; $4034: $21 $91 $ff
  ld a, [hl+]                                     ; $4037: $2a
  ld h, [hl]                                      ; $4038: $66
  ld l, a                                         ; $4039: $6f
  ld bc, $0008                                    ; $403a: $01 $08 $00
  add hl, bc                                      ; $403d: $09
  call Call_000_312d                              ; $403e: $cd $2d $31
  jr c, jr_003_4050                               ; $4041: $38 $0d

  ld hl, $cd8d                                    ; $4043: $21 $8d $cd
  ld a, [hl+]                                     ; $4046: $2a
  ld h, [hl]                                      ; $4047: $66
  ld l, a                                         ; $4048: $6f
  ld bc, $fff8                                    ; $4049: $01 $f8 $ff
  add hl, bc                                      ; $404c: $09
  rst $10                                         ; $404d: $d7
  jr c, jr_003_4051                               ; $404e: $38 $01

jr_003_4050:
  xor a                                           ; $4050: $af

jr_003_4051:
  pop bc                                          ; $4051: $c1
  ret                                             ; $4052: $c9


  call Call_000_2674                              ; $4053: $cd $74 $26
  ret nz                                          ; $4056: $c0

  ldh a, [$ffcd]                                  ; $4057: $f0 $cd
  cp $3f                                          ; $4059: $fe $3f
  jr z, jr_003_40a5                               ; $405b: $28 $48

  cp $0b                                          ; $405d: $fe $0b
  jr z, jr_003_4064                               ; $405f: $28 $03

  cp $0c                                          ; $4061: $fe $0c
  ret nz                                          ; $4063: $c0

jr_003_4064:
  ldh a, [$ffe1]                                  ; $4064: $f0 $e1
  cp $05                                          ; $4066: $fe $05
  jp z, Jump_003_4140                             ; $4068: $ca $40 $41

  cp $00                                          ; $406b: $fe $00
  jr z, jr_003_40a5                               ; $406d: $28 $36

  ldh a, [rSVBK]                                  ; $406f: $f0 $70
  push af                                         ; $4071: $f5
  ld a, $06                                       ; $4072: $3e $06
  ldh [rSVBK], a                                  ; $4074: $e0 $70
  ld a, [$ddba]                                   ; $4076: $fa $ba $dd
  ldh [$ffbd], a                                  ; $4079: $e0 $bd
  pop af                                          ; $407b: $f1
  ldh [rSVBK], a                                  ; $407c: $e0 $70
  ldh a, [$ffbd]                                  ; $407e: $f0 $bd
  or a                                            ; $4080: $b7
  jr nz, jr_003_40a5                              ; $4081: $20 $22

  ld a, [$cd9a]                                   ; $4083: $fa $9a $cd
  or a                                            ; $4086: $b7
  jr nz, jr_003_40a5                              ; $4087: $20 $1c

  ld hl, $cc36                                    ; $4089: $21 $36 $cc
  dec [hl]                                        ; $408c: $35
  jr nz, jr_003_40a5                              ; $408d: $20 $16

  push hl                                         ; $408f: $e5
  ld hl, $caf5                                    ; $4090: $21 $f5 $ca
  ld a, [$caf4]                                   ; $4093: $fa $f4 $ca
  call Call_000_28e6                              ; $4096: $cd $e6 $28
  add [hl]                                        ; $4099: $86
  pop hl                                          ; $409a: $e1
  ld [hl], a                                      ; $409b: $77
  call Call_000_33f3                              ; $409c: $cd $f3 $33

  db $08, $98, $73

  call Call_003_419b                              ; $40a2: $cd $9b $41

jr_003_40a5:
  call Call_003_6c85                              ; $40a5: $cd $85 $6c
  ld hl, $cdb2                                    ; $40a8: $21 $b2 $cd
  ld a, [hl+]                                     ; $40ab: $2a
  ld h, [hl]                                      ; $40ac: $66
  ld l, a                                         ; $40ad: $6f
  ld a, l                                         ; $40ae: $7d
  ld [$cdb8], a                                   ; $40af: $ea $b8 $cd
  ld a, h                                         ; $40b2: $7c
  ld [$cdb9], a                                   ; $40b3: $ea $b9 $cd
  call Call_003_4001                              ; $40b6: $cd $01 $40
  jr nz, jr_003_40c4                              ; $40b9: $20 $09

  ld hl, $c2d4                                    ; $40bb: $21 $d4 $c2
  ld de, $cdb1                                    ; $40be: $11 $b1 $cd
  call Call_000_026c                              ; $40c1: $cd $6c $02

jr_003_40c4:
  call Call_003_6ca9                              ; $40c4: $cd $a9 $6c
  call Call_003_6cd3                              ; $40c7: $cd $d3 $6c
  ld hl, $cdb5                                    ; $40ca: $21 $b5 $cd
  ld a, [hl+]                                     ; $40cd: $2a
  ld h, [hl]                                      ; $40ce: $66
  ld l, a                                         ; $40cf: $6f
  ld a, l                                         ; $40d0: $7d
  ld [$cdbb], a                                   ; $40d1: $ea $bb $cd
  ld a, h                                         ; $40d4: $7c
  ld [$cdbc], a                                   ; $40d5: $ea $bc $cd
  call Call_003_4028                              ; $40d8: $cd $28 $40
  jr nz, jr_003_40e6                              ; $40db: $20 $09

  ld hl, $c2d7                                    ; $40dd: $21 $d7 $c2
  ld de, $cdb4                                    ; $40e0: $11 $b4 $cd
  call Call_000_026c                              ; $40e3: $cd $6c $02

jr_003_40e6:
  ld hl, $cdb8                                    ; $40e6: $21 $b8 $cd
  ld de, $cab3                                    ; $40e9: $11 $b3 $ca
  call Call_000_026f                              ; $40ec: $cd $6f $02
  ld hl, $cdbb                                    ; $40ef: $21 $bb $cd
  ld de, $cab5                                    ; $40f2: $11 $b5 $ca
  call Call_000_026f                              ; $40f5: $cd $6f $02
  call Call_000_33f3                              ; $40f8: $cd $f3 $33

  db $00, $5b, $06

  call Call_000_33f3                              ; $40fe: $cd $f3 $33

  db $01, $d8, $47

  jr c, jr_003_410f                               ; $4104: $38 $09

  ld hl, $c2d4                                    ; $4106: $21 $d4 $c2
  ld de, $cdb1                                    ; $4109: $11 $b1 $cd
  call Call_000_0263                              ; $410c: $cd $63 $02

jr_003_410f:
  call Call_003_6da6                              ; $410f: $cd $a6 $6d
  call Call_003_748f                              ; $4112: $cd $8f $74
  jr z, jr_003_411f                               ; $4115: $28 $08

  ld hl, $002a                                    ; $4117: $21 $2a $00
  add hl, bc                                      ; $411a: $09
  set 0, [hl]                                     ; $411b: $cb $c6
  jr jr_003_4125                                  ; $411d: $18 $06

jr_003_411f:
  ld hl, $002a                                    ; $411f: $21 $2a $00
  add hl, bc                                      ; $4122: $09
  res 0, [hl]                                     ; $4123: $cb $86

jr_003_4125:
  call Call_003_721b                              ; $4125: $cd $1b $72
  call Call_003_71e5                              ; $4128: $cd $e5 $71
  ld a, [$c2fb]                                   ; $412b: $fa $fb $c2
  bit 4, a                                        ; $412e: $cb $67
  jr z, jr_003_4138                               ; $4130: $28 $06

  call Call_000_33f3                              ; $4132: $cd $f3 $33

  db $00, $5b, $06

jr_003_4138:
  call Call_000_33f3                              ; $4138: $cd $f3 $33

  db $1e, $1a, $4f

  jr jr_003_4148                                  ; $413e: $18 $08

Jump_003_4140:
  ld hl, $cae3                                    ; $4140: $21 $e3 $ca
  ld [hl], $ff                                    ; $4143: $36 $ff
  inc hl                                          ; $4145: $23
  ld [hl], $ff                                    ; $4146: $36 $ff

jr_003_4148:
  call Call_003_41ce                              ; $4148: $cd $ce $41
  ld hl, $cae1                                    ; $414b: $21 $e1 $ca
  ld e, [hl]                                      ; $414e: $5e
  inc hl                                          ; $414f: $23
  ld d, [hl]                                      ; $4150: $56
  call Call_003_426f                              ; $4151: $cd $6f $42
  call Call_000_33f3                              ; $4154: $cd $f3 $33

  db $00, $3d, $2f

  call Call_000_3427                              ; $415a: $cd $27 $34

  db $00, $f2, $2a

  ret                                             ; $4160: $c9


  ldh a, [rSVBK]                                  ; $4161: $f0 $70
  push af                                         ; $4163: $f5
  ld a, $03                                       ; $4164: $3e $03
  ldh [rSVBK], a                                  ; $4166: $e0 $70
  ld hl, $ded6                                    ; $4168: $21 $d6 $de

jr_003_416b:
  ld a, [hl+]                                     ; $416b: $2a
  or a                                            ; $416c: $b7
  jr z, jr_003_418e                               ; $416d: $28 $1f

  ldh [$ff9a], a                                  ; $416f: $e0 $9a
  ld a, [hl+]                                     ; $4171: $2a
  ldh [$ff9f], a                                  ; $4172: $e0 $9f
  ld de, $fff9                                    ; $4174: $11 $f9 $ff
  add hl, de                                      ; $4177: $19
  ld a, [hl+]                                     ; $4178: $2a
  ldh [$ff9b], a                                  ; $4179: $e0 $9b
  ld a, [hl+]                                     ; $417b: $2a
  ldh [$ff9c], a                                  ; $417c: $e0 $9c
  inc hl                                          ; $417e: $23
  ld a, [hl+]                                     ; $417f: $2a
  ldh [$ff9d], a                                  ; $4180: $e0 $9d
  ld a, [hl+]                                     ; $4182: $2a
  ldh [$ff9e], a                                  ; $4183: $e0 $9e
  call Call_003_419b                              ; $4185: $cd $9b $41
  ld de, $0008                                    ; $4188: $11 $08 $00
  add hl, de                                      ; $418b: $19
  jr jr_003_416b                                  ; $418c: $18 $dd

jr_003_418e:
  ld bc, $0050                                    ; $418e: $01 $50 $00
  ld hl, $ded0                                    ; $4191: $21 $d0 $de
  call Call_000_1248                              ; $4194: $cd $48 $12
  pop af                                          ; $4197: $f1
  ldh [rSVBK], a                                  ; $4198: $e0 $70
  ret                                             ; $419a: $c9


Call_003_419b:
  push hl                                         ; $419b: $e5
  ld a, [$c1de]                                   ; $419c: $fa $de $c1
  push af                                         ; $419f: $f5
  ld a, $ff                                       ; $41a0: $3e $ff
  ld [$c1de], a                                   ; $41a2: $ea $de $c1
  ld a, $05                                       ; $41a5: $3e $05
  call Call_000_04e0                              ; $41a7: $cd $e0 $04
  pop af                                          ; $41aa: $f1
  ld [$c1de], a                                   ; $41ab: $ea $de $c1
  pop hl                                          ; $41ae: $e1
  ret                                             ; $41af: $c9


Call_003_41b0:
  ldh a, [$ffcd]                                  ; $41b0: $f0 $cd
  cp $3f                                          ; $41b2: $fe $3f
  jr z, jr_003_41be                               ; $41b4: $28 $08

  cp $0b                                          ; $41b6: $fe $0b
  jr z, jr_003_41be                               ; $41b8: $28 $04

  cp $0c                                          ; $41ba: $fe $0c
  jr nz, jr_003_41cc                              ; $41bc: $20 $0e

jr_003_41be:
  ld a, [$cd9a]                                   ; $41be: $fa $9a $cd
  or a                                            ; $41c1: $b7
  jr nz, jr_003_41cc                              ; $41c2: $20 $08

  ld a, [$c0a7]                                   ; $41c4: $fa $a7 $c0
  or a                                            ; $41c7: $b7
  jr nz, jr_003_41cc                              ; $41c8: $20 $02

  inc a                                           ; $41ca: $3c
  ret                                             ; $41cb: $c9


jr_003_41cc:
  xor a                                           ; $41cc: $af
  ret                                             ; $41cd: $c9


Call_003_41ce:
  call Call_003_41b0                              ; $41ce: $cd $b0 $41
  ret z                                           ; $41d1: $c8

  ldh a, [$ffa5]                                  ; $41d2: $f0 $a5
  and $f0                                         ; $41d4: $e6 $f0
  ld [$cada], a                                   ; $41d6: $ea $da $ca
  ld e, a                                         ; $41d9: $5f
  ldh a, [$ffe1]                                  ; $41da: $f0 $e1
  cp $01                                          ; $41dc: $fe $01
  jr z, jr_003_41ee                               ; $41de: $28 $0e

  cp $02                                          ; $41e0: $fe $02
  jp z, Jump_003_421b                             ; $41e2: $ca $1b $42

  cp $04                                          ; $41e5: $fe $04
  jp z, Jump_003_4247                             ; $41e7: $ca $47 $42

  cp $00                                          ; $41ea: $fe $00
  ret z                                           ; $41ec: $c8

  ret                                             ; $41ed: $c9


jr_003_41ee:
  ld hl, $c2de                                    ; $41ee: $21 $de $c2
  ld [hl], $00                                    ; $41f1: $36 $00
  inc hl                                          ; $41f3: $23
  ld [hl], $00                                    ; $41f4: $36 $00
  ld hl, $c2e0                                    ; $41f6: $21 $e0 $c2
  ld [hl], $00                                    ; $41f9: $36 $00
  inc hl                                          ; $41fb: $23
  ld [hl], $00                                    ; $41fc: $36 $00
  call Call_003_428c                              ; $41fe: $cd $8c $42
  or a                                            ; $4201: $b7
  ret z                                           ; $4202: $c8

  xor a                                           ; $4203: $af
  ld [$c2eb], a                                   ; $4204: $ea $eb $c2
  ld [$c2e9], a                                   ; $4207: $ea $e9 $c2
  ld [$c2ea], a                                   ; $420a: $ea $ea $c2
  ld [$c2ed], a                                   ; $420d: $ea $ed $c2
  ld hl, $cae3                                    ; $4210: $21 $e3 $ca
  ld [hl], $ff                                    ; $4213: $36 $ff
  inc hl                                          ; $4215: $23
  ld [hl], $ff                                    ; $4216: $36 $ff
  jp Jump_003_4259                                ; $4218: $c3 $59 $42


Jump_003_421b:
  ld a, e                                         ; $421b: $7b
  or a                                            ; $421c: $b7
  jp z, Jump_003_4232                             ; $421d: $ca $32 $42

  and $f0                                         ; $4220: $e6 $f0
  ret z                                           ; $4222: $c8

  ld a, $09                                       ; $4223: $3e $09
  ld [$cadf], a                                   ; $4225: $ea $df $ca
  call Call_003_6f63                              ; $4228: $cd $63 $6f
  call Call_003_6fb1                              ; $422b: $cd $b1 $6f
  call Call_003_4253                              ; $422e: $cd $53 $42
  ret                                             ; $4231: $c9


Jump_003_4232:
  ld a, e                                         ; $4232: $7b
  and $f0                                         ; $4233: $e6 $f0
  jp nz, Jump_003_4266                            ; $4235: $c2 $66 $42

  ld a, $01                                       ; $4238: $3e $01
  ldh [$ffe1], a                                  ; $423a: $e0 $e1
  ld a, $01                                       ; $423c: $3e $01
  ld [$cae0], a                                   ; $423e: $ea $e0 $ca
  call Call_003_6fb1                              ; $4241: $cd $b1 $6f
  jp Jump_003_4253                                ; $4244: $c3 $53 $42


Jump_003_4247:
  call Call_003_4253                              ; $4247: $cd $53 $42
  ret                                             ; $424a: $c9


  ld hl, $cae3                                    ; $424b: $21 $e3 $ca
  ld [hl], $ff                                    ; $424e: $36 $ff
  inc hl                                          ; $4250: $23
  ld [hl], $ff                                    ; $4251: $36 $ff

Call_003_4253:
Jump_003_4253:
  call Call_000_3427                              ; $4253: $cd $27 $34

  db $08, $6b, $77

Jump_003_4259:
  ldh a, [$ffa5]                                  ; $4259: $f0 $a5
  call Call_003_6fc0                              ; $425b: $cd $c0 $6f
  ld [$cadc], a                                   ; $425e: $ea $dc $ca
  ld a, $09                                       ; $4261: $3e $09
  ld [$cadf], a                                   ; $4263: $ea $df $ca

Jump_003_4266:
  ld a, $02                                       ; $4266: $3e $02
  ldh [$ffe1], a                                  ; $4268: $e0 $e1
  xor a                                           ; $426a: $af
  ld [$cae0], a                                   ; $426b: $ea $e0 $ca
  ret                                             ; $426e: $c9


Call_003_426f:
  ld hl, $cae3                                    ; $426f: $21 $e3 $ca
  ld a, [hl+]                                     ; $4272: $2a
  ld h, [hl]                                      ; $4273: $66
  ld l, a                                         ; $4274: $6f
  rst $10                                         ; $4275: $d7
  ret z                                           ; $4276: $c8

  ld hl, $cae3                                    ; $4277: $21 $e3 $ca
  ld [hl], e                                      ; $427a: $73
  inc hl                                          ; $427b: $23
  ld [hl], d                                      ; $427c: $72
  ld hl, $7e38                                    ; $427d: $21 $38 $7e
  call Call_000_33f3                              ; $4280: $cd $f3 $33

  db $00, $ed, $00

  call Call_000_3427                              ; $4286: $cd $27 $34

  db $00, $f4, $09

Call_003_428c:
  ld a, e                                         ; $428c: $7b
  and $30                                         ; $428d: $e6 $30
  ld a, e                                         ; $428f: $7b
  ret z                                           ; $4290: $c8

  ld hl, $c2fa                                    ; $4291: $21 $fa $c2
  bit 5, [hl]                                     ; $4294: $cb $6e
  jr z, jr_003_429d                               ; $4296: $28 $05

  bit 4, a                                        ; $4298: $cb $67
  ret z                                           ; $429a: $c8

  jr jr_003_42a0                                  ; $429b: $18 $03

jr_003_429d:
  bit 5, a                                        ; $429d: $cb $6f
  ret z                                           ; $429f: $c8

jr_003_42a0:
  call Call_000_07fd                              ; $42a0: $cd $fd $07
  ld a, e                                         ; $42a3: $7b
  ret                                             ; $42a4: $c9


Call_003_42a5:
  ldh a, [rSVBK]                                  ; $42a5: $f0 $70
  push af                                         ; $42a7: $f5
  ld a, $05                                       ; $42a8: $3e $05
  ldh [rSVBK], a                                  ; $42aa: $e0 $70
  ld hl, $d000                                    ; $42ac: $21 $00 $d0
  ld bc, $00a9                                    ; $42af: $01 $a9 $00
  call Call_000_1248                              ; $42b2: $cd $48 $12
  ld a, $ff                                       ; $42b5: $3e $ff
  ld [$d000], a                                   ; $42b7: $ea $00 $d0
  ld [$d019], a                                   ; $42ba: $ea $19 $d0
  ld [$d032], a                                   ; $42bd: $ea $32 $d0
  ld [$d04b], a                                   ; $42c0: $ea $4b $d0
  ld [$d064], a                                   ; $42c3: $ea $64 $d0
  ld [$d07d], a                                   ; $42c6: $ea $7d $d0
  ld [$cc26], a                                   ; $42c9: $ea $26 $cc
  ld a, $00                                       ; $42cc: $3e $00
  ld [$cc28], a                                   ; $42ce: $ea $28 $cc
  xor a                                           ; $42d1: $af
  ld [$cb54], a                                   ; $42d2: $ea $54 $cb
  ld [$cb2d], a                                   ; $42d5: $ea $2d $cb
  ld [$cbcb], a                                   ; $42d8: $ea $cb $cb
  pop af                                          ; $42db: $f1
  ldh [rSVBK], a                                  ; $42dc: $e0 $70
  ldh a, [rSVBK]                                  ; $42de: $f0 $70
  push af                                         ; $42e0: $f5
  ld a, $06                                       ; $42e1: $3e $06
  ldh [rSVBK], a                                  ; $42e3: $e0 $70
  ld a, $02                                       ; $42e5: $3e $02
  ld [$ddc2], a                                   ; $42e7: $ea $c2 $dd
  pop af                                          ; $42ea: $f1
  ldh [rSVBK], a                                  ; $42eb: $e0 $70
  ld a, [$caf9]                                   ; $42ed: $fa $f9 $ca
  or a                                            ; $42f0: $b7
  jr z, jr_003_4302                               ; $42f1: $28 $0f

  dec a                                           ; $42f3: $3d
  ld [$caf9], a                                   ; $42f4: $ea $f9 $ca
  or a                                            ; $42f7: $b7
  jr nz, jr_003_4302                              ; $42f8: $20 $08

  ld a, $32                                       ; $42fa: $3e $32
  ld [$caf4], a                                   ; $42fc: $ea $f4 $ca
  ld [$caf5], a                                   ; $42ff: $ea $f5 $ca

jr_003_4302:
  xor a                                           ; $4302: $af
  ld hl, $cc39                                    ; $4303: $21 $39 $cc
  ld [hl+], a                                     ; $4306: $22
  ld [hl+], a                                     ; $4307: $22
  ld [hl+], a                                     ; $4308: $22
  ld [hl+], a                                     ; $4309: $22
  ld [hl+], a                                     ; $430a: $22
  dec a                                           ; $430b: $3d
  ld [hl+], a                                     ; $430c: $22
  ld [hl+], a                                     ; $430d: $22
  ld [hl+], a                                     ; $430e: $22
  ld a, $ff                                       ; $430f: $3e $ff
  ld [$cc29], a                                   ; $4311: $ea $29 $cc
  xor a                                           ; $4314: $af
  ld [$cb6a], a                                   ; $4315: $ea $6a $cb
  ld [$cb6b], a                                   ; $4318: $ea $6b $cb
  ret                                             ; $431b: $c9


  push hl                                         ; $431c: $e5
  ld l, $03                                       ; $431d: $2e $03
  ld h, a                                         ; $431f: $67
  call $00b0                                      ; $4320: $cd $b0 $00
  ld a, h                                         ; $4323: $7c
  cp $04                                          ; $4324: $fe $04
  jr c, jr_003_4329                               ; $4326: $38 $01

  xor a                                           ; $4328: $af

jr_003_4329:
  pop hl                                          ; $4329: $e1
  ret                                             ; $432a: $c9


Call_003_432b:
  ldh a, [$ffd6]                                  ; $432b: $f0 $d6
  ret                                             ; $432d: $c9


Call_003_432e:
  ld a, [$cc49]                                   ; $432e: $fa $49 $cc
  cp $07                                          ; $4331: $fe $07
  jr nz, jr_003_433a                              ; $4333: $20 $05

  ld hl, $5436                                    ; $4335: $21 $36 $54
  jr jr_003_433d                                  ; $4338: $18 $03

jr_003_433a:
  ld hl, $5431                                    ; $433a: $21 $31 $54

jr_003_433d:
  call Call_000_33f3                              ; $433d: $cd $f3 $33

  db $01, $33, $55

  ld a, [$cebd]                                   ; $4343: $fa $bd $ce
  or a                                            ; $4346: $b7
  jr z, jr_003_436d                               ; $4347: $28 $24

  ldh a, [rSVBK]                                  ; $4349: $f0 $70
  push af                                         ; $434b: $f5
  ld a, $06                                       ; $434c: $3e $06
  ldh [rSVBK], a                                  ; $434e: $e0 $70
  ld a, [$ddc7]                                   ; $4350: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $4353: $e0 $bd
  pop af                                          ; $4355: $f1
  ldh [rSVBK], a                                  ; $4356: $e0 $70
  ldh a, [$ffbd]                                  ; $4358: $f0 $bd
  cp $01                                          ; $435a: $fe $01
  jr z, jr_003_4362                               ; $435c: $28 $04

  ld a, $02                                       ; $435e: $3e $02
  jr jr_003_4364                                  ; $4360: $18 $02

jr_003_4362:
  ld a, $03                                       ; $4362: $3e $03

jr_003_4364:
  ldh [$ff9a], a                                  ; $4364: $e0 $9a
  ld a, $7b                                       ; $4366: $3e $7b
  call Call_000_04e0                              ; $4368: $cd $e0 $04
  jr jr_003_4376                                  ; $436b: $18 $09

jr_003_436d:
  ld a, $fe                                       ; $436d: $3e $fe
  ldh [$ff9a], a                                  ; $436f: $e0 $9a
  ld a, $7b                                       ; $4371: $3e $7b
  call Call_000_04e0                              ; $4373: $cd $e0 $04

jr_003_4376:
  ldh a, [rSVBK]                                  ; $4376: $f0 $70
  push af                                         ; $4378: $f5
  ld a, $06                                       ; $4379: $3e $06
  ldh [rSVBK], a                                  ; $437b: $e0 $70
  ld a, [$ddc7]                                   ; $437d: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $4380: $e0 $bd
  pop af                                          ; $4382: $f1
  ldh [rSVBK], a                                  ; $4383: $e0 $70
  ldh a, [$ffbd]                                  ; $4385: $f0 $bd
  cp $01                                          ; $4387: $fe $01
  jr z, jr_003_439b                               ; $4389: $28 $10

  cp $04                                          ; $438b: $fe $04
  jr z, jr_003_4392                               ; $438d: $28 $03

  xor a                                           ; $438f: $af
  jr jr_003_439d                                  ; $4390: $18 $0b

jr_003_4392:
  ld a, $02                                       ; $4392: $3e $02
  ld [$cebf], a                                   ; $4394: $ea $bf $ce
  ld a, $06                                       ; $4397: $3e $06
  jr jr_003_439d                                  ; $4399: $18 $02

jr_003_439b:
  ld a, $01                                       ; $439b: $3e $01

jr_003_439d:
  ldh [$ff9a], a                                  ; $439d: $e0 $9a
  ld a, $7b                                       ; $439f: $3e $7b
  call Call_000_04e0                              ; $43a1: $cd $e0 $04
  ld a, [$cebe]                                   ; $43a4: $fa $be $ce
  or a                                            ; $43a7: $b7
  jr z, jr_003_43b5                               ; $43a8: $28 $0b

  ld a, $04                                       ; $43aa: $3e $04
  ldh [$ff9a], a                                  ; $43ac: $e0 $9a
  ld a, $7b                                       ; $43ae: $3e $7b
  call Call_000_04e0                              ; $43b0: $cd $e0 $04
  jr jr_003_43de                                  ; $43b3: $18 $29

jr_003_43b5:
  ld a, [$cebf]                                   ; $43b5: $fa $bf $ce
  or a                                            ; $43b8: $b7
  jr z, jr_003_43d5                               ; $43b9: $28 $1a

  cp $02                                          ; $43bb: $fe $02
  jr z, jr_003_43ca                               ; $43bd: $28 $0b

  ld a, $05                                       ; $43bf: $3e $05
  ldh [$ff9a], a                                  ; $43c1: $e0 $9a
  ld a, $7b                                       ; $43c3: $3e $7b
  call Call_000_04e0                              ; $43c5: $cd $e0 $04
  jr jr_003_43de                                  ; $43c8: $18 $14

jr_003_43ca:
  ld a, $62                                       ; $43ca: $3e $62
  ldh [$ff9a], a                                  ; $43cc: $e0 $9a
  ld a, $7b                                       ; $43ce: $3e $7b
  call Call_000_04e0                              ; $43d0: $cd $e0 $04
  jr jr_003_43de                                  ; $43d3: $18 $09

jr_003_43d5:
  ld a, $fe                                       ; $43d5: $3e $fe
  ldh [$ff9a], a                                  ; $43d7: $e0 $9a
  ld a, $7b                                       ; $43d9: $3e $7b
  call Call_000_04e0                              ; $43db: $cd $e0 $04

jr_003_43de:
  call Call_003_4459                              ; $43de: $cd $59 $44
  jr nz, jr_003_4408                              ; $43e1: $20 $25

  ld a, [$cebd]                                   ; $43e3: $fa $bd $ce
  ld c, a                                         ; $43e6: $4f
  ld a, [$cebe]                                   ; $43e7: $fa $be $ce
  add c                                           ; $43ea: $81
  or a                                            ; $43eb: $b7
  jr nz, jr_003_43fa                              ; $43ec: $20 $0c

jr_003_43ee:
  ld a, $07                                       ; $43ee: $3e $07
  call Call_000_28e6                              ; $43f0: $cd $e6 $28
  inc a                                           ; $43f3: $3c
  cp $07                                          ; $43f4: $fe $07
  jr z, jr_003_43ee                               ; $43f6: $28 $f6

  jr jr_003_4400                                  ; $43f8: $18 $06

jr_003_43fa:
  ld a, $07                                       ; $43fa: $3e $07
  call Call_000_28e6                              ; $43fc: $cd $e6 $28
  inc a                                           ; $43ff: $3c

jr_003_4400:
  ld [$cc48], a                                   ; $4400: $ea $48 $cc
  call Call_003_6c19                              ; $4403: $cd $19 $6c
  ld b, $00                                       ; $4406: $06 $00

jr_003_4408:
  ld a, [hl+]                                     ; $4408: $2a
  push hl                                         ; $4409: $e5
  ld c, a                                         ; $440a: $4f
  or a                                            ; $440b: $b7
  jr z, jr_003_4417                               ; $440c: $28 $09

  ld a, b                                         ; $440e: $78
  ld hl, $cc48                                    ; $440f: $21 $48 $cc
  call Call_000_32c8                              ; $4412: $cd $c8 $32
  jr nz, jr_003_4431                              ; $4415: $20 $1a

jr_003_4417:
  ldh a, [rSVBK]                                  ; $4417: $f0 $70
  push af                                         ; $4419: $f5
  ld a, $05                                       ; $441a: $3e $05
  ldh [rSVBK], a                                  ; $441c: $e0 $70
  call Call_000_33f3                              ; $441e: $cd $f3 $33

  db $07, $08, $60

  ld [hl], $00                                    ; $4424: $36 $00
  ld de, $000a                                    ; $4426: $11 $0a $00
  add hl, de                                      ; $4429: $19
  ld [hl], $02                                    ; $442a: $36 $02
  pop af                                          ; $442c: $f1
  ldh [rSVBK], a                                  ; $442d: $e0 $70
  jr jr_003_444c                                  ; $442f: $18 $1b

jr_003_4431:
  ld a, c                                         ; $4431: $79
  sub $07                                         ; $4432: $d6 $07
  ld hl, $ce5b                                    ; $4434: $21 $5b $ce
  call Call_000_32c0                              ; $4437: $cd $c0 $32
  ld a, c                                         ; $443a: $79
  ldh [$ff9a], a                                  ; $443b: $e0 $9a
  ld a, $7b                                       ; $443d: $3e $7b
  call Call_000_04e0                              ; $443f: $cd $e0 $04
  ld a, b                                         ; $4442: $78
  add $03                                         ; $4443: $c6 $03
  ldh [$ff9a], a                                  ; $4445: $e0 $9a
  ld a, $b0                                       ; $4447: $3e $b0
  call Call_000_04e0                              ; $4449: $cd $e0 $04

jr_003_444c:
  pop hl                                          ; $444c: $e1
  inc b                                           ; $444d: $04
  ld a, b                                         ; $444e: $78
  cp $03                                          ; $444f: $fe $03
  jr nz, jr_003_4408                              ; $4451: $20 $b5

  ret                                             ; $4453: $c9


Call_003_4454:
  ld a, [$cc49]                                   ; $4454: $fa $49 $cc
  or a                                            ; $4457: $b7
  ret                                             ; $4458: $c9


Call_003_4459:
  ld a, [$cc49]                                   ; $4459: $fa $49 $cc
  or a                                            ; $445c: $b7
  ret z                                           ; $445d: $c8

  dec a                                           ; $445e: $3d
  ld hl, $6228                                    ; $445f: $21 $28 $62
  call ResolveIndexedPointer16                              ; $4462: $cd $8b $31
  xor a                                           ; $4465: $af
  ld [$cc48], a                                   ; $4466: $ea $48 $cc
  push de                                         ; $4469: $d5
  push hl                                         ; $446a: $e5
  ld de, $0103                                    ; $446b: $11 $03 $01

jr_003_446e:
  ld a, [hl+]                                     ; $446e: $2a
  cp $00                                          ; $446f: $fe $00
  jr z, jr_003_447a                               ; $4471: $28 $07

  ld a, [$cc48]                                   ; $4473: $fa $48 $cc
  or d                                            ; $4476: $b2
  ld [$cc48], a                                   ; $4477: $ea $48 $cc

jr_003_447a:
  rl d                                            ; $447a: $cb $12
  dec e                                           ; $447c: $1d
  jr nz, jr_003_446e                              ; $447d: $20 $ef

  pop hl                                          ; $447f: $e1
  pop de                                          ; $4480: $d1
  inc a                                           ; $4481: $3c
  ret                                             ; $4482: $c9


  push bc                                         ; $4483: $c5
  ld bc, $0003                                    ; $4484: $01 $03 $00

Jump_003_4487:
  ld a, c                                         ; $4487: $79
  sub $03                                         ; $4488: $d6 $03
  ld hl, $cc48                                    ; $448a: $21 $48 $cc
  call Call_000_32c8                              ; $448d: $cd $c8 $32
  jp z, Jump_003_452f                             ; $4490: $ca $2f $45

  ldh a, [rSVBK]                                  ; $4493: $f0 $70
  push af                                         ; $4495: $f5
  ld a, $05                                       ; $4496: $3e $05
  ldh [rSVBK], a                                  ; $4498: $e0 $70
  ld a, c                                         ; $449a: $79
  call Call_003_4976                              ; $449b: $cd $76 $49
  ld a, [hl]                                      ; $449e: $7e
  ldh [$ffbd], a                                  ; $449f: $e0 $bd
  pop af                                          ; $44a1: $f1
  ldh [rSVBK], a                                  ; $44a2: $e0 $70
  ldh a, [$ffbd]                                  ; $44a4: $f0 $bd
  cp $07                                          ; $44a6: $fe $07
  jp c, Jump_003_452f                             ; $44a8: $da $2f $45

  sub $07                                         ; $44ab: $d6 $07
  ld l, a                                         ; $44ad: $6f
  ld h, $15                                       ; $44ae: $26 $15
  call Call_000_009c                              ; $44b0: $cd $9c $00
  push hl                                         ; $44b3: $e5
  ld de, $5784                                    ; $44b4: $11 $84 $57
  add hl, de                                      ; $44b7: $19
  ld a, [hl]                                      ; $44b8: $7e
  call Call_000_33f3                              ; $44b9: $cd $f3 $33

  db $01, $ef, $78

  pop hl                                          ; $44bf: $e1
  ld de, $5793                                    ; $44c0: $11 $93 $57
  add hl, de                                      ; $44c3: $19
  push hl                                         ; $44c4: $e5
  ld a, [hl+]                                     ; $44c5: $2a
  ld h, [hl]                                      ; $44c6: $66
  ld l, a                                         ; $44c7: $6f
  ld a, [$cc39]                                   ; $44c8: $fa $39 $cc
  ld e, a                                         ; $44cb: $5f
  ld a, [$cc3a]                                   ; $44cc: $fa $3a $cc
  ld d, a                                         ; $44cf: $57
  add hl, de                                      ; $44d0: $19
  ld a, l                                         ; $44d1: $7d
  ld [$cc39], a                                   ; $44d2: $ea $39 $cc
  ld a, h                                         ; $44d5: $7c
  ld [$cc3a], a                                   ; $44d6: $ea $3a $cc
  pop hl                                          ; $44d9: $e1
  inc hl                                          ; $44da: $23
  inc hl                                          ; $44db: $23
  push hl                                         ; $44dc: $e5
  ld a, [hl+]                                     ; $44dd: $2a
  ld h, [hl]                                      ; $44de: $66
  ld l, a                                         ; $44df: $6f
  ld a, [$cc3b]                                   ; $44e0: $fa $3b $cc
  ld e, a                                         ; $44e3: $5f
  ld a, [$cc3c]                                   ; $44e4: $fa $3c $cc
  ld d, a                                         ; $44e7: $57
  add hl, de                                      ; $44e8: $19
  ld a, l                                         ; $44e9: $7d
  ld [$cc3b], a                                   ; $44ea: $ea $3b $cc
  ld a, h                                         ; $44ed: $7c
  ld [$cc3c], a                                   ; $44ee: $ea $3c $cc
  pop hl                                          ; $44f1: $e1
  inc hl                                          ; $44f2: $23
  inc hl                                          ; $44f3: $23
  ld a, [hl+]                                     ; $44f4: $2a
  push hl                                         ; $44f5: $e5
  call Call_000_28e6                              ; $44f6: $cd $e6 $28
  ld e, a                                         ; $44f9: $5f
  ld d, $00                                       ; $44fa: $16 $00
  ld hl, $cc3b                                    ; $44fc: $21 $3b $cc
  ld a, [hl+]                                     ; $44ff: $2a
  ld h, [hl]                                      ; $4500: $66
  ld l, a                                         ; $4501: $6f
  add hl, de                                      ; $4502: $19
  ld a, l                                         ; $4503: $7d
  ld [$cc3b], a                                   ; $4504: $ea $3b $cc
  ld a, h                                         ; $4507: $7c
  ld [$cc3c], a                                   ; $4508: $ea $3c $cc
  pop hl                                          ; $450b: $e1
  ld a, [hl]                                      ; $450c: $7e
  cp $ff                                          ; $450d: $fe $ff
  jr z, jr_003_452f                               ; $450f: $28 $1e

  ld e, a                                         ; $4511: $5f
  ld a, [$cc4a]                                   ; $4512: $fa $4a $cc
  bit 5, a                                        ; $4515: $cb $6f
  jr nz, jr_003_4521                              ; $4517: $20 $08

  ld a, $03                                       ; $4519: $3e $03
  call Call_000_28e6                              ; $451b: $cd $e6 $28
  or a                                            ; $451e: $b7
  jr nz, jr_003_452f                              ; $451f: $20 $0e

jr_003_4521:
  ld hl, $cc3d                                    ; $4521: $21 $3d $cc
  ld a, $ff                                       ; $4524: $3e $ff

jr_003_4526:
  inc hl                                          ; $4526: $23
  cp [hl]                                         ; $4527: $be
  jr nz, jr_003_4526                              ; $4528: $20 $fc

  ld [hl], e                                      ; $452a: $73
  ld hl, $cc3d                                    ; $452b: $21 $3d $cc
  inc [hl]                                        ; $452e: $34

Jump_003_452f:
jr_003_452f:
  inc c                                           ; $452f: $0c
  ld a, c                                         ; $4530: $79
  cp $06                                          ; $4531: $fe $06
  jp nz, Jump_003_4487                            ; $4533: $c2 $87 $44

  pop bc                                          ; $4536: $c1
  ret                                             ; $4537: $c9


  add [hl]                                        ; $4538: $86
  ld [hl+], a                                     ; $4539: $22
  ld a, $00                                       ; $453a: $3e $00
  adc [hl]                                        ; $453c: $8e
  ld [hl+], a                                     ; $453d: $22
  ret                                             ; $453e: $c9


  add [hl]                                        ; $453f: $86
  ld [hl+], a                                     ; $4540: $22
  ld a, $00                                       ; $4541: $3e $00
  adc [hl]                                        ; $4543: $8e
  ld [hl-], a                                     ; $4544: $32
  ret                                             ; $4545: $c9


  ldh a, [rSVBK]                                  ; $4546: $f0 $70
  push af                                         ; $4548: $f5
  ld a, $05                                       ; $4549: $3e $05
  ldh [rSVBK], a                                  ; $454b: $e0 $70
  call Call_003_4973                              ; $454d: $cd $73 $49
  push hl                                         ; $4550: $e5
  ld a, [hl]                                      ; $4551: $7e
  cp $07                                          ; $4552: $fe $07
  jr c, jr_003_4564                               ; $4554: $38 $0e

  sub $07                                         ; $4556: $d6 $07
  ld l, a                                         ; $4558: $6f
  ld h, $15                                       ; $4559: $26 $15
  call Call_000_009c                              ; $455b: $cd $9c $00
  ld de, $5784                                    ; $455e: $11 $84 $57
  add hl, de                                      ; $4561: $19
  jr jr_003_4598                                  ; $4562: $18 $34

jr_003_4564:
  or a                                            ; $4564: $b7
  jr z, jr_003_457b                               ; $4565: $28 $14

  cp $01                                          ; $4567: $fe $01
  jr z, jr_003_457b                               ; $4569: $28 $10

  cp $02                                          ; $456b: $fe $02
  jr z, jr_003_4580                               ; $456d: $28 $11

  cp $03                                          ; $456f: $fe $03
  jr z, jr_003_4580                               ; $4571: $28 $0d

  cp $04                                          ; $4573: $fe $04
  jr z, jr_003_4585                               ; $4575: $28 $0e

  cp $05                                          ; $4577: $fe $05
  jr z, jr_003_458a                               ; $4579: $28 $0f

jr_003_457b:
  ld hl, $cdd1                                    ; $457b: $21 $d1 $cd
  jr jr_003_458d                                  ; $457e: $18 $0d

jr_003_4580:
  ld hl, $ce03                                    ; $4580: $21 $03 $ce
  jr jr_003_458d                                  ; $4583: $18 $08

jr_003_4585:
  ld hl, $cdea                                    ; $4585: $21 $ea $cd
  jr jr_003_458d                                  ; $4588: $18 $03

jr_003_458a:
  ld hl, $ce1c                                    ; $458a: $21 $1c $ce

jr_003_458d:
  pop de                                          ; $458d: $d1
  inc de                                          ; $458e: $13
  inc hl                                          ; $458f: $23
  call Call_000_0245                              ; $4590: $cd $45 $02
  push bc                                         ; $4593: $c5
  ld c, $00                                       ; $4594: $0e $00
  jr jr_003_45a6                                  ; $4596: $18 $0e

jr_003_4598:
  pop de                                          ; $4598: $d1
  push bc                                         ; $4599: $c5
  ld a, [de]                                      ; $459a: $1a
  ld c, a                                         ; $459b: $4f
  inc de                                          ; $459c: $13
  inc hl                                          ; $459d: $23
  push hl                                         ; $459e: $e5
  call Call_000_0269                              ; $459f: $cd $69 $02
  pop hl                                          ; $45a2: $e1
  call Call_000_0251                              ; $45a3: $cd $51 $02

jr_003_45a6:
  ld l, e                                         ; $45a6: $6b
  ld h, d                                         ; $45a7: $62
  xor a                                           ; $45a8: $af
  ld [hl+], a                                     ; $45a9: $22
  ld [hl+], a                                     ; $45aa: $22
  ld [hl], c                                      ; $45ab: $71
  inc hl                                          ; $45ac: $23
  ld [hl+], a                                     ; $45ad: $22
  ld [hl+], a                                     ; $45ae: $22
  ld [hl+], a                                     ; $45af: $22
  ld [hl+], a                                     ; $45b0: $22
  ld [hl], a                                      ; $45b1: $77
  pop bc                                          ; $45b2: $c1
  pop af                                          ; $45b3: $f1
  ldh [rSVBK], a                                  ; $45b4: $e0 $70
  ret                                             ; $45b6: $c9


  ld a, [$cc25]                                   ; $45b7: $fa $25 $cc
  ld l, $01                                       ; $45ba: $2e $01
  jp Jump_003_48de                                ; $45bc: $c3 $de $48


Call_003_45bf:
  ld a, [$cc25]                                   ; $45bf: $fa $25 $cc
  ld l, $09                                       ; $45c2: $2e $09
  jp Jump_003_48de                                ; $45c4: $c3 $de $48


Jump_003_45c7:
  xor a                                           ; $45c7: $af
  ld [$cc2c], a                                   ; $45c8: $ea $2c $cc
  ld a, [$cc25]                                   ; $45cb: $fa $25 $cc
  ld l, $0c                                       ; $45ce: $2e $0c
  jp Jump_003_48de                                ; $45d0: $c3 $de $48


  ld a, [$cc29]                                   ; $45d3: $fa $29 $cc
  cp $16                                          ; $45d6: $fe $16
  jr z, jr_003_45e3                               ; $45d8: $28 $09

  cp $17                                          ; $45da: $fe $17
  jr nz, jr_003_45e8                              ; $45dc: $20 $0a

  call Call_003_468d                              ; $45de: $cd $8d $46
  jr jr_003_45eb                                  ; $45e1: $18 $08

jr_003_45e3:
  call Call_003_4683                              ; $45e3: $cd $83 $46
  jr jr_003_45eb                                  ; $45e6: $18 $03

jr_003_45e8:
  call Call_003_46a9                              ; $45e8: $cd $a9 $46

jr_003_45eb:
  ld a, [$cc25]                                   ; $45eb: $fa $25 $cc
  cp $03                                          ; $45ee: $fe $03
  jr c, jr_003_4622                               ; $45f0: $38 $30

  ld a, [$cc2a]                                   ; $45f2: $fa $2a $cc
  cp $04                                          ; $45f5: $fe $04
  jr nc, jr_003_4627                              ; $45f7: $30 $2e

  rst $18                                         ; $45f9: $df
  ld a, [$cc2a]                                   ; $45fa: $fa $2a $cc
  dec a                                           ; $45fd: $3d
  push af                                         ; $45fe: $f5
  ldh [$ffbd], a                                  ; $45ff: $e0 $bd
  ldh a, [rSVBK]                                  ; $4601: $f0 $70
  push af                                         ; $4603: $f5
  ld a, $05                                       ; $4604: $3e $05
  ldh [rSVBK], a                                  ; $4606: $e0 $70
  ldh a, [$ffbd]                                  ; $4608: $f0 $bd
  call Call_003_4976                              ; $460a: $cd $76 $49
  ld a, [hl]                                      ; $460d: $7e
  ldh [$ffbd], a                                  ; $460e: $e0 $bd
  pop af                                          ; $4610: $f1
  ldh [rSVBK], a                                  ; $4611: $e0 $70
  ldh a, [$ffbd]                                  ; $4613: $f0 $bd
  call Call_003_5296                              ; $4615: $cd $96 $52
  pop af                                          ; $4618: $f1
  call Call_003_4976                              ; $4619: $cd $76 $49
  call Call_003_5415                              ; $461c: $cd $15 $54
  rst $20                                         ; $461f: $e7
  jr jr_003_4627                                  ; $4620: $18 $05

jr_003_4622:
  rst $18                                         ; $4622: $df
  call Call_003_5412                              ; $4623: $cd $12 $54
  rst $20                                         ; $4626: $e7

jr_003_4627:
  call Call_000_3427                              ; $4627: $cd $27 $34

  db $07, $b8, $5e

  call Call_003_46a9                              ; $462d: $cd $a9 $46
  rst $18                                         ; $4630: $df
  call Call_003_5412                              ; $4631: $cd $12 $54
  jp RST_20                                       ; $4634: $c3 $20 $00


Call_003_4637:
  push bc                                         ; $4637: $c5
  push de                                         ; $4638: $d5
  push hl                                         ; $4639: $e5
  ldh [$ffa0], a                                  ; $463a: $e0 $a0
  ld a, l                                         ; $463c: $7d
  ld [$cb51], a                                   ; $463d: $ea $51 $cb
  ld a, h                                         ; $4640: $7c
  ld [$cb52], a                                   ; $4641: $ea $52 $cb
  ld b, $03                                       ; $4644: $06 $03

jr_003_4646:
  ld de, $000a                                    ; $4646: $11 $0a $00
  call Call_000_322f                              ; $4649: $cd $2f $32
  push de                                         ; $464c: $d5
  dec b                                           ; $464d: $05
  jr nz, jr_003_4646                              ; $464e: $20 $f6

  ld b, $03                                       ; $4650: $06 $03

jr_003_4652:
  pop hl                                          ; $4652: $e1
  ld a, l                                         ; $4653: $7d
  or h                                            ; $4654: $b4
  jr nz, jr_003_465b                              ; $4655: $20 $04

  dec b                                           ; $4657: $05
  jr nz, jr_003_4652                              ; $4658: $20 $f8

  inc b                                           ; $465a: $04

jr_003_465b:
  push hl                                         ; $465b: $e5

jr_003_465c:
  pop hl                                          ; $465c: $e1
  ld a, b                                         ; $465d: $78
  dec a                                           ; $465e: $3d
  swap a                                          ; $465f: $cb $37
  or l                                            ; $4661: $b5
  ldh [$ff9a], a                                  ; $4662: $e0 $9a
  ld a, [$cc2a]                                   ; $4664: $fa $2a $cc
  ldh [$ff9f], a                                  ; $4667: $e0 $9f
  ld a, $7d                                       ; $4669: $3e $7d
  call Call_000_04e0                              ; $466b: $cd $e0 $04
  dec b                                           ; $466e: $05
  jr nz, jr_003_465c                              ; $466f: $20 $eb

  pop hl                                          ; $4671: $e1
  pop de                                          ; $4672: $d1
  pop bc                                          ; $4673: $c1
  ret                                             ; $4674: $c9


  ldh a, [rSVBK]                                  ; $4675: $f0 $70
  push af                                         ; $4677: $f5
  ld a, $05                                       ; $4678: $3e $05
  ldh [rSVBK], a                                  ; $467a: $e0 $70
  push bc                                         ; $467c: $c5
  xor a                                           ; $467d: $af
  ld [$cb6b], a                                   ; $467e: $ea $6b $cb
  jr jr_003_46c8                                  ; $4681: $18 $45

Call_003_4683:
  call Call_000_33f3                              ; $4683: $cd $f3 $33
  ld a, [bc]                                      ; $4686: $0a
  ld b, l                                         ; $4687: $45
  ld a, a                                         ; $4688: $7f
  jr z, jr_003_4697                               ; $4689: $28 $0c

  jr jr_003_46a9                                  ; $468b: $18 $1c

Call_003_468d:
  call Call_000_33f3                              ; $468d: $cd $f3 $33

  db $0a, $4a, $7f

  jr z, jr_003_4697                               ; $4693: $28 $02

  jr jr_003_46a9                                  ; $4695: $18 $12

jr_003_4697:
  ldh a, [rSVBK]                                  ; $4697: $f0 $70
  push af                                         ; $4699: $f5
  ld a, $05                                       ; $469a: $3e $05
  ldh [rSVBK], a                                  ; $469c: $e0 $70
  push bc                                         ; $469e: $c5
  ld a, $04                                       ; $469f: $3e $04
  ld [$cb6b], a                                   ; $46a1: $ea $6b $cb
  ld hl, $0001                                    ; $46a4: $21 $01 $00
  jr jr_003_46c8                                  ; $46a7: $18 $1f

Call_003_46a9:
jr_003_46a9:
  ld a, [$cc2a]                                   ; $46a9: $fa $2a $cc
  cp $07                                          ; $46ac: $fe $07
  jp z, Jump_003_46d3                             ; $46ae: $ca $d3 $46

Call_003_46b1:
  ldh a, [rSVBK]                                  ; $46b1: $f0 $70
  push af                                         ; $46b3: $f5
  ld a, $05                                       ; $46b4: $3e $05
  ldh [rSVBK], a                                  ; $46b6: $e0 $70
  push bc                                         ; $46b8: $c5
  xor a                                           ; $46b9: $af
  ld [$cb6b], a                                   ; $46ba: $ea $6b $cb
  call Call_003_470d                              ; $46bd: $cd $0d $47
  ld hl, $0000                                    ; $46c0: $21 $00 $00
  jr z, jr_003_46c8                               ; $46c3: $28 $03

  call Call_003_477f                              ; $46c5: $cd $7f $47

jr_003_46c8:
  call Call_000_33f3                              ; $46c8: $cd $f3 $33

  db $1e, $4b, $5e

  pop bc                                          ; $46ce: $c1
  pop af                                          ; $46cf: $f1
  ldh [rSVBK], a                                  ; $46d0: $e0 $70
  ret                                             ; $46d2: $c9


Jump_003_46d3:
  ld a, $01                                       ; $46d3: $3e $01
  ld [$cb6e], a                                   ; $46d5: $ea $6e $cb
  ld a, [$cb6c]                                   ; $46d8: $fa $6c $cb
  ld [$cb6d], a                                   ; $46db: $ea $6d $cb
  ld a, $04                                       ; $46de: $3e $04
  ld [$cc2a], a                                   ; $46e0: $ea $2a $cc
  call Call_003_484a                              ; $46e3: $cd $4a $48
  bit 1, a                                        ; $46e6: $cb $4f
  call z, Call_003_46b1                           ; $46e8: $cc $b1 $46
  ld a, $05                                       ; $46eb: $3e $05
  ld [$cc2a], a                                   ; $46ed: $ea $2a $cc
  call Call_003_484a                              ; $46f0: $cd $4a $48
  bit 1, a                                        ; $46f3: $cb $4f
  call z, Call_003_46b1                           ; $46f5: $cc $b1 $46
  ld a, $06                                       ; $46f8: $3e $06
  ld [$cc2a], a                                   ; $46fa: $ea $2a $cc
  call Call_003_484a                              ; $46fd: $cd $4a $48
  bit 1, a                                        ; $4700: $cb $4f
  jr nz, jr_003_4707                              ; $4702: $20 $03

  call Call_003_46b1                              ; $4704: $cd $b1 $46

jr_003_4707:
  ld a, $07                                       ; $4707: $3e $07
  ld [$cc2a], a                                   ; $4709: $ea $2a $cc
  ret                                             ; $470c: $c9


Call_003_470d:
  ld a, [$cc2a]                                   ; $470d: $fa $2a $cc
  dec a                                           ; $4710: $3d
  call Call_003_4976                              ; $4711: $cd $76 $49
  ld de, $000a                                    ; $4714: $11 $0a $00
  add hl, de                                      ; $4717: $19
  ld a, [hl]                                      ; $4718: $7e
  and $80                                         ; $4719: $e6 $80
  jr z, jr_003_4728                               ; $471b: $28 $0b

  ld a, $64                                       ; $471d: $3e $64
  call Call_000_28e6                              ; $471f: $cd $e6 $28
  cp $28                                          ; $4722: $fe $28
  jr c, jr_003_4748                               ; $4724: $38 $22

  jr jr_003_4746                                  ; $4726: $18 $1e

jr_003_4728:
  call Call_003_4973                              ; $4728: $cd $73 $49
  ld a, [hl]                                      ; $472b: $7e
  cp $07                                          ; $472c: $fe $07
  jr nc, jr_003_473b                              ; $472e: $30 $0b

  ld a, $64                                       ; $4730: $3e $64
  call Call_000_28e6                              ; $4732: $cd $e6 $28
  cp $5d                                          ; $4735: $fe $5d
  jr c, jr_003_4748                               ; $4737: $38 $0f

  jr jr_003_4746                                  ; $4739: $18 $0b

jr_003_473b:
  ld a, $64                                       ; $473b: $3e $64
  call Call_000_28e6                              ; $473d: $cd $e6 $28
  cp $46                                          ; $4740: $fe $46
  jr c, jr_003_4748                               ; $4742: $38 $04

  jr jr_003_4746                                  ; $4744: $18 $00

jr_003_4746:
  xor a                                           ; $4746: $af
  ret                                             ; $4747: $c9


jr_003_4748:
  ld a, $02                                       ; $4748: $3e $02
  dec a                                           ; $474a: $3d
  ret                                             ; $474b: $c9


Call_003_474c:
  ld a, [$cc25]                                   ; $474c: $fa $25 $cc
  or a                                            ; $474f: $b7
  jr nz, jr_003_475c                              ; $4750: $20 $0a

  ld a, $0a                                       ; $4752: $3e $0a
  call Call_000_28e6                              ; $4754: $cd $e6 $28
  or a                                            ; $4757: $b7
  jr z, jr_003_4764                               ; $4758: $28 $0a

  xor a                                           ; $475a: $af
  ret                                             ; $475b: $c9


jr_003_475c:
  ldh a, [rDIV]                                   ; $475c: $f0 $04
  and $3f                                         ; $475e: $e6 $3f
  jr z, jr_003_4764                               ; $4760: $28 $02

  xor a                                           ; $4762: $af
  ret                                             ; $4763: $c9


jr_003_4764:
  ld a, $02                                       ; $4764: $3e $02
  ld [$cb6b], a                                   ; $4766: $ea $6b $cb
  add hl, hl                                      ; $4769: $29
  ld a, $01                                       ; $476a: $3e $01
  or a                                            ; $476c: $b7
  ret                                             ; $476d: $c9


Call_003_476e:
  push hl                                         ; $476e: $e5
  ld a, [$cc29]                                   ; $476f: $fa $29 $cc
  cp $ff                                          ; $4772: $fe $ff
  jr nz, jr_003_4779                              ; $4774: $20 $03

  xor a                                           ; $4776: $af
  jr jr_003_477d                                  ; $4777: $18 $04

jr_003_4779:
  ld hl, $5f10                                    ; $4779: $21 $10 $5f
  rst $08                                         ; $477c: $cf

jr_003_477d:
  pop hl                                          ; $477d: $e1
  ret                                             ; $477e: $c9


Call_003_477f:
  ld a, c                                         ; $477f: $79
  rst $00                                         ; $4780: $c7

  db $89, $47, $ad, $47, $bd, $47, $cd, $47

  ldh a, [rSVBK]                                  ; $4789: $f0 $70
  push af                                         ; $478b: $f5
  ld a, $05                                       ; $478c: $3e $05
  ldh [rSVBK], a                                  ; $478e: $e0 $70
  push de                                         ; $4790: $d5
  ld de, $000d                                    ; $4791: $11 $0d $00
  call Call_003_4834                              ; $4794: $cd $34 $48
  ld a, $0b                                       ; $4797: $3e $0b
  call Call_003_4840                              ; $4799: $cd $40 $48
  call Call_003_47f1                              ; $479c: $cd $f1 $47
  call Call_003_474c                              ; $479f: $cd $4c $47
  call Call_000_33f3                              ; $47a2: $cd $f3 $33

  db $09, $3b, $68

  pop de                                          ; $47a8: $d1
  pop af                                          ; $47a9: $f1
  ldh [rSVBK], a                                  ; $47aa: $e0 $70
  ret                                             ; $47ac: $c9


  ldh a, [rSVBK]                                  ; $47ad: $f0 $70
  push af                                         ; $47af: $f5
  ld a, $05                                       ; $47b0: $3e $05
  ldh [rSVBK], a                                  ; $47b2: $e0 $70
  push de                                         ; $47b4: $d5
  ld de, $000e                                    ; $47b5: $11 $0e $00
  call Call_003_4834                              ; $47b8: $cd $34 $48
  jr jr_003_47db                                  ; $47bb: $18 $1e

  ldh a, [rSVBK]                                  ; $47bd: $f0 $70
  push af                                         ; $47bf: $f5
  ld a, $05                                       ; $47c0: $3e $05
  ldh [rSVBK], a                                  ; $47c2: $e0 $70
  push de                                         ; $47c4: $d5
  ld de, $000f                                    ; $47c5: $11 $0f $00
  call Call_003_4834                              ; $47c8: $cd $34 $48
  jr jr_003_47db                                  ; $47cb: $18 $0e

  ldh a, [rSVBK]                                  ; $47cd: $f0 $70
  push af                                         ; $47cf: $f5
  ld a, $05                                       ; $47d0: $3e $05
  ldh [rSVBK], a                                  ; $47d2: $e0 $70
  push de                                         ; $47d4: $d5
  ld de, $0010                                    ; $47d5: $11 $10 $00
  call Call_003_4834                              ; $47d8: $cd $34 $48

jr_003_47db:
  ld a, $0c                                       ; $47db: $3e $0c
  call Call_003_4840                              ; $47dd: $cd $40 $48
  call Call_003_47ff                              ; $47e0: $cd $ff $47
  call Call_003_474c                              ; $47e3: $cd $4c $47
  call Call_000_33f3                              ; $47e6: $cd $f3 $33

  db $09, $3b, $68

  pop de                                          ; $47ec: $d1
  pop af                                          ; $47ed: $f1
  ldh [rSVBK], a                                  ; $47ee: $e0 $70
  ret                                             ; $47f0: $c9


Call_003_47f1:
  call Call_000_0092                              ; $47f1: $cd $92 $00
  call Call_003_476e                              ; $47f4: $cd $6e $47
  rst $08                                         ; $47f7: $cf
  add hl, hl                                      ; $47f8: $29
  add hl, de                                      ; $47f9: $19
  sra h                                           ; $47fa: $cb $2c
  rr l                                            ; $47fc: $cb $1d
  ret                                             ; $47fe: $c9


Call_003_47ff:
  call Call_000_0092                              ; $47ff: $cd $92 $00
  add hl, de                                      ; $4802: $19
  sra h                                           ; $4803: $cb $2c
  rr l                                            ; $4805: $cb $1d
  call Call_003_476e                              ; $4807: $cd $6e $47
  ld e, a                                         ; $480a: $5f
  ld d, $00                                       ; $480b: $16 $00
  ld h, a                                         ; $480d: $67
  ld a, l                                         ; $480e: $7d
  rla                                             ; $480f: $17
  push af                                         ; $4810: $f5
  jr nc, jr_003_4817                              ; $4811: $30 $04

  ld a, l                                         ; $4813: $7d
  cpl                                             ; $4814: $2f
  inc a                                           ; $4815: $3c
  ld l, a                                         ; $4816: $6f

jr_003_4817:
  call Call_000_009c                              ; $4817: $cd $9c $00
  pop af                                          ; $481a: $f1
  call c, Call_000_007b                           ; $481b: $dc $7b $00
  sra h                                           ; $481e: $cb $2c
  rr l                                            ; $4820: $cb $1d
  sra h                                           ; $4822: $cb $2c
  rr l                                            ; $4824: $cb $1d
  sra h                                           ; $4826: $cb $2c
  rr l                                            ; $4828: $cb $1d
  sra h                                           ; $482a: $cb $2c
  rr l                                            ; $482c: $cb $1d
  sra h                                           ; $482e: $cb $2c
  rr l                                            ; $4830: $cb $1d
  add hl, de                                      ; $4832: $19
  ret                                             ; $4833: $c9


Call_003_4834:
  ld a, [$cc2a]                                   ; $4834: $fa $2a $cc
  dec a                                           ; $4837: $3d
  call Call_003_4976                              ; $4838: $cd $76 $49
  add hl, de                                      ; $483b: $19
  ld e, [hl]                                      ; $483c: $5e
  ld d, $00                                       ; $483d: $16 $00
  ret                                             ; $483f: $c9


Call_003_4840:
  push af                                         ; $4840: $f5
  call Call_003_4973                              ; $4841: $cd $73 $49
  pop af                                          ; $4844: $f1
  rst $08                                         ; $4845: $cf
  ld l, [hl]                                      ; $4846: $6e
  ld h, $00                                       ; $4847: $26 $00
  ret                                             ; $4849: $c9


Call_003_484a:
  ldh [$ffbd], a                                  ; $484a: $e0 $bd
  ldh a, [rSVBK]                                  ; $484c: $f0 $70
  push af                                         ; $484e: $f5
  ld a, $05                                       ; $484f: $3e $05
  ldh [rSVBK], a                                  ; $4851: $e0 $70
  ldh a, [$ffbd]                                  ; $4853: $f0 $bd
  push de                                         ; $4855: $d5
  call Call_003_4976                              ; $4856: $cd $76 $49
  ld de, $000a                                    ; $4859: $11 $0a $00
  add hl, de                                      ; $485c: $19
  ld a, [hl]                                      ; $485d: $7e
  pop de                                          ; $485e: $d1
  ldh [$ffbd], a                                  ; $485f: $e0 $bd
  pop af                                          ; $4861: $f1
  ldh [rSVBK], a                                  ; $4862: $e0 $70
  ldh a, [$ffbd]                                  ; $4864: $f0 $bd
  ret                                             ; $4866: $c9


Call_003_4867:
  push de                                         ; $4867: $d5
  push hl                                         ; $4868: $e5
  ldh [$ffbd], a                                  ; $4869: $e0 $bd
  ldh a, [rSVBK]                                  ; $486b: $f0 $70
  push af                                         ; $486d: $f5
  ld a, $05                                       ; $486e: $3e $05
  ldh [rSVBK], a                                  ; $4870: $e0 $70
  ldh a, [$ffbd]                                  ; $4872: $f0 $bd
  call Call_003_4976                              ; $4874: $cd $76 $49
  ld a, [hl]                                      ; $4877: $7e
  ldh [$ffbd], a                                  ; $4878: $e0 $bd
  pop af                                          ; $487a: $f1
  ldh [rSVBK], a                                  ; $487b: $e0 $70
  ldh a, [$ffbd]                                  ; $487d: $f0 $bd
  pop de                                          ; $487f: $d1
  pop hl                                          ; $4880: $e1
  cp $fe                                          ; $4881: $fe $fe
  jr z, jr_003_4887                               ; $4883: $28 $02

  xor a                                           ; $4885: $af
  ret                                             ; $4886: $c9


jr_003_4887:
  ld a, $02                                       ; $4887: $3e $02
  dec a                                           ; $4889: $3d
  ret                                             ; $488a: $c9


Call_003_488b:
  push de                                         ; $488b: $d5
  push hl                                         ; $488c: $e5
  push af                                         ; $488d: $f5
  call Call_003_484a                              ; $488e: $cd $4a $48
  call Call_003_48a0                              ; $4891: $cd $a0 $48
  jr nz, jr_003_489b                              ; $4894: $20 $05

  pop af                                          ; $4896: $f1
  push af                                         ; $4897: $f5
  call Call_003_4867                              ; $4898: $cd $67 $48

jr_003_489b:
  pop hl                                          ; $489b: $e1
  ld a, h                                         ; $489c: $7c
  pop hl                                          ; $489d: $e1
  pop de                                          ; $489e: $d1
  ret                                             ; $489f: $c9


Call_003_48a0:
  ld d, a                                         ; $48a0: $57
  ldh a, [$ffcd]                                  ; $48a1: $f0 $cd
  cp $25                                          ; $48a3: $fe $25
  jr z, jr_003_48ab                               ; $48a5: $28 $04

  ld a, d                                         ; $48a7: $7a
  and $02                                         ; $48a8: $e6 $02
  ret                                             ; $48aa: $c9


jr_003_48ab:
  ld a, d                                         ; $48ab: $7a
  and $02                                         ; $48ac: $e6 $02
  jr z, jr_003_48b7                               ; $48ae: $28 $07

  ld a, d                                         ; $48b0: $7a
  call Call_003_4867                              ; $48b1: $cd $67 $48
  ret nz                                          ; $48b4: $c0

  xor a                                           ; $48b5: $af
  ret                                             ; $48b6: $c9


jr_003_48b7:
  ld a, $01                                       ; $48b7: $3e $01
  or a                                            ; $48b9: $b7
  ret                                             ; $48ba: $c9


Call_003_48bb:
  xor a                                           ; $48bb: $af
  ld [$cc2c], a                                   ; $48bc: $ea $2c $cc
  call Call_000_3427                              ; $48bf: $cd $27 $34

  db $09, $76, $68

Call_003_48c5:
  ldh [$ffbd], a                                  ; $48c5: $e0 $bd
  ldh a, [rSVBK]                                  ; $48c7: $f0 $70
  push af                                         ; $48c9: $f5
  ld a, $05                                       ; $48ca: $3e $05
  ldh [rSVBK], a                                  ; $48cc: $e0 $70
  ldh a, [$ffbd]                                  ; $48ce: $f0 $bd
  call Call_003_4976                              ; $48d0: $cd $76 $49
  ld a, $12                                       ; $48d3: $3e $12
  rst $08                                         ; $48d5: $cf
  ldh [$ffbd], a                                  ; $48d6: $e0 $bd
  pop af                                          ; $48d8: $f1
  ldh [rSVBK], a                                  ; $48d9: $e0 $70
  ldh a, [$ffbd]                                  ; $48db: $f0 $bd
  ret                                             ; $48dd: $c9


Call_003_48de:
Jump_003_48de:
  ld e, l                                         ; $48de: $5d
  cp $07                                          ; $48df: $fe $07
  jr z, jr_003_48f9                               ; $48e1: $28 $16

Call_003_48e3:
jr_003_48e3:
  ldh [$ffbd], a                                  ; $48e3: $e0 $bd
  ldh a, [rSVBK]                                  ; $48e5: $f0 $70
  push af                                         ; $48e7: $f5
  ld a, $05                                       ; $48e8: $3e $05
  ldh [rSVBK], a                                  ; $48ea: $e0 $70
  ldh a, [$ffbd]                                  ; $48ec: $f0 $bd
  call Call_003_4976                              ; $48ee: $cd $76 $49
  ld a, $12                                       ; $48f1: $3e $12
  rst $08                                         ; $48f3: $cf
  ld [hl], e                                      ; $48f4: $73
  pop af                                          ; $48f5: $f1
  ldh [rSVBK], a                                  ; $48f6: $e0 $70
  ret                                             ; $48f8: $c9


jr_003_48f9:
  ld a, $04                                       ; $48f9: $3e $04
  call Call_003_48e3                              ; $48fb: $cd $e3 $48
  ld a, $05                                       ; $48fe: $3e $05
  call Call_003_48e3                              ; $4900: $cd $e3 $48
  ld a, $06                                       ; $4903: $3e $06
  jr jr_003_48e3                                  ; $4905: $18 $dc

Jump_003_4907:
  ldh a, [rSVBK]                                  ; $4907: $f0 $70
  push af                                         ; $4909: $f5
  ld a, $05                                       ; $490a: $3e $05
  ldh [rSVBK], a                                  ; $490c: $e0 $70
  xor a                                           ; $490e: $af
  ld [$cb6a], a                                   ; $490f: $ea $6a $cb
  ld b, $06                                       ; $4912: $06 $06
  ld hl, $d00a                                    ; $4914: $21 $0a $d0

jr_003_4917:
  res 0, [hl]                                     ; $4917: $cb $86
  bit 2, [hl]                                     ; $4919: $cb $56
  call nz, Call_003_4aa7                          ; $491b: $c4 $a7 $4a
  bit 4, [hl]                                     ; $491e: $cb $66
  call nz, Call_003_4b99                          ; $4920: $c4 $99 $4b
  bit 3, [hl]                                     ; $4923: $cb $5e
  call nz, Call_003_4942                          ; $4925: $c4 $42 $49
  ld de, $0019                                    ; $4928: $11 $19 $00
  add hl, de                                      ; $492b: $19
  dec b                                           ; $492c: $05
  jr nz, jr_003_4917                              ; $492d: $20 $e8

  ld a, $ff                                       ; $492f: $3e $ff
  ld [$cc26], a                                   ; $4931: $ea $26 $cc
  ld a, $14                                       ; $4934: $3e $14
  ld [$cc47], a                                   ; $4936: $ea $47 $cc
  pop af                                          ; $4939: $f1
  ldh [rSVBK], a                                  ; $493a: $e0 $70
  call Call_000_3427                              ; $493c: $cd $27 $34

  db $09, $76, $68

Call_003_4942:
  call Call_000_33f3                              ; $4942: $cd $f3 $33

  db $07, $ab, $6d

  ret                                             ; $4948: $c9


Jump_003_4949:
  ldh a, [rSVBK]                                  ; $4949: $f0 $70
  push af                                         ; $494b: $f5
  ld a, $05                                       ; $494c: $3e $05
  ldh [rSVBK], a                                  ; $494e: $e0 $70
  push bc                                         ; $4950: $c5
  call Call_003_4973                              ; $4951: $cd $73 $49
  ld de, $000a                                    ; $4954: $11 $0a $00
  add hl, de                                      ; $4957: $19
  set 0, [hl]                                     ; $4958: $cb $c6
  xor a                                           ; $495a: $af
  ld [$cb6e], a                                   ; $495b: $ea $6e $cb
  call Call_000_33f3                              ; $495e: $cd $f3 $33

  db $09, $76, $68

  ld a, $1e                                       ; $4964: $3e $1e
  ld [$cc30], a                                   ; $4966: $ea $30 $cc
  ld a, $ff                                       ; $4969: $3e $ff
  ld [$cc29], a                                   ; $496b: $ea $29 $cc
  pop bc                                          ; $496e: $c1
  pop af                                          ; $496f: $f1
  ldh [rSVBK], a                                  ; $4970: $e0 $70
  ret                                             ; $4972: $c9


Call_003_4973:
  ld a, [$cc25]                                   ; $4973: $fa $25 $cc

Call_003_4976:
  ld l, a                                         ; $4976: $6f
  ld h, $19                                       ; $4977: $26 $19
  ld a, $19                                       ; $4979: $3e $19
  cp $55                                          ; $497b: $fe $55
  call nc, Call_000_0a6c                          ; $497d: $d4 $6c $0a
  call Call_000_009c                              ; $4980: $cd $9c $00
  ld hl, $d000                                    ; $4983: $21 $00 $d0
  jp ResolveIndexedPointer8                                       ; $4986: $c3 $08 $00


  ld a, [$cc1e]                                   ; $4989: $fa $1e $cc
  or a                                            ; $498c: $b7
  ret nz                                          ; $498d: $c0

  call Call_003_49e3                              ; $498e: $cd $e3 $49
  ret nz                                          ; $4991: $c0

  ld a, [$cc47]                                   ; $4992: $fa $47 $cc
  or a                                            ; $4995: $b7
  jr z, jr_003_49a9                               ; $4996: $28 $11

  xor a                                           ; $4998: $af
  ld [$cc30], a                                   ; $4999: $ea $30 $cc
  ld a, [$cc47]                                   ; $499c: $fa $47 $cc
  cp $80                                          ; $499f: $fe $80
  jp z, Jump_003_4907                             ; $49a1: $ca $07 $49

  dec a                                           ; $49a4: $3d
  ld [$cc47], a                                   ; $49a5: $ea $47 $cc
  ret                                             ; $49a8: $c9


jr_003_49a9:
  ld a, [$cc25]                                   ; $49a9: $fa $25 $cc
  ld hl, $cc26                                    ; $49ac: $21 $26 $cc
  cp [hl]                                         ; $49af: $be
  jr z, jr_003_49ba                               ; $49b0: $28 $08

  ld [hl], a                                      ; $49b2: $77
  call Call_003_49e3                              ; $49b3: $cd $e3 $49
  ret nz                                          ; $49b6: $c0

  call Call_003_4a86                              ; $49b7: $cd $86 $4a

jr_003_49ba:
  ret                                             ; $49ba: $c9


Call_003_49bb:
  ld d, $01                                       ; $49bb: $16 $01
  jr jr_003_49c1                                  ; $49bd: $18 $02

Call_003_49bf:
  ld d, $04                                       ; $49bf: $16 $04

jr_003_49c1:
  ldh a, [rSVBK]                                  ; $49c1: $f0 $70
  push af                                         ; $49c3: $f5
  ld a, $05                                       ; $49c4: $3e $05
  ldh [rSVBK], a                                  ; $49c6: $e0 $70
  push bc                                         ; $49c8: $c5
  ld bc, $0300                                    ; $49c9: $01 $00 $03

jr_003_49cc:
  ld a, d                                         ; $49cc: $7a
  add b                                           ; $49cd: $80
  call Call_003_484a                              ; $49ce: $cd $4a $48
  bit 1, a                                        ; $49d1: $cb $4f
  jr nz, jr_003_49d6                              ; $49d3: $20 $01

  inc c                                           ; $49d5: $0c

jr_003_49d6:
  dec b                                           ; $49d6: $05
  jr nz, jr_003_49cc                              ; $49d7: $20 $f3

  ld a, c                                         ; $49d9: $79
  pop bc                                          ; $49da: $c1
  ldh [$ffbd], a                                  ; $49db: $e0 $bd
  pop af                                          ; $49dd: $f1
  ldh [rSVBK], a                                  ; $49de: $e0 $70
  ldh a, [$ffbd]                                  ; $49e0: $f0 $bd
  ret                                             ; $49e2: $c9


Call_003_49e3:
  ldh a, [rSVBK]                                  ; $49e3: $f0 $70
  push af                                         ; $49e5: $f5
  ld a, $05                                       ; $49e6: $3e $05
  ldh [rSVBK], a                                  ; $49e8: $e0 $70
  ld hl, $d00a                                    ; $49ea: $21 $0a $d0
  ld de, $0019                                    ; $49ed: $11 $19 $00
  bit 1, [hl]                                     ; $49f0: $cb $4e
  jr z, jr_003_4a06                               ; $49f2: $28 $12

  add hl, de                                      ; $49f4: $19
  bit 1, [hl]                                     ; $49f5: $cb $4e
  jr z, jr_003_4a06                               ; $49f7: $28 $0d

  add hl, de                                      ; $49f9: $19
  bit 1, [hl]                                     ; $49fa: $cb $4e
  jr nz, jr_003_4a47                              ; $49fc: $20 $49

  ld hl, $d032                                    ; $49fe: $21 $32 $d0
  ld a, [hl]                                      ; $4a01: $7e
  cp $62                                          ; $4a02: $fe $62
  jr z, jr_003_4a47                               ; $4a04: $28 $41

jr_003_4a06:
  ld hl, $d005                                    ; $4a06: $21 $05 $d0
  ld a, [hl+]                                     ; $4a09: $2a
  or [hl]                                         ; $4a0a: $b6
  jr nz, jr_003_4a1b                              ; $4a0b: $20 $0e

  ld hl, $d01e                                    ; $4a0d: $21 $1e $d0
  ld a, [hl+]                                     ; $4a10: $2a
  or [hl]                                         ; $4a11: $b6
  jr nz, jr_003_4a1b                              ; $4a12: $20 $07

  ld hl, $d037                                    ; $4a14: $21 $37 $d0
  ld a, [hl+]                                     ; $4a17: $2a
  or [hl]                                         ; $4a18: $b6
  jr z, jr_003_4a47                               ; $4a19: $28 $2c

jr_003_4a1b:
  ld hl, $d03c                                    ; $4a1b: $21 $3c $d0
  ld b, $03                                       ; $4a1e: $06 $03

jr_003_4a20:
  add hl, de                                      ; $4a20: $19
  bit 1, [hl]                                     ; $4a21: $cb $4e
  jr z, jr_003_4a62                               ; $4a23: $28 $3d

  dec b                                           ; $4a25: $05
  jr nz, jr_003_4a20                              ; $4a26: $20 $f8

  xor a                                           ; $4a28: $af
  call Call_003_4a67                              ; $4a29: $cd $67 $4a
  ld l, $04                                       ; $4a2c: $2e $04
  call Call_003_48de                              ; $4a2e: $cd $de $48
  ld a, $01                                       ; $4a31: $3e $01
  call Call_003_4a67                              ; $4a33: $cd $67 $4a
  ld l, $04                                       ; $4a36: $2e $04
  call Call_003_48de                              ; $4a38: $cd $de $48
  ld a, $02                                       ; $4a3b: $3e $02
  call Call_003_4a67                              ; $4a3d: $cd $67 $4a
  ld l, $04                                       ; $4a40: $2e $04
  call Call_003_48de                              ; $4a42: $cd $de $48
  jr jr_003_4a5b                                  ; $4a45: $18 $14

jr_003_4a47:
  xor a                                           ; $4a47: $af
  ld l, $05                                       ; $4a48: $2e $05
  call Call_003_48de                              ; $4a4a: $cd $de $48
  ld a, $01                                       ; $4a4d: $3e $01
  ld l, $05                                       ; $4a4f: $2e $05
  call Call_003_48de                              ; $4a51: $cd $de $48
  ld a, $02                                       ; $4a54: $3e $02
  ld l, $05                                       ; $4a56: $2e $05
  call Call_003_48de                              ; $4a58: $cd $de $48

jr_003_4a5b:
  pop af                                          ; $4a5b: $f1
  ldh [rSVBK], a                                  ; $4a5c: $e0 $70
  ld a, $05                                       ; $4a5e: $3e $05
  dec a                                           ; $4a60: $3d
  ret                                             ; $4a61: $c9


jr_003_4a62:
  pop af                                          ; $4a62: $f1
  ldh [rSVBK], a                                  ; $4a63: $e0 $70
  xor a                                           ; $4a65: $af
  ret                                             ; $4a66: $c9


Call_003_4a67:
  push af                                         ; $4a67: $f5
  push bc                                         ; $4a68: $c5
  ld e, a                                         ; $4a69: $5f
  ld a, $7b                                       ; $4a6a: $3e $7b
  call Call_000_0a46                              ; $4a6c: $cd $46 $0a
  ld b, h                                         ; $4a6f: $44
  ld c, l                                         ; $4a70: $4d
  ld hl, $002d                                    ; $4a71: $21 $2d $00
  add hl, bc                                      ; $4a74: $09
  res 3, [hl]                                     ; $4a75: $cb $9e
  res 4, [hl]                                     ; $4a77: $cb $a6
  res 5, [hl]                                     ; $4a79: $cb $ae
  pop bc                                          ; $4a7b: $c1
  pop af                                          ; $4a7c: $f1
  ret                                             ; $4a7d: $c9


  push bc                                         ; $4a7e: $c5
  call Call_003_49e3                              ; $4a7f: $cd $e3 $49
  pop bc                                          ; $4a82: $c1
  jp StoreCPUFlags                                ; $4a83: $c3 $39 $00


Call_003_4a86:
  ld a, [$cc25]                                   ; $4a86: $fa $25 $cc
  cp $03                                          ; $4a89: $fe $03
  jr nc, jr_003_4aa2                              ; $4a8b: $30 $15

  cp $02                                          ; $4a8d: $fe $02
  jr nz, jr_003_4a98                              ; $4a8f: $20 $07

  ld a, [$cebf]                                   ; $4a91: $fa $bf $ce
  cp $02                                          ; $4a94: $fe $02
  jr z, jr_003_4aa2                               ; $4a96: $28 $0a

jr_003_4a98:
  ldh a, [$ffcd]                                  ; $4a98: $f0 $cd
  cp $1a                                          ; $4a9a: $fe $1a
  ret z                                           ; $4a9c: $c8

  ld a, $1a                                       ; $4a9d: $3e $1a
  jp Jump_000_261e                                ; $4a9f: $c3 $1e $26


jr_003_4aa2:
  ld a, $21                                       ; $4aa2: $3e $21
  jp Jump_000_261e                                ; $4aa4: $c3 $1e $26


Call_003_4aa7:
  bit 1, [hl]                                     ; $4aa7: $cb $4e
  ret nz                                          ; $4aa9: $c0

  push bc                                         ; $4aaa: $c5
  push de                                         ; $4aab: $d5
  push hl                                         ; $4aac: $e5
  push bc                                         ; $4aad: $c5
  push hl                                         ; $4aae: $e5
  call Call_003_49e3                              ; $4aaf: $cd $e3 $49
  pop hl                                          ; $4ab2: $e1
  pop bc                                          ; $4ab3: $c1
  jp nz, Jump_003_4b95                            ; $4ab4: $c2 $95 $4b

  push bc                                         ; $4ab7: $c5
  ld de, $d00a                                    ; $4ab8: $11 $0a $d0
  rst $10                                         ; $4abb: $d7
  jr z, jr_003_4ada                               ; $4abc: $28 $1c

  ld de, $d023                                    ; $4abe: $11 $23 $d0
  rst $10                                         ; $4ac1: $d7
  jr z, jr_003_4ade                               ; $4ac2: $28 $1a

  ld de, $d03c                                    ; $4ac4: $11 $3c $d0
  rst $10                                         ; $4ac7: $d7
  jr z, jr_003_4ae2                               ; $4ac8: $28 $18

  ld de, $d055                                    ; $4aca: $11 $55 $d0
  rst $10                                         ; $4acd: $d7
  jr z, jr_003_4ae6                               ; $4ace: $28 $16

  ld de, $d06e                                    ; $4ad0: $11 $6e $d0
  rst $10                                         ; $4ad3: $d7
  jr z, jr_003_4aea                               ; $4ad4: $28 $14

  ld a, $05                                       ; $4ad6: $3e $05
  jr jr_003_4aee                                  ; $4ad8: $18 $14

jr_003_4ada:
  ld a, $00                                       ; $4ada: $3e $00
  jr jr_003_4aee                                  ; $4adc: $18 $10

jr_003_4ade:
  ld a, $01                                       ; $4ade: $3e $01
  jr jr_003_4aee                                  ; $4ae0: $18 $0c

jr_003_4ae2:
  ld a, $02                                       ; $4ae2: $3e $02
  jr jr_003_4aee                                  ; $4ae4: $18 $08

jr_003_4ae6:
  ld a, $03                                       ; $4ae6: $3e $03
  jr jr_003_4aee                                  ; $4ae8: $18 $04

jr_003_4aea:
  ld a, $04                                       ; $4aea: $3e $04
  jr jr_003_4aee                                  ; $4aec: $18 $00

jr_003_4aee:
  inc a                                           ; $4aee: $3c
  ld [$cc2a], a                                   ; $4aef: $ea $2a $cc
  ld bc, $000b                                    ; $4af2: $01 $0b $00
  add hl, bc                                      ; $4af5: $09
  ld a, [hl+]                                     ; $4af6: $2a
  ld b, [hl]                                      ; $4af7: $46
  ld c, a                                         ; $4af8: $4f
  push bc                                         ; $4af9: $c5
  push hl                                         ; $4afa: $e5
  push de                                         ; $4afb: $d5
  ld hl, $0000                                    ; $4afc: $21 $00 $00
  ld d, b                                         ; $4aff: $50

Call_003_4b00:
  ld e, c                                         ; $4b00: $59
  call Call_000_312d                              ; $4b01: $cd $2d $31
  pop de                                          ; $4b04: $d1
  pop hl                                          ; $4b05: $e1
  jr nc, jr_003_4b13                              ; $4b06: $30 $0b

  call Call_000_0085                              ; $4b08: $cd $85 $00
  push hl                                         ; $4b0b: $e5
  ld a, $01                                       ; $4b0c: $3e $01
  ld [$cb6b], a                                   ; $4b0e: $ea $6b $cb
  jr jr_003_4b19                                  ; $4b11: $18 $06

jr_003_4b13:
  push hl                                         ; $4b13: $e5
  ld a, $05                                       ; $4b14: $3e $05
  ld [$cb6b], a                                   ; $4b16: $ea $6b $cb

jr_003_4b19:
  ld h, b                                         ; $4b19: $60
  ld l, c                                         ; $4b1a: $69
  ld a, [$cb6b]                                   ; $4b1b: $fa $6b $cb
  call Call_003_4637                              ; $4b1e: $cd $37 $46
  pop hl                                          ; $4b21: $e1
  pop bc                                          ; $4b22: $c1
  dec hl                                          ; $4b23: $2b
  call Call_000_0085                              ; $4b24: $cd $85 $00
  ld de, $0010                                    ; $4b27: $11 $10 $00
  call Call_000_0092                              ; $4b2a: $cd $92 $00
  add hl, de                                      ; $4b2d: $19
  ld d, h                                         ; $4b2e: $54
  ld e, l                                         ; $4b2f: $5d
  ld a, [hl+]                                     ; $4b30: $2a
  ld h, [hl]                                      ; $4b31: $66
  ld l, a                                         ; $4b32: $6f
  add hl, bc                                      ; $4b33: $09
  jr nc, jr_003_4b56                              ; $4b34: $30 $20

  ld a, h                                         ; $4b36: $7c
  or l                                            ; $4b37: $b5
  jr z, jr_003_4b56                               ; $4b38: $28 $1c

jr_003_4b3a:
  pop bc                                          ; $4b3a: $c1
  push hl                                         ; $4b3b: $e5
  ld hl, $0004                                    ; $4b3c: $21 $04 $00
  call Call_000_007b                              ; $4b3f: $cd $7b $00
  add hl, de                                      ; $4b42: $19
  ld b, h                                         ; $4b43: $44
  ld c, l                                         ; $4b44: $4d
  ld a, [hl+]                                     ; $4b45: $2a
  ld h, [hl]                                      ; $4b46: $66
  ld l, a                                         ; $4b47: $6f
  pop de                                          ; $4b48: $d1
  call Call_000_32b6                              ; $4b49: $cd $b6 $32
  push hl                                         ; $4b4c: $e5
  ld hl, $0004                                    ; $4b4d: $21 $04 $00
  add hl, bc                                      ; $4b50: $09
  ld d, h                                         ; $4b51: $54
  ld e, l                                         ; $4b52: $5d
  pop hl                                          ; $4b53: $e1
  jr jr_003_4b86                                  ; $4b54: $18 $30

jr_003_4b56:
  push hl                                         ; $4b56: $e5
  ld hl, $0064                                    ; $4b57: $21 $64 $00
  push de                                         ; $4b5a: $d5
  ld d, b                                         ; $4b5b: $50
  ld e, c                                         ; $4b5c: $59
  rst $10                                         ; $4b5d: $d7
  pop de                                          ; $4b5e: $d1
  pop hl                                          ; $4b5f: $e1
  jr c, jr_003_4b3a                               ; $4b60: $38 $d8

  xor a                                           ; $4b62: $af
  ld [de], a                                      ; $4b63: $12
  inc de                                          ; $4b64: $13
  ld [de], a                                      ; $4b65: $12
  pop bc                                          ; $4b66: $c1
  ld a, [$cc2a]                                   ; $4b67: $fa $2a $cc
  dec a                                           ; $4b6a: $3d
  ld l, $03                                       ; $4b6b: $2e $03
  call Call_003_48de                              ; $4b6d: $cd $de $48
  push de                                         ; $4b70: $d5
  call Call_003_49e3                              ; $4b71: $cd $e3 $49
  pop de                                          ; $4b74: $d1
  ld hl, $0000                                    ; $4b75: $21 $00 $00
  jr z, jr_003_4b80                               ; $4b78: $28 $06

  xor a                                           ; $4b7a: $af
  ld l, $04                                       ; $4b7b: $2e $04
  call Call_003_48de                              ; $4b7d: $cd $de $48

jr_003_4b80:
  pop hl                                          ; $4b80: $e1
  pop de                                          ; $4b81: $d1
  pop bc                                          ; $4b82: $c1
  set 1, [hl]                                     ; $4b83: $cb $ce
  ret                                             ; $4b85: $c9


jr_003_4b86:
  push de                                         ; $4b86: $d5
  push hl                                         ; $4b87: $e5
  ld hl, $0000                                    ; $4b88: $21 $00 $00
  add hl, de                                      ; $4b8b: $19
  push hl                                         ; $4b8c: $e5
  pop de                                          ; $4b8d: $d1
  pop hl                                          ; $4b8e: $e1
  ld a, l                                         ; $4b8f: $7d
  ld [de], a                                      ; $4b90: $12
  inc de                                          ; $4b91: $13
  ld a, h                                         ; $4b92: $7c
  ld [de], a                                      ; $4b93: $12
  pop de                                          ; $4b94: $d1

Jump_003_4b95:
  pop hl                                          ; $4b95: $e1
  pop de                                          ; $4b96: $d1
  pop bc                                          ; $4b97: $c1
  ret                                             ; $4b98: $c9


Call_003_4b99:
  ldh a, [rDIV]                                   ; $4b99: $f0 $04
  and $01                                         ; $4b9b: $e6 $01
  jr z, jr_003_4ba1                               ; $4b9d: $28 $02

  res 4, [hl]                                     ; $4b9f: $cb $a6

jr_003_4ba1:
  ret                                             ; $4ba1: $c9


  db $10, $01, $a9, $4b, $3a, $01, $41, $e0, $d1, $00, $d2, $20, $d2, $3e, $76, $cd
  db $f3, $33, $04, $bb, $6d, $3e, $1e, $c3, $1e, $26, $ea, $eb, $cb, $fe, $93, $28
  db $05, $3e, $24, $c3, $1e, $26, $3e, $25, $c3, $1e, $26, $fa, $eb, $cb, $cd, $f3
  db $33, $04, $bb, $6d, $3e, $1e, $cd, $1e, $26, $c9, $df, $cd, $69, $52, $af, $ea
  db $2c, $cc, $21, $a2, $4b, $cd, $13

  db $30                                          ; $4be9: $30

  ld a, $88                                       ; $4bea: $3e $88
  ld [$c159], a                                   ; $4bec: $ea $59 $c1
  ld a, $03                                       ; $4bef: $3e $03
  ld [$c1a2], a                                   ; $4bf1: $ea $a2 $c1
  ld hl, $cbe2                                    ; $4bf4: $21 $e2 $cb
  ld a, [hl+]                                     ; $4bf7: $2a
  ld h, [hl]                                      ; $4bf8: $66
  ld l, a                                         ; $4bf9: $6f
  call Call_000_33f3                              ; $4bfa: $cd $f3 $33

  db $01, $a2, $66

  call Call_000_33f3                              ; $4c00: $cd $f3 $33

  db $01, $bd, $64

  ld hl, $17e9                                    ; $4c06: $21 $e9 $17
  call Call_000_33f3                              ; $4c09: $cd $f3 $33

  db $01, $28, $66

  xor a                                           ; $4c0f: $af
  ld [$cb33], a                                   ; $4c10: $ea $33 $cb
  rst $20                                         ; $4c13: $e7
  ret                                             ; $4c14: $c9


  ld a, [$cb33]                                   ; $4c15: $fa $33 $cb
  or a                                            ; $4c18: $b7
  ret nz                                          ; $4c19: $c0

  ldh a, [$ffa6]                                  ; $4c1a: $f0 $a6
  and $03                                         ; $4c1c: $e6 $03
  ret z                                           ; $4c1e: $c8

  rst $18                                         ; $4c1f: $df
  call Call_003_5269                              ; $4c20: $cd $69 $52
  call Call_003_5412                              ; $4c23: $cd $12 $54
  rst $20                                         ; $4c26: $e7
  ld a, $01                                       ; $4c27: $3e $01

jr_003_4c29:
  ld [$cb33], a                                   ; $4c29: $ea $33 $cb
  ld a, [$cbe7]                                   ; $4c2c: $fa $e7 $cb
  or a                                            ; $4c2f: $b7
  jr nz, jr_003_4c37                              ; $4c30: $20 $05

  ld a, $1a                                       ; $4c32: $3e $1a
  jp Jump_000_261e                                ; $4c34: $c3 $1e $26


jr_003_4c37:
  ld a, [$cc25]                                   ; $4c37: $fa $25 $cc
  ld l, $00                                       ; $4c3a: $2e $00
  call Call_003_48de                              ; $4c3c: $cd $de $48
  jp Jump_003_4949                                ; $4c3f: $c3 $49 $49


  ld a, [$cec3]                                   ; $4c42: $fa $c3 $ce
  cp $02                                          ; $4c45: $fe $02
  ret nc                                          ; $4c47: $d0

  push bc                                         ; $4c48: $c5
  ld b, a                                         ; $4c49: $47
  ldh [$ffbd], a                                  ; $4c4a: $e0 $bd
  ldh a, [rSVBK]                                  ; $4c4c: $f0 $70
  push af                                         ; $4c4e: $f5
  ld a, $06                                       ; $4c4f: $3e $06
  ldh [rSVBK], a                                  ; $4c51: $e0 $70
  ldh a, [$ffbd]                                  ; $4c53: $f0 $bd
  ld a, [$ddc7]                                   ; $4c55: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $4c58: $e0 $bd
  pop af                                          ; $4c5a: $f1
  ldh [rSVBK], a                                  ; $4c5b: $e0 $70
  ldh a, [$ffbd]                                  ; $4c5d: $f0 $bd
  cp $01                                          ; $4c5f: $fe $01
  ld a, b                                         ; $4c61: $78
  pop bc                                          ; $4c62: $c1
  jr nz, jr_003_4c68                              ; $4c63: $20 $03

  add $04                                         ; $4c65: $c6 $04
  ret                                             ; $4c67: $c9


jr_003_4c68:
  cp $01                                          ; $4c68: $fe $01
  ret nz                                          ; $4c6a: $c0

  ldh a, [rSVBK]                                  ; $4c6b: $f0 $70
  push af                                         ; $4c6d: $f5
  ld a, $06                                       ; $4c6e: $3e $06
  ldh [rSVBK], a                                  ; $4c70: $e0 $70
  ld a, [$dcc8]                                   ; $4c72: $fa $c8 $dc
  ldh [$ffbd], a                                  ; $4c75: $e0 $bd
  pop af                                          ; $4c77: $f1
  ldh [rSVBK], a                                  ; $4c78: $e0 $70
  ldh a, [$ffbd]                                  ; $4c7a: $f0 $bd
  cp $12                                          ; $4c7c: $fe $12
  ld a, $01                                       ; $4c7e: $3e $01
  ret nz                                          ; $4c80: $c0

  ld a, $06                                       ; $4c81: $3e $06
  ret                                             ; $4c83: $c9


  cp $04                                          ; $4c84: $fe $04
  ret c                                           ; $4c86: $d8

  sub $04                                         ; $4c87: $d6 $04
  ret                                             ; $4c89: $c9


  cp $02                                          ; $4c8a: $fe $02
  ret nc                                          ; $4c8c: $d0

  xor $01                                         ; $4c8d: $ee $01
  ret                                             ; $4c8f: $c9


  cp $04                                          ; $4c90: $fe $04
  jr c, jr_003_4c97                               ; $4c92: $38 $03

  sub $02                                         ; $4c94: $d6 $02
  ret                                             ; $4c96: $c9


jr_003_4c97:
  srl a                                           ; $4c97: $cb $3f
  ret                                             ; $4c99: $c9


  db $10, $01, $a8, $4c, $46, $01, $41, $10, $01, $b2, $4c, $3a, $01, $c0, $21, $d2
  db $e1, $d1, $01, $d2, $21, $d2, $c0, $d1, $f0, $d1, $10, $d2, $01, $27, $1c, $01
  db $00, $00, $99, $26, $05, $01, $03, $01, $01, $27, $1c, $01, $00, $00, $99, $26
  db $00, $01, $00, $01, $1b, $2f, $1d, $1f, $4d, $03, $00, $00, $00, $00, $01, $12
  db $1f, $00, $13, $00, $01, $12, $14, $00, $00, $00, $14, $01, $00, $1f, $01, $00
  db $1c, $00, $00, $0a, $02, $01, $0f, $01

  rst $38                                         ; $4cf2: $ff
  inc e                                           ; $4cf3: $1c
  nop                                             ; $4cf4: $00
  nop                                             ; $4cf5: $00
  ld a, [bc]                                      ; $4cf6: $0a
  ld [bc], a                                      ; $4cf7: $02
  db $01                                          ; $4cf8: $01
  rrca                                            ; $4cf9: $0f

  db $8e, $24, $9d, $24, $ac, $24

  cp e                                            ; $4d00: $bb
  inc h                                           ; $4d01: $24
  db $ca                                          ; $4d02: $ca
  inc h                                           ; $4d03: $24

  db $a8, $1f, $b4, $1f, $c0, $25, $cf, $25, $fa, $24, $09, $25, $30, $25, $1e, $25
  db $27, $25, $39, $25, $42, $25, $4b, $25

  ld d, h                                         ; $4d1c: $54
  dec h                                           ; $4d1d: $25

  db $15, $03, $06, $00, $09, $0c, $0f, $16, $17, $12, $00, $0c, $0d, $0b, $0e, $10

  db $11                                          ; $4d2e: $11
  nop                                             ; $4d2f: $00

  db $00, $0f

  ld a, $01                                       ; $4d32: $3e $01
  ld [$cc4d], a                                   ; $4d34: $ea $4d $cc
  ld a, [$cc25]                                   ; $4d37: $fa $25 $cc
  cp $03                                          ; $4d3a: $fe $03
  jr c, jr_003_4d42                               ; $4d3c: $38 $04

  xor a                                           ; $4d3e: $af
  ld [$cc25], a                                   ; $4d3f: $ea $25 $cc

jr_003_4d42:
  call Call_000_33f3                              ; $4d42: $cd $f3 $33

  db $06, $ac, $69

  ld hl, $cdd1                                    ; $4d48: $21 $d1 $cd
  ld de, $0005                                    ; $4d4b: $11 $05 $00
  add hl, de                                      ; $4d4e: $19
  ld a, [hl+]                                     ; $4d4f: $2a
  or [hl]                                         ; $4d50: $b6
  dec hl                                          ; $4d51: $2b
  jr nz, jr_003_4d56                              ; $4d52: $20 $02

  ld [hl], $01                                    ; $4d54: $36 $01

jr_003_4d56:
  ld hl, $ce03                                    ; $4d56: $21 $03 $ce
  ld de, $0005                                    ; $4d59: $11 $05 $00
  add hl, de                                      ; $4d5c: $19
  ld a, [hl+]                                     ; $4d5d: $2a
  or [hl]                                         ; $4d5e: $b6
  dec hl                                          ; $4d5f: $2b
  jr nz, jr_003_4d64                              ; $4d60: $20 $02

  ld [hl], $01                                    ; $4d62: $36 $01

jr_003_4d64:
  ld hl, $cdea                                    ; $4d64: $21 $ea $cd
  ld de, $0005                                    ; $4d67: $11 $05 $00
  add hl, de                                      ; $4d6a: $19
  ld a, [hl+]                                     ; $4d6b: $2a
  or [hl]                                         ; $4d6c: $b6
  dec hl                                          ; $4d6d: $2b
  jr nz, jr_003_4d72                              ; $4d6e: $20 $02

  ld [hl], $01                                    ; $4d70: $36 $01

jr_003_4d72:
  ldh a, [$ffca]                                  ; $4d72: $f0 $ca
  cp $2f                                          ; $4d74: $fe $2f
  jr z, jr_003_4d8b                               ; $4d76: $28 $13

  cp $4d                                          ; $4d78: $fe $4d
  jr z, jr_003_4d8b                               ; $4d7a: $28 $0f

  xor a                                           ; $4d7c: $af
  ld [$cbc7], a                                   ; $4d7d: $ea $c7 $cb
  ld a, $3d                                       ; $4d80: $3e $3d
  call Call_000_394b                              ; $4d82: $cd $4b $39
  ld hl, $4cb6                                    ; $4d85: $21 $b6 $4c
  jp Jump_000_2952                                ; $4d88: $c3 $52 $29


jr_003_4d8b:
  ld hl, $4cc2                                    ; $4d8b: $21 $c2 $4c
  jp Jump_000_2952                                ; $4d8e: $c3 $52 $29


  ret                                             ; $4d91: $c9


Call_003_4d92:
  ld hl, $7d0a                                    ; $4d92: $21 $0a $7d
  jp Jump_003_7e88                                ; $4d95: $c3 $88 $7e


  ld a, $0b                                       ; $4d98: $3e $0b
  ldh [$ffc2], a                                  ; $4d9a: $e0 $c2
  ld a, $02                                       ; $4d9c: $3e $02
  ld [$c0ab], a                                   ; $4d9e: $ea $ab $c0
  call Call_003_52da                              ; $4da1: $cd $da $52
  call Call_003_53d0                              ; $4da4: $cd $d0 $53
  call Call_000_33f3                              ; $4da7: $cd $f3 $33

  db $01, $40, $69

  ld a, $06                                       ; $4dad: $3e $06
  call Call_003_5296                              ; $4daf: $cd $96 $52
  call Call_000_33f3                              ; $4db2: $cd $f3 $33

  db $09, $71, $7d

  call Call_000_33f3                              ; $4db8: $cd $f3 $33

  db $09, $e7, $7e

  call Call_003_551f                              ; $4dbe: $cd $1f $55
  ldh a, [$ffd2]                                  ; $4dc1: $f0 $d2
  or a                                            ; $4dc3: $b7
  jp nz, Jump_003_4e20                            ; $4dc4: $c2 $20 $4e

  call Call_003_42a5                              ; $4dc7: $cd $a5 $42
  call Call_003_432e                              ; $4dca: $cd $2e $43
  call Call_003_48bb                              ; $4dcd: $cd $bb $48
  ld a, [$cc48]                                   ; $4dd0: $fa $48 $cc
  ld d, a                                         ; $4dd3: $57
  xor a                                           ; $4dd4: $af
  ld e, a                                         ; $4dd5: $5f
  rrc d                                           ; $4dd6: $cb $0a
  adc e                                           ; $4dd8: $8b
  rrc d                                           ; $4dd9: $cb $0a
  adc e                                           ; $4ddb: $8b
  rrc d                                           ; $4ddc: $cb $0a
  adc e                                           ; $4dde: $8b
  ld [$cb6c], a                                   ; $4ddf: $ea $6c $cb
  call Call_003_4d92                              ; $4de2: $cd $92 $4d
  ldh a, [rSVBK]                                  ; $4de5: $f0 $70
  push af                                         ; $4de7: $f5
  ld a, $05                                       ; $4de8: $3e $05
  ldh [rSVBK], a                                  ; $4dea: $e0 $70
  ld hl, $d0a0                                    ; $4dec: $21 $a0 $d0
  ld bc, $0009                                    ; $4def: $01 $09 $00
  xor a                                           ; $4df2: $af
  call Call_000_1249                              ; $4df3: $cd $49 $12
  pop af                                          ; $4df6: $f1
  ldh [rSVBK], a                                  ; $4df7: $e0 $70
  call Call_000_33f3                              ; $4df9: $cd $f3 $33

  db $0a, $e6, $7e

  jp z, Jump_003_53a2                             ; $4dff: $ca $a2 $53

  call Call_000_38e8                              ; $4e02: $cd $e8 $38
  ld a, l                                         ; $4e05: $7d
  ld [$cc5e], a                                   ; $4e06: $ea $5e $cc
  ld a, h                                         ; $4e09: $7c
  ld [$cc5f], a                                   ; $4e0a: $ea $5f $cc
  ld hl, $012c                                    ; $4e0d: $21 $2c $01
  call Call_000_3916                              ; $4e10: $cd $16 $39
  call Call_000_38e8                              ; $4e13: $cd $e8 $38
  ld a, l                                         ; $4e16: $7d
  ld [$cc60], a                                   ; $4e17: $ea $60 $cc
  ld a, h                                         ; $4e1a: $7c
  ld [$cc61], a                                   ; $4e1b: $ea $61 $cc
  jr jr_003_4e32                                  ; $4e1e: $18 $12

Jump_003_4e20:
  call Call_003_4e3f                              ; $4e20: $cd $3f $4e
  call Call_000_33f3                              ; $4e23: $cd $f3 $33

  db $09, $f9, $7e

  call Call_003_4d92                              ; $4e29: $cd $92 $4d
  call Call_000_33f3                              ; $4e2c: $cd $f3 $33

  db $06, $24, $7c

jr_003_4e32:
  ld hl, $cc60                                    ; $4e32: $21 $60 $cc
  ld a, [hl+]                                     ; $4e35: $2a
  ld h, [hl]                                      ; $4e36: $66
  ld l, a                                         ; $4e37: $6f
  call Call_000_38fe                              ; $4e38: $cd $fe $38
  call Call_003_53a2                              ; $4e3b: $cd $a2 $53
  ret                                             ; $4e3e: $c9


Call_003_4e3f:
  ld a, [$cc49]                                   ; $4e3f: $fa $49 $cc
  cp $07                                          ; $4e42: $fe $07
  jr nz, jr_003_4e4b                              ; $4e44: $20 $05

  ld hl, $5436                                    ; $4e46: $21 $36 $54
  jr jr_003_4e4e                                  ; $4e49: $18 $03

jr_003_4e4b:
  ld hl, $5431                                    ; $4e4b: $21 $31 $54

jr_003_4e4e:
  call Call_000_33f3                              ; $4e4e: $cd $f3 $33

  db $01, $33, $55

  ldh a, [rSVBK]                                  ; $4e54: $f0 $70
  push af                                         ; $4e56: $f5
  ld a, $05                                       ; $4e57: $3e $05
  ldh [rSVBK], a                                  ; $4e59: $e0 $70
  ld b, $06                                       ; $4e5b: $06 $06
  ld hl, $d00a                                    ; $4e5d: $21 $0a $d0

jr_003_4e60:
  bit 1, [hl]                                     ; $4e60: $cb $4e
  jr nz, jr_003_4e8e                              ; $4e62: $20 $2a

  push hl                                         ; $4e64: $e5
  ld a, $06                                       ; $4e65: $3e $06
  sub b                                           ; $4e67: $90
  ldh [$ff9f], a                                  ; $4e68: $e0 $9f
  ld de, $fff6                                    ; $4e6a: $11 $f6 $ff
  add hl, de                                      ; $4e6d: $19
  ld a, [hl]                                      ; $4e6e: $7e
  ldh [$ff9a], a                                  ; $4e6f: $e0 $9a
  ld a, $7b                                       ; $4e71: $3e $7b
  call Call_000_04e0                              ; $4e73: $cd $e0 $04
  ld a, $06                                       ; $4e76: $3e $06
  sub b                                           ; $4e78: $90
  cp $03                                          ; $4e79: $fe $03
  ldh [$ff9a], a                                  ; $4e7b: $e0 $9a
  ld a, $b0                                       ; $4e7d: $3e $b0
  call nc, Call_000_04e0                          ; $4e7f: $d4 $e0 $04
  pop hl                                          ; $4e82: $e1

jr_003_4e83:
  ld de, $0019                                    ; $4e83: $11 $19 $00
  add hl, de                                      ; $4e86: $19
  dec b                                           ; $4e87: $05
  jr nz, jr_003_4e60                              ; $4e88: $20 $d6

  pop af                                          ; $4e8a: $f1
  ldh [rSVBK], a                                  ; $4e8b: $e0 $70
  ret                                             ; $4e8d: $c9


jr_003_4e8e:
  call Call_000_33f3                              ; $4e8e: $cd $f3 $33

  db $07, $71, $6b

  jr jr_003_4e83                                  ; $4e94: $18 $ed

Call_003_4e96:
  rst $18                                         ; $4e96: $df
  ld c, $1c                                       ; $4e97: $0e $1c
  ld de, $0111                                    ; $4e99: $11 $11 $01
  ld hl, $0220                                    ; $4e9c: $21 $20 $02
  call Call_000_149f                              ; $4e9f: $cd $9f $14
  ld hl, $4c9a                                    ; $4ea2: $21 $9a $4c
  call Call_000_3013                              ; $4ea5: $cd $13 $30
  ld a, [$cb70]                                   ; $4ea8: $fa $70 $cb
  cp $08                                          ; $4eab: $fe $08
  jr z, jr_003_4ec5                               ; $4ead: $28 $16

  cp $07                                          ; $4eaf: $fe $07
  jr nz, jr_003_4ed5                              ; $4eb1: $20 $22

  ldh a, [$ffd3]                                  ; $4eb3: $f0 $d3
  add $8e                                         ; $4eb5: $c6 $8e
  call Call_000_33f3                              ; $4eb7: $cd $f3 $33

  db $04, $32, $6b

  call Call_000_33f3                              ; $4ebd: $cd $f3 $33

  db $01, $0e, $67

  jr jr_003_4ed5                                  ; $4ec3: $18 $10

jr_003_4ec5:
  ldh a, [$ffd3]                                  ; $4ec5: $f0 $d3
  add $93                                         ; $4ec7: $c6 $93
  call Call_000_33f3                              ; $4ec9: $cd $f3 $33

  db $04, $32, $6b

  call Call_000_33f3                              ; $4ecf: $cd $f3 $33

  db $01, $0e, $67

jr_003_4ed5:
  ld a, [$cb70]                                   ; $4ed5: $fa $70 $cb
  ld hl, $4cfa                                    ; $4ed8: $21 $fa $4c
  call ResolveIndexedPointer16                              ; $4edb: $cd $8b $31
  ldh a, [$ffd3]                                  ; $4ede: $f0 $d3
  call Call_000_3173                              ; $4ee0: $cd $73 $31
  call Call_000_33f3                              ; $4ee3: $cd $f3 $33

  db $01, $e8, $65

  rst $20                                         ; $4ee9: $e7
  ret                                             ; $4eea: $c9


  ld a, [$cbdf]                                   ; $4eeb: $fa $df $cb
  or a                                            ; $4eee: $b7
  jr z, jr_003_4ef6                               ; $4eef: $28 $05

  dec a                                           ; $4ef1: $3d
  ld [$cbdf], a                                   ; $4ef2: $ea $df $cb
  ret                                             ; $4ef5: $c9


jr_003_4ef6:
  ld a, [$cc2c]                                   ; $4ef6: $fa $2c $cc
  or a                                            ; $4ef9: $b7
  ret z                                           ; $4efa: $c8

  ldh a, [$ffca]                                  ; $4efb: $f0 $ca
  cp $2f                                          ; $4efd: $fe $2f
  jr nz, jr_003_4f08                              ; $4eff: $20 $07

  ldh a, [$ffd1]                                  ; $4f01: $f0 $d1
  cp $ff                                          ; $4f03: $fe $ff
  jp nz, Jump_003_45c7                            ; $4f05: $c2 $c7 $45

jr_003_4f08:
  ld a, [$cc27]                                   ; $4f08: $fa $27 $cc
  or a                                            ; $4f0b: $b7
  call z, Call_003_5656                           ; $4f0c: $cc $56 $56
  call Call_000_33f3                              ; $4f0f: $cd $f3 $33

  db $06, $17, $51

  ld a, $01                                       ; $4f15: $3e $01
  call Call_003_48c5                              ; $4f17: $cd $c5 $48
  cp $04                                          ; $4f1a: $fe $04
  ret z                                           ; $4f1c: $c8

  ldh a, [$ffa6]                                  ; $4f1d: $f0 $a6
  or a                                            ; $4f1f: $b7
  call nz, Call_003_4e96                          ; $4f20: $c4 $96 $4e
  ldh a, [$ffa6]                                  ; $4f23: $f0 $a6
  bit 0, a                                        ; $4f25: $cb $47
  ret z                                           ; $4f27: $c8

  ldh a, [$ffd3]                                  ; $4f28: $f0 $d3
  ld hl, $cb71                                    ; $4f2a: $21 $71 $cb
  rst $08                                         ; $4f2d: $cf
  or a                                            ; $4f2e: $b7
  ret nz                                          ; $4f2f: $c0

  ld a, $00                                       ; $4f30: $3e $00
  call Call_000_392b                              ; $4f32: $cd $2b $39
  call Call_000_33f3                              ; $4f35: $cd $f3 $33

  db $08, $c8, $78

  ldh a, [$ffd3]                                  ; $4f3b: $f0 $d3
  ld hl, $4cce                                    ; $4f3d: $21 $ce $4c
  rst $08                                         ; $4f40: $cf
  cp $2f                                          ; $4f41: $fe $2f
  jr z, jr_003_4f9e                               ; $4f43: $28 $59

  cp $1b                                          ; $4f45: $fe $1b
  jr z, jr_003_4f60                               ; $4f47: $28 $17

  push af                                         ; $4f49: $f5
  ld hl, $cc60                                    ; $4f4a: $21 $60 $cc
  ld a, [hl+]                                     ; $4f4d: $2a
  ld h, [hl]                                      ; $4f4e: $66
  ld l, a                                         ; $4f4f: $6f
  call Call_000_38fe                              ; $4f50: $cd $fe $38
  pop af                                          ; $4f53: $f1
  cp $4d                                          ; $4f54: $fe $4d
  jp z, Jump_000_261e                             ; $4f56: $ca $1e $26

  ld d, $ff                                       ; $4f59: $16 $ff
  ld e, $00                                       ; $4f5b: $1e $00
  jp Jump_000_2621                                ; $4f5d: $c3 $21 $26


jr_003_4f60:
  ld d, $ff                                       ; $4f60: $16 $ff
  ld e, $00                                       ; $4f62: $1e $00
  ld a, [$cc25]                                   ; $4f64: $fa $25 $cc
  cp $01                                          ; $4f67: $fe $01
  ld a, $1b                                       ; $4f69: $3e $1b
  jp nz, Jump_000_2621                            ; $4f6b: $c2 $21 $26

  ldh [$ffbd], a                                  ; $4f6e: $e0 $bd
  ldh a, [rSVBK]                                  ; $4f70: $f0 $70
  push af                                         ; $4f72: $f5
  ld a, $06                                       ; $4f73: $3e $06
  ldh [rSVBK], a                                  ; $4f75: $e0 $70
  ldh a, [$ffbd]                                  ; $4f77: $f0 $bd
  ld a, [$ddc7]                                   ; $4f79: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $4f7c: $e0 $bd
  pop af                                          ; $4f7e: $f1
  ldh [rSVBK], a                                  ; $4f7f: $e0 $70
  ldh a, [$ffbd]                                  ; $4f81: $f0 $bd
  cp $04                                          ; $4f83: $fe $04
  ld a, $1b                                       ; $4f85: $3e $1b
  jp nz, Jump_000_2621                            ; $4f87: $c2 $21 $26

  ld a, $02                                       ; $4f8a: $3e $02
  ld [$cc2c], a                                   ; $4f8c: $ea $2c $cc
  ld a, $03                                       ; $4f8f: $3e $03
  call Call_003_565b                              ; $4f91: $cd $5b $56
  ld a, $f0                                       ; $4f94: $3e $f0
  ld [$cc29], a                                   ; $4f96: $ea $29 $cc
  ld a, $22                                       ; $4f99: $3e $22
  jp Jump_000_261e                                ; $4f9b: $c3 $1e $26


jr_003_4f9e:
  ld a, [$cc25]                                   ; $4f9e: $fa $25 $cc
  rst $00                                         ; $4fa1: $c7

  db $ad, $4f, $a8, $4f, $b2, $4f

  ld a, $2f                                       ; $4fa8: $3e $2f
  jp Jump_000_261e                                ; $4faa: $c3 $1e $26


  ld a, $27                                       ; $4fad: $3e $27
  jp Jump_000_261e                                ; $4faf: $c3 $1e $26


  ld a, [$cebf]                                   ; $4fb2: $fa $bf $ce
  or a                                            ; $4fb5: $b7
  jr nz, jr_003_4fbd                              ; $4fb6: $20 $05

  ld a, $28                                       ; $4fb8: $3e $28
  jp Jump_000_261e                                ; $4fba: $c3 $1e $26


jr_003_4fbd:
  ld a, $f1                                       ; $4fbd: $3e $f1
  ld [$cc29], a                                   ; $4fbf: $ea $29 $cc
  ld a, $02                                       ; $4fc2: $3e $02
  ld [$cc2c], a                                   ; $4fc4: $ea $2c $cc
  ld a, $03                                       ; $4fc7: $3e $03
  call Call_003_565b                              ; $4fc9: $cd $5b $56
  ld a, $22                                       ; $4fcc: $3e $22
  jp Jump_000_261e                                ; $4fce: $c3 $1e $26


  call Call_000_33f3                              ; $4fd1: $cd $f3 $33

  db $09, $e7, $7e

  call Call_003_551f                              ; $4fd7: $cd $1f $55
  ld a, $01                                       ; $4fda: $3e $01
  call Call_003_48c5                              ; $4fdc: $cd $c5 $48
  cp $04                                          ; $4fdf: $fe $04
  jr nz, jr_003_4fec                              ; $4fe1: $20 $09

  xor a                                           ; $4fe3: $af
  ld [$cc2c], a                                   ; $4fe4: $ea $2c $cc
  ld [$cc2a], a                                   ; $4fe7: $ea $2a $cc
  jr jr_003_4ff5                                  ; $4fea: $18 $09

jr_003_4fec:
  xor a                                           ; $4fec: $af
  ld [$cc2a], a                                   ; $4fed: $ea $2a $cc
  ld a, $01                                       ; $4ff0: $3e $01
  ld [$cc2c], a                                   ; $4ff2: $ea $2c $cc

jr_003_4ff5:
  xor a                                           ; $4ff5: $af
  call Call_003_5499                              ; $4ff6: $cd $99 $54
  jp Jump_003_53a2                                ; $4ff9: $c3 $a2 $53


Call_003_4ffc:
  push hl                                         ; $4ffc: $e5
  ldh a, [$ffce]                                  ; $4ffd: $f0 $ce
  ld hl, $4d1e                                    ; $4fff: $21 $1e $4d
  rst $08                                         ; $5002: $cf
  ld hl, $ffd3                                    ; $5003: $21 $d3 $ff
  add [hl]                                        ; $5006: $86
  pop hl                                          ; $5007: $e1
  ret                                             ; $5008: $c9


  push hl                                         ; $5009: $e5
  ld hl, $4d1e                                    ; $500a: $21 $1e $4d
  rst $08                                         ; $500d: $cf
  pop hl                                          ; $500e: $e1
  ret                                             ; $500f: $c9


  ld a, [$cc25]                                   ; $5010: $fa $25 $cc
  call Call_000_33f3                              ; $5013: $cd $f3 $33

  db $08, $ff, $74

  ld hl, $cc2c                                    ; $5019: $21 $2c $cc
  res 4, [hl]                                     ; $501c: $cb $a6
  ldh a, [$ffce]                                  ; $501e: $f0 $ce
  ld hl, $4d28                                    ; $5020: $21 $28 $4d
  rst $08                                         ; $5023: $cf
  or a                                            ; $5024: $b7
  jr z, jr_003_5037                               ; $5025: $28 $10

  ld [$cb70], a                                   ; $5027: $ea $70 $cb
  cp $0f                                          ; $502a: $fe $0f
  ld a, $01                                       ; $502c: $3e $01
  jr nz, jr_003_5031                              ; $502e: $20 $01

  inc a                                           ; $5030: $3c

jr_003_5031:
  call Call_003_5499                              ; $5031: $cd $99 $54
  jp Jump_003_53a2                                ; $5034: $c3 $a2 $53


jr_003_5037:
  xor a                                           ; $5037: $af
  ldh [$ffd3], a                                  ; $5038: $e0 $d3
  call Call_003_4ffc                              ; $503a: $cd $fc $4f
  ld [$cc29], a                                   ; $503d: $ea $29 $cc
  ld a, $02                                       ; $5040: $3e $02
  ld [$cc2c], a                                   ; $5042: $ea $2c $cc
  ld a, $03                                       ; $5045: $3e $03
  call Call_003_565b                              ; $5047: $cd $5b $56
  ld a, $22                                       ; $504a: $3e $22
  jp Jump_000_261e                                ; $504c: $c3 $1e $26


  ld a, $09                                       ; $504f: $3e $09
  ld [$cb70], a                                   ; $5051: $ea $70 $cb
  ld a, [$cc25]                                   ; $5054: $fa $25 $cc
  call Call_000_33f3                              ; $5057: $cd $f3 $33

  db $08, $5b, $75

  ld hl, $cc2c                                    ; $505d: $21 $2c $cc
  set 4, [hl]                                     ; $5060: $cb $e6
  xor a                                           ; $5062: $af
  call Call_003_5499                              ; $5063: $cd $99 $54
  jp Jump_003_53a2                                ; $5066: $c3 $a2 $53


  ret                                             ; $5069: $c9


  ld a, $07                                       ; $506a: $3e $07
  ld [$cb70], a                                   ; $506c: $ea $70 $cb
  call Call_000_33f3                              ; $506f: $cd $f3 $33

  db $1e, $d9, $60

  ld hl, $cc2c                                    ; $5075: $21 $2c $cc
  set 4, [hl]                                     ; $5078: $cb $e6
  xor a                                           ; $507a: $af
  call Call_003_5499                              ; $507b: $cd $99 $54
  jp Jump_003_53a2                                ; $507e: $c3 $a2 $53


  call Call_003_5269                              ; $5081: $cd $69 $52
  xor a                                           ; $5084: $af
  ld [$cc2c], a                                   ; $5085: $ea $2c $cc
  call Call_003_4454                              ; $5088: $cd $54 $44
  jr nz, jr_003_5093                              ; $508b: $20 $06

  ldh a, [rDIV]                                   ; $508d: $f0 $04
  and $03                                         ; $508f: $e6 $03
  jr nz, jr_003_50af                              ; $5091: $20 $1c

jr_003_5093:
  ld hl, $4ba2                                    ; $5093: $21 $a2 $4b
  call Call_000_3013                              ; $5096: $cd $13 $30
  ld a, $70                                       ; $5099: $3e $70
  ld [$c159], a                                   ; $509b: $ea $59 $c1
  ld a, $04                                       ; $509e: $3e $04
  ld [$c1a2], a                                   ; $50a0: $ea $a2 $c1
  ld hl, $0016                                    ; $50a3: $21 $16 $00
  call Call_000_33f3                              ; $50a6: $cd $f3 $33

  db $01, $28, $66

  jp RST_20                                       ; $50ac: $c3 $20 $00


jr_003_50af:
  rst $20                                         ; $50af: $e7
  ldh a, [rSVBK]                                  ; $50b0: $f0 $70
  push af                                         ; $50b2: $f5
  ld a, $06                                       ; $50b3: $3e $06
  ldh [rSVBK], a                                  ; $50b5: $e0 $70
  ld a, $03                                       ; $50b7: $3e $03
  ld b, a                                         ; $50b9: $47
  ld [$ddc2], a                                   ; $50ba: $ea $c2 $dd
  pop af                                          ; $50bd: $f1
  ldh [rSVBK], a                                  ; $50be: $e0 $70

jr_003_50c0:
  ld a, $03                                       ; $50c0: $3e $03
  sub b                                           ; $50c2: $90
  call Call_003_488b                              ; $50c3: $cd $8b $48
  jr nz, jr_003_50cd                              ; $50c6: $20 $05

  ld l, $06                                       ; $50c8: $2e $06
  call Call_003_48de                              ; $50ca: $cd $de $48

jr_003_50cd:
  dec b                                           ; $50cd: $05
  jr nz, jr_003_50c0                              ; $50ce: $20 $f0

  ret                                             ; $50d0: $c9


  call Call_003_5269                              ; $50d1: $cd $69 $52
  xor a                                           ; $50d4: $af
  ld [$cc2c], a                                   ; $50d5: $ea $2c $cc
  ld a, $01                                       ; $50d8: $3e $01
  ld l, $11                                       ; $50da: $2e $11
  call Call_003_48de                              ; $50dc: $cd $de $48
  ret                                             ; $50df: $c9


  ret                                             ; $50e0: $c9


  call Call_000_33f3                              ; $50e1: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffa6]                                  ; $50e7: $f0 $a6
  or a                                            ; $50e9: $b7
  call nz, Call_003_4e96                          ; $50ea: $c4 $96 $4e
  ldh a, [$ffa6]                                  ; $50ed: $f0 $a6
  bit 0, a                                        ; $50ef: $cb $47
  jr nz, jr_003_512b                              ; $50f1: $20 $38

  bit 1, a                                        ; $50f3: $cb $4f
  jr nz, jr_003_5160                              ; $50f5: $20 $69

  bit 7, a                                        ; $50f7: $cb $7f
  jr nz, jr_003_5115                              ; $50f9: $20 $1a

  bit 6, a                                        ; $50fb: $cb $77
  jr nz, jr_003_5100                              ; $50fd: $20 $01

  ret                                             ; $50ff: $c9


jr_003_5100:
  ld a, $07                                       ; $5100: $3e $07
  ld hl, $cb70                                    ; $5102: $21 $70 $cb
  cp [hl]                                         ; $5105: $be
  ret z                                           ; $5106: $c8

  ld [hl], a                                      ; $5107: $77
  xor a                                           ; $5108: $af
  call Call_003_5499                              ; $5109: $cd $99 $54
  call Call_000_33f3                              ; $510c: $cd $f3 $33

  db $1e, $d9, $60

  jp Jump_003_53a2                                ; $5112: $c3 $a2 $53


jr_003_5115:
  ld a, $08                                       ; $5115: $3e $08
  ld hl, $cb70                                    ; $5117: $21 $70 $cb
  cp [hl]                                         ; $511a: $be
  ret z                                           ; $511b: $c8

  ld [hl], a                                      ; $511c: $77
  ld a, $03                                       ; $511d: $3e $03
  call Call_003_5499                              ; $511f: $cd $99 $54
  call Call_000_33f3                              ; $5122: $cd $f3 $33

  db $1e, $d9, $60

  jp Jump_003_53a2                                ; $5128: $c3 $a2 $53


jr_003_512b:
  ldh a, [$ffd3]                                  ; $512b: $f0 $d3
  ld hl, $cb71                                    ; $512d: $21 $71 $cb
  rst $08                                         ; $5130: $cf
  or a                                            ; $5131: $b7
  ret nz                                          ; $5132: $c0

  ld a, $00                                       ; $5133: $3e $00
  call Call_000_392b                              ; $5135: $cd $2b $39
  ld a, [$cb70]                                   ; $5138: $fa $70 $cb
  sub $07                                         ; $513b: $d6 $07
  ld l, a                                         ; $513d: $6f
  add a                                           ; $513e: $87
  add a                                           ; $513f: $87
  add l                                           ; $5140: $85
  ld hl, $ffd3                                    ; $5141: $21 $d3 $ff
  add [hl]                                        ; $5144: $86
  ld d, a                                         ; $5145: $57
  ld e, $00                                       ; $5146: $1e $00
  add $8e                                         ; $5148: $c6 $8e
  ld b, a                                         ; $514a: $47
  cp $93                                          ; $514b: $fe $93
  jr z, jr_003_5151                               ; $514d: $28 $02

  jr jr_003_515c                                  ; $514f: $18 $0b

jr_003_5151:
  call Call_000_33f3                              ; $5151: $cd $f3 $33
  ld [$4f62], sp                                  ; $5154: $08 $62 $4f
  jr nz, jr_003_515c                              ; $5157: $20 $03

  jp $4baf                                        ; $5159: $c3 $af $4b


jr_003_515c:
  ld a, b                                         ; $515c: $78
  jp $4bbc                                        ; $515d: $c3 $bc $4b


jr_003_5160:
  ld a, $03                                       ; $5160: $3e $03
  call Call_000_392b                              ; $5162: $cd $2b $39
  ld a, $1a                                       ; $5165: $3e $1a
  jp Jump_000_261e                                ; $5167: $c3 $1e $26


  call Call_000_33f3                              ; $516a: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffa6]                                  ; $5170: $f0 $a6
  or a                                            ; $5172: $b7
  call nz, Call_003_4e96                          ; $5173: $c4 $96 $4e
  ldh a, [$ffa6]                                  ; $5176: $f0 $a6
  bit 0, a                                        ; $5178: $cb $47
  jr nz, jr_003_5181                              ; $517a: $20 $05

  bit 1, a                                        ; $517c: $cb $4f
  jr nz, jr_003_51b9                              ; $517e: $20 $39

  ret                                             ; $5180: $c9


jr_003_5181:
  ldh a, [$ffd3]                                  ; $5181: $f0 $d3
  ld hl, $cb71                                    ; $5183: $21 $71 $cb
  rst $08                                         ; $5186: $cf
  or a                                            ; $5187: $b7
  ret nz                                          ; $5188: $c0

  ld a, $00                                       ; $5189: $3e $00
  call Call_000_392b                              ; $518b: $cd $2b $39
  call Call_003_4ffc                              ; $518e: $cd $fc $4f
  ld [$cc29], a                                   ; $5191: $ea $29 $cc
  cp $12                                          ; $5194: $fe $12
  jr z, jr_003_51a8                               ; $5196: $28 $10

  cp $13                                          ; $5198: $fe $13
  jr z, jr_003_51a8                               ; $519a: $28 $0c

  ld a, $02                                       ; $519c: $3e $02
  ld [$cc2c], a                                   ; $519e: $ea $2c $cc
  ld a, $03                                       ; $51a1: $3e $03
  call Call_003_565b                              ; $51a3: $cd $5b $56
  jr jr_003_51b4                                  ; $51a6: $18 $0c

jr_003_51a8:
  ld a, $02                                       ; $51a8: $3e $02
  ld [$cc2c], a                                   ; $51aa: $ea $2c $cc
  ld a, $03                                       ; $51ad: $3e $03
  call Call_003_5657                              ; $51af: $cd $57 $56
  jr jr_003_51b4                                  ; $51b2: $18 $00

jr_003_51b4:
  ld a, $22                                       ; $51b4: $3e $22
  jp Jump_000_261e                                ; $51b6: $c3 $1e $26


jr_003_51b9:
  ld a, $03                                       ; $51b9: $3e $03
  call Call_000_392b                              ; $51bb: $cd $2b $39
  ld a, $1b                                       ; $51be: $3e $1b
  jp Jump_000_261e                                ; $51c0: $c3 $1e $26


  call Call_000_33f3                              ; $51c3: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffa6]                                  ; $51c9: $f0 $a6
  or a                                            ; $51cb: $b7
  call nz, Call_003_4e96                          ; $51cc: $c4 $96 $4e
  ldh a, [$ffa6]                                  ; $51cf: $f0 $a6
  bit 0, a                                        ; $51d1: $cb $47
  jr nz, jr_003_520a                              ; $51d3: $20 $35

  bit 1, a                                        ; $51d5: $cb $4f
  jr nz, jr_003_522c                              ; $51d7: $20 $53

  bit 7, a                                        ; $51d9: $cb $7f
  jr nz, jr_003_51f6                              ; $51db: $20 $19

  bit 6, a                                        ; $51dd: $cb $77
  jr nz, jr_003_51e2                              ; $51df: $20 $01

  ret                                             ; $51e1: $c9


jr_003_51e2:
  ld a, $09                                       ; $51e2: $3e $09
  ld hl, $cb70                                    ; $51e4: $21 $70 $cb
  cp [hl]                                         ; $51e7: $be
  ret z                                           ; $51e8: $c8

  ld [hl], a                                      ; $51e9: $77
  ld a, [$cc25]                                   ; $51ea: $fa $25 $cc
  call Call_000_33f3                              ; $51ed: $cd $f3 $33

  db $08, $5b, $75

  jp Jump_003_53a2                                ; $51f3: $c3 $a2 $53


jr_003_51f6:
  ld a, $0a                                       ; $51f6: $3e $0a
  ld hl, $cb70                                    ; $51f8: $21 $70 $cb
  cp [hl]                                         ; $51fb: $be
  ret z                                           ; $51fc: $c8

  ld [hl], a                                      ; $51fd: $77
  ld a, [$cc25]                                   ; $51fe: $fa $25 $cc
  call Call_000_33f3                              ; $5201: $cd $f3 $33

  db $08, $5b, $75

  jp Jump_003_53a2                                ; $5207: $c3 $a2 $53


jr_003_520a:
  ldh a, [$ffd3]                                  ; $520a: $f0 $d3
  ld hl, $cb71                                    ; $520c: $21 $71 $cb
  rst $08                                         ; $520f: $cf
  or a                                            ; $5210: $b7
  ret nz                                          ; $5211: $c0

  ld a, $00                                       ; $5212: $3e $00
  call Call_000_392b                              ; $5214: $cd $2b $39
  ld a, [$cb70]                                   ; $5217: $fa $70 $cb
  sub $09                                         ; $521a: $d6 $09
  ld l, a                                         ; $521c: $6f
  add a                                           ; $521d: $87
  add a                                           ; $521e: $87
  add l                                           ; $521f: $85
  ld hl, $ffd3                                    ; $5220: $21 $d3 $ff
  add [hl]                                        ; $5223: $86
  ld d, a                                         ; $5224: $57
  ld e, $00                                       ; $5225: $1e $00
  ld a, $1c                                       ; $5227: $3e $1c
  jp Jump_000_2621                                ; $5229: $c3 $21 $26


jr_003_522c:
  ld a, $03                                       ; $522c: $3e $03
  call Call_000_392b                              ; $522e: $cd $2b $39
  ld a, $1a                                       ; $5231: $3e $1a
  jp Jump_000_261e                                ; $5233: $c3 $1e $26


  ld a, [$cc25]                                   ; $5236: $fa $25 $cc
  call Call_003_48c5                              ; $5239: $cd $c5 $48
  cp $06                                          ; $523c: $fe $06
  ret z                                           ; $523e: $c8

  ldh a, [$ffa6]                                  ; $523f: $f0 $a6
  and $03                                         ; $5241: $e6 $03
  ret z                                           ; $5243: $c8

  call Call_003_5269                              ; $5244: $cd $69 $52
  call Call_003_53a2                              ; $5247: $cd $a2 $53
  rst $20                                         ; $524a: $e7
  jp Jump_003_4949                                ; $524b: $c3 $49 $49


  xor a                                           ; $524e: $af
  ld [$cc2c], a                                   ; $524f: $ea $2c $cc
  ld a, $1e                                       ; $5252: $3e $1e
  ld [$cc30], a                                   ; $5254: $ea $30 $cc
  ret                                             ; $5257: $c9


  ld a, [$cc30]                                   ; $5258: $fa $30 $cc
  or a                                            ; $525b: $b7
  ret z                                           ; $525c: $c8

  dec a                                           ; $525d: $3d
  ld [$cc30], a                                   ; $525e: $ea $30 $cc
  ret nz                                          ; $5261: $c0

  call Call_000_33f3                              ; $5262: $cd $f3 $33

  db $09, $30, $67

  ret                                             ; $5268: $c9


Call_003_5269:
  push bc                                         ; $5269: $c5
  push de                                         ; $526a: $d5
  push hl                                         ; $526b: $e5
  ld c, $1c                                       ; $526c: $0e $1c
  ld d, $04                                       ; $526e: $16 $04
  ld e, $11                                       ; $5270: $1e $11
  ld hl, $01c0                                    ; $5272: $21 $c0 $01
  ld b, $00                                       ; $5275: $06 $00
  call Call_000_14a1                              ; $5277: $cd $a1 $14
  pop hl                                          ; $527a: $e1
  pop de                                          ; $527b: $d1
  pop bc                                          ; $527c: $c1
  ret                                             ; $527d: $c9


Call_003_527e:
  ldh a, [rSVBK]                                  ; $527e: $f0 $70
  push af                                         ; $5280: $f5
  ld a, $05                                       ; $5281: $3e $05
  ldh [rSVBK], a                                  ; $5283: $e0 $70
  call Call_003_4973                              ; $5285: $cd $73 $49
  ld a, [hl]                                      ; $5288: $7e
  ldh [$ffbd], a                                  ; $5289: $e0 $bd
  pop af                                          ; $528b: $f1
  ldh [rSVBK], a                                  ; $528c: $e0 $70
  ldh a, [$ffbd]                                  ; $528e: $f0 $bd
  cp $06                                          ; $5290: $fe $06
  jr nz, jr_003_5296                              ; $5292: $20 $02

  ld a, $01                                       ; $5294: $3e $01

Call_003_5296:
jr_003_5296:
  cp $07                                          ; $5296: $fe $07
  jr c, jr_003_529c                               ; $5298: $38 $02

  ld a, $06                                       ; $529a: $3e $06

jr_003_529c:
  push af                                         ; $529c: $f5
  ld b, $af                                       ; $529d: $06 $af
  add b                                           ; $529f: $80
  ld bc, $6029                                    ; $52a0: $01 $29 $60
  ld hl, $0131                                    ; $52a3: $21 $31 $01
  call Call_000_33f3                              ; $52a6: $cd $f3 $33

  db $00, $4f, $10

  ld a, $01                                       ; $52ac: $3e $01
  ld bc, $624b                                    ; $52ae: $01 $4b $62
  ld de, $d1f1                                    ; $52b1: $11 $f1 $d1
  ld hl, $00b1                                    ; $52b4: $21 $b1 $00
  call Call_000_33f3                              ; $52b7: $cd $f3 $33

  db $00, $5f, $10

  pop af                                          ; $52bd: $f1
  ld b, $af                                       ; $52be: $06 $af
  add b                                           ; $52c0: $80
  ld hl, $6251                                    ; $52c1: $21 $51 $62
  call Call_000_3427                              ; $52c4: $cd $27 $34

  db $00, $b1, $10

Call_003_52ca:
  call Call_003_432b                              ; $52ca: $cd $2b $43
  cp $34                                          ; $52cd: $fe $34
  jr z, jr_003_52d2                               ; $52cf: $28 $01

  ret                                             ; $52d1: $c9


jr_003_52d2:
  ld a, $30                                       ; $52d2: $3e $30
  call Call_000_3427                              ; $52d4: $cd $27 $34

  db $01, $21, $69

Call_003_52da:
  ld hl, $ffb9                                    ; $52da: $21 $b9 $ff
  ld [hl], $b3                                    ; $52dd: $36 $b3
  inc hl                                          ; $52df: $23
  ld [hl], $02                                    ; $52e0: $36 $02
  ld a, $6a                                       ; $52e2: $3e $6a
  ld hl, $558b                                    ; $52e4: $21 $8b $55
  call Call_000_33f3                              ; $52e7: $cd $f3 $33

  db $00, $60, $2a

  ld a, [$cc49]                                   ; $52ed: $fa $49 $cc
  or a                                            ; $52f0: $b7
  jp z, Jump_003_5362                             ; $52f1: $ca $62 $53

  cp $05                                          ; $52f4: $fe $05
  jr z, jr_003_530e                               ; $52f6: $28 $16

  cp $06                                          ; $52f8: $fe $06
  jr z, jr_003_530a                               ; $52fa: $28 $0e

  cp $07                                          ; $52fc: $fe $07
  jr nz, jr_003_5362                              ; $52fe: $20 $62

  ld a, $80                                       ; $5300: $3e $80
  call Call_000_33f3                              ; $5302: $cd $f3 $33
  ld bc, $6921                                    ; $5305: $01 $21 $69
  jr jr_003_5362                                  ; $5308: $18 $58

jr_003_530a:
  ld a, $05                                       ; $530a: $3e $05
  jr jr_003_531a                                  ; $530c: $18 $0c

jr_003_530e:
  ld a, $88                                       ; $530e: $3e $88
  call Call_000_33f3                              ; $5310: $cd $f3 $33

  db $01, $21, $69

  ld a, $04                                       ; $5316: $3e $04
  jr jr_003_531a                                  ; $5318: $18 $00

jr_003_531a:
  push af                                         ; $531a: $f5
  ld hl, $ffb9                                    ; $531b: $21 $b9 $ff
  ld [hl], $68                                    ; $531e: $36 $68
  inc hl                                          ; $5320: $23
  ld [hl], $01                                    ; $5321: $36 $01
  ld hl, $5e82                                    ; $5323: $21 $82 $5e
  call Call_000_33f3                              ; $5326: $cd $f3 $33

  db $00, $60, $2a

  call Call_000_35e1                              ; $532c: $cd $e1 $35

  db $00, $00, $14, $0e

  ld de, $d000                                    ; $5333: $11 $00 $d0
  pop af                                          ; $5336: $f1
  push af                                         ; $5337: $f5
  ldh [$ffbd], a                                  ; $5338: $e0 $bd
  ldh a, [rSVBK]                                  ; $533a: $f0 $70
  push af                                         ; $533c: $f5
  ld a, $01                                       ; $533d: $3e $01
  ldh [rSVBK], a                                  ; $533f: $e0 $70
  ldh a, [$ffbd]                                  ; $5341: $f0 $bd
  ld bc, $0000                                    ; $5343: $01 $00 $00
  ld hl, $5e97                                    ; $5346: $21 $97 $5e
  call Call_000_33f3                              ; $5349: $cd $f3 $33

  db $00, $84, $33

  pop af                                          ; $534f: $f1
  ldh [rSVBK], a                                  ; $5350: $e0 $70
  pop af                                          ; $5352: $f1
  ld hl, $5eac                                    ; $5353: $21 $ac $5e
  call Call_000_33f3                              ; $5356: $cd $f3 $33

  db $00, $51, $27

  ld de, $4cd3                                    ; $535c: $11 $d3 $4c
  jp Jump_000_1411                                ; $535f: $c3 $11 $14


Jump_003_5362:
jr_003_5362:
  call Call_003_52ca                              ; $5362: $cd $ca $52
  ld hl, $ffb9                                    ; $5365: $21 $b9 $ff
  ld [hl], $68                                    ; $5368: $36 $68
  inc hl                                          ; $536a: $23
  ld [hl], $01                                    ; $536b: $36 $01
  call Call_003_432b                              ; $536d: $cd $2b $43
  ld hl, $5a4a                                    ; $5370: $21 $4a $5a
  call Call_000_33f3                              ; $5373: $cd $f3 $33

  db $00, $60, $2a

  call Call_000_35e1                              ; $5379: $cd $e1 $35

  db $00, $00, $14, $0e

  ld de, $d000                                    ; $5380: $11 $00 $d0
  ldh a, [rSVBK]                                  ; $5383: $f0 $70
  push af                                         ; $5385: $f5
  ld a, $01                                       ; $5386: $3e $01
  ldh [rSVBK], a                                  ; $5388: $e0 $70
  call Call_003_432b                              ; $538a: $cd $2b $43
  ld bc, $0000                                    ; $538d: $01 $00 $00
  ld hl, $5bb2                                    ; $5390: $21 $b2 $5b
  call Call_000_33f3                              ; $5393: $cd $f3 $33

  db $00, $84, $33

  pop af                                          ; $5399: $f1
  ldh [rSVBK], a                                  ; $539a: $e0 $70
  ld de, $4cd3                                    ; $539c: $11 $d3 $4c
  jp Jump_000_1411                                ; $539f: $c3 $11 $14


Call_003_53a2:
Jump_003_53a2:
  ld a, [$cc25]                                   ; $53a2: $fa $25 $cc
  cp $03                                          ; $53a5: $fe $03
  ret nc                                          ; $53a7: $d0

  rst $18                                         ; $53a8: $df
  ld a, [$cc25]                                   ; $53a9: $fa $25 $cc
  ld l, $0d                                       ; $53ac: $2e $0d
  call Call_003_48de                              ; $53ae: $cd $de $48
  call Call_003_4e96                              ; $53b1: $cd $96 $4e
  call Call_003_54a5                              ; $53b4: $cd $a5 $54
  call Call_003_5412                              ; $53b7: $cd $12 $54
  call Call_003_527e                              ; $53ba: $cd $7e $52
  jp RST_20                                       ; $53bd: $c3 $20 $00


  db $5e, $c0, $04, $80, $00, $00, $9f, $cb, $64, $c0, $01, $a0, $20, $00, $9f, $cb

Call_003_53d0:
  ld a, [$cc49]                                   ; $53d0: $fa $49 $cc
  or a                                            ; $53d3: $b7
  jr z, jr_003_53ee                               ; $53d4: $28 $18

  cp $05                                          ; $53d6: $fe $05
  jr z, jr_003_53e0                               ; $53d8: $28 $06

  cp $06                                          ; $53da: $fe $06
  jr z, jr_003_53e7                               ; $53dc: $28 $09

  jr jr_003_53ee                                  ; $53de: $18 $0e

jr_003_53e0:
  ld a, $04                                       ; $53e0: $3e $04
  ld hl, $5eac                                    ; $53e2: $21 $ac $5e
  jr jr_003_53f4                                  ; $53e5: $18 $0d

jr_003_53e7:
  ld a, $05                                       ; $53e7: $3e $05
  ld hl, $5eac                                    ; $53e9: $21 $ac $5e
  jr jr_003_53f4                                  ; $53ec: $18 $06

jr_003_53ee:
  call Call_003_432b                              ; $53ee: $cd $2b $43
  ld hl, $5d1a                                    ; $53f1: $21 $1a $5d

jr_003_53f4:
  call Call_000_33f3                              ; $53f4: $cd $f3 $33

  db $00, $51, $27

  ld hl, $53c0                                    ; $53fa: $21 $c0 $53
  call Call_003_5405                              ; $53fd: $cd $05 $54
  ld hl, $53c8                                    ; $5400: $21 $c8 $53
  jr jr_003_540a                                  ; $5403: $18 $05

Call_003_5405:
  push hl                                         ; $5405: $e5
  call Call_000_1a53                              ; $5406: $cd $53 $1a
  pop hl                                          ; $5409: $e1

jr_003_540a:
  ld a, [hl+]                                     ; $540a: $2a
  ld e, a                                         ; $540b: $5f
  ld a, [hl+]                                     ; $540c: $2a
  ld d, a                                         ; $540d: $57
  call Call_000_0263                              ; $540e: $cd $63 $02
  ret                                             ; $5411: $c9


Call_003_5412:
  call Call_003_4973                              ; $5412: $cd $73 $49

Call_003_5415:
  push bc                                         ; $5415: $c5
  push hl                                         ; $5416: $e5
  ld c, $1c                                       ; $5417: $0e $1c
  ld d, $02                                       ; $5419: $16 $02
  ld e, $05                                       ; $541b: $1e $05
  ld hl, $01eb                                    ; $541d: $21 $eb $01
  call Call_000_149f                              ; $5420: $cd $9f $14
  pop hl                                          ; $5423: $e1
  push hl                                         ; $5424: $e5
  ldh a, [rSVBK]                                  ; $5425: $f0 $70
  push af                                         ; $5427: $f5
  ld a, $05                                       ; $5428: $3e $05
  ldh [rSVBK], a                                  ; $542a: $e0 $70
  ld de, $000a                                    ; $542c: $11 $0a $00
  add hl, de                                      ; $542f: $19
  bit 2, [hl]                                     ; $5430: $cb $56
  jr nz, jr_003_5439                              ; $5432: $20 $05

  ld hl, $4ca1                                    ; $5434: $21 $a1 $4c
  jr jr_003_543c                                  ; $5437: $18 $03

jr_003_5439:
  ld hl, $4ca1                                    ; $5439: $21 $a1 $4c

jr_003_543c:
  pop af                                          ; $543c: $f1
  ldh [rSVBK], a                                  ; $543d: $e0 $70
  call Call_000_3013                              ; $543f: $cd $13 $30
  pop hl                                          ; $5442: $e1
  push hl                                         ; $5443: $e5
  ldh a, [rSVBK]                                  ; $5444: $f0 $70
  push af                                         ; $5446: $f5
  ld a, $05                                       ; $5447: $3e $05
  ldh [rSVBK], a                                  ; $5449: $e0 $70
  ld de, $0001                                    ; $544b: $11 $01 $00
  add hl, de                                      ; $544e: $19
  ld a, [hl+]                                     ; $544f: $2a
  ld d, [hl]                                      ; $5450: $56
  ld e, a                                         ; $5451: $5f
  inc hl                                          ; $5452: $23
  inc hl                                          ; $5453: $23
  inc hl                                          ; $5454: $23
  ld a, [hl+]                                     ; $5455: $2a
  ld b, [hl]                                      ; $5456: $46
  ld c, a                                         ; $5457: $4f
  pop af                                          ; $5458: $f1
  ldh [rSVBK], a                                  ; $5459: $e0 $70
  ld hl, $000a                                    ; $545b: $21 $0a $00
  call Call_000_33f3                              ; $545e: $cd $f3 $33

  db $01, $8d, $65

  pop hl                                          ; $5464: $e1
  ldh a, [rSVBK]                                  ; $5465: $f0 $70
  push af                                         ; $5467: $f5
  ld a, $05                                       ; $5468: $3e $05
  ldh [rSVBK], a                                  ; $546a: $e0 $70
  ld de, $0003                                    ; $546c: $11 $03 $00
  add hl, de                                      ; $546f: $19
  ld a, [hl+]                                     ; $5470: $2a
  ld d, [hl]                                      ; $5471: $56
  ld e, a                                         ; $5472: $5f
  inc hl                                          ; $5473: $23
  inc hl                                          ; $5474: $23
  inc hl                                          ; $5475: $23
  ld a, [hl+]                                     ; $5476: $2a
  ld b, [hl]                                      ; $5477: $46
  ld c, a                                         ; $5478: $4f
  pop af                                          ; $5479: $f1
  ldh [rSVBK], a                                  ; $547a: $e0 $70
  ld hl, $000d                                    ; $547c: $21 $0d $00
  call Call_000_33f3                              ; $547f: $cd $f3 $33

  db $01, $8d, $65

  pop bc                                          ; $5485: $c1
  ret                                             ; $5486: $c9


  xor a                                           ; $5487: $af
  ld hl, $cb71                                    ; $5488: $21 $71 $cb
  ld [hl+], a                                     ; $548b: $22
  ld [hl+], a                                     ; $548c: $22
  ld [hl+], a                                     ; $548d: $22
  ld [hl+], a                                     ; $548e: $22
  ld [hl+], a                                     ; $548f: $22
  ret                                             ; $5490: $c9


  db $ef, $47, $39, $48, $52, $48, $18, $48

Call_003_5499:
  ld hl, $5491                                    ; $5499: $21 $91 $54
  call ResolveIndexedPointer16                              ; $549c: $cd $8b $31
  call Call_000_3427                              ; $549f: $cd $27 $34

  db $06, $ef, $50

Call_003_54a5:
  ld hl, $ffb9                                    ; $54a5: $21 $b9 $ff
  ld [hl], $1c                                    ; $54a8: $36 $1c
  inc hl                                          ; $54aa: $23
  ld [hl], $01                                    ; $54ab: $36 $01
  ld a, [$cb70]                                   ; $54ad: $fa $70 $cb
  ld hl, $5972                                    ; $54b0: $21 $72 $59
  call Call_000_33f3                              ; $54b3: $cd $f3 $33

  db $00, $60, $2a

  call Call_000_33f3                              ; $54b9: $cd $f3 $33

  db $01, $53, $41

  ld a, [$cb70]                                   ; $54bf: $fa $70 $cb
  ld de, $4ce8                                    ; $54c2: $11 $e8 $4c
  call Call_000_33f3                              ; $54c5: $cd $f3 $33

  db $00, $e7, $26

  call Call_003_54cf                              ; $54cb: $cd $cf $54
  ret                                             ; $54ce: $c9


Call_003_54cf:
  ld b, $05                                       ; $54cf: $06 $05
  ld de, $0000                                    ; $54d1: $11 $00 $00
  ld a, [$cb70]                                   ; $54d4: $fa $70 $cb
  cp $0b                                          ; $54d7: $fe $0b
  jr nc, jr_003_54f7                              ; $54d9: $30 $1c

jr_003_54db:
  ld a, $05                                       ; $54db: $3e $05
  sub b                                           ; $54dd: $90
  ld hl, $cb71                                    ; $54de: $21 $71 $cb
  rst $08                                         ; $54e1: $cf
  ld a, [$cb70]                                   ; $54e2: $fa $70 $cb
  add [hl]                                        ; $54e5: $86
  ld hl, $59de                                    ; $54e6: $21 $de $59
  call Call_000_33f3                              ; $54e9: $cd $f3 $33

  db $00, $2b, $36

  ld a, e                                         ; $54ef: $7b
  add $08                                         ; $54f0: $c6 $08
  ld e, a                                         ; $54f2: $5f
  dec b                                           ; $54f3: $05
  jr nz, jr_003_54db                              ; $54f4: $20 $e5

  ret                                             ; $54f6: $c9


jr_003_54f7:
  ld a, [$cb70]                                   ; $54f7: $fa $70 $cb
  ld hl, $59de                                    ; $54fa: $21 $de $59
  call Call_000_33f3                              ; $54fd: $cd $f3 $33

  db $00, $2b, $36

jr_003_5503:
  ld a, $04                                       ; $5503: $3e $04
  sub b                                           ; $5505: $90
  ld hl, $cb71                                    ; $5506: $21 $71 $cb
  rst $08                                         ; $5509: $cf
  ld a, [$cb70]                                   ; $550a: $fa $70 $cb
  add [hl]                                        ; $550d: $86
  ld hl, $59de                                    ; $550e: $21 $de $59
  call Call_000_33f3                              ; $5511: $cd $f3 $33

  db $00, $2b, $36

  ld a, e                                         ; $5517: $7b
  add $08                                         ; $5518: $c6 $08
  ld e, a                                         ; $551a: $5f
  dec b                                           ; $551b: $05
  jr nz, jr_003_5503                              ; $551c: $20 $e5

  ret                                             ; $551e: $c9


Call_003_551f:
  ld a, [$cc25]                                   ; $551f: $fa $25 $cc
  or a                                            ; $5522: $b7
  jr z, jr_003_5553                               ; $5523: $28 $2e

  cp $01                                          ; $5525: $fe $01
  jr z, jr_003_552e                               ; $5527: $28 $05

  cp $02                                          ; $5529: $fe $02
  jr z, jr_003_5565                               ; $552b: $28 $38

  ret                                             ; $552d: $c9


jr_003_552e:
  ldh [$ffbd], a                                  ; $552e: $e0 $bd
  ldh a, [rSVBK]                                  ; $5530: $f0 $70
  push af                                         ; $5532: $f5
  ld a, $06                                       ; $5533: $3e $06
  ldh [rSVBK], a                                  ; $5535: $e0 $70
  ldh a, [$ffbd]                                  ; $5537: $f0 $bd
  ld a, [$ddc7]                                   ; $5539: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $553c: $e0 $bd
  pop af                                          ; $553e: $f1
  ldh [rSVBK], a                                  ; $553f: $e0 $70
  ldh a, [$ffbd]                                  ; $5541: $f0 $bd
  cp $04                                          ; $5543: $fe $04
  jr z, jr_003_554d                               ; $5545: $28 $06

  ld a, $00                                       ; $5547: $3e $00
  ld [$cb70], a                                   ; $5549: $ea $70 $cb
  ret                                             ; $554c: $c9


jr_003_554d:
  ld a, $04                                       ; $554d: $3e $04
  ld [$cb70], a                                   ; $554f: $ea $70 $cb
  ret                                             ; $5552: $c9


jr_003_5553:
  ld a, [$cbcb]                                   ; $5553: $fa $cb $cb
  bit 0, a                                        ; $5556: $cb $47
  jr z, jr_003_555f                               ; $5558: $28 $05

  ld a, $12                                       ; $555a: $3e $12
  ld [$cb72], a                                   ; $555c: $ea $72 $cb

jr_003_555f:
  ld a, $01                                       ; $555f: $3e $01
  ld [$cb70], a                                   ; $5561: $ea $70 $cb
  ret                                             ; $5564: $c9


jr_003_5565:
  ldh [$ffbd], a                                  ; $5565: $e0 $bd
  ldh a, [rSVBK]                                  ; $5567: $f0 $70
  push af                                         ; $5569: $f5
  ld a, $05                                       ; $556a: $3e $05
  ldh [rSVBK], a                                  ; $556c: $e0 $70
  ldh a, [$ffbd]                                  ; $556e: $f0 $bd
  call Call_003_4976                              ; $5570: $cd $76 $49
  ld a, [hl]                                      ; $5573: $7e
  ldh [$ffbd], a                                  ; $5574: $e0 $bd
  pop af                                          ; $5576: $f1
  ldh [rSVBK], a                                  ; $5577: $e0 $70
  ldh a, [$ffbd]                                  ; $5579: $f0 $bd
  cp $05                                          ; $557b: $fe $05
  jr z, jr_003_5591                               ; $557d: $28 $12

  ld a, [$cbcb]                                   ; $557f: $fa $cb $cb
  bit 1, a                                        ; $5582: $cb $4f
  jr z, jr_003_558b                               ; $5584: $28 $05

  ld a, $12                                       ; $5586: $3e $12
  ld [$cb72], a                                   ; $5588: $ea $72 $cb

jr_003_558b:
  ld a, $02                                       ; $558b: $3e $02
  ld [$cb70], a                                   ; $558d: $ea $70 $cb
  ret                                             ; $5590: $c9


jr_003_5591:
  ld a, $03                                       ; $5591: $3e $03
  ld [$cb70], a                                   ; $5593: $ea $70 $cb
  ret                                             ; $5596: $c9


Call_003_5597:
  ret                                             ; $5597: $c9


  ret                                             ; $5598: $c9


  ld a, $06                                       ; $5599: $3e $06
  ld [$cb70], a                                   ; $559b: $ea $70 $cb
  call Call_000_33f3                              ; $559e: $cd $f3 $33

  db $1e, $3b, $58

  ld hl, $cc2c                                    ; $55a4: $21 $2c $cc
  res 4, [hl]                                     ; $55a7: $cb $a6
  xor a                                           ; $55a9: $af
  call Call_003_5499                              ; $55aa: $cd $99 $54
  jp Jump_003_53a2                                ; $55ad: $c3 $a2 $53


  call Call_000_33f3                              ; $55b0: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffa6]                                  ; $55b6: $f0 $a6
  or a                                            ; $55b8: $b7
  call nz, Call_003_4e96                          ; $55b9: $c4 $96 $4e
  ldh a, [$ffa6]                                  ; $55bc: $f0 $a6
  bit 0, a                                        ; $55be: $cb $47
  jr nz, jr_003_55c7                              ; $55c0: $20 $05

  bit 1, a                                        ; $55c2: $cb $4f
  jr nz, jr_003_55ed                              ; $55c4: $20 $27

  ret                                             ; $55c6: $c9


jr_003_55c7:
  ldh a, [$ffd3]                                  ; $55c7: $f0 $d3
  ld hl, $cb71                                    ; $55c9: $21 $71 $cb
  rst $08                                         ; $55cc: $cf
  or a                                            ; $55cd: $b7
  ret nz                                          ; $55ce: $c0

  ld a, $00                                       ; $55cf: $3e $00
  call Call_000_392b                              ; $55d1: $cd $2b $39
  ldh a, [$ffd3]                                  ; $55d4: $f0 $d3
  ld [$cbcc], a                                   ; $55d6: $ea $cc $cb
  ld a, $f1                                       ; $55d9: $3e $f1
  ld [$cc29], a                                   ; $55db: $ea $29 $cc
  ld a, $02                                       ; $55de: $3e $02
  ld [$cc2c], a                                   ; $55e0: $ea $2c $cc
  ld a, $03                                       ; $55e3: $3e $03
  call Call_003_565b                              ; $55e5: $cd $5b $56
  ld a, $22                                       ; $55e8: $3e $22
  jp Jump_000_261e                                ; $55ea: $c3 $1e $26


jr_003_55ed:
  ld a, $03                                       ; $55ed: $3e $03
  call Call_000_392b                              ; $55ef: $cd $2b $39
  ld a, $1a                                       ; $55f2: $3e $1a
  jp Jump_000_261e                                ; $55f4: $c3 $1e $26


  ld a, $05                                       ; $55f7: $3e $05
  ld [$cb70], a                                   ; $55f9: $ea $70 $cb
  call Call_000_33f3                              ; $55fc: $cd $f3 $33

  db $08, $37, $75

  ld hl, $cc2c                                    ; $5602: $21 $2c $cc
  res 4, [hl]                                     ; $5605: $cb $a6
  ld a, $03                                       ; $5607: $3e $03
  call Call_003_5499                              ; $5609: $cd $99 $54
  jp Jump_003_53a2                                ; $560c: $c3 $a2 $53


  call Call_000_33f3                              ; $560f: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffa6]                                  ; $5615: $f0 $a6
  or a                                            ; $5617: $b7
  call nz, Call_003_4e96                          ; $5618: $c4 $96 $4e
  ldh a, [$ffa6]                                  ; $561b: $f0 $a6
  bit 0, a                                        ; $561d: $cb $47
  jr nz, jr_003_5626                              ; $561f: $20 $05

  bit 1, a                                        ; $5621: $cb $4f
  jr nz, jr_003_564c                              ; $5623: $20 $27

  ret                                             ; $5625: $c9


jr_003_5626:
  ldh a, [$ffd3]                                  ; $5626: $f0 $d3
  ld hl, $cb71                                    ; $5628: $21 $71 $cb
  rst $08                                         ; $562b: $cf
  or a                                            ; $562c: $b7
  ret nz                                          ; $562d: $c0

  ld a, $00                                       ; $562e: $3e $00
  call Call_000_392b                              ; $5630: $cd $2b $39
  ldh a, [$ffd3]                                  ; $5633: $f0 $d3
  ld [$cbcc], a                                   ; $5635: $ea $cc $cb
  ld a, $f1                                       ; $5638: $3e $f1
  ld [$cc29], a                                   ; $563a: $ea $29 $cc
  ld a, $02                                       ; $563d: $3e $02
  ld [$cc2c], a                                   ; $563f: $ea $2c $cc
  ld a, $03                                       ; $5642: $3e $03
  call Call_003_5657                              ; $5644: $cd $57 $56
  ld a, $22                                       ; $5647: $3e $22
  jp Jump_000_261e                                ; $5649: $c3 $1e $26


jr_003_564c:
  ld a, $03                                       ; $564c: $3e $03
  call Call_000_392b                              ; $564e: $cd $2b $39
  ld a, $1a                                       ; $5651: $3e $1a
  jp Jump_000_261e                                ; $5653: $c3 $1e $26


Call_003_5656:
  ret                                             ; $5656: $c9


Call_003_5657:
Jump_003_5657:
  ld e, $03                                       ; $5657: $1e $03
  jr jr_003_565d                                  ; $5659: $18 $02

Call_003_565b:
Jump_003_565b:
  ld e, $06                                       ; $565b: $1e $06

jr_003_565d:
  ld d, a                                         ; $565d: $57
  ld b, $03                                       ; $565e: $06 $03

jr_003_5660:
  inc d                                           ; $5660: $14
  ld a, e                                         ; $5661: $7b
  cp d                                            ; $5662: $ba
  jr nc, jr_003_5668                              ; $5663: $30 $03

  sub $02                                         ; $5665: $d6 $02
  ld d, a                                         ; $5667: $57

jr_003_5668:
  ld a, d                                         ; $5668: $7a
  ld [$cc2a], a                                   ; $5669: $ea $2a $cc
  dec a                                           ; $566c: $3d
  call Call_003_488b                              ; $566d: $cd $8b $48
  ret z                                           ; $5670: $c8

  dec b                                           ; $5671: $05
  jr nz, jr_003_5660                              ; $5672: $20 $ec

  ld a, $01                                       ; $5674: $3e $01
  or a                                            ; $5676: $b7
  ret                                             ; $5677: $c9


Jump_003_5678:
  ld e, $01                                       ; $5678: $1e $01
  jr jr_003_567e                                  ; $567a: $18 $02

Jump_003_567c:
  ld e, $04                                       ; $567c: $1e $04

jr_003_567e:
  ld d, a                                         ; $567e: $57
  ld b, $03                                       ; $567f: $06 $03

jr_003_5681:
  dec d                                           ; $5681: $15
  ld a, d                                         ; $5682: $7a
  cp e                                            ; $5683: $bb
  jr nc, jr_003_5689                              ; $5684: $30 $03

  add $03                                         ; $5686: $c6 $03
  ld d, a                                         ; $5688: $57

jr_003_5689:
  ld a, d                                         ; $5689: $7a
  ld [$cc2a], a                                   ; $568a: $ea $2a $cc
  dec a                                           ; $568d: $3d
  call Call_003_488b                              ; $568e: $cd $8b $48
  ret z                                           ; $5691: $c8

  dec b                                           ; $5692: $05
  jr nz, jr_003_5681                              ; $5693: $20 $ec

  ld a, $01                                       ; $5695: $3e $01
  or a                                            ; $5697: $b7
  ret                                             ; $5698: $c9


  call Call_003_5762                              ; $5699: $cd $62 $57
  ret z                                           ; $569c: $c8

  ld a, $07                                       ; $569d: $3e $07
  ld [$cc2a], a                                   ; $569f: $ea $2a $cc
  ret                                             ; $56a2: $c9


  ld a, [$cc2c]                                   ; $56a3: $fa $2c $cc
  or a                                            ; $56a6: $b7
  ret z                                           ; $56a7: $c8

  ldh a, [$ffa6]                                  ; $56a8: $f0 $a6
  or a                                            ; $56aa: $b7
  ret z                                           ; $56ab: $c8

  bit 0, a                                        ; $56ac: $cb $47
  jp nz, Jump_003_5723                            ; $56ae: $c2 $23 $57

  bit 1, a                                        ; $56b1: $cb $4f
  jp nz, Jump_003_5758                            ; $56b3: $c2 $58 $57

  ldh a, [$ffa6]                                  ; $56b6: $f0 $a6
  and $f0                                         ; $56b8: $e6 $f0
  jr z, jr_003_56c1                               ; $56ba: $28 $05

  ld a, $01                                       ; $56bc: $3e $01
  call Call_000_392b                              ; $56be: $cd $2b $39

jr_003_56c1:
  ld a, [$cc2a]                                   ; $56c1: $fa $2a $cc
  rst $00                                         ; $56c4: $c7

  rst $10                                         ; $56c5: $d7
  ld d, [hl]                                      ; $56c6: $56
  ret c                                           ; $56c7: $d8

  ld d, [hl]                                      ; $56c8: $56

  db $d8, $56, $d8, $56, $fd, $56, $fd, $56, $fd, $56

  ld hl, $2257                                    ; $56d3: $21 $57 $22
  ld d, a                                         ; $56d6: $57
  ret                                             ; $56d7: $c9


  ldh a, [$ffa6]                                  ; $56d8: $f0 $a6
  bit 4, a                                        ; $56da: $cb $67
  jr z, jr_003_56e4                               ; $56dc: $28 $06

  call Call_003_49bb                              ; $56de: $cd $bb $49
  dec a                                           ; $56e1: $3d
  ret z                                           ; $56e2: $c8

  ret                                             ; $56e3: $c9


jr_003_56e4:
  jr jr_003_56e6                                  ; $56e4: $18 $00

jr_003_56e6:
  ldh a, [$ffa6]                                  ; $56e6: $f0 $a6
  bit 6, a                                        ; $56e8: $cb $77
  jr z, jr_003_56f2                               ; $56ea: $28 $06

  ld a, [$cc2a]                                   ; $56ec: $fa $2a $cc
  jp Jump_003_5678                                ; $56ef: $c3 $78 $56


jr_003_56f2:
  ldh a, [$ffa6]                                  ; $56f2: $f0 $a6
  bit 7, a                                        ; $56f4: $cb $7f
  ret z                                           ; $56f6: $c8

  ld a, [$cc2a]                                   ; $56f7: $fa $2a $cc
  jp Jump_003_5657                                ; $56fa: $c3 $57 $56


  jr jr_003_56ff                                  ; $56fd: $18 $00

jr_003_56ff:
  ldh a, [$ffa6]                                  ; $56ff: $f0 $a6
  bit 5, a                                        ; $5701: $cb $6f
  jr z, jr_003_570a                               ; $5703: $28 $05

  call Call_003_49bf                              ; $5705: $cd $bf $49
  dec a                                           ; $5708: $3d
  ret z                                           ; $5709: $c8

jr_003_570a:
  ldh a, [$ffa6]                                  ; $570a: $f0 $a6
  bit 6, a                                        ; $570c: $cb $77
  jr z, jr_003_5716                               ; $570e: $28 $06

  ld a, [$cc2a]                                   ; $5710: $fa $2a $cc
  jp Jump_003_567c                                ; $5713: $c3 $7c $56


jr_003_5716:
  ldh a, [$ffa6]                                  ; $5716: $f0 $a6
  bit 7, a                                        ; $5718: $cb $7f
  ret z                                           ; $571a: $c8

  ld a, [$cc2a]                                   ; $571b: $fa $2a $cc
  jp Jump_003_565b                                ; $571e: $c3 $5b $56


  ret                                             ; $5721: $c9


  ret                                             ; $5722: $c9


Jump_003_5723:
  ld a, $00                                       ; $5723: $3e $00
  call Call_000_392b                              ; $5725: $cd $2b $39
  ld a, [$cc29]                                   ; $5728: $fa $29 $cc
  cp $f0                                          ; $572b: $fe $f0
  jr z, jr_003_5746                               ; $572d: $28 $17

  cp $f1                                          ; $572f: $fe $f1
  jr z, jr_003_574f                               ; $5731: $28 $1c

  call Call_003_5597                              ; $5733: $cd $97 $55
  call Call_003_45bf                              ; $5736: $cd $bf $45
  xor a                                           ; $5739: $af
  ld [$cc2c], a                                   ; $573a: $ea $2c $cc
  ld a, [$cc29]                                   ; $573d: $fa $29 $cc
  call Call_000_3427                              ; $5740: $cd $27 $34

  db $08, $ce, $60

jr_003_5746:
  ld d, $ff                                       ; $5746: $16 $ff
  ld e, $00                                       ; $5748: $1e $00
  ld a, $26                                       ; $574a: $3e $26
  jp Jump_000_2621                                ; $574c: $c3 $21 $26


jr_003_574f:
  ld d, $ff                                       ; $574f: $16 $ff
  ld e, $00                                       ; $5751: $1e $00
  ld a, $20                                       ; $5753: $3e $20
  jp Jump_000_261e                                ; $5755: $c3 $1e $26


Jump_003_5758:
  ld a, $03                                       ; $5758: $3e $03
  call Call_000_392b                              ; $575a: $cd $2b $39
  ld a, $1a                                       ; $575d: $3e $1a
  jp Jump_000_261e                                ; $575f: $c3 $1e $26


Call_003_5762:
  ld a, [$cc29]                                   ; $5762: $fa $29 $cc
  ld hl, $5f44                                    ; $5765: $21 $44 $5f
  jp Jump_000_32c8                                ; $5768: $c3 $c8 $32


  push hl                                         ; $576b: $e5
  ld hl, $5f28                                    ; $576c: $21 $28 $5f
  rst $08                                         ; $576f: $cf
  ld hl, $cc4a                                    ; $5770: $21 $4a $cc
  bit 4, [hl]                                     ; $5773: $cb $66
  jr z, jr_003_5782                               ; $5775: $28 $0b

  ld l, a                                         ; $5777: $6f
  ld a, [$cc25]                                   ; $5778: $fa $25 $cc
  cp $01                                          ; $577b: $fe $01
  ld a, l                                         ; $577d: $7d
  jr nz, jr_003_5782                              ; $577e: $20 $02

  srl a                                           ; $5780: $cb $3f

jr_003_5782:
  pop hl                                          ; $5782: $e1
  ret                                             ; $5783: $c9


  db $07, $12, $00, $00, $00, $c8, $00, $0c, $01, $03, $1e, $14, $50, $00, $00, $05
  db $00, $06, $00, $01, $91, $08, $23, $00, $00, $00, $b4, $00, $12, $01, $05, $05
  db $3c, $3c

  nop                                             ; $57a6: $00

  db $00, $09, $00, $03, $00, $03, $8e, $09, $28, $00, $00, $00, $b4, $00, $1b, $01
  db $07, $0f, $0f, $28, $38, $32, $0f, $00, $08, $00, $03, $90, $0a, $16, $00, $00
  db $00, $b4, $00, $06, $01, $0a, $0a, $0a, $50, $18, $64, $05, $00, $02, $00, $03
  db $95

  dec bc                                          ; $57d8: $0b
  stop                                            ; $57d9: $10 $00
  nop                                             ; $57db: $00
  nop                                             ; $57dc: $00
  or h                                            ; $57dd: $b4
  nop                                             ; $57de: $00
  dec b                                           ; $57df: $05
  ld bc, $0a0a                                    ; $57e0: $01 $0a $0a
  inc b                                           ; $57e3: $04
  ld d, b                                         ; $57e4: $50
  nop                                             ; $57e5: $00
  nop                                             ; $57e6: $00
  inc b                                           ; $57e7: $04
  nop                                             ; $57e8: $00
  dec b                                           ; $57e9: $05
  nop                                             ; $57ea: $00
  inc bc                                          ; $57eb: $03
  adc [hl]                                        ; $57ec: $8e

  db $0c, $14, $00, $00, $00, $b4, $00, $05, $01, $78, $16, $08, $3c, $34, $64, $05
  db $00, $03, $00, $03, $91, $0d, $12, $00, $00, $00, $b4, $00, $07, $01, $0f, $0d
  db $08, $64, $19, $64, $04, $00, $02, $00, $03, $95, $0e, $13, $00, $00, $00, $b4
  db $00, $06, $01, $0c, $0c, $08, $50

  nop                                             ; $5824: $00

  db $00, $06, $00, $05, $00, $03, $96, $0f, $18, $00, $00, $00, $b4, $00, $09, $01
  db $05, $0f, $0c, $96

  nop                                             ; $5839: $00

  db $00, $08, $00, $05, $00, $03, $8e, $10, $1b, $00, $00, $00, $b4, $00, $09, $01
  db $0f, $05, $14, $14

  nop                                             ; $584e: $00

  db $00, $08, $00, $07, $00, $03, $fc

  db $11                                          ; $5856: $11

  db $50, $00, $00, $00, $aa, $00, $1e, $01, $28, $96, $19, $28, $00, $00

  ld [hl-], a                                     ; $5865: $32
  nop                                             ; $5866: $00
  ld e, $00                                       ; $5867: $1e $00
  inc bc                                          ; $5869: $03
  sub e                                           ; $586a: $93

  db $12, $64, $00, $00, $00, $64, $00, $28, $01, $32, $c8, $1e, $64, $2b, $19, $50
  db $00, $21, $00, $03, $fc, $13, $23, $00, $00, $00, $dc, $00, $10, $01, $0f, $05
  db $14, $14

  nop                                             ; $588d: $00

  db $00, $0e, $00, $15, $00, $03, $94

  inc d                                           ; $5895: $14

  db $27, $00, $00, $00, $dc, $00, $14, $01, $0a, $1e, $1e, $14, $2b, $23

  add hl, de                                      ; $58a4: $19
  nop                                             ; $58a5: $00
  rla                                             ; $58a6: $17
  nop                                             ; $58a7: $00
  inc bc                                          ; $58a8: $03
  sub h                                           ; $58a9: $94

  db $15, $23, $00, $00, $00, $dc, $00, $17, $01, $1e, $19, $1e, $1e, $00, $00, $14
  db $00, $17, $00, $03, $8f, $16, $1e, $00, $00, $00, $dc, $00, $13, $01, $1e, $0a
  db $14, $14, $1a, $64, $0f, $00, $14, $00, $03, $92

  rla                                             ; $58d4: $17
  inc hl                                          ; $58d5: $23
  nop                                             ; $58d6: $00
  nop                                             ; $58d7: $00
  nop                                             ; $58d8: $00
  call c, Call_000_0f00                           ; $58d9: $dc $00 $0f
  ld bc, $0a3c                                    ; $58dc: $01 $3c $0a
  jr z, @+$16                                     ; $58df: $28 $14

  dec de                                          ; $58e1: $1b
  ld h, h                                         ; $58e2: $64
  add hl, de                                      ; $58e3: $19
  nop                                             ; $58e4: $00
  ld d, $00                                       ; $58e5: $16 $00
  inc bc                                          ; $58e7: $03
  db $fc                                          ; $58e8: $fc

  db $18, $b4, $00, $00, $00, $32, $00, $32, $01, $4b, $0f, $28, $19, $2a, $1e, $46
  db $00, $2d, $00, $03, $94, $19, $50, $00, $00, $00, $dc, $00, $16, $01, $64, $05
  db $78, $0a, $1c, $64, $20, $00, $23, $00, $03, $8f, $1a, $33, $00, $00, $00, $dc
  db $00, $14, $01, $1e, $0a, $1e, $6e, $00, $00, $16, $00, $18, $00, $03, $8e, $1b
  db $32, $00, $00, $00, $dc, $00, $23, $01, $14, $28, $1e, $0f

  nop                                             ; $5935: $00

  db $00, $1e, $00, $19, $00, $03, $91, $1c, $46, $00, $00, $00, $dc, $00, $3d, $01
  db $80, $46, $0a, $96, $00, $00, $32, $00, $1e, $00, $03, $8e

  dec e                                           ; $5952: $1d
  ld [hl-], a                                     ; $5953: $32
  nop                                             ; $5954: $00
  nop                                             ; $5955: $00
  nop                                             ; $5956: $00
  call c, Call_000_1100                           ; $5957: $dc $00 $11
  ld bc, $0a14                                    ; $595a: $01 $14 $0a
  ld a, [bc]                                      ; $595d: $0a
  dec b                                           ; $595e: $05
  nop                                             ; $595f: $00
  nop                                             ; $5960: $00
  inc hl                                          ; $5961: $23
  nop                                             ; $5962: $00
  ld d, $00                                       ; $5963: $16 $00
  inc bc                                          ; $5965: $03
  db $fc                                          ; $5966: $fc

  db $1e, $50, $00, $00, $00, $dc, $00, $1d, $01, $1e, $64, $14, $64, $31, $64, $32
  db $00, $1b, $00, $03, $8f

  rra                                             ; $597c: $1f
  dec l                                           ; $597d: $2d
  nop                                             ; $597e: $00
  nop                                             ; $597f: $00
  nop                                             ; $5980: $00
  call c, Call_000_0c00                           ; $5981: $dc $00 $0c
  ld bc, $0a14                                    ; $5984: $01 $14 $0a
  ld e, $64                                       ; $5987: $1e $64
  nop                                             ; $5989: $00
  nop                                             ; $598a: $00
  inc e                                           ; $598b: $1c
  nop                                             ; $598c: $00
  rla                                             ; $598d: $17
  nop                                             ; $598e: $00
  inc bc                                          ; $598f: $03
  adc [hl]                                        ; $5990: $8e

  db $20, $2b, $00, $00, $00, $dc, $00, $10, $01, $0a, $1e, $28, $14, $00, $00, $0f
  db $00, $15, $00, $03, $92, $21, $26, $00, $00, $00, $dc, $00, $12, $01, $3c, $14
  db $0a, $6e, $00, $00, $10, $00, $15, $00, $03, $91

  ld [hl+], a                                     ; $59bb: $22
  ld h, h                                         ; $59bc: $64
  nop                                             ; $59bd: $00
  nop                                             ; $59be: $00
  nop                                             ; $59bf: $00
  call c, Call_000_3c00                           ; $59c0: $dc $00 $3c
  ld bc, $4680                                    ; $59c3: $01 $80 $46
  ld b, [hl]                                      ; $59c6: $46
  inc d                                           ; $59c7: $14
  dec l                                           ; $59c8: $2d
  inc hl                                          ; $59c9: $23
  jr nc, jr_003_59cc                              ; $59ca: $30 $00

jr_003_59cc:
  dec h                                           ; $59cc: $25
  nop                                             ; $59cd: $00
  inc bc                                          ; $59ce: $03
  adc [hl]                                        ; $59cf: $8e

  db $23, $32, $00, $00, $00, $dc, $00, $1e, $01, $1e, $28, $0f, $96, $00, $00, $1a
  db $00, $14, $00, $03, $8f, $24, $14, $00, $00, $00, $dc, $00, $06, $01, $0a, $37
  db $37, $0f

  nop                                             ; $59f2: $00

  db $00, $06, $00, $18, $00, $03, $fc, $25, $23, $00, $00, $00, $dc, $00, $16, $01
  db $19, $28, $96, $19, $00, $00, $16, $00, $16, $00, $03, $8e, $26, $32, $00, $00
  db $00, $dc, $00, $1e, $01, $0f, $14, $64, $64, $00, $00, $14, $00, $1e, $00, $03
  db $fd, $27, $35, $00, $00, $00, $dc, $00, $17, $01, $14, $05, $05, $32, $00, $00
  db $0d, $00, $17, $00, $03, $8e, $28, $0f, $00, $00, $00, $dc, $00, $07, $01, $08
  db $05, $0a, $28, $00, $00, $05, $00, $15, $00, $03, $91

  add hl, hl                                      ; $5a4e: $29
  inc a                                           ; $5a4f: $3c
  nop                                             ; $5a50: $00
  nop                                             ; $5a51: $00
  nop                                             ; $5a52: $00
  call c, Call_000_0f00                           ; $5a53: $dc $00 $0f
  ld bc, $3216                                    ; $5a56: $01 $16 $32
  rrca                                            ; $5a59: $0f
  ld l, [hl]                                      ; $5a5a: $6e
  dec l                                           ; $5a5b: $2d
  inc hl                                          ; $5a5c: $23
  ld [de], a                                      ; $5a5d: $12
  nop                                             ; $5a5e: $00
  rla                                             ; $5a5f: $17
  nop                                             ; $5a60: $00
  inc bc                                          ; $5a61: $03
  adc [hl]                                        ; $5a62: $8e
  ld a, [hl+]                                     ; $5a63: $2a
  xor $02                                         ; $5a64: $ee $02
  nop                                             ; $5a66: $00
  nop                                             ; $5a67: $00
  ld h, h                                         ; $5a68: $64
  nop                                             ; $5a69: $00
  ld a, b                                         ; $5a6a: $78
  ld bc, $f4c8                                    ; $5a6b: $01 $c8 $f4
  ld h, h                                         ; $5a6e: $64
  ld [hl-], a                                     ; $5a6f: $32
  dec sp                                          ; $5a70: $3b
  inc d                                           ; $5a71: $14
  or [hl]                                         ; $5a72: $b6
  inc bc                                          ; $5a73: $03
  ret z                                           ; $5a74: $c8

  nop                                             ; $5a75: $00
  inc bc                                          ; $5a76: $03
  cp $2b                                          ; $5a77: $fe $2b

  db $86, $01, $00, $00, $01, $00, $64, $01, $6e, $26, $b4, $3c, $27, $64

  adc d                                           ; $5a87: $8a
  ld [bc], a                                      ; $5a88: $02
  ret z                                           ; $5a89: $c8

  nop                                             ; $5a8a: $00
  inc bc                                          ; $5a8b: $03
  sub e                                           ; $5a8c: $93

  db $2c, $69, $00, $00, $00, $dc, $00, $23, $01, $1e, $14, $64, $0f

  nop                                             ; $5a9a: $00

  db $00, $50, $00, $3c, $00, $03, $fd, $2d, $28, $00, $00, $00, $1a, $00, $1a, $01
  db $0f, $1e, $1e, $1e, $00, $00, $16, $00, $17, $00, $03, $fc, $2e, $32, $00, $00
  db $00, $b4, $00, $1f, $01, $1e, $19, $2d, $05, $28, $19, $18, $00, $15, $00, $03
  db $8e

  cpl                                             ; $5acc: $2f
  jr z, jr_003_5acf                               ; $5acd: $28 $00

jr_003_5acf:
  nop                                             ; $5acf: $00
  nop                                             ; $5ad0: $00
  or h                                            ; $5ad1: $b4
  nop                                             ; $5ad2: $00
  ld hl, $0f01                                    ; $5ad3: $21 $01 $0f
  ld a, [bc]                                      ; $5ad6: $0a
  inc d                                           ; $5ad7: $14
  and b                                           ; $5ad8: $a0
  nop                                             ; $5ad9: $00
  nop                                             ; $5ada: $00
  ld d, $00                                       ; $5adb: $16 $00
  ld d, $00                                       ; $5add: $16 $00
  inc bc                                          ; $5adf: $03
  adc a                                           ; $5ae0: $8f

  db $30, $46, $00, $00, $00, $28, $00, $23, $01, $1e, $0a, $c8, $64, $00, $00, $23
  db $00, $18, $00, $03, $8e, $31, $17, $00, $00, $00, $b4, $00, $0e, $01, $1e, $0a
  db $1e, $0a, $00, $00, $0a, $00, $14, $00, $03, $fd, $32, $1e, $00, $00, $00, $b4
  db $00, $18, $01, $0f, $64, $14, $fa, $2f, $64, $15, $00, $18, $00, $03, $92

  inc sp                                          ; $5b20: $33

  db $2c, $01, $00, $00, $b4, $00, $1d, $14, $1e, $a0, $5a, $c8, $01, $64

  sub [hl]                                        ; $5b2f: $96
  nop                                             ; $5b30: $00
  dec l                                           ; $5b31: $2d
  nop                                             ; $5b32: $00
  inc bc                                          ; $5b33: $03
  db $fd                                          ; $5b34: $fd
  inc [hl]                                        ; $5b35: $34

  db $fa, $00, $00, $00, $b4, $00, $22, $14, $3c, $50, $1e, $3c, $01, $64

  ld b, [hl]                                      ; $5b44: $46
  nop                                             ; $5b45: $00
  ld e, $00                                       ; $5b46: $1e $00
  inc bc                                          ; $5b48: $03
  adc a                                           ; $5b49: $8f
  dec [hl]                                        ; $5b4a: $35

  db $13, $01, $00, $00, $b4, $00, $23, $14, $28, $82, $1e, $50, $01, $64

  ld d, l                                         ; $5b59: $55
  nop                                             ; $5b5a: $00
  inc e                                           ; $5b5b: $1c
  nop                                             ; $5b5c: $00
  inc bc                                          ; $5b5d: $03
  sub d                                           ; $5b5e: $92

  db $36, $28, $00, $00, $00, $b4, $00, $1e, $0a, $14, $1e, $0a, $0f, $01, $64, $19
  db $00, $19, $00, $03, $96, $37, $64, $00, $00, $00, $b4, $00, $28, $10, $19, $1e
  db $0f, $0a, $01, $64, $4b, $00, $23, $00, $03, $95

  db $38                                          ; $5b89: $38

  db $c8, $00, $00, $00, $b4, $00, $37, $18, $1e, $23, $14, $0f, $01, $64

  ld h, h                                         ; $5b98: $64
  nop                                             ; $5b99: $00
  dec l                                           ; $5b9a: $2d
  nop                                             ; $5b9b: $00
  inc bc                                          ; $5b9c: $03
  db $fc                                          ; $5b9d: $fc
  add hl, sp                                      ; $5b9e: $39
  ld e, [hl]                                      ; $5b9f: $5e
  ld bc, $0000                                    ; $5ba0: $01 $00 $00
  or h                                            ; $5ba3: $b4
  nop                                             ; $5ba4: $00
  ld b, [hl]                                      ; $5ba5: $46
  inc hl                                          ; $5ba6: $23
  jr z, jr_003_5bdb                               ; $5ba7: $28 $32

  ld [hl-], a                                     ; $5ba9: $32
  inc hl                                          ; $5baa: $23
  ld bc, $9664                                    ; $5bab: $01 $64 $96
  nop                                             ; $5bae: $00
  inc a                                           ; $5baf: $3c
  nop                                             ; $5bb0: $00
  inc bc                                          ; $5bb1: $03
  adc [hl]                                        ; $5bb2: $8e
  ld a, [hl-]                                     ; $5bb3: $3a
  sub b                                           ; $5bb4: $90
  ld bc, $0000                                    ; $5bb5: $01 $00 $00
  or h                                            ; $5bb8: $b4
  nop                                             ; $5bb9: $00
  ld d, b                                         ; $5bba: $50
  ld l, $2d                                       ; $5bbb: $2e $2d
  scf                                             ; $5bbd: $37
  scf                                             ; $5bbe: $37
  jr z, jr_003_5bc2                               ; $5bbf: $28 $01

  ld h, h                                         ; $5bc1: $64

jr_003_5bc2:
  ret z                                           ; $5bc2: $c8

  nop                                             ; $5bc3: $00
  ld b, [hl]                                      ; $5bc4: $46
  nop                                             ; $5bc5: $00
  inc bc                                          ; $5bc6: $03
  sub d                                           ; $5bc7: $92
  dec sp                                          ; $5bc8: $3b
  ld h, $02                                       ; $5bc9: $26 $02
  nop                                             ; $5bcb: $00
  nop                                             ; $5bcc: $00
  or h                                            ; $5bcd: $b4
  nop                                             ; $5bce: $00
  ld h, h                                         ; $5bcf: $64
  add hl, sp                                      ; $5bd0: $39
  scf                                             ; $5bd1: $37
  ld e, d                                         ; $5bd2: $5a
  ld b, [hl]                                      ; $5bd3: $46
  ld b, c                                         ; $5bd4: $41
  ld bc, $5e64                                    ; $5bd5: $01 $64 $5e
  ld bc, $0055                                    ; $5bd8: $01 $55 $00

jr_003_5bdb:
  inc bc                                          ; $5bdb: $03
  adc a                                           ; $5bdc: $8f
  inc a                                           ; $5bdd: $3c
  xor $02                                         ; $5bde: $ee $02
  nop                                             ; $5be0: $00
  nop                                             ; $5be1: $00
  or h                                            ; $5be2: $b4
  nop                                             ; $5be3: $00
  ld a, b                                         ; $5be4: $78
  ld c, b                                         ; $5be5: $48
  add d                                           ; $5be6: $82
  sub [hl]                                        ; $5be7: $96
  ld d, b                                         ; $5be8: $50
  ld d, b                                         ; $5be9: $50
  ld bc, $c264                                    ; $5bea: $01 $64 $c2
  ld bc, $005f                                    ; $5bed: $01 $5f $00
  inc bc                                          ; $5bf0: $03
  sub e                                           ; $5bf1: $93
  dec a                                           ; $5bf2: $3d
  db $f4                                          ; $5bf3: $f4
  ld bc, $0000                                    ; $5bf4: $01 $00 $00
  or h                                            ; $5bf7: $b4
  nop                                             ; $5bf8: $00
  ld sp, $642d                                    ; $5bf9: $31 $2d $64
  add d                                           ; $5bfc: $82
  ld d, b                                         ; $5bfd: $50
  ld a, b                                         ; $5bfe: $78
  ld bc, $f464                                    ; $5bff: $01 $64 $f4
  ld bc, $0096                                    ; $5c02: $01 $96 $00
  inc bc                                          ; $5c05: $03
  cp $3e                                          ; $5c06: $fe $3e
  inc d                                           ; $5c08: $14
  nop                                             ; $5c09: $00
  nop                                             ; $5c0a: $00
  nop                                             ; $5c0b: $00
  call c, $0a00                                   ; $5c0c: $dc $00 $0a
  ld bc, $1e0a                                    ; $5c0f: $01 $0a $1e
  inc a                                           ; $5c12: $3c
  dec b                                           ; $5c13: $05
  nop                                             ; $5c14: $00
  nop                                             ; $5c15: $00
  add hl, bc                                      ; $5c16: $09
  nop                                             ; $5c17: $00
  inc d                                           ; $5c18: $14
  nop                                             ; $5c19: $00
  inc bc                                          ; $5c1a: $03
  sub l                                           ; $5c1b: $95

  db $3f, $37, $00, $00, $00, $dc, $00, $1f, $01, $14, $0a, $0a, $05, $00, $00, $12
  db $00, $17, $00, $03, $8e

  ld b, b                                         ; $5c31: $40
  ld h, h                                         ; $5c32: $64
  nop                                             ; $5c33: $00
  nop                                             ; $5c34: $00
  nop                                             ; $5c35: $00
  call c, $4600                                   ; $5c36: $dc $00 $46
  ld bc, $9632                                    ; $5c39: $01 $32 $96
  inc d                                           ; $5c3c: $14
  ld a, b                                         ; $5c3d: $78
  nop                                             ; $5c3e: $00
  nop                                             ; $5c3f: $00
  ld e, d                                         ; $5c40: $5a
  nop                                             ; $5c41: $00
  inc e                                           ; $5c42: $1c
  nop                                             ; $5c43: $00
  inc bc                                          ; $5c44: $03
  db $fd                                          ; $5c45: $fd
  ld b, c                                         ; $5c46: $41
  ld d, b                                         ; $5c47: $50
  nop                                             ; $5c48: $00
  nop                                             ; $5c49: $00
  nop                                             ; $5c4a: $00
  call c, Call_000_2800                           ; $5c4b: $dc $00 $28
  ld bc, $9628                                    ; $5c4e: $01 $28 $96
  inc d                                           ; $5c51: $14
  inc a                                           ; $5c52: $3c
  nop                                             ; $5c53: $00
  nop                                             ; $5c54: $00
  ld b, [hl]                                      ; $5c55: $46
  nop                                             ; $5c56: $00
  ld e, $00                                       ; $5c57: $1e $00
  inc bc                                          ; $5c59: $03
  adc a                                           ; $5c5a: $8f
  ld b, d                                         ; $5c5b: $42

  db $5a, $00, $00, $00, $dc, $00, $3c, $01, $2d, $96, $14, $64, $00, $00

  ld d, b                                         ; $5c6a: $50
  nop                                             ; $5c6b: $00
  add hl, de                                      ; $5c6c: $19
  nop                                             ; $5c6d: $00
  inc bc                                          ; $5c6e: $03
  adc a                                           ; $5c6f: $8f
  ld b, e                                         ; $5c70: $43
  ld a, b                                         ; $5c71: $78
  nop                                             ; $5c72: $00
  nop                                             ; $5c73: $00
  nop                                             ; $5c74: $00
  call c, $4600                                   ; $5c75: $dc $00 $46
  ld bc, $dc50                                    ; $5c78: $01 $50 $dc
  inc d                                           ; $5c7b: $14
  ld a, b                                         ; $5c7c: $78
  dec hl                                          ; $5c7d: $2b
  ld e, $64                                       ; $5c7e: $1e $64
  nop                                             ; $5c80: $00
  ld hl, $0300                                    ; $5c81: $21 $00 $03
  adc a                                           ; $5c84: $8f
  ld b, h                                         ; $5c85: $44

  db $64, $00, $00, $00, $64, $00, $32, $01, $3c, $c8, $14, $64

  dec hl                                          ; $5c92: $2b

  db $14

  ld d, b                                         ; $5c94: $50
  nop                                             ; $5c95: $00
  inc hl                                          ; $5c96: $23
  nop                                             ; $5c97: $00
  inc bc                                          ; $5c98: $03
  adc a                                           ; $5c99: $8f
  ld b, l                                         ; $5c9a: $45

  db $6e, $00, $00, $00, $dc, $00, $3c, $01, $46, $c8, $14, $64, $2b, $19

  ld e, d                                         ; $5ca9: $5a
  nop                                             ; $5caa: $00
  dec h                                           ; $5cab: $25
  nop                                             ; $5cac: $00
  inc bc                                          ; $5cad: $03
  adc [hl]                                        ; $5cae: $8e

  db $46, $46, $00, $00, $00, $3c, $00, $22, $01, $14, $64, $28, $6e, $2b, $19, $2d
  db $00, $21, $00, $03, $92, $47, $4c, $00, $00, $00, $b4, $00, $26, $01, $1e, $28
  db $32, $0f, $28, $19, $31, $00, $14, $00, $03, $8e, $48, $42, $00, $00, $00, $8c
  db $00, $28, $01, $1e, $28, $14, $a0, $2c, $64, $28, $00, $15, $00, $03, $fd, $49
  db $1f, $00, $00, $00, $dc, $00, $0c, $01, $0a, $1e, $0a, $3c

  nop                                             ; $5cfb: $00

  db $00, $0a, $00, $14, $00, $03, $96

  ld c, d                                         ; $5d03: $4a
  scf                                             ; $5d04: $37
  nop                                             ; $5d05: $00
  nop                                             ; $5d06: $00
  nop                                             ; $5d07: $00
  ld [hl-], a                                     ; $5d08: $32
  nop                                             ; $5d09: $00
  daa                                             ; $5d0a: $27
  ld bc, $1e19                                    ; $5d0b: $01 $19 $1e
  jr z, jr_003_5d42                               ; $5d0e: $28 $32

  nop                                             ; $5d10: $00
  nop                                             ; $5d11: $00
  add hl, de                                      ; $5d12: $19
  nop                                             ; $5d13: $00
  ld a, [de]                                      ; $5d14: $1a
  nop                                             ; $5d15: $00
  inc bc                                          ; $5d16: $03
  adc [hl]                                        ; $5d17: $8e

  db $4b, $28, $00, $00, $00, $1e, $00, $28, $01, $14, $32, $32, $14

  nop                                             ; $5d25: $00

  db $00, $12, $00, $17, $00, $03, $fc, $4c, $16, $00, $00, $00, $dc, $00, $0a, $01
  db $78, $1a, $14, $3c, $34, $64, $09, $00, $14, $00, $03, $8e

jr_003_5d42:
  ld c, l                                         ; $5d42: $4d
  ld d, b                                         ; $5d43: $50
  nop                                             ; $5d44: $00
  nop                                             ; $5d45: $00
  nop                                             ; $5d46: $00
  adc h                                           ; $5d47: $8c
  nop                                             ; $5d48: $00
  inc hl                                          ; $5d49: $23
  ld bc, $8c14                                    ; $5d4a: $01 $14 $8c
  ldh a, [rIF]                                    ; $5d4d: $f0 $0f
  jr nc, @+$66                                    ; $5d4f: $30 $64

  ld [hl], $00                                    ; $5d51: $36 $00
  add hl, de                                      ; $5d53: $19
  nop                                             ; $5d54: $00
  inc bc                                          ; $5d55: $03
  adc a                                           ; $5d56: $8f
  ld c, [hl]                                      ; $5d57: $4e
  ld e, d                                         ; $5d58: $5a
  nop                                             ; $5d59: $00
  nop                                             ; $5d5a: $00
  nop                                             ; $5d5b: $00
  call c, Call_000_2800                           ; $5d5c: $dc $00 $28
  ld bc, $285a                                    ; $5d5f: $01 $5a $28
  inc d                                           ; $5d62: $14
  or h                                            ; $5d63: $b4
  ld [hl-], a                                     ; $5d64: $32
  ld h, h                                         ; $5d65: $64
  dec a                                           ; $5d66: $3d
  nop                                             ; $5d67: $00
  dec de                                          ; $5d68: $1b
  nop                                             ; $5d69: $00
  inc bc                                          ; $5d6a: $03
  adc a                                           ; $5d6b: $8f
  ld c, a                                         ; $5d6c: $4f
  ld l, c                                         ; $5d6d: $69
  nop                                             ; $5d6e: $00
  nop                                             ; $5d6f: $00
  nop                                             ; $5d70: $00
  call c, Call_000_3200                           ; $5d71: $dc $00 $32
  ld bc, $32d2                                    ; $5d74: $01 $d2 $32
  ld e, $c8                                       ; $5d77: $1e $c8
  ld [hl-], a                                     ; $5d79: $32
  ld h, h                                         ; $5d7a: $64
  ld b, [hl]                                      ; $5d7b: $46
  nop                                             ; $5d7c: $00
  rra                                             ; $5d7d: $1f
  nop                                             ; $5d7e: $00
  inc bc                                          ; $5d7f: $03
  sub e                                           ; $5d80: $93

  db $50, $50, $00, $00, $00, $64, $00, $32, $01, $1e, $64, $0a, $32, $2c, $32, $2a
  db $00, $19, $00, $03, $fd

  ld d, c                                         ; $5d96: $51

  db $3c, $00, $00, $00, $14, $00, $20, $01, $1e, $0f, $1e, $14, $00, $00

  dec e                                           ; $5da5: $1d
  nop                                             ; $5da6: $00
  jr jr_003_5da9                                  ; $5da7: $18 $00

jr_003_5da9:
  inc bc                                          ; $5da9: $03
  sub b                                           ; $5daa: $90
  ld d, d                                         ; $5dab: $52
  ld b, [hl]                                      ; $5dac: $46
  nop                                             ; $5dad: $00
  nop                                             ; $5dae: $00
  nop                                             ; $5daf: $00
  ld [hl-], a                                     ; $5db0: $32
  nop                                             ; $5db1: $00
  inc hl                                          ; $5db2: $23
  ld bc, $0f28                                    ; $5db3: $01 $28 $0f
  jr z, @+$1b                                     ; $5db6: $28 $19

  inc l                                           ; $5db8: $2c
  jr z, jr_003_5de1                               ; $5db9: $28 $26

  nop                                             ; $5dbb: $00
  inc h                                           ; $5dbc: $24
  nop                                             ; $5dbd: $00
  inc bc                                          ; $5dbe: $03
  sub b                                           ; $5dbf: $90

  db $53, $50, $00, $00, $00, $50, $00, $3c, $01, $1e, $50, $2d, $1e, $2e, $19, $2f
  db $00, $1c, $00, $03, $92

  ld d, h                                         ; $5dd5: $54
  ld d, b                                         ; $5dd6: $50
  nop                                             ; $5dd7: $00
  nop                                             ; $5dd8: $00
  nop                                             ; $5dd9: $00
  inc a                                           ; $5dda: $3c
  nop                                             ; $5ddb: $00
  scf                                             ; $5ddc: $37
  ld bc, $781e                                    ; $5ddd: $01 $1e $78
  ld e, d                                         ; $5de0: $5a

jr_003_5de1:
  inc d                                           ; $5de1: $14
  nop                                             ; $5de2: $00
  nop                                             ; $5de3: $00
  dec l                                           ; $5de4: $2d
  nop                                             ; $5de5: $00
  ld hl, $0300                                    ; $5de6: $21 $00 $03
  adc a                                           ; $5de9: $8f

  db $55, $1e, $00, $00, $00, $50, $00, $0a, $01, $14, $0f, $19, $65, $38, $23, $0a
  db $00, $19, $00, $03, $fc

  ld d, [hl]                                      ; $5dff: $56
  jr z, jr_003_5e02                               ; $5e00: $28 $00

jr_003_5e02:
  nop                                             ; $5e02: $00
  nop                                             ; $5e03: $00
  ld [hl-], a                                     ; $5e04: $32
  nop                                             ; $5e05: $00
  add hl, de                                      ; $5e06: $19
  ld bc, $0f1e                                    ; $5e07: $01 $1e $0f
  inc hl                                          ; $5e0a: $23
  ld a, b                                         ; $5e0b: $78
  nop                                             ; $5e0c: $00
  nop                                             ; $5e0d: $00
  rrca                                            ; $5e0e: $0f
  nop                                             ; $5e0f: $00
  jr jr_003_5e12                                  ; $5e10: $18 $00

jr_003_5e12:
  inc bc                                          ; $5e12: $03
  sub d                                           ; $5e13: $92

  db $57, $41, $00, $00, $00, $32, $00, $28, $01, $1e, $64, $32, $96, $2d, $14, $1e
  db $00, $17, $00, $03, $8f, $58, $46, $00, $00, $00, $dc, $00, $27, $01, $14, $14
  db $1e, $8c

  nop                                             ; $5e36: $00

  db $00, $2f, $00, $16, $00, $03, $fd

  ld e, c                                         ; $5e3e: $59
  ld h, h                                         ; $5e3f: $64
  nop                                             ; $5e40: $00
  nop                                             ; $5e41: $00
  nop                                             ; $5e42: $00
  call c, $3a00                                   ; $5e43: $dc $00 $3a
  ld bc, $1e28                                    ; $5e46: $01 $28 $1e
  ld [hl-], a                                     ; $5e49: $32
  sub [hl]                                        ; $5e4a: $96
  nop                                             ; $5e4b: $00
  nop                                             ; $5e4c: $00
  ld a, [hl-]                                     ; $5e4d: $3a
  nop                                             ; $5e4e: $00
  dec de                                          ; $5e4f: $1b
  nop                                             ; $5e50: $00
  inc bc                                          ; $5e51: $03
  sub d                                           ; $5e52: $92

  db $5a, $46, $00, $00, $00, $dc, $00, $1a, $01, $14, $3c, $0a, $32, $36, $64, $2b
  db $00, $19, $00, $03, $8f, $5b, $3a, $00, $00, $00, $dc, $00, $3c, $01, $64, $32
  db $3c, $12, $2c, $32, $26, $00, $1c, $00, $03, $90

  ld e, h                                         ; $5e7d: $5c
  ld e, d                                         ; $5e7e: $5a
  nop                                             ; $5e7f: $00
  nop                                             ; $5e80: $00
  nop                                             ; $5e81: $00
  call c, Call_003_4b00                           ; $5e82: $dc $00 $4b
  ld bc, $3c64                                    ; $5e85: $01 $64 $3c
  inc a                                           ; $5e88: $3c
  ld [de], a                                      ; $5e89: $12
  ld l, $23                                       ; $5e8a: $2e $23
  ld sp, $1e00                                    ; $5e8c: $31 $00 $1e
  nop                                             ; $5e8f: $00
  inc bc                                          ; $5e90: $03
  adc a                                           ; $5e91: $8f

  db $5d, $28, $00, $00, $00, $dc, $00, $28, $01, $64, $1e, $28, $12, $2c, $3c, $1a
  db $00, $21, $00, $03, $92, $5e, $37, $00, $00, $00, $dc, $00, $3a, $01, $64, $32
  db $32, $12, $00, $00, $24, $00, $23, $00, $03, $fd

  ld e, a                                         ; $5ebc: $5f

  db $50, $00, $00, $00, $dc, $00, $37, $01, $64, $3c, $46, $12, $2c, $23

  jr nc, jr_003_5ecd                              ; $5ecb: $30 $00

jr_003_5ecd:
  ld [hl+], a                                     ; $5ecd: $22
  nop                                             ; $5ece: $00
  inc bc                                          ; $5ecf: $03
  adc [hl]                                        ; $5ed0: $8e

  db $60, $3c, $00, $00, $00, $dc, $00, $1a, $01, $12, $28, $28, $32, $2c, $32, $20
  db $00, $1f, $00, $03, $90, $61, $46, $00, $00, $00, $66, $00, $1c, $01, $3c, $1e
  db $3c, $0f, $00, $00, $27, $00, $1d, $00, $03, $92

  ld h, d                                         ; $5efb: $62
  inc l                                           ; $5efc: $2c
  ld bc, $0000                                    ; $5efd: $01 $00 $00
  call c, Call_003_7800                           ; $5f00: $dc $00 $78
  ld bc, $1e5a                                    ; $5f03: $01 $5a $1e
  ld e, d                                         ; $5f06: $5a
  sub [hl]                                        ; $5f07: $96
  dec [hl]                                        ; $5f08: $35
  add hl, de                                      ; $5f09: $19
  dec d                                           ; $5f0a: $15
  nop                                             ; $5f0b: $00
  dec b                                           ; $5f0c: $05
  nop                                             ; $5f0d: $00
  inc bc                                          ; $5f0e: $03
  adc [hl]                                        ; $5f0f: $8e

  db $08, $0f

  db $1e                                          ; $5f12: $1e

  db $0f, $1e, $32, $14, $23

  inc a                                           ; $5f18: $3c

  db $28, $46

  ld h, h                                         ; $5f1b: $64
  nop                                             ; $5f1c: $00
  nop                                             ; $5f1d: $00
  nop                                             ; $5f1e: $00
  nop                                             ; $5f1f: $00
  nop                                             ; $5f20: $00
  nop                                             ; $5f21: $00
  nop                                             ; $5f22: $00
  nop                                             ; $5f23: $00
  nop                                             ; $5f24: $00
  nop                                             ; $5f25: $00
  inc d                                           ; $5f26: $14

  db $32, $00, $05, $0a, $03, $08, $10, $06, $0a

  ld [de], a                                      ; $5f30: $12

  db $0a, $14

  db $28                                          ; $5f33: $28

  db $0a

  inc d                                           ; $5f35: $14
  ld e, $14                                       ; $5f36: $1e $14
  ld e, $28                                       ; $5f38: $1e $28

  db $04, $14

  nop                                             ; $5f3c: $00

  db $00

  db $06                                          ; $5f3e: $06

  db $08

  nop                                             ; $5f40: $00

  db $00

  nop                                             ; $5f42: $00
  nop                                             ; $5f43: $00

  db $04, $00, $02

  nop                                             ; $5f47: $00
  nop                                             ; $5f48: $00
  nop                                             ; $5f49: $00
  nop                                             ; $5f4a: $00
  nop                                             ; $5f4b: $00
  nop                                             ; $5f4c: $00
  rst $38                                         ; $5f4d: $ff
  rst $38                                         ; $5f4e: $ff
  ld bc, $3f00                                    ; $5f4f: $01 $00 $3f
  ld h, b                                         ; $5f52: $60
  ccf                                             ; $5f53: $3f
  ld h, b                                         ; $5f54: $60

  db $47, $60

  ccf                                             ; $5f57: $3f
  ld h, b                                         ; $5f58: $60
  ccf                                             ; $5f59: $3f
  ld h, b                                         ; $5f5a: $60

  db $3f, $60

  ccf                                             ; $5f5d: $3f
  ld h, b                                         ; $5f5e: $60
  ccf                                             ; $5f5f: $3f
  ld h, b                                         ; $5f60: $60
  ccf                                             ; $5f61: $3f

  db $60

  ccf                                             ; $5f63: $3f
  ld h, b                                         ; $5f64: $60

  db $3f, $60

  ccf                                             ; $5f67: $3f
  ld h, b                                         ; $5f68: $60

  db $57, $60

  ccf                                             ; $5f6b: $3f
  ld h, b                                         ; $5f6c: $60

  db $4f, $60

  ld e, a                                         ; $5f6f: $5f
  ld h, b                                         ; $5f70: $60
  ld e, a                                         ; $5f71: $5f
  ld h, b                                         ; $5f72: $60

  db $5f, $60

  ld e, a                                         ; $5f75: $5f
  ld h, b                                         ; $5f76: $60
  ld e, a                                         ; $5f77: $5f
  ld h, b                                         ; $5f78: $60

  db $67, $60

  ld h, a                                         ; $5f7b: $67
  ld h, b                                         ; $5f7c: $60
  ld h, a                                         ; $5f7d: $67
  ld h, b                                         ; $5f7e: $60
  ld h, a                                         ; $5f7f: $67
  ld h, b                                         ; $5f80: $60
  ld e, a                                         ; $5f81: $5f
  ld h, b                                         ; $5f82: $60
  ld e, a                                         ; $5f83: $5f
  ld h, b                                         ; $5f84: $60
  ld e, a                                         ; $5f85: $5f
  ld h, b                                         ; $5f86: $60
  ld e, a                                         ; $5f87: $5f
  ld h, b                                         ; $5f88: $60
  ld e, a                                         ; $5f89: $5f
  ld h, b                                         ; $5f8a: $60

  db $77, $60

  ld e, a                                         ; $5f8d: $5f
  ld h, b                                         ; $5f8e: $60
  ld e, a                                         ; $5f8f: $5f
  ld h, b                                         ; $5f90: $60
  ld e, a                                         ; $5f91: $5f
  ld h, b                                         ; $5f92: $60
  ld e, a                                         ; $5f93: $5f
  ld h, b                                         ; $5f94: $60

  db $c7, $60

  rst $08                                         ; $5f97: $cf
  ld h, b                                         ; $5f98: $60

  db $cf, $60, $d7, $60

  rst $20                                         ; $5f9d: $e7
  ld h, b                                         ; $5f9e: $60

  db $e7, $60

  add a                                           ; $5fa1: $87
  ld h, b                                         ; $5fa2: $60

  db $bf, $60

  add a                                           ; $5fa5: $87
  ld h, b                                         ; $5fa6: $60
  ld a, a                                         ; $5fa7: $7f
  ld h, b                                         ; $5fa8: $60
  ld a, a                                         ; $5fa9: $7f
  ld h, b                                         ; $5faa: $60
  add a                                           ; $5fab: $87
  ld h, b                                         ; $5fac: $60
  add a                                           ; $5fad: $87
  ld h, b                                         ; $5fae: $60
  ld a, a                                         ; $5faf: $7f
  ld h, b                                         ; $5fb0: $60
  add a                                           ; $5fb1: $87
  ld h, b                                         ; $5fb2: $60

  db $87, $60, $8f, $60

  rst $18                                         ; $5fb7: $df
  ld h, b                                         ; $5fb8: $60

  db $8f, $60

  add a                                           ; $5fbb: $87
  ld h, b                                         ; $5fbc: $60

  db $ef, $60, $d7, $60

  rst $18                                         ; $5fc1: $df
  ld h, b                                         ; $5fc2: $60

  db $e7, $60

  rst $18                                         ; $5fc5: $df
  ld h, b                                         ; $5fc6: $60
  rst $10                                         ; $5fc7: $d7
  ld h, b                                         ; $5fc8: $60
  add a                                           ; $5fc9: $87
  ld h, b                                         ; $5fca: $60
  cp a                                            ; $5fcb: $bf
  ld h, b                                         ; $5fcc: $60

  db $9f, $60

  adc a                                           ; $5fcf: $8f
  ld h, b                                         ; $5fd0: $60
  adc a                                           ; $5fd1: $8f
  ld h, b                                         ; $5fd2: $60
  add a                                           ; $5fd3: $87
  ld h, b                                         ; $5fd4: $60

  db $bf, $60

  cp a                                            ; $5fd7: $bf
  ld h, b                                         ; $5fd8: $60
  adc a                                           ; $5fd9: $8f
  ld h, b                                         ; $5fda: $60
  ld a, a                                         ; $5fdb: $7f
  ld h, b                                         ; $5fdc: $60
  sbc a                                           ; $5fdd: $9f
  ld h, b                                         ; $5fde: $60
  adc a                                           ; $5fdf: $8f
  ld h, b                                         ; $5fe0: $60
  add a                                           ; $5fe1: $87
  ld h, b                                         ; $5fe2: $60
  adc a                                           ; $5fe3: $8f
  ld h, b                                         ; $5fe4: $60
  ld a, a                                         ; $5fe5: $7f
  ld h, b                                         ; $5fe6: $60

  db $97, $60, $8f, $60

  adc a                                           ; $5feb: $8f
  ld h, b                                         ; $5fec: $60
  sbc a                                           ; $5fed: $9f
  ld h, b                                         ; $5fee: $60
  sub a                                           ; $5fef: $97
  ld h, b                                         ; $5ff0: $60
  add a                                           ; $5ff1: $87
  ld h, b                                         ; $5ff2: $60

  db $7f, $60, $87, $60

  sbc a                                           ; $5ff7: $9f
  ld h, b                                         ; $5ff8: $60

  db $8f, $60

  adc a                                           ; $5ffb: $8f
  ld h, b                                         ; $5ffc: $60
  adc a                                           ; $5ffd: $8f
  ld h, b                                         ; $5ffe: $60

  db $97, $60

  sbc a                                           ; $6001: $9f
  ld h, b                                         ; $6002: $60
  sub a                                           ; $6003: $97
  ld h, b                                         ; $6004: $60

  db $6f, $60

  sub a                                           ; $6007: $97
  ld h, b                                         ; $6008: $60
  xor a                                           ; $6009: $af
  ld h, b                                         ; $600a: $60
  add a                                           ; $600b: $87
  ld h, b                                         ; $600c: $60
  adc a                                           ; $600d: $8f
  ld h, b                                         ; $600e: $60
  ld l, a                                         ; $600f: $6f
  ld h, b                                         ; $6010: $60
  add a                                           ; $6011: $87
  ld h, b                                         ; $6012: $60
  sub a                                           ; $6013: $97
  ld h, b                                         ; $6014: $60
  adc a                                           ; $6015: $8f
  ld h, b                                         ; $6016: $60
  adc a                                           ; $6017: $8f
  ld h, b                                         ; $6018: $60
  adc a                                           ; $6019: $8f
  ld h, b                                         ; $601a: $60
  ld l, a                                         ; $601b: $6f
  ld h, b                                         ; $601c: $60
  sub a                                           ; $601d: $97
  ld h, b                                         ; $601e: $60

  db $9f, $60

  sub a                                           ; $6021: $97
  ld h, b                                         ; $6022: $60
  sub a                                           ; $6023: $97
  ld h, b                                         ; $6024: $60

  db $9f, $60, $f7, $60, $ff, $60

  rst $30                                         ; $602b: $f7
  ld h, b                                         ; $602c: $60
  sub a                                           ; $602d: $97
  ld h, b                                         ; $602e: $60
  sub a                                           ; $602f: $97
  ld h, b                                         ; $6030: $60
  rlca                                            ; $6031: $07
  ld h, c                                         ; $6032: $61
  rlca                                            ; $6033: $07
  ld h, c                                         ; $6034: $61
  rlca                                            ; $6035: $07
  ld h, c                                         ; $6036: $61
  sub a                                           ; $6037: $97
  ld h, b                                         ; $6038: $60
  rst $38                                         ; $6039: $ff
  ld h, b                                         ; $603a: $60

  db $97, $60, $97, $60, $17, $61, $1a, $61

  dec e                                           ; $6043: $1d
  ld h, c                                         ; $6044: $61

  db $17, $61, $23, $61, $23, $61, $26, $61, $26, $61, $2c, $61

  inc l                                           ; $6051: $2c
  ld h, c                                         ; $6052: $61

  db $26, $61

  ld h, $61                                       ; $6055: $26 $61

  db $29, $61

  jr nz, jr_003_60bc                              ; $6059: $20 $61

  add hl, hl                                      ; $605b: $29
  ld h, c                                         ; $605c: $61
  jr nz, @+$63                                    ; $605d: $20 $61

  cpl                                             ; $605f: $2f
  ld h, c                                         ; $6060: $61

  db $32, $61, $35, $61, $38, $61

  dec sp                                          ; $6067: $3b
  ld h, c                                         ; $6068: $61

  db $3b, $61

  ld a, $61                                       ; $606b: $3e $61
  ld a, $61                                       ; $606d: $3e $61

  db $cb, $61

  adc $61                                         ; $6071: $ce $61
  pop de                                          ; $6073: $d1
  ld h, c                                         ; $6074: $61
  bit 4, c                                        ; $6075: $cb $61

  db $41, $61, $3b, $61, $41, $61, $3e, $61

  ld b, h                                         ; $607f: $44
  ld h, c                                         ; $6080: $61
  ld c, l                                         ; $6081: $4d
  ld h, c                                         ; $6082: $61

  db $50, $61, $44, $61

  ld b, a                                         ; $6087: $47
  ld h, c                                         ; $6088: $61
  ld b, a                                         ; $6089: $47
  ld h, c                                         ; $608a: $61

  db $4a, $61, $71, $61, $50, $61, $6e, $61, $71, $61, $74, $61, $7d, $61, $7a, $61
  db $7d, $61

  ld [hl], a                                      ; $609d: $77
  ld h, c                                         ; $609e: $61

  db $77, $61, $7a, $61, $7d, $61

  ld a, l                                         ; $60a5: $7d
  ld h, c                                         ; $60a6: $61
  adc c                                           ; $60a7: $89
  ld h, c                                         ; $60a8: $61
  adc h                                           ; $60a9: $8c
  ld h, c                                         ; $60aa: $61
  adc a                                           ; $60ab: $8f
  ld h, c                                         ; $60ac: $61
  sub d                                           ; $60ad: $92
  ld h, c                                         ; $60ae: $61
  add hl, hl                                      ; $60af: $29
  ld h, c                                         ; $60b0: $61
  rst $10                                         ; $60b1: $d7
  ld h, c                                         ; $60b2: $61
  add hl, hl                                      ; $60b3: $29
  ld h, c                                         ; $60b4: $61
  rst $10                                         ; $60b5: $d7
  ld h, c                                         ; $60b6: $61
  rst $10                                         ; $60b7: $d7
  ld h, c                                         ; $60b8: $61
  rst $10                                         ; $60b9: $d7
  ld h, c                                         ; $60ba: $61
  rst $10                                         ; $60bb: $d7

jr_003_60bc:
  ld h, c                                         ; $60bc: $61
  rst $10                                         ; $60bd: $d7
  ld h, c                                         ; $60be: $61

  db $80, $61, $83, $61

  add [hl]                                        ; $60c3: $86
  ld h, c                                         ; $60c4: $61

  db $83, $61, $53, $61, $56, $61, $56, $61, $59, $61, $5f, $61

  dec sp                                          ; $60d1: $3b
  ld h, c                                         ; $60d2: $61
  ld l, b                                         ; $60d3: $68
  ld h, c                                         ; $60d4: $61

  db $5f, $61

  ld e, h                                         ; $60d7: $5c
  ld h, c                                         ; $60d8: $61

  db $5f, $61

  ld h, d                                         ; $60db: $62
  ld h, c                                         ; $60dc: $61

  db $65, $61

  xor l                                           ; $60df: $ad
  ld h, c                                         ; $60e0: $61
  or b                                            ; $60e1: $b0
  ld h, c                                         ; $60e2: $61
  or e                                            ; $60e3: $b3
  ld h, c                                         ; $60e4: $61
  or [hl]                                         ; $60e5: $b6
  ld h, c                                         ; $60e6: $61

  db $bf, $61, $c2, $61, $c5, $61, $c8, $61, $ad, $61, $b0, $61, $b9, $61, $bc, $61
  db $95, $61, $98, $61, $9b, $61, $9e, $61, $a1, $61, $a4, $61

  and a                                           ; $6103: $a7
  ld h, c                                         ; $6104: $61

  db $aa, $61

  jp c, $dd61                                     ; $6107: $da $61 $dd

  ld h, c                                         ; $610a: $61
  ldh [$ff61], a                                  ; $610b: $e0 $61
  db $e3                                          ; $610d: $e3
  ld h, c                                         ; $610e: $61
  and $61                                         ; $610f: $e6 $61
  jp hl                                           ; $6111: $e9


  ld h, c                                         ; $6112: $61
  db $ec                                          ; $6113: $ec
  ld h, c                                         ; $6114: $61
  and $61                                         ; $6115: $e6 $61

  db $0b, $0a, $0c, $0e, $0a, $0f

  inc h                                           ; $611d: $24
  rrca                                            ; $611e: $0f
  dec bc                                          ; $611f: $0b
  jr z, @+$09                                     ; $6120: $28 $07

  db $28                                          ; $6122: $28

  db $0d, $24, $0f, $10, $0d, $10, $49, $28, $4c, $0f, $55, $0f

  db $10                                          ; $612f: $10
  rlca                                            ; $6130: $07

jr_003_6131:
  db $10                                          ; $6131: $10

  db $07, $10, $07, $28, $10, $28, $07, $28, $07, $09, $55, $09, $13, $27, $13, $08
  db $27, $08, $51, $11, $51

  dec h                                           ; $6147: $25
  ld h, $25                                       ; $6148: $26 $25

  db $1b, $5d, $56

  ld d, d                                         ; $614d: $52
  ld e, b                                         ; $614e: $58
  db $1e                                          ; $614f: $1e

  db $23, $11, $23, $15, $2e, $15, $15, $15, $15, $2e, $15, $2e

  dec l                                           ; $615c: $2d
  ld l, $2d                                       ; $615d: $2e $2d

  db $16, $20, $16

  dec e                                           ; $6162: $1d
  rla                                             ; $6163: $17
  rra                                             ; $6164: $1f

  db $21, $1a, $5d

  ld a, $32                                       ; $6168: $3e $32
  ld a, $1b                                       ; $616a: $3e $1b
  inc e                                           ; $616c: $1c
  dec de                                          ; $616d: $1b

  db $1e, $60, $48, $1b, $46, $4b, $1e, $11, $1e, $45, $46, $41, $58, $57, $09, $25
  db $42, $25, $5d, $41, $5d, $23, $46, $23

  ld d, a                                         ; $6186: $57
  dec de                                          ; $6187: $1b
  ld d, a                                         ; $6188: $57
  daa                                             ; $6189: $27
  ld [hl-], a                                     ; $618a: $32
  daa                                             ; $618b: $27
  cpl                                             ; $618c: $2f
  jr z, @+$31                                     ; $618d: $28 $2f

  daa                                             ; $618f: $27
  dec l                                           ; $6190: $2d
  daa                                             ; $6191: $27
  dec l                                           ; $6192: $2d
  jr z, @+$2f                                     ; $6193: $28 $2d

  db $3f, $48, $3f, $47, $5e, $5a, $50, $5b, $1c, $5d, $5e, $60, $26, $5c, $3f, $46
  db $5f, $53

  ld c, l                                         ; $61a7: $4d
  ld e, e                                         ; $61a8: $5b
  ld [hl+], a                                     ; $61a9: $22

  db $5f, $5e, $26, $31, $2d, $31, $32, $1a, $32

  ld e, b                                         ; $61b3: $58
  jr z, @+$5a                                     ; $61b4: $28 $58

  ld d, b                                         ; $61b6: $50
  cpl                                             ; $61b7: $2f
  ld d, b                                         ; $61b8: $50

  db $2d, $2f, $14, $16, $25, $2d, $61, $60, $61, $5a, $30, $1e, $58, $1e, $30, $60
  db $3f, $5a, $44, $4f, $44

  ld e, c                                         ; $61ce: $59
  ld b, h                                         ; $61cf: $44
  ld e, c                                         ; $61d0: $59
  ld b, b                                         ; $61d1: $40
  ld e, h                                         ; $61d2: $5c
  ld b, b                                         ; $61d3: $40
  ld b, h                                         ; $61d4: $44
  ld b, h                                         ; $61d5: $44
  ld b, h                                         ; $61d6: $44
  ld [de], a                                      ; $61d7: $12
  ld b, d                                         ; $61d8: $42
  ld [de], a                                      ; $61d9: $12
  ld d, e                                         ; $61da: $53
  ld b, h                                         ; $61db: $44
  ld d, e                                         ; $61dc: $53
  ld c, b                                         ; $61dd: $48
  ld b, l                                         ; $61de: $45
  ld c, b                                         ; $61df: $48
  ld d, a                                         ; $61e0: $57
  ld b, d                                         ; $61e1: $42
  ld d, a                                         ; $61e2: $57
  ld b, e                                         ; $61e3: $43
  ld b, c                                         ; $61e4: $41
  ld b, e                                         ; $61e5: $43
  ld d, l                                         ; $61e6: $55
  ld d, h                                         ; $61e7: $54
  ld b, b                                         ; $61e8: $40
  ld c, b                                         ; $61e9: $48
  ld b, e                                         ; $61ea: $43
  ld [hl+], a                                     ; $61eb: $22
  inc e                                           ; $61ec: $1c
  ld b, d                                         ; $61ed: $42
  ld hl, $2900                                    ; $61ee: $21 $00 $29
  nop                                             ; $61f1: $00

  db $00, $19, $00, $00, $18, $00

  inc d                                           ; $61f8: $14
  inc d                                           ; $61f9: $14
  inc d                                           ; $61fa: $14
  nop                                             ; $61fb: $00
  ld a, [hl+]                                     ; $61fc: $2a
  nop                                             ; $61fd: $00

  db $00, $2b, $00, $00, $2c, $00, $34, $00, $35, $00, $33, $00, $00, $36, $00, $00
  db $37, $00, $00, $38, $00

  nop                                             ; $6213: $00
  add hl, sp                                      ; $6214: $39
  nop                                             ; $6215: $00
  nop                                             ; $6216: $00
  ld a, [hl-]                                     ; $6217: $3a
  nop                                             ; $6218: $00
  nop                                             ; $6219: $00
  dec sp                                          ; $621a: $3b
  nop                                             ; $621b: $00
  nop                                             ; $621c: $00
  inc a                                           ; $621d: $3c
  nop                                             ; $621e: $00
  nop                                             ; $621f: $00
  dec a                                           ; $6220: $3d
  nop                                             ; $6221: $00

  db $00, $12, $00, $00, $1e, $00, $f2, $61, $25, $62, $f5, $61

  ld hl, sp+$61                                   ; $622e: $f8 $61

  db $01, $62, $fe, $61

  ei                                              ; $6234: $fb
  ld h, c                                         ; $6235: $61

  db $04, $62, $07, $62, $0a, $62, $0d, $62, $10, $62

  inc de                                          ; $6240: $13
  ld h, d                                         ; $6241: $62
  ld d, $62                                       ; $6242: $16 $62
  add hl, de                                      ; $6244: $19
  ld h, d                                         ; $6245: $62
  inc e                                           ; $6246: $1c
  ld h, d                                         ; $6247: $62
  rra                                             ; $6248: $1f
  ld h, d                                         ; $6249: $62
  rst $28                                         ; $624a: $ef
  ld h, c                                         ; $624b: $61

  db $22, $62, $00, $00, $37, $00, $ce, $00, $9c, $00, $00, $01

  dec [hl]                                        ; $6258: $35
  ld bc, $006e                                    ; $6259: $01 $6e $00

  db $93, $02, $93, $02, $93, $02, $06, $02

  jr nz, @+$04                                    ; $6264: $20 $02

  db $30, $02, $40, $02, $53, $02, $73, $02, $83, $02, $a3, $02, $b3, $02, $c3, $02
  db $d3, $02, $e3, $02, $f3, $02

  ld b, $03                                       ; $627c: $06 $03

  db $22, $03, $32, $03, $49, $03, $59, $03, $69, $03

  ld a, c                                         ; $6288: $79
  inc bc                                          ; $6289: $03

  db $89, $03

  sbc c                                           ; $628c: $99
  inc bc                                          ; $628d: $03

  db $a9, $03, $b9, $03

  ret                                             ; $6292: $c9


  inc bc                                          ; $6293: $03

  db $d9, $03, $e9, $03, $f9, $03, $19, $04, $29, $04, $39, $04

  cp c                                            ; $62a0: $b9
  inc bc                                          ; $62a1: $03
  ld a, c                                         ; $62a2: $79
  inc b                                           ; $62a3: $04

  db $49, $04, $29, $04, $8b, $04, $9b, $04

  xor e                                           ; $62ac: $ab
  inc b                                           ; $62ad: $04

  db $bb, $04, $cb, $04, $db, $04, $eb, $04, $fd, $04, $0d, $05, $1d, $05, $2d, $05
  db $3d, $05

  ld c, l                                         ; $62c0: $4d
  dec b                                           ; $62c1: $05
  ld e, l                                         ; $62c2: $5d
  dec b                                           ; $62c3: $05
  ld l, l                                         ; $62c4: $6d
  dec b                                           ; $62c5: $05
  ld a, [hl]                                      ; $62c6: $7e
  dec b                                           ; $62c7: $05
  adc [hl]                                        ; $62c8: $8e
  dec b                                           ; $62c9: $05
  and d                                           ; $62ca: $a2
  dec b                                           ; $62cb: $05

  db $09, $04

  and e                                           ; $62ce: $a3
  ld [bc], a                                      ; $62cf: $02
  and e                                           ; $62d0: $a3
  ld [bc], a                                      ; $62d1: $02

  db $a3, $02

  or e                                            ; $62d4: $b3
  ld [bc], a                                      ; $62d5: $02

  db $b3, $02, $b3, $02, $93, $02, $9b, $04, $d9, $03, $53, $02

  adc e                                           ; $62e2: $8b
  inc b                                           ; $62e3: $04

  db $a2, $05, $30, $02

  db $db                                          ; $62e8: $db
  inc b                                           ; $62e9: $04
  adc c                                           ; $62ea: $89
  inc bc                                          ; $62eb: $03
  adc c                                           ; $62ec: $89
  inc bc                                          ; $62ed: $03

  db $b9, $03, $29, $04

  add hl, hl                                      ; $62f2: $29
  inc b                                           ; $62f3: $04

  db $29, $04

  add hl, de                                      ; $62f6: $19
  inc b                                           ; $62f7: $04

  db $39, $04

  add hl, sp                                      ; $62fa: $39
  inc b                                           ; $62fb: $04

  db $39, $04, $ab, $04

  xor e                                           ; $6300: $ab
  inc b                                           ; $6301: $04

  db $99, $03, $09, $04

  add hl, bc                                      ; $6306: $09
  inc b                                           ; $6307: $04

  db $f9, $03, $f9, $03, $f9, $03, $a9, $03, $79, $03

  ld [hl], l                                      ; $6312: $75
  ld bc, $69af                                    ; $6313: $01 $af $69
  dec d                                           ; $6316: $15
  nop                                             ; $6317: $00
  xor a                                           ; $6318: $af
  ld l, c                                         ; $6319: $69
  dec d                                           ; $631a: $15
  nop                                             ; $631b: $00
  xor a                                           ; $631c: $af
  ld l, c                                         ; $631d: $69
  dec d                                           ; $631e: $15
  nop                                             ; $631f: $00
  xor a                                           ; $6320: $af
  ld l, c                                         ; $6321: $69
  dec d                                           ; $6322: $15
  nop                                             ; $6323: $00
  xor a                                           ; $6324: $af
  ld l, c                                         ; $6325: $69
  dec d                                           ; $6326: $15
  nop                                             ; $6327: $00
  ld l, [hl]                                      ; $6328: $6e
  ld l, e                                         ; $6329: $6b
  ld d, $00                                       ; $632a: $16 $00
  ld h, l                                         ; $632c: $65
  ld l, c                                         ; $632d: $69
  dec d                                           ; $632e: $15
  nop                                             ; $632f: $00

  db $d0, $68, $12, $00, $d0, $68, $12, $00, $d0, $68, $12, $00

  ld [hl-], a                                     ; $633c: $32
  ld l, h                                         ; $633d: $6c
  ld [de], a                                      ; $633e: $12
  nop                                             ; $633f: $00
  ret nc                                          ; $6340: $d0

  ld l, b                                         ; $6341: $68
  ld [de], a                                      ; $6342: $12
  nop                                             ; $6343: $00
  ld e, c                                         ; $6344: $59
  ld l, h                                         ; $6345: $6c
  inc d                                           ; $6346: $14
  nop                                             ; $6347: $00
  ld [hl], e                                      ; $6348: $73
  ld l, h                                         ; $6349: $6c
  dec d                                           ; $634a: $15
  nop                                             ; $634b: $00

  db $8d, $6c, $15, $00, $c1, $6c, $15, $00, $db, $6c, $18, $00, $d0, $68, $12, $00
  db $d0, $68, $12, $00, $02, $6d, $13, $00, $1c, $6d, $15, $00, $36, $6d, $13, $00

  ld d, b                                         ; $636c: $50
  ld l, l                                         ; $636d: $6d
  inc hl                                          ; $636e: $23
  nop                                             ; $636f: $00
  ld l, [hl]                                      ; $6370: $6e
  ld l, l                                         ; $6371: $6d
  inc de                                          ; $6372: $13
  nop                                             ; $6373: $00

  db $de, $68, $13, $00

  sub e                                           ; $6378: $93
  ld l, l                                         ; $6379: $6d
  jr @+$02                                        ; $637a: $18 $00

  db $de, $68, $12, $00, $e2, $6d, $22, $00, $d0, $68, $12, $00

  ld b, $6e                                       ; $6388: $06 $6e
  inc de                                          ; $638a: $13
  nop                                             ; $638b: $00
  dec d                                           ; $638c: $15
  ld l, [hl]                                      ; $638d: $6e
  ld a, [de]                                      ; $638e: $1a
  nop                                             ; $638f: $00
  ld a, [hl+]                                     ; $6390: $2a
  ld l, [hl]                                      ; $6391: $6e
  ld [de], a                                      ; $6392: $12
  nop                                             ; $6393: $00

  db $d0, $68, $10, $00, $39, $6e, $16, $00

  ld c, d                                         ; $639c: $4a
  ld l, [hl]                                      ; $639d: $6e
  ld d, $00                                       ; $639e: $16 $00

  db $5b, $6e, $1b, $00, $7d, $6e, $22, $00, $d0, $68, $12, $00, $d0, $68, $12, $00
  db $d0, $68, $12, $00, $d0, $68, $12, $00

  ret nc                                          ; $63b8: $d0

  ld l, b                                         ; $63b9: $68
  ld [de], a                                      ; $63ba: $12
  nop                                             ; $63bb: $00
  ccf                                             ; $63bc: $3f
  ld [hl], b                                      ; $63bd: $70
  ld hl, $5d00                                    ; $63be: $21 $00 $5d
  ld [hl], b                                      ; $63c1: $70
  ld a, [de]                                      ; $63c2: $1a
  nop                                             ; $63c3: $00

  db $dd, $6d, $28, $00, $b0, $6e, $15, $00, $bf, $6e, $14, $00

  ldh [$ff6e], a                                  ; $63d0: $e0 $6e
  inc d                                           ; $63d2: $14
  nop                                             ; $63d3: $00

  db $ef, $6e, $15, $00, $0b, $6f, $12, $00

  ld a, [de]                                      ; $63dc: $1a
  ld l, a                                         ; $63dd: $6f
  add hl, de                                      ; $63de: $19
  nop                                             ; $63df: $00
  ld b, l                                         ; $63e0: $45
  ld l, a                                         ; $63e1: $6f
  add hl, de                                      ; $63e2: $19
  nop                                             ; $63e3: $00
  ret nc                                          ; $63e4: $d0

  ld l, b                                         ; $63e5: $68
  ld [de], a                                      ; $63e6: $12
  nop                                             ; $63e7: $00
  ret nc                                          ; $63e8: $d0

  ld l, b                                         ; $63e9: $68
  ld [de], a                                      ; $63ea: $12
  nop                                             ; $63eb: $00
  ld l, [hl]                                      ; $63ec: $6e
  ld l, a                                         ; $63ed: $6f
  inc d                                           ; $63ee: $14
  nop                                             ; $63ef: $00
  ld l, [hl]                                      ; $63f0: $6e
  ld l, a                                         ; $63f1: $6f
  inc d                                           ; $63f2: $14
  nop                                             ; $63f3: $00
  sub e                                           ; $63f4: $93
  ld l, a                                         ; $63f5: $6f
  dec c                                           ; $63f6: $0d
  nop                                             ; $63f7: $00
  ld l, [hl]                                      ; $63f8: $6e
  ld l, a                                         ; $63f9: $6f
  inc d                                           ; $63fa: $14
  nop                                             ; $63fb: $00
  cp b                                            ; $63fc: $b8
  ld l, a                                         ; $63fd: $6f
  inc de                                          ; $63fe: $13
  nop                                             ; $63ff: $00
  jp nc, $166f                                    ; $6400: $d2 $6f $16

  nop                                             ; $6403: $00
  xor $6f                                         ; $6404: $ee $6f
  dec d                                           ; $6406: $15
  nop                                             ; $6407: $00
  inc de                                          ; $6408: $13
  ld [hl], b                                      ; $6409: $70
  ld hl, $2b00                                    ; $640a: $21 $00 $2b
  ld l, a                                         ; $640d: $6f
  ld [de], a                                      ; $640e: $12
  nop                                             ; $640f: $00

  db $96, $6e, $12, $00

  ret nc                                          ; $6414: $d0

  ld l, b                                         ; $6415: $68
  ld [de], a                                      ; $6416: $12
  nop                                             ; $6417: $00
  ret nc                                          ; $6418: $d0

  ld l, b                                         ; $6419: $68
  ld [de], a                                      ; $641a: $12
  nop                                             ; $641b: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $6420: $d0

  ld l, b                                         ; $6421: $68
  ld [de], a                                      ; $6422: $12
  nop                                             ; $6423: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $6428: $d0

  ld l, b                                         ; $6429: $68
  ld [de], a                                      ; $642a: $12
  nop                                             ; $642b: $00

  db $d0, $68, $12, $00, $bf, $6e, $14, $00

  ld e, e                                         ; $6434: $5b
  ld l, [hl]                                      ; $6435: $6e
  dec de                                          ; $6436: $1b
  nop                                             ; $6437: $00

  db $8d, $6c, $15, $00

  or b                                            ; $643c: $b0
  ld l, [hl]                                      ; $643d: $6e
  dec d                                           ; $643e: $15
  nop                                             ; $643f: $00

  db $2b, $6f, $12, $00

  ld e, c                                         ; $6444: $59
  ld l, h                                         ; $6445: $6c
  inc d                                           ; $6446: $14
  nop                                             ; $6447: $00
  ld a, [de]                                      ; $6448: $1a
  ld l, a                                         ; $6449: $6f
  add hl, de                                      ; $644a: $19
  nop                                             ; $644b: $00
  dec d                                           ; $644c: $15
  ld l, [hl]                                      ; $644d: $6e
  ld a, [de]                                      ; $644e: $1a
  nop                                             ; $644f: $00
  dec d                                           ; $6450: $15
  ld l, [hl]                                      ; $6451: $6e
  ld a, [de]                                      ; $6452: $1a
  nop                                             ; $6453: $00

  db $39, $6e, $16, $00, $d0, $68, $12, $00

  ret nc                                          ; $645c: $d0

  ld l, b                                         ; $645d: $68
  ld [de], a                                      ; $645e: $12
  nop                                             ; $645f: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $6464: $d0

  ld l, b                                         ; $6465: $68
  ld [de], a                                      ; $6466: $12
  nop                                             ; $6467: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $646c: $d0

  ld l, b                                         ; $646d: $68
  ld [de], a                                      ; $646e: $12
  nop                                             ; $646f: $00

  db $d0, $68, $12, $00, $e0, $6e, $14, $00

  ldh [$ff6e], a                                  ; $6478: $e0 $6e
  inc d                                           ; $647a: $14
  nop                                             ; $647b: $00
  ld a, [hl+]                                     ; $647c: $2a
  ld l, [hl]                                      ; $647d: $6e
  ld [de], a                                      ; $647e: $12
  nop                                             ; $647f: $00
  sub [hl]                                        ; $6480: $96
  ld l, [hl]                                      ; $6481: $6e
  ld [de], a                                      ; $6482: $12
  nop                                             ; $6483: $00
  sub [hl]                                        ; $6484: $96
  ld l, [hl]                                      ; $6485: $6e
  ld [de], a                                      ; $6486: $12
  nop                                             ; $6487: $00

  db $d0, $68, $12, $00, $d0, $68, $12, $00

  ret nc                                          ; $6490: $d0

  ld l, b                                         ; $6491: $68
  ld [de], a                                      ; $6492: $12
  nop                                             ; $6493: $00

  db $d0, $68, $10, $00, $06, $6e, $13, $00

  ld a, [de]                                      ; $649c: $1a
  ld l, h                                         ; $649d: $6c
  ld [de], a                                      ; $649e: $12
  nop                                             ; $649f: $00

  db $df, $69, $0c, $00, $df, $69, $0c, $00, $70, $6a, $0c, $00, $70, $6a, $0c, $00
  db $f0, $6a, $0c, $00

  ld a, [hl]                                      ; $64b4: $7e
  ld l, e                                         ; $64b5: $6b
  jr jr_003_64b8                                  ; $64b6: $18 $00

jr_003_64b8:
  halt                                            ; $64b8: $76
  ld l, c                                         ; $64b9: $69
  add hl, bc                                      ; $64ba: $09
  nop                                             ; $64bb: $00

  db $ed, $68, $0c, $00, $ed, $68, $0c, $00, $ed, $68, $0c, $00, $43, $6c, $10, $00

  ld c, [hl]                                      ; $64cc: $4e
  ld l, h                                         ; $64cd: $6c
  inc c                                           ; $64ce: $0c
  nop                                             ; $64cf: $00

  db $68, $6c, $0f, $00, $82, $6c, $0e, $00, $9c, $6c, $0f, $00, $d0, $6c, $0e, $00
  db $ec, $6c, $0e, $00, $f7, $6c, $0c, $00, $f7, $6c, $0c, $00, $11, $6d, $0d, $00
  db $2b, $6d, $0d, $00, $45, $6d, $0d, $00, $63, $6d, $0c, $00

  ld a, l                                         ; $64fc: $7d
  ld l, l                                         ; $64fd: $6d
  inc c                                           ; $64fe: $0c
  nop                                             ; $64ff: $00

  db $88, $6d, $0d, $00, $a4, $6d, $10, $00, $b1, $6d, $0c, $00, $fb, $6d, $0c, $00
  db $ed, $68, $0c, $00

  di                                              ; $6514: $f3
  ld l, b                                         ; $6515: $68
  inc c                                           ; $6516: $0c
  nop                                             ; $6517: $00

  db $f3, $68, $0c, $00

  di                                              ; $651c: $f3
  ld l, b                                         ; $651d: $68
  inc c                                           ; $651e: $0c
  nop                                             ; $651f: $00

  db $ed, $68, $0c, $00, $ed, $68, $0d, $00

  di                                              ; $6528: $f3
  ld l, b                                         ; $6529: $68
  inc c                                           ; $652a: $0c
  nop                                             ; $652b: $00

  db $70, $6e, $0f, $00, $f3, $68, $0c, $00, $ed, $68, $0c, $00, $ed, $68, $0c, $00
  db $ed, $68, $0c, $00, $ed, $68, $0c, $00

  db $ed                                          ; $6544: $ed
  ld l, b                                         ; $6545: $68
  inc c                                           ; $6546: $0c
  nop                                             ; $6547: $00
  ld d, d                                         ; $6548: $52
  ld [hl], b                                      ; $6549: $70
  inc c                                           ; $654a: $0c
  nop                                             ; $654b: $00

  db $f3, $68, $0c, $00, $ed, $68, $06, $00, $f3, $68, $0c, $00, $f3, $68, $0c, $00

  di                                              ; $655c: $f3
  ld l, b                                         ; $655d: $68
  inc c                                           ; $655e: $0c
  nop                                             ; $655f: $00

  db $00, $6f, $0c, $00, $f3, $68, $0c, $00, $f3, $68, $0c, $00, $58, $6f, $0c, $00
  db $63, $6f, $0c, $00

  ld [$0c70], sp                                  ; $6574: $08 $70 $0c
  nop                                             ; $6577: $00

  db $7d, $6f, $0c, $00, $88, $6f, $0c, $00, $a0, $6f, $0c, $00

  xor l                                           ; $6584: $ad
  ld l, a                                         ; $6585: $6f
  inc c                                           ; $6586: $0c
  nop                                             ; $6587: $00
  rst $00                                         ; $6588: $c7
  ld l, a                                         ; $6589: $6f
  dec c                                           ; $658a: $0d
  nop                                             ; $658b: $00
  db $e3                                          ; $658c: $e3
  ld l, a                                         ; $658d: $6f
  inc c                                           ; $658e: $0c
  nop                                             ; $658f: $00
  db $fd                                          ; $6590: $fd
  ld l, a                                         ; $6591: $6f
  inc c                                           ; $6592: $0c
  nop                                             ; $6593: $00
  inc l                                           ; $6594: $2c
  ld [hl], b                                      ; $6595: $70
  ld hl, $3a00                                    ; $6596: $21 $00 $3a
  ld l, a                                         ; $6599: $6f
  inc c                                           ; $659a: $0c
  nop                                             ; $659b: $00

  db $a5, $6e, $12, $00

  rst $30                                         ; $65a0: $f7
  ld l, h                                         ; $65a1: $6c
  inc c                                           ; $65a2: $0c
  nop                                             ; $65a3: $00
  rst $30                                         ; $65a4: $f7
  ld l, h                                         ; $65a5: $6c
  inc c                                           ; $65a6: $0c
  nop                                             ; $65a7: $00

  db $f7, $6c, $0c, $00

  rst $30                                         ; $65ac: $f7
  ld l, h                                         ; $65ad: $6c
  inc c                                           ; $65ae: $0c
  nop                                             ; $65af: $00
  rst $30                                         ; $65b0: $f7
  ld l, h                                         ; $65b1: $6c
  inc c                                           ; $65b2: $0c
  nop                                             ; $65b3: $00
  rst $30                                         ; $65b4: $f7
  ld l, h                                         ; $65b5: $6c
  inc c                                           ; $65b6: $0c
  nop                                             ; $65b7: $00

  db $ed, $68, $0c, $00, $f3, $68, $0c, $00, $70, $6e, $0f, $00, $9c, $6c, $0f, $00

  di                                              ; $65c8: $f3
  ld l, b                                         ; $65c9: $68
  inc c                                           ; $65ca: $0c
  nop                                             ; $65cb: $00

  db $3a, $6f, $0c, $00, $68, $6c, $0f, $00

  di                                              ; $65d4: $f3
  ld l, b                                         ; $65d5: $68
  inc c                                           ; $65d6: $0c
  nop                                             ; $65d7: $00
  di                                              ; $65d8: $f3
  ld l, b                                         ; $65d9: $68
  inc c                                           ; $65da: $0c
  nop                                             ; $65db: $00
  di                                              ; $65dc: $f3
  ld l, b                                         ; $65dd: $68
  inc c                                           ; $65de: $0c
  nop                                             ; $65df: $00

  db $ed, $68, $0d, $00

  db $ed                                          ; $65e4: $ed
  ld l, b                                         ; $65e5: $68
  ld b, $00                                       ; $65e6: $06 $00
  db $ed                                          ; $65e8: $ed
  ld l, b                                         ; $65e9: $68
  ld b, $00                                       ; $65ea: $06 $00

  db $ed, $68, $06, $00

  db $ed                                          ; $65f0: $ed
  ld l, b                                         ; $65f1: $68
  inc c                                           ; $65f2: $0c
  nop                                             ; $65f3: $00

  db $ed, $68, $0c, $00

  db $ed                                          ; $65f8: $ed
  ld l, b                                         ; $65f9: $68
  inc c                                           ; $65fa: $0c
  nop                                             ; $65fb: $00

  db $ed, $68, $0c, $00, $f3, $68, $0c, $00

  di                                              ; $6604: $f3
  ld l, b                                         ; $6605: $68
  inc c                                           ; $6606: $0c
  nop                                             ; $6607: $00

  db $f3, $68, $0c, $00, $a5, $6e, $12, $00

  and l                                           ; $6610: $a5
  ld l, [hl]                                      ; $6611: $6e
  ld [de], a                                      ; $6612: $12
  nop                                             ; $6613: $00

  db $ed, $68, $0c, $00, $ed, $68, $0c, $00, $ed, $68, $0c, $00, $ed, $68, $0c, $00
  db $f3, $68, $0c, $00

  jr z, jr_003_6696                               ; $6628: $28 $6c

  inc c                                           ; $662a: $0c
  nop                                             ; $662b: $00

  db $23, $6a, $37, $00, $23, $6a, $37, $00, $aa, $6a, $1e, $00, $aa, $6a, $1e, $00
  db $36, $6b, $27, $00

  jp z, Jump_000_316b                             ; $6640: $ca $6b $31

  nop                                             ; $6643: $00
  sub d                                           ; $6644: $92
  ld l, c                                         ; $6645: $69
  daa                                             ; $6646: $27
  nop                                             ; $6647: $00

  db $cb, $69, $20, $00, $cb, $69, $20, $00, $5c, $6a, $20, $00, $5c, $6a, $20, $00
  db $dc, $6a, $22, $00

  ld l, [hl]                                      ; $665c: $6e
  ld l, e                                         ; $665d: $6b
  ld d, $00                                       ; $665e: $16 $00
  ld h, l                                         ; $6660: $65
  ld l, c                                         ; $6661: $69
  dec d                                           ; $6662: $15
  nop                                             ; $6663: $00
  ret nc                                          ; $6664: $d0

  ld l, b                                         ; $6665: $68
  ld [de], a                                      ; $6666: $12
  nop                                             ; $6667: $00
  ret nc                                          ; $6668: $d0

  ld l, b                                         ; $6669: $68
  ld [de], a                                      ; $666a: $12
  nop                                             ; $666b: $00

  db $d0, $68, $12, $00, $32, $6c, $12, $00

  ret nc                                          ; $6674: $d0

  ld l, b                                         ; $6675: $68
  ld [de], a                                      ; $6676: $12
  nop                                             ; $6677: $00

  db $59, $6c, $14, $00, $73, $6c, $15, $00

  adc l                                           ; $6680: $8d
  ld l, h                                         ; $6681: $6c
  dec d                                           ; $6682: $15
  nop                                             ; $6683: $00
  pop bc                                          ; $6684: $c1
  ld l, h                                         ; $6685: $6c
  dec d                                           ; $6686: $15
  nop                                             ; $6687: $00
  db $db                                          ; $6688: $db
  ld l, h                                         ; $6689: $6c
  jr jr_003_668c                                  ; $668a: $18 $00

jr_003_668c:
  ret nc                                          ; $668c: $d0

  ld l, b                                         ; $668d: $68
  ld [de], a                                      ; $668e: $12
  nop                                             ; $668f: $00

  db $d0, $68, $12, $00

  ld [bc], a                                      ; $6694: $02
  ld l, l                                         ; $6695: $6d

jr_003_6696:
  inc de                                          ; $6696: $13
  nop                                             ; $6697: $00

  db $1c, $6d, $15, $00

  ld [hl], $6d                                    ; $669c: $36 $6d
  inc de                                          ; $669e: $13
  nop                                             ; $669f: $00

  db $50, $6d, $23, $00

  ld l, [hl]                                      ; $66a4: $6e
  ld l, l                                         ; $66a5: $6d
  inc de                                          ; $66a6: $13
  nop                                             ; $66a7: $00

  db $de, $68, $13, $00, $93, $6d, $18, $00

  sbc $68                                         ; $66b0: $de $68
  ld [de], a                                      ; $66b2: $12
  nop                                             ; $66b3: $00
  ldh [c], a                                      ; $66b4: $e2
  ld l, l                                         ; $66b5: $6d
  ld [hl+], a                                     ; $66b6: $22
  nop                                             ; $66b7: $00
  ret nc                                          ; $66b8: $d0

  ld l, b                                         ; $66b9: $68
  ld [de], a                                      ; $66ba: $12
  nop                                             ; $66bb: $00
  ld b, $6e                                       ; $66bc: $06 $6e
  inc de                                          ; $66be: $13
  nop                                             ; $66bf: $00

  db $15, $6e, $1a, $00

  ld a, [hl+]                                     ; $66c4: $2a
  ld l, [hl]                                      ; $66c5: $6e
  ld [de], a                                      ; $66c6: $12
  nop                                             ; $66c7: $00
  ret nc                                          ; $66c8: $d0

  ld l, b                                         ; $66c9: $68
  stop                                            ; $66ca: $10 $00
  add hl, sp                                      ; $66cc: $39
  ld l, [hl]                                      ; $66cd: $6e
  ld d, $00                                       ; $66ce: $16 $00
  ld c, d                                         ; $66d0: $4a
  ld l, [hl]                                      ; $66d1: $6e
  ld d, $00                                       ; $66d2: $16 $00
  ld e, e                                         ; $66d4: $5b
  ld l, [hl]                                      ; $66d5: $6e
  dec de                                          ; $66d6: $1b
  nop                                             ; $66d7: $00
  ld a, l                                         ; $66d8: $7d
  ld l, [hl]                                      ; $66d9: $6e
  ld [hl+], a                                     ; $66da: $22
  nop                                             ; $66db: $00
  ret nc                                          ; $66dc: $d0

  ld l, b                                         ; $66dd: $68
  ld [de], a                                      ; $66de: $12
  nop                                             ; $66df: $00
  ret nc                                          ; $66e0: $d0

  ld l, b                                         ; $66e1: $68
  ld [de], a                                      ; $66e2: $12
  nop                                             ; $66e3: $00
  ret nc                                          ; $66e4: $d0

  ld l, b                                         ; $66e5: $68
  ld [de], a                                      ; $66e6: $12
  nop                                             ; $66e7: $00
  ret nc                                          ; $66e8: $d0

  ld l, b                                         ; $66e9: $68
  ld [de], a                                      ; $66ea: $12
  nop                                             ; $66eb: $00
  ret nc                                          ; $66ec: $d0

  ld l, b                                         ; $66ed: $68
  ld [de], a                                      ; $66ee: $12
  nop                                             ; $66ef: $00
  ccf                                             ; $66f0: $3f
  ld [hl], b                                      ; $66f1: $70
  db $21                                          ; $66f2: $21
  nop                                             ; $66f3: $00

  db $5d, $70, $1a, $00

  db $dd                                          ; $66f8: $dd
  ld l, l                                         ; $66f9: $6d
  jr z, jr_003_66fc                               ; $66fa: $28 $00

jr_003_66fc:
  or b                                            ; $66fc: $b0
  ld l, [hl]                                      ; $66fd: $6e
  dec d                                           ; $66fe: $15
  nop                                             ; $66ff: $00
  cp a                                            ; $6700: $bf
  ld l, [hl]                                      ; $6701: $6e
  inc d                                           ; $6702: $14
  nop                                             ; $6703: $00
  ldh [$ff6e], a                                  ; $6704: $e0 $6e
  inc d                                           ; $6706: $14
  nop                                             ; $6707: $00
  rst $28                                         ; $6708: $ef
  ld l, [hl]                                      ; $6709: $6e
  dec d                                           ; $670a: $15
  nop                                             ; $670b: $00
  dec bc                                          ; $670c: $0b
  ld l, a                                         ; $670d: $6f
  ld [de], a                                      ; $670e: $12
  nop                                             ; $670f: $00

  db $1a, $6f, $19, $00, $45, $6f, $19, $00, $d0, $68, $12, $00, $d0, $68, $12, $00
  db $6e, $6f, $14, $00, $6e, $6f, $14, $00, $93, $6f, $0d, $00

  ld l, [hl]                                      ; $672c: $6e
  ld l, a                                         ; $672d: $6f
  inc d                                           ; $672e: $14
  nop                                             ; $672f: $00
  cp b                                            ; $6730: $b8
  ld l, a                                         ; $6731: $6f
  inc de                                          ; $6732: $13
  nop                                             ; $6733: $00
  jp nc, $166f                                    ; $6734: $d2 $6f $16

  nop                                             ; $6737: $00
  xor $6f                                         ; $6738: $ee $6f
  dec d                                           ; $673a: $15
  nop                                             ; $673b: $00
  inc de                                          ; $673c: $13
  ld [hl], b                                      ; $673d: $70
  ld hl, $2b00                                    ; $673e: $21 $00 $2b
  ld l, a                                         ; $6741: $6f
  ld [de], a                                      ; $6742: $12
  nop                                             ; $6743: $00
  sub [hl]                                        ; $6744: $96
  ld l, [hl]                                      ; $6745: $6e
  ld [de], a                                      ; $6746: $12
  nop                                             ; $6747: $00
  ret nc                                          ; $6748: $d0

  ld l, b                                         ; $6749: $68
  ld [de], a                                      ; $674a: $12
  nop                                             ; $674b: $00
  ret nc                                          ; $674c: $d0

  ld l, b                                         ; $674d: $68
  ld [de], a                                      ; $674e: $12
  nop                                             ; $674f: $00
  ret nc                                          ; $6750: $d0

  ld l, b                                         ; $6751: $68
  ld [de], a                                      ; $6752: $12
  nop                                             ; $6753: $00
  ret nc                                          ; $6754: $d0

  ld l, b                                         ; $6755: $68
  ld [de], a                                      ; $6756: $12
  nop                                             ; $6757: $00
  ret nc                                          ; $6758: $d0

  ld l, b                                         ; $6759: $68
  ld [de], a                                      ; $675a: $12
  nop                                             ; $675b: $00

  db $d0, $68, $12, $00, $d0, $68, $12, $00, $bf, $6e, $14, $00, $5b, $6e, $1b, $00

  adc l                                           ; $676c: $8d
  ld l, h                                         ; $676d: $6c
  dec d                                           ; $676e: $15
  nop                                             ; $676f: $00
  or b                                            ; $6770: $b0
  ld l, [hl]                                      ; $6771: $6e
  dec d                                           ; $6772: $15
  nop                                             ; $6773: $00
  dec hl                                          ; $6774: $2b
  ld l, a                                         ; $6775: $6f
  ld [de], a                                      ; $6776: $12
  nop                                             ; $6777: $00

  db $59, $6c, $14, $00

  ld a, [de]                                      ; $677c: $1a
  ld l, a                                         ; $677d: $6f
  add hl, de                                      ; $677e: $19
  nop                                             ; $677f: $00
  dec d                                           ; $6780: $15
  ld l, [hl]                                      ; $6781: $6e
  ld a, [de]                                      ; $6782: $1a
  nop                                             ; $6783: $00
  dec d                                           ; $6784: $15
  ld l, [hl]                                      ; $6785: $6e
  ld a, [de]                                      ; $6786: $1a
  nop                                             ; $6787: $00

  db $39, $6e, $16, $00

  ret nc                                          ; $678c: $d0

  ld l, b                                         ; $678d: $68
  ld [de], a                                      ; $678e: $12
  nop                                             ; $678f: $00
  ret nc                                          ; $6790: $d0

  ld l, b                                         ; $6791: $68
  ld [de], a                                      ; $6792: $12
  nop                                             ; $6793: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $6798: $d0

  ld l, b                                         ; $6799: $68
  ld [de], a                                      ; $679a: $12
  nop                                             ; $679b: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $67a0: $d0

  ld l, b                                         ; $67a1: $68
  ld [de], a                                      ; $67a2: $12
  nop                                             ; $67a3: $00

  db $d0, $68, $12, $00

  ldh [$ff6e], a                                  ; $67a8: $e0 $6e
  inc d                                           ; $67aa: $14
  nop                                             ; $67ab: $00
  ldh [$ff6e], a                                  ; $67ac: $e0 $6e
  inc d                                           ; $67ae: $14
  nop                                             ; $67af: $00

  db $2a, $6e, $12, $00, $96, $6e, $12, $00

  sub [hl]                                        ; $67b8: $96
  ld l, [hl]                                      ; $67b9: $6e
  ld [de], a                                      ; $67ba: $12
  nop                                             ; $67bb: $00

  db $d0, $68, $12, $00

  ret nc                                          ; $67c0: $d0

  ld l, b                                         ; $67c1: $68
  ld [de], a                                      ; $67c2: $12
  nop                                             ; $67c3: $00

  db $d0, $68, $12, $00, $d0, $68, $10, $00

  ld b, $6e                                       ; $67cc: $06 $6e
  inc de                                          ; $67ce: $13
  nop                                             ; $67cf: $00
  ld a, [de]                                      ; $67d0: $1a
  ld l, h                                         ; $67d1: $6c
  ld [de], a                                      ; $67d2: $12
  nop                                             ; $67d3: $00

  db $e9, $69, $50, $00, $e9, $69, $50, $00, $7a, $6a, $50, $00, $7a, $6a, $50, $00
  db $fa, $6a, $50, $00

  sub b                                           ; $67e8: $90
  ld l, e                                         ; $67e9: $6b
  ld d, b                                         ; $67ea: $50
  nop                                             ; $67eb: $00
  ld a, [hl]                                      ; $67ec: $7e
  ld l, c                                         ; $67ed: $69
  ld d, b                                         ; $67ee: $50
  nop                                             ; $67ef: $00

  db $fb, $69, $6c, $00, $fb, $69, $6c, $00, $8c, $6a, $6c, $00, $8c, $6a, $6c, $00
  db $0c, $6b, $6c, $00

  xor h                                           ; $6804: $ac
  ld l, e                                         ; $6805: $6b
  ld l, h                                         ; $6806: $6c
  nop                                             ; $6807: $00

  db $2f, $06, $42, $06

  ld e, a                                         ; $680c: $5f
  db $06                                          ; $680d: $06

  db $dc, $05, $f3, $05, $0a, $06, $b2, $05, $c1, $05

  db $d2                                          ; $6818: $d2
  dec b                                           ; $6819: $05

  db $bf, $06, $dd, $06

  inc b                                           ; $681e: $04
  rlca                                            ; $681f: $07

  db $20, $07

  dec hl                                          ; $6822: $2b
  rlca                                            ; $6823: $07
  ccf                                             ; $6824: $3f
  rlca                                            ; $6825: $07
  ld [hl], e                                      ; $6826: $73
  rlca                                            ; $6827: $07
  add l                                           ; $6828: $85
  rlca                                            ; $6829: $07
  sbc d                                           ; $682a: $9a
  rlca                                            ; $682b: $07

  db $84, $06

  sub h                                           ; $682e: $94
  ld b, $b2                                       ; $682f: $06 $b2
  dec b                                           ; $6831: $05

  db $b2, $06

  cp d                                            ; $6834: $ba
  rlca                                            ; $6835: $07

  db $c7, $07, $16, $02, $50, $02, $03, $03

  ld d, $03                                       ; $683e: $16 $03

  db $42, $03

  ld [hl], c                                      ; $6842: $71
  db $01                                          ; $6843: $01

  db $9f, $01, $a9, $01

  xor c                                           ; $6848: $a9
  ld bc, $019f                                    ; $6849: $01 $9f $01

  db $c4, $01, $c4, $01, $c4, $01

  call nz, $c401                                  ; $6852: $c4 $01 $c4
  db $01                                          ; $6855: $01

  db $59, $04, $93, $08

  ld b, $0b                                       ; $685a: $06 $0b

  db $06, $0b, $06, $0b, $06, $0b, $06, $0b, $06, $0b, $bf, $06

  db $dd                                          ; $6868: $dd
  db $06                                          ; $6869: $06

  db $16, $02

  ld d, $02                                       ; $686c: $16 $02
  ld d, $02                                       ; $686e: $16 $02

  db $2f, $06

  cpl                                             ; $6872: $2f
  db $06                                          ; $6873: $06

  db $16, $03

  ccf                                             ; $6876: $3f
  rlca                                            ; $6877: $07

  db $06, $0b, $eb, $0a

  ld b, $0b                                       ; $687c: $06 $0b
  ld b, $0b                                       ; $687e: $06 $0b

  db $10, $04, $18, $04

  jr nz, @+$06                                    ; $6884: $20 $04

  db $08, $04, $08, $04, $08, $04, $f0, $03, $f8, $03

  nop                                             ; $6890: $00
  inc b                                           ; $6891: $04

  db $40, $04, $40, $04

  ld b, b                                         ; $6896: $40
  inc b                                           ; $6897: $04

  db $48, $04

  ld d, b                                         ; $689a: $50
  inc b                                           ; $689b: $04
  ld e, b                                         ; $689c: $58
  inc b                                           ; $689d: $04
  ld h, b                                         ; $689e: $60
  inc b                                           ; $689f: $04
  ld l, b                                         ; $68a0: $68
  inc b                                           ; $68a1: $04
  ld [hl], b                                      ; $68a2: $70
  inc b                                           ; $68a3: $04

  db $28, $04

  jr nc, jr_003_68ac                              ; $68a6: $30 $04

  ldh a, [$ff03]                                  ; $68a8: $f0 $03

  db $38, $04

jr_003_68ac:
  ld a, b                                         ; $68ac: $78
  inc b                                           ; $68ad: $04

  db $80, $04, $f0, $01, $08, $02, $38, $02

  ld c, b                                         ; $68b6: $48
  ld [bc], a                                      ; $68b7: $02

  db $28, $02

  sub b                                           ; $68ba: $90
  ld [bc], a                                      ; $68bb: $02

  db $90, $04, $98, $04

  sbc b                                           ; $68c0: $98
  inc b                                           ; $68c1: $04
  sub b                                           ; $68c2: $90
  inc b                                           ; $68c3: $04

  db $a8, $04, $a8, $04, $a8, $04

  xor b                                           ; $68ca: $a8
  inc b                                           ; $68cb: $04
  xor b                                           ; $68cc: $a8
  inc b                                           ; $68cd: $04

  db $30, $03, $20, $05

  ld [hl], b                                      ; $68d2: $70
  db $08                                          ; $68d3: $08

  db $70, $08, $70, $08, $d8, $0e, $d8, $0e, $70, $08, $08, $04

  db $08                                          ; $68e0: $08
  inc b                                           ; $68e1: $04

  db $f8, $01

  ldh a, [$ff03]                                  ; $68e4: $f0 $03
  ld b, b                                         ; $68e6: $40
  inc b                                           ; $68e7: $04

  db $10, $04

  db $10                                          ; $68ea: $10
  inc b                                           ; $68eb: $04

  db $48, $02

  ld e, b                                         ; $68ee: $58
  inc b                                           ; $68ef: $04

  db $d8, $0e

  add sp, $05                                     ; $68f2: $e8 $05
  ldh a, [$ff03]                                  ; $68f4: $f0 $03
  ret c                                           ; $68f6: $d8

  db $0e                                          ; $68f7: $0e

  db $19, $1b

  dec e                                           ; $68fa: $1d

  db $1e, $22, $2e

  ld a, $3f                                       ; $68fe: $3e $3f
  ccf                                             ; $6900: $3f

  db $20, $37

  scf                                             ; $6903: $37
  inc a                                           ; $6904: $3c
  dec a                                           ; $6905: $3d
  dec a                                           ; $6906: $3d
  ld d, b                                         ; $6907: $50
  ld c, a                                         ; $6908: $4f
  ld d, c                                         ; $6909: $51
  ld a, [hl-]                                     ; $690a: $3a
  dec sp                                          ; $690b: $3b
  db $01                                          ; $690c: $01

  db $35

  ld [hl-], a                                     ; $690e: $32
  jr nz, @+$03                                    ; $690f: $20 $01

  ld bc, $0101                                    ; $6911: $01 $01 $01
  ld bc, $0101                                    ; $6914: $01 $01 $01
  ld bc, $0101                                    ; $6917: $01 $01 $01
  ld bc, $0101                                    ; $691a: $01 $01 $01
  ld bc, $0101                                    ; $691d: $01 $01 $01
  db $01                                          ; $6920: $01

  db $1a, $1c

  inc [hl]                                        ; $6923: $34

  db $1f, $2d, $31, $3e, $3f

  ccf                                             ; $6929: $3f

  db $36, $39

  add hl, sp                                      ; $692c: $39

  db $3c

  dec a                                           ; $692e: $3d
  dec a                                           ; $692f: $3d
  ld d, b                                         ; $6930: $50
  ld c, a                                         ; $6931: $4f
  ld d, c                                         ; $6932: $51

  db $3a

  dec sp                                          ; $6934: $3b
  db $01                                          ; $6935: $01

  db $40

  inc sp                                          ; $6937: $33

  db $39

  db $01                                          ; $6939: $01
  db $01                                          ; $693a: $01

  db $01

  db $01                                          ; $693c: $01

  db $01

  ld bc, $0101                                    ; $693e: $01 $01 $01
  ld bc, $0101                                    ; $6941: $01 $01 $01
  ld bc, $0101                                    ; $6944: $01 $01 $01
  db $01                                          ; $6947: $01
  db $01                                          ; $6948: $01

  db $1a, $72, $0a, $00, $42, $72, $0c, $00

  add b                                           ; $6951: $80
  ld [hl], d                                      ; $6952: $72
  ld h, $00                                       ; $6953: $26 $00
  or d                                            ; $6955: $b2
  ld [hl], b                                      ; $6956: $70
  ld bc, $b200                                    ; $6957: $01 $00 $b2
  ld [hl], b                                      ; $695a: $70
  db $01                                          ; $695b: $01
  nop                                             ; $695c: $00

  db $c0, $71, $01, $00

  or d                                            ; $6961: $b2
  ld [hl], b                                      ; $6962: $70
  ld bc, $d400                                    ; $6963: $01 $00 $d4
  ld [hl], b                                      ; $6966: $70
  ld bc, $0600                                    ; $6967: $01 $00 $06
  ld [hl], c                                      ; $696a: $71
  jr z, jr_003_696d                               ; $696b: $28 $00

jr_003_696d:
  sub b                                           ; $696d: $90
  ld [hl], e                                      ; $696e: $73
  db $01                                          ; $696f: $01
  nop                                             ; $6970: $00

  db $dc, $73, $0e, $00

  ld l, $74                                       ; $6975: $2e $74
  ld bc, $6a00                                    ; $6977: $01 $00 $6a
  ld [hl], h                                      ; $697a: $74
  ld bc, $9600                                    ; $697b: $01 $00 $96
  ld [hl], h                                      ; $697e: $74
  ld bc, $c400                                    ; $697f: $01 $00 $c4
  ld [hl], h                                      ; $6982: $74
  jr c, jr_003_6985                               ; $6983: $38 $00

jr_003_6985:
  ld l, $75                                       ; $6985: $2e $75
  ld [hl+], a                                     ; $6987: $22
  nop                                             ; $6988: $00
  ld d, [hl]                                      ; $6989: $56
  ld [hl], l                                      ; $698a: $75
  ld bc, $8400                                    ; $698b: $01 $00 $84
  ld [hl], l                                      ; $698e: $75
  ld bc, $f200                                    ; $698f: $01 $00 $f2
  ld [hl], d                                      ; $6992: $72
  nop                                             ; $6993: $00
  nop                                             ; $6994: $00
  ld d, $73                                       ; $6995: $16 $73
  ld bc, $b200                                    ; $6997: $01 $00 $b2
  ld [hl], b                                      ; $699a: $70
  ld c, $00                                       ; $699b: $0e $00

  db $56, $73, $09, $00

  ldh [$ff75], a                                  ; $69a1: $e0 $75
  ld e, $00                                       ; $69a3: $1e $00

  db $10, $76, $13, $00, $86, $76, $08, $00

  sbc h                                           ; $69ad: $9c
  halt                                            ; $69ae: $76
  ld bc, $a800                                    ; $69af: $01 $00 $a8
  halt                                            ; $69b2: $76
  ld bc, $b600                                    ; $69b3: $01 $00 $b6
  halt                                            ; $69b6: $76
  ld bc, $d200                                    ; $69b7: $01 $00 $d2
  halt                                            ; $69ba: $76
  ld bc, $b200                                    ; $69bb: $01 $00 $b2
  ld [hl], b                                      ; $69be: $70
  db $01                                          ; $69bf: $01
  nop                                             ; $69c0: $00

  db $ee, $76, $28, $00, $02, $77, $36, $00

  ld [bc], a                                      ; $69c9: $02
  ld [hl], a                                      ; $69ca: $77
  ld [hl], $00                                    ; $69cb: $36 $00
  xor $76                                         ; $69cd: $ee $76
  jr z, @+$02                                     ; $69cf: $28 $00

  db $80, $77, $00, $00, $80, $77, $00, $00, $80, $77, $00, $00

  add b                                           ; $69dd: $80
  ld [hl], a                                      ; $69de: $77
  nop                                             ; $69df: $00
  nop                                             ; $69e0: $00
  add b                                           ; $69e1: $80
  ld [hl], a                                      ; $69e2: $77
  nop                                             ; $69e3: $00
  nop                                             ; $69e4: $00

  db $6c, $70, $11, $00

  add b                                           ; $69e9: $80
  ld [hl], a                                      ; $69ea: $77
  nop                                             ; $69eb: $00
  nop                                             ; $69ec: $00
  ld [de], a                                      ; $69ed: $12
  ld a, b                                         ; $69ee: $78
  db $11                                          ; $69ef: $11
  nop                                             ; $69f0: $00

  db $12, $78, $11, $00, $12, $78, $11, $00, $12, $78, $11, $00, $12, $78, $11, $00
  db $12, $78, $11, $00

  call nz, Call_000_3874                          ; $6a05: $c4 $74 $38
  nop                                             ; $6a08: $00
  call nz, Call_000_3874                          ; $6a09: $c4 $74 $38
  nop                                             ; $6a0c: $00
  call nz, Call_000_3874                          ; $6a0d: $c4 $74 $38
  nop                                             ; $6a10: $00
  call nz, Call_000_3874                          ; $6a11: $c4 $74 $38
  nop                                             ; $6a14: $00
  call nz, Call_000_3874                          ; $6a15: $c4 $74 $38
  nop                                             ; $6a18: $00
  call nz, Call_000_3874                          ; $6a19: $c4 $74 $38
  nop                                             ; $6a1c: $00
  call nz, Call_000_3874                          ; $6a1d: $c4 $74 $38
  nop                                             ; $6a20: $00
  call nz, Call_000_3874                          ; $6a21: $c4 $74 $38
  nop                                             ; $6a24: $00
  call nz, Call_000_3874                          ; $6a25: $c4 $74 $38
  nop                                             ; $6a28: $00

  db $12, $78, $11, $00, $dc, $77, $12, $00

  ld [de], a                                      ; $6a31: $12
  ld a, b                                         ; $6a32: $78
  ld de, $1200                                    ; $6a33: $11 $00 $12
  ld a, b                                         ; $6a36: $78
  ld de, $2400                                    ; $6a37: $11 $00 $24
  ld [hl], d                                      ; $6a3a: $72
  nop                                             ; $6a3b: $00
  nop                                             ; $6a3c: $00

  db $4e, $72, $00, $00

  xor b                                           ; $6a41: $a8
  ld [hl], d                                      ; $6a42: $72
  nop                                             ; $6a43: $00
  nop                                             ; $6a44: $00

  db $5e, $71, $00, $00, $90, $71, $00, $00, $ce, $71, $00, $00

  or h                                            ; $6a51: $b4
  ld [hl], b                                      ; $6a52: $70
  nop                                             ; $6a53: $00
  nop                                             ; $6a54: $00
  sub $70                                         ; $6a55: $d6 $70
  nop                                             ; $6a57: $00
  nop                                             ; $6a58: $00
  jr nc, @+$73                                    ; $6a59: $30 $71

  nop                                             ; $6a5b: $00
  nop                                             ; $6a5c: $00

  db $92, $73, $00, $00, $ea, $73, $00, $00

  jr nc, jr_003_6adb                              ; $6a65: $30 $74

  nop                                             ; $6a67: $00
  nop                                             ; $6a68: $00
  ld l, h                                         ; $6a69: $6c
  ld [hl], h                                      ; $6a6a: $74
  nop                                             ; $6a6b: $00
  nop                                             ; $6a6c: $00
  sbc b                                           ; $6a6d: $98
  ld [hl], h                                      ; $6a6e: $74
  nop                                             ; $6a6f: $00
  nop                                             ; $6a70: $00
  db $fc                                          ; $6a71: $fc
  ld [hl], h                                      ; $6a72: $74
  nop                                             ; $6a73: $00
  nop                                             ; $6a74: $00
  ld b, b                                         ; $6a75: $40
  ld [hl], l                                      ; $6a76: $75
  nop                                             ; $6a77: $00
  nop                                             ; $6a78: $00
  ld e, b                                         ; $6a79: $58
  ld [hl], l                                      ; $6a7a: $75
  nop                                             ; $6a7b: $00
  nop                                             ; $6a7c: $00
  add [hl]                                        ; $6a7d: $86
  ld [hl], l                                      ; $6a7e: $75
  nop                                             ; $6a7f: $00
  nop                                             ; $6a80: $00
  or h                                            ; $6a81: $b4
  ld [hl], b                                      ; $6a82: $70
  nop                                             ; $6a83: $00
  nop                                             ; $6a84: $00
  db $f4                                          ; $6a85: $f4
  ld [hl], d                                      ; $6a86: $72
  nop                                             ; $6a87: $00
  nop                                             ; $6a88: $00
  jr @+$75                                        ; $6a89: $18 $73

  nop                                             ; $6a8b: $00
  nop                                             ; $6a8c: $00

  db $5c, $73, $00, $00

  cp $75                                          ; $6a91: $fe $75
  nop                                             ; $6a93: $00
  nop                                             ; $6a94: $00

  db $2a, $76, $00, $00, $8e, $76, $00, $00, $9e, $76, $00, $00

  xor d                                           ; $6aa1: $aa
  halt                                            ; $6aa2: $76
  nop                                             ; $6aa3: $00
  nop                                             ; $6aa4: $00
  cp b                                            ; $6aa5: $b8
  halt                                            ; $6aa6: $76
  nop                                             ; $6aa7: $00
  nop                                             ; $6aa8: $00
  call nc, Call_000_0076                          ; $6aa9: $d4 $76 $00
  nop                                             ; $6aac: $00
  db $e4                                          ; $6aad: $e4
  halt                                            ; $6aae: $76
  nop                                             ; $6aaf: $00
  nop                                             ; $6ab0: $00
  db $e4                                          ; $6ab1: $e4
  halt                                            ; $6ab2: $76
  nop                                             ; $6ab3: $00
  nop                                             ; $6ab4: $00
  db $e4                                          ; $6ab5: $e4
  halt                                            ; $6ab6: $76
  nop                                             ; $6ab7: $00
  nop                                             ; $6ab8: $00
  db $e4                                          ; $6ab9: $e4
  halt                                            ; $6aba: $76
  nop                                             ; $6abb: $00
  nop                                             ; $6abc: $00
  db $e4                                          ; $6abd: $e4
  halt                                            ; $6abe: $76
  nop                                             ; $6abf: $00
  nop                                             ; $6ac0: $00

  db $8a, $77, $00, $00, $8a, $77, $00, $00, $8a, $77, $00, $00

  adc d                                           ; $6acd: $8a
  ld [hl], a                                      ; $6ace: $77
  nop                                             ; $6acf: $00
  nop                                             ; $6ad0: $00
  adc d                                           ; $6ad1: $8a
  ld [hl], a                                      ; $6ad2: $77
  nop                                             ; $6ad3: $00
  nop                                             ; $6ad4: $00

  db $82, $70, $20, $00

  add b                                           ; $6ad9: $80
  ld [hl], a                                      ; $6ada: $77

jr_003_6adb:
  nop                                             ; $6adb: $00
  nop                                             ; $6adc: $00
  add b                                           ; $6add: $80
  ld [hl], a                                      ; $6ade: $77
  nop                                             ; $6adf: $00
  nop                                             ; $6ae0: $00
  add b                                           ; $6ae1: $80
  ld [hl], a                                      ; $6ae2: $77
  nop                                             ; $6ae3: $00
  nop                                             ; $6ae4: $00
  add b                                           ; $6ae5: $80
  ld [hl], a                                      ; $6ae6: $77
  nop                                             ; $6ae7: $00
  nop                                             ; $6ae8: $00
  add b                                           ; $6ae9: $80
  ld [hl], a                                      ; $6aea: $77
  nop                                             ; $6aeb: $00
  nop                                             ; $6aec: $00
  add b                                           ; $6aed: $80
  ld [hl], a                                      ; $6aee: $77
  nop                                             ; $6aef: $00
  nop                                             ; $6af0: $00
  add b                                           ; $6af1: $80
  ld [hl], a                                      ; $6af2: $77
  nop                                             ; $6af3: $00
  nop                                             ; $6af4: $00
  add b                                           ; $6af5: $80
  ld [hl], a                                      ; $6af6: $77
  nop                                             ; $6af7: $00
  nop                                             ; $6af8: $00
  add b                                           ; $6af9: $80
  ld [hl], a                                      ; $6afa: $77
  nop                                             ; $6afb: $00
  nop                                             ; $6afc: $00

  db $8e, $76, $00, $00

  adc [hl]                                        ; $6b01: $8e
  halt                                            ; $6b02: $76
  nop                                             ; $6b03: $00
  nop                                             ; $6b04: $00
  adc [hl]                                        ; $6b05: $8e
  halt                                            ; $6b06: $76
  nop                                             ; $6b07: $00
  nop                                             ; $6b08: $00
  adc [hl]                                        ; $6b09: $8e
  halt                                            ; $6b0a: $76
  nop                                             ; $6b0b: $00
  nop                                             ; $6b0c: $00
  adc [hl]                                        ; $6b0d: $8e
  halt                                            ; $6b0e: $76
  nop                                             ; $6b0f: $00
  nop                                             ; $6b10: $00

  db $b8, $76, $00, $00

  db $fc                                          ; $6b15: $fc
  ld [hl], h                                      ; $6b16: $74
  nop                                             ; $6b17: $00
  nop                                             ; $6b18: $00
  add b                                           ; $6b19: $80
  ld [hl], a                                      ; $6b1a: $77
  nop                                             ; $6b1b: $00
  nop                                             ; $6b1c: $00
  call c, Call_000_1277                           ; $6b1d: $dc $77 $12
  nop                                             ; $6b20: $00
  adc [hl]                                        ; $6b21: $8e
  halt                                            ; $6b22: $76
  nop                                             ; $6b23: $00
  nop                                             ; $6b24: $00
  adc [hl]                                        ; $6b25: $8e
  halt                                            ; $6b26: $76
  nop                                             ; $6b27: $00
  nop                                             ; $6b28: $00

  db $26, $72, $1c, $00, $60, $72, $1c, $00

  xor d                                           ; $6b31: $aa
  ld [hl], d                                      ; $6b32: $72
  inc h                                           ; $6b33: $24
  nop                                             ; $6b34: $00

  db $74, $71, $16, $00, $a6, $71, $18, $00, $f4, $71, $1a, $00, $b6, $70, $0f, $00
  db $d8, $70, $2e, $00

  ld [hl-], a                                     ; $6b49: $32
  ld [hl], c                                      ; $6b4a: $71
  inc d                                           ; $6b4b: $14
  nop                                             ; $6b4c: $00

  db $bc, $73, $1e, $00, $04, $74, $28, $00

  ld b, [hl]                                      ; $6b55: $46
  ld [hl], h                                      ; $6b56: $74
  ld [hl+], a                                     ; $6b57: $22
  nop                                             ; $6b58: $00

  db $6e, $74, $28, $00

  sbc d                                           ; $6b5d: $9a
  ld [hl], h                                      ; $6b5e: $74
  jr z, jr_003_6b61                               ; $6b5f: $28 $00

jr_003_6b61:
  cp $74                                          ; $6b61: $fe $74
  jr nc, jr_003_6b65                              ; $6b63: $30 $00

jr_003_6b65:
  ld b, d                                         ; $6b65: $42
  ld [hl], l                                      ; $6b66: $75
  inc h                                           ; $6b67: $24
  nop                                             ; $6b68: $00
  ld e, d                                         ; $6b69: $5a
  ld [hl], l                                      ; $6b6a: $75
  ld a, [hl+]                                     ; $6b6b: $2a
  nop                                             ; $6b6c: $00
  adc b                                           ; $6b6d: $88
  ld [hl], l                                      ; $6b6e: $75
  dec sp                                          ; $6b6f: $3b
  nop                                             ; $6b70: $00

  db $f6, $72, $30, $00

  ld a, [de]                                      ; $6b75: $1a
  ld [hl], e                                      ; $6b76: $73
  ld e, $00                                       ; $6b77: $1e $00
  or [hl]                                         ; $6b79: $b6
  ld [hl], b                                      ; $6b7a: $70
  ld d, b                                         ; $6b7b: $50
  nop                                             ; $6b7c: $00

  db $86, $73, $0f, $00

  nop                                             ; $6b81: $00
  halt                                            ; $6b82: $76
  stop                                            ; $6b83: $10 $00

  db $3e, $76, $24, $00, $96, $76, $09, $00

  and [hl]                                        ; $6b8d: $a6
  halt                                            ; $6b8e: $76
  db $01                                          ; $6b8f: $01
  nop                                             ; $6b90: $00

  db $ac, $76, $10, $00

  jp z, $0c76                                     ; $6b95: $ca $76 $0c

  nop                                             ; $6b98: $00

  db $d6, $76, $15, $00

  or [hl]                                         ; $6b9d: $b6
  ld [hl], b                                      ; $6b9e: $70
  rrca                                            ; $6b9f: $0f
  nop                                             ; $6ba0: $00
  or [hl]                                         ; $6ba1: $b6
  ld [hl], b                                      ; $6ba2: $70
  rrca                                            ; $6ba3: $0f
  nop                                             ; $6ba4: $00

  db $6e, $77, $09, $00

  ld l, [hl]                                      ; $6ba9: $6e
  ld [hl], a                                      ; $6baa: $77
  add hl, bc                                      ; $6bab: $09
  nop                                             ; $6bac: $00
  or [hl]                                         ; $6bad: $b6
  ld [hl], b                                      ; $6bae: $70
  rrca                                            ; $6baf: $0f
  nop                                             ; $6bb0: $00

  db $d2, $77, $00, $00, $9c, $77, $08, $00, $b4, $77, $0f, $00

  or h                                            ; $6bbd: $b4
  ld [hl], a                                      ; $6bbe: $77
  rrca                                            ; $6bbf: $0f
  nop                                             ; $6bc0: $00
  sbc h                                           ; $6bc1: $9c
  ld [hl], a                                      ; $6bc2: $77
  db $08                                          ; $6bc3: $08
  nop                                             ; $6bc4: $00

  db $a2, $70, $10, $00, $ce, $6e, $12, $00

  cp h                                            ; $6bcd: $bc
  ld [hl], e                                      ; $6bce: $73
  ld e, $00                                       ; $6bcf: $1e $00
  cp h                                            ; $6bd1: $bc
  ld [hl], e                                      ; $6bd2: $73
  ld e, $00                                       ; $6bd3: $1e $00
  cp h                                            ; $6bd5: $bc
  ld [hl], e                                      ; $6bd6: $73
  ld e, $00                                       ; $6bd7: $1e $00
  cp h                                            ; $6bd9: $bc
  ld [hl], e                                      ; $6bda: $73
  ld e, $00                                       ; $6bdb: $1e $00
  cp h                                            ; $6bdd: $bc
  ld [hl], e                                      ; $6bde: $73
  ld e, $00                                       ; $6bdf: $1e $00
  cp h                                            ; $6be1: $bc
  ld [hl], e                                      ; $6be2: $73
  ld e, $00                                       ; $6be3: $1e $00

  db $bc, $73, $1e, $00

  cp h                                            ; $6be9: $bc
  ld [hl], e                                      ; $6bea: $73
  ld e, $00                                       ; $6beb: $1e $00

  db $96, $76, $09, $00

  sub [hl]                                        ; $6bf1: $96
  halt                                            ; $6bf2: $76
  add hl, bc                                      ; $6bf3: $09
  nop                                             ; $6bf4: $00
  sub [hl]                                        ; $6bf5: $96
  halt                                            ; $6bf6: $76
  add hl, bc                                      ; $6bf7: $09
  nop                                             ; $6bf8: $00

  db $26, $72, $1c, $00

  cp $74                                          ; $6bfd: $fe $74
  jr nc, jr_003_6c01                              ; $6bff: $30 $00

jr_003_6c01:
  cp $74                                          ; $6c01: $fe $74
  jr nc, jr_003_6c05                              ; $6c03: $30 $00

jr_003_6c05:
  cp $74                                          ; $6c05: $fe $74
  jr nc, jr_003_6c09                              ; $6c07: $30 $00

jr_003_6c09:
  add b                                           ; $6c09: $80
  ld [hl], a                                      ; $6c0a: $77
  nop                                             ; $6c0b: $00
  nop                                             ; $6c0c: $00

  db $e8, $77, $3f, $00

  cp h                                            ; $6c11: $bc
  ld [hl], e                                      ; $6c12: $73
  ld e, $00                                       ; $6c13: $1e $00
  cp h                                            ; $6c15: $bc
  ld [hl], e                                      ; $6c16: $73
  ld e, $00                                       ; $6c17: $1e $00

Call_003_6c19:
  ldh a, [$ffd6]                                  ; $6c19: $f0 $d6
  ld hl, $5f51                                    ; $6c1b: $21 $51 $5f
  call ResolveIndexedPointer16                              ; $6c1e: $cd $8b $31
  ldh a, [rDIV]                                   ; $6c21: $f0 $04
  and $03                                         ; $6c23: $e6 $03
  jp ResolveIndexedPointer16                                ; $6c25: $c3 $8b $31


  ld hl, $624e                                    ; $6c28: $21 $4e $62
  jr jr_003_6c30                                  ; $6c2b: $18 $03

  ld hl, $6808                                    ; $6c2d: $21 $08 $68

jr_003_6c30:
  inc bc                                          ; $6c30: $03
  ld a, [bc]                                      ; $6c31: $0a
  dec bc                                          ; $6c32: $0b
  call Call_000_3182                              ; $6c33: $cd $82 $31
  call Call_000_3427                              ; $6c36: $cd $27 $34

  db $02, $8e, $68

  ld e, [hl]                                      ; $6c3c: $5e
  inc hl                                          ; $6c3d: $23
  ld d, [hl]                                      ; $6c3e: $56
  inc hl                                          ; $6c3f: $23
  ld a, [hl+]                                     ; $6c40: $2a
  ld h, [hl]                                      ; $6c41: $66
  ld l, a                                         ; $6c42: $6f
  ret                                             ; $6c43: $c9


  push de                                         ; $6c44: $d5
  ld l, e                                         ; $6c45: $6b
  ld h, $15                                       ; $6c46: $26 $15
  call Call_000_009c                              ; $6c48: $cd $9c $00
  ld de, $5784                                    ; $6c4b: $11 $84 $57
  add hl, de                                      ; $6c4e: $19
  pop de                                          ; $6c4f: $d1
  ld a, d                                         ; $6c50: $7a
  rst $08                                         ; $6c51: $cf
  ld a, [hl+]                                     ; $6c52: $2a
  ld h, [hl]                                      ; $6c53: $66
  ld l, a                                         ; $6c54: $6f
  ret                                             ; $6c55: $c9


  push bc                                         ; $6c56: $c5
  call Call_000_2fc1                              ; $6c57: $cd $c1 $2f
  ld hl, $6880                                    ; $6c5a: $21 $80 $68
  call Call_000_3182                              ; $6c5d: $cd $82 $31
  call Call_003_7863                              ; $6c60: $cd $63 $78
  pop bc                                          ; $6c63: $c1
  ret                                             ; $6c64: $c9


  db $00, $00, $00, $fd, $1f, $02, $e1, $fd, $00, $03, $00, $00, $1f, $02, $1f, $02
  db $00, $00, $00, $03, $e1, $fd, $1f, $02, $00, $fd, $00, $00, $e1, $fd, $e1, $fd

Call_003_6c85:
  ld hl, $000f                                    ; $6c85: $21 $0f $00
  add hl, bc                                      ; $6c88: $09
  ld a, [hl+]                                     ; $6c89: $2a
  ld d, [hl]                                      ; $6c8a: $56
  ld hl, $0005                                    ; $6c8b: $21 $05 $00
  add hl, bc                                      ; $6c8e: $09
  add [hl]                                        ; $6c8f: $86
  ld [$cdb1], a                                   ; $6c90: $ea $b1 $cd
  inc hl                                          ; $6c93: $23
  ld a, d                                         ; $6c94: $7a
  adc [hl]                                        ; $6c95: $8e
  ld [$cdb2], a                                   ; $6c96: $ea $b2 $cd
  ld e, a                                         ; $6c99: $5f
  inc hl                                          ; $6c9a: $23
  ld a, $00                                       ; $6c9b: $3e $00
  bit 7, d                                        ; $6c9d: $cb $7a
  jr z, jr_003_6ca3                               ; $6c9f: $28 $02

  ld a, $ff                                       ; $6ca1: $3e $ff

jr_003_6ca3:
  adc [hl]                                        ; $6ca3: $8e
  ld [$cdb3], a                                   ; $6ca4: $ea $b3 $cd
  ld d, a                                         ; $6ca7: $57
  ret                                             ; $6ca8: $c9


Call_003_6ca9:
  ld hl, $0011                                    ; $6ca9: $21 $11 $00
  add hl, bc                                      ; $6cac: $09
  ld a, [hl+]                                     ; $6cad: $2a
  ld d, [hl]                                      ; $6cae: $56
  ld hl, $0008                                    ; $6caf: $21 $08 $00
  add hl, bc                                      ; $6cb2: $09
  add [hl]                                        ; $6cb3: $86
  ld [$cdb4], a                                   ; $6cb4: $ea $b4 $cd
  inc hl                                          ; $6cb7: $23
  ld a, d                                         ; $6cb8: $7a
  adc [hl]                                        ; $6cb9: $8e
  ld [$cdb5], a                                   ; $6cba: $ea $b5 $cd
  ld e, a                                         ; $6cbd: $5f
  inc hl                                          ; $6cbe: $23
  ld a, $00                                       ; $6cbf: $3e $00
  bit 7, d                                        ; $6cc1: $cb $7a
  jr z, jr_003_6cc7                               ; $6cc3: $28 $02

  ld a, $ff                                       ; $6cc5: $3e $ff

jr_003_6cc7:
  adc [hl]                                        ; $6cc7: $8e
  ld [$cdb6], a                                   ; $6cc8: $ea $b6 $cd
  ld d, a                                         ; $6ccb: $57
  ret                                             ; $6ccc: $c9


  call Call_003_6c85                              ; $6ccd: $cd $85 $6c
  call Call_003_6ca9                              ; $6cd0: $cd $a9 $6c

Call_003_6cd3:
  ld hl, $002a                                    ; $6cd3: $21 $2a $00
  add hl, bc                                      ; $6cd6: $09
  bit 1, [hl]                                     ; $6cd7: $cb $4e
  ret z                                           ; $6cd9: $c8

  ld a, [$cc03]                                   ; $6cda: $fa $03 $cc
  ld e, a                                         ; $6cdd: $5f
  ld a, [$cc04]                                   ; $6cde: $fa $04 $cc
  ld d, a                                         ; $6ce1: $57
  ld hl, $0011                                    ; $6ce2: $21 $11 $00
  add hl, bc                                      ; $6ce5: $09
  push hl                                         ; $6ce6: $e5
  ld a, [hl+]                                     ; $6ce7: $2a
  ld h, [hl]                                      ; $6ce8: $66
  ld l, a                                         ; $6ce9: $6f
  add hl, de                                      ; $6cea: $19
  pop de                                          ; $6ceb: $d1
  ld a, l                                         ; $6cec: $7d
  ld [de], a                                      ; $6ced: $12
  inc de                                          ; $6cee: $13
  ld a, h                                         ; $6cef: $7c
  ld [de], a                                      ; $6cf0: $12
  ret                                             ; $6cf1: $c9


Call_003_6cf2:
  ld hl, $cd9e                                    ; $6cf2: $21 $9e $cd
  ld e, [hl]                                      ; $6cf5: $5e
  inc hl                                          ; $6cf6: $23
  ld d, [hl]                                      ; $6cf7: $56
  ld hl, $cda0                                    ; $6cf8: $21 $a0 $cd
  ld a, [hl+]                                     ; $6cfb: $2a
  ld h, [hl]                                      ; $6cfc: $66
  ld l, a                                         ; $6cfd: $6f
  call Call_003_727c                              ; $6cfe: $cd $7c $72
  bit 2, a                                        ; $6d01: $cb $57
  ret nz                                          ; $6d03: $c0

  ld de, $0002                                    ; $6d04: $11 $02 $00
  ld hl, $cda0                                    ; $6d07: $21 $a0 $cd
  ld a, [hl+]                                     ; $6d0a: $2a
  ld h, [hl]                                      ; $6d0b: $66
  ld l, a                                         ; $6d0c: $6f
  add hl, de                                      ; $6d0d: $19
  ld a, [$cd9e]                                   ; $6d0e: $fa $9e $cd
  ld e, a                                         ; $6d11: $5f
  ld a, [$cd9f]                                   ; $6d12: $fa $9f $cd
  ld d, a                                         ; $6d15: $57
  call Call_003_727c                              ; $6d16: $cd $7c $72
  bit 2, a                                        ; $6d19: $cb $57
  ret nz                                          ; $6d1b: $c0

  ld hl, $cd9e                                    ; $6d1c: $21 $9e $cd
  ld e, [hl]                                      ; $6d1f: $5e
  inc hl                                          ; $6d20: $23
  ld d, [hl]                                      ; $6d21: $56
  ld hl, $fffb                                    ; $6d22: $21 $fb $ff
  add hl, de                                      ; $6d25: $19
  ld a, h                                         ; $6d26: $7c
  rla                                             ; $6d27: $17
  jr nc, jr_003_6d2d                              ; $6d28: $30 $03

  ld hl, $0000                                    ; $6d2a: $21 $00 $00

jr_003_6d2d:
  ld a, l                                         ; $6d2d: $7d
  ld [$cd9e], a                                   ; $6d2e: $ea $9e $cd
  ld a, h                                         ; $6d31: $7c
  ld [$cd9f], a                                   ; $6d32: $ea $9f $cd
  push hl                                         ; $6d35: $e5
  ld hl, $cda0                                    ; $6d36: $21 $a0 $cd
  ld a, [hl+]                                     ; $6d39: $2a
  ld h, [hl]                                      ; $6d3a: $66
  ld l, a                                         ; $6d3b: $6f
  ld de, $0000                                    ; $6d3c: $11 $00 $00
  add hl, de                                      ; $6d3f: $19
  ld a, h                                         ; $6d40: $7c
  rla                                             ; $6d41: $17
  jr nc, jr_003_6d47                              ; $6d42: $30 $03

  ld hl, $0000                                    ; $6d44: $21 $00 $00

jr_003_6d47:
  ld a, l                                         ; $6d47: $7d
  ld [$cda0], a                                   ; $6d48: $ea $a0 $cd
  ld a, h                                         ; $6d4b: $7c
  ld [$cda1], a                                   ; $6d4c: $ea $a1 $cd
  pop de                                          ; $6d4f: $d1
  call Call_003_727c                              ; $6d50: $cd $7c $72
  bit 2, a                                        ; $6d53: $cb $57
  ret nz                                          ; $6d55: $c0

  ld hl, $cd9e                                    ; $6d56: $21 $9e $cd
  ld e, [hl]                                      ; $6d59: $5e
  inc hl                                          ; $6d5a: $23
  ld d, [hl]                                      ; $6d5b: $56
  ld hl, $000a                                    ; $6d5c: $21 $0a $00
  add hl, de                                      ; $6d5f: $19
  push hl                                         ; $6d60: $e5
  ld hl, $cda0                                    ; $6d61: $21 $a0 $cd
  ld a, [hl+]                                     ; $6d64: $2a
  ld h, [hl]                                      ; $6d65: $66
  ld l, a                                         ; $6d66: $6f
  pop de                                          ; $6d67: $d1
  call Call_003_727c                              ; $6d68: $cd $7c $72
  bit 2, a                                        ; $6d6b: $cb $57
  ret nz                                          ; $6d6d: $c0

  ld hl, $cda0                                    ; $6d6e: $21 $a0 $cd
  ld a, [hl+]                                     ; $6d71: $2a
  ld h, [hl]                                      ; $6d72: $66
  ld l, a                                         ; $6d73: $6f
  ld de, $0002                                    ; $6d74: $11 $02 $00
  add hl, de                                      ; $6d77: $19
  ld a, l                                         ; $6d78: $7d
  ld [$cda0], a                                   ; $6d79: $ea $a0 $cd
  ld a, h                                         ; $6d7c: $7c
  ld [$cda1], a                                   ; $6d7d: $ea $a1 $cd
  ld a, [$cd9e]                                   ; $6d80: $fa $9e $cd
  ld e, a                                         ; $6d83: $5f
  ld a, [$cd9f]                                   ; $6d84: $fa $9f $cd
  ld d, a                                         ; $6d87: $57
  call Call_003_727c                              ; $6d88: $cd $7c $72
  bit 2, a                                        ; $6d8b: $cb $57
  ret nz                                          ; $6d8d: $c0

  ld hl, $cd9e                                    ; $6d8e: $21 $9e $cd
  ld e, [hl]                                      ; $6d91: $5e
  inc hl                                          ; $6d92: $23
  ld d, [hl]                                      ; $6d93: $56
  ld hl, $000a                                    ; $6d94: $21 $0a $00
  add hl, de                                      ; $6d97: $19
  push hl                                         ; $6d98: $e5
  ld hl, $cda0                                    ; $6d99: $21 $a0 $cd
  ld a, [hl+]                                     ; $6d9c: $2a
  ld h, [hl]                                      ; $6d9d: $66
  ld l, a                                         ; $6d9e: $6f
  pop de                                          ; $6d9f: $d1
  call Call_003_727c                              ; $6da0: $cd $7c $72
  bit 2, a                                        ; $6da3: $cb $57
  ret                                             ; $6da5: $c9


Call_003_6da6:
  ld hl, $002c                                    ; $6da6: $21 $2c $00
  add hl, bc                                      ; $6da9: $09
  bit 7, [hl]                                     ; $6daa: $cb $7e
  ret z                                           ; $6dac: $c8

  xor a                                           ; $6dad: $af
  ld [$cd9d], a                                   ; $6dae: $ea $9d $cd
  call Call_003_6e2b                              ; $6db1: $cd $2b $6e
  call Call_003_6cf2                              ; $6db4: $cd $f2 $6c
  bit 3, l                                        ; $6db7: $cb $5d
  jp nz, Jump_003_6dd6                            ; $6db9: $c2 $d6 $6d

  ld e, $01                                       ; $6dbc: $1e $01
  call Call_003_6f55                              ; $6dbe: $cd $55 $6f
  ld a, [$cd9d]                                   ; $6dc1: $fa $9d $cd
  ld e, a                                         ; $6dc4: $5f
  or a                                            ; $6dc5: $b7
  jp z, Jump_003_6dcc                             ; $6dc6: $ca $cc $6d

  call Call_003_6e59                              ; $6dc9: $cd $59 $6e

Jump_003_6dcc:
jr_003_6dcc:
  call Call_003_6e46                              ; $6dcc: $cd $46 $6e

Jump_003_6dcf:
  ld hl, $cab1                                    ; $6dcf: $21 $b1 $ca
  ld c, [hl]                                      ; $6dd2: $4e
  inc hl                                          ; $6dd3: $23
  ld b, [hl]                                      ; $6dd4: $46
  ret                                             ; $6dd5: $c9


Jump_003_6dd6:
  ld a, [bc]                                      ; $6dd6: $0a
  cp $01                                          ; $6dd7: $fe $01
  jp nz, Jump_003_6dcf                            ; $6dd9: $c2 $cf $6d

  ld a, l                                         ; $6ddc: $7d
  res 3, a                                        ; $6ddd: $cb $9f
  or a                                            ; $6ddf: $b7
  jr z, jr_003_6e0f                               ; $6de0: $28 $2d

  cp $07                                          ; $6de2: $fe $07
  jr z, jr_003_6deb                               ; $6de4: $28 $05

  ld h, $00                                       ; $6de6: $26 $00
  jp Jump_003_6dcf                                ; $6de8: $c3 $cf $6d


jr_003_6deb:
  ld hl, $000f                                    ; $6deb: $21 $0f $00
  add hl, bc                                      ; $6dee: $09
  xor a                                           ; $6def: $af
  ld [hl+], a                                     ; $6df0: $22
  ld [hl+], a                                     ; $6df1: $22
  ld [hl+], a                                     ; $6df2: $22
  ld [hl+], a                                     ; $6df3: $22
  ld [hl+], a                                     ; $6df4: $22
  ld [hl+], a                                     ; $6df5: $22
  ld a, $01                                       ; $6df6: $3e $01
  ldh [$ffe1], a                                  ; $6df8: $e0 $e1
  ld e, $01                                       ; $6dfa: $1e $01
  call Call_000_33f3                              ; $6dfc: $cd $f3 $33
  dec b                                           ; $6dff: $05
  ld h, l                                         ; $6e00: $65
  ld e, l                                         ; $6e01: $5d
  ld hl, $cab1                                    ; $6e02: $21 $b1 $ca
  ld c, [hl]                                      ; $6e05: $4e
  inc hl                                          ; $6e06: $23
  ld b, [hl]                                      ; $6e07: $46
  ld hl, $002c                                    ; $6e08: $21 $2c $00
  add hl, bc                                      ; $6e0b: $09
  res 7, [hl]                                     ; $6e0c: $cb $be
  ret                                             ; $6e0e: $c9


jr_003_6e0f:
  ldh a, [$ffa5]                                  ; $6e0f: $f0 $a5
  and $f0                                         ; $6e11: $e6 $f0
  jr z, jr_003_6dcc                               ; $6e13: $28 $b7

  ld a, [$cb2d]                                   ; $6e15: $fa $2d $cb
  or a                                            ; $6e18: $b7
  jr nz, jr_003_6dcc                              ; $6e19: $20 $b1

  ld a, $1e                                       ; $6e1b: $3e $1e
  ld [$cbdf], a                                   ; $6e1d: $ea $df $cb
  call Call_000_33f3                              ; $6e20: $cd $f3 $33

  db $05, $67, $71

  ld a, $19                                       ; $6e26: $3e $19
  jp Jump_000_261e                                ; $6e28: $c3 $1e $26


Call_003_6e2b:
  ld hl, $cdb2                                    ; $6e2b: $21 $b2 $cd
  ld a, [hl+]                                     ; $6e2e: $2a
  ld h, [hl]                                      ; $6e2f: $66
  ld l, a                                         ; $6e30: $6f
  ld [$cd9e], a                                   ; $6e31: $ea $9e $cd
  ld a, h                                         ; $6e34: $7c
  ld [$cd9f], a                                   ; $6e35: $ea $9f $cd
  ld hl, $cdb5                                    ; $6e38: $21 $b5 $cd
  ld a, [hl+]                                     ; $6e3b: $2a
  ld h, [hl]                                      ; $6e3c: $66
  ld l, a                                         ; $6e3d: $6f
  ld [$cda0], a                                   ; $6e3e: $ea $a0 $cd
  ld a, h                                         ; $6e41: $7c
  ld [$cda1], a                                   ; $6e42: $ea $a1 $cd
  ret                                             ; $6e45: $c9


Call_003_6e46:
  ld hl, $0009                                    ; $6e46: $21 $09 $00
  add hl, bc                                      ; $6e49: $09
  ld a, [hl+]                                     ; $6e4a: $2a
  ld h, [hl]                                      ; $6e4b: $66
  ld l, a                                         ; $6e4c: $6f
  push hl                                         ; $6e4d: $e5
  ld hl, $0006                                    ; $6e4e: $21 $06 $00
  add hl, bc                                      ; $6e51: $09
  ld e, [hl]                                      ; $6e52: $5e
  inc hl                                          ; $6e53: $23
  ld d, [hl]                                      ; $6e54: $56
  pop hl                                          ; $6e55: $e1
  jp Jump_003_727c                                ; $6e56: $c3 $7c $72


Call_003_6e59:
  ld hl, $002c                                    ; $6e59: $21 $2c $00
  add hl, bc                                      ; $6e5c: $09
  bit 4, [hl]                                     ; $6e5d: $cb $66
  jr nz, jr_003_6e66                              ; $6e5f: $20 $05

  ld a, [$caf3]                                   ; $6e61: $fa $f3 $ca
  or a                                            ; $6e64: $b7
  ret z                                           ; $6e65: $c8

jr_003_6e66:
  set 6, [hl]                                     ; $6e66: $cb $f6
  call Call_003_6eba                              ; $6e68: $cd $ba $6e
  xor a                                           ; $6e6b: $af
  ld hl, $000f                                    ; $6e6c: $21 $0f $00
  add hl, bc                                      ; $6e6f: $09
  ld [hl+], a                                     ; $6e70: $22
  ld [hl+], a                                     ; $6e71: $22
  ld [hl+], a                                     ; $6e72: $22
  ld [hl+], a                                     ; $6e73: $22
  ret                                             ; $6e74: $c9


Call_003_6e75:
  ld hl, $0006                                    ; $6e75: $21 $06 $00
  add hl, bc                                      ; $6e78: $09
  ld a, [hl+]                                     ; $6e79: $2a
  ld d, [hl]                                      ; $6e7a: $56
  ld e, a                                         ; $6e7b: $5f
  call Call_000_0092                              ; $6e7c: $cd $92 $00
  ld hl, $cdb2                                    ; $6e7f: $21 $b2 $cd
  ld a, [hl+]                                     ; $6e82: $2a
  ld h, [hl]                                      ; $6e83: $66
  ld l, a                                         ; $6e84: $6f
  add hl, de                                      ; $6e85: $19
  ld a, [$cd9e]                                   ; $6e86: $fa $9e $cd
  ld e, a                                         ; $6e89: $5f
  ld a, [$cd9f]                                   ; $6e8a: $fa $9f $cd
  ld d, a                                         ; $6e8d: $57
  add hl, de                                      ; $6e8e: $19
  ld a, l                                         ; $6e8f: $7d
  ld [$cd9e], a                                   ; $6e90: $ea $9e $cd
  ld a, h                                         ; $6e93: $7c
  ld [$cd9f], a                                   ; $6e94: $ea $9f $cd
  ld hl, $0009                                    ; $6e97: $21 $09 $00
  add hl, bc                                      ; $6e9a: $09
  ld a, [hl+]                                     ; $6e9b: $2a
  ld d, [hl]                                      ; $6e9c: $56
  ld e, a                                         ; $6e9d: $5f
  call Call_000_0092                              ; $6e9e: $cd $92 $00
  ld hl, $cdb5                                    ; $6ea1: $21 $b5 $cd
  ld a, [hl+]                                     ; $6ea4: $2a
  ld h, [hl]                                      ; $6ea5: $66
  ld l, a                                         ; $6ea6: $6f
  add hl, de                                      ; $6ea7: $19
  ld a, [$cda0]                                   ; $6ea8: $fa $a0 $cd
  ld e, a                                         ; $6eab: $5f
  ld a, [$cda1]                                   ; $6eac: $fa $a1 $cd
  ld d, a                                         ; $6eaf: $57
  add hl, de                                      ; $6eb0: $19
  ld a, l                                         ; $6eb1: $7d
  ld [$cda0], a                                   ; $6eb2: $ea $a0 $cd
  ld a, h                                         ; $6eb5: $7c
  ld [$cda1], a                                   ; $6eb6: $ea $a1 $cd
  ret                                             ; $6eb9: $c9


Call_003_6eba:
  call Call_003_6e75                              ; $6eba: $cd $75 $6e
  ld hl, $0005                                    ; $6ebd: $21 $05 $00
  add hl, bc                                      ; $6ec0: $09
  ld de, $cdb1                                    ; $6ec1: $11 $b1 $cd
  call Call_000_0263                              ; $6ec4: $cd $63 $02
  ld hl, $000f                                    ; $6ec7: $21 $0f $00
  add hl, bc                                      ; $6eca: $09
  ld a, [hl+]                                     ; $6ecb: $2a
  ld h, [hl]                                      ; $6ecc: $66
  ld l, a                                         ; $6ecd: $6f
  bit 7, h                                        ; $6ece: $cb $7c
  ld d, $ff                                       ; $6ed0: $16 $ff
  jr nz, jr_003_6ed9                              ; $6ed2: $20 $05

  inc d                                           ; $6ed4: $14
  or h                                            ; $6ed5: $b4
  jr z, jr_003_6ed9                               ; $6ed6: $28 $01

  inc d                                           ; $6ed8: $14

jr_003_6ed9:
  ld hl, $0011                                    ; $6ed9: $21 $11 $00
  add hl, bc                                      ; $6edc: $09
  ld a, [hl+]                                     ; $6edd: $2a
  ld h, [hl]                                      ; $6ede: $66
  ld l, a                                         ; $6edf: $6f
  bit 7, h                                        ; $6ee0: $cb $7c
  ld e, $ff                                       ; $6ee2: $1e $ff
  jr nz, jr_003_6eeb                              ; $6ee4: $20 $05

  inc e                                           ; $6ee6: $1c
  or h                                            ; $6ee7: $b4
  jr z, jr_003_6eeb                               ; $6ee8: $28 $01

  inc e                                           ; $6eea: $1c

jr_003_6eeb:
  ld hl, $ffb4                                    ; $6eeb: $21 $b4 $ff
  ld [hl], e                                      ; $6eee: $73
  inc hl                                          ; $6eef: $23
  ld [hl], d                                      ; $6ef0: $72
  push bc                                         ; $6ef1: $c5
  ld b, $03                                       ; $6ef2: $06 $03

jr_003_6ef4:
  call Call_003_6e2b                              ; $6ef4: $cd $2b $6e
  ld hl, $cd9e                                    ; $6ef7: $21 $9e $cd
  ld a, [hl+]                                     ; $6efa: $2a
  ld h, [hl]                                      ; $6efb: $66
  ld l, a                                         ; $6efc: $6f
  ldh a, [$ffb5]                                  ; $6efd: $f0 $b5
  call Call_000_3196                              ; $6eff: $cd $96 $31
  ld a, l                                         ; $6f02: $7d
  ld [$cd9e], a                                   ; $6f03: $ea $9e $cd
  ld a, h                                         ; $6f06: $7c
  ld [$cd9f], a                                   ; $6f07: $ea $9f $cd
  ld hl, $cda0                                    ; $6f0a: $21 $a0 $cd
  ld a, [hl+]                                     ; $6f0d: $2a
  ld h, [hl]                                      ; $6f0e: $66
  ld l, a                                         ; $6f0f: $6f
  ldh a, [$ffb4]                                  ; $6f10: $f0 $b4
  call Call_000_3196                              ; $6f12: $cd $96 $31
  ld a, l                                         ; $6f15: $7d
  ld [$cda0], a                                   ; $6f16: $ea $a0 $cd
  ld a, h                                         ; $6f19: $7c
  ld [$cda1], a                                   ; $6f1a: $ea $a1 $cd
  call Call_003_6cf2                              ; $6f1d: $cd $f2 $6c
  bit 2, a                                        ; $6f20: $cb $57
  jr nz, jr_003_6f2a                              ; $6f22: $20 $06

  call Call_003_6f2c                              ; $6f24: $cd $2c $6f
  dec b                                           ; $6f27: $05
  jr nz, jr_003_6ef4                              ; $6f28: $20 $ca

jr_003_6f2a:
  pop bc                                          ; $6f2a: $c1
  ret                                             ; $6f2b: $c9


Call_003_6f2c:
  push hl                                         ; $6f2c: $e5
  ld hl, $cdb2                                    ; $6f2d: $21 $b2 $cd
  ld a, [hl+]                                     ; $6f30: $2a
  ld h, [hl]                                      ; $6f31: $66
  ld l, a                                         ; $6f32: $6f
  ldh a, [$ffb5]                                  ; $6f33: $f0 $b5
  call Call_000_3196                              ; $6f35: $cd $96 $31
  ld a, l                                         ; $6f38: $7d
  ld [$cdb2], a                                   ; $6f39: $ea $b2 $cd
  ld a, h                                         ; $6f3c: $7c
  ld [$cdb3], a                                   ; $6f3d: $ea $b3 $cd
  ld hl, $cdb5                                    ; $6f40: $21 $b5 $cd
  ld a, [hl+]                                     ; $6f43: $2a
  ld h, [hl]                                      ; $6f44: $66
  ld l, a                                         ; $6f45: $6f
  ldh a, [$ffb4]                                  ; $6f46: $f0 $b4
  call Call_000_3196                              ; $6f48: $cd $96 $31
  ld a, l                                         ; $6f4b: $7d
  ld [$cdb5], a                                   ; $6f4c: $ea $b5 $cd
  ld a, h                                         ; $6f4f: $7c
  ld [$cdb6], a                                   ; $6f50: $ea $b6 $cd
  pop hl                                          ; $6f53: $e1
  ret                                             ; $6f54: $c9


Call_003_6f55:
  ld a, l                                         ; $6f55: $7d
  bit 2, a                                        ; $6f56: $cb $57
  jr nz, jr_003_6f5b                              ; $6f58: $20 $01

  ret                                             ; $6f5a: $c9


jr_003_6f5b:
  ld a, [$cd9d]                                   ; $6f5b: $fa $9d $cd
  or e                                            ; $6f5e: $b3
  ld [$cd9d], a                                   ; $6f5f: $ea $9d $cd
  ret                                             ; $6f62: $c9


Call_003_6f63:
  ldh a, [$ffa5]                                  ; $6f63: $f0 $a5
  call Call_003_6fc0                              ; $6f65: $cd $c0 $6f
  ld [$cadd], a                                   ; $6f68: $ea $dd $ca
  ld a, [$cadc]                                   ; $6f6b: $fa $dc $ca
  ldh [$ffb3], a                                  ; $6f6e: $e0 $b3
  ld hl, $cadd                                    ; $6f70: $21 $dd $ca
  cp [hl]                                         ; $6f73: $be
  jr nz, jr_003_6f7b                              ; $6f74: $20 $05

  xor a                                           ; $6f76: $af
  ld [$cade], a                                   ; $6f77: $ea $de $ca
  ret                                             ; $6f7a: $c9


jr_003_6f7b:
  ld e, $01                                       ; $6f7b: $1e $01
  ld d, $ff                                       ; $6f7d: $16 $ff
  ld hl, $cade                                    ; $6f7f: $21 $de $ca
  dec [hl]                                        ; $6f82: $35
  bit 7, [hl]                                     ; $6f83: $cb $7e
  ret z                                           ; $6f85: $c8

  ld hl, $cadd                                    ; $6f86: $21 $dd $ca
  ldh a, [$ffb3]                                  ; $6f89: $f0 $b3
  sub [hl]                                        ; $6f8b: $96
  and $07                                         ; $6f8c: $e6 $07
  cp $04                                          ; $6f8e: $fe $04
  ld a, d                                         ; $6f90: $7a
  jr c, jr_003_6f94                               ; $6f91: $38 $01

  ld a, e                                         ; $6f93: $7b

jr_003_6f94:
  ld hl, $ffb3                                    ; $6f94: $21 $b3 $ff
  add [hl]                                        ; $6f97: $86
  cp $07                                          ; $6f98: $fe $07
  jr c, jr_003_6fa4                               ; $6f9a: $38 $08

  cp $08                                          ; $6f9c: $fe $08
  ld a, $00                                       ; $6f9e: $3e $00
  jr z, jr_003_6fa4                               ; $6fa0: $28 $02

  ld a, $07                                       ; $6fa2: $3e $07

jr_003_6fa4:
  ld [$cadc], a                                   ; $6fa4: $ea $dc $ca
  ld hl, $c2e8                                    ; $6fa7: $21 $e8 $c2
  ld [hl], a                                      ; $6faa: $77
  ld a, $00                                       ; $6fab: $3e $00
  ld [$cade], a                                   ; $6fad: $ea $de $ca
  ret                                             ; $6fb0: $c9


Call_003_6fb1:
  ld a, [$cadc]                                   ; $6fb1: $fa $dc $ca
  ld hl, $6c65                                    ; $6fb4: $21 $65 $6c
  call Call_000_316b                              ; $6fb7: $cd $6b $31
  ld de, $c2de                                    ; $6fba: $11 $de $c2
  jp Jump_000_0269                                ; $6fbd: $c3 $69 $02


Call_003_6fc0:
  swap a                                          ; $6fc0: $cb $37
  and $0f                                         ; $6fc2: $e6 $0f
  ld hl, $6fca                                    ; $6fc4: $21 $ca $6f
  jp ResolveIndexedPointer8                                       ; $6fc7: $c3 $08 $00


  db $00, $02, $06

  nop                                             ; $6fcd: $00

  db $00, $01, $07

  nop                                             ; $6fd1: $00

  db $04, $03, $05

  nop                                             ; $6fd5: $00
  nop                                             ; $6fd6: $00
  nop                                             ; $6fd7: $00
  nop                                             ; $6fd8: $00
  nop                                             ; $6fd9: $00

  ld hl, $9800                                    ; $6fda: $21 $00 $98
  ld bc, $0400                                    ; $6fdd: $01 $00 $04
  ld a, $7f                                       ; $6fe0: $3e $7f
  call Call_000_1249                              ; $6fe2: $cd $49 $12
  ld hl, $9c00                                    ; $6fe5: $21 $00 $9c
  ld bc, $0400                                    ; $6fe8: $01 $00 $04
  ld a, $7f                                       ; $6feb: $3e $7f
  call Call_000_1249                              ; $6fed: $cd $49 $12
  call Call_003_7029                              ; $6ff0: $cd $29 $70
  ld a, $01                                       ; $6ff3: $3e $01
  ldh [rVBK], a                                   ; $6ff5: $e0 $4f
  ld hl, $9800                                    ; $6ff7: $21 $00 $98
  ld bc, $0400                                    ; $6ffa: $01 $00 $04
  ld a, $08                                       ; $6ffd: $3e $08
  call Call_000_1249                              ; $6fff: $cd $49 $12
  ld hl, $9c00                                    ; $7002: $21 $00 $9c
  ld bc, $0400                                    ; $7005: $01 $00 $04
  ld a, $08                                       ; $7008: $3e $08
  call Call_000_1249                              ; $700a: $cd $49 $12
  call Call_003_7029                              ; $700d: $cd $29 $70
  xor a                                           ; $7010: $af
  ldh [rVBK], a                                   ; $7011: $e0 $4f
  ldh a, [rSVBK]                                  ; $7013: $f0 $70
  push af                                         ; $7015: $f5
  ld a, $03                                       ; $7016: $3e $03
  ldh [rSVBK], a                                  ; $7018: $e0 $70
  ld hl, $d000                                    ; $701a: $21 $00 $d0
  ld bc, $0800                                    ; $701d: $01 $00 $08
  ld a, $7f                                       ; $7020: $3e $7f
  call Call_000_1249                              ; $7022: $cd $49 $12
  pop af                                          ; $7025: $f1
  ldh [rSVBK], a                                  ; $7026: $e0 $70
  ret                                             ; $7028: $c9


Call_003_7029:
  ld hl, $8000                                    ; $7029: $21 $00 $80
  ld bc, $17ff                                    ; $702c: $01 $ff $17
  jp Jump_000_1248                                ; $702f: $c3 $48 $12


  ldh a, [rSVBK]                                  ; $7032: $f0 $70
  push af                                         ; $7034: $f5
  ld a, $07                                       ; $7035: $3e $07
  ldh [rSVBK], a                                  ; $7037: $e0 $70
  ld hl, $d000                                    ; $7039: $21 $00 $d0
  ld bc, $0200                                    ; $703c: $01 $00 $02
  call Call_000_1248                              ; $703f: $cd $48 $12
  pop af                                          ; $7042: $f1
  ldh [rSVBK], a                                  ; $7043: $e0 $70
  ret                                             ; $7045: $c9


  xor a                                           ; $7046: $af
  ldh [$ffa5], a                                  ; $7047: $e0 $a5
  ldh [$ffa6], a                                  ; $7049: $e0 $a6
  ld [$c0a7], a                                   ; $704b: $ea $a7 $c0
  ld [$c0a6], a                                   ; $704e: $ea $a6 $c0
  ldh [$ffda], a                                  ; $7051: $e0 $da
  ld [$cd8f], a                                   ; $7053: $ea $8f $cd
  ld [$c2ad], a                                   ; $7056: $ea $ad $c2
  ld [$c2ae], a                                   ; $7059: $ea $ae $c2
  ld [$cd85], a                                   ; $705c: $ea $85 $cd
  ldh [$ffaa], a                                  ; $705f: $e0 $aa
  ld [$cafd], a                                   ; $7061: $ea $fd $ca
  ld [$cd86], a                                   ; $7064: $ea $86 $cd
  inc a                                           ; $7067: $3c
  ldh [$ffd9], a                                  ; $7068: $e0 $d9
  ldh [$ffa8], a                                  ; $706a: $e0 $a8
  ld [$cd99], a                                   ; $706c: $ea $99 $cd
  ld [$c2ae], a                                   ; $706f: $ea $ae $c2
  inc a                                           ; $7072: $3c
  ld [$cd2a], a                                   ; $7073: $ea $2a $cd
  ld a, $03                                       ; $7076: $3e $03
  ld [$c0ab], a                                   ; $7078: $ea $ab $c0
  ret                                             ; $707b: $c9


Call_003_707c:
  push de                                         ; $707c: $d5
  push hl                                         ; $707d: $e5
  ld hl, $0046                                    ; $707e: $21 $46 $00
  add hl, bc                                      ; $7081: $09
  ld a, e                                         ; $7082: $7b
  ld [hl+], a                                     ; $7083: $22
  ld [hl], d                                      ; $7084: $72
  inc hl                                          ; $7085: $23
  pop de                                          ; $7086: $d1
  ld a, e                                         ; $7087: $7b
  ld [hl+], a                                     ; $7088: $22
  ld [hl], d                                      ; $7089: $72
  ld l, e                                         ; $708a: $6b
  ld h, d                                         ; $708b: $62
  pop de                                          ; $708c: $d1
  push hl                                         ; $708d: $e5
  ld hl, $0006                                    ; $708e: $21 $06 $00
  add hl, bc                                      ; $7091: $09
  ld a, [hl+]                                     ; $7092: $2a
  ld h, [hl]                                      ; $7093: $66
  ld l, a                                         ; $7094: $6f
  call Call_000_007b                              ; $7095: $cd $7b $00
  add hl, de                                      ; $7098: $19
  pop de                                          ; $7099: $d1
  push hl                                         ; $709a: $e5
  ld hl, $0009                                    ; $709b: $21 $09 $00
  add hl, bc                                      ; $709e: $09
  ld a, [hl+]                                     ; $709f: $2a
  ld h, [hl]                                      ; $70a0: $66
  ld l, a                                         ; $70a1: $6f
  call Call_000_007b                              ; $70a2: $cd $7b $00
  add hl, de                                      ; $70a5: $19
  pop de                                          ; $70a6: $d1
  ret                                             ; $70a7: $c9


  call Call_003_707c                              ; $70a8: $cd $7c $70
  call Call_003_70b5                              ; $70ab: $cd $b5 $70
  ret                                             ; $70ae: $c9


  call Call_003_707c                              ; $70af: $cd $7c $70
  call Call_003_70cc                              ; $70b2: $cd $cc $70

Call_003_70b5:
  push hl                                         ; $70b5: $e5
  call Call_003_70f3                              ; $70b6: $cd $f3 $70
  ld hl, $000f                                    ; $70b9: $21 $0f $00
  add hl, bc                                      ; $70bc: $09
  ld [hl], e                                      ; $70bd: $73
  inc hl                                          ; $70be: $23
  ld [hl], d                                      ; $70bf: $72
  pop de                                          ; $70c0: $d1
  call Call_003_70f3                              ; $70c1: $cd $f3 $70
  ld hl, $0011                                    ; $70c4: $21 $11 $00
  add hl, bc                                      ; $70c7: $09
  ld [hl], e                                      ; $70c8: $73
  inc hl                                          ; $70c9: $23
  ld [hl], d                                      ; $70ca: $72
  ret                                             ; $70cb: $c9


Call_003_70cc:
  push de                                         ; $70cc: $d5
  push hl                                         ; $70cd: $e5
  call Call_000_008f                              ; $70ce: $cd $8f $00
  call Call_000_0078                              ; $70d1: $cd $78 $00
  call Call_000_0061                              ; $70d4: $cd $61 $00
  push hl                                         ; $70d7: $e5
  ld hl, $0044                                    ; $70d8: $21 $44 $00
  add hl, bc                                      ; $70db: $09
  ld a, [hl+]                                     ; $70dc: $2a
  ld d, [hl]                                      ; $70dd: $56
  ld e, a                                         ; $70de: $5f
  pop hl                                          ; $70df: $e1
  ld a, h                                         ; $70e0: $7c
  ld h, l                                         ; $70e1: $65
  ld l, $00                                       ; $70e2: $2e $00
  call Call_000_326f                              ; $70e4: $cd $6f $32
  ld e, l                                         ; $70e7: $5d
  ld d, h                                         ; $70e8: $54
  ld hl, $0044                                    ; $70e9: $21 $44 $00
  add hl, bc                                      ; $70ec: $09
  ld a, e                                         ; $70ed: $7b
  ld [hl+], a                                     ; $70ee: $22
  ld [hl], d                                      ; $70ef: $72
  pop hl                                          ; $70f0: $e1
  pop de                                          ; $70f1: $d1
  ret                                             ; $70f2: $c9


Call_003_70f3:
  ld a, d                                         ; $70f3: $7a
  rla                                             ; $70f4: $17
  push af                                         ; $70f5: $f5
  call c, Call_000_0092                           ; $70f6: $dc $92 $00
  ld hl, $0044                                    ; $70f9: $21 $44 $00
  add hl, bc                                      ; $70fc: $09
  ld a, [hl]                                      ; $70fd: $7e
  ld h, e                                         ; $70fe: $63
  ld l, $00                                       ; $70ff: $2e $00
  ld e, a                                         ; $7101: $5f
  ld a, d                                         ; $7102: $7a
  ld d, l                                         ; $7103: $55
  call Call_000_326f                              ; $7104: $cd $6f $32
  pop af                                          ; $7107: $f1
  call c, Call_000_007b                           ; $7108: $dc $7b $00
  ld e, l                                         ; $710b: $5d
  ld d, h                                         ; $710c: $54
  ret                                             ; $710d: $c9


Call_003_710e:
  ld hl, $ff91                                    ; $710e: $21 $91 $ff
  ld a, [hl+]                                     ; $7111: $2a
  ld h, [hl]                                      ; $7112: $66
  ld l, a                                         ; $7113: $6f
  push bc                                         ; $7114: $c5
  push hl                                         ; $7115: $e5
  ld de, $7504                                    ; $7116: $11 $04 $75
  ld hl, $000d                                    ; $7119: $21 $0d $00
  jr jr_003_712c                                  ; $711c: $18 $0e

Call_003_711e:
  ld hl, $ff8f                                    ; $711e: $21 $8f $ff
  ld a, [hl+]                                     ; $7121: $2a
  ld h, [hl]                                      ; $7122: $66
  ld l, a                                         ; $7123: $6f
  push bc                                         ; $7124: $c5
  push hl                                         ; $7125: $e5
  ld de, $7500                                    ; $7126: $11 $00 $75
  ld hl, $000b                                    ; $7129: $21 $0b $00

jr_003_712c:
  add hl, bc                                      ; $712c: $09
  ld c, [hl]                                      ; $712d: $4e
  inc hl                                          ; $712e: $23
  ld b, [hl]                                      ; $712f: $46
  push de                                         ; $7130: $d5
  ld d, h                                         ; $7131: $54
  ld e, l                                         ; $7132: $5d
  pop hl                                          ; $7133: $e1
  pop de                                          ; $7134: $d1
  push de                                         ; $7135: $d5
  ld a, e                                         ; $7136: $7b
  add [hl]                                        ; $7137: $86
  ld e, a                                         ; $7138: $5f
  inc hl                                          ; $7139: $23
  ld a, d                                         ; $713a: $7a
  adc [hl]                                        ; $713b: $8e
  ld d, a                                         ; $713c: $57
  xor a                                           ; $713d: $af
  ld [$cdc0], a                                   ; $713e: $ea $c0 $cd
  ld [$cdc1], a                                   ; $7141: $ea $c1 $cd
  bit 7, d                                        ; $7144: $cb $7a
  jr z, jr_003_715c                               ; $7146: $28 $14

  call Call_000_0092                              ; $7148: $cd $92 $00
  ld a, e                                         ; $714b: $7b
  ld [$cdc0], a                                   ; $714c: $ea $c0 $cd
  ld a, d                                         ; $714f: $7a
  ld [$cdc1], a                                   ; $7150: $ea $c1 $cd
  ld a, c                                         ; $7153: $79
  add e                                           ; $7154: $83
  ld c, a                                         ; $7155: $4f
  ld a, b                                         ; $7156: $78
  adc d                                           ; $7157: $8a
  ld b, a                                         ; $7158: $47
  ld de, $0000                                    ; $7159: $11 $00 $00

jr_003_715c:
  ld a, b                                         ; $715c: $78
  cp d                                            ; $715d: $ba
  jr z, jr_003_7165                               ; $715e: $28 $05

  jr nc, jr_003_716c                              ; $7160: $30 $0a

  pop de                                          ; $7162: $d1
  jr jr_003_7188                                  ; $7163: $18 $23

jr_003_7165:
  ld a, c                                         ; $7165: $79
  cp e                                            ; $7166: $bb
  jr nc, jr_003_716c                              ; $7167: $30 $03

  pop de                                          ; $7169: $d1
  jr jr_003_7188                                  ; $716a: $18 $1c

jr_003_716c:
  pop de                                          ; $716c: $d1
  inc hl                                          ; $716d: $23
  ld a, e                                         ; $716e: $7b
  add [hl]                                        ; $716f: $86
  ld e, a                                         ; $7170: $5f
  inc hl                                          ; $7171: $23
  ld a, d                                         ; $7172: $7a
  adc [hl]                                        ; $7173: $8e
  ld d, a                                         ; $7174: $57
  ld a, [$cdc0]                                   ; $7175: $fa $c0 $cd
  add e                                           ; $7178: $83
  ld e, a                                         ; $7179: $5f
  ld a, [$cdc1]                                   ; $717a: $fa $c1 $cd
  adc d                                           ; $717d: $8a
  ld d, a                                         ; $717e: $57
  ld a, b                                         ; $717f: $78
  cp d                                            ; $7180: $ba
  jr z, jr_003_718c                               ; $7181: $28 $09

jr_003_7183:
  jr nc, jr_003_7188                              ; $7183: $30 $03

jr_003_7185:
  pop bc                                          ; $7185: $c1
  xor a                                           ; $7186: $af
  ret                                             ; $7187: $c9


jr_003_7188:
  pop bc                                          ; $7188: $c1
  or $01                                          ; $7189: $f6 $01
  ret                                             ; $718b: $c9


jr_003_718c:
  ld a, c                                         ; $718c: $79
  cp e                                            ; $718d: $bb
  jr z, jr_003_7185                               ; $718e: $28 $f5

  jr jr_003_7183                                  ; $7190: $18 $f1

  call Call_003_71bd                              ; $7192: $cd $bd $71
  ld hl, $000d                                    ; $7195: $21 $0d $00
  add hl, bc                                      ; $7198: $09
  ld a, [$c2dc]                                   ; $7199: $fa $dc $c2
  sub [hl]                                        ; $719c: $96
  ld [$cc58], a                                   ; $719d: $ea $58 $cc
  inc hl                                          ; $71a0: $23
  ld a, [$c2dd]                                   ; $71a1: $fa $dd $c2
  sbc [hl]                                        ; $71a4: $9e
  ld [$cc59], a                                   ; $71a5: $ea $59 $cc
  ld d, $00                                       ; $71a8: $16 $00
  bit 7, a                                        ; $71aa: $cb $7f
  ld a, [$cc58]                                   ; $71ac: $fa $58 $cc
  jr z, jr_003_71b5                               ; $71af: $28 $04

  cpl                                             ; $71b1: $2f
  inc a                                           ; $71b2: $3c
  ld d, $20                                       ; $71b3: $16 $20

jr_003_71b5:
  ld hl, $cc5a                                    ; $71b5: $21 $5a $cc
  ld [hl], d                                      ; $71b8: $72
  ld [$cc5b], a                                   ; $71b9: $ea $5b $cc
  ret                                             ; $71bc: $c9


Call_003_71bd:
  ld hl, $000b                                    ; $71bd: $21 $0b $00
  add hl, bc                                      ; $71c0: $09
  ld a, [$c2da]                                   ; $71c1: $fa $da $c2
  sub [hl]                                        ; $71c4: $96
  ld [$cc54], a                                   ; $71c5: $ea $54 $cc
  inc hl                                          ; $71c8: $23
  ld a, [$c2db]                                   ; $71c9: $fa $db $c2
  sbc [hl]                                        ; $71cc: $9e
  ld [$cc55], a                                   ; $71cd: $ea $55 $cc
  ld d, $00                                       ; $71d0: $16 $00
  bit 7, a                                        ; $71d2: $cb $7f
  ld a, [$cc54]                                   ; $71d4: $fa $54 $cc
  jr z, jr_003_71dd                               ; $71d7: $28 $04

  cpl                                             ; $71d9: $2f
  inc a                                           ; $71da: $3c
  ld d, $20                                       ; $71db: $16 $20

jr_003_71dd:
  ld hl, $cc56                                    ; $71dd: $21 $56 $cc
  ld [hl], d                                      ; $71e0: $72
  ld [$cc57], a                                   ; $71e1: $ea $57 $cc
  ret                                             ; $71e4: $c9


Call_003_71e5:
  ld hl, $cdb1                                    ; $71e5: $21 $b1 $cd
  ld de, $c2d4                                    ; $71e8: $11 $d4 $c2
  ld a, [hl+]                                     ; $71eb: $2a
  ld [de], a                                      ; $71ec: $12
  inc de                                          ; $71ed: $13
  ld a, [hl+]                                     ; $71ee: $2a
  ld [de], a                                      ; $71ef: $12
  ld [$c2da], a                                   ; $71f0: $ea $da $c2
  ld [$cab3], a                                   ; $71f3: $ea $b3 $ca
  inc de                                          ; $71f6: $13
  ld a, [hl+]                                     ; $71f7: $2a
  ld [de], a                                      ; $71f8: $12
  ld [$c2db], a                                   ; $71f9: $ea $db $c2
  ld [$cab4], a                                   ; $71fc: $ea $b4 $ca
  ld de, $c2d7                                    ; $71ff: $11 $d7 $c2
  ld hl, $cdb4                                    ; $7202: $21 $b4 $cd
  call Call_000_026c                              ; $7205: $cd $6c $02
  ld a, [$cdb5]                                   ; $7208: $fa $b5 $cd
  ld [$c2dc], a                                   ; $720b: $ea $dc $c2
  ld [$cab5], a                                   ; $720e: $ea $b5 $ca
  ld a, [$cdb6]                                   ; $7211: $fa $b6 $cd
  ld [$c2dd], a                                   ; $7214: $ea $dd $c2
  ld [$cab6], a                                   ; $7217: $ea $b6 $ca
  ret                                             ; $721a: $c9


Call_003_721b:
  ld hl, $c2d4                                    ; $721b: $21 $d4 $c2
  ld de, $c2e2                                    ; $721e: $11 $e2 $c2
  jp Jump_000_0263                                ; $7221: $c3 $63 $02


Call_003_7224:
  push bc                                         ; $7224: $c5
  ldh a, [rSVBK]                                  ; $7225: $f0 $70
  push af                                         ; $7227: $f5
  ld a, $06                                       ; $7228: $3e $06
  ldh [rSVBK], a                                  ; $722a: $e0 $70
  call Call_000_33f3                              ; $722c: $cd $f3 $33

  db $1e, $23, $52

  ld a, b                                         ; $7232: $78
  ld l, a                                         ; $7233: $6f
  ld a, [$cd7c]                                   ; $7234: $fa $7c $cd
  ld h, a                                         ; $7237: $67
  call Call_000_009c                              ; $7238: $cd $9c $00
  ld a, c                                         ; $723b: $79
  rst $08                                         ; $723c: $cf
  ld de, $d620                                    ; $723d: $11 $20 $d6
  add hl, de                                      ; $7240: $19
  ld c, [hl]                                      ; $7241: $4e
  pop af                                          ; $7242: $f1
  ldh [rSVBK], a                                  ; $7243: $e0 $70
  ld a, c                                         ; $7245: $79
  pop bc                                          ; $7246: $c1
  ret                                             ; $7247: $c9


  push de                                         ; $7248: $d5
  push hl                                         ; $7249: $e5
  push bc                                         ; $724a: $c5
  ldh [$ffbd], a                                  ; $724b: $e0 $bd
  ldh a, [rSVBK]                                  ; $724d: $f0 $70
  push af                                         ; $724f: $f5
  ld a, $06                                       ; $7250: $3e $06
  ldh [rSVBK], a                                  ; $7252: $e0 $70
  ldh a, [$ffbd]                                  ; $7254: $f0 $bd
  push af                                         ; $7256: $f5
  call Call_000_33f3                              ; $7257: $cd $f3 $33
  ld e, $23                                       ; $725a: $1e $23
  ld d, d                                         ; $725c: $52
  ld a, b                                         ; $725d: $78
  ld l, a                                         ; $725e: $6f
  ld a, [$cd7c]                                   ; $725f: $fa $7c $cd
  ld h, a                                         ; $7262: $67
  call Call_000_009c                              ; $7263: $cd $9c $00
  ld a, c                                         ; $7266: $79
  rst $08                                         ; $7267: $cf
  ld de, $d620                                    ; $7268: $11 $20 $d6
  add hl, de                                      ; $726b: $19
  pop af                                          ; $726c: $f1
  ld [hl], a                                      ; $726d: $77
  pop af                                          ; $726e: $f1
  ldh [rSVBK], a                                  ; $726f: $e0 $70
  ld a, c                                         ; $7271: $79
  pop bc                                          ; $7272: $c1
  pop hl                                          ; $7273: $e1
  pop de                                          ; $7274: $d1
  ret                                             ; $7275: $c9


jr_003_7276:
  ld h, $00                                       ; $7276: $26 $00
  ld l, $02                                       ; $7278: $2e $02
  ld a, l                                         ; $727a: $7d
  ret                                             ; $727b: $c9


Call_003_727c:
Jump_003_727c:
  bit 7, d                                        ; $727c: $cb $7a
  jr nz, jr_003_7276                              ; $727e: $20 $f6

  bit 7, h                                        ; $7280: $cb $7c
  jr nz, jr_003_7276                              ; $7282: $20 $f2

  ldh a, [rSVBK]                                  ; $7284: $f0 $70
  push af                                         ; $7286: $f5
  ld a, $03                                       ; $7287: $3e $03
  ldh [rSVBK], a                                  ; $7289: $e0 $70
  push bc                                         ; $728b: $c5
  push de                                         ; $728c: $d5
  push de                                         ; $728d: $d5
  push hl                                         ; $728e: $e5
  call Call_003_7224                              ; $728f: $cd $24 $72
  ld l, a                                         ; $7292: $6f
  ld h, $00                                       ; $7293: $26 $00
  call Call_000_01f6                              ; $7295: $cd $f6 $01
  ld de, $da00                                    ; $7298: $11 $00 $da
  add hl, de                                      ; $729b: $19
  pop de                                          ; $729c: $d1
  ld a, e                                         ; $729d: $7b
  rra                                             ; $729e: $1f
  and $0c                                         ; $729f: $e6 $0c
  pop de                                          ; $72a1: $d1
  ld d, a                                         ; $72a2: $57
  ld a, e                                         ; $72a3: $7b
  srl a                                           ; $72a4: $cb $3f
  srl a                                           ; $72a6: $cb $3f
  srl a                                           ; $72a8: $cb $3f
  and $03                                         ; $72aa: $e6 $03
  or d                                            ; $72ac: $b2
  rst $08                                         ; $72ad: $cf
  ld c, [hl]                                      ; $72ae: $4e
  bit 3, c                                        ; $72af: $cb $59
  jr nz, jr_003_72bd                              ; $72b1: $20 $0a

  ld a, $03                                       ; $72b3: $3e $03
  and c                                           ; $72b5: $a1
  ld h, a                                         ; $72b6: $67
  ld a, c                                         ; $72b7: $79
  and $04                                         ; $72b8: $e6 $04
  ld l, a                                         ; $72ba: $6f
  jr jr_003_72c2                                  ; $72bb: $18 $05

jr_003_72bd:
  res 3, a                                        ; $72bd: $cb $9f
  ld h, $00                                       ; $72bf: $26 $00
  ld l, c                                         ; $72c1: $69

jr_003_72c2:
  pop de                                          ; $72c2: $d1
  pop bc                                          ; $72c3: $c1
  pop af                                          ; $72c4: $f1
  ldh [rSVBK], a                                  ; $72c5: $e0 $70
  ld a, l                                         ; $72c7: $7d
  ret                                             ; $72c8: $c9


  ld hl, $ff9b                                    ; $72c9: $21 $9b $ff
  ld e, [hl]                                      ; $72cc: $5e
  inc hl                                          ; $72cd: $23
  ld d, [hl]                                      ; $72ce: $56
  ld hl, $ffd2                                    ; $72cf: $21 $d2 $ff
  add hl, de                                      ; $72d2: $19
  ld a, l                                         ; $72d3: $7d
  ld [$cacf], a                                   ; $72d4: $ea $cf $ca
  ld a, h                                         ; $72d7: $7c
  ld [$cad0], a                                   ; $72d8: $ea $d0 $ca
  ld hl, $002e                                    ; $72db: $21 $2e $00
  add hl, de                                      ; $72de: $19
  ld a, l                                         ; $72df: $7d
  ld [$cad1], a                                   ; $72e0: $ea $d1 $ca
  ld a, h                                         ; $72e3: $7c
  ld [$cad2], a                                   ; $72e4: $ea $d2 $ca
  ld hl, $ff9d                                    ; $72e7: $21 $9d $ff
  ld e, [hl]                                      ; $72ea: $5e
  inc hl                                          ; $72eb: $23
  ld d, [hl]                                      ; $72ec: $56
  ld hl, $ffcc                                    ; $72ed: $21 $cc $ff
  add hl, de                                      ; $72f0: $19
  ld a, l                                         ; $72f1: $7d
  ld [$cad3], a                                   ; $72f2: $ea $d3 $ca
  ld a, h                                         ; $72f5: $7c
  ld [$cad4], a                                   ; $72f6: $ea $d4 $ca
  ld hl, $0034                                    ; $72f9: $21 $34 $00
  add hl, de                                      ; $72fc: $19
  ld a, l                                         ; $72fd: $7d
  ld [$cad5], a                                   ; $72fe: $ea $d5 $ca
  ld a, h                                         ; $7301: $7c
  ld [$cad6], a                                   ; $7302: $ea $d6 $ca
  ret                                             ; $7305: $c9


Call_003_7306:
  push bc                                         ; $7306: $c5
  ld hl, $0013                                    ; $7307: $21 $13 $00
  add hl, bc                                      ; $730a: $09
  ld de, $cdb1                                    ; $730b: $11 $b1 $cd
  call Call_000_0263                              ; $730e: $cd $63 $02
  ld hl, $000f                                    ; $7311: $21 $0f $00
  add hl, bc                                      ; $7314: $09
  ld bc, $0004                                    ; $7315: $01 $04 $00
  call Call_000_1248                              ; $7318: $cd $48 $12
  pop bc                                          ; $731b: $c1
  ret                                             ; $731c: $c9


Call_003_731d:
  ldh a, [$ffa6]                                  ; $731d: $f0 $a6
  and $01                                         ; $731f: $e6 $01
  jr z, jr_003_7350                               ; $7321: $28 $2d

  ld a, [$cd66]                                   ; $7323: $fa $66 $cd
  or a                                            ; $7326: $b7
  ret nz                                          ; $7327: $c0

  ld a, [$cb2d]                                   ; $7328: $fa $2d $cb
  cp $09                                          ; $732b: $fe $09
  jr z, jr_003_7350                               ; $732d: $28 $21

  cp $04                                          ; $732f: $fe $04
  jr z, jr_003_7350                               ; $7331: $28 $1d

  ld hl, $cc54                                    ; $7333: $21 $54 $cc
  ld e, [hl]                                      ; $7336: $5e
  inc hl                                          ; $7337: $23
  ld d, [hl]                                      ; $7338: $56
  call Call_000_008f                              ; $7339: $cd $8f $00
  ld hl, $cc58                                    ; $733c: $21 $58 $cc
  ld a, [hl+]                                     ; $733f: $2a
  ld h, [hl]                                      ; $7340: $66
  ld l, a                                         ; $7341: $6f
  call Call_000_0078                              ; $7342: $cd $78 $00
  call Call_000_0061                              ; $7345: $cd $61 $00
  ld de, $0018                                    ; $7348: $11 $18 $00
  rst $10                                         ; $734b: $d7
  jr c, jr_003_7350                               ; $734c: $38 $02

  scf                                             ; $734e: $37
  ret                                             ; $734f: $c9


jr_003_7350:
  or a                                            ; $7350: $b7
  ret                                             ; $7351: $c9


  call Call_003_731d                              ; $7352: $cd $1d $73
  ret nc                                          ; $7355: $d0

  ld hl, $004a                                    ; $7356: $21 $4a $00
  add hl, bc                                      ; $7359: $09
  ld a, [hl]                                      ; $735a: $7e
  or a                                            ; $735b: $b7
  jr nz, jr_003_736c                              ; $735c: $20 $0e

  call Call_003_7306                              ; $735e: $cd $06 $73
  xor a                                           ; $7361: $af
  ld e, a                                         ; $7362: $5f
  ld [$cb19], a                                   ; $7363: $ea $19 $cb
  call Call_000_3427                              ; $7366: $cd $27 $34

  db $05, $68, $5d

jr_003_736c:
  ld hl, $004a                                    ; $736c: $21 $4a $00
  add hl, bc                                      ; $736f: $09
  ld a, [hl]                                      ; $7370: $7e
  or a                                            ; $7371: $b7
  ret z                                           ; $7372: $c8

  ld hl, $004a                                    ; $7373: $21 $4a $00
  add hl, bc                                      ; $7376: $09
  ld a, [hl]                                      ; $7377: $7e
  ld e, a                                         ; $7378: $5f
  call Call_000_3427                              ; $7379: $cd $27 $34
  dec b                                           ; $737c: $05
  ld h, l                                         ; $737d: $65
  ld e, l                                         ; $737e: $5d

  ld hl, $002d                                    ; $737f: $21 $2d $00
  add hl, bc                                      ; $7382: $09
  bit 1, [hl]                                     ; $7383: $cb $4e
  ret nz                                          ; $7385: $c0

  ld hl, $002c                                    ; $7386: $21 $2c $00
  add hl, bc                                      ; $7389: $09
  bit 4, [hl]                                     ; $738a: $cb $66
  ret z                                           ; $738c: $c8

  call Call_000_33f3                              ; $738d: $cd $f3 $33

  db $01, $da, $52

  call Call_000_33f3                              ; $7393: $cd $f3 $33

  db $01, $9c, $47

  jr c, jr_003_73f7                               ; $7399: $38 $5c

  call Call_000_33f3                              ; $739b: $cd $f3 $33

  db $01, $5f, $53

  ret z                                           ; $73a1: $c8

  ld hl, $cdbd                                    ; $73a2: $21 $bd $cd
  ld [hl], c                                      ; $73a5: $71
  inc hl                                          ; $73a6: $23
  ld [hl], b                                      ; $73a7: $70
  call Call_000_2fc1                              ; $73a8: $cd $c1 $2f
  push af                                         ; $73ab: $f5
  call Call_000_33f3                              ; $73ac: $cd $f3 $33

  db $01, $41, $53

  cp $01                                          ; $73b2: $fe $01
  jr z, jr_003_73c9                               ; $73b4: $28 $13

  cp $02                                          ; $73b6: $fe $02
  jr z, jr_003_7429                               ; $73b8: $28 $6f

  cp $03                                          ; $73ba: $fe $03
  jp z, Jump_003_745c                             ; $73bc: $ca $5c $74

  pop af                                          ; $73bf: $f1
  call Call_000_33f3                              ; $73c0: $cd $f3 $33

  db $01, $20, $53

  jp Jump_000_0c3e                                ; $73c6: $c3 $3e $0c


jr_003_73c9:
  pop af                                          ; $73c9: $f1
  ldh [$ffbd], a                                  ; $73ca: $e0 $bd
  ldh a, [rSVBK]                                  ; $73cc: $f0 $70
  push af                                         ; $73ce: $f5
  ld a, $06                                       ; $73cf: $3e $06
  ldh [rSVBK], a                                  ; $73d1: $e0 $70
  ldh a, [$ffbd]                                  ; $73d3: $f0 $bd
  ld [$ddb8], a                                   ; $73d5: $ea $b8 $dd
  call Call_000_33f3                              ; $73d8: $cd $f3 $33

  db $01, $fc, $52

  ld [$ddc3], a                                   ; $73de: $ea $c3 $dd
  pop af                                          ; $73e1: $f1
  ldh [rSVBK], a                                  ; $73e2: $e0 $70
  ldh a, [$ffa6]                                  ; $73e4: $f0 $a6
  and $01                                         ; $73e6: $e6 $01
  jr nz, jr_003_73ee                              ; $73e8: $20 $04

  call Call_000_0cbf                              ; $73ea: $cd $bf $0c
  ret nz                                          ; $73ed: $c0

jr_003_73ee:
  ld e, $01                                       ; $73ee: $1e $01
  xor a                                           ; $73f0: $af
  call Call_000_3427                              ; $73f1: $cd $27 $34

  db $05, $68, $5d

jr_003_73f7:
  ld hl, $caef                                    ; $73f7: $21 $ef $ca
  ld a, [hl+]                                     ; $73fa: $2a
  add [hl]                                        ; $73fb: $86
  inc hl                                          ; $73fc: $23
  add [hl]                                        ; $73fd: $86
  inc hl                                          ; $73fe: $23
  add [hl]                                        ; $73ff: $86
  or a                                            ; $7400: $b7
  ret z                                           ; $7401: $c8

  ld hl, $caef                                    ; $7402: $21 $ef $ca
  ld e, [hl]                                      ; $7405: $5e
  inc hl                                          ; $7406: $23
  ld d, [hl]                                      ; $7407: $56
  ld hl, $0006                                    ; $7408: $21 $06 $00
  add hl, bc                                      ; $740b: $09
  ld a, [hl+]                                     ; $740c: $2a
  ld h, [hl]                                      ; $740d: $66
  ld l, a                                         ; $740e: $6f
  rst $10                                         ; $740f: $d7
  ret nz                                          ; $7410: $c0

  ld hl, $caf1                                    ; $7411: $21 $f1 $ca
  ld e, [hl]                                      ; $7414: $5e
  inc hl                                          ; $7415: $23
  ld d, [hl]                                      ; $7416: $56
  ld hl, $0009                                    ; $7417: $21 $09 $00
  add hl, bc                                      ; $741a: $09
  ld a, [hl+]                                     ; $741b: $2a
  ld h, [hl]                                      ; $741c: $66
  ld l, a                                         ; $741d: $6f
  rst $10                                         ; $741e: $d7
  ret nz                                          ; $741f: $c0

  ld hl, $caef                                    ; $7420: $21 $ef $ca
  xor a                                           ; $7423: $af
  ld [hl+], a                                     ; $7424: $22
  ld [hl+], a                                     ; $7425: $22
  ld [hl+], a                                     ; $7426: $22
  ld [hl], a                                      ; $7427: $77
  ret                                             ; $7428: $c9


jr_003_7429:
  call Call_000_33f3                              ; $7429: $cd $f3 $33
  ld bc, $5320                                    ; $742c: $01 $20 $53
  pop af                                          ; $742f: $f1
  ldh [$ffd7], a                                  ; $7430: $e0 $d7
  call Call_000_33f3                              ; $7432: $cd $f3 $33
  ld bc, $52fc                                    ; $7435: $01 $fc $52
  ld l, a                                         ; $7438: $6f
  ldh a, [$ffd6]                                  ; $7439: $f0 $d6
  cp l                                            ; $743b: $bd
  ret z                                           ; $743c: $c8

  ldh [$ffbd], a                                  ; $743d: $e0 $bd
  ldh a, [rSVBK]                                  ; $743f: $f0 $70
  push af                                         ; $7441: $f5
  ld a, $06                                       ; $7442: $3e $06
  ldh [rSVBK], a                                  ; $7444: $e0 $70
  ldh a, [$ffbd]                                  ; $7446: $f0 $bd
  ld [$ddc4], a                                   ; $7448: $ea $c4 $dd
  ld a, l                                         ; $744b: $7d
  ldh [$ffd8], a                                  ; $744c: $e0 $d8
  ld [$ddc5], a                                   ; $744e: $ea $c5 $dd
  pop af                                          ; $7451: $f1
  ldh [rSVBK], a                                  ; $7452: $e0 $70
  ld a, $33                                       ; $7454: $3e $33
  call Call_000_261e                              ; $7456: $cd $1e $26
  jp Jump_000_0dbb                                ; $7459: $c3 $bb $0d


Jump_003_745c:
  call Call_000_33f3                              ; $745c: $cd $f3 $33
  ld bc, $5320                                    ; $745f: $01 $20 $53
  pop af                                          ; $7462: $f1
  ldh [$ffd7], a                                  ; $7463: $e0 $d7
  call Call_000_33f3                              ; $7465: $cd $f3 $33
  ld bc, $52fc                                    ; $7468: $01 $fc $52
  ld l, a                                         ; $746b: $6f
  ldh a, [$ffd6]                                  ; $746c: $f0 $d6
  cp l                                            ; $746e: $bd
  ret z                                           ; $746f: $c8

  ldh [$ffbd], a                                  ; $7470: $e0 $bd
  ldh a, [rSVBK]                                  ; $7472: $f0 $70
  push af                                         ; $7474: $f5
  ld a, $06                                       ; $7475: $3e $06
  ldh [rSVBK], a                                  ; $7477: $e0 $70
  ldh a, [$ffbd]                                  ; $7479: $f0 $bd
  ld [$ddc4], a                                   ; $747b: $ea $c4 $dd
  ld a, l                                         ; $747e: $7d
  ldh [$ffd8], a                                  ; $747f: $e0 $d8
  ld [$ddc5], a                                   ; $7481: $ea $c5 $dd
  pop af                                          ; $7484: $f1
  ldh [rSVBK], a                                  ; $7485: $e0 $70
  ld a, $34                                       ; $7487: $3e $34
  call Call_000_261e                              ; $7489: $cd $1e $26
  jp Jump_000_0dbb                                ; $748c: $c3 $bb $0d


Call_003_748f:
  ld hl, $002d                                    ; $748f: $21 $2d $00
  add hl, bc                                      ; $7492: $09
  res 1, [hl]                                     ; $7493: $cb $8e
  ld hl, $002a                                    ; $7495: $21 $2a $00
  add hl, bc                                      ; $7498: $09
  bit 2, [hl]                                     ; $7499: $cb $56
  jr nz, jr_003_74af                              ; $749b: $20 $12

  ld hl, $002c                                    ; $749d: $21 $2c $00
  add hl, bc                                      ; $74a0: $09
  bit 2, [hl]                                     ; $74a1: $cb $56
  jr nz, jr_003_74af                              ; $74a3: $20 $0a

  call Call_003_711e                              ; $74a5: $cd $1e $71
  jr nz, jr_003_74b1                              ; $74a8: $20 $07

  call Call_003_710e                              ; $74aa: $cd $0e $71
  jr nz, jr_003_74b1                              ; $74ad: $20 $02

jr_003_74af:
  xor a                                           ; $74af: $af
  ret                                             ; $74b0: $c9


jr_003_74b1:
  ld hl, $002d                                    ; $74b1: $21 $2d $00
  add hl, bc                                      ; $74b4: $09
  set 1, [hl]                                     ; $74b5: $cb $ce
  ld hl, $002a                                    ; $74b7: $21 $2a $00
  add hl, bc                                      ; $74ba: $09
  bit 7, [hl]                                     ; $74bb: $cb $7e
  jr nz, jr_003_74af                              ; $74bd: $20 $f0

  ld a, $01                                       ; $74bf: $3e $01
  or a                                            ; $74c1: $b7
  ret                                             ; $74c2: $c9


  ld hl, $0013                                    ; $74c3: $21 $13 $00
  add hl, bc                                      ; $74c6: $09
  push de                                         ; $74c7: $d5
  ld d, h                                         ; $74c8: $54
  ld e, l                                         ; $74c9: $5d
  pop hl                                          ; $74ca: $e1
  ld hl, $0005                                    ; $74cb: $21 $05 $00
  add hl, bc                                      ; $74ce: $09
  call Call_000_0263                              ; $74cf: $cd $63 $02
  ld hl, $0005                                    ; $74d2: $21 $05 $00
  add hl, bc                                      ; $74d5: $09
  push de                                         ; $74d6: $d5
  ld d, h                                         ; $74d7: $54
  ld e, l                                         ; $74d8: $5d
  pop hl                                          ; $74d9: $e1
  ld hl, $cdb1                                    ; $74da: $21 $b1 $cd
  jp Jump_000_0263                                ; $74dd: $c3 $63 $02


  db $f0, $ff, $b0, $00, $90, $00, $b0, $00, $f0, $ff, $b0, $00, $f0, $ff, $00, $00
  db $f0, $ff, $00, $00, $f0, $ff, $b0, $00, $a0, $00, $b0, $00, $f0, $ff, $b0, $00
  db $f0, $ff, $b0, $00, $f0, $ff, $b0, $00

  ld hl, $c1da                                    ; $7508: $21 $da $c1
  bit 3, [hl]                                     ; $750b: $cb $5e
  jr nz, jr_003_752d                              ; $750d: $20 $1e

  bit 2, [hl]                                     ; $750f: $cb $56
  jr nz, jr_003_7537                              ; $7511: $20 $24

jr_003_7513:
  ld hl, $c1da                                    ; $7513: $21 $da $c1
  bit 0, [hl]                                     ; $7516: $cb $46
  jr nz, jr_003_7525                              ; $7518: $20 $0b

  bit 1, [hl]                                     ; $751a: $cb $4e
  ret z                                           ; $751c: $c8

  res 1, [hl]                                     ; $751d: $cb $8e
  ld de, $74e0                                    ; $751f: $11 $e0 $74
  jp Jump_003_75b7                                ; $7522: $c3 $b7 $75


jr_003_7525:
  res 0, [hl]                                     ; $7525: $cb $86
  ld de, $74e8                                    ; $7527: $11 $e8 $74
  jp Jump_003_75b7                                ; $752a: $c3 $b7 $75


jr_003_752d:
  res 3, [hl]                                     ; $752d: $cb $9e
  ld de, $74f8                                    ; $752f: $11 $f8 $74
  call Call_003_75b7                              ; $7532: $cd $b7 $75
  jr jr_003_7513                                  ; $7535: $18 $dc

jr_003_7537:
  res 2, [hl]                                     ; $7537: $cb $96
  ld de, $74f0                                    ; $7539: $11 $f0 $74
  call Call_003_75b7                              ; $753c: $cd $b7 $75
  jr jr_003_7513                                  ; $753f: $18 $d2

Call_003_7541:
  ldh a, [rSVBK]                                  ; $7541: $f0 $70
  push af                                         ; $7543: $f5
  ld a, $06                                       ; $7544: $3e $06
  ldh [rSVBK], a                                  ; $7546: $e0 $70
  ld hl, $d7f0                                    ; $7548: $21 $f0 $d7
  xor a                                           ; $754b: $af
  ld [$c1de], a                                   ; $754c: $ea $de $c1
  pop af                                          ; $754f: $f1
  ldh [rSVBK], a                                  ; $7550: $e0 $70
  ret                                             ; $7552: $c9


  ld hl, $d7f0                                    ; $7553: $21 $f0 $d7
  jp Jump_000_3153                                ; $7556: $c3 $53 $31


  ldh [$ff99], a                                  ; $7559: $e0 $99
  call Call_003_7568                              ; $755b: $cd $68 $75
  ld a, d                                         ; $755e: $7a
  call Call_000_04e7                              ; $755f: $cd $e7 $04
  ld a, $ff                                       ; $7562: $3e $ff
  ld [$c1de], a                                   ; $7564: $ea $de $c1
  ret                                             ; $7567: $c9


Call_003_7568:
  push bc                                         ; $7568: $c5
  push de                                         ; $7569: $d5
  push hl                                         ; $756a: $e5
  ldh a, [rSVBK]                                  ; $756b: $f0 $70
  push af                                         ; $756d: $f5
  ld a, $06                                       ; $756e: $3e $06
  ldh [rSVBK], a                                  ; $7570: $e0 $70
  ld hl, $d7f0                                    ; $7572: $21 $f0 $d7
  ld bc, $00ff                                    ; $7575: $01 $ff $00

jr_003_7578:
  ld de, $0008                                    ; $7578: $11 $08 $00

jr_003_757b:
  ld a, c                                         ; $757b: $79
  cp [hl]                                         ; $757c: $be
  jr nz, jr_003_75ab                              ; $757d: $20 $2c

  dec de                                          ; $757f: $1b
  inc hl                                          ; $7580: $23
  ld a, e                                         ; $7581: $7b
  or d                                            ; $7582: $b2
  jr nz, jr_003_757b                              ; $7583: $20 $f6

  ld de, $fff8                                    ; $7585: $11 $f8 $ff
  add hl, de                                      ; $7588: $19
  ld e, l                                         ; $7589: $5d
  ld d, h                                         ; $758a: $54
  ld hl, $ff99                                    ; $758b: $21 $99 $ff
  call Call_000_025d                              ; $758e: $cd $5d $02
  ld a, b                                         ; $7591: $78
  ld [$c1de], a                                   ; $7592: $ea $de $c1
  push de                                         ; $7595: $d5
  call Call_000_05c5                              ; $7596: $cd $c5 $05
  pop de                                          ; $7599: $d1
  ld l, e                                         ; $759a: $6b
  ld h, d                                         ; $759b: $62
  ld a, $ff                                       ; $759c: $3e $ff
  ld bc, $0008                                    ; $759e: $01 $08 $00
  call Call_000_1249                              ; $75a1: $cd $49 $12
  pop af                                          ; $75a4: $f1
  ldh [rSVBK], a                                  ; $75a5: $e0 $70
  pop hl                                          ; $75a7: $e1
  pop de                                          ; $75a8: $d1
  pop bc                                          ; $75a9: $c1
  ret                                             ; $75aa: $c9


jr_003_75ab:
  add hl, de                                      ; $75ab: $19
  inc b                                           ; $75ac: $04
  jr jr_003_7578                                  ; $75ad: $18 $c9

Call_003_75af:
  ld a, [de]                                      ; $75af: $1a
  ld l, a                                         ; $75b0: $6f
  inc de                                          ; $75b1: $13
  ld a, [de]                                      ; $75b2: $1a
  ld h, a                                         ; $75b3: $67
  inc de                                          ; $75b4: $13
  add hl, bc                                      ; $75b5: $09
  ret                                             ; $75b6: $c9


Call_003_75b7:
Jump_003_75b7:
  ld hl, $ff8f                                    ; $75b7: $21 $8f $ff
  ld c, [hl]                                      ; $75ba: $4e
  inc hl                                          ; $75bb: $23
  ld b, [hl]                                      ; $75bc: $46
  call Call_003_75af                              ; $75bd: $cd $af $75
  bit 7, h                                        ; $75c0: $cb $7c
  jr z, jr_003_75c7                               ; $75c2: $28 $03

  ld hl, $0000                                    ; $75c4: $21 $00 $00

jr_003_75c7:
  ld a, l                                         ; $75c7: $7d
  ld [$cac7], a                                   ; $75c8: $ea $c7 $ca
  ld a, h                                         ; $75cb: $7c
  ld [$cac8], a                                   ; $75cc: $ea $c8 $ca
  call Call_003_75af                              ; $75cf: $cd $af $75
  ld a, l                                         ; $75d2: $7d
  ld [$cac9], a                                   ; $75d3: $ea $c9 $ca
  ld a, h                                         ; $75d6: $7c
  ld [$caca], a                                   ; $75d7: $ea $ca $ca
  ld hl, $ff91                                    ; $75da: $21 $91 $ff
  ld c, [hl]                                      ; $75dd: $4e
  inc hl                                          ; $75de: $23
  ld b, [hl]                                      ; $75df: $46
  call Call_003_75af                              ; $75e0: $cd $af $75
  bit 7, h                                        ; $75e3: $cb $7c
  jr z, jr_003_75ea                               ; $75e5: $28 $03

  ld hl, $0000                                    ; $75e7: $21 $00 $00

jr_003_75ea:
  ld a, l                                         ; $75ea: $7d
  ld [$cacb], a                                   ; $75eb: $ea $cb $ca
  ld a, h                                         ; $75ee: $7c
  ld [$cacc], a                                   ; $75ef: $ea $cc $ca
  call Call_003_75af                              ; $75f2: $cd $af $75
  ld a, l                                         ; $75f5: $7d
  ld [$cacd], a                                   ; $75f6: $ea $cd $ca
  ld a, h                                         ; $75f9: $7c
  ld [$cace], a                                   ; $75fa: $ea $ce $ca
  ld hl, $cd8b                                    ; $75fd: $21 $8b $cd
  ld e, [hl]                                      ; $7600: $5e
  inc hl                                          ; $7601: $23
  ld d, [hl]                                      ; $7602: $56
  dec de                                          ; $7603: $1b
  ld hl, $cac7                                    ; $7604: $21 $c7 $ca
  ld a, [hl+]                                     ; $7607: $2a
  ld h, [hl]                                      ; $7608: $66
  ld l, a                                         ; $7609: $6f
  call Call_000_32b6                              ; $760a: $cd $b6 $32
  ld a, l                                         ; $760d: $7d
  ld [$cac7], a                                   ; $760e: $ea $c7 $ca
  ld a, h                                         ; $7611: $7c
  ld [$cac8], a                                   ; $7612: $ea $c8 $ca
  ld hl, $cd8b                                    ; $7615: $21 $8b $cd
  ld e, [hl]                                      ; $7618: $5e
  inc hl                                          ; $7619: $23
  ld d, [hl]                                      ; $761a: $56
  ld hl, $cac9                                    ; $761b: $21 $c9 $ca
  ld a, [hl+]                                     ; $761e: $2a
  ld h, [hl]                                      ; $761f: $66
  ld l, a                                         ; $7620: $6f
  call Call_000_32b6                              ; $7621: $cd $b6 $32
  ld a, l                                         ; $7624: $7d
  ld [$cac9], a                                   ; $7625: $ea $c9 $ca
  ld a, h                                         ; $7628: $7c
  ld [$caca], a                                   ; $7629: $ea $ca $ca
  ld hl, $cacb                                    ; $762c: $21 $cb $ca
  ld a, [hl+]                                     ; $762f: $2a
  ld h, [hl]                                      ; $7630: $66
  ld l, a                                         ; $7631: $6f
  ld a, [$cd8d]                                   ; $7632: $fa $8d $cd
  ld e, a                                         ; $7635: $5f
  ld a, [$cd8e]                                   ; $7636: $fa $8e $cd
  ld d, a                                         ; $7639: $57
  dec de                                          ; $763a: $1b
  call Call_000_32b6                              ; $763b: $cd $b6 $32
  ld a, l                                         ; $763e: $7d
  ld [$cacb], a                                   ; $763f: $ea $cb $ca
  ld a, h                                         ; $7642: $7c
  ld [$cacc], a                                   ; $7643: $ea $cc $ca
  ld hl, $cd8d                                    ; $7646: $21 $8d $cd
  ld e, [hl]                                      ; $7649: $5e
  inc hl                                          ; $764a: $23
  ld d, [hl]                                      ; $764b: $56
  ld hl, $cacd                                    ; $764c: $21 $cd $ca
  ld a, [hl+]                                     ; $764f: $2a
  ld h, [hl]                                      ; $7650: $66
  ld l, a                                         ; $7651: $6f
  call Call_000_32b6                              ; $7652: $cd $b6 $32
  ld a, l                                         ; $7655: $7d
  ld [$cacd], a                                   ; $7656: $ea $cd $ca
  ld a, h                                         ; $7659: $7c
  ld [$cace], a                                   ; $765a: $ea $ce $ca
  call Call_003_7541                              ; $765d: $cd $41 $75
  ldh a, [rSVBK]                                  ; $7660: $f0 $70
  push af                                         ; $7662: $f5
  ld a, $06                                       ; $7663: $3e $06
  ldh [rSVBK], a                                  ; $7665: $e0 $70

Jump_003_7667:
  push hl                                         ; $7667: $e5
  ld a, [$c1de]                                   ; $7668: $fa $de $c1
  ld de, $c1e3                                    ; $766b: $11 $e3 $c1
  add e                                           ; $766e: $83
  ld e, a                                         ; $766f: $5f
  jr nc, jr_003_7673                              ; $7670: $30 $01

  inc d                                           ; $7672: $14

jr_003_7673:
  ld a, [de]                                      ; $7673: $1a
  cp $00                                          ; $7674: $fe $00
  jp nz, Jump_003_76db                            ; $7676: $c2 $db $76

  ld de, $ff99                                    ; $7679: $11 $99 $ff
  call Call_000_025d                              ; $767c: $cd $5d $02
  ldh a, [$ff99]                                  ; $767f: $f0 $99
  cp $c7                                          ; $7681: $fe $c7
  jr nc, jr_003_769d                              ; $7683: $30 $18

  inc a                                           ; $7685: $3c
  jr z, jr_003_769d                               ; $7686: $28 $15

  ldh a, [$ff9b]                                  ; $7688: $f0 $9b
  ld e, a                                         ; $768a: $5f
  ldh a, [$ff9c]                                  ; $768b: $f0 $9c
  ld d, a                                         ; $768d: $57
  ld hl, $cac9                                    ; $768e: $21 $c9 $ca
  ld a, [hl+]                                     ; $7691: $2a
  ld h, [hl]                                      ; $7692: $66
  ld l, a                                         ; $7693: $6f
  call Call_000_312d                              ; $7694: $cd $2d $31
  jr z, jr_003_76a7                               ; $7697: $28 $0e

  jr c, jr_003_76a7                               ; $7699: $38 $0c

  jr jr_003_76db                                  ; $769b: $18 $3e

jr_003_769d:
  pop hl                                          ; $769d: $e1
  pop af                                          ; $769e: $f1
  ldh [rSVBK], a                                  ; $769f: $e0 $70
  ld hl, $c1de                                    ; $76a1: $21 $de $c1
  ld [hl], $ff                                    ; $76a4: $36 $ff
  ret                                             ; $76a6: $c9


jr_003_76a7:
  ld hl, $cac7                                    ; $76a7: $21 $c7 $ca
  ld a, [hl+]                                     ; $76aa: $2a
  ld h, [hl]                                      ; $76ab: $66
  ld l, a                                         ; $76ac: $6f
  call Call_000_312d                              ; $76ad: $cd $2d $31
  jr c, jr_003_76db                               ; $76b0: $38 $29

  ld hl, $ff9d                                    ; $76b2: $21 $9d $ff
  ld e, [hl]                                      ; $76b5: $5e
  inc hl                                          ; $76b6: $23
  ld d, [hl]                                      ; $76b7: $56
  ld hl, $cacb                                    ; $76b8: $21 $cb $ca
  ld a, [hl+]                                     ; $76bb: $2a
  ld h, [hl]                                      ; $76bc: $66
  ld l, a                                         ; $76bd: $6f
  call Call_000_312d                              ; $76be: $cd $2d $31
  jr c, jr_003_76db                               ; $76c1: $38 $18

  ld hl, $cacd                                    ; $76c3: $21 $cd $ca
  ld a, [hl+]                                     ; $76c6: $2a
  ld h, [hl]                                      ; $76c7: $66
  ld l, a                                         ; $76c8: $6f
  call Call_000_312d                              ; $76c9: $cd $2d $31
  jr z, jr_003_76d0                               ; $76cc: $28 $02

  jr nc, jr_003_76db                              ; $76ce: $30 $0b

jr_003_76d0:
  call Call_000_04e7                              ; $76d0: $cd $e7 $04
  jr nc, jr_003_76db                              ; $76d3: $30 $06

  ld a, [$c1de]                                   ; $76d5: $fa $de $c1
  call Call_000_05c5                              ; $76d8: $cd $c5 $05

Jump_003_76db:
jr_003_76db:
  ld hl, $c1de                                    ; $76db: $21 $de $c1
  inc [hl]                                        ; $76de: $34
  pop hl                                          ; $76df: $e1
  ld bc, $0008                                    ; $76e0: $01 $08 $00
  add hl, bc                                      ; $76e3: $09
  jp Jump_003_7667                                ; $76e4: $c3 $67 $76


  ld a, b                                         ; $76e7: $78
  or a                                            ; $76e8: $b7
  jr z, jr_003_770f                               ; $76e9: $28 $24

  push bc                                         ; $76eb: $c5

jr_003_76ec:
  ld c, $10                                       ; $76ec: $0e $10

jr_003_76ee:
  ld a, [$c1d8]                                   ; $76ee: $fa $d8 $c1
  ldh [rSVBK], a                                  ; $76f1: $e0 $70
  push de                                         ; $76f3: $d5
  ld de, $ffe2                                    ; $76f4: $11 $e2 $ff
  call Call_000_0245                              ; $76f7: $cd $45 $02
  ld a, [$c1d9]                                   ; $76fa: $fa $d9 $c1
  ldh [rSVBK], a                                  ; $76fd: $e0 $70
  pop de                                          ; $76ff: $d1
  push hl                                         ; $7700: $e5
  ld hl, $ffe2                                    ; $7701: $21 $e2 $ff
  call Call_000_0245                              ; $7704: $cd $45 $02
  pop hl                                          ; $7707: $e1
  dec c                                           ; $7708: $0d
  jr nz, jr_003_76ee                              ; $7709: $20 $e3

  dec b                                           ; $770b: $05
  jr nz, jr_003_76ec                              ; $770c: $20 $de

  pop bc                                          ; $770e: $c1

jr_003_770f:
  ld a, c                                         ; $770f: $79
  and $f0                                         ; $7710: $e6 $f0
  jr z, jr_003_7734                               ; $7712: $28 $20

  swap a                                          ; $7714: $cb $37
  ld b, a                                         ; $7716: $47

jr_003_7717:
  ld a, [$c1d8]                                   ; $7717: $fa $d8 $c1
  ldh [rSVBK], a                                  ; $771a: $e0 $70
  push de                                         ; $771c: $d5
  ld de, $ffe2                                    ; $771d: $11 $e2 $ff
  call Call_000_0245                              ; $7720: $cd $45 $02
  ld a, [$c1d9]                                   ; $7723: $fa $d9 $c1
  ldh [rSVBK], a                                  ; $7726: $e0 $70
  pop de                                          ; $7728: $d1
  push hl                                         ; $7729: $e5
  ld hl, $ffe2                                    ; $772a: $21 $e2 $ff
  call Call_000_0245                              ; $772d: $cd $45 $02
  pop hl                                          ; $7730: $e1
  dec b                                           ; $7731: $05
  jr nz, jr_003_7717                              ; $7732: $20 $e3

jr_003_7734:
  ld a, c                                         ; $7734: $79
  and $0f                                         ; $7735: $e6 $0f
  jr z, jr_003_774c                               ; $7737: $28 $13

  ld c, a                                         ; $7739: $4f

jr_003_773a:
  ld a, [$c1d8]                                   ; $773a: $fa $d8 $c1
  ldh [rSVBK], a                                  ; $773d: $e0 $70
  ld a, [hl+]                                     ; $773f: $2a
  ld b, a                                         ; $7740: $47
  ld a, [$c1d9]                                   ; $7741: $fa $d9 $c1
  ldh [rSVBK], a                                  ; $7744: $e0 $70
  ld a, b                                         ; $7746: $78
  ld [de], a                                      ; $7747: $12
  inc de                                          ; $7748: $13
  dec c                                           ; $7749: $0d
  jr nz, jr_003_773a                              ; $774a: $20 $ee

jr_003_774c:
  xor a                                           ; $774c: $af
  ld b, a                                         ; $774d: $47
  ld c, a                                         ; $774e: $4f
  ld a, [$c1d8]                                   ; $774f: $fa $d8 $c1
  ldh [rSVBK], a                                  ; $7752: $e0 $70
  ret                                             ; $7754: $c9


  nop                                             ; $7755: $00
  nop                                             ; $7756: $00
  dec b                                           ; $7757: $05
  nop                                             ; $7758: $00
  rlca                                            ; $7759: $07
  nop                                             ; $775a: $00
  ld [$0a00], sp                                  ; $775b: $08 $00 $0a
  nop                                             ; $775e: $00
  dec bc                                          ; $775f: $0b
  nop                                             ; $7760: $00
  inc c                                           ; $7761: $0c
  nop                                             ; $7762: $00
  ld c, $00                                       ; $7763: $0e $00
  stop                                            ; $7765: $10 $00
  ld de, $1200                                    ; $7767: $11 $00 $12
  nop                                             ; $776a: $00
  inc de                                          ; $776b: $13
  nop                                             ; $776c: $00
  inc d                                           ; $776d: $14
  nop                                             ; $776e: $00
  dec d                                           ; $776f: $15
  nop                                             ; $7770: $00
  ld d, $00                                       ; $7771: $16 $00
  rla                                             ; $7773: $17
  nop                                             ; $7774: $00
  jr jr_003_7777                                  ; $7775: $18 $00

jr_003_7777:
  add hl, de                                      ; $7777: $19
  nop                                             ; $7778: $00
  ld a, [de]                                      ; $7779: $1a
  nop                                             ; $777a: $00
  dec de                                          ; $777b: $1b
  nop                                             ; $777c: $00
  dec de                                          ; $777d: $1b
  nop                                             ; $777e: $00
  inc e                                           ; $777f: $1c
  nop                                             ; $7780: $00
  inc e                                           ; $7781: $1c
  nop                                             ; $7782: $00
  dec e                                           ; $7783: $1d
  nop                                             ; $7784: $00
  dec e                                           ; $7785: $1d
  nop                                             ; $7786: $00
  ld e, $00                                       ; $7787: $1e $00
  ld e, $00                                       ; $7789: $1e $00
  ld e, $00                                       ; $778b: $1e $00
  rra                                             ; $778d: $1f
  nop                                             ; $778e: $00
  rra                                             ; $778f: $1f
  nop                                             ; $7790: $00
  rra                                             ; $7791: $1f
  nop                                             ; $7792: $00
  rra                                             ; $7793: $1f
  nop                                             ; $7794: $00
  nop                                             ; $7795: $00
  nop                                             ; $7796: $00
  and b                                           ; $7797: $a0
  nop                                             ; $7798: $00
  ldh [rP1], a                                    ; $7799: $e0 $00
  nop                                             ; $779b: $00
  ld bc, $0140                                    ; $779c: $01 $40 $01
  ld h, b                                         ; $779f: $60
  ld bc, $0180                                    ; $77a0: $01 $80 $01
  ret nz                                          ; $77a3: $c0

  ld bc, $0200                                    ; $77a4: $01 $00 $02
  jr nz, jr_003_77ab                              ; $77a7: $20 $02

  ld b, b                                         ; $77a9: $40
  ld [bc], a                                      ; $77aa: $02

jr_003_77ab:
  ld h, b                                         ; $77ab: $60
  ld [bc], a                                      ; $77ac: $02
  add b                                           ; $77ad: $80
  ld [bc], a                                      ; $77ae: $02
  and b                                           ; $77af: $a0
  ld [bc], a                                      ; $77b0: $02
  ret nz                                          ; $77b1: $c0

  ld [bc], a                                      ; $77b2: $02
  ldh [rSC], a                                    ; $77b3: $e0 $02
  nop                                             ; $77b5: $00
  inc bc                                          ; $77b6: $03
  jr nz, jr_003_77bc                              ; $77b7: $20 $03

  ld b, b                                         ; $77b9: $40
  inc bc                                          ; $77ba: $03
  ld h, b                                         ; $77bb: $60

jr_003_77bc:
  inc bc                                          ; $77bc: $03
  ld h, b                                         ; $77bd: $60
  inc bc                                          ; $77be: $03
  add b                                           ; $77bf: $80
  inc bc                                          ; $77c0: $03
  add b                                           ; $77c1: $80
  inc bc                                          ; $77c2: $03
  and b                                           ; $77c3: $a0
  inc bc                                          ; $77c4: $03
  and b                                           ; $77c5: $a0
  inc bc                                          ; $77c6: $03
  ret nz                                          ; $77c7: $c0

  inc bc                                          ; $77c8: $03
  ret nz                                          ; $77c9: $c0

  inc bc                                          ; $77ca: $03
  ret nz                                          ; $77cb: $c0

  inc bc                                          ; $77cc: $03
  ldh [$ff03], a                                  ; $77cd: $e0 $03
  ldh [$ff03], a                                  ; $77cf: $e0 $03
  ldh [$ff03], a                                  ; $77d1: $e0 $03
  ldh [$ff03], a                                  ; $77d3: $e0 $03
  nop                                             ; $77d5: $00
  nop                                             ; $77d6: $00
  inc d                                           ; $77d7: $14
  nop                                             ; $77d8: $00
  inc e                                           ; $77d9: $1c
  nop                                             ; $77da: $00
  jr nz, jr_003_77dd                              ; $77db: $20 $00

jr_003_77dd:
  jr z, jr_003_77df                               ; $77dd: $28 $00

jr_003_77df:
  inc l                                           ; $77df: $2c
  nop                                             ; $77e0: $00
  jr nc, jr_003_77e3                              ; $77e1: $30 $00

jr_003_77e3:
  jr c, jr_003_77e5                               ; $77e3: $38 $00

jr_003_77e5:
  ld b, b                                         ; $77e5: $40
  nop                                             ; $77e6: $00
  ld b, h                                         ; $77e7: $44
  nop                                             ; $77e8: $00
  ld c, b                                         ; $77e9: $48
  nop                                             ; $77ea: $00
  ld c, h                                         ; $77eb: $4c
  nop                                             ; $77ec: $00
  ld d, b                                         ; $77ed: $50
  nop                                             ; $77ee: $00
  ld d, h                                         ; $77ef: $54
  nop                                             ; $77f0: $00
  ld e, b                                         ; $77f1: $58
  nop                                             ; $77f2: $00
  ld e, h                                         ; $77f3: $5c
  nop                                             ; $77f4: $00
  ld h, b                                         ; $77f5: $60
  nop                                             ; $77f6: $00
  ld h, h                                         ; $77f7: $64
  nop                                             ; $77f8: $00
  ld l, b                                         ; $77f9: $68
  nop                                             ; $77fa: $00
  ld l, h                                         ; $77fb: $6c
  nop                                             ; $77fc: $00
  ld l, h                                         ; $77fd: $6c
  nop                                             ; $77fe: $00
  ld [hl], b                                      ; $77ff: $70

Call_003_7800:
  nop                                             ; $7800: $00
  ld [hl], b                                      ; $7801: $70
  nop                                             ; $7802: $00
  ld [hl], h                                      ; $7803: $74
  nop                                             ; $7804: $00
  ld [hl], h                                      ; $7805: $74
  nop                                             ; $7806: $00
  ld a, b                                         ; $7807: $78
  nop                                             ; $7808: $00
  ld a, b                                         ; $7809: $78
  nop                                             ; $780a: $00
  ld a, b                                         ; $780b: $78
  nop                                             ; $780c: $00
  ld a, h                                         ; $780d: $7c
  nop                                             ; $780e: $00
  ld a, h                                         ; $780f: $7c
  nop                                             ; $7810: $00
  ld a, h                                         ; $7811: $7c
  nop                                             ; $7812: $00
  ld a, h                                         ; $7813: $7c
  nop                                             ; $7814: $00
  push bc                                         ; $7815: $c5
  push de                                         ; $7816: $d5
  ld d, h                                         ; $7817: $54
  ld e, l                                         ; $7818: $5d
  call Call_003_7a63                              ; $7819: $cd $63 $7a
  ld b, h                                         ; $781c: $44
  ld c, l                                         ; $781d: $4d
  ld hl, $7755                                    ; $781e: $21 $55 $77
  ld e, a                                         ; $7821: $5f
  ld d, $00                                       ; $7822: $16 $00
  add hl, de                                      ; $7824: $19
  add hl, de                                      ; $7825: $19
  ld a, [hl+]                                     ; $7826: $2a
  ld d, [hl]                                      ; $7827: $56
  ld e, a                                         ; $7828: $5f
  ld hl, $7795                                    ; $7829: $21 $95 $77
  ld a, c                                         ; $782c: $79
  push de                                         ; $782d: $d5
  ld e, a                                         ; $782e: $5f
  ld d, $00                                       ; $782f: $16 $00
  add hl, de                                      ; $7831: $19
  add hl, de                                      ; $7832: $19
  ld a, [hl+]                                     ; $7833: $2a
  ld h, [hl]                                      ; $7834: $66
  ld l, a                                         ; $7835: $6f
  pop de                                          ; $7836: $d1
  add hl, de                                      ; $7837: $19
  ld d, h                                         ; $7838: $54
  ld e, l                                         ; $7839: $5d
  ld hl, $77d5                                    ; $783a: $21 $d5 $77
  ld a, b                                         ; $783d: $78
  push de                                         ; $783e: $d5
  ld e, a                                         ; $783f: $5f
  ld d, $00                                       ; $7840: $16 $00
  add hl, de                                      ; $7842: $19
  add hl, de                                      ; $7843: $19
  ld a, [hl+]                                     ; $7844: $2a
  ld h, [hl]                                      ; $7845: $66
  ld l, a                                         ; $7846: $6f
  pop de                                          ; $7847: $d1
  ld h, l                                         ; $7848: $65
  ld l, $00                                       ; $7849: $2e $00
  add hl, de                                      ; $784b: $19
  pop de                                          ; $784c: $d1
  pop bc                                          ; $784d: $c1
  ret                                             ; $784e: $c9


  ldh a, [rSVBK]                                  ; $784f: $f0 $70
  push af                                         ; $7851: $f5
  ld a, $02                                       ; $7852: $3e $02
  ldh [rSVBK], a                                  ; $7854: $e0 $70
  ld bc, $0020                                    ; $7856: $01 $20 $00
  ld hl, $cecd                                    ; $7859: $21 $cd $ce
  call Call_000_1248                              ; $785c: $cd $48 $12
  pop af                                          ; $785f: $f1
  ldh [rSVBK], a                                  ; $7860: $e0 $70
  ret                                             ; $7862: $c9


Call_003_7863:
  call Call_003_78f2                              ; $7863: $cd $f2 $78
  call Call_003_7886                              ; $7866: $cd $86 $78
  ld hl, $004d                                    ; $7869: $21 $4d $00
  add hl, bc                                      ; $786c: $09
  ld [hl], e                                      ; $786d: $73
  inc hl                                          ; $786e: $23
  ld [hl], d                                      ; $786f: $72
  jp Jump_000_087a                                ; $7870: $c3 $7a $08


  call Call_003_7902                              ; $7873: $cd $02 $79
  call Call_003_7886                              ; $7876: $cd $86 $78
  ld hl, $004f                                    ; $7879: $21 $4f $00
  add hl, bc                                      ; $787c: $09
  ld [hl], e                                      ; $787d: $73
  inc hl                                          ; $787e: $23
  ld [hl], d                                      ; $787f: $72
  ld hl, $004c                                    ; $7880: $21 $4c $00
  add hl, bc                                      ; $7883: $09
  ld [hl], a                                      ; $7884: $77
  ret                                             ; $7885: $c9


Call_003_7886:
  ldh a, [rSVBK]                                  ; $7886: $f0 $70
  push af                                         ; $7888: $f5
  ld a, $02                                       ; $7889: $3e $02
  ldh [rSVBK], a                                  ; $788b: $e0 $70
  push bc                                         ; $788d: $c5
  push hl                                         ; $788e: $e5
  ld b, $08                                       ; $788f: $06 $08
  ld hl, $cecd                                    ; $7891: $21 $cd $ce

jr_003_7894:
  ld a, [hl+]                                     ; $7894: $2a
  cp e                                            ; $7895: $bb
  jr nz, jr_003_78a6                              ; $7896: $20 $0e

  ld a, [hl]                                      ; $7898: $7e
  cp d                                            ; $7899: $ba
  jr nz, jr_003_78a6                              ; $789a: $20 $0a

  inc hl                                          ; $789c: $23
  inc [hl]                                        ; $789d: $34
  inc hl                                          ; $789e: $23
  set 0, [hl]                                     ; $789f: $cb $c6
  ld a, $08                                       ; $78a1: $3e $08
  sub b                                           ; $78a3: $90
  jr jr_003_78e3                                  ; $78a4: $18 $3d

jr_003_78a6:
  inc hl                                          ; $78a6: $23
  inc hl                                          ; $78a7: $23
  inc hl                                          ; $78a8: $23
  dec b                                           ; $78a9: $05
  jr nz, jr_003_7894                              ; $78aa: $20 $e8

  ld b, $08                                       ; $78ac: $06 $08
  ld hl, $ced0                                    ; $78ae: $21 $d0 $ce

jr_003_78b1:
  bit 0, [hl]                                     ; $78b1: $cb $46
  inc hl                                          ; $78b3: $23
  jr z, jr_003_78c2                               ; $78b4: $28 $0c

  inc hl                                          ; $78b6: $23
  inc hl                                          ; $78b7: $23
  inc hl                                          ; $78b8: $23
  dec b                                           ; $78b9: $05
  jr nz, jr_003_78b1                              ; $78ba: $20 $f5

  call Call_000_0a6c                              ; $78bc: $cd $6c $0a
  xor a                                           ; $78bf: $af
  jr jr_003_78e3                                  ; $78c0: $18 $21

jr_003_78c2:
  ld a, $08                                       ; $78c2: $3e $08
  sub b                                           ; $78c4: $90
  push af                                         ; $78c5: $f5
  ld hl, $cecd                                    ; $78c6: $21 $cd $ce
  call Call_000_316b                              ; $78c9: $cd $6b $31
  pop af                                          ; $78cc: $f1
  ld [hl], e                                      ; $78cd: $73
  inc hl                                          ; $78ce: $23
  ld [hl], d                                      ; $78cf: $72
  inc hl                                          ; $78d0: $23
  inc [hl]                                        ; $78d1: $34
  inc hl                                          ; $78d2: $23
  res 1, [hl]                                     ; $78d3: $cb $8e
  set 0, [hl]                                     ; $78d5: $cb $c6
  ld c, a                                         ; $78d7: $4f
  push hl                                         ; $78d8: $e5
  ld hl, $01d8                                    ; $78d9: $21 $d8 $01
  rst $10                                         ; $78dc: $d7
  pop hl                                          ; $78dd: $e1
  ld a, c                                         ; $78de: $79
  jr nz, jr_003_78e3                              ; $78df: $20 $02

  set 2, [hl]                                     ; $78e1: $cb $d6

jr_003_78e3:
  pop hl                                          ; $78e3: $e1
  pop bc                                          ; $78e4: $c1
  ldh [$ffbd], a                                  ; $78e5: $e0 $bd
  pop af                                          ; $78e7: $f1
  ldh [rSVBK], a                                  ; $78e8: $e0 $70
  ldh a, [$ffbd]                                  ; $78ea: $f0 $bd
  ret                                             ; $78ec: $c9


  call Call_003_78f2                              ; $78ed: $cd $f2 $78
  jr jr_003_7902                                  ; $78f0: $18 $10

Call_003_78f2:
  push de                                         ; $78f2: $d5
  ld a, $ff                                       ; $78f3: $3e $ff
  ld hl, $004d                                    ; $78f5: $21 $4d $00
  add hl, bc                                      ; $78f8: $09
  ld e, [hl]                                      ; $78f9: $5e
  ld [hl+], a                                     ; $78fa: $22
  ld d, [hl]                                      ; $78fb: $56
  ld [hl+], a                                     ; $78fc: $22
  call Call_003_7912                              ; $78fd: $cd $12 $79
  pop de                                          ; $7900: $d1
  ret                                             ; $7901: $c9


Call_003_7902:
jr_003_7902:
  push de                                         ; $7902: $d5
  ld a, $ff                                       ; $7903: $3e $ff
  ld hl, $004f                                    ; $7905: $21 $4f $00
  add hl, bc                                      ; $7908: $09
  ld e, [hl]                                      ; $7909: $5e
  ld [hl+], a                                     ; $790a: $22
  ld d, [hl]                                      ; $790b: $56
  ld [hl+], a                                     ; $790c: $22
  call Call_003_7912                              ; $790d: $cd $12 $79
  pop de                                          ; $7910: $d1
  ret                                             ; $7911: $c9


Call_003_7912:
  inc de                                          ; $7912: $13
  ld a, e                                         ; $7913: $7b
  or d                                            ; $7914: $b2
  dec de                                          ; $7915: $1b
  ret z                                           ; $7916: $c8

  ldh a, [rSVBK]                                  ; $7917: $f0 $70
  push af                                         ; $7919: $f5
  ld a, $02                                       ; $791a: $3e $02
  ldh [rSVBK], a                                  ; $791c: $e0 $70
  push bc                                         ; $791e: $c5
  push hl                                         ; $791f: $e5
  ld b, $08                                       ; $7920: $06 $08
  ld hl, $cecd                                    ; $7922: $21 $cd $ce

jr_003_7925:
  ld a, [hl+]                                     ; $7925: $2a
  cp e                                            ; $7926: $bb
  jr nz, jr_003_792d                              ; $7927: $20 $04

  ld a, [hl]                                      ; $7929: $7e
  cp d                                            ; $792a: $ba
  jr z, jr_003_7938                               ; $792b: $28 $0b

jr_003_792d:
  inc hl                                          ; $792d: $23
  inc hl                                          ; $792e: $23
  inc hl                                          ; $792f: $23
  dec b                                           ; $7930: $05
  jr nz, jr_003_7925                              ; $7931: $20 $f2

  call Call_000_0a6c                              ; $7933: $cd $6c $0a
  jr jr_003_7946                                  ; $7936: $18 $0e

jr_003_7938:
  inc hl                                          ; $7938: $23
  ld a, [hl]                                      ; $7939: $7e
  or a                                            ; $793a: $b7
  call z, Call_000_0a6c                           ; $793b: $cc $6c $0a
  jr z, jr_003_7946                               ; $793e: $28 $06

  dec [hl]                                        ; $7940: $35
  jr nz, jr_003_7946                              ; $7941: $20 $03

  inc hl                                          ; $7943: $23
  res 0, [hl]                                     ; $7944: $cb $86

jr_003_7946:
  pop hl                                          ; $7946: $e1
  pop bc                                          ; $7947: $c1
  pop af                                          ; $7948: $f1
  ldh [rSVBK], a                                  ; $7949: $e0 $70
  ret                                             ; $794b: $c9


  ldh a, [rSVBK]                                  ; $794c: $f0 $70
  push af                                         ; $794e: $f5
  ld a, $02                                       ; $794f: $3e $02
  ldh [rSVBK], a                                  ; $7951: $e0 $70
  ld bc, $0000                                    ; $7953: $01 $00 $00
  ld a, $20                                       ; $7956: $3e $20
  jr jr_003_7966                                  ; $7958: $18 $0c

  ldh a, [rSVBK]                                  ; $795a: $f0 $70
  push af                                         ; $795c: $f5
  ld a, $02                                       ; $795d: $3e $02
  ldh [rSVBK], a                                  ; $795f: $e0 $70
  ld bc, $0000                                    ; $7961: $01 $00 $00
  ld a, $40                                       ; $7964: $3e $40

jr_003_7966:
  push af                                         ; $7966: $f5
  ld hl, $d000                                    ; $7967: $21 $00 $d0
  add hl, bc                                      ; $796a: $09
  add hl, bc                                      ; $796b: $09
  ld a, [hl+]                                     ; $796c: $2a
  ld d, [hl]                                      ; $796d: $56
  ld e, a                                         ; $796e: $5f
  res 7, d                                        ; $796f: $cb $ba
  call Call_003_7a63                              ; $7971: $cd $63 $7a
  ld e, l                                         ; $7974: $5d
  ld d, h                                         ; $7975: $54
  ld hl, $d100                                    ; $7976: $21 $00 $d1
  add hl, bc                                      ; $7979: $09
  add hl, bc                                      ; $797a: $09
  add hl, bc                                      ; $797b: $09
  ld [hl+], a                                     ; $797c: $22
  ld a, e                                         ; $797d: $7b
  ld [hl+], a                                     ; $797e: $22
  ld [hl], d                                      ; $797f: $72
  ld hl, $d080                                    ; $7980: $21 $80 $d0
  add hl, bc                                      ; $7983: $09
  add hl, bc                                      ; $7984: $09
  ld a, [hl+]                                     ; $7985: $2a
  ld d, [hl]                                      ; $7986: $56
  ld e, a                                         ; $7987: $5f
  res 7, d                                        ; $7988: $cb $ba
  call Call_003_7a63                              ; $798a: $cd $63 $7a
  ld e, l                                         ; $798d: $5d
  ld d, h                                         ; $798e: $54
  push af                                         ; $798f: $f5
  ld hl, $d1c0                                    ; $7990: $21 $c0 $d1
  add hl, bc                                      ; $7993: $09
  add hl, bc                                      ; $7994: $09
  add hl, bc                                      ; $7995: $09
  add a                                           ; $7996: $87
  add a                                           ; $7997: $87
  add a                                           ; $7998: $87
  ld [hl+], a                                     ; $7999: $22
  ld a, e                                         ; $799a: $7b
  add a                                           ; $799b: $87
  add a                                           ; $799c: $87
  add a                                           ; $799d: $87
  ld [hl+], a                                     ; $799e: $22
  ld a, d                                         ; $799f: $7a
  add a                                           ; $79a0: $87
  add a                                           ; $79a1: $87
  add a                                           ; $79a2: $87
  ld [hl], a                                      ; $79a3: $77
  ld hl, $d102                                    ; $79a4: $21 $02 $d1
  add hl, bc                                      ; $79a7: $09
  add hl, bc                                      ; $79a8: $09
  add hl, bc                                      ; $79a9: $09
  ld a, [hl]                                      ; $79aa: $7e
  sub d                                           ; $79ab: $92
  ld [hl-], a                                     ; $79ac: $32
  ld a, [hl]                                      ; $79ad: $7e
  sub e                                           ; $79ae: $93
  ld [hl-], a                                     ; $79af: $32
  pop de                                          ; $79b0: $d1
  ld a, [hl]                                      ; $79b1: $7e
  sub d                                           ; $79b2: $92
  ld [hl], a                                      ; $79b3: $77
  inc bc                                          ; $79b4: $03
  pop af                                          ; $79b5: $f1
  dec a                                           ; $79b6: $3d
  jr nz, jr_003_7966                              ; $79b7: $20 $ad

  pop af                                          ; $79b9: $f1
  ldh [rSVBK], a                                  ; $79ba: $e0 $70
  ret                                             ; $79bc: $c9


  push bc                                         ; $79bd: $c5
  ld c, a                                         ; $79be: $4f
  ldh a, [rSVBK]                                  ; $79bf: $f0 $70
  push af                                         ; $79c1: $f5
  ld a, $02                                       ; $79c2: $3e $02
  ldh [rSVBK], a                                  ; $79c4: $e0 $70
  xor a                                           ; $79c6: $af
  ldh [$fffa], a                                  ; $79c7: $e0 $fa
  ld b, $60                                       ; $79c9: $06 $60
  ld hl, $d100                                    ; $79cb: $21 $00 $d1
  ld de, $d1c0                                    ; $79ce: $11 $c0 $d1
  ld a, c                                         ; $79d1: $79
  or a                                            ; $79d2: $b7
  jr nz, jr_003_79d7                              ; $79d3: $20 $02

  sla b                                           ; $79d5: $cb $20

jr_003_79d7:
  ld a, [de]                                      ; $79d7: $1a
  add [hl]                                        ; $79d8: $86
  ld [de], a                                      ; $79d9: $12
  inc de                                          ; $79da: $13
  inc hl                                          ; $79db: $23
  dec b                                           ; $79dc: $05
  jr nz, jr_003_79d7                              ; $79dd: $20 $f8

  pop af                                          ; $79df: $f1
  ldh [rSVBK], a                                  ; $79e0: $e0 $70
  ld a, c                                         ; $79e2: $79
  pop bc                                          ; $79e3: $c1
  ldh [$ffbd], a                                  ; $79e4: $e0 $bd
  ldh a, [rSVBK]                                  ; $79e6: $f0 $70
  push af                                         ; $79e8: $f5
  ld a, $02                                       ; $79e9: $3e $02
  ldh [rSVBK], a                                  ; $79eb: $e0 $70
  ldh a, [$ffbd]                                  ; $79ed: $f0 $bd
  push bc                                         ; $79ef: $c5
  ld de, $d1c0                                    ; $79f0: $11 $c0 $d1
  ld bc, $d080                                    ; $79f3: $01 $80 $d0
  or a                                            ; $79f6: $b7
  ld a, $20                                       ; $79f7: $3e $20
  jr nz, jr_003_79fc                              ; $79f9: $20 $01

  add a                                           ; $79fb: $87

jr_003_79fc:
  push af                                         ; $79fc: $f5
  ld a, [de]                                      ; $79fd: $1a
  srl a                                           ; $79fe: $cb $3f
  srl a                                           ; $7a00: $cb $3f
  srl a                                           ; $7a02: $cb $3f
  push af                                         ; $7a04: $f5
  inc de                                          ; $7a05: $13
  ld a, [de]                                      ; $7a06: $1a
  srl a                                           ; $7a07: $cb $3f
  srl a                                           ; $7a09: $cb $3f
  srl a                                           ; $7a0b: $cb $3f
  ld l, a                                         ; $7a0d: $6f
  inc de                                          ; $7a0e: $13
  ld a, [de]                                      ; $7a0f: $1a
  srl a                                           ; $7a10: $cb $3f
  srl a                                           ; $7a12: $cb $3f
  srl a                                           ; $7a14: $cb $3f
  ld h, a                                         ; $7a16: $67
  inc de                                          ; $7a17: $13
  pop af                                          ; $7a18: $f1
  push de                                         ; $7a19: $d5
  call Call_003_7a77                              ; $7a1a: $cd $77 $7a
  ld a, e                                         ; $7a1d: $7b
  ld [bc], a                                      ; $7a1e: $02
  inc bc                                          ; $7a1f: $03
  ld a, d                                         ; $7a20: $7a
  ld [bc], a                                      ; $7a21: $02
  inc bc                                          ; $7a22: $03
  pop de                                          ; $7a23: $d1
  pop af                                          ; $7a24: $f1
  dec a                                           ; $7a25: $3d
  jr nz, jr_003_79fc                              ; $7a26: $20 $d4

  call Call_000_28b5                              ; $7a28: $cd $b5 $28
  pop bc                                          ; $7a2b: $c1
  pop af                                          ; $7a2c: $f1
  ldh [rSVBK], a                                  ; $7a2d: $e0 $70
  ret                                             ; $7a2f: $c9


  ldh a, [rSVBK]                                  ; $7a30: $f0 $70
  push af                                         ; $7a32: $f5
  ld a, $02                                       ; $7a33: $3e $02
  ldh [rSVBK], a                                  ; $7a35: $e0 $70
  ld a, $80                                       ; $7a37: $3e $80
  ldh [rBCPS], a                                  ; $7a39: $e0 $68
  ldh [rOCPS], a                                  ; $7a3b: $e0 $6a
  ld hl, $ff69                                    ; $7a3d: $21 $69 $ff
  call $db00                                      ; $7a40: $cd $00 $db
  ld hl, $ff6b                                    ; $7a43: $21 $6b $ff
  call $db81                                      ; $7a46: $cd $81 $db
  pop af                                          ; $7a49: $f1
  ldh [rSVBK], a                                  ; $7a4a: $e0 $70
  ret                                             ; $7a4c: $c9


Call_003_7a4d:
  ldh a, [rSVBK]                                  ; $7a4d: $f0 $70
  push af                                         ; $7a4f: $f5
  ld a, $02                                       ; $7a50: $3e $02
  ldh [rSVBK], a                                  ; $7a52: $e0 $70
  ld b, $40                                       ; $7a54: $06 $40
  ld a, $36                                       ; $7a56: $3e $36

jr_003_7a58:
  ld [hl+], a                                     ; $7a58: $22
  inc hl                                          ; $7a59: $23
  dec b                                           ; $7a5a: $05
  jr nz, jr_003_7a58                              ; $7a5b: $20 $fb

  ld [hl], $c9                                    ; $7a5d: $36 $c9
  pop af                                          ; $7a5f: $f1
  ldh [rSVBK], a                                  ; $7a60: $e0 $70
  ret                                             ; $7a62: $c9


Call_003_7a63:
  ld a, e                                         ; $7a63: $7b
  srl d                                           ; $7a64: $cb $3a
  rr e                                            ; $7a66: $cb $1b
  srl d                                           ; $7a68: $cb $3a
  rr e                                            ; $7a6a: $cb $1b
  ld h, d                                         ; $7a6c: $62
  srl e                                           ; $7a6d: $cb $3b
  srl e                                           ; $7a6f: $cb $3b
  srl e                                           ; $7a71: $cb $3b
  ld l, e                                         ; $7a73: $6b
  and $1f                                         ; $7a74: $e6 $1f
  ret                                             ; $7a76: $c9


Call_003_7a77:
  swap a                                          ; $7a77: $cb $37
  rrca                                            ; $7a79: $0f
  ld e, a                                         ; $7a7a: $5f
  srl l                                           ; $7a7b: $cb $3d
  rr e                                            ; $7a7d: $cb $1b
  srl l                                           ; $7a7f: $cb $3d
  rr e                                            ; $7a81: $cb $1b
  srl l                                           ; $7a83: $cb $3d
  rr e                                            ; $7a85: $cb $1b
  ld a, h                                         ; $7a87: $7c
  add a                                           ; $7a88: $87
  add a                                           ; $7a89: $87
  add l                                           ; $7a8a: $85
  ld d, a                                         ; $7a8b: $57
  ret                                             ; $7a8c: $c9


  ldh [$ffbd], a                                  ; $7a8d: $e0 $bd
  ldh a, [rSVBK]                                  ; $7a8f: $f0 $70
  push af                                         ; $7a91: $f5
  ld a, $02                                       ; $7a92: $3e $02
  ldh [rSVBK], a                                  ; $7a94: $e0 $70
  ldh a, [$ffbd]                                  ; $7a96: $f0 $bd
  ld a, [$ceef]                                   ; $7a98: $fa $ef $ce
  or a                                            ; $7a9b: $b7
  jr z, jr_003_7b19                               ; $7a9c: $28 $7b

  ld a, [$ceee]                                   ; $7a9e: $fa $ee $ce
  dec a                                           ; $7aa1: $3d
  ld [$ceee], a                                   ; $7aa2: $ea $ee $ce
  or a                                            ; $7aa5: $b7
  jr nz, jr_003_7b19                              ; $7aa6: $20 $71

  ld a, [$ceed]                                   ; $7aa8: $fa $ed $ce
  ld [$ceee], a                                   ; $7aab: $ea $ee $ce
  ld a, [$ceef]                                   ; $7aae: $fa $ef $ce
  and $01                                         ; $7ab1: $e6 $01
  jr z, jr_003_7abb                               ; $7ab3: $28 $06

  ld bc, $0000                                    ; $7ab5: $01 $00 $00
  call nz, Call_003_7b21                          ; $7ab8: $c4 $21 $7b

jr_003_7abb:
  ld a, [$ceef]                                   ; $7abb: $fa $ef $ce
  and $02                                         ; $7abe: $e6 $02
  jr z, jr_003_7ac8                               ; $7ac0: $28 $06

  ld bc, $0008                                    ; $7ac2: $01 $08 $00
  call nz, Call_003_7b21                          ; $7ac5: $c4 $21 $7b

jr_003_7ac8:
  ld a, [$ceef]                                   ; $7ac8: $fa $ef $ce
  and $04                                         ; $7acb: $e6 $04
  jr z, jr_003_7ad5                               ; $7acd: $28 $06

  ld bc, $0010                                    ; $7acf: $01 $10 $00
  call nz, Call_003_7b21                          ; $7ad2: $c4 $21 $7b

jr_003_7ad5:
  ld a, [$ceef]                                   ; $7ad5: $fa $ef $ce
  and $08                                         ; $7ad8: $e6 $08
  jr z, jr_003_7ae2                               ; $7ada: $28 $06

  ld bc, $0018                                    ; $7adc: $01 $18 $00
  call nz, Call_003_7b21                          ; $7adf: $c4 $21 $7b

jr_003_7ae2:
  ld a, [$ceef]                                   ; $7ae2: $fa $ef $ce
  and $10                                         ; $7ae5: $e6 $10
  jr z, jr_003_7aef                               ; $7ae7: $28 $06

  ld bc, $0020                                    ; $7ae9: $01 $20 $00
  call nz, Call_003_7b21                          ; $7aec: $c4 $21 $7b

jr_003_7aef:
  ld a, [$ceef]                                   ; $7aef: $fa $ef $ce
  and $20                                         ; $7af2: $e6 $20
  jr z, jr_003_7afc                               ; $7af4: $28 $06

  ld bc, $0028                                    ; $7af6: $01 $28 $00
  call nz, Call_003_7b21                          ; $7af9: $c4 $21 $7b

jr_003_7afc:
  ld a, [$ceef]                                   ; $7afc: $fa $ef $ce
  and $40                                         ; $7aff: $e6 $40
  jr z, jr_003_7b09                               ; $7b01: $28 $06

  ld bc, $0030                                    ; $7b03: $01 $30 $00
  call nz, Call_003_7b21                          ; $7b06: $c4 $21 $7b

jr_003_7b09:
  ld a, [$ceef]                                   ; $7b09: $fa $ef $ce
  and $80                                         ; $7b0c: $e6 $80
  jr z, jr_003_7b16                               ; $7b0e: $28 $06

  ld bc, $0038                                    ; $7b10: $01 $38 $00
  call nz, Call_003_7b21                          ; $7b13: $c4 $21 $7b

jr_003_7b16:
  call Call_000_28b5                              ; $7b16: $cd $b5 $28

jr_003_7b19:
  ldh [$ffbd], a                                  ; $7b19: $e0 $bd
  pop af                                          ; $7b1b: $f1
  ldh [rSVBK], a                                  ; $7b1c: $e0 $70
  ldh a, [$ffbd]                                  ; $7b1e: $f0 $bd
  ret                                             ; $7b20: $c9


Call_003_7b21:
  ld hl, $d080                                    ; $7b21: $21 $80 $d0
  add hl, bc                                      ; $7b24: $09
  ld de, $d1c0                                    ; $7b25: $11 $c0 $d1
  call Call_000_025d                              ; $7b28: $cd $5d $02
  ld hl, $d082                                    ; $7b2b: $21 $82 $d0
  add hl, bc                                      ; $7b2e: $09
  ld d, h                                         ; $7b2f: $54
  ld e, l                                         ; $7b30: $5d
  ld hl, $d1c0                                    ; $7b31: $21 $c0 $d1
  call Call_000_0263                              ; $7b34: $cd $63 $02
  push hl                                         ; $7b37: $e5
  ld hl, $d080                                    ; $7b38: $21 $80 $d0
  add hl, bc                                      ; $7b3b: $09
  ld d, h                                         ; $7b3c: $54
  ld e, l                                         ; $7b3d: $5d
  pop hl                                          ; $7b3e: $e1
  ld a, [hl+]                                     ; $7b3f: $2a
  ld [de], a                                      ; $7b40: $12
  inc de                                          ; $7b41: $13
  ld a, [hl+]                                     ; $7b42: $2a
  ld [de], a                                      ; $7b43: $12
  ret                                             ; $7b44: $c9


  ldh [$ffbd], a                                  ; $7b45: $e0 $bd
  ldh a, [rSVBK]                                  ; $7b47: $f0 $70
  push af                                         ; $7b49: $f5
  ld a, $02                                       ; $7b4a: $3e $02
  ldh [rSVBK], a                                  ; $7b4c: $e0 $70
  ldh a, [$ffbd]                                  ; $7b4e: $f0 $bd
  ld [$ceed], a                                   ; $7b50: $ea $ed $ce
  ld [$ceee], a                                   ; $7b53: $ea $ee $ce
  ldh [$ffbd], a                                  ; $7b56: $e0 $bd
  pop af                                          ; $7b58: $f1
  ldh [rSVBK], a                                  ; $7b59: $e0 $70
  ldh a, [$ffbd]                                  ; $7b5b: $f0 $bd
  ret                                             ; $7b5d: $c9


  ldh [$ffbd], a                                  ; $7b5e: $e0 $bd
  ldh a, [rSVBK]                                  ; $7b60: $f0 $70
  push af                                         ; $7b62: $f5
  ld a, $02                                       ; $7b63: $3e $02
  ldh [rSVBK], a                                  ; $7b65: $e0 $70
  ldh a, [$ffbd]                                  ; $7b67: $f0 $bd
  ld hl, $ceef                                    ; $7b69: $21 $ef $ce
  or [hl]                                         ; $7b6c: $b6
  ld [hl], a                                      ; $7b6d: $77
  ldh [$ffbd], a                                  ; $7b6e: $e0 $bd
  pop af                                          ; $7b70: $f1
  ldh [rSVBK], a                                  ; $7b71: $e0 $70
  ldh a, [$ffbd]                                  ; $7b73: $f0 $bd
  ret                                             ; $7b75: $c9


  ldh [$ffbd], a                                  ; $7b76: $e0 $bd
  ldh a, [rSVBK]                                  ; $7b78: $f0 $70
  push af                                         ; $7b7a: $f5
  ld a, $02                                       ; $7b7b: $3e $02
  ldh [rSVBK], a                                  ; $7b7d: $e0 $70
  ldh a, [$ffbd]                                  ; $7b7f: $f0 $bd
  xor a                                           ; $7b81: $af
  ld [$ceef], a                                   ; $7b82: $ea $ef $ce
  ldh [$ffbd], a                                  ; $7b85: $e0 $bd
  pop af                                          ; $7b87: $f1
  ldh [rSVBK], a                                  ; $7b88: $e0 $70
  ldh a, [$ffbd]                                  ; $7b8a: $f0 $bd
  ret                                             ; $7b8c: $c9


  db $05, $01, $02, $6f, $19, $01, $20, $16, $19, $01, $30, $16, $19, $01, $40, $16
  db $19, $01, $50, $16, $19, $06, $01, $02, $ea, $19, $01, $28, $16, $19, $01, $38
  db $16, $19, $01, $48, $16, $19, $01, $5c, $16, $19, $01, $87, $83, $1b

  ld b, $01                                       ; $7bbb: $06 $01
  ld [bc], a                                      ; $7bbd: $02
  ld l, a                                         ; $7bbe: $6f
  add hl, de                                      ; $7bbf: $19
  ld bc, $1620                                    ; $7bc0: $01 $20 $16
  add hl, de                                      ; $7bc3: $19
  ld bc, $1630                                    ; $7bc4: $01 $30 $16
  add hl, de                                      ; $7bc7: $19
  ld bc, $1640                                    ; $7bc8: $01 $40 $16
  add hl, de                                      ; $7bcb: $19
  ld bc, $3853                                    ; $7bcc: $01 $53 $38
  inc e                                           ; $7bcf: $1c
  ld bc, $1660                                    ; $7bd0: $01 $60 $16
  add hl, de                                      ; $7bd3: $19

  db $0b, $01, $02, $6f, $19, $01, $12, $16, $19, $01, $2f, $a9, $1a, $01, $37, $a9
  db $1a, $01, $3f, $a9, $1a, $01, $47, $a9, $1a, $01, $4f, $a9, $1a, $01, $51, $38
  db $1c, $01, $57, $a9, $1a, $01, $5f, $a9, $1a, $01, $6a, $16, $19, $07, $01, $01
  db $4b, $1d, $01, $21, $38, $1c, $01, $25, $6f, $19, $01, $38, $16, $19, $01, $48
  db $16, $19, $01, $50, $16, $19, $01, $68, $16, $19, $05, $01, $02, $ea, $19, $01
  db $28, $16, $19, $01, $38, $16, $19, $01, $50, $16, $19, $01, $68, $16, $19, $06
  db $01, $02, $ea, $19, $01, $28, $16, $19, $01, $38, $16, $19, $01, $50, $16, $19
  db $01, $68, $16, $19, $01, $7c, $b6, $1b, $07, $01, $02, $ea, $19, $01, $28, $16
  db $19, $01, $38, $16, $19, $01, $48, $16, $19, $01, $5c, $16, $19, $01, $67, $0a
  db $1c, $01, $6f, $4b, $1d, $08, $01, $02, $ea, $19, $01, $28, $16, $19, $01, $38
  db $16, $19, $01, $48, $16, $19, $01, $5c, $16, $19, $01, $67, $0a, $1c, $01, $70
  db $7a, $1e, $01, $7e, $5f, $1e, $0a, $01, $00, $a9, $1a, $01, $08, $a9, $1a, $01
  db $10, $a9, $1a, $01, $18, $a9, $1a, $01, $20, $a9, $1a, $01, $28, $a9, $1a, $01
  db $30, $a9, $1a, $01, $33, $16, $19, $01, $43, $08, $1b, $01, $52, $16, $19, $0b
  db $01, $00, $a9, $1a, $01, $07, $a9, $1a, $01, $11, $16, $19, $01, $1f, $a9, $1a
  db $01, $37, $a9, $1a, $01, $3b, $16, $19, $01, $57, $a9, $1a, $01, $5f, $a9, $1a
  db $01, $63, $d5, $1a, $01, $77, $a9, $1a, $01, $7f, $a9, $1a

  add hl, bc                                      ; $7ce0: $09
  ld bc, $6f03                                    ; $7ce1: $01 $03 $6f
  add hl, de                                      ; $7ce4: $19
  ld bc, $2827                                    ; $7ce5: $01 $27 $28
  dec de                                          ; $7ce8: $1b
  ld bc, $1632                                    ; $7ce9: $01 $32 $16
  add hl, de                                      ; $7cec: $19
  ld bc, $2847                                    ; $7ced: $01 $47 $28
  dec de                                          ; $7cf0: $1b
  ld bc, $1652                                    ; $7cf1: $01 $52 $16
  add hl, de                                      ; $7cf4: $19
  ld bc, $6d5e                                    ; $7cf5: $01 $5e $6d
  inc h                                           ; $7cf8: $24
  ld bc, $e570                                    ; $7cf9: $01 $70 $e5
  inc h                                           ; $7cfc: $24
  ld bc, $3872                                    ; $7cfd: $01 $72 $38
  inc e                                           ; $7d00: $1c
  ld bc, $fd77                                    ; $7d01: $01 $77 $fd
  dec e                                           ; $7d04: $1d
  ld bc, $0301                                    ; $7d05: $01 $01 $03
  ld l, a                                         ; $7d08: $6f
  add hl, de                                      ; $7d09: $19

  db $08, $01, $03, $6f, $19, $01, $27, $28, $1b, $01, $32, $16, $19, $01, $47, $28
  db $1b, $01, $52, $16, $19, $01, $72, $38, $1c, $01, $76, $6a, $25, $01, $77, $fd
  db $1d

  dec bc                                          ; $7d2b: $0b
  ld bc, $6f03                                    ; $7d2c: $01 $03 $6f
  add hl, de                                      ; $7d2f: $19
  ld bc, $2827                                    ; $7d30: $01 $27 $28
  dec de                                          ; $7d33: $1b
  ld bc, $1632                                    ; $7d34: $01 $32 $16
  add hl, de                                      ; $7d37: $19
  ld bc, $5240                                    ; $7d38: $01 $40 $52
  inc hl                                          ; $7d3b: $23
  ld bc, $2849                                    ; $7d3c: $01 $49 $28
  dec de                                          ; $7d3f: $1b
  ld bc, $1653                                    ; $7d40: $01 $53 $16
  add hl, de                                      ; $7d43: $19
  ld bc, $b05f                                    ; $7d44: $01 $5f $b0
  inc hl                                          ; $7d47: $23
  ld bc, $c06f                                    ; $7d48: $01 $6f $c0
  inc h                                           ; $7d4b: $24
  ld bc, $3872                                    ; $7d4c: $01 $72 $38
  inc e                                           ; $7d4f: $1c
  ld bc, $6a76                                    ; $7d50: $01 $76 $6a
  dec h                                           ; $7d53: $25
  ld bc, $fd77                                    ; $7d54: $01 $77 $fd
  dec e                                           ; $7d57: $1d

  db $0b, $01, $03, $6f, $19, $01, $27, $28, $1b, $01, $32, $16, $19, $01, $40, $f7
  db $24, $01, $49, $28, $1b, $01, $53, $16, $19, $01, $5f, $ab, $23, $01, $6f, $c0
  db $24, $01, $72, $38, $1c, $01, $76, $6a, $25, $01, $77, $fd, $1d

  inc bc                                          ; $7d85: $03
  ld bc, $c200                                    ; $7d86: $01 $00 $c2
  rra                                             ; $7d89: $1f
  ld bc, $e201                                    ; $7d8a: $01 $01 $e2
  jr nz, jr_003_7d90                              ; $7d8d: $20 $01

  adc a                                           ; $7d8f: $8f

jr_003_7d90:
  nop                                             ; $7d90: $00
  db $21, $04, $01                               ; $7d91: $21 $04 $01
  nop                                             ; $7d94: $00
  jp nz, $011f                                    ; $7d95: $c2 $1f $01

  ld l, c                                         ; $7d98: $69
  ldh [c], a                                      ; $7d99: $e2
  jr nz, jr_003_7d9d                              ; $7d9a: $20 $01

  ld l, h                                         ; $7d9c: $6c

jr_003_7d9d:
  jr c, @+$1e                                     ; $7d9d: $38 $1c

  ld bc, $008f                                    ; $7d9f: $01 $8f $00
  ld hl, $0103                                    ; $7da2: $21 $03 $01
  nop                                             ; $7da5: $00
  jp nz, $011f                                    ; $7da6: $c2 $1f $01

  adc [hl]                                        ; $7da9: $8e
  ld l, d                                         ; $7daa: $6a
  jr nz, jr_003_7dae                              ; $7dab: $20 $01

  adc a                                           ; $7dad: $8f

jr_003_7dae:
  sub d                                           ; $7dae: $92
  db $20                                          ; $7daf: $20

  db $06, $01, $00, $1b, $20, $01, $6a, $6a, $20, $01, $6b, $16, $19, $01, $73, $38
  db $1c, $01, $77, $fd, $1d, $01, $8f, $92, $20

  inc bc                                          ; $7dc9: $03
  ld bc, $1b00                                    ; $7dca: $01 $00 $1b
  jr nz, jr_003_7dd0                              ; $7dcd: $20 $01

  adc [hl]                                        ; $7dcf: $8e

jr_003_7dd0:
  ld l, d                                         ; $7dd0: $6a
  jr nz, jr_003_7dd4                              ; $7dd1: $20 $01

  adc a                                           ; $7dd3: $8f

jr_003_7dd4:
  sub d                                           ; $7dd4: $92
  jr nz, @+$07                                    ; $7dd5: $20 $05

  ld bc, $3400                                    ; $7dd7: $01 $00 $34
  ld hl, $4701                                    ; $7dda: $21 $01 $47
  adc h                                           ; $7ddd: $8c
  ld hl, $4801                                    ; $7dde: $21 $01 $48
  xor d                                           ; $7de1: $aa
  ld hl, $4901                                    ; $7de2: $21 $01 $49
  cp a                                            ; $7de5: $bf
  ld hl, $8f01                                    ; $7de6: $21 $01 $8f
  pop hl                                          ; $7de9: $e1
  db $21                                          ; $7dea: $21

  db $05, $01, $00, $34, $21, $01, $02, $77, $22, $01, $48, $9c, $22, $01, $8c, $22
  db $22, $01, $8f, $ae, $22

  dec b                                           ; $7e00: $05
  ld bc, $6f02                                    ; $7e01: $01 $02 $6f
  add hl, de                                      ; $7e04: $19
  ld bc, $1610                                    ; $7e05: $01 $10 $16
  add hl, de                                      ; $7e08: $19
  ld bc, $1620                                    ; $7e09: $01 $20 $16
  add hl, de                                      ; $7e0c: $19
  ld bc, $1630                                    ; $7e0d: $01 $30 $16
  add hl, de                                      ; $7e10: $19
  ld bc, $1640                                    ; $7e11: $01 $40 $16
  add hl, de                                      ; $7e14: $19
  dec b                                           ; $7e15: $05
  ld bc, $6f02                                    ; $7e16: $01 $02 $6f
  add hl, de                                      ; $7e19: $19
  ld bc, $1610                                    ; $7e1a: $01 $10 $16
  add hl, de                                      ; $7e1d: $19
  ld bc, $1630                                    ; $7e1e: $01 $30 $16
  add hl, de                                      ; $7e21: $19
  ld bc, $3850                                    ; $7e22: $01 $50 $38
  inc e                                           ; $7e25: $1c
  ld bc, $166c                                    ; $7e26: $01 $6c $16
  add hl, de                                      ; $7e29: $19

  db $05, $01, $02, $6f, $19, $01, $06, $a4, $1e, $01, $46, $38, $1c, $01, $58, $16
  db $19, $01, $68, $16, $19

  inc b                                           ; $7e3f: $04
  ld bc, $6f02                                    ; $7e40: $01 $02 $6f
  add hl, de                                      ; $7e43: $19
  ld bc, $3846                                    ; $7e44: $01 $46 $38
  inc e                                           ; $7e47: $1c
  ld bc, $1658                                    ; $7e48: $01 $58 $16
  add hl, de                                      ; $7e4b: $19
  ld bc, $1668                                    ; $7e4c: $01 $68 $16
  add hl, de                                      ; $7e4f: $19

  db $03, $01, $02, $6f, $19, $01, $28, $16, $19, $01, $40, $16, $19, $01, $01, $02
  db $37, $19

Call_003_7e62:
jr_003_7e62:
  ldh a, [rLCDC]                                  ; $7e62: $f0 $40
  rla                                             ; $7e64: $17
  ret nc                                          ; $7e65: $d0

  ld a, [$c04a]                                   ; $7e66: $fa $4a $c0
  or a                                            ; $7e69: $b7
  jr nz, jr_003_7e62                              ; $7e6a: $20 $f6

  ld a, l                                         ; $7e6c: $7d
  ld [$c04b], a                                   ; $7e6d: $ea $4b $c0
  ld a, h                                         ; $7e70: $7c
  ld [$c04c], a                                   ; $7e71: $ea $4c $c0
  ld a, $01                                       ; $7e74: $3e $01
  ld [$c04a], a                                   ; $7e76: $ea $4a $c0
  ret                                             ; $7e79: $c9


  call Call_003_7e62                              ; $7e7a: $cd $62 $7e

jr_003_7e7d:
  ldh a, [rLCDC]                                  ; $7e7d: $f0 $40
  rla                                             ; $7e7f: $17
  ret nc                                          ; $7e80: $d0

  ld a, [$c04a]                                   ; $7e81: $fa $4a $c0
  or a                                            ; $7e84: $b7
  jr nz, jr_003_7e7d                              ; $7e85: $20 $f6

  ret                                             ; $7e87: $c9


Call_003_7e88:
Jump_003_7e88:
  ld a, [$c045]                                   ; $7e88: $fa $45 $c0
  or a                                            ; $7e8b: $b7
  ret nz                                          ; $7e8c: $c0

  ldh a, [rLCDC]                                  ; $7e8d: $f0 $40
  rla                                             ; $7e8f: $17
  jr nc, jr_003_7ea5                              ; $7e90: $30 $13

  ld a, $01                                       ; $7e92: $3e $01
  ld [$c045], a                                   ; $7e94: $ea $45 $c0
  ld a, h                                         ; $7e97: $7c
  ld [$c047], a                                   ; $7e98: $ea $47 $c0
  ld a, l                                         ; $7e9b: $7d
  ld [$c046], a                                   ; $7e9c: $ea $46 $c0
  ld a, $02                                       ; $7e9f: $3e $02
  ld [$c045], a                                   ; $7ea1: $ea $45 $c0
  ret                                             ; $7ea4: $c9


jr_003_7ea5:
  ld a, l                                         ; $7ea5: $7d
  ld [$c048], a                                   ; $7ea6: $ea $48 $c0
  ld a, h                                         ; $7ea9: $7c
  ld [$c049], a                                   ; $7eaa: $ea $49 $c0
  ld a, [hl+]                                     ; $7ead: $2a
  ld [$c004], a                                   ; $7eae: $ea $04 $c0
  ld [$c003], a                                   ; $7eb1: $ea $03 $c0
  add a                                           ; $7eb4: $87
  add a                                           ; $7eb5: $87
  ld c, a                                         ; $7eb6: $4f
  ld de, $c005                                    ; $7eb7: $11 $05 $c0
  call Call_000_12a6                              ; $7eba: $cd $a6 $12
  call Call_000_193f                              ; $7ebd: $cd $3f $19
  xor a                                           ; $7ec0: $af
  ld [$c046], a                                   ; $7ec1: $ea $46 $c0
  ld [$c047], a                                   ; $7ec4: $ea $47 $c0
  ld [$c045], a                                   ; $7ec7: $ea $45 $c0
  ret                                             ; $7eca: $c9


  call Call_000_33f3                              ; $7ecb: $cd $f3 $33

  db $01, $28, $47

  call Call_000_33f3                              ; $7ed1: $cd $f3 $33

  db $1e, $bf, $60

  ld hl, $ff8a                                    ; $7ed7: $21 $8a $ff
  ld bc, $0075                                    ; $7eda: $01 $75 $00
  call Call_000_1248                              ; $7edd: $cd $48 $12
  ld hl, $9800                                    ; $7ee0: $21 $00 $98
  ld bc, $0800                                    ; $7ee3: $01 $00 $08
  call Call_000_1248                              ; $7ee6: $cd $48 $12
  ld hl, $c000                                    ; $7ee9: $21 $00 $c0
  ld bc, $0fef                                    ; $7eec: $01 $ef $0f
  call Call_000_1248                              ; $7eef: $cd $48 $12
  ld a, $69                                       ; $7ef2: $3e $69
  ld hl, $cf60                                    ; $7ef4: $21 $60 $cf
  ld bc, $0090                                    ; $7ef7: $01 $90 $00
  call Call_000_1249                              ; $7efa: $cd $49 $12
  ld a, $01                                       ; $7efd: $3e $01

jr_003_7eff:
  push af                                         ; $7eff: $f5
  ldh [rSVBK], a                                  ; $7f00: $e0 $70
  ld hl, $d000                                    ; $7f02: $21 $00 $d0
  ld bc, $1000                                    ; $7f05: $01 $00 $10
  call Call_000_1248                              ; $7f08: $cd $48 $12
  pop af                                          ; $7f0b: $f1
  inc a                                           ; $7f0c: $3c
  cp $08                                          ; $7f0d: $fe $08
  jr nz, jr_003_7eff                              ; $7f0f: $20 $ee

  ld hl, $8000                                    ; $7f11: $21 $00 $80
  ld bc, $1800                                    ; $7f14: $01 $00 $18
  call Call_000_1248                              ; $7f17: $cd $48 $12
  ld hl, $db00                                    ; $7f1a: $21 $00 $db
  call Call_003_7a4d                              ; $7f1d: $cd $4d $7a
  ld hl, $db81                                    ; $7f20: $21 $81 $db
  call Call_003_7a4d                              ; $7f23: $cd $4d $7a
  ld a, $01                                       ; $7f26: $3e $01
  ldh [rSVBK], a                                  ; $7f28: $e0 $70
  call $01be                                      ; $7f2a: $cd $be $01
  ld a, $d0                                       ; $7f2d: $3e $d0
  ldh [$fffb], a                                  ; $7f2f: $e0 $fb
  ld a, $07                                       ; $7f31: $3e $07
  ldh [rWX], a                                    ; $7f33: $e0 $4b
  ld a, $91                                       ; $7f35: $3e $91
  ldh [rWY], a                                    ; $7f37: $e0 $4a
  xor a                                           ; $7f39: $af
  ldh [rSCX], a                                   ; $7f3a: $e0 $43
  ldh [rSCY], a                                   ; $7f3c: $e0 $42
  ldh [rSTAT], a                                  ; $7f3e: $e0 $41
  ld a, $87                                       ; $7f40: $3e $87
  ldh [rLCDC], a                                  ; $7f42: $e0 $40
  rst $18                                         ; $7f44: $df
  ldh a, [rIF]                                    ; $7f45: $f0 $0f
  and $f3                                         ; $7f47: $e6 $f3
  ldh [rIF], a                                    ; $7f49: $e0 $0f
  ld a, $01                                       ; $7f4b: $3e $01
  ldh [$ff8a], a                                  ; $7f4d: $e0 $8a
  ld hl, $ff8d                                    ; $7f4f: $21 $8d $ff
  ld a, $03                                       ; $7f52: $3e $03
  ld [hl+], a                                     ; $7f54: $22
  ld a, $0d                                       ; $7f55: $3e $0d
  ld [hl+], a                                     ; $7f57: $22
  xor a                                           ; $7f58: $af
  ld [hl+], a                                     ; $7f59: $22
  ld a, $ff                                       ; $7f5a: $3e $ff
  ld [$cd5b], a                                   ; $7f5c: $ea $5b $cd
  ldh [$ffdf], a                                  ; $7f5f: $e0 $df
  ld a, $0a                                       ; $7f61: $3e $0a
  ldh [$ffc2], a                                  ; $7f63: $e0 $c2
  ld a, $01                                       ; $7f65: $3e $01
  ld [$cdca], a                                   ; $7f67: $ea $ca $cd
  ld [$cdcb], a                                   ; $7f6a: $ea $cb $cd
  ld [$c2ad], a                                   ; $7f6d: $ea $ad $c2
  ld [$c157], a                                   ; $7f70: $ea $57 $c1
  inc a                                           ; $7f73: $3c
  ld [$cd2a], a                                   ; $7f74: $ea $2a $cd
  ld a, $0a                                       ; $7f77: $3e $0a
  ld [$c119], a                                   ; $7f79: $ea $19 $c1
  ld hl, $cc03                                    ; $7f7c: $21 $03 $cc
  ld [hl], $d0                                    ; $7f7f: $36 $d0
  inc hl                                          ; $7f81: $23
  ld [hl], $ff                                    ; $7f82: $36 $ff
  call Call_000_18d7                              ; $7f84: $cd $d7 $18
  ld hl, $7b8d                                    ; $7f87: $21 $8d $7b
  call Call_003_7e88                              ; $7f8a: $cd $88 $7e
  ld hl, $ffff                                    ; $7f8d: $21 $ff $ff
  set 1, [hl]                                     ; $7f90: $cb $ce
  ret                                             ; $7f92: $c9


  ld hl, $ff9b                                    ; $7f93: $21 $9b $ff
  ld a, [hl+]                                     ; $7f96: $2a
  ld h, [hl]                                      ; $7f97: $66
  ld l, a                                         ; $7f98: $6f
  ld de, $0048                                    ; $7f99: $11 $48 $00
  ld a, l                                         ; $7f9c: $7d
  sbc e                                           ; $7f9d: $9b
  ld l, a                                         ; $7f9e: $6f
  ld a, h                                         ; $7f9f: $7c
  sbc d                                           ; $7fa0: $9a
  ld h, a                                         ; $7fa1: $67
  jr c, jr_003_7fae                               ; $7fa2: $38 $0a

  ld a, l                                         ; $7fa4: $7d
  ld [$c1df], a                                   ; $7fa5: $ea $df $c1
  ld a, h                                         ; $7fa8: $7c
  ld [$c1e0], a                                   ; $7fa9: $ea $e0 $c1
  jr jr_003_7fb9                                  ; $7fac: $18 $0b

jr_003_7fae:
  ld hl, $0000                                    ; $7fae: $21 $00 $00
  ld a, l                                         ; $7fb1: $7d
  ld [$c1df], a                                   ; $7fb2: $ea $df $c1
  ld a, h                                         ; $7fb5: $7c
  ld [$c1e0], a                                   ; $7fb6: $ea $e0 $c1

jr_003_7fb9:
  ld hl, $ff9d                                    ; $7fb9: $21 $9d $ff
  ld a, [hl+]                                     ; $7fbc: $2a
  ld h, [hl]                                      ; $7fbd: $66
  ld l, a                                         ; $7fbe: $6f
  ld de, $0040                                    ; $7fbf: $11 $40 $00
  ld a, l                                         ; $7fc2: $7d
  sbc e                                           ; $7fc3: $9b
  ld l, a                                         ; $7fc4: $6f
  ld a, h                                         ; $7fc5: $7c
  sbc d                                           ; $7fc6: $9a
  ld h, a                                         ; $7fc7: $67
  jr c, jr_003_7fd3                               ; $7fc8: $38 $09

  ld a, l                                         ; $7fca: $7d
  ld [$c1e1], a                                   ; $7fcb: $ea $e1 $c1
  ld a, h                                         ; $7fce: $7c
  ld [$c1e2], a                                   ; $7fcf: $ea $e2 $c1
  ret                                             ; $7fd2: $c9


jr_003_7fd3:
  ld hl, $0000                                    ; $7fd3: $21 $00 $00
  ld a, l                                         ; $7fd6: $7d
  ld [$c1e1], a                                   ; $7fd7: $ea $e1 $c1
  ld a, h                                         ; $7fda: $7c
  ld [$c1e2], a                                   ; $7fdb: $ea $e2 $c1
  ret                                             ; $7fde: $c9


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
