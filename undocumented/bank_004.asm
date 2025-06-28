; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

  db $04, $10, $01, $35, $40, $00, $00, $4c, $10, $01, $3b, $40, $c1, $00, $4c, $10
  db $01, $3d, $40, $00, $00, $48

  pop bc                                          ; $4016: $c1
  db $ec                                          ; $4017: $ec
  db $ec                                          ; $4018: $ec
  and b                                           ; $4019: $a0
  ld sp, hl                                       ; $401a: $f9
  rst $28                                         ; $401b: $ef
  push af                                         ; $401c: $f5
  ldh a, [c]                                      ; $401d: $f2
  and b                                           ; $401e: $a0
  ldh [c], a                                      ; $401f: $e2
  pop hl                                          ; $4020: $e1
  di                                              ; $4021: $f3
  push hl                                         ; $4022: $e5
  and b                                           ; $4023: $a0
  pop hl                                          ; $4024: $e1
  ldh a, [c]                                      ; $4025: $f2
  push hl                                         ; $4026: $e5
  jr nz, @-$1c                                    ; $4027: $20 $e2

  push hl                                         ; $4029: $e5
  db $ec                                          ; $402a: $ec
  rst $28                                         ; $402b: $ef
  xor $e7                                         ; $402c: $ee $e7
  and b                                           ; $402e: $a0
  db $f4                                          ; $402f: $f4
  rst $28                                         ; $4030: $ef
  and b                                           ; $4031: $a0
  push af                                         ; $4032: $f5
  di                                              ; $4033: $f3
  db $20                                          ; $4034: $20

  db $24, $d4, $44, $d4, $64, $d4, $84, $d4, $2a, $d4, $4a, $d4, $6a, $d4, $5e, $c0
  db $04, $80, $00, $ff, $25, $58, $64, $c0, $04, $a0, $00, $ff, $51, $62, $5e, $c0
  db $04, $80, $00, $2f, $25, $58

  ld a, $04                                       ; $405b: $3e $04
  ldh [$ff9a], a                                  ; $405d: $e0 $9a
  ld a, $b2                                       ; $405f: $3e $b2
  call Call_000_04e0                              ; $4061: $cd $e0 $04
  call Call_000_38e8                              ; $4064: $cd $e8 $38
  ld a, l                                         ; $4067: $7d
  ld [$cc5e], a                                   ; $4068: $ea $5e $cc
  ld a, h                                         ; $406b: $7c
  ld [$cc5f], a                                   ; $406c: $ea $5f $cc
  call Call_000_33f3                              ; $406f: $cd $f3 $33

  db $00, $0b, $10

  call Call_000_3427                              ; $4075: $cd $27 $34

  db $00, $34, $10

Call_004_407b:
  push de                                         ; $407b: $d5
  call Call_000_33f3                              ; $407c: $cd $f3 $33

  db $00, $9a, $10

  ld a, [$cdc4]                                   ; $4082: $fa $c4 $cd
  ld c, a                                         ; $4085: $4f
  ld d, $05                                       ; $4086: $16 $05
  ld e, $10                                       ; $4088: $1e $10
  ld hl, $0404                                    ; $408a: $21 $04 $04
  call Call_000_149f                              ; $408d: $cd $9f $14
  ld hl, $1f1b                                    ; $4090: $21 $1b $1f
  call Call_000_33f3                              ; $4093: $cd $f3 $33

  db $03, $7a, $7e

  ld hl, $4001                                    ; $4099: $21 $01 $40
  call Call_000_3013                              ; $409c: $cd $13 $30
  ld a, [$cdc5]                                   ; $409f: $fa $c5 $cd
  ldh [$ffb9], a                                  ; $40a2: $e0 $b9
  ld [$c15e], a                                   ; $40a4: $ea $5e $c1
  xor a                                           ; $40a7: $af
  ld [$c15f], a                                   ; $40a8: $ea $5f $c1
  ld a, $77                                       ; $40ab: $3e $77
  ld [$c159], a                                   ; $40ad: $ea $59 $c1
  ld a, $04                                       ; $40b0: $3e $04
  ld [$c1a2], a                                   ; $40b2: $ea $a2 $c1
  pop de                                          ; $40b5: $d1
  ld hl, $cd59                                    ; $40b6: $21 $59 $cd
  ld a, [hl+]                                     ; $40b9: $2a
  ld h, [hl]                                      ; $40ba: $66
  ld l, a                                         ; $40bb: $6f
  call Call_000_33f3                              ; $40bc: $cd $f3 $33

  db $01, $0b, $66

  ld de, $0004                                    ; $40c2: $11 $04 $00
  call Call_000_01ca                              ; $40c5: $cd $ca $01
  ld hl, $1f1b                                    ; $40c8: $21 $1b $1f
  call Call_000_33f3                              ; $40cb: $cd $f3 $33

  db $03, $7a, $7e

  call Call_004_45d9                              ; $40d1: $cd $d9 $45
  ld a, e                                         ; $40d4: $7b
  cp $33                                          ; $40d5: $fe $33
  jr nz, jr_004_40df                              ; $40d7: $20 $06

  ld a, [$cdc2]                                   ; $40d9: $fa $c2 $cd
  cp d                                            ; $40dc: $ba
  jr z, jr_004_40e8                               ; $40dd: $28 $09

jr_004_40df:
  ld hl, $c1a6                                    ; $40df: $21 $a6 $c1
  ld a, [hl+]                                     ; $40e2: $2a
  ld h, [hl]                                      ; $40e3: $66
  ld l, a                                         ; $40e4: $6f
  or l                                            ; $40e5: $b5
  jr z, jr_004_40f6                               ; $40e6: $28 $0e

jr_004_40e8:
  ld a, $b2                                       ; $40e8: $3e $b2
  ld e, $ff                                       ; $40ea: $1e $ff
  call Call_000_0a46                              ; $40ec: $cd $46 $0a
  ld de, $002a                                    ; $40ef: $11 $2a $00
  add hl, de                                      ; $40f2: $19
  res 0, [hl]                                     ; $40f3: $cb $86
  ret                                             ; $40f5: $c9


Call_004_40f6:
jr_004_40f6:
  xor a                                           ; $40f6: $af
  ld [$cd5c], a                                   ; $40f7: $ea $5c $cd
  ld a, $b2                                       ; $40fa: $3e $b2
  ld e, $ff                                       ; $40fc: $1e $ff
  call Call_000_0a46                              ; $40fe: $cd $46 $0a
  ld de, $002a                                    ; $4101: $11 $2a $00
  add hl, de                                      ; $4104: $19
  set 0, [hl]                                     ; $4105: $cb $c6
  ret                                             ; $4107: $c9


Call_004_4108:
  push bc                                         ; $4108: $c5
  push de                                         ; $4109: $d5
  ld de, $0004                                    ; $410a: $11 $04 $00
  call Call_000_01ca                              ; $410d: $cd $ca $01
  ld hl, $400f                                    ; $4110: $21 $0f $40
  call Call_000_3013                              ; $4113: $cd $13 $30
  ld a, [$cdc5]                                   ; $4116: $fa $c5 $cd
  ldh [$ffb9], a                                  ; $4119: $e0 $b9
  ld [$c15e], a                                   ; $411b: $ea $5e $c1
  xor a                                           ; $411e: $af
  ld [$c15f], a                                   ; $411f: $ea $5f $c1
  ld a, $98                                       ; $4122: $3e $98
  ld [$c159], a                                   ; $4124: $ea $59 $c1
  ld a, $04                                       ; $4127: $3e $04
  ld [$c1a2], a                                   ; $4129: $ea $a2 $c1
  pop de                                          ; $412c: $d1
  pop bc                                          ; $412d: $c1
  ld a, d                                         ; $412e: $7a
  or a                                            ; $412f: $b7
  jr z, jr_004_415c                               ; $4130: $28 $2a

  cp $01                                          ; $4132: $fe $01
  jr z, jr_004_414d                               ; $4134: $28 $17

  ld hl, $cd59                                    ; $4136: $21 $59 $cd
  ld a, [hl+]                                     ; $4139: $2a
  ld h, [hl]                                      ; $413a: $66
  ld l, a                                         ; $413b: $6f
  call Call_000_33f3                              ; $413c: $cd $f3 $33

  db $01, $28, $66

  ld a, e                                         ; $4142: $7b
  ld l, c                                         ; $4143: $69
  ld h, b                                         ; $4144: $60
  call Call_000_33f3                              ; $4145: $cd $f3 $33

  db $01, $75, $66

  jr jr_004_4169                                  ; $414b: $18 $1c

jr_004_414d:
  xor a                                           ; $414d: $af
  ld hl, $cd59                                    ; $414e: $21 $59 $cd
  ld a, [hl+]                                     ; $4151: $2a
  ld h, [hl]                                      ; $4152: $66
  ld l, a                                         ; $4153: $6f
  call Call_000_33f3                              ; $4154: $cd $f3 $33

  db $01, $65, $65

  jr jr_004_4169                                  ; $415a: $18 $0d

jr_004_415c:
  xor a                                           ; $415c: $af
  ld hl, $cd59                                    ; $415d: $21 $59 $cd
  ld a, [hl+]                                     ; $4160: $2a
  ld h, [hl]                                      ; $4161: $66
  ld l, a                                         ; $4162: $6f
  call Call_000_33f3                              ; $4163: $cd $f3 $33

  db $01, $28, $66

jr_004_4169:
  ld hl, $1f1b                                    ; $4169: $21 $1b $1f
  call Call_000_3427                              ; $416c: $cd $27 $34

  db $03, $7a, $7e

Call_004_4172:
  ld a, [$cdc4]                                   ; $4172: $fa $c4 $cd
  ld c, a                                         ; $4175: $4f
  ld d, $05                                       ; $4176: $16 $05
  ld e, $10                                       ; $4178: $1e $10
  ld hl, $0404                                    ; $417a: $21 $04 $04
  call Call_000_149f                              ; $417d: $cd $9f $14
  ld hl, $1f1b                                    ; $4180: $21 $1b $1f
  call Call_000_33f3                              ; $4183: $cd $f3 $33

  db $03, $7a, $7e

  ld hl, $4001                                    ; $4189: $21 $01 $40
  call Call_000_3013                              ; $418c: $cd $13 $30
  ld a, [$cdc5]                                   ; $418f: $fa $c5 $cd
  ldh [$ffb9], a                                  ; $4192: $e0 $b9
  ld [$c15e], a                                   ; $4194: $ea $5e $c1
  xor a                                           ; $4197: $af
  ld [$c15f], a                                   ; $4198: $ea $5f $c1
  ld a, $7c                                       ; $419b: $3e $7c
  ld [$c159], a                                   ; $419d: $ea $59 $c1
  ld a, $01                                       ; $41a0: $3e $01
  ld [$c1a2], a                                   ; $41a2: $ea $a2 $c1
  ld de, $0000                                    ; $41a5: $11 $00 $00
  ld hl, $cd59                                    ; $41a8: $21 $59 $cd
  ld a, [hl+]                                     ; $41ab: $2a
  ld h, [hl]                                      ; $41ac: $66
  ld l, a                                         ; $41ad: $6f
  call Call_000_33f3                              ; $41ae: $cd $f3 $33

  db $01, $28, $66

  inc hl                                          ; $41b4: $23
  inc hl                                          ; $41b5: $23
  inc hl                                          ; $41b6: $23
  call Call_000_33f3                              ; $41b7: $cd $f3 $33

  db $01, $28, $66

  inc hl                                          ; $41bd: $23
  inc hl                                          ; $41be: $23
  inc hl                                          ; $41bf: $23
  call Call_000_33f3                              ; $41c0: $cd $f3 $33

  db $01, $28, $66

  ld de, $0004                                    ; $41c6: $11 $04 $00
  call Call_000_01ca                              ; $41c9: $cd $ca $01
  ld hl, $1f1b                                    ; $41cc: $21 $1b $1f
  call Call_000_3427                              ; $41cf: $cd $27 $34

  db $03, $7a, $7e

Call_004_41d5:
  ld a, [$cdc3]                                   ; $41d5: $fa $c3 $cd
  ld l, a                                         ; $41d8: $6f
  ld h, $00                                       ; $41d9: $26 $00
  push hl                                         ; $41db: $e5
  ld a, [$cdc2]                                   ; $41dc: $fa $c2 $cd
  ld bc, $6029                                    ; $41df: $01 $29 $60
  call Call_000_33f3                              ; $41e2: $cd $f3 $33

  db $00, $4f, $10

  pop hl                                          ; $41e8: $e1
  ld a, $80                                       ; $41e9: $3e $80
  rst $08                                         ; $41eb: $cf
  xor a                                           ; $41ec: $af
  ld bc, $624b                                    ; $41ed: $01 $4b $62
  ld de, $d420                                    ; $41f0: $11 $20 $d4
  call Call_000_33f3                              ; $41f3: $cd $f3 $33

  db $00, $5f, $10

  ld a, [$cdc2]                                   ; $41f9: $fa $c2 $cd
  ld hl, $6251                                    ; $41fc: $21 $51 $62
  call Call_000_33f3                              ; $41ff: $cd $f3 $33

  db $00, $b1, $10

  ld a, [$cd5b]                                   ; $4205: $fa $5b $cd
  cp $03                                          ; $4208: $fe $03
  jr nz, jr_004_421b                              ; $420a: $20 $0f

  ld a, [$cdc2]                                   ; $420c: $fa $c2 $cd
  call Call_004_427f                              ; $420f: $cd $7f $42
  ld a, $ff                                       ; $4212: $3e $ff
  ld [$cd5b], a                                   ; $4214: $ea $5b $cd
  ld a, $43                                       ; $4217: $3e $43
  jr jr_004_4226                                  ; $4219: $18 $0b

jr_004_421b:
  cp $ff                                          ; $421b: $fe $ff
  ret nz                                          ; $421d: $c0

  ld a, [$cdc2]                                   ; $421e: $fa $c2 $cd
  call Call_004_427f                              ; $4221: $cd $7f $42
  ld a, $08                                       ; $4224: $3e $08

jr_004_4226:
  push af                                         ; $4226: $f5
  ld de, $c077                                    ; $4227: $11 $77 $c0
  ld hl, $4043                                    ; $422a: $21 $43 $40
  call Call_000_025d                              ; $422d: $cd $5d $02
  pop af                                          ; $4230: $f1
  ld [$c07c], a                                   ; $4231: $ea $7c $c0
  ld hl, $c077                                    ; $4234: $21 $77 $c0
  call Call_000_1a5c                              ; $4237: $cd $5c $1a
  ld a, $20                                       ; $423a: $3e $20
  ld [$c07f], a                                   ; $423c: $ea $7f $c0
  ret                                             ; $423f: $c9


Call_004_4240:
  ld [$cdc2], a                                   ; $4240: $ea $c2 $cd
  ld a, l                                         ; $4243: $7d
  ld [$cd59], a                                   ; $4244: $ea $59 $cd
  ld a, h                                         ; $4247: $7c
  ld [$cd5a], a                                   ; $4248: $ea $5a $cd
  ld bc, $0008                                    ; $424b: $01 $08 $00
  ld hl, $cd5c                                    ; $424e: $21 $5c $cd
  call Call_000_1248                              ; $4251: $cd $48 $12
  rst $18                                         ; $4254: $df
  call Call_004_41d5                              ; $4255: $cd $d5 $41
  call Call_004_4273                              ; $4258: $cd $73 $42
  ld a, $0d                                       ; $425b: $3e $0d
  call Call_000_261e                              ; $425d: $cd $1e $26
  ld hl, $7c4c                                    ; $4260: $21 $4c $7c
  call Call_000_33f3                              ; $4263: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $0120                                    ; $4269: $21 $20 $01
  call Call_000_3916                              ; $426c: $cd $16 $39
  call Call_004_429b                              ; $426f: $cd $9b $42
  ret                                             ; $4272: $c9


Call_004_4273:
  xor a                                           ; $4273: $af
  ld [$cd5b], a                                   ; $4274: $ea $5b $cd
  ld hl, $c0aa                                    ; $4277: $21 $aa $c0
  set 0, [hl]                                     ; $427a: $cb $c6
  jp Jump_000_37d9                                ; $427c: $c3 $d9 $37


Call_004_427f:
  push af                                         ; $427f: $f5
  ld de, $c077                                    ; $4280: $11 $77 $c0
  ld hl, $404b                                    ; $4283: $21 $4b $40
  call Call_000_025d                              ; $4286: $cd $5d $02
  pop af                                          ; $4289: $f1
  push af                                         ; $428a: $f5
  ld [$c07c], a                                   ; $428b: $ea $7c $c0
  ld hl, $c077                                    ; $428e: $21 $77 $c0
  call Call_000_1a5c                              ; $4291: $cd $5c $1a
  pop af                                          ; $4294: $f1
  ret                                             ; $4295: $c9


Call_004_4296:
  ldh a, [$ffe0]                                  ; $4296: $f0 $e0
  ldh [$ffe1], a                                  ; $4298: $e0 $e1
  ret                                             ; $429a: $c9


Call_004_429b:
  ldh a, [$ffe1]                                  ; $429b: $f0 $e1
  cp $00                                          ; $429d: $fe $00
  ret z                                           ; $429f: $c8

  ldh [$ffe0], a                                  ; $42a0: $e0 $e0
  ld a, $00                                       ; $42a2: $3e $00
  ldh [$ffe1], a                                  ; $42a4: $e0 $e1
  ld hl, $c2de                                    ; $42a6: $21 $de $c2
  ld bc, $0004                                    ; $42a9: $01 $04 $00
  call Call_000_1248                              ; $42ac: $cd $48 $12
  ldh a, [rSVBK]                                  ; $42af: $f0 $70
  push af                                         ; $42b1: $f5
  ld a, $06                                       ; $42b2: $3e $06
  ldh [rSVBK], a                                  ; $42b4: $e0 $70
  ld a, [$dcc8]                                   ; $42b6: $fa $c8 $dc
  ldh [$ffbd], a                                  ; $42b9: $e0 $bd
  pop af                                          ; $42bb: $f1
  ldh [rSVBK], a                                  ; $42bc: $e0 $70
  ldh a, [$ffbd]                                  ; $42be: $f0 $bd
  cp $06                                          ; $42c0: $fe $06
  ret z                                           ; $42c2: $c8

  ld hl, $c2f2                                    ; $42c3: $21 $f2 $c2
  ld [hl], $00                                    ; $42c6: $36 $00
  ret                                             ; $42c8: $c9


  ldh [$ffbd], a                                  ; $42c9: $e0 $bd
  ldh a, [rSVBK]                                  ; $42cb: $f0 $70
  push af                                         ; $42cd: $f5
  ld a, $01                                       ; $42ce: $3e $01
  ldh [rSVBK], a                                  ; $42d0: $e0 $70
  ldh a, [$ffbd]                                  ; $42d2: $f0 $bd
  call Call_004_4240                              ; $42d4: $cd $40 $42
  ld de, $0000                                    ; $42d7: $11 $00 $00
  call Call_004_407b                              ; $42da: $cd $7b $40
  xor a                                           ; $42dd: $af
  ld [$cd5b], a                                   ; $42de: $ea $5b $cd
  ldh [$ffa9], a                                  ; $42e1: $e0 $a9
  ldh [$ffa7], a                                  ; $42e3: $e0 $a7
  pop af                                          ; $42e5: $f1
  ldh [rSVBK], a                                  ; $42e6: $e0 $70
  ret                                             ; $42e8: $c9


  ldh [$ffbd], a                                  ; $42e9: $e0 $bd
  ldh a, [rSVBK]                                  ; $42eb: $f0 $70
  push af                                         ; $42ed: $f5
  ld a, $01                                       ; $42ee: $3e $01
  ldh [rSVBK], a                                  ; $42f0: $e0 $70
  ldh a, [$ffbd]                                  ; $42f2: $f0 $bd
  call Call_004_4240                              ; $42f4: $cd $40 $42
  ld a, $01                                       ; $42f7: $3e $01
  ld [$cd66], a                                   ; $42f9: $ea $66 $cd
  ld a, [$cdc4]                                   ; $42fc: $fa $c4 $cd
  ld c, a                                         ; $42ff: $4f
  ld d, $05                                       ; $4300: $16 $05
  ld e, $10                                       ; $4302: $1e $10
  ld hl, $0404                                    ; $4304: $21 $04 $04
  call Call_000_149f                              ; $4307: $cd $9f $14
  ld de, $0004                                    ; $430a: $11 $04 $00
  call Call_000_01ca                              ; $430d: $cd $ca $01
  ld hl, $1f1b                                    ; $4310: $21 $1b $1f
  call Call_000_33f3                              ; $4313: $cd $f3 $33

  db $03, $7a, $7e

  ld hl, $4001                                    ; $4319: $21 $01 $40
  call Call_000_3013                              ; $431c: $cd $13 $30
  ld a, [$cdc5]                                   ; $431f: $fa $c5 $cd
  ldh [$ffb9], a                                  ; $4322: $e0 $b9
  ld [$c15e], a                                   ; $4324: $ea $5e $c1
  xor a                                           ; $4327: $af
  ld [$c15f], a                                   ; $4328: $ea $5f $c1
  ld a, $7c                                       ; $432b: $3e $7c
  ld [$c159], a                                   ; $432d: $ea $59 $c1
  ld a, $04                                       ; $4330: $3e $04
  ld [$c1a2], a                                   ; $4332: $ea $a2 $c1
  ldh a, [$ffa5]                                  ; $4335: $f0 $a5
  bit 1, a                                        ; $4337: $cb $4f
  jr z, jr_004_4381                               ; $4339: $28 $46

  ld a, [$cafd]                                   ; $433b: $fa $fd $ca
  or a                                            ; $433e: $b7
  jr z, jr_004_4381                               ; $433f: $28 $40

  push bc                                         ; $4341: $c5
  xor a                                           ; $4342: $af
  ld [$cafd], a                                   ; $4343: $ea $fd $ca
  ld b, $12                                       ; $4346: $06 $12
  ld de, $cafe                                    ; $4348: $11 $fe $ca
  ld hl, $4016                                    ; $434b: $21 $16 $40

jr_004_434e:
  ld a, [hl+]                                     ; $434e: $2a
  add $80                                         ; $434f: $c6 $80
  ld [de], a                                      ; $4351: $12
  inc de                                          ; $4352: $13
  dec b                                           ; $4353: $05
  jr nz, jr_004_434e                              ; $4354: $20 $f8

  ld de, $0000                                    ; $4356: $11 $00 $00
  ld hl, $cafe                                    ; $4359: $21 $fe $ca
  call Call_000_33f3                              ; $435c: $cd $f3 $33
  ld bc, $6517                                    ; $435f: $01 $17 $65
  ld b, $0d                                       ; $4362: $06 $0d
  ld de, $cafe                                    ; $4364: $11 $fe $ca
  ld hl, $4028                                    ; $4367: $21 $28 $40

jr_004_436a:
  ld a, [hl+]                                     ; $436a: $2a
  add $80                                         ; $436b: $c6 $80
  ld [de], a                                      ; $436d: $12
  inc de                                          ; $436e: $13
  dec b                                           ; $436f: $05
  jr nz, jr_004_436a                              ; $4370: $20 $f8

  ld de, $0000                                    ; $4372: $11 $00 $00
  ld hl, $cafe                                    ; $4375: $21 $fe $ca
  call Call_000_33f3                              ; $4378: $cd $f3 $33
  ld bc, $6517                                    ; $437b: $01 $17 $65
  pop bc                                          ; $437e: $c1
  jr jr_004_4390                                  ; $437f: $18 $0f

jr_004_4381:
  ld de, $0000                                    ; $4381: $11 $00 $00
  ld hl, $cd59                                    ; $4384: $21 $59 $cd
  ld a, [hl+]                                     ; $4387: $2a
  ld h, [hl]                                      ; $4388: $66
  ld l, a                                         ; $4389: $6f
  call Call_000_33f3                              ; $438a: $cd $f3 $33

  db $01, $28, $66

jr_004_4390:
  ld hl, $4008                                    ; $4390: $21 $08 $40
  call Call_000_3013                              ; $4393: $cd $13 $30
  ld a, [$cdc5]                                   ; $4396: $fa $c5 $cd
  ld hl, $0030                                    ; $4399: $21 $30 $00
  rst $08                                         ; $439c: $cf
  ld a, l                                         ; $439d: $7d
  ldh [$ffb9], a                                  ; $439e: $e0 $b9
  ld a, h                                         ; $43a0: $7c
  ldh [$ffba], a                                  ; $43a1: $e0 $ba
  ld a, l                                         ; $43a3: $7d
  ld [$c15e], a                                   ; $43a4: $ea $5e $c1
  ld a, h                                         ; $43a7: $7c
  ld [$c15f], a                                   ; $43a8: $ea $5f $c1
  ld hl, $1f1b                                    ; $43ab: $21 $1b $1f
  call Call_000_33f3                              ; $43ae: $cd $f3 $33

  db $03, $7a, $7e

  xor a                                           ; $43b4: $af
  ld [$cd5b], a                                   ; $43b5: $ea $5b $cd
  ldh [$ffa9], a                                  ; $43b8: $e0 $a9
  ldh [$ffa7], a                                  ; $43ba: $e0 $a7
  pop af                                          ; $43bc: $f1
  ldh [rSVBK], a                                  ; $43bd: $e0 $70
  ret                                             ; $43bf: $c9


  ldh [$ffbd], a                                  ; $43c0: $e0 $bd
  ldh a, [rSVBK]                                  ; $43c2: $f0 $70
  push af                                         ; $43c4: $f5
  ld a, $01                                       ; $43c5: $3e $01
  ldh [rSVBK], a                                  ; $43c7: $e0 $70
  ldh a, [$ffbd]                                  ; $43c9: $f0 $bd
  call Call_004_4240                              ; $43cb: $cd $40 $42
  ld hl, $50bc                                    ; $43ce: $21 $bc $50
  call Call_000_33f3                              ; $43d1: $cd $f3 $33

  db $06, $ef, $50

  ld de, $0000                                    ; $43d7: $11 $00 $00
  call Call_004_4172                              ; $43da: $cd $72 $41
  ld a, $01                                       ; $43dd: $3e $01
  ld [$cd5b], a                                   ; $43df: $ea $5b $cd
  xor a                                           ; $43e2: $af
  ldh [$ffa9], a                                  ; $43e3: $e0 $a9
  ldh [$ffa7], a                                  ; $43e5: $e0 $a7
  ld a, $05                                       ; $43e7: $3e $05
  ldh [$ff9a], a                                  ; $43e9: $e0 $9a
  ld a, $7c                                       ; $43eb: $3e $7c
  call Call_000_04e0                              ; $43ed: $cd $e0 $04
  pop af                                          ; $43f0: $f1
  ldh [rSVBK], a                                  ; $43f1: $e0 $70
  ret                                             ; $43f3: $c9


Call_004_43f4:
  push de                                         ; $43f4: $d5
  ld a, $0a                                       ; $43f5: $3e $0a
  call Call_004_78d8                              ; $43f7: $cd $d8 $78
  pop de                                          ; $43fa: $d1
  ld d, e                                         ; $43fb: $53
  ld e, $0a                                       ; $43fc: $1e $0a
  jp Jump_004_787d                                ; $43fe: $c3 $7d $78


  ld a, $01                                       ; $4401: $3e $01
  ld [$cd66], a                                   ; $4403: $ea $66 $cd
  ldh a, [rSVBK]                                  ; $4406: $f0 $70
  push af                                         ; $4408: $f5
  ld a, $01                                       ; $4409: $3e $01
  ldh [rSVBK], a                                  ; $440b: $e0 $70
  ld a, l                                         ; $440d: $7d
  ld [$cd59], a                                   ; $440e: $ea $59 $cd
  ld a, h                                         ; $4411: $7c
  ld [$cd5a], a                                   ; $4412: $ea $5a $cd
  rst $18                                         ; $4415: $df
  call Call_000_33f3                              ; $4416: $cd $f3 $33

  db $00, $34, $10

  ld a, d                                         ; $441c: $7a
  cp $03                                          ; $441d: $fe $03
  jr nz, jr_004_4428                              ; $441f: $20 $07

  ld a, $56                                       ; $4421: $3e $56
  ld d, $00                                       ; $4423: $16 $00
  ld e, a                                         ; $4425: $5f
  jr jr_004_445b                                  ; $4426: $18 $33

jr_004_4428:
  cp $04                                          ; $4428: $fe $04
  jr nz, jr_004_4444                              ; $442a: $20 $18

  push bc                                         ; $442c: $c5
  push de                                         ; $442d: $d5
  ld a, $98                                       ; $442e: $3e $98
  ld e, a                                         ; $4430: $5f
  call Call_000_33f3                              ; $4431: $cd $f3 $33

  db $00, $7a, $10

  call Call_004_43f4                              ; $4437: $cd $f4 $43
  pop de                                          ; $443a: $d1
  pop bc                                          ; $443b: $c1
  ld a, e                                         ; $443c: $7b
  ld d, $02                                       ; $443d: $16 $02
  call Call_004_4108                              ; $443f: $cd $08 $41
  jr jr_004_4467                                  ; $4442: $18 $23

jr_004_4444:
  ld a, d                                         ; $4444: $7a
  cp $05                                          ; $4445: $fe $05
  jr nz, jr_004_444b                              ; $4447: $20 $02

  jr jr_004_4467                                  ; $4449: $18 $1c

jr_004_444b:
  ld a, d                                         ; $444b: $7a
  cp $02                                          ; $444c: $fe $02
  ld a, e                                         ; $444e: $7b
  jr z, jr_004_445b                               ; $444f: $28 $0a

  or a                                            ; $4451: $b7
  ld a, $98                                       ; $4452: $3e $98
  ld e, $98                                       ; $4454: $1e $98
  jr z, jr_004_445b                               ; $4456: $28 $03

  ld a, $97                                       ; $4458: $3e $97
  ld e, a                                         ; $445a: $5f

jr_004_445b:
  call Call_000_33f3                              ; $445b: $cd $f3 $33

  db $00, $7a, $10

  call Call_004_4108                              ; $4461: $cd $08 $41
  call Call_004_43f4                              ; $4464: $cd $f4 $43

jr_004_4467:
  ld hl, $4053                                    ; $4467: $21 $53 $40
  call Call_000_1a5c                              ; $446a: $cd $5c $1a
  call Call_004_4273                              ; $446d: $cd $73 $42
  ld hl, $7c69                                    ; $4470: $21 $69 $7c
  call Call_000_33f3                              ; $4473: $cd $f3 $33

  db $03, $88, $7e

  ld a, $0d                                       ; $4479: $3e $0d
  call Call_000_261e                              ; $447b: $cd $1e $26
  ld a, $02                                       ; $447e: $3e $02
  ld [$cd5b], a                                   ; $4480: $ea $5b $cd
  xor a                                           ; $4483: $af
  ld [$cd5c], a                                   ; $4484: $ea $5c $cd
  ldh [$ffa9], a                                  ; $4487: $e0 $a9
  ldh [$ffa7], a                                  ; $4489: $e0 $a7
  call Call_004_429b                              ; $448b: $cd $9b $42
  pop af                                          ; $448e: $f1
  ldh [rSVBK], a                                  ; $448f: $e0 $70
  ret                                             ; $4491: $c9


Call_004_4492:
  ld e, $0a                                       ; $4492: $1e $0a
  jp Jump_004_78ee                                ; $4494: $c3 $ee $78


  call Call_000_33f3                              ; $4497: $cd $f3 $33

  db $06, $2b, $51

  call Call_000_01dc                              ; $449d: $cd $dc $01
  ret nz                                          ; $44a0: $c0

  ldh a, [$ffa6]                                  ; $44a1: $f0 $a6
  and $07                                         ; $44a3: $e6 $07
  ret z                                           ; $44a5: $c8

  ld a, [$cd5b]                                   ; $44a6: $fa $5b $cd
  and $7f                                         ; $44a9: $e6 $7f
  cp $01                                          ; $44ab: $fe $01
  jr z, jr_004_44c4                               ; $44ad: $28 $15

  ld a, [$c1a6]                                   ; $44af: $fa $a6 $c1
  ld e, a                                         ; $44b2: $5f
  ld a, [$c1a7]                                   ; $44b3: $fa $a7 $c1
  ld d, a                                         ; $44b6: $57
  or e                                            ; $44b7: $b3
  jr z, jr_004_44ec                               ; $44b8: $28 $32

  rst $18                                         ; $44ba: $df
  call Call_004_407b                              ; $44bb: $cd $7b $40
  xor a                                           ; $44be: $af
  ldh [$ffa9], a                                  ; $44bf: $e0 $a9
  ldh [$ffa7], a                                  ; $44c1: $e0 $a7
  ret                                             ; $44c3: $c9


jr_004_44c4:
  ldh a, [rSVBK]                                  ; $44c4: $f0 $70
  push af                                         ; $44c6: $f5
  ld a, $06                                       ; $44c7: $3e $06
  ldh [rSVBK], a                                  ; $44c9: $e0 $70
  ldh a, [$ffa6]                                  ; $44cb: $f0 $a6
  bit 1, a                                        ; $44cd: $cb $4f
  jr z, jr_004_44d8                               ; $44cf: $28 $07

  ld a, $00                                       ; $44d1: $3e $00
  ld [$ddc6], a                                   ; $44d3: $ea $c6 $dd
  jr jr_004_44dd                                  ; $44d6: $18 $05

jr_004_44d8:
  ldh a, [$ffd3]                                  ; $44d8: $f0 $d3
  ld [$ddc6], a                                   ; $44da: $ea $c6 $dd

jr_004_44dd:
  pop af                                          ; $44dd: $f1
  ldh [rSVBK], a                                  ; $44de: $e0 $70
  ld a, $7c                                       ; $44e0: $3e $7c
  ld e, $05                                       ; $44e2: $1e $05
  call Call_000_0a46                              ; $44e4: $cd $46 $0a
  ld c, l                                         ; $44e7: $4d
  ld b, h                                         ; $44e8: $44
  call Call_000_0dbb                              ; $44e9: $cd $bb $0d

jr_004_44ec:
  ld hl, $cc5e                                    ; $44ec: $21 $5e $cc
  ld a, [hl+]                                     ; $44ef: $2a
  ld h, [hl]                                      ; $44f0: $66
  ld l, a                                         ; $44f1: $6f
  call Call_000_38fe                              ; $44f2: $cd $fe $38
  call Call_004_45d9                              ; $44f5: $cd $d9 $45
  ld a, e                                         ; $44f8: $7b
  cp $33                                          ; $44f9: $fe $33
  jr nz, jr_004_450a                              ; $44fb: $20 $0d

  ld a, [$cd5b]                                   ; $44fd: $fa $5b $cd
  cp $02                                          ; $4500: $fe $02
  jr z, jr_004_450a                               ; $4502: $28 $06

  ld a, $04                                       ; $4504: $3e $04
  ld [$cb2d], a                                   ; $4506: $ea $2d $cb
  ret                                             ; $4509: $c9


jr_004_450a:
  call Call_004_4492                              ; $450a: $cd $92 $44
  call Call_004_40f6                              ; $450d: $cd $f6 $40
  xor a                                           ; $4510: $af
  ld [$cd66], a                                   ; $4511: $ea $66 $cd
  ldh [$ffa6], a                                  ; $4514: $e0 $a6
  ld a, $ff                                       ; $4516: $3e $ff
  ld [$cd5b], a                                   ; $4518: $ea $5b $cd
  call Call_004_4296                              ; $451b: $cd $96 $42
  ld a, [$cbfe]                                   ; $451e: $fa $fe $cb
  or a                                            ; $4521: $b7
  ld a, $0c                                       ; $4522: $3e $0c
  jr z, jr_004_4535                               ; $4524: $28 $0f

  ld a, [$cbfe]                                   ; $4526: $fa $fe $cb
  inc a                                           ; $4529: $3c
  ld [$cbfe], a                                   ; $452a: $ea $fe $cb
  ld de, $0190                                    ; $452d: $11 $90 $01
  call Call_000_01ca                              ; $4530: $cd $ca $01
  ld a, $40                                       ; $4533: $3e $40

jr_004_4535:
  call Call_000_261e                              ; $4535: $cd $1e $26
  ld a, [$cb2d]                                   ; $4538: $fa $2d $cb
  cp $09                                          ; $453b: $fe $09
  jr nz, jr_004_45a9                              ; $453d: $20 $6a

  ld a, $04                                       ; $453f: $3e $04
  ld [$cb2d], a                                   ; $4541: $ea $2d $cb
  ld a, [$cb36]                                   ; $4544: $fa $36 $cb
  ld d, a                                         ; $4547: $57
  ld a, [$cb37]                                   ; $4548: $fa $37 $cb
  or d                                            ; $454b: $b2
  jr z, jr_004_45a9                               ; $454c: $28 $5b

  ld a, [$cb3a]                                   ; $454e: $fa $3a $cb
  or a                                            ; $4551: $b7
  jr z, jr_004_457f                               ; $4552: $28 $2b

  push bc                                         ; $4554: $c5
  ld hl, $cb36                                    ; $4555: $21 $36 $cb
  ld c, [hl]                                      ; $4558: $4e
  inc hl                                          ; $4559: $23
  ld b, [hl]                                      ; $455a: $46
  ld hl, $cb38                                    ; $455b: $21 $38 $cb
  ld e, [hl]                                      ; $455e: $5e
  inc hl                                          ; $455f: $23
  ld d, [hl]                                      ; $4560: $56
  call Call_000_09ff                              ; $4561: $cd $ff $09
  ld hl, $0021                                    ; $4564: $21 $21 $00
  add hl, bc                                      ; $4567: $09
  ld de, $cb3b                                    ; $4568: $11 $3b $cb
  ld a, [de]                                      ; $456b: $1a
  ld [hl+], a                                     ; $456c: $22
  inc de                                          ; $456d: $13
  ld a, [de]                                      ; $456e: $1a
  ld [hl+], a                                     ; $456f: $22
  inc de                                          ; $4570: $13
  ld a, [de]                                      ; $4571: $1a
  ld [hl], a                                      ; $4572: $77
  ld bc, $0008                                    ; $4573: $01 $08 $00
  ld hl, $cb36                                    ; $4576: $21 $36 $cb
  call Call_000_1248                              ; $4579: $cd $48 $12
  pop bc                                          ; $457c: $c1
  jr jr_004_45a9                                  ; $457d: $18 $2a

jr_004_457f:
  push bc                                         ; $457f: $c5
  ld hl, $cb36                                    ; $4580: $21 $36 $cb
  ld c, [hl]                                      ; $4583: $4e
  inc hl                                          ; $4584: $23
  ld b, [hl]                                      ; $4585: $46
  ld hl, $cb38                                    ; $4586: $21 $38 $cb
  ld e, [hl]                                      ; $4589: $5e
  inc hl                                          ; $458a: $23
  ld d, [hl]                                      ; $458b: $56
  ld hl, $001a                                    ; $458c: $21 $1a $00
  add hl, bc                                      ; $458f: $09
  ld [hl], e                                      ; $4590: $73
  inc hl                                          ; $4591: $23
  ld [hl], d                                      ; $4592: $72
  xor a                                           ; $4593: $af
  ld hl, $001c                                    ; $4594: $21 $1c $00
  add hl, bc                                      ; $4597: $09
  ld [hl], a                                      ; $4598: $77
  ld hl, $001e                                    ; $4599: $21 $1e $00
  add hl, bc                                      ; $459c: $09
  ld [hl+], a                                     ; $459d: $22
  ld [hl+], a                                     ; $459e: $22
  ld bc, $0008                                    ; $459f: $01 $08 $00
  ld hl, $cb36                                    ; $45a2: $21 $36 $cb
  call Call_000_1248                              ; $45a5: $cd $48 $12
  pop bc                                          ; $45a8: $c1

jr_004_45a9:
  call Call_000_33f3                              ; $45a9: $cd $f3 $33

  db $0a, $91, $7e

  ld hl, $7c1e                                    ; $45af: $21 $1e $7c
  call Call_000_33f3                              ; $45b2: $cd $f3 $33

  db $03, $88, $7e

  ldh a, [rSVBK]                                  ; $45b8: $f0 $70
  push af                                         ; $45ba: $f5
  ld a, $06                                       ; $45bb: $3e $06
  ldh [rSVBK], a                                  ; $45bd: $e0 $70
  ld a, [$dd05]                                   ; $45bf: $fa $05 $dd
  ld b, a                                         ; $45c2: $47
  xor a                                           ; $45c3: $af
  ld [$dd05], a                                   ; $45c4: $ea $05 $dd
  pop af                                          ; $45c7: $f1
  ldh [rSVBK], a                                  ; $45c8: $e0 $70
  ld a, b                                         ; $45ca: $78
  or a                                            ; $45cb: $b7
  ret z                                           ; $45cc: $c8

  call Call_000_33f3                              ; $45cd: $cd $f3 $33

  db $00, $ba, $18

  call Call_000_3427                              ; $45d3: $cd $27 $34

  db $03, $1b, $6e

Call_004_45d9:
  ld a, [$cb2d]                                   ; $45d9: $fa $2d $cb
  ld e, a                                         ; $45dc: $5f
  or a                                            ; $45dd: $b7
  ret z                                           ; $45de: $c8

  push bc                                         ; $45df: $c5
  ld a, [$cb30]                                   ; $45e0: $fa $30 $cb
  ld c, a                                         ; $45e3: $4f
  call Call_000_34b7                              ; $45e4: $cd $b7 $34
  push de                                         ; $45e7: $d5
  ld a, [$cb30]                                   ; $45e8: $fa $30 $cb
  ld c, a                                         ; $45eb: $4f
  call Call_000_34b7                              ; $45ec: $cd $b7 $34
  pop de                                          ; $45ef: $d1
  ld e, a                                         ; $45f0: $5f
  call Call_004_45f9                              ; $45f1: $cd $f9 $45
  call Call_004_45f9                              ; $45f4: $cd $f9 $45
  pop bc                                          ; $45f7: $c1
  ret                                             ; $45f8: $c9


Call_004_45f9:
  push hl                                         ; $45f9: $e5
  ld hl, $cb2e                                    ; $45fa: $21 $2e $cb
  ld a, [hl+]                                     ; $45fd: $2a
  ld h, [hl]                                      ; $45fe: $66
  ld l, a                                         ; $45ff: $6f
  dec hl                                          ; $4600: $2b
  dec hl                                          ; $4601: $2b
  dec hl                                          ; $4602: $2b
  ld a, l                                         ; $4603: $7d
  ld [$cb2e], a                                   ; $4604: $ea $2e $cb
  ld a, h                                         ; $4607: $7c
  ld [$cb2f], a                                   ; $4608: $ea $2f $cb
  pop hl                                          ; $460b: $e1
  ret                                             ; $460c: $c9


  db $10                                          ; $460d: $10
  ld bc, $4d4b                                    ; $460e: $01 $4b $4d
  or c                                            ; $4611: $b1
  nop                                             ; $4612: $00
  ld b, c                                         ; $4613: $41
  jr z, jr_004_465c                               ; $4614: $28 $46

  ld sp, $3a46                                    ; $4616: $31 $46 $3a
  ld b, [hl]                                      ; $4619: $46
  ld b, e                                         ; $461a: $43
  ld b, [hl]                                      ; $461b: $46
  ld c, h                                         ; $461c: $4c
  ld b, [hl]                                      ; $461d: $46
  ld d, l                                         ; $461e: $55
  ld b, [hl]                                      ; $461f: $46
  ld e, [hl]                                      ; $4620: $5e
  ld b, [hl]                                      ; $4621: $46
  ld h, a                                         ; $4622: $67
  ld b, [hl]                                      ; $4623: $46
  ld [hl], b                                      ; $4624: $70
  ld b, [hl]                                      ; $4625: $46
  ld a, c                                         ; $4626: $79
  ld b, [hl]                                      ; $4627: $46
  ld bc, $e008                                    ; $4628: $01 $08 $e0
  nop                                             ; $462b: $00
  nop                                             ; $462c: $00
  inc b                                           ; $462d: $04
  inc b                                           ; $462e: $04
  nop                                             ; $462f: $00
  ld a, [bc]                                      ; $4630: $0a
  ld bc, $f008                                    ; $4631: $01 $08 $f0
  nop                                             ; $4634: $00
  nop                                             ; $4635: $00
  inc b                                           ; $4636: $04
  inc b                                           ; $4637: $04
  inc b                                           ; $4638: $04
  ld a, [bc]                                      ; $4639: $0a
  ld bc, $0008                                    ; $463a: $01 $08 $00
  nop                                             ; $463d: $00
  nop                                             ; $463e: $00
  inc b                                           ; $463f: $04
  inc b                                           ; $4640: $04
  ld [$010a], sp                                  ; $4641: $08 $0a $01
  ld [$0010], sp                                  ; $4644: $08 $10 $00
  nop                                             ; $4647: $00
  inc b                                           ; $4648: $04
  inc b                                           ; $4649: $04
  inc c                                           ; $464a: $0c
  ld a, [bc]                                      ; $464b: $0a
  ld bc, $2008                                    ; $464c: $01 $08 $20
  nop                                             ; $464f: $00
  nop                                             ; $4650: $00
  inc b                                           ; $4651: $04
  inc b                                           ; $4652: $04
  db $10                                          ; $4653: $10
  ld a, [bc]                                      ; $4654: $0a
  ld bc, $3008                                    ; $4655: $01 $08 $30
  nop                                             ; $4658: $00
  nop                                             ; $4659: $00
  inc b                                           ; $465a: $04
  inc b                                           ; $465b: $04

jr_004_465c:
  nop                                             ; $465c: $00
  ld c, $01                                       ; $465d: $0e $01
  ld [$0040], sp                                  ; $465f: $08 $40 $00
  nop                                             ; $4662: $00
  inc b                                           ; $4663: $04
  inc b                                           ; $4664: $04
  inc b                                           ; $4665: $04
  ld c, $01                                       ; $4666: $0e $01
  ld [$0050], sp                                  ; $4668: $08 $50 $00
  nop                                             ; $466b: $00
  inc b                                           ; $466c: $04
  inc b                                           ; $466d: $04
  ld [$010e], sp                                  ; $466e: $08 $0e $01
  ld [$0060], sp                                  ; $4671: $08 $60 $00
  nop                                             ; $4674: $00
  inc b                                           ; $4675: $04
  inc b                                           ; $4676: $04
  inc c                                           ; $4677: $0c
  ld c, $01                                       ; $4678: $0e $01
  ld [$0070], sp                                  ; $467a: $08 $70 $00
  nop                                             ; $467d: $00
  inc b                                           ; $467e: $04
  inc b                                           ; $467f: $04
  db $10                                          ; $4680: $10
  ld c, $76                                       ; $4681: $0e $76
  ld h, h                                         ; $4683: $64
  ld a, c                                         ; $4684: $79
  ld h, h                                         ; $4685: $64
  ld a, h                                         ; $4686: $7c
  ld h, h                                         ; $4687: $64
  ld a, a                                         ; $4688: $7f
  ld h, h                                         ; $4689: $64
  add d                                           ; $468a: $82
  ld h, h                                         ; $468b: $64
  add l                                           ; $468c: $85
  ld h, h                                         ; $468d: $64
  adc b                                           ; $468e: $88
  ld h, h                                         ; $468f: $64
  adc e                                           ; $4690: $8b
  ld h, h                                         ; $4691: $64
  adc [hl]                                        ; $4692: $8e
  ld h, h                                         ; $4693: $64
  sub c                                           ; $4694: $91
  ld h, h                                         ; $4695: $64
  sub h                                           ; $4696: $94
  ld h, h                                         ; $4697: $64

Call_004_4698:
  ld hl, $460d                                    ; $4698: $21 $0d $46
  call Call_000_3013                              ; $469b: $cd $13 $30
  ld a, $68                                       ; $469e: $3e $68
  ld [$c159], a                                   ; $46a0: $ea $59 $c1
  ld a, $08                                       ; $46a3: $3e $08
  ld [$c1a2], a                                   ; $46a5: $ea $a2 $c1
  ld a, [$cb49]                                   ; $46a8: $fa $49 $cb
  ld hl, $18fd                                    ; $46ab: $21 $fd $18
  call Call_000_33f3                              ; $46ae: $cd $f3 $33
  ld bc, $6675                                    ; $46b1: $01 $75 $66
  ld a, [$c15b]                                   ; $46b4: $fa $5b $c1
  cp $02                                          ; $46b7: $fe $02
  jr nz, jr_004_46c1                              ; $46b9: $20 $06

  call Call_000_33f3                              ; $46bb: $cd $f3 $33
  ld bc, $64bd                                    ; $46be: $01 $bd $64

jr_004_46c1:
  ld a, $12                                       ; $46c1: $3e $12
  call Call_000_33f3                              ; $46c3: $cd $f3 $33
  ld bc, $64b9                                    ; $46c6: $01 $b9 $64
  ld a, [$cb49]                                   ; $46c9: $fa $49 $cb
  ld hl, $1a35                                    ; $46cc: $21 $35 $1a
  call Call_000_3427                              ; $46cf: $cd $27 $34
  ld bc, $6675                                    ; $46d2: $01 $75 $66
  push bc                                         ; $46d5: $c5
  ldh a, [rSVBK]                                  ; $46d6: $f0 $70
  push af                                         ; $46d8: $f5
  ld a, $06                                       ; $46d9: $3e $06
  ldh [rSVBK], a                                  ; $46db: $e0 $70
  ld c, $00                                       ; $46dd: $0e $00
  ld b, $65                                       ; $46df: $06 $65
  ld hl, $dc4d                                    ; $46e1: $21 $4d $dc

jr_004_46e4:
  ld a, [hl+]                                     ; $46e4: $2a
  or a                                            ; $46e5: $b7
  jr z, jr_004_46e9                               ; $46e6: $28 $01

  inc c                                           ; $46e8: $0c

jr_004_46e9:
  dec b                                           ; $46e9: $05
  jr nz, jr_004_46e4                              ; $46ea: $20 $f8

  pop af                                          ; $46ec: $f1
  ldh [rSVBK], a                                  ; $46ed: $e0 $70
  ld a, c                                         ; $46ef: $79
  pop bc                                          ; $46f0: $c1
  ret                                             ; $46f1: $c9


Call_004_46f2:
  push hl                                         ; $46f2: $e5
  ld c, a                                         ; $46f3: $4f
  ldh a, [rSVBK]                                  ; $46f4: $f0 $70
  push af                                         ; $46f6: $f5
  ld a, $06                                       ; $46f7: $3e $06
  ldh [rSVBK], a                                  ; $46f9: $e0 $70
  ld a, c                                         ; $46fb: $79
  ld hl, $dc4d                                    ; $46fc: $21 $4d $dc
  rst $08                                         ; $46ff: $cf
  cp $09                                          ; $4700: $fe $09
  jr z, jr_004_4713                               ; $4702: $28 $0f

  inc [hl]                                        ; $4704: $34
  pop af                                          ; $4705: $f1
  ldh [rSVBK], a                                  ; $4706: $e0 $70
  ld hl, $ce9e                                    ; $4708: $21 $9e $ce
  call Call_004_4719                              ; $470b: $cd $19 $47
  ld a, $01                                       ; $470e: $3e $01
  or a                                            ; $4710: $b7
  pop hl                                          ; $4711: $e1
  ret                                             ; $4712: $c9


jr_004_4713:
  pop af                                          ; $4713: $f1
  ldh [rSVBK], a                                  ; $4714: $e0 $70
  xor a                                           ; $4716: $af
  pop hl                                          ; $4717: $e1
  ret                                             ; $4718: $c9


Call_004_4719:
  ld b, $0a                                       ; $4719: $06 $0a

jr_004_471b:
  ld a, [hl]                                      ; $471b: $7e
  inc a                                           ; $471c: $3c
  jr nz, jr_004_4721                              ; $471d: $20 $02

  ld [hl], c                                      ; $471f: $71
  ret                                             ; $4720: $c9


jr_004_4721:
  inc hl                                          ; $4721: $23
  dec b                                           ; $4722: $05
  jr nz, jr_004_471b                              ; $4723: $20 $f6

  dec hl                                          ; $4725: $2b
  ld [hl], c                                      ; $4726: $71
  ret                                             ; $4727: $c9


Call_004_4728:
  push hl                                         ; $4728: $e5
  ldh [$ffbd], a                                  ; $4729: $e0 $bd
  ldh a, [rSVBK]                                  ; $472b: $f0 $70
  push af                                         ; $472d: $f5
  ld a, $06                                       ; $472e: $3e $06
  ldh [rSVBK], a                                  ; $4730: $e0 $70
  ldh a, [$ffbd]                                  ; $4732: $f0 $bd
  ld hl, $dc4d                                    ; $4734: $21 $4d $dc
  rst $08                                         ; $4737: $cf
  dec [hl]                                        ; $4738: $35
  pop af                                          ; $4739: $f1
  ldh [rSVBK], a                                  ; $473a: $e0 $70
  pop hl                                          ; $473c: $e1
  ret                                             ; $473d: $c9


Call_004_473e:
  call Call_000_35e1                              ; $473e: $cd $e1 $35
  nop                                             ; $4741: $00
  nop                                             ; $4742: $00
  rlca                                            ; $4743: $07
  rlca                                            ; $4744: $07
  ld bc, $0000                                    ; $4745: $01 $00 $00
  ld de, $d02d                                    ; $4748: $11 $2d $d0
  xor a                                           ; $474b: $af
  ld hl, $5420                                    ; $474c: $21 $20 $54
  call Call_000_3427                              ; $474f: $cd $27 $34
  nop                                             ; $4752: $00
  ld a, h                                         ; $4753: $7c
  inc sp                                          ; $4754: $33

Call_004_4755:
  ld hl, $ffb9                                    ; $4755: $21 $b9 $ff
  ld [hl], $80                                    ; $4758: $36 $80
  inc hl                                          ; $475a: $23
  ld [hl], $00                                    ; $475b: $36 $00
  ld a, [$cb49]                                   ; $475d: $fa $49 $cb
  ld hl, $52eb                                    ; $4760: $21 $eb $52
  call Call_000_3427                              ; $4763: $cd $27 $34
  nop                                             ; $4766: $00
  halt                                            ; $4767: $76
  ld a, [hl+]                                     ; $4768: $2a

Call_004_4769:
  push hl                                         ; $4769: $e5
  ld hl, $cb4c                                    ; $476a: $21 $4c $cb

jr_004_476d:
  cp [hl]                                         ; $476d: $be
  inc hl                                          ; $476e: $23
  jr z, jr_004_4774                               ; $476f: $28 $03

  inc hl                                          ; $4771: $23
  jr jr_004_476d                                  ; $4772: $18 $f9

jr_004_4774:
  ld a, [hl]                                      ; $4774: $7e
  or a                                            ; $4775: $b7
  pop hl                                          ; $4776: $e1
  ret                                             ; $4777: $c9


Call_004_4778:
  ld hl, $ffb9                                    ; $4778: $21 $b9 $ff
  ld [hl], $60                                    ; $477b: $36 $60
  inc hl                                          ; $477d: $23
  ld [hl], $02                                    ; $477e: $36 $02
  ld a, [$cb4b]                                   ; $4780: $fa $4b $cb
  ld b, a                                         ; $4783: $47
  ld a, [$cb4a]                                   ; $4784: $fa $4a $cb
  ld c, a                                         ; $4787: $4f

jr_004_4788:
  push bc                                         ; $4788: $c5
  ld a, b                                         ; $4789: $78
  call Call_004_4769                              ; $478a: $cd $69 $47
  ld a, b                                         ; $478d: $78
  jr nz, jr_004_4792                              ; $478e: $20 $02

  ld a, $65                                       ; $4790: $3e $65

jr_004_4792:
  ld hl, $64c7                                    ; $4792: $21 $c7 $64
  call Call_000_33f3                              ; $4795: $cd $f3 $33
  nop                                             ; $4798: $00
  halt                                            ; $4799: $76
  ld a, [hl+]                                     ; $479a: $2a
  call Call_000_33f3                              ; $479b: $cd $f3 $33
  ld bc, $4153                                    ; $479e: $01 $53 $41
  pop bc                                          ; $47a1: $c1
  inc b                                           ; $47a2: $04
  dec c                                           ; $47a3: $0d
  jr nz, jr_004_4788                              ; $47a4: $20 $e2

  ret                                             ; $47a6: $c9


Call_004_47a7:
  ld de, $5032                                    ; $47a7: $11 $32 $50
  call Call_000_1411                              ; $47aa: $cd $11 $14
  xor a                                           ; $47ad: $af

jr_004_47ae:
  push af                                         ; $47ae: $f5
  ld hl, $4614                                    ; $47af: $21 $14 $46
  call Call_000_3182                              ; $47b2: $cd $82 $31
  xor a                                           ; $47b5: $af
  call Call_000_33f3                              ; $47b6: $cd $f3 $33
  nop                                             ; $47b9: $00
  db $d3                                          ; $47ba: $d3
  ld h, $fa                                       ; $47bb: $26 $fa
  ld c, d                                         ; $47bd: $4a
  bit 3, a                                        ; $47be: $cb $5f
  pop af                                          ; $47c0: $f1
  inc a                                           ; $47c1: $3c
  cp e                                            ; $47c2: $bb
  jr nz, jr_004_47ae                              ; $47c3: $20 $e9

  ret                                             ; $47c5: $c9


Call_004_47c6:
  ld hl, $7e3f                                    ; $47c6: $21 $3f $7e
  call Call_000_33f3                              ; $47c9: $cd $f3 $33
  inc bc                                          ; $47cc: $03
  adc b                                           ; $47cd: $88
  ld a, [hl]                                      ; $47ce: $7e
  ld hl, $cc5e                                    ; $47cf: $21 $5e $cc
  ld a, [hl+]                                     ; $47d2: $2a
  ld h, [hl]                                      ; $47d3: $66
  ld l, a                                         ; $47d4: $6f
  call Call_000_38fe                              ; $47d5: $cd $fe $38
  ld b, $00                                       ; $47d8: $06 $00
  ld c, $70                                       ; $47da: $0e $70
  ld e, $14                                       ; $47dc: $1e $14
  ld d, $07                                       ; $47de: $16 $07
  ld hl, $0040                                    ; $47e0: $21 $40 $00
  call Call_000_14a1                              ; $47e3: $cd $a1 $14
  ld b, $00                                       ; $47e6: $06 $00
  ld c, $70                                       ; $47e8: $0e $70
  ld e, $07                                       ; $47ea: $1e $07
  ld d, $02                                       ; $47ec: $16 $02
  ld hl, $000d                                    ; $47ee: $21 $0d $00
  call Call_000_14a1                              ; $47f1: $cd $a1 $14
  call Call_000_3374                              ; $47f4: $cd $74 $33
  call Call_000_3363                              ; $47f7: $cd $63 $33
  jp RST_18                                       ; $47fa: $c3 $18 $00


Call_004_47fd:
  call Call_004_5197                              ; $47fd: $cd $97 $51
  rst $18                                         ; $4800: $df
  call Call_004_47c6                              ; $4801: $cd $c6 $47
  call Call_004_5206                              ; $4804: $cd $06 $52
  call Call_004_4698                              ; $4807: $cd $98 $46
  call Call_004_4755                              ; $480a: $cd $55 $47
  ld a, [$cb49]                                   ; $480d: $fa $49 $cb
  ld [$cdc2], a                                   ; $4810: $ea $c2 $cd
  call Call_004_473e                              ; $4813: $cd $3e $47
  call Call_000_3374                              ; $4816: $cd $74 $33
  call Call_000_3363                              ; $4819: $cd $63 $33
  ld hl, $7e2a                                    ; $481c: $21 $2a $7e
  call Call_000_33f3                              ; $481f: $cd $f3 $33
  inc bc                                          ; $4822: $03
  adc b                                           ; $4823: $88
  ld a, [hl]                                      ; $4824: $7e
  ld hl, $0168                                    ; $4825: $21 $68 $01
  jp Jump_000_3916                                ; $4828: $c3 $16 $39


Jump_004_482b:
  call Call_004_47c6                              ; $482b: $cd $c6 $47
  call Call_004_5206                              ; $482e: $cd $06 $52
  call Call_004_4778                              ; $4831: $cd $78 $47
  call Call_004_47a7                              ; $4834: $cd $a7 $47
  call Call_004_4698                              ; $4837: $cd $98 $46
  call Call_004_4755                              ; $483a: $cd $55 $47
  ld a, [$cb49]                                   ; $483d: $fa $49 $cb
  ld [$cdc2], a                                   ; $4840: $ea $c2 $cd
  call Call_004_473e                              ; $4843: $cd $3e $47
  call Call_000_3374                              ; $4846: $cd $74 $33
  call Call_000_3363                              ; $4849: $cd $63 $33
  ld hl, $7e2a                                    ; $484c: $21 $2a $7e
  call Call_000_33f3                              ; $484f: $cd $f3 $33
  inc bc                                          ; $4852: $03
  adc b                                           ; $4853: $88
  ld a, [hl]                                      ; $4854: $7e
  ld hl, $0168                                    ; $4855: $21 $68 $01
  jp Jump_000_3916                                ; $4858: $c3 $16 $39


  db $01, $4f, $80, $00, $00, $00, $99, $26, $00, $01, $00, $01, $01, $4e, $80, $00
  db $00, $00, $99, $26, $00, $01, $00, $01, $10, $01, $7a, $48, $28, $01, $40, $ea
  db $d1, $0a, $d2, $20, $01, $85, $48, $cd, $00, $41, $47, $d0, $67, $d0, $87, $d0
  db $e7, $d0, $47, $d1, $67, $d1, $87, $d1, $a2, $d1, $c2, $d1, $e2, $d1, $02, $d2
  db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $09, $0a, $0b, $44, $17, $18, $23, $11, $46
  db $22, $00, $01, $24, $31, $45, $20, $1f, $47, $08, $2f, $30, $36, $4a, $1c, $3a
  db $48, $25, $21, $0f, $3f, $40, $2c, $28, $32, $26

  rst $38                                         ; $48c5: $ff

  db $ff

  rst $38                                         ; $48c7: $ff

  db $13, $0d

  scf                                             ; $48ca: $37

  db $2e, $4c, $1a, $ff, $ff

  rst $38                                         ; $48d0: $ff
  rst $38                                         ; $48d1: $ff
  rst $38                                         ; $48d2: $ff
  rst $38                                         ; $48d3: $ff
  rst $38                                         ; $48d4: $ff
  rst $38                                         ; $48d5: $ff
  rst $38                                         ; $48d6: $ff
  rst $38                                         ; $48d7: $ff
  rst $38                                         ; $48d8: $ff
  dec d                                           ; $48d9: $15

  db $3c

  ld [bc], a                                      ; $48db: $02
  inc bc                                          ; $48dc: $03

  db $04

  dec b                                           ; $48de: $05

  db $06, $07, $0c, $0e, $10, $12

  inc d                                           ; $48e5: $14

  db $16, $19

  dec de                                          ; $48e8: $1b
  dec e                                           ; $48e9: $1d
  db $1e                                          ; $48ea: $1e

  db $27, $29

  ld a, [hl+]                                     ; $48ed: $2a

  db $2b

  dec l                                           ; $48ef: $2d

  db $33

  inc [hl]                                        ; $48f1: $34

  db $35

  jr c, @+$3b                                     ; $48f3: $38 $39

  db $3b, $3e

  ld b, c                                         ; $48f7: $41

  db $42, $3d

  ld b, e                                         ; $48fa: $43

  db $49, $4b

  rst $38                                         ; $48fd: $ff
  rst $38                                         ; $48fe: $ff

  db $11, $12, $40, $41, $42, $43, $44, $45, $19, $07, $08, $09, $46, $2e, $47, $23
  db $48, $0e, $49, $2d, $4a, $3e, $4b, $0b, $0c, $4c, $32, $4d, $1e, $4e, $4f, $17
  db $16, $22, $10, $0d, $13, $21, $29, $50, $27, $51, $52, $53, $26, $54, $30, $1a
  db $1b, $14, $28, $55, $56, $57, $1c, $2f, $58, $59, $1f, $5a, $3f, $5e, $5b, $24
  db $25, $5c, $5d, $5f, $0a, $15, $0f, $18, $20, $60, $1d, $61, $31

Call_004_494c:
  push hl                                         ; $494c: $e5
  ld hl, $489b                                    ; $494d: $21 $9b $48
  rst $08                                         ; $4950: $cf
  pop hl                                          ; $4951: $e1
  ret                                             ; $4952: $c9


Call_004_4953:
  push hl                                         ; $4953: $e5
  ld hl, $48ff                                    ; $4954: $21 $ff $48
  rst $08                                         ; $4957: $cf
  pop hl                                          ; $4958: $e1
  ret                                             ; $4959: $c9


  ld hl, $4867                                    ; $495a: $21 $67 $48
  jp Jump_000_2952                                ; $495d: $c3 $52 $29


  ld hl, $485b                                    ; $4960: $21 $5b $48
  jp Jump_000_2952                                ; $4963: $c3 $52 $29


  ld a, $0b                                       ; $4966: $3e $0b
  ldh [$ffc2], a                                  ; $4968: $e0 $c2
  ld a, $02                                       ; $496a: $3e $02
  ld [$c0ab], a                                   ; $496c: $ea $ab $c0
  ld hl, $53dc                                    ; $496f: $21 $dc $53
  call Call_000_33f3                              ; $4972: $cd $f3 $33

  db $01, $33, $55

  ld hl, $7b8d                                    ; $4978: $21 $8d $7b
  call Call_000_33f3                              ; $497b: $cd $f3 $33

  db $03, $88, $7e

  ldh a, [$ffce]                                  ; $4981: $f0 $ce
  ld hl, $4989                                    ; $4983: $21 $89 $49
  call Call_000_33f3                              ; $4986: $cd $f3 $33

  db $06, $f0, $50

  ld hl, $ffb9                                    ; $498c: $21 $b9 $ff
  ld [hl], $00                                    ; $498f: $36 $00
  inc hl                                          ; $4991: $23
  ld [hl], $00                                    ; $4992: $36 $00
  ld a, $85                                       ; $4994: $3e $85
  call Call_000_33f3                              ; $4996: $cd $f3 $33

  db $00, $3c, $12

  ld a, $01                                       ; $499c: $3e $01
  ldh [$ff9a], a                                  ; $499e: $e0 $9a
  ld a, $85                                       ; $49a0: $3e $85
  call Call_000_04e0                              ; $49a2: $cd $e0 $04
  call Call_004_4a1a                              ; $49a5: $cd $1a $4a

Jump_004_49a8:
  ld a, $a6                                       ; $49a8: $3e $a6
  ld e, $ff                                       ; $49aa: $1e $ff
  call Call_000_0a46                              ; $49ac: $cd $46 $0a
  ld c, l                                         ; $49af: $4d
  ld b, h                                         ; $49b0: $44
  call z, Call_000_0dbb                           ; $49b1: $cc $bb $0d
  rst $18                                         ; $49b4: $df
  ld c, $93                                       ; $49b5: $0e $93
  ld de, $0610                                    ; $49b7: $11 $10 $06
  ld hl, $0162                                    ; $49ba: $21 $62 $01
  call Call_000_149f                              ; $49bd: $cd $9f $14
  rst $20                                         ; $49c0: $e7
  call Call_000_3363                              ; $49c1: $cd $63 $33
  ldh a, [$ffcf]                                  ; $49c4: $f0 $cf
  call Call_004_4953                              ; $49c6: $cd $53 $49
  sub $07                                         ; $49c9: $d6 $07
  ld hl, $ce4b                                    ; $49cb: $21 $4b $ce
  call Call_000_32c8                              ; $49ce: $cd $c8 $32
  jr nz, jr_004_49da                              ; $49d1: $20 $07

  ld hl, $ce5b                                    ; $49d3: $21 $5b $ce
  call Call_000_32c8                              ; $49d6: $cd $c8 $32
  ret z                                           ; $49d9: $c8

jr_004_49da:
  ld hl, $4873                                    ; $49da: $21 $73 $48
  call Call_000_3013                              ; $49dd: $cd $13 $30
  ld a, $80                                       ; $49e0: $3e $80
  ld [$c159], a                                   ; $49e2: $ea $59 $c1
  ld a, $01                                       ; $49e5: $3e $01
  ld [$c1a2], a                                   ; $49e7: $ea $a2 $c1
  ldh a, [$ffcf]                                  ; $49ea: $f0 $cf
  ld hl, $21d9                                    ; $49ec: $21 $d9 $21
  call Call_000_33f3                              ; $49ef: $cd $f3 $33

  db $01, $75, $66

  ld hl, $21ca                                    ; $49f5: $21 $ca $21
  call Call_000_33f3                              ; $49f8: $cd $f3 $33

  db $01, $28, $66

  ldh a, [$ffcf]                                  ; $49fe: $f0 $cf
  call Call_004_4953                              ; $4a00: $cd $53 $49
  ldh [$ff9a], a                                  ; $4a03: $e0 $9a
  ld hl, $ff9b                                    ; $4a05: $21 $9b $ff
  ld [hl], $50                                    ; $4a08: $36 $50
  inc hl                                          ; $4a0a: $23
  ld [hl], $00                                    ; $4a0b: $36 $00
  ld hl, $ff9d                                    ; $4a0d: $21 $9d $ff
  ld [hl], $70                                    ; $4a10: $36 $70
  inc hl                                          ; $4a12: $23
  ld [hl], $00                                    ; $4a13: $36 $00
  ld a, $a6                                       ; $4a15: $3e $a6
  jp Jump_000_04e0                                ; $4a17: $c3 $e0 $04


Call_004_4a1a:
  ld b, $4d                                       ; $4a1a: $06 $4d

jr_004_4a1c:
  ld c, $01                                       ; $4a1c: $0e $01
  ld a, $4d                                       ; $4a1e: $3e $4d
  sub b                                           ; $4a20: $90
  call Call_004_4953                              ; $4a21: $cd $53 $49
  sub $07                                         ; $4a24: $d6 $07
  ld hl, $ce4b                                    ; $4a26: $21 $4b $ce
  call Call_000_32c8                              ; $4a29: $cd $c8 $32
  jr nz, jr_004_4a38                              ; $4a2c: $20 $0a

  ld c, $02                                       ; $4a2e: $0e $02
  ld hl, $ce5b                                    ; $4a30: $21 $5b $ce
  call Call_000_32c8                              ; $4a33: $cd $c8 $32
  jr z, jr_004_4a63                               ; $4a36: $28 $2b

jr_004_4a38:
  add $07                                         ; $4a38: $c6 $07
  call Call_004_494c                              ; $4a3a: $cd $4c $49
  ld l, $0e                                       ; $4a3d: $2e $0e
  ld h, a                                         ; $4a3f: $67
  call $00b0                                      ; $4a40: $cd $b0 $00
  push hl                                         ; $4a43: $e5
  ld l, h                                         ; $4a44: $6c
  ld h, $00                                       ; $4a45: $26 $00
  call Call_000_01f5                              ; $4a47: $cd $f5 $01
  pop de                                          ; $4a4a: $d1
  ld d, $00                                       ; $4a4b: $16 $00
  add hl, de                                      ; $4a4d: $19
  ldh a, [rSVBK]                                  ; $4a4e: $f0 $70
  push af                                         ; $4a50: $f5
  ld a, $03                                       ; $4a51: $3e $03
  ldh [rSVBK], a                                  ; $4a53: $e0 $70
  ld de, $d083                                    ; $4a55: $11 $83 $d0
  add hl, de                                      ; $4a58: $19
  ld [hl], c                                      ; $4a59: $71
  ld de, $0500                                    ; $4a5a: $11 $00 $05
  add hl, de                                      ; $4a5d: $19
  ld [hl], $04                                    ; $4a5e: $36 $04
  pop af                                          ; $4a60: $f1
  ldh [rSVBK], a                                  ; $4a61: $e0 $70

jr_004_4a63:
  dec b                                           ; $4a63: $05
  jr nz, jr_004_4a1c                              ; $4a64: $20 $b6

  ret                                             ; $4a66: $c9


  ld a, $02                                       ; $4a67: $3e $02
  ld [$c0ab], a                                   ; $4a69: $ea $ab $c0
  ld hl, $53dc                                    ; $4a6c: $21 $dc $53
  call Call_000_33f3                              ; $4a6f: $cd $f3 $33

  db $01, $33, $55

  ld hl, $7b8d                                    ; $4a75: $21 $8d $7b
  call Call_000_33f3                              ; $4a78: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $ff9b                                    ; $4a7e: $21 $9b $ff
  ld [hl], $24                                    ; $4a81: $36 $24
  inc hl                                          ; $4a83: $23
  ld [hl], $00                                    ; $4a84: $36 $00
  ld hl, $ff9d                                    ; $4a86: $21 $9d $ff
  ld [hl], $48                                    ; $4a89: $36 $48
  inc hl                                          ; $4a8b: $23
  ld [hl], $00                                    ; $4a8c: $36 $00
  ldh a, [$ffce]                                  ; $4a8e: $f0 $ce
  call Call_004_4953                              ; $4a90: $cd $53 $49
  ldh [$ff9a], a                                  ; $4a93: $e0 $9a
  ld a, $a6                                       ; $4a95: $3e $a6
  call Call_000_04e0                              ; $4a97: $cd $e0 $04
  call Call_004_4b45                              ; $4a9a: $cd $45 $4b
  call Call_004_4b22                              ; $4a9d: $cd $22 $4b
  ld [$cbc8], a                                   ; $4aa0: $ea $c8 $cb
  ld a, $05                                       ; $4aa3: $3e $05
  ld [$cbc9], a                                   ; $4aa5: $ea $c9 $cb
  xor a                                           ; $4aa8: $af
  ld [$cbca], a                                   ; $4aa9: $ea $ca $cb
  ld hl, $ffb9                                    ; $4aac: $21 $b9 $ff
  ld [hl], $00                                    ; $4aaf: $36 $00
  inc hl                                          ; $4ab1: $23
  ld [hl], $02                                    ; $4ab2: $36 $02
  ld a, $09                                       ; $4ab4: $3e $09
  ld hl, $5972                                    ; $4ab6: $21 $72 $59
  call Call_000_33f3                              ; $4ab9: $cd $f3 $33

  db $00, $60, $2a

  call Call_000_33f3                              ; $4abf: $cd $f3 $33

  db $01, $53, $41

  xor a                                           ; $4ac5: $af
  ld d, $04                                       ; $4ac6: $16 $04
  ld e, $04                                       ; $4ac8: $1e $04
  ld hl, $64bb                                    ; $4aca: $21 $bb $64
  call Call_000_3427                              ; $4acd: $cd $27 $34

  db $00, $b8, $27

Jump_004_4ad3:
  ld a, $a6                                       ; $4ad3: $3e $a6
  ld e, $ff                                       ; $4ad5: $1e $ff
  call Call_000_0a46                              ; $4ad7: $cd $46 $0a
  ld c, l                                         ; $4ada: $4d
  ld b, h                                         ; $4adb: $44
  call z, Call_000_0dbb                           ; $4adc: $cc $bb $0d
  rst $18                                         ; $4adf: $df
  ld b, $01                                       ; $4ae0: $06 $01
  ld c, $8d                                       ; $4ae2: $0e $8d
  ld d, $0f                                       ; $4ae4: $16 $0f
  ld e, $0b                                       ; $4ae6: $1e $0b
  ld hl, $0047                                    ; $4ae8: $21 $47 $00
  call Call_000_14a1                              ; $4aeb: $cd $a1 $14
  ld b, $01                                       ; $4aee: $06 $01
  ld c, $8d                                       ; $4af0: $0e $8d
  ld d, $04                                       ; $4af2: $16 $04
  ld e, $05                                       ; $4af4: $1e $05
  ld hl, $01a2                                    ; $4af6: $21 $a2 $01
  call Call_000_14a1                              ; $4af9: $cd $a1 $14
  rst $20                                         ; $4afc: $e7
  ld hl, $ff9b                                    ; $4afd: $21 $9b $ff
  ld [hl], $24                                    ; $4b00: $36 $24
  inc hl                                          ; $4b02: $23
  ld [hl], $00                                    ; $4b03: $36 $00
  ld hl, $ff9d                                    ; $4b05: $21 $9d $ff
  ld [hl], $48                                    ; $4b08: $36 $48
  inc hl                                          ; $4b0a: $23
  ld [hl], $00                                    ; $4b0b: $36 $00
  ldh a, [$ffce]                                  ; $4b0d: $f0 $ce
  call Call_004_4953                              ; $4b0f: $cd $53 $49
  ldh [$ff9a], a                                  ; $4b12: $e0 $9a
  ld a, $a6                                       ; $4b14: $3e $a6
  call Call_000_04e0                              ; $4b16: $cd $e0 $04
  call Call_000_3363                              ; $4b19: $cd $63 $33
  rst $18                                         ; $4b1c: $df
  call Call_004_4b45                              ; $4b1d: $cd $45 $4b
  rst $20                                         ; $4b20: $e7
  ret                                             ; $4b21: $c9


Call_004_4b22:
  push bc                                         ; $4b22: $c5
  push hl                                         ; $4b23: $e5
  ld bc, $3200                                    ; $4b24: $01 $00 $32

jr_004_4b27:
  ld a, $4c                                       ; $4b27: $3e $4c
  sub b                                           ; $4b29: $90
  call Call_004_4953                              ; $4b2a: $cd $53 $49
  ld hl, $ce4b                                    ; $4b2d: $21 $4b $ce
  call Call_000_32c8                              ; $4b30: $cd $c8 $32
  jr nz, jr_004_4b3d                              ; $4b33: $20 $08

  ld hl, $ce5b                                    ; $4b35: $21 $5b $ce
  call Call_000_32c8                              ; $4b38: $cd $c8 $32
  jr z, jr_004_4b3e                               ; $4b3b: $28 $01

jr_004_4b3d:
  inc c                                           ; $4b3d: $0c

jr_004_4b3e:
  dec b                                           ; $4b3e: $05
  jr nz, jr_004_4b27                              ; $4b3f: $20 $e6

  ld a, c                                         ; $4b41: $79
  pop hl                                          ; $4b42: $e1
  pop bc                                          ; $4b43: $c1
  ret                                             ; $4b44: $c9


Call_004_4b45:
  ld hl, $487e                                    ; $4b45: $21 $7e $48
  call Call_000_3013                              ; $4b48: $cd $13 $30
  ld a, $58                                       ; $4b4b: $3e $58
  ld [$c159], a                                   ; $4b4d: $ea $59 $c1
  ld a, $02                                       ; $4b50: $3e $02
  ld [$c1a2], a                                   ; $4b52: $ea $a2 $c1
  ldh a, [$ffce]                                  ; $4b55: $f0 $ce
  ld hl, $21d9                                    ; $4b57: $21 $d9 $21
  call Call_000_33f3                              ; $4b5a: $cd $f3 $33

  db $01, $75, $66

  call Call_000_33f3                              ; $4b60: $cd $f3 $33

  db $01, $bd, $64

  ld a, $01                                       ; $4b66: $3e $01
  ld [$c1a2], a                                   ; $4b68: $ea $a2 $c1
  ldh a, [$ffce]                                  ; $4b6b: $f0 $ce
  call Call_004_4953                              ; $4b6d: $cd $53 $49
  sub $07                                         ; $4b70: $d6 $07
  ld hl, $ce4b                                    ; $4b72: $21 $4b $ce
  call Call_000_32c8                              ; $4b75: $cd $c8 $32
  ret z                                           ; $4b78: $c8

  ld hl, $21cd                                    ; $4b79: $21 $cd $21
  call Call_000_33f3                              ; $4b7c: $cd $f3 $33

  db $01, $28, $66

  call Call_004_4be8                              ; $4b82: $cd $e8 $4b
  ld hl, $21d0                                    ; $4b85: $21 $d0 $21
  call Call_000_33f3                              ; $4b88: $cd $f3 $33

  db $01, $28, $66

  call Call_004_4bc5                              ; $4b8e: $cd $c5 $4b
  ld hl, $21d6                                    ; $4b91: $21 $d6 $21
  call Call_000_33f3                              ; $4b94: $cd $f3 $33

  db $01, $28, $66

  ld a, $02                                       ; $4b9a: $3e $02
  ld [$c1a2], a                                   ; $4b9c: $ea $a2 $c1
  ldh a, [$ffce]                                  ; $4b9f: $f0 $ce
  ld hl, $23a7                                    ; $4ba1: $21 $a7 $23
  call Call_000_33f3                              ; $4ba4: $cd $f3 $33

  db $01, $75, $66

  call Call_000_33f3                              ; $4baa: $cd $f3 $33

  db $01, $bd, $64

  ld a, $04                                       ; $4bb0: $3e $04
  ld [$c1a2], a                                   ; $4bb2: $ea $a2 $c1
  ld a, $80                                       ; $4bb5: $3e $80
  ld [$c159], a                                   ; $4bb7: $ea $59 $c1
  ldh a, [$ffce]                                  ; $4bba: $f0 $ce
  ld hl, $22c0                                    ; $4bbc: $21 $c0 $22
  call Call_000_3427                              ; $4bbf: $cd $27 $34

  db $01, $75, $66

Call_004_4bc5:
  ld b, $04                                       ; $4bc5: $06 $04
  ld c, $00                                       ; $4bc7: $0e $00
  ldh a, [$ffce]                                  ; $4bc9: $f0 $ce
  call Call_004_4953                              ; $4bcb: $cd $53 $49
  sub $07                                         ; $4bce: $d6 $07
  ld e, a                                         ; $4bd0: $5f
  ld d, $09                                       ; $4bd1: $16 $09
  ld a, $08                                       ; $4bd3: $3e $08
  ld [$cb47], a                                   ; $4bd5: $ea $47 $cb

jr_004_4bd8:
  call Call_000_33f3                              ; $4bd8: $cd $f3 $33

  db $03, $44, $6c

  cp $64                                          ; $4bde: $fe $64
  call nc, Call_004_4c17                          ; $4be0: $d4 $17 $4c
  inc d                                           ; $4be3: $14
  dec b                                           ; $4be4: $05
  jr nz, jr_004_4bd8                              ; $4be5: $20 $f1

  ret                                             ; $4be7: $c9


Call_004_4be8:
  ld b, $04                                       ; $4be8: $06 $04
  ld c, $00                                       ; $4bea: $0e $00
  ldh a, [$ffce]                                  ; $4bec: $f0 $ce
  call Call_004_4953                              ; $4bee: $cd $53 $49
  sub $07                                         ; $4bf1: $d6 $07
  ld e, a                                         ; $4bf3: $5f
  ld d, $09                                       ; $4bf4: $16 $09
  ld a, $05                                       ; $4bf6: $3e $05
  ld [$cb47], a                                   ; $4bf8: $ea $47 $cb

jr_004_4bfb:
  call Call_000_33f3                              ; $4bfb: $cd $f3 $33

  db $03, $44, $6c

  cp $14                                          ; $4c01: $fe $14
  call c, Call_004_4c17                           ; $4c03: $dc $17 $4c
  inc d                                           ; $4c06: $14
  dec b                                           ; $4c07: $05
  jr nz, jr_004_4bfb                              ; $4c08: $20 $f1

  ret                                             ; $4c0a: $c9


  db $01, $0b, $80, $02, $00, $02, $02, $07, $06, $02, $04, $08

Call_004_4c17:
  push bc                                         ; $4c17: $c5
  push de                                         ; $4c18: $d5
  ld hl, $4c0b                                    ; $4c19: $21 $0b $4c
  ld de, $cb3f                                    ; $4c1c: $11 $3f $cb
  call Call_000_025d                              ; $4c1f: $cd $5d $02
  ld a, $04                                       ; $4c22: $3e $04
  sub b                                           ; $4c24: $90
  ld hl, $4c13                                    ; $4c25: $21 $13 $4c
  rst $08                                         ; $4c28: $cf
  ld [$cb42], a                                   ; $4c29: $ea $42 $cb
  ld hl, $cb46                                    ; $4c2c: $21 $46 $cb
  ld a, $04                                       ; $4c2f: $3e $04
  sub b                                           ; $4c31: $90
  add a                                           ; $4c32: $87
  add [hl]                                        ; $4c33: $86
  ld [hl], a                                      ; $4c34: $77
  ld a, $09                                       ; $4c35: $3e $09
  ld de, $cb3f                                    ; $4c37: $11 $3f $cb
  call Call_000_33f3                              ; $4c3a: $cd $f3 $33

  db $00, $e7, $26

  pop de                                          ; $4c40: $d1
  pop bc                                          ; $4c41: $c1
  ret                                             ; $4c42: $c9


  ld hl, $ceb2                                    ; $4c43: $21 $b2 $ce
  ld d, $00                                       ; $4c46: $16 $00
  call Call_004_4f47                              ; $4c48: $cd $47 $4f
  ldh a, [$ffa6]                                  ; $4c4b: $f0 $a6
  bit 0, a                                        ; $4c4d: $cb $47
  jr nz, jr_004_4c72                              ; $4c4f: $20 $21

  bit 1, a                                        ; $4c51: $cb $4f
  jr nz, jr_004_4c64                              ; $4c53: $20 $0f

  call Call_000_33f3                              ; $4c55: $cd $f3 $33

  db $06, $17, $51

  ld hl, $ffcf                                    ; $4c5b: $21 $cf $ff
  cp [hl]                                         ; $4c5e: $be
  ret z                                           ; $4c5f: $c8

  ld [hl], a                                      ; $4c60: $77
  jp Jump_004_49a8                                ; $4c61: $c3 $a8 $49


jr_004_4c64:
  ld bc, $000a                                    ; $4c64: $01 $0a $00
  ld hl, $ceb2                                    ; $4c67: $21 $b2 $ce
  ld a, $ff                                       ; $4c6a: $3e $ff
  call Call_000_1249                              ; $4c6c: $cd $49 $12
  jp Jump_004_554b                                ; $4c6f: $c3 $4b $55


jr_004_4c72:
  ldh a, [$ffcf]                                  ; $4c72: $f0 $cf
  call Call_004_4953                              ; $4c74: $cd $53 $49
  sub $07                                         ; $4c77: $d6 $07
  ld hl, $ce4b                                    ; $4c79: $21 $4b $ce
  call Call_000_32c8                              ; $4c7c: $cd $c8 $32
  jr nz, jr_004_4c88                              ; $4c7f: $20 $07

  ld hl, $ce5b                                    ; $4c81: $21 $5b $ce
  call Call_000_32c8                              ; $4c84: $cd $c8 $32
  ret z                                           ; $4c87: $c8

jr_004_4c88:
  ldh a, [$ffcf]                                  ; $4c88: $f0 $cf
  ld d, a                                         ; $4c8a: $57
  ld e, $00                                       ; $4c8b: $1e $00
  ld a, $4e                                       ; $4c8d: $3e $4e
  jp Jump_000_2621                                ; $4c8f: $c3 $21 $26


  call Call_004_4cf5                              ; $4c92: $cd $f5 $4c
  ldh a, [$ffa6]                                  ; $4c95: $f0 $a6
  or a                                            ; $4c97: $b7
  ret z                                           ; $4c98: $c8

  and $03                                         ; $4c99: $e6 $03
  jr nz, jr_004_4cec                              ; $4c9b: $20 $4f

  ldh a, [$ffa6]                                  ; $4c9d: $f0 $a6
  bit 5, a                                        ; $4c9f: $cb $6f
  jr nz, jr_004_4cc9                              ; $4ca1: $20 $26

  bit 4, a                                        ; $4ca3: $cb $67
  ret z                                           ; $4ca5: $c8

jr_004_4ca6:
  ldh a, [$ffce]                                  ; $4ca6: $f0 $ce
  inc a                                           ; $4ca8: $3c
  cp $4d                                          ; $4ca9: $fe $4d
  jr nz, jr_004_4cae                              ; $4cab: $20 $01

  xor a                                           ; $4cad: $af

jr_004_4cae:
  ldh [$ffce], a                                  ; $4cae: $e0 $ce
  call Call_004_4953                              ; $4cb0: $cd $53 $49
  sub $07                                         ; $4cb3: $d6 $07
  ld hl, $ce4b                                    ; $4cb5: $21 $4b $ce
  call Call_000_32c8                              ; $4cb8: $cd $c8 $32
  jp nz, Jump_004_4ad3                            ; $4cbb: $c2 $d3 $4a

  ld hl, $ce5b                                    ; $4cbe: $21 $5b $ce
  call Call_000_32c8                              ; $4cc1: $cd $c8 $32
  jp nz, Jump_004_4ad3                            ; $4cc4: $c2 $d3 $4a

  jr jr_004_4ca6                                  ; $4cc7: $18 $dd

jr_004_4cc9:
  ldh a, [$ffce]                                  ; $4cc9: $f0 $ce
  sub $01                                         ; $4ccb: $d6 $01
  jr nc, jr_004_4cd1                              ; $4ccd: $30 $02

  ld a, $4c                                       ; $4ccf: $3e $4c

jr_004_4cd1:
  ldh [$ffce], a                                  ; $4cd1: $e0 $ce
  call Call_004_4953                              ; $4cd3: $cd $53 $49
  sub $07                                         ; $4cd6: $d6 $07
  ld hl, $ce4b                                    ; $4cd8: $21 $4b $ce
  call Call_000_32c8                              ; $4cdb: $cd $c8 $32
  jp nz, Jump_004_4ad3                            ; $4cde: $c2 $d3 $4a

  ld hl, $ce5b                                    ; $4ce1: $21 $5b $ce
  call Call_000_32c8                              ; $4ce4: $cd $c8 $32
  jr z, jr_004_4cc9                               ; $4ce7: $28 $e0

  jp Jump_004_4ad3                                ; $4ce9: $c3 $d3 $4a


jr_004_4cec:
  ldh a, [$ffce]                                  ; $4cec: $f0 $ce
  ld d, a                                         ; $4cee: $57
  ld e, a                                         ; $4cef: $5f
  ld a, $4d                                       ; $4cf0: $3e $4d
  jp Jump_000_2621                                ; $4cf2: $c3 $21 $26


Call_004_4cf5:
  ld a, [$cbc8]                                   ; $4cf5: $fa $c8 $cb
  dec a                                           ; $4cf8: $3d
  ret z                                           ; $4cf9: $c8

  ld hl, $cbc9                                    ; $4cfa: $21 $c9 $cb
  dec [hl]                                        ; $4cfd: $35
  ret nz                                          ; $4cfe: $c0

  ld [hl], $05                                    ; $4cff: $36 $05
  ld a, [$cbca]                                   ; $4d01: $fa $ca $cb
  inc a                                           ; $4d04: $3c
  and $03                                         ; $4d05: $e6 $03
  ld [$cbca], a                                   ; $4d07: $ea $ca $cb
  cp $03                                          ; $4d0a: $fe $03
  jr nz, jr_004_4d10                              ; $4d0c: $20 $02

  ld a, $01                                       ; $4d0e: $3e $01

jr_004_4d10:
  ldh [$ffbd], a                                  ; $4d10: $e0 $bd
  ldh a, [rSVBK]                                  ; $4d12: $f0 $70
  push af                                         ; $4d14: $f5
  ld a, $03                                       ; $4d15: $3e $03
  ldh [rSVBK], a                                  ; $4d17: $e0 $70
  ldh a, [$ffbd]                                  ; $4d19: $f0 $bd
  add $c2                                         ; $4d1b: $c6 $c2
  ld [$d220], a                                   ; $4d1d: $ea $20 $d2
  sub $03                                         ; $4d20: $d6 $03
  ld [$d233], a                                   ; $4d22: $ea $33 $d2
  pop af                                          ; $4d25: $f1
  ldh [rSVBK], a                                  ; $4d26: $e0 $70
  rst $20                                         ; $4d28: $e7
  ret                                             ; $4d29: $c9


  db $01, $30, $80, $00, $00, $00, $99, $26, $00, $02, $00, $02, $01, $30, $80, $00
  db $00, $00, $99, $26, $00, $02, $00, $02, $10, $01, $49, $4d, $86, $00, $01, $20
  db $d0, $40, $d0, $60, $d0, $80, $d0, $a0, $d0, $c0, $d0, $e0, $d0, $00, $d1, $20
  db $d1, $40, $d1, $60, $d1, $80, $d1, $a0, $d1, $c0, $d1, $e0, $d1, $00, $d2, $20
  db $d2, $31, $01, $5f, $4d, $00, $01, $41, $01, $07, $e0, $00, $00, $04, $04, $10
  db $0c, $21, $36, $4d, $c3, $52, $29, $21, $2a, $4d, $c3, $52, $29, $21, $5d, $7e
  db $cd, $f3, $33, $03, $88, $7e, $18, $0c, $cd, $43, $4e, $21, $50, $7e, $cd, $f3
  db $33, $03, $88, $7e, $f0

  db $ca                                          ; $4d9f: $ca

  cp $2c                                          ; $4da0: $fe $2c
  jr z, jr_004_4db4                               ; $4da2: $28 $10

  cp $0f                                          ; $4da4: $fe $0f
  jr z, jr_004_4db4                               ; $4da6: $28 $0c

  cp $16                                          ; $4da8: $fe $16
  jr z, jr_004_4db4                               ; $4daa: $28 $08

  cp $10                                          ; $4dac: $fe $10
  jr z, jr_004_4db4                               ; $4dae: $28 $04

  cp $15                                          ; $4db0: $fe $15
  jr nz, jr_004_4db6                              ; $4db2: $20 $02

jr_004_4db4:
  ld a, $0e                                       ; $4db4: $3e $0e

jr_004_4db6:
  ld [$cb48], a                                   ; $4db6: $ea $48 $cb
  ld hl, $4d42                                    ; $4db9: $21 $42 $4d
  call Call_000_3013                              ; $4dbc: $cd $13 $30
  ld a, $54                                       ; $4dbf: $3e $54
  ld [$c159], a                                   ; $4dc1: $ea $59 $c1
  ld a, $01                                       ; $4dc4: $3e $01
  ld [$c1a2], a                                   ; $4dc6: $ea $a2 $c1
  ld b, $0b                                       ; $4dc9: $06 $0b
  ld de, $0003                                    ; $4dcb: $11 $03 $00
  ld hl, $1b6d                                    ; $4dce: $21 $6d $1b

jr_004_4dd1:
  call Call_000_33f3                              ; $4dd1: $cd $f3 $33

  db $01, $28, $66

  add hl, de                                      ; $4dd7: $19
  dec b                                           ; $4dd8: $05
  jr nz, jr_004_4dd1                              ; $4dd9: $20 $f6

  ldh a, [$ffce]                                  ; $4ddb: $f0 $ce
  ld hl, $4bf2                                    ; $4ddd: $21 $f2 $4b
  call Call_000_33f3                              ; $4de0: $cd $f3 $33

  db $06, $f0, $50

  ld hl, $ffb9                                    ; $4de6: $21 $b9 $ff
  ld [hl], $00                                    ; $4de9: $36 $00
  inc hl                                          ; $4deb: $23
  ld [hl], $00                                    ; $4dec: $36 $00
  ld a, $85                                       ; $4dee: $3e $85
  call Call_000_33f3                              ; $4df0: $cd $f3 $33

  db $00, $3c, $12

  ld a, $b1                                       ; $4df6: $3e $b1
  call Call_000_33f3                              ; $4df8: $cd $f3 $33

  db $00, $3c, $12

  xor a                                           ; $4dfe: $af
  call Call_000_33f3                              ; $4dff: $cd $f3 $33

  db $00, $68, $27

  ld a, $01                                       ; $4e05: $3e $01
  ldh [$ff9a], a                                  ; $4e07: $e0 $9a
  ld a, $85                                       ; $4e09: $3e $85
  call Call_000_04e0                              ; $4e0b: $cd $e0 $04
  xor a                                           ; $4e0e: $af
  ldh [$ff9a], a                                  ; $4e0f: $e0 $9a
  ld a, $b1                                       ; $4e11: $3e $b1
  call Call_000_04e0                              ; $4e13: $cd $e0 $04
  call Call_004_4e9a                              ; $4e16: $cd $9a $4e
  ldh a, [$ffce]                                  ; $4e19: $f0 $ce
  ldh [$ffcf], a                                  ; $4e1b: $e0 $cf
  ldh [$ffd3], a                                  ; $4e1d: $e0 $d3
  ld de, $000f                                    ; $4e1f: $11 $0f $00
  call Call_000_01ca                              ; $4e22: $cd $ca $01
  call Call_004_4fd8                              ; $4e25: $cd $d8 $4f
  xor a                                           ; $4e28: $af
  ld de, $4d72                                    ; $4e29: $11 $72 $4d
  call Call_000_33f3                              ; $4e2c: $cd $f3 $33

  db $00, $d3, $26

  call Call_004_4f9b                              ; $4e32: $cd $9b $4f
  call Call_004_4ec3                              ; $4e35: $cd $c3 $4e
  jp Jump_004_50c1                                ; $4e38: $c3 $c1 $50


  db $5e, $c0, $01, $88, $08, $00, $c4, $64

  ld hl, $4e3b                                    ; $4e43: $21 $3b $4e
  jp Jump_000_1a5c                                ; $4e46: $c3 $5c $1a


  dec b                                           ; $4e49: $05
  inc bc                                          ; $4e4a: $03
  ld b, $04                                       ; $4e4b: $06 $04
  rlca                                            ; $4e4d: $07
  ldh a, [rSVBK]                                  ; $4e4e: $f0 $70
  push af                                         ; $4e50: $f5
  ld a, $03                                       ; $4e51: $3e $03
  ldh [rSVBK], a                                  ; $4e53: $e0 $70
  ld a, c                                         ; $4e55: $79
  push de                                         ; $4e56: $d5
  call Call_004_4e7c                              ; $4e57: $cd $7c $4e
  ld de, $0400                                    ; $4e5a: $11 $00 $04
  add hl, de                                      ; $4e5d: $19
  pop de                                          ; $4e5e: $d1
  push hl                                         ; $4e5f: $e5
  ld a, d                                         ; $4e60: $7a
  sub $03                                         ; $4e61: $d6 $03
  ld hl, $4e49                                    ; $4e63: $21 $49 $4e
  rst $08                                         ; $4e66: $cf
  pop hl                                          ; $4e67: $e1
  ld [hl], a                                      ; $4e68: $77
  pop af                                          ; $4e69: $f1
  ldh [rSVBK], a                                  ; $4e6a: $e0 $70
  ret                                             ; $4e6c: $c9


Call_004_4e6d:
  ld l, e                                         ; $4e6d: $6b
  ld h, $00                                       ; $4e6e: $26 $00
  call Call_000_01f5                              ; $4e70: $cd $f5 $01
  ld a, d                                         ; $4e73: $7a
  rst $08                                         ; $4e74: $cf
  ld de, $d000                                    ; $4e75: $11 $00 $d0
  add hl, de                                      ; $4e78: $19
  ld d, h                                         ; $4e79: $54
  ld e, l                                         ; $4e7a: $5d
  ret                                             ; $4e7b: $c9


Call_004_4e7c:
  push de                                         ; $4e7c: $d5
  ld a, c                                         ; $4e7d: $79
  ldh [$ffd3], a                                  ; $4e7e: $e0 $d3
  call Call_000_33f3                              ; $4e80: $cd $f3 $33

  db $06, $80, $51

  srl e                                           ; $4e86: $cb $3b
  srl e                                           ; $4e88: $cb $3b
  srl e                                           ; $4e8a: $cb $3b
  srl d                                           ; $4e8c: $cb $3a
  srl d                                           ; $4e8e: $cb $3a
  srl d                                           ; $4e90: $cb $3a
  ld a, e                                         ; $4e92: $7b
  ld e, d                                         ; $4e93: $5a
  ld d, a                                         ; $4e94: $57
  call Call_004_4e6d                              ; $4e95: $cd $6d $4e
  pop de                                          ; $4e98: $d1
  ret                                             ; $4e99: $c9


Call_004_4e9a:
  ldh a, [rSVBK]                                  ; $4e9a: $f0 $70
  push af                                         ; $4e9c: $f5
  ld a, $06                                       ; $4e9d: $3e $06
  ldh [rSVBK], a                                  ; $4e9f: $e0 $70
  ld c, $00                                       ; $4ea1: $0e $00
  ld hl, $dc4d                                    ; $4ea3: $21 $4d $dc

jr_004_4ea6:
  ld a, [hl+]                                     ; $4ea6: $2a
  or a                                            ; $4ea7: $b7
  jr z, jr_004_4eb9                               ; $4ea8: $28 $0f

  push hl                                         ; $4eaa: $e5
  call Call_004_4e7c                              ; $4eab: $cd $7c $4e
  ld a, $03                                       ; $4eae: $3e $03
  ldh [rSVBK], a                                  ; $4eb0: $e0 $70
  ld [hl], $84                                    ; $4eb2: $36 $84
  ld a, $06                                       ; $4eb4: $3e $06
  ldh [rSVBK], a                                  ; $4eb6: $e0 $70
  pop hl                                          ; $4eb8: $e1

jr_004_4eb9:
  inc c                                           ; $4eb9: $0c
  ld a, c                                         ; $4eba: $79
  cp $65                                          ; $4ebb: $fe $65
  jr nz, jr_004_4ea6                              ; $4ebd: $20 $e7

  pop af                                          ; $4ebf: $f1
  ldh [rSVBK], a                                  ; $4ec0: $e0 $70
  ret                                             ; $4ec2: $c9


Call_004_4ec3:
  ld a, $b1                                       ; $4ec3: $3e $b1
  ld e, $ff                                       ; $4ec5: $1e $ff
  call Call_000_0a46                              ; $4ec7: $cd $46 $0a
  push hl                                         ; $4eca: $e5
  ldh a, [$ffcf]                                  ; $4ecb: $f0 $cf
  call Call_004_4ff3                              ; $4ecd: $cd $f3 $4f
  pop hl                                          ; $4ed0: $e1
  inc hl                                          ; $4ed1: $23
  ld [hl], a                                      ; $4ed2: $77
  ret                                             ; $4ed3: $c9


  ld hl, $ce9e                                    ; $4ed4: $21 $9e $ce
  ld d, $83                                       ; $4ed7: $16 $83
  call Call_004_4f47                              ; $4ed9: $cd $47 $4f
  ldh a, [$ffa6]                                  ; $4edc: $f0 $a6
  bit 0, a                                        ; $4ede: $cb $47
  jr nz, jr_004_4f05                              ; $4ee0: $20 $23

  bit 1, a                                        ; $4ee2: $cb $4f
  jr nz, jr_004_4f2e                              ; $4ee4: $20 $48

  call Call_000_33f3                              ; $4ee6: $cd $f3 $33

  db $06, $17, $51

  ld hl, $ffcf                                    ; $4eec: $21 $cf $ff
  cp [hl]                                         ; $4eef: $be
  ret z                                           ; $4ef0: $c8

  ld [hl], a                                      ; $4ef1: $77
  call Call_004_4fd8                              ; $4ef2: $cd $d8 $4f
  call Call_004_4f9b                              ; $4ef5: $cd $9b $4f
  call Call_004_4ec3                              ; $4ef8: $cd $c3 $4e
  ldh a, [$ffcd]                                  ; $4efb: $f0 $cd
  cp $2d                                          ; $4efd: $fe $2d
  jp nz, Jump_000_3374                            ; $4eff: $c2 $74 $33

  jp RST_20                                       ; $4f02: $c3 $20 $00


jr_004_4f05:
  ld a, [$cb48]                                   ; $4f05: $fa $48 $cb
  cp $30                                          ; $4f08: $fe $30
  jr nz, jr_004_4f1f                              ; $4f0a: $20 $13

  ldh a, [$ffcf]                                  ; $4f0c: $f0 $cf
  call Call_004_500d                              ; $4f0e: $cd $0d $50
  cp $65                                          ; $4f11: $fe $65
  jr nz, jr_004_4f17                              ; $4f13: $20 $02

  ld a, $ff                                       ; $4f15: $3e $ff

jr_004_4f17:
  ld d, a                                         ; $4f17: $57
  ld e, $01                                       ; $4f18: $1e $01
  ld a, $30                                       ; $4f1a: $3e $30
  jp Jump_000_2621                                ; $4f1c: $c3 $21 $26


jr_004_4f1f:
  ld a, $00                                       ; $4f1f: $3e $00
  call Call_000_392b                              ; $4f21: $cd $2b $39
  ldh a, [$ffcf]                                  ; $4f24: $f0 $cf
  ld d, a                                         ; $4f26: $57
  ld e, $00                                       ; $4f27: $1e $00
  ld a, $2c                                       ; $4f29: $3e $2c
  jp Jump_000_2621                                ; $4f2b: $c3 $21 $26


jr_004_4f2e:
  ld a, $03                                       ; $4f2e: $3e $03
  call Call_000_392b                              ; $4f30: $cd $2b $39
  ld bc, $000a                                    ; $4f33: $01 $0a $00
  ld hl, $ce9e                                    ; $4f36: $21 $9e $ce
  ld a, $ff                                       ; $4f39: $3e $ff
  call Call_000_1249                              ; $4f3b: $cd $49 $12
  ld de, $ff65                                    ; $4f3e: $11 $65 $ff
  ld a, [$cb48]                                   ; $4f41: $fa $48 $cb
  jp Jump_000_2621                                ; $4f44: $c3 $21 $26


Call_004_4f47:
  ld a, [$cb48]                                   ; $4f47: $fa $48 $cb
  cp $30                                          ; $4f4a: $fe $30
  ret z                                           ; $4f4c: $c8

  ld a, [hl]                                      ; $4f4d: $7e
  inc a                                           ; $4f4e: $3c
  ret z                                           ; $4f4f: $c8

  call Call_000_01dc                              ; $4f50: $cd $dc $01
  ret nz                                          ; $4f53: $c0

  ld a, $0a                                       ; $4f54: $3e $0a
  ld [$cd54], a                                   ; $4f56: $ea $54 $cd
  xor a                                           ; $4f59: $af
  ld [$cd55], a                                   ; $4f5a: $ea $55 $cd
  ldh a, [rSVBK]                                  ; $4f5d: $f0 $70
  push af                                         ; $4f5f: $f5
  ld a, $03                                       ; $4f60: $3e $03
  ldh [rSVBK], a                                  ; $4f62: $e0 $70
  ldh a, [$ffd3]                                  ; $4f64: $f0 $d3
  push af                                         ; $4f66: $f5
  ld a, [$cc2f]                                   ; $4f67: $fa $2f $cc
  xor $01                                         ; $4f6a: $ee $01
  ld [$cc2f], a                                   ; $4f6c: $ea $2f $cc
  ld b, $0a                                       ; $4f6f: $06 $0a

jr_004_4f71:
  ld a, [hl+]                                     ; $4f71: $2a
  cp $ff                                          ; $4f72: $fe $ff
  jr z, jr_004_4f8b                               ; $4f74: $28 $15

  ld e, $00                                       ; $4f76: $1e $00
  rla                                             ; $4f78: $17
  rr e                                            ; $4f79: $cb $1b
  rra                                             ; $4f7b: $1f
  push hl                                         ; $4f7c: $e5
  ld c, a                                         ; $4f7d: $4f
  call Call_004_4e7c                              ; $4f7e: $cd $7c $4e
  ld a, [$cc2f]                                   ; $4f81: $fa $2f $cc
  add d                                           ; $4f84: $82
  add e                                           ; $4f85: $83
  ld [hl], a                                      ; $4f86: $77
  pop hl                                          ; $4f87: $e1
  dec b                                           ; $4f88: $05
  jr nz, jr_004_4f71                              ; $4f89: $20 $e6

jr_004_4f8b:
  pop af                                          ; $4f8b: $f1
  ldh [$ffd3], a                                  ; $4f8c: $e0 $d3
  pop af                                          ; $4f8e: $f1
  ldh [rSVBK], a                                  ; $4f8f: $e0 $70
  ldh a, [$ffcd]                                  ; $4f91: $f0 $cd
  cp $2d                                          ; $4f93: $fe $2d
  jp nz, Jump_000_3374                            ; $4f95: $c2 $74 $33

  jp RST_20                                       ; $4f98: $c3 $20 $00


Call_004_4f9b:
  rst $18                                         ; $4f9b: $df
  ld c, $81                                       ; $4f9c: $0e $81
  ld e, $10                                       ; $4f9e: $1e $10
  ld d, $06                                       ; $4fa0: $16 $06
  ld hl, $0180                                    ; $4fa2: $21 $80 $01
  call Call_000_149f                              ; $4fa5: $cd $9f $14
  call Call_000_3374                              ; $4fa8: $cd $74 $33
  call Call_000_3363                              ; $4fab: $cd $63 $33
  rst $18                                         ; $4fae: $df
  ld hl, $4d6b                                    ; $4faf: $21 $6b $4d
  call Call_000_3013                              ; $4fb2: $cd $13 $30
  ld a, $7c                                       ; $4fb5: $3e $7c
  ld [$c159], a                                   ; $4fb7: $ea $59 $c1
  ld a, $05                                       ; $4fba: $3e $05
  ld [$c1a2], a                                   ; $4fbc: $ea $a2 $c1
  call Call_004_500d                              ; $4fbf: $cd $0d $50
  ld hl, $18fd                                    ; $4fc2: $21 $fd $18
  call Call_000_33f3                              ; $4fc5: $cd $f3 $33

  db $01, $75, $66

  call Call_004_500d                              ; $4fcb: $cd $0d $50
  ld hl, $1a35                                    ; $4fce: $21 $35 $1a
  call Call_000_33f3                              ; $4fd1: $cd $f3 $33

  db $01, $75, $66

  ret                                             ; $4fd7: $c9


Call_004_4fd8:
  ld hl, $ffb9                                    ; $4fd8: $21 $b9 $ff
  ld [hl], $60                                    ; $4fdb: $36 $60
  inc hl                                          ; $4fdd: $23
  ld [hl], $02                                    ; $4fde: $36 $02
  call Call_004_500d                              ; $4fe0: $cd $0d $50
  ld hl, $64c7                                    ; $4fe3: $21 $c7 $64
  call Call_000_33f3                              ; $4fe6: $cd $f3 $33

  db $00, $76, $2a

  call Call_000_33f3                              ; $4fec: $cd $f3 $33

  db $01, $53, $41

  ret                                             ; $4ff2: $c9


Call_004_4ff3:
  push hl                                         ; $4ff3: $e5
  ldh [$ffbd], a                                  ; $4ff4: $e0 $bd
  ldh a, [rSVBK]                                  ; $4ff6: $f0 $70
  push af                                         ; $4ff8: $f5
  ld a, $06                                       ; $4ff9: $3e $06
  ldh [rSVBK], a                                  ; $4ffb: $e0 $70
  ldh a, [$ffbd]                                  ; $4ffd: $f0 $bd
  ld hl, $dc4d                                    ; $4fff: $21 $4d $dc
  rst $08                                         ; $5002: $cf
  ld a, [hl]                                      ; $5003: $7e
  ldh [$ffbd], a                                  ; $5004: $e0 $bd
  pop af                                          ; $5006: $f1
  ldh [rSVBK], a                                  ; $5007: $e0 $70
  ldh a, [$ffbd]                                  ; $5009: $f0 $bd
  pop hl                                          ; $500b: $e1
  ret                                             ; $500c: $c9


Call_004_500d:
  ldh a, [$ffcf]                                  ; $500d: $f0 $cf
  call Call_004_4ff3                              ; $500f: $cd $f3 $4f
  or a                                            ; $5012: $b7
  ldh a, [$ffcf]                                  ; $5013: $f0 $cf
  ret nz                                          ; $5015: $c0

  ld a, $65                                       ; $5016: $3e $65
  ret                                             ; $5018: $c9


  ld bc, $7028                                    ; $5019: $01 $28 $70
  ld bc, $0000                                    ; $501c: $01 $00 $00
  sbc c                                           ; $501f: $99
  ld h, $00                                       ; $5020: $26 $00
  ld bc, $0100                                    ; $5022: $01 $00 $01

  db $00, $0a, $13, $1c, $26, $30, $39, $40, $4a, $54, $5d, $65

  ld h, l                                         ; $5031: $65
  ld a, [bc]                                      ; $5032: $0a
  nop                                             ; $5033: $00
  nop                                             ; $5034: $00
  dec c                                           ; $5035: $0d
  ld [de], a                                      ; $5036: $12
  inc b                                           ; $5037: $04
  inc b                                           ; $5038: $04
  nop                                             ; $5039: $00
  ld a, [bc]                                      ; $503a: $0a
  dec c                                           ; $503b: $0d
  ld [de], a                                      ; $503c: $12
  inc b                                           ; $503d: $04
  inc b                                           ; $503e: $04
  inc b                                           ; $503f: $04
  ld a, [bc]                                      ; $5040: $0a
  dec c                                           ; $5041: $0d
  ld [de], a                                      ; $5042: $12
  inc b                                           ; $5043: $04
  inc b                                           ; $5044: $04
  ld [$0d0a], sp                                  ; $5045: $08 $0a $0d
  ld [de], a                                      ; $5048: $12
  inc b                                           ; $5049: $04
  inc b                                           ; $504a: $04

jr_004_504b:
  inc c                                           ; $504b: $0c
  ld a, [bc]                                      ; $504c: $0a
  dec c                                           ; $504d: $0d
  ld [de], a                                      ; $504e: $12
  inc b                                           ; $504f: $04
  inc b                                           ; $5050: $04
  db $10                                          ; $5051: $10
  ld a, [bc]                                      ; $5052: $0a
  dec c                                           ; $5053: $0d
  ld [de], a                                      ; $5054: $12
  inc b                                           ; $5055: $04
  inc b                                           ; $5056: $04
  nop                                             ; $5057: $00
  ld c, $0d                                       ; $5058: $0e $0d
  ld [de], a                                      ; $505a: $12
  inc b                                           ; $505b: $04
  inc b                                           ; $505c: $04
  inc b                                           ; $505d: $04
  ld c, $0d                                       ; $505e: $0e $0d
  ld [de], a                                      ; $5060: $12
  inc b                                           ; $5061: $04
  inc b                                           ; $5062: $04
  ld [$0d0e], sp                                  ; $5063: $08 $0e $0d
  ld [de], a                                      ; $5066: $12
  inc b                                           ; $5067: $04
  inc b                                           ; $5068: $04
  inc c                                           ; $5069: $0c
  ld c, $0d                                       ; $506a: $0e $0d
  ld [de], a                                      ; $506c: $12
  inc b                                           ; $506d: $04
  inc b                                           ; $506e: $04
  db $10                                          ; $506f: $10
  ld c, $31                                       ; $5070: $0e $31
  ld bc, $5078                                    ; $5072: $01 $78 $50
  rst $38                                         ; $5075: $ff
  nop                                             ; $5076: $00
  ld b, c                                         ; $5077: $41
  jr nz, jr_004_504b                              ; $5078: $20 $d1

  call Call_000_38e8                              ; $507a: $cd $e8 $38
  ld a, l                                         ; $507d: $7d
  ld [$cc5e], a                                   ; $507e: $ea $5e $cc
  ld a, h                                         ; $5081: $7c
  ld [$cc5f], a                                   ; $5082: $ea $5f $cc
  ld hl, $5019                                    ; $5085: $21 $19 $50
  jp Jump_000_2952                                ; $5088: $c3 $52 $29


  call Call_004_5152                              ; $508b: $cd $52 $51
  ld a, b                                         ; $508e: $78
  ld [$cc2e], a                                   ; $508f: $ea $2e $cc
  ld a, c                                         ; $5092: $79
  ld hl, $4f1b                                    ; $5093: $21 $1b $4f
  call Call_000_33f3                              ; $5096: $cd $f3 $33
  ld b, $f0                                       ; $5099: $06 $f0
  ld d, b                                         ; $509b: $50
  call Call_004_5197                              ; $509c: $cd $97 $51
  ld hl, $ffb9                                    ; $509f: $21 $b9 $ff
  ld [hl], $00                                    ; $50a2: $36 $00
  inc hl                                          ; $50a4: $23
  ld [hl], $00                                    ; $50a5: $36 $00
  ld a, $85                                       ; $50a7: $3e $85
  call Call_000_33f3                              ; $50a9: $cd $f3 $33
  nop                                             ; $50ac: $00
  inc a                                           ; $50ad: $3c
  ld [de], a                                      ; $50ae: $12
  xor a                                           ; $50af: $af
  call Call_000_33f3                              ; $50b0: $cd $f3 $33
  nop                                             ; $50b3: $00
  ld l, b                                         ; $50b4: $68
  daa                                             ; $50b5: $27
  xor a                                           ; $50b6: $af
  ldh [$ff9a], a                                  ; $50b7: $e0 $9a
  ld a, $85                                       ; $50b9: $3e $85
  call Call_000_04e0                              ; $50bb: $cd $e0 $04
  call Call_004_51cc                              ; $50be: $cd $cc $51

Jump_004_50c1:
  ldh a, [rSVBK]                                  ; $50c1: $f0 $70
  push af                                         ; $50c3: $f5
  ld a, $03                                       ; $50c4: $3e $03
  ldh [rSVBK], a                                  ; $50c6: $e0 $70
  ld de, $9800                                    ; $50c8: $11 $00 $98
  ld hl, $d000                                    ; $50cb: $21 $00 $d0
  ld c, $23                                       ; $50ce: $0e $23
  rst $28                                         ; $50d0: $ef
  ld a, $01                                       ; $50d1: $3e $01
  ldh [rVBK], a                                   ; $50d3: $e0 $4f
  ld hl, $d500                                    ; $50d5: $21 $00 $d5
  rst $28                                         ; $50d8: $ef
  xor a                                           ; $50d9: $af
  ldh [rVBK], a                                   ; $50da: $e0 $4f
  ldh [$ffa9], a                                  ; $50dc: $e0 $a9
  pop af                                          ; $50de: $f1
  ldh [rSVBK], a                                  ; $50df: $e0 $70
  ret                                             ; $50e1: $c9


  call Call_000_33f3                              ; $50e2: $cd $f3 $33
  ld b, $17                                       ; $50e5: $06 $17
  ld d, c                                         ; $50e7: $51
  ldh a, [$ffa6]                                  ; $50e8: $f0 $a6
  or a                                            ; $50ea: $b7
  ret z                                           ; $50eb: $c8

  and $03                                         ; $50ec: $e6 $03
  jp nz, Jump_004_5134                            ; $50ee: $c2 $34 $51

  ld hl, $ffd3                                    ; $50f1: $21 $d3 $ff
  ld a, [hl]                                      ; $50f4: $7e
  cp $0b                                          ; $50f5: $fe $0b
  jr z, jr_004_511d                               ; $50f7: $28 $24

  or a                                            ; $50f9: $b7
  jr z, jr_004_5112                               ; $50fa: $28 $16

  ld a, [$cb4a]                                   ; $50fc: $fa $4a $cb
  cp [hl]                                         ; $50ff: $be
  jr nc, jr_004_510e                              ; $5100: $30 $0c

  ldh [$ffd3], a                                  ; $5102: $e0 $d3
  ldh a, [$ffa6]                                  ; $5104: $f0 $a6
  bit 4, a                                        ; $5106: $cb $67
  jr z, jr_004_510e                               ; $5108: $28 $04

  ld a, $06                                       ; $510a: $3e $06
  ldh [$ffd3], a                                  ; $510c: $e0 $d3

jr_004_510e:
  call Call_004_47fd                              ; $510e: $cd $fd $47
  ret                                             ; $5111: $c9


jr_004_5112:
  ld a, [$cc2e]                                   ; $5112: $fa $2e $cc
  sub $01                                         ; $5115: $d6 $01
  jr nc, jr_004_5126                              ; $5117: $30 $0d

  add $0b                                         ; $5119: $c6 $0b
  jr jr_004_5126                                  ; $511b: $18 $09

jr_004_511d:
  ld a, [$cc2e]                                   ; $511d: $fa $2e $cc
  inc a                                           ; $5120: $3c
  cp $0b                                          ; $5121: $fe $0b
  jr nz, jr_004_5126                              ; $5123: $20 $01

  xor a                                           ; $5125: $af

jr_004_5126:
  ld [$cc2e], a                                   ; $5126: $ea $2e $cc
  ld a, $01                                       ; $5129: $3e $01
  ldh [$ffd3], a                                  ; $512b: $e0 $d3
  call Call_004_5197                              ; $512d: $cd $97 $51
  call Call_004_51cc                              ; $5130: $cd $cc $51
  ret                                             ; $5133: $c9


Jump_004_5134:
  ld a, $00                                       ; $5134: $3e $00
  call Call_000_392b                              ; $5136: $cd $2b $39
  rst $18                                         ; $5139: $df
  call Call_004_47c6                              ; $513a: $cd $c6 $47
  rst $20                                         ; $513d: $e7
  ld hl, $cc5e                                    ; $513e: $21 $5e $cc
  ld a, [hl+]                                     ; $5141: $2a
  ld h, [hl]                                      ; $5142: $66
  ld l, a                                         ; $5143: $6f
  call Call_000_38fe                              ; $5144: $cd $fe $38
  call Call_004_524c                              ; $5147: $cd $4c $52
  ld d, a                                         ; $514a: $57
  ld e, $00                                       ; $514b: $1e $00
  ld a, $2d                                       ; $514d: $3e $2d
  jp Jump_000_2621                                ; $514f: $c3 $21 $26


Call_004_5152:
  ldh a, [$ffce]                                  ; $5152: $f0 $ce
  ld b, $ff                                       ; $5154: $06 $ff
  ld c, a                                         ; $5156: $4f
  ld hl, $5026                                    ; $5157: $21 $26 $50

jr_004_515a:
  inc b                                           ; $515a: $04
  ld a, [hl+]                                     ; $515b: $2a
  dec a                                           ; $515c: $3d
  sub c                                           ; $515d: $91
  jr c, jr_004_515a                               ; $515e: $38 $fa

  dec hl                                          ; $5160: $2b
  dec hl                                          ; $5161: $2b
  ld a, c                                         ; $5162: $79
  sub [hl]                                        ; $5163: $96
  inc a                                           ; $5164: $3c
  ld c, a                                         ; $5165: $4f
  ret                                             ; $5166: $c9


  push bc                                         ; $5167: $c5
  push hl                                         ; $5168: $e5
  ldh [$ffbd], a                                  ; $5169: $e0 $bd
  ldh a, [rSVBK]                                  ; $516b: $f0 $70
  push af                                         ; $516d: $f5
  ld a, $06                                       ; $516e: $3e $06
  ldh [rSVBK], a                                  ; $5170: $e0 $70
  ldh a, [$ffbd]                                  ; $5172: $f0 $bd
  ld hl, $5025                                    ; $5174: $21 $25 $50
  rst $08                                         ; $5177: $cf
  ld a, [hl+]                                     ; $5178: $2a
  ld c, a                                         ; $5179: $4f
  ld b, [hl]                                      ; $517a: $46
  ld a, b                                         ; $517b: $78
  sub c                                           ; $517c: $91
  ld b, a                                         ; $517d: $47
  ld a, c                                         ; $517e: $79
  ld hl, $dc4d                                    ; $517f: $21 $4d $dc
  rst $08                                         ; $5182: $cf

jr_004_5183:
  ld a, [hl+]                                     ; $5183: $2a
  or a                                            ; $5184: $b7
  jr z, jr_004_518c                               ; $5185: $28 $05

  dec b                                           ; $5187: $05
  jr nz, jr_004_5183                              ; $5188: $20 $f9

  ld a, $01                                       ; $518a: $3e $01

jr_004_518c:
  ldh [$ffbd], a                                  ; $518c: $e0 $bd
  pop af                                          ; $518e: $f1
  ldh [rSVBK], a                                  ; $518f: $e0 $70
  ldh a, [$ffbd]                                  ; $5191: $f0 $bd
  pop hl                                          ; $5193: $e1
  pop bc                                          ; $5194: $c1
  or a                                            ; $5195: $b7
  ret                                             ; $5196: $c9


Call_004_5197:
  call Call_004_5237                              ; $5197: $cd $37 $52
  ld [$cb4b], a                                   ; $519a: $ea $4b $cb
  call Call_004_51ad                              ; $519d: $cd $ad $51
  call Call_004_5255                              ; $51a0: $cd $55 $52
  ld [$cb49], a                                   ; $51a3: $ea $49 $cb
  call Call_004_5240                              ; $51a6: $cd $40 $52
  ld [$cb4a], a                                   ; $51a9: $ea $4a $cb
  ret                                             ; $51ac: $c9


Call_004_51ad:
  ld c, a                                         ; $51ad: $4f
  ld hl, $dc4d                                    ; $51ae: $21 $4d $dc
  rst $08                                         ; $51b1: $cf
  ld de, $cb4c                                    ; $51b2: $11 $4c $cb
  ld b, $0a                                       ; $51b5: $06 $0a
  ldh a, [rSVBK]                                  ; $51b7: $f0 $70
  push af                                         ; $51b9: $f5
  ld a, $06                                       ; $51ba: $3e $06
  ldh [rSVBK], a                                  ; $51bc: $e0 $70

jr_004_51be:
  ld a, c                                         ; $51be: $79
  ld [de], a                                      ; $51bf: $12
  inc de                                          ; $51c0: $13
  inc c                                           ; $51c1: $0c
  ld a, [hl+]                                     ; $51c2: $2a
  ld [de], a                                      ; $51c3: $12
  inc de                                          ; $51c4: $13
  dec b                                           ; $51c5: $05
  jr nz, jr_004_51be                              ; $51c6: $20 $f6

  pop af                                          ; $51c8: $f1
  ldh [rSVBK], a                                  ; $51c9: $e0 $70
  ret                                             ; $51cb: $c9


Call_004_51cc:
  rst $18                                         ; $51cc: $df
  call Call_004_51d3                              ; $51cd: $cd $d3 $51
  jp Jump_004_482b                                ; $51d0: $c3 $2b $48


Call_004_51d3:
  ld b, $01                                       ; $51d3: $06 $01
  ld c, $71                                       ; $51d5: $0e $71
  ld e, $14                                       ; $51d7: $1e $14
  ld d, $09                                       ; $51d9: $16 $09
  ld hl, $0120                                    ; $51db: $21 $20 $01
  call Call_000_14a1                              ; $51de: $cd $a1 $14
  ld hl, $5071                                    ; $51e1: $21 $71 $50
  call Call_000_3013                              ; $51e4: $cd $13 $30
  ld a, $a0                                       ; $51e7: $3e $a0
  ld [$c159], a                                   ; $51e9: $ea $59 $c1
  ld a, $01                                       ; $51ec: $3e $01
  ld [$c1a2], a                                   ; $51ee: $ea $a2 $c1
  ld a, [$cc2e]                                   ; $51f1: $fa $2e $cc
  ld hl, $1b6d                                    ; $51f4: $21 $6d $1b
  call Call_000_33f3                              ; $51f7: $cd $f3 $33
  ld bc, $6675                                    ; $51fa: $01 $75 $66
  ret                                             ; $51fd: $c9


  ld e, [hl]                                      ; $51fe: $5e
  ret nz                                          ; $51ff: $c0

  ld [bc], a                                      ; $5200: $02
  add b                                           ; $5201: $80
  nop                                             ; $5202: $00
  nop                                             ; $5203: $00
  halt                                            ; $5204: $76
  ld h, h                                         ; $5205: $64

Call_004_5206:
  ld de, $c077                                    ; $5206: $11 $77 $c0
  ld hl, $51fe                                    ; $5209: $21 $fe $51
  call Call_000_025d                              ; $520c: $cd $5d $02
  ld a, [$cc2e]                                   ; $520f: $fa $2e $cc
  ld hl, $4682                                    ; $5212: $21 $82 $46
  call ResolveIndexedPointer16                              ; $5215: $cd $8b $31
  ld a, l                                         ; $5218: $7d
  ld [$c07d], a                                   ; $5219: $ea $7d $c0
  ld a, h                                         ; $521c: $7c
  ld [$c07e], a                                   ; $521d: $ea $7e $c0
  ld hl, $c077                                    ; $5220: $21 $77 $c0
  call Call_000_1a61                              ; $5223: $cd $61 $1a
  ld a, $38                                       ; $5226: $3e $38
  ld [$c07f], a                                   ; $5228: $ea $7f $c0
  ld a, [$cb49]                                   ; $522b: $fa $49 $cb
  ld hl, $5423                                    ; $522e: $21 $23 $54
  call Call_000_3427                              ; $5231: $cd $27 $34
  nop                                             ; $5234: $00
  or c                                            ; $5235: $b1
  db $10                                          ; $5236: $10

Call_004_5237:
  ld a, [$cc2e]                                   ; $5237: $fa $2e $cc
  ld hl, $5025                                    ; $523a: $21 $25 $50
  jp ResolveIndexedPointer8                                       ; $523d: $c3 $08 $00


Call_004_5240:
  push hl                                         ; $5240: $e5
  ld a, [$cc2e]                                   ; $5241: $fa $2e $cc
  ld hl, $5026                                    ; $5244: $21 $26 $50
  rst $08                                         ; $5247: $cf
  ld a, [hl-]                                     ; $5248: $3a
  sub [hl]                                        ; $5249: $96
  pop hl                                          ; $524a: $e1
  ret                                             ; $524b: $c9


Call_004_524c:
  call Call_004_5237                              ; $524c: $cd $37 $52
  ld hl, $ffd3                                    ; $524f: $21 $d3 $ff
  add [hl]                                        ; $5252: $86
  dec a                                           ; $5253: $3d
  ret                                             ; $5254: $c9


Call_004_5255:
  call Call_004_524c                              ; $5255: $cd $4c $52
  ld l, a                                         ; $5258: $6f
  call Call_004_4769                              ; $5259: $cd $69 $47
  ld a, l                                         ; $525c: $7d
  ret nz                                          ; $525d: $c0

  ld a, $65                                       ; $525e: $3e $65
  ret                                             ; $5260: $c9


  db $01, $29, $80, $00, $00, $00, $99, $26, $01, $01, $01, $01, $73, $52, $7c, $52
  db $85, $52, $01, $0b, $e0, $00, $00, $04, $04, $01, $09, $01, $0b, $f0, $00, $00
  db $04, $04, $06, $09, $01, $0b, $00, $00, $00, $04, $04, $0b, $09, $94, $52, $9d
  db $52, $a6, $52, $01, $0c, $e0, $00, $00, $04, $04, $01, $09, $01, $0c, $f0, $00
  db $00, $04, $04, $06, $09, $01, $0c, $00, $00, $00, $04, $04, $0b, $09, $01, $00
  db $00, $03, $12, $02, $02, $11, $0a, $01, $00, $00, $07, $12, $02, $02, $11, $0a
  db $01, $00, $00, $05, $12, $02, $02, $11, $0a

  ld bc, $0080                                    ; $52ca: $01 $80 $00
  ld [bc], a                                      ; $52cd: $02
  inc d                                           ; $52ce: $14
  db $10                                          ; $52cf: $10
  rlca                                            ; $52d0: $07
  ld [bc], a                                      ; $52d1: $02
  ld b, $10                                       ; $52d2: $06 $10
  ld bc, $52da                                    ; $52d4: $01 $da $52
  nop                                             ; $52d7: $00
  ld [bc], a                                      ; $52d8: $02
  ld b, b                                         ; $52d9: $40
  ld [$0ad0], a                                   ; $52da: $ea $d0 $0a
  pop de                                          ; $52dd: $d1
  ld a, [hl+]                                     ; $52de: $2a
  pop de                                          ; $52df: $d1
  ld c, d                                         ; $52e0: $4a
  pop de                                          ; $52e1: $d1
  ld l, d                                         ; $52e2: $6a
  pop de                                          ; $52e3: $d1

  db $23, $01, $eb, $52, $10, $01, $41, $a1, $d1, $c1, $d1, $e1, $d1, $01, $d2, $21
  db $d2, $13, $03, $36, $43, $4b, $55, $0a, $0c, $41, $38, $28, $09, $01, $04, $07
  db $02, $5e, $64, $43, $62, $40, $0f, $1d, $00, $3a, $4f, $52, $4c, $4e, $50, $11
  db $45, $42, $45, $44, $49, $27, $28, $10, $2a, $18, $32, $06, $09, $3e, $3c, $2b
  db $37, $13, $4e, $2c, $12, $16, $0e, $4a, $4d, $57

  ld sp, $3621                                    ; $532e: $31 $21 $36

  db $11, $15, $3d

  ld e, $20                                       ; $5334: $1e $20
  ld hl, $5854                                    ; $5336: $21 $54 $58
  ld e, c                                         ; $5339: $59
  inc hl                                          ; $533a: $23
  dec h                                           ; $533b: $25
  ld e, a                                         ; $533c: $5f
  dec b                                           ; $533d: $05
  db $08                                          ; $533e: $08
  ld h, c                                         ; $533f: $61

  db $3b, $39, $03, $3b, $34, $42

  jr nc, @+$35                                    ; $5346: $30 $33

  dec [hl]                                        ; $5348: $35
  ld b, [hl]                                      ; $5349: $46
  ld c, b                                         ; $534a: $48
  ld b, a                                         ; $534b: $47

  db $29, $33, $2d

  dec bc                                          ; $534f: $0b
  ld c, $1c                                       ; $5350: $0e $1c

  db $14, $19, $1a

  ld d, c                                         ; $5355: $51
  ld d, [hl]                                      ; $5356: $56
  ld e, h                                         ; $5357: $5c
  ld e, l                                         ; $5358: $5d
  rla                                             ; $5359: $17
  dec de                                          ; $535a: $1b
  ld h, e                                         ; $535b: $63
  ld d, b                                         ; $535c: $50
  daa                                             ; $535d: $27
  ld h, $2e                                       ; $535e: $26 $2e
  inc a                                           ; $5360: $3c

  db $2f, $22, $24

  ld e, e                                         ; $5364: $5b
  ld e, d                                         ; $5365: $5a
  ld b, b                                         ; $5366: $40
  inc de                                          ; $5367: $13
  ld d, e                                         ; $5368: $53
  ld h, b                                         ; $5369: $60
  dec c                                           ; $536a: $0d
  ld a, $3f                                       ; $536b: $3e $3f

  db $00, $02, $06, $09, $0d, $24, $ff

  ld hl, $5261                                    ; $5374: $21 $61 $52
  jp Jump_000_2952                                ; $5377: $c3 $52 $29


  ld a, $0a                                       ; $537a: $3e $0a
  ldh [$ffc2], a                                  ; $537c: $e0 $c2
  ld hl, $7b8d                                    ; $537e: $21 $8d $7b
  call Call_000_33f3                              ; $5381: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $4f7b                                    ; $5387: $21 $7b $4f
  call Call_000_33f3                              ; $538a: $cd $f3 $33

  db $06, $ef, $50

  xor a                                           ; $5390: $af
  ld [$cb70], a                                   ; $5391: $ea $70 $cb
  ld [$cb6f], a                                   ; $5394: $ea $6f $cb
  ld hl, $ffb9                                    ; $5397: $21 $b9 $ff
  ld [hl], $00                                    ; $539a: $36 $00
  inc hl                                          ; $539c: $23
  ld [hl], $00                                    ; $539d: $36 $00
  ld a, $a5                                       ; $539f: $3e $a5
  call Call_000_33f3                              ; $53a1: $cd $f3 $33

  db $00, $3c, $12

  ld a, $85                                       ; $53a7: $3e $85
  call Call_000_33f3                              ; $53a9: $cd $f3 $33

  db $00, $3c, $12

  ld a, $01                                       ; $53af: $3e $01
  ldh [$ff9a], a                                  ; $53b1: $e0 $9a
  ld a, $85                                       ; $53b3: $3e $85
  call Call_000_04e0                              ; $53b5: $cd $e0 $04
  call Call_004_53cd                              ; $53b8: $cd $cd $53
  call Call_004_56c5                              ; $53bb: $cd $c5 $56
  ldh a, [$ffca]                                  ; $53be: $f0 $ca
  cp $10                                          ; $53c0: $fe $10
  ret z                                           ; $53c2: $c8

  ld hl, $cc5e                                    ; $53c3: $21 $5e $cc
  ld a, [hl+]                                     ; $53c6: $2a
  ld h, [hl]                                      ; $53c7: $66
  ld l, a                                         ; $53c8: $6f
  call Call_000_38fe                              ; $53c9: $cd $fe $38
  ret                                             ; $53cc: $c9


Call_004_53cd:
  ldh a, [rSVBK]                                  ; $53cd: $f0 $70
  push af                                         ; $53cf: $f5
  ld a, $06                                       ; $53d0: $3e $06
  ldh [rSVBK], a                                  ; $53d2: $e0 $70
  ld c, $00                                       ; $53d4: $0e $00
  ld de, $d065                                    ; $53d6: $11 $65 $d0

jr_004_53d9:
  ld b, $00                                       ; $53d9: $06 $00

jr_004_53db:
  ld a, c                                         ; $53db: $79
  add a                                           ; $53dc: $87
  ld l, a                                         ; $53dd: $6f
  add a                                           ; $53de: $87
  add a                                           ; $53df: $87
  add l                                           ; $53e0: $85
  add b                                           ; $53e1: $80
  ld hl, $dcb3                                    ; $53e2: $21 $b3 $dc
  call Call_000_32c8                              ; $53e5: $cd $c8 $32
  jr z, jr_004_5424                               ; $53e8: $28 $3a

  push af                                         ; $53ea: $f5
  call Call_004_565f                              ; $53eb: $cd $5f $56
  cp $03                                          ; $53ee: $fe $03
  jr z, jr_004_53f6                               ; $53f0: $28 $04

  ld a, $fe                                       ; $53f2: $3e $fe
  jr jr_004_53f8                                  ; $53f4: $18 $02

jr_004_53f6:
  ld a, $ff                                       ; $53f6: $3e $ff

jr_004_53f8:
  ldh [$ffbd], a                                  ; $53f8: $e0 $bd
  ldh a, [rSVBK]                                  ; $53fa: $f0 $70
  push af                                         ; $53fc: $f5
  ld a, $03                                       ; $53fd: $3e $03
  ldh [rSVBK], a                                  ; $53ff: $e0 $70
  ldh a, [$ffbd]                                  ; $5401: $f0 $bd
  ld [de], a                                      ; $5403: $12
  ldh [$ffbd], a                                  ; $5404: $e0 $bd
  pop af                                          ; $5406: $f1
  ldh [rSVBK], a                                  ; $5407: $e0 $70
  ldh a, [$ffbd]                                  ; $5409: $f0 $bd
  sub $f8                                         ; $540b: $d6 $f8
  pop hl                                          ; $540d: $e1
  call Call_004_543b                              ; $540e: $cd $3b $54
  ldh [$ffbd], a                                  ; $5411: $e0 $bd
  ldh a, [rSVBK]                                  ; $5413: $f0 $70
  push af                                         ; $5415: $f5
  ld a, $03                                       ; $5416: $3e $03
  ldh [rSVBK], a                                  ; $5418: $e0 $70
  ldh a, [$ffbd]                                  ; $541a: $f0 $bd
  ld hl, $0500                                    ; $541c: $21 $00 $05
  add hl, de                                      ; $541f: $19
  ld [hl], a                                      ; $5420: $77
  pop af                                          ; $5421: $f1
  ldh [rSVBK], a                                  ; $5422: $e0 $70

jr_004_5424:
  inc de                                          ; $5424: $13
  inc b                                           ; $5425: $04
  ld a, b                                         ; $5426: $78
  cp $0a                                          ; $5427: $fe $0a
  jr nz, jr_004_53db                              ; $5429: $20 $b0

  ld hl, $0016                                    ; $542b: $21 $16 $00
  add hl, de                                      ; $542e: $19
  ld e, l                                         ; $542f: $5d
  ld d, h                                         ; $5430: $54
  inc c                                           ; $5431: $0c
  ld a, c                                         ; $5432: $79
  cp $04                                          ; $5433: $fe $04
  jr nz, jr_004_53d9                              ; $5435: $20 $a2

  pop af                                          ; $5437: $f1
  ldh [rSVBK], a                                  ; $5438: $e0 $70
  ret                                             ; $543a: $c9


Call_004_543b:
  push de                                         ; $543b: $d5
  push hl                                         ; $543c: $e5
  cp $06                                          ; $543d: $fe $06
  jr z, jr_004_5475                               ; $543f: $28 $34

  ldh a, [$ffca]                                  ; $5441: $f0 $ca
  cp $10                                          ; $5443: $fe $10
  jr z, jr_004_547a                               ; $5445: $28 $33

  ld d, h                                         ; $5447: $54
  ld a, d                                         ; $5448: $7a
  cp $19                                          ; $5449: $fe $19
  jr nz, jr_004_5464                              ; $544b: $20 $17

  push de                                         ; $544d: $d5
  call Call_000_33f3                              ; $544e: $cd $f3 $33
  rlca                                            ; $5451: $07
  ld l, $6a                                       ; $5452: $2e $6a
  pop de                                          ; $5454: $d1
  ld a, [$cdab]                                   ; $5455: $fa $ab $cd
  ld l, a                                         ; $5458: $6f
  push hl                                         ; $5459: $e5
  pop af                                          ; $545a: $f1
  jr z, jr_004_5475                               ; $545b: $28 $18

  ld a, [$cc49]                                   ; $545d: $fa $49 $cc
  cp $07                                          ; $5460: $fe $07
  jr z, jr_004_5475                               ; $5462: $28 $11

jr_004_5464:
  ld a, [$cc49]                                   ; $5464: $fa $49 $cc
  or a                                            ; $5467: $b7
  jr z, jr_004_547a                               ; $5468: $28 $10

  ld hl, $536d                                    ; $546a: $21 $6d $53

jr_004_546d:
  ld a, [hl+]                                     ; $546d: $2a
  cp $ff                                          ; $546e: $fe $ff
  jr z, jr_004_547a                               ; $5470: $28 $08

  cp d                                            ; $5472: $ba
  jr nz, jr_004_546d                              ; $5473: $20 $f8

jr_004_5475:
  ld a, $06                                       ; $5475: $3e $06
  pop hl                                          ; $5477: $e1
  pop de                                          ; $5478: $d1
  ret                                             ; $5479: $c9


jr_004_547a:
  ld a, $07                                       ; $547a: $3e $07
  pop hl                                          ; $547c: $e1
  pop de                                          ; $547d: $d1
  ret                                             ; $547e: $c9


  ldh a, [$ffa6]                                  ; $547f: $f0 $a6
  and $03                                         ; $5481: $e6 $03
  jp nz, Jump_004_5540                            ; $5483: $c2 $40 $55

  ret                                             ; $5486: $c9


  ldh a, [$ffa6]                                  ; $5487: $f0 $a6
  and $03                                         ; $5489: $e6 $03
  ret z                                           ; $548b: $c8

  call Call_004_56c5                              ; $548c: $cd $c5 $56
  ld hl, $cd44                                    ; $548f: $21 $44 $cd
  ld [hl], $98                                    ; $5492: $36 $98
  inc hl                                          ; $5494: $23
  ld [hl], $54                                    ; $5495: $36 $54
  ret                                             ; $5497: $c9


  ld hl, $cea8                                    ; $5498: $21 $a8 $ce
  ld d, $fd                                       ; $549b: $16 $fd
  call Call_004_4f47                              ; $549d: $cd $47 $4f
  ld a, [$cb70]                                   ; $54a0: $fa $70 $cb
  or a                                            ; $54a3: $b7
  jp nz, Jump_004_557b                            ; $54a4: $c2 $7b $55

  call Call_000_33f3                              ; $54a7: $cd $f3 $33

  db $06, $17, $51

  ld hl, $ffcf                                    ; $54ad: $21 $cf $ff
  cp [hl]                                         ; $54b0: $be
  jr z, jr_004_54fd                               ; $54b1: $28 $4a

  ld [hl], a                                      ; $54b3: $77
  call Call_004_56c5                              ; $54b4: $cd $c5 $56
  ret                                             ; $54b7: $c9


  ld a, [$cc2e]                                   ; $54b8: $fa $2e $cc
  add [hl]                                        ; $54bb: $86
  jr z, jr_004_54dc                               ; $54bc: $28 $1e

  dec a                                           ; $54be: $3d
  cp c                                            ; $54bf: $b9
  jr c, jr_004_54c9                               ; $54c0: $38 $07

  dec [hl]                                        ; $54c2: $35
  ld hl, $ffd3                                    ; $54c3: $21 $d3 $ff
  dec [hl]                                        ; $54c6: $35
  jr jr_004_54fd                                  ; $54c7: $18 $34

jr_004_54c9:
  ldh a, [$ffcf]                                  ; $54c9: $f0 $cf
  cp $00                                          ; $54cb: $fe $00
  jr nz, jr_004_54e2                              ; $54cd: $20 $13

  ld a, [$cc2e]                                   ; $54cf: $fa $2e $cc
  sub $03                                         ; $54d2: $d6 $03
  ld [$cc2e], a                                   ; $54d4: $ea $2e $cc
  call Call_004_56c5                              ; $54d7: $cd $c5 $56
  jr jr_004_54f9                                  ; $54da: $18 $1d

jr_004_54dc:
  ld a, $01                                       ; $54dc: $3e $01
  ldh [$ffd3], a                                  ; $54de: $e0 $d3
  jr jr_004_54fd                                  ; $54e0: $18 $1b

jr_004_54e2:
  cp $04                                          ; $54e2: $fe $04
  jr nz, jr_004_54fd                              ; $54e4: $20 $17

  ld a, [$cc2e]                                   ; $54e6: $fa $2e $cc
  add $03                                         ; $54e9: $c6 $03
  ld hl, $cc2b                                    ; $54eb: $21 $2b $cc
  cp [hl]                                         ; $54ee: $be
  jr nc, jr_004_54f9                              ; $54ef: $30 $08

  ld [$cc2e], a                                   ; $54f1: $ea $2e $cc
  call Call_004_56c5                              ; $54f4: $cd $c5 $56
  jr jr_004_54dc                                  ; $54f7: $18 $e3

jr_004_54f9:
  ld a, $03                                       ; $54f9: $3e $03
  ldh [$ffd3], a                                  ; $54fb: $e0 $d3

jr_004_54fd:
  ldh a, [$ffa6]                                  ; $54fd: $f0 $a6
  or a                                            ; $54ff: $b7
  ret z                                           ; $5500: $c8

  bit 0, a                                        ; $5501: $cb $47
  jr nz, jr_004_550a                              ; $5503: $20 $05

  bit 1, a                                        ; $5505: $cb $4f
  jr nz, jr_004_5540                              ; $5507: $20 $37

  ret                                             ; $5509: $c9


jr_004_550a:
  ldh a, [$ffca]                                  ; $550a: $f0 $ca
  cp $10                                          ; $550c: $fe $10
  jr z, jr_004_552d                               ; $550e: $28 $1d

  ld a, [$cc2e]                                   ; $5510: $fa $2e $cc
  ld hl, $ffcf                                    ; $5513: $21 $cf $ff
  add [hl]                                        ; $5516: $86
  dec a                                           ; $5517: $3d
  call Call_004_55da                              ; $5518: $cd $da $55
  ld c, a                                         ; $551b: $4f
  ld h, a                                         ; $551c: $67
  xor a                                           ; $551d: $af
  call Call_004_543b                              ; $551e: $cd $3b $54
  cp $06                                          ; $5521: $fe $06
  jr z, jr_004_552d                               ; $5523: $28 $08

  ld a, c                                         ; $5525: $79
  call Call_004_565f                              ; $5526: $cd $5f $56
  cp $03                                          ; $5529: $fe $03
  jr z, jr_004_5537                               ; $552b: $28 $0a

jr_004_552d:
  ld a, $03                                       ; $552d: $3e $03
  jp Jump_000_392b                                ; $552f: $c3 $2b $39


jr_004_5532:
  ld a, $0e                                       ; $5532: $3e $0e
  jp Jump_000_261e                                ; $5534: $c3 $1e $26


jr_004_5537:
  call Call_004_56f3                              ; $5537: $cd $f3 $56
  ld a, c                                         ; $553a: $79
  inc a                                           ; $553b: $3c
  ld [$cb70], a                                   ; $553c: $ea $70 $cb
  ret                                             ; $553f: $c9


Jump_004_5540:
jr_004_5540:
  ld bc, $000a                                    ; $5540: $01 $0a $00
  ld hl, $cea8                                    ; $5543: $21 $a8 $ce
  ld a, $ff                                       ; $5546: $3e $ff
  call Call_000_1249                              ; $5548: $cd $49 $12

Jump_004_554b:
  ld a, $03                                       ; $554b: $3e $03
  call Call_000_392b                              ; $554d: $cd $2b $39
  ld a, [$cc4d]                                   ; $5550: $fa $4d $cc
  or a                                            ; $5553: $b7
  jr nz, jr_004_5572                              ; $5554: $20 $1c

  ldh a, [$ffca]                                  ; $5556: $f0 $ca
  cp $4e                                          ; $5558: $fe $4e
  jr z, jr_004_5532                               ; $555a: $28 $d6

  ldh a, [$ffca]                                  ; $555c: $f0 $ca
  cp $0e                                          ; $555e: $fe $0e
  jr z, jr_004_5532                               ; $5560: $28 $d0

  cp $0f                                          ; $5562: $fe $0f
  jr z, jr_004_5532                               ; $5564: $28 $cc

  cp $10                                          ; $5566: $fe $10
  jr z, jr_004_5532                               ; $5568: $28 $c8

  cp $15                                          ; $556a: $fe $15
  jr z, jr_004_5532                               ; $556c: $28 $c4

  cp $16                                          ; $556e: $fe $16
  jr z, jr_004_5532                               ; $5570: $28 $c0

jr_004_5572:
  ld d, $ff                                       ; $5572: $16 $ff
  ld e, $01                                       ; $5574: $1e $01
  ld a, $19                                       ; $5576: $3e $19
  jp Jump_000_2621                                ; $5578: $c3 $21 $26


Jump_004_557b:
  ld a, [$cb6f]                                   ; $557b: $fa $6f $cb
  or a                                            ; $557e: $b7
  ret nz                                          ; $557f: $c0

  ld a, [$cb70]                                   ; $5580: $fa $70 $cb
  dec a                                           ; $5583: $3d
  ld d, a                                         ; $5584: $57
  xor a                                           ; $5585: $af
  ld [$cb70], a                                   ; $5586: $ea $70 $cb
  ld e, $01                                       ; $5589: $1e $01
  ld a, $19                                       ; $558b: $3e $19
  jp Jump_000_2621                                ; $558d: $c3 $21 $26


  ldh a, [$ffa6]                                  ; $5590: $f0 $a6
  and $20                                         ; $5592: $e6 $20
  jr nz, jr_004_55ad                              ; $5594: $20 $17

  push bc                                         ; $5596: $c5
  ld a, [$cc2e]                                   ; $5597: $fa $2e $cc
  ld b, a                                         ; $559a: $47
  ld a, [$cc2b]                                   ; $559b: $fa $2b $cc
  sub b                                           ; $559e: $90
  pop bc                                          ; $559f: $c1
  cp $04                                          ; $55a0: $fe $04
  jr c, jr_004_55a6                               ; $55a2: $38 $02

  ld a, $03                                       ; $55a4: $3e $03

jr_004_55a6:
  ldh [$ffd3], a                                  ; $55a6: $e0 $d3
  ld a, $80                                       ; $55a8: $3e $80
  ldh [$ffa6], a                                  ; $55aa: $e0 $a6
  ret                                             ; $55ac: $c9


jr_004_55ad:
  ld a, $01                                       ; $55ad: $3e $01
  ldh [$ffd3], a                                  ; $55af: $e0 $d3
  ld a, $40                                       ; $55b1: $3e $40
  ldh [$ffa6], a                                  ; $55b3: $e0 $a6
  ret                                             ; $55b5: $c9


  ld c, $07                                       ; $55b6: $0e $07
  ld e, $00                                       ; $55b8: $1e $00
  ld hl, $dcb3                                    ; $55ba: $21 $b3 $dc
  ldh a, [rSVBK]                                  ; $55bd: $f0 $70
  push af                                         ; $55bf: $f5
  ld a, $06                                       ; $55c0: $3e $06
  ldh [rSVBK], a                                  ; $55c2: $e0 $70
  xor a                                           ; $55c4: $af

jr_004_55c5:
  ld b, $08                                       ; $55c5: $06 $08
  ld d, [hl]                                      ; $55c7: $56
  inc hl                                          ; $55c8: $23

jr_004_55c9:
  rrc d                                           ; $55c9: $cb $0a
  adc e                                           ; $55cb: $8b
  dec b                                           ; $55cc: $05
  jr nz, jr_004_55c9                              ; $55cd: $20 $fa

  dec c                                           ; $55cf: $0d
  jr nz, jr_004_55c5                              ; $55d0: $20 $f3

  ldh [$ffbd], a                                  ; $55d2: $e0 $bd
  pop af                                          ; $55d4: $f1
  ldh [rSVBK], a                                  ; $55d5: $e0 $70
  ldh a, [$ffbd]                                  ; $55d7: $f0 $bd
  ret                                             ; $55d9: $c9


Call_004_55da:
  ldh a, [rSVBK]                                  ; $55da: $f0 $70
  push af                                         ; $55dc: $f5
  ld a, $06                                       ; $55dd: $3e $06
  ldh [rSVBK], a                                  ; $55df: $e0 $70
  ldh a, [$ffd3]                                  ; $55e1: $f0 $d3
  ld hl, $dcb3                                    ; $55e3: $21 $b3 $dc
  call Call_000_32c8                              ; $55e6: $cd $c8 $32
  jr nz, jr_004_55ed                              ; $55e9: $20 $02

  ld a, $ff                                       ; $55eb: $3e $ff

jr_004_55ed:
  ldh [$ffbd], a                                  ; $55ed: $e0 $bd
  pop af                                          ; $55ef: $f1
  ldh [rSVBK], a                                  ; $55f0: $e0 $70
  ldh a, [$ffbd]                                  ; $55f2: $f0 $bd
  ret                                             ; $55f4: $c9


Call_004_55f5:
  cp $ff                                          ; $55f5: $fe $ff
  jr nz, jr_004_5618                              ; $55f7: $20 $1f

  push bc                                         ; $55f9: $c5
  ld b, $04                                       ; $55fa: $06 $04
  ld c, $f2                                       ; $55fc: $0e $f2
  ld e, $0f                                       ; $55fe: $1e $0f
  ld d, $04                                       ; $5600: $16 $04
  ld hl, $0121                                    ; $5602: $21 $21 $01
  call Call_000_14a1                              ; $5605: $cd $a1 $14
  ld a, $20                                       ; $5608: $3e $20
  ld [$c15a], a                                   ; $560a: $ea $5a $c1
  ld hl, $1fc3                                    ; $560d: $21 $c3 $1f
  call Call_000_33f3                              ; $5610: $cd $f3 $33

  db $01, $28, $66

  pop bc                                          ; $5616: $c1
  ret                                             ; $5617: $c9


jr_004_5618:
  push bc                                         ; $5618: $c5
  ld a, b                                         ; $5619: $78
  add a                                           ; $561a: $87
  add b                                           ; $561b: $80
  ldh [$ffb3], a                                  ; $561c: $e0 $b3
  swap a                                          ; $561e: $cb $37
  ld hl, $0260                                    ; $5620: $21 $60 $02
  rst $08                                         ; $5623: $cf
  ld a, l                                         ; $5624: $7d
  ldh [$ffb9], a                                  ; $5625: $e0 $b9
  ld a, h                                         ; $5627: $7c
  ldh [$ffba], a                                  ; $5628: $e0 $ba
  ld b, $00                                       ; $562a: $06 $00
  ld a, c                                         ; $562c: $79
  ld hl, $52f5                                    ; $562d: $21 $f5 $52
  call Call_000_3173                              ; $5630: $cd $73 $31

jr_004_5633:
  ld a, [hl+]                                     ; $5633: $2a
  ld c, a                                         ; $5634: $4f
  push hl                                         ; $5635: $e5
  call Call_000_33f3                              ; $5636: $cd $f3 $33

  db $06, $20, $74

  ld a, c                                         ; $563c: $79
  call Call_004_4ff3                              ; $563d: $cd $f3 $4f
  or a                                            ; $5640: $b7
  ld hl, $528e                                    ; $5641: $21 $8e $52
  jr z, jr_004_5649                               ; $5644: $28 $03

  ld hl, $526d                                    ; $5646: $21 $6d $52

jr_004_5649:
  ldh a, [$ffb3]                                  ; $5649: $f0 $b3
  add b                                           ; $564b: $80
  call Call_000_3182                              ; $564c: $cd $82 $31
  xor a                                           ; $564f: $af
  call Call_000_33f3                              ; $5650: $cd $f3 $33

  db $00, $d3, $26

  pop hl                                          ; $5656: $e1
  inc b                                           ; $5657: $04
  ld a, b                                         ; $5658: $78
  cp $03                                          ; $5659: $fe $03
  jr nz, jr_004_5633                              ; $565b: $20 $d6

  pop bc                                          ; $565d: $c1
  ret                                             ; $565e: $c9


Call_004_565f:
  push bc                                         ; $565f: $c5
  ld hl, $52f5                                    ; $5660: $21 $f5 $52
  call Call_000_3173                              ; $5663: $cd $73 $31
  ld b, $03                                       ; $5666: $06 $03
  ld c, $00                                       ; $5668: $0e $00

jr_004_566a:
  ld a, [hl+]                                     ; $566a: $2a
  call Call_004_4ff3                              ; $566b: $cd $f3 $4f
  or a                                            ; $566e: $b7
  jr z, jr_004_5672                               ; $566f: $28 $01

  inc c                                           ; $5671: $0c

jr_004_5672:
  dec b                                           ; $5672: $05
  jr nz, jr_004_566a                              ; $5673: $20 $f5

  ld a, c                                         ; $5675: $79
  or a                                            ; $5676: $b7
  pop bc                                          ; $5677: $c1
  ret                                             ; $5678: $c9


Call_004_5679:
  ld a, c                                         ; $5679: $79
  cp $ff                                          ; $567a: $fe $ff
  ld de, $52af                                    ; $567c: $11 $af $52
  jr z, jr_004_5696                               ; $567f: $28 $15

  ld de, $52c1                                    ; $5681: $11 $c1 $52
  call Call_004_565f                              ; $5684: $cd $5f $56
  cp $03                                          ; $5687: $fe $03
  jr nz, jr_004_5696                              ; $5689: $20 $0b

  ld h, c                                         ; $568b: $61
  call Call_004_543b                              ; $568c: $cd $3b $54
  cp $06                                          ; $568f: $fe $06
  jr z, jr_004_5696                               ; $5691: $28 $03

  ld de, $52b8                                    ; $5693: $11 $b8 $52

jr_004_5696:
  ld a, b                                         ; $5696: $78
  jp Jump_000_1411                                ; $5697: $c3 $11 $14


Call_004_569a:
  push bc                                         ; $569a: $c5
  call Call_004_55da                              ; $569b: $cd $da $55
  ld c, a                                         ; $569e: $4f
  cp $ff                                          ; $569f: $fe $ff
  jr z, jr_004_56bb                               ; $56a1: $28 $18

  ld hl, $1fc6                                    ; $56a3: $21 $c6 $1f
  call Call_000_33f3                              ; $56a6: $cd $f3 $33

  db $01, $75, $66

  ld a, $20                                       ; $56ac: $3e $20
  ld [$c15a], a                                   ; $56ae: $ea $5a $c1
  ld a, c                                         ; $56b1: $79
  ld hl, $203e                                    ; $56b2: $21 $3e $20
  call Call_000_33f3                              ; $56b5: $cd $f3 $33

  db $01, $75, $66

jr_004_56bb:
  ld a, c                                         ; $56bb: $79
  call Call_004_55f5                              ; $56bc: $cd $f5 $55
  ld a, c                                         ; $56bf: $79
  call Call_004_5679                              ; $56c0: $cd $79 $56
  pop bc                                          ; $56c3: $c1
  ret                                             ; $56c4: $c9


Call_004_56c5:
  rst $18                                         ; $56c5: $df
  ld b, $00                                       ; $56c6: $06 $00
  ld c, $80                                       ; $56c8: $0e $80
  ld e, $12                                       ; $56ca: $1e $12
  ld d, $05                                       ; $56cc: $16 $05
  ld hl, $01a1                                    ; $56ce: $21 $a1 $01
  call Call_000_14a1                              ; $56d1: $cd $a1 $14
  rst $20                                         ; $56d4: $e7
  call Call_000_3363                              ; $56d5: $cd $63 $33
  rst $18                                         ; $56d8: $df
  ld hl, $52e4                                    ; $56d9: $21 $e4 $52
  call Call_000_3013                              ; $56dc: $cd $13 $30
  ld a, $90                                       ; $56df: $3e $90
  ld [$c159], a                                   ; $56e1: $ea $59 $c1
  ld a, $04                                       ; $56e4: $3e $04
  ld [$c1a2], a                                   ; $56e6: $ea $a2 $c1
  ldh a, [$ffd3]                                  ; $56e9: $f0 $d3
  ld c, a                                         ; $56eb: $4f
  ld b, $00                                       ; $56ec: $06 $00
  call Call_004_569a                              ; $56ee: $cd $9a $56
  rst $20                                         ; $56f1: $e7
  ret                                             ; $56f2: $c9


Call_004_56f3:
  push bc                                         ; $56f3: $c5
  push de                                         ; $56f4: $d5
  push hl                                         ; $56f5: $e5
  ld a, c                                         ; $56f6: $79
  ld hl, $52f5                                    ; $56f7: $21 $f5 $52
  call Call_000_3173                              ; $56fa: $cd $73 $31
  ld a, [hl+]                                     ; $56fd: $2a
  call Call_000_33f3                              ; $56fe: $cd $f3 $33

  db $06, $09, $66

  jr nz, jr_004_5710                              ; $5704: $20 $0a

  call Call_004_4728                              ; $5706: $cd $28 $47
  push hl                                         ; $5709: $e5
  ld a, $00                                       ; $570a: $3e $00
  call Call_004_573a                              ; $570c: $cd $3a $57
  pop hl                                          ; $570f: $e1

jr_004_5710:
  ld a, [hl+]                                     ; $5710: $2a
  call Call_000_33f3                              ; $5711: $cd $f3 $33

  db $06, $09, $66

  jr nz, jr_004_5723                              ; $5717: $20 $0a

  call Call_004_4728                              ; $5719: $cd $28 $47
  push hl                                         ; $571c: $e5
  ld a, $01                                       ; $571d: $3e $01
  call Call_004_573a                              ; $571f: $cd $3a $57
  pop hl                                          ; $5722: $e1

jr_004_5723:
  ld a, [hl+]                                     ; $5723: $2a
  call Call_000_33f3                              ; $5724: $cd $f3 $33

  db $06, $09, $66

  jr nz, jr_004_5736                              ; $572a: $20 $0a

  call Call_004_4728                              ; $572c: $cd $28 $47
  push hl                                         ; $572f: $e5
  ld a, $02                                       ; $5730: $3e $02
  call Call_004_573a                              ; $5732: $cd $3a $57
  pop hl                                          ; $5735: $e1

jr_004_5736:
  pop hl                                          ; $5736: $e1
  pop de                                          ; $5737: $d1
  pop bc                                          ; $5738: $c1
  ret                                             ; $5739: $c9


Call_004_573a:
  ldh [$ff9a], a                                  ; $573a: $e0 $9a
  ld a, $b8                                       ; $573c: $3e $b8
  call Call_000_04e0                              ; $573e: $cd $e0 $04
  ld a, [$cb6f]                                   ; $5741: $fa $6f $cb
  inc a                                           ; $5744: $3c
  ld [$cb6f], a                                   ; $5745: $ea $6f $cb
  cp $01                                          ; $5748: $fe $01
  ret nz                                          ; $574a: $c0

  ld a, $2b                                       ; $574b: $3e $2b
  jp Jump_000_392b                                ; $574d: $c3 $2b $39


  xor d                                           ; $5750: $aa
  ld d, l                                         ; $5751: $55
  and l                                           ; $5752: $a5
  db $26                                          ; $5753: $26

  db $74, $a1, $90, $a7, $ac, $ad

  ld a, $ff                                       ; $575a: $3e $ff
  ld [$cdc9], a                                   ; $575c: $ea $c9 $cd
  call Call_004_5796                              ; $575f: $cd $96 $57
  call nz, Call_004_57b3                          ; $5762: $c4 $b3 $57
  jp Jump_004_57e8                                ; $5765: $c3 $e8 $57


Call_004_5768:
Jump_004_5768:
  call Call_004_581b                              ; $5768: $cd $1b $58
  ld hl, $cdca                                    ; $576b: $21 $ca $cd
  ld de, $a004                                    ; $576e: $11 $04 $a0
  ld bc, $0007                                    ; $5771: $01 $07 $00
  call Call_000_129c                              ; $5774: $cd $9c $12
  ldh a, [rSVBK]                                  ; $5777: $f0 $70
  push af                                         ; $5779: $f5
  ld a, $07                                       ; $577a: $3e $07
  ldh [rSVBK], a                                  ; $577c: $e0 $70
  ld hl, $dbe3                                    ; $577e: $21 $e3 $db
  ld de, $a00b                                    ; $5781: $11 $0b $a0
  ld bc, $0168                                    ; $5784: $01 $68 $01
  call Call_000_129c                              ; $5787: $cd $9c $12
  pop af                                          ; $578a: $f1
  ldh [rSVBK], a                                  ; $578b: $e0 $70
  call Call_004_5813                              ; $578d: $cd $13 $58
  call Call_000_3427                              ; $5790: $cd $27 $34

  db $1e, $e0, $4c

Call_004_5796:
  call Call_004_581b                              ; $5796: $cd $1b $58
  ld hl, $a000                                    ; $5799: $21 $00 $a0
  ld a, [hl+]                                     ; $579c: $2a
  cp $aa                                          ; $579d: $fe $aa
  jr nz, jr_004_57b0                              ; $579f: $20 $0f

  ld a, [hl+]                                     ; $57a1: $2a
  cp $55                                          ; $57a2: $fe $55
  jr nz, jr_004_57b0                              ; $57a4: $20 $0a

  ld a, [hl+]                                     ; $57a6: $2a
  cp $a5                                          ; $57a7: $fe $a5
  jr nz, jr_004_57b0                              ; $57a9: $20 $05

  ld a, [hl+]                                     ; $57ab: $2a
  cp $26                                          ; $57ac: $fe $26
  jr nz, jr_004_57b0                              ; $57ae: $20 $00

jr_004_57b0:
  jr jr_004_5813                                  ; $57b0: $18 $61

  ret                                             ; $57b2: $c9


Call_004_57b3:
  call Call_004_581b                              ; $57b3: $cd $1b $58
  ld hl, $a000                                    ; $57b6: $21 $00 $a0
  ld bc, $13c8                                    ; $57b9: $01 $c8 $13
  call Call_000_1248                              ; $57bc: $cd $48 $12
  ld hl, $5750                                    ; $57bf: $21 $50 $57
  ld de, $a000                                    ; $57c2: $11 $00 $a0
  call Call_000_0269                              ; $57c5: $cd $69 $02
  call Call_004_5813                              ; $57c8: $cd $13 $58
  call Call_004_57d1                              ; $57cb: $cd $d1 $57
  jp Jump_004_5768                                ; $57ce: $c3 $68 $57


Call_004_57d1:
  ld a, $01                                       ; $57d1: $3e $01
  ld [$cdca], a                                   ; $57d3: $ea $ca $cd
  ld [$cdcb], a                                   ; $57d6: $ea $cb $cd
  ld a, $ff                                       ; $57d9: $3e $ff
  ld [$cdcd], a                                   ; $57db: $ea $cd $cd
  ld a, $23                                       ; $57de: $3e $23
  ld [$cdcc], a                                   ; $57e0: $ea $cc $cd
  xor a                                           ; $57e3: $af
  ld [$cdcf], a                                   ; $57e4: $ea $cf $cd
  ret                                             ; $57e7: $c9


Jump_004_57e8:
  call Call_004_581b                              ; $57e8: $cd $1b $58
  ld hl, $a004                                    ; $57eb: $21 $04 $a0
  ld de, $cdca                                    ; $57ee: $11 $ca $cd
  ld bc, $0007                                    ; $57f1: $01 $07 $00
  call Call_000_129c                              ; $57f4: $cd $9c $12
  ldh a, [rSVBK]                                  ; $57f7: $f0 $70
  push af                                         ; $57f9: $f5
  ld a, $07                                       ; $57fa: $3e $07
  ldh [rSVBK], a                                  ; $57fc: $e0 $70
  ld hl, $a00b                                    ; $57fe: $21 $0b $a0
  ld de, $dbe3                                    ; $5801: $11 $e3 $db
  ld bc, $0168                                    ; $5804: $01 $68 $01
  call Call_000_129c                              ; $5807: $cd $9c $12
  pop af                                          ; $580a: $f1
  ldh [rSVBK], a                                  ; $580b: $e0 $70
  call Call_000_33f3                              ; $580d: $cd $f3 $33

  db $1e, $e0, $4c

Call_004_5813:
Jump_004_5813:
jr_004_5813:
  push af                                         ; $5813: $f5
  ld a, $00                                       ; $5814: $3e $00
  ld [$0000], a                                   ; $5816: $ea $00 $00
  pop af                                          ; $5819: $f1
  ret                                             ; $581a: $c9


Call_004_581b:
  push af                                         ; $581b: $f5
  xor a                                           ; $581c: $af
  ld [$4000], a                                   ; $581d: $ea $00 $40
  ld a, $0a                                       ; $5820: $3e $0a
  ld [$0000], a                                   ; $5822: $ea $00 $00
  pop af                                          ; $5825: $f1
  ret                                             ; $5826: $c9


Call_004_5827:
  push af                                         ; $5827: $f5
  push hl                                         ; $5828: $e5
  ld hl, $5754                                    ; $5829: $21 $54 $57
  call Call_000_3182                              ; $582c: $cd $82 $31
  pop hl                                          ; $582f: $e1
  pop af                                          ; $5830: $f1
  ret                                             ; $5831: $c9


  ld [$cdd0], a                                   ; $5832: $ea $d0 $cd
  call Call_004_5827                              ; $5835: $cd $27 $58
  ld hl, $cdc6                                    ; $5838: $21 $c6 $cd
  ld [hl], e                                      ; $583b: $73
  inc hl                                          ; $583c: $23
  ld [hl], d                                      ; $583d: $72
  xor a                                           ; $583e: $af
  ld [$cdc8], a                                   ; $583f: $ea $c8 $cd
  ret                                             ; $5842: $c9


  ld hl, $cdc6                                    ; $5843: $21 $c6 $cd
  ld a, [hl+]                                     ; $5846: $2a
  ld h, [hl]                                      ; $5847: $66
  ld l, a                                         ; $5848: $6f
  ld bc, $061c                                    ; $5849: $01 $1c $06
  jp Jump_000_1248                                ; $584c: $c3 $48 $12


Call_004_584f:
  push bc                                         ; $584f: $c5
  push de                                         ; $5850: $d5
  push hl                                         ; $5851: $e5
  ld h, d                                         ; $5852: $62
  ld l, e                                         ; $5853: $6b
  ld e, $00                                       ; $5854: $1e $00

jr_004_5856:
  ld a, b                                         ; $5856: $78
  or c                                            ; $5857: $b1
  jr z, jr_004_5861                               ; $5858: $28 $07

  ld a, e                                         ; $585a: $7b
  sub [hl]                                        ; $585b: $96
  ld e, a                                         ; $585c: $5f
  inc hl                                          ; $585d: $23
  dec bc                                          ; $585e: $0b
  jr jr_004_5856                                  ; $585f: $18 $f5

jr_004_5861:
  ld a, e                                         ; $5861: $7b
  pop hl                                          ; $5862: $e1
  pop de                                          ; $5863: $d1
  pop bc                                          ; $5864: $c1
  ret                                             ; $5865: $c9


  push hl                                         ; $5866: $e5
  ld h, d                                         ; $5867: $62
  ld l, e                                         ; $5868: $6b
  add hl, bc                                      ; $5869: $09
  ld a, [hl]                                      ; $586a: $7e
  pop hl                                          ; $586b: $e1
  ret                                             ; $586c: $c9


  push hl                                         ; $586d: $e5
  ld h, d                                         ; $586e: $62
  ld l, e                                         ; $586f: $6b
  add hl, bc                                      ; $5870: $09
  ld [hl], a                                      ; $5871: $77
  pop hl                                          ; $5872: $e1
  ret                                             ; $5873: $c9


  push de                                         ; $5874: $d5
  push hl                                         ; $5875: $e5
  call Call_004_581b                              ; $5876: $cd $1b $58
  call Call_004_5827                              ; $5879: $cd $27 $58
  ld hl, $0000                                    ; $587c: $21 $00 $00
  add hl, de                                      ; $587f: $19
  ld a, [hl+]                                     ; $5880: $2a
  ld h, [hl]                                      ; $5881: $66
  ld l, a                                         ; $5882: $6f
  ld de, $2a2a                                    ; $5883: $11 $2a $2a
  rst $10                                         ; $5886: $d7
  ld a, $00                                       ; $5887: $3e $00
  jr nz, jr_004_588c                              ; $5889: $20 $01

  inc a                                           ; $588b: $3c

jr_004_588c:
  call Call_004_5813                              ; $588c: $cd $13 $58
  or a                                            ; $588f: $b7
  pop hl                                          ; $5890: $e1
  pop de                                          ; $5891: $d1
  ret                                             ; $5892: $c9


  ld hl, $5754                                    ; $5893: $21 $54 $57
  ld a, d                                         ; $5896: $7a
  call Call_000_3182                              ; $5897: $cd $82 $31
  call Call_004_581b                              ; $589a: $cd $1b $58
  push de                                         ; $589d: $d5
  jr jr_004_58b6                                  ; $589e: $18 $16

Call_004_58a0:
  ld hl, $5754                                    ; $58a0: $21 $54 $57
  ld a, d                                         ; $58a3: $7a
  call Call_000_3182                              ; $58a4: $cd $82 $31
  call Call_004_581b                              ; $58a7: $cd $1b $58
  push de                                         ; $58aa: $d5
  ld a, [$ce49]                                   ; $58ab: $fa $49 $ce
  bit 0, a                                        ; $58ae: $cb $47
  jr z, jr_004_58b6                               ; $58b0: $28 $04

  inc a                                           ; $58b2: $3c
  ld [$ce49], a                                   ; $58b3: $ea $49 $ce

jr_004_58b6:
  ld a, $2a                                       ; $58b6: $3e $2a
  ld [de], a                                      ; $58b8: $12
  inc de                                          ; $58b9: $13
  ld [de], a                                      ; $58ba: $12
  inc de                                          ; $58bb: $13
  ldh a, [rSVBK]                                  ; $58bc: $f0 $70
  push af                                         ; $58be: $f5
  ld a, $06                                       ; $58bf: $3e $06
  ldh [rSVBK], a                                  ; $58c1: $e0 $70
  ld hl, $d970                                    ; $58c3: $21 $70 $d9
  call Call_000_0200                              ; $58c6: $cd $00 $02
  ld hl, $da70                                    ; $58c9: $21 $70 $da
  call Call_000_022d                              ; $58cc: $cd $2d $02
  ld hl, $ddc8                                    ; $58cf: $21 $c8 $dd
  ld bc, $01e0                                    ; $58d2: $01 $e0 $01
  call Call_000_129c                              ; $58d5: $cd $9c $12
  ld hl, $dfa8                                    ; $58d8: $21 $a8 $df
  ld bc, $0050                                    ; $58db: $01 $50 $00
  call Call_000_129c                              ; $58de: $cd $9c $12
  ld hl, $dc4d                                    ; $58e1: $21 $4d $dc
  ld bc, $0066                                    ; $58e4: $01 $66 $00
  call Call_000_129c                              ; $58e7: $cd $9c $12
  ld hl, $dcb3                                    ; $58ea: $21 $b3 $dc
  call Call_000_025d                              ; $58ed: $cd $5d $02
  ldh a, [rSVBK]                                  ; $58f0: $f0 $70
  push af                                         ; $58f2: $f5
  ld a, $03                                       ; $58f3: $3e $03
  ldh [rSVBK], a                                  ; $58f5: $e0 $70
  ld hl, $ded0                                    ; $58f7: $21 $d0 $de
  call Call_000_0212                              ; $58fa: $cd $12 $02
  call Call_000_0245                              ; $58fd: $cd $45 $02
  pop af                                          ; $5900: $f1
  ldh [rSVBK], a                                  ; $5901: $e0 $70
  ld hl, $dcc8                                    ; $5903: $21 $c8 $dc
  call Call_000_0200                              ; $5906: $cd $00 $02
  pop af                                          ; $5909: $f1
  ldh [rSVBK], a                                  ; $590a: $e0 $70
  ld hl, $cdd1                                    ; $590c: $21 $d1 $cd
  ld bc, $0019                                    ; $590f: $01 $19 $00
  call Call_000_129c                              ; $5912: $cd $9c $12
  ld hl, $cdea                                    ; $5915: $21 $ea $cd
  ld bc, $0019                                    ; $5918: $01 $19 $00
  call Call_000_129c                              ; $591b: $cd $9c $12
  ld hl, $ce03                                    ; $591e: $21 $03 $ce
  ld bc, $0019                                    ; $5921: $01 $19 $00
  call Call_000_129c                              ; $5924: $cd $9c $12
  ld hl, $ce1c                                    ; $5927: $21 $1c $ce
  ld bc, $0019                                    ; $592a: $01 $19 $00
  call Call_000_129c                              ; $592d: $cd $9c $12
  ld hl, $ce35                                    ; $5930: $21 $35 $ce
  ld bc, $0090                                    ; $5933: $01 $90 $00
  call Call_000_129c                              ; $5936: $cd $9c $12
  ld hl, $cc31                                    ; $5939: $21 $31 $cc
  call Call_000_0263                              ; $593c: $cd $63 $02
  ld hl, $ffd6                                    ; $593f: $21 $d6 $ff
  call Call_000_0257                              ; $5942: $cd $57 $02
  ld hl, $ffc3                                    ; $5945: $21 $c3 $ff
  call Call_000_0266                              ; $5948: $cd $66 $02
  ld hl, $caf4                                    ; $594b: $21 $f4 $ca
  call Call_000_0263                              ; $594e: $cd $63 $02
  ld h, d                                         ; $5951: $62
  ld l, e                                         ; $5952: $6b
  pop de                                          ; $5953: $d1
  ld bc, $034a                                    ; $5954: $01 $4a $03
  call Call_004_584f                              ; $5957: $cd $4f $58
  ld [hl+], a                                     ; $595a: $22
  push hl                                         ; $595b: $e5
  ld hl, $034a                                    ; $595c: $21 $4a $03
  add hl, de                                      ; $595f: $19
  ld d, h                                         ; $5960: $54
  ld e, l                                         ; $5961: $5d
  ld bc, $00be                                    ; $5962: $01 $be $00
  call Call_004_584f                              ; $5965: $cd $4f $58
  pop hl                                          ; $5968: $e1
  ld [hl+], a                                     ; $5969: $22
  push hl                                         ; $596a: $e5
  ld hl, $00be                                    ; $596b: $21 $be $00
  add hl, de                                      ; $596e: $19
  ld d, h                                         ; $596f: $54
  ld e, l                                         ; $5970: $5d
  ld bc, $020f                                    ; $5971: $01 $0f $02
  call Call_004_584f                              ; $5974: $cd $4f $58
  pop hl                                          ; $5977: $e1
  ld [hl+], a                                     ; $5978: $22
  ld a, $18                                       ; $5979: $3e $18
  ld [hl+], a                                     ; $597b: $22
  ld [hl], a                                      ; $597c: $77
  call Call_004_5768                              ; $597d: $cd $68 $57
  jp Jump_004_5813                                ; $5980: $c3 $13 $58


  ld hl, $5754                                    ; $5983: $21 $54 $57
  ld a, d                                         ; $5986: $7a
  call ResolveIndexedPointer16                              ; $5987: $cd $8b $31
  push hl                                         ; $598a: $e5
  call Call_004_581b                              ; $598b: $cd $1b $58
  ld a, [hl+]                                     ; $598e: $2a
  cp $2a                                          ; $598f: $fe $2a
  jp nz, Jump_004_5a98                            ; $5991: $c2 $98 $5a

  ld a, [hl+]                                     ; $5994: $2a
  cp $2a                                          ; $5995: $fe $2a
  jp nz, Jump_004_5a98                            ; $5997: $c2 $98 $5a

  ldh a, [rSVBK]                                  ; $599a: $f0 $70
  push af                                         ; $599c: $f5
  ld a, $06                                       ; $599d: $3e $06
  ldh [rSVBK], a                                  ; $599f: $e0 $70
  ld de, $d970                                    ; $59a1: $11 $70 $d9
  call Call_000_0200                              ; $59a4: $cd $00 $02
  ld de, $da70                                    ; $59a7: $11 $70 $da
  call Call_000_022d                              ; $59aa: $cd $2d $02
  ld de, $ddc8                                    ; $59ad: $11 $c8 $dd
  ld bc, $01e0                                    ; $59b0: $01 $e0 $01
  call Call_000_129c                              ; $59b3: $cd $9c $12
  ld de, $dfa8                                    ; $59b6: $11 $a8 $df
  ld bc, $0050                                    ; $59b9: $01 $50 $00
  call Call_000_129c                              ; $59bc: $cd $9c $12
  ld de, $dc4d                                    ; $59bf: $11 $4d $dc
  ld bc, $0066                                    ; $59c2: $01 $66 $00
  call Call_000_129c                              ; $59c5: $cd $9c $12
  ld de, $dcb3                                    ; $59c8: $11 $b3 $dc
  call Call_000_025d                              ; $59cb: $cd $5d $02
  ldh a, [rSVBK]                                  ; $59ce: $f0 $70
  push af                                         ; $59d0: $f5
  ld a, $03                                       ; $59d1: $3e $03
  ldh [rSVBK], a                                  ; $59d3: $e0 $70
  ld de, $ded0                                    ; $59d5: $11 $d0 $de
  call Call_000_0212                              ; $59d8: $cd $12 $02
  call Call_000_0245                              ; $59db: $cd $45 $02
  pop af                                          ; $59de: $f1
  ldh [rSVBK], a                                  ; $59df: $e0 $70
  ld de, $dcc8                                    ; $59e1: $11 $c8 $dc
  call Call_000_0200                              ; $59e4: $cd $00 $02
  pop af                                          ; $59e7: $f1
  ldh [rSVBK], a                                  ; $59e8: $e0 $70
  ld de, $cdd1                                    ; $59ea: $11 $d1 $cd
  ld bc, $0019                                    ; $59ed: $01 $19 $00
  call Call_000_129c                              ; $59f0: $cd $9c $12
  ld de, $cdea                                    ; $59f3: $11 $ea $cd
  ld bc, $0019                                    ; $59f6: $01 $19 $00
  call Call_000_129c                              ; $59f9: $cd $9c $12
  ld de, $ce03                                    ; $59fc: $11 $03 $ce
  ld bc, $0019                                    ; $59ff: $01 $19 $00
  call Call_000_129c                              ; $5a02: $cd $9c $12
  ld de, $ce1c                                    ; $5a05: $11 $1c $ce
  ld bc, $0019                                    ; $5a08: $01 $19 $00
  call Call_000_129c                              ; $5a0b: $cd $9c $12
  ld de, $ce35                                    ; $5a0e: $11 $35 $ce
  ld bc, $0090                                    ; $5a11: $01 $90 $00
  call Call_000_129c                              ; $5a14: $cd $9c $12
  ld de, $cc31                                    ; $5a17: $11 $31 $cc
  call Call_000_0263                              ; $5a1a: $cd $63 $02
  ld de, $ffd6                                    ; $5a1d: $11 $d6 $ff
  call Call_000_0257                              ; $5a20: $cd $57 $02
  ld de, $ffc3                                    ; $5a23: $11 $c3 $ff
  call Call_000_0266                              ; $5a26: $cd $66 $02
  ld de, $caf4                                    ; $5a29: $11 $f4 $ca
  call Call_000_0263                              ; $5a2c: $cd $63 $02
  inc hl                                          ; $5a2f: $23
  inc hl                                          ; $5a30: $23
  inc hl                                          ; $5a31: $23
  ld a, [hl+]                                     ; $5a32: $2a
  cp $18                                          ; $5a33: $fe $18
  jr nz, jr_004_5a98                              ; $5a35: $20 $61

  ld a, [hl+]                                     ; $5a37: $2a
  cp $18                                          ; $5a38: $fe $18
  jr nz, jr_004_5a98                              ; $5a3a: $20 $5c

  pop de                                          ; $5a3c: $d1
  push de                                         ; $5a3d: $d5
  ld hl, $cb3f                                    ; $5a3e: $21 $3f $cb
  ld bc, $034a                                    ; $5a41: $01 $4a $03
  call Call_004_584f                              ; $5a44: $cd $4f $58
  ld [hl+], a                                     ; $5a47: $22
  push hl                                         ; $5a48: $e5
  ld hl, $034a                                    ; $5a49: $21 $4a $03
  add hl, de                                      ; $5a4c: $19
  ld d, h                                         ; $5a4d: $54
  ld e, l                                         ; $5a4e: $5d
  ld bc, $00be                                    ; $5a4f: $01 $be $00
  call Call_004_584f                              ; $5a52: $cd $4f $58
  pop hl                                          ; $5a55: $e1
  ld [hl+], a                                     ; $5a56: $22
  push hl                                         ; $5a57: $e5
  ld hl, $00be                                    ; $5a58: $21 $be $00
  add hl, de                                      ; $5a5b: $19
  ld d, h                                         ; $5a5c: $54
  ld e, l                                         ; $5a5d: $5d
  ld bc, $020f                                    ; $5a5e: $01 $0f $02
  call Call_004_584f                              ; $5a61: $cd $4f $58
  pop hl                                          ; $5a64: $e1
  ld [hl+], a                                     ; $5a65: $22
  pop de                                          ; $5a66: $d1
  ld hl, $0617                                    ; $5a67: $21 $17 $06
  add hl, de                                      ; $5a6a: $19
  ld de, $cb3f                                    ; $5a6b: $11 $3f $cb
  ld a, [de]                                      ; $5a6e: $1a
  cp [hl]                                         ; $5a6f: $be
  jr nz, jr_004_5a98                              ; $5a70: $20 $26

  inc de                                          ; $5a72: $13
  inc hl                                          ; $5a73: $23
  ld a, [de]                                      ; $5a74: $1a
  cp [hl]                                         ; $5a75: $be
  jr nz, jr_004_5a98                              ; $5a76: $20 $20

  inc de                                          ; $5a78: $13
  inc hl                                          ; $5a79: $23
  ld a, [de]                                      ; $5a7a: $1a
  cp [hl]                                         ; $5a7b: $be
  jr nz, jr_004_5a98                              ; $5a7c: $20 $1a

  call Call_004_5813                              ; $5a7e: $cd $13 $58
  ld a, [$ce49]                                   ; $5a81: $fa $49 $ce
  bit 0, a                                        ; $5a84: $cb $47
  jr z, jr_004_5a8e                               ; $5a86: $28 $06

  xor a                                           ; $5a88: $af
  ld [$c0a0], a                                   ; $5a89: $ea $a0 $c0
  jr jr_004_5a93                                  ; $5a8c: $18 $05

jr_004_5a8e:
  ld a, $02                                       ; $5a8e: $3e $02
  ld [$c0a0], a                                   ; $5a90: $ea $a0 $c0

jr_004_5a93:
  ld a, $0b                                       ; $5a93: $3e $0b
  jp Jump_000_261e                                ; $5a95: $c3 $1e $26


Jump_004_5a98:
jr_004_5a98:
  call Call_004_5813                              ; $5a98: $cd $13 $58
  jp Jump_000_3121                                ; $5a9b: $c3 $21 $31


  db $09, $71, $69, $77, $69, $b4, $26, $9c, $69, $09, $e7, $68, $ed, $68, $b4, $26
  db $f0, $68

  ld b, $8d                                       ; $5ab0: $06 $8d
  ld d, c                                         ; $5ab2: $51
  adc l                                           ; $5ab3: $8d
  ld d, c                                         ; $5ab4: $51
  or h                                            ; $5ab5: $b4
  ld h, $8d                                       ; $5ab6: $26 $8d
  ld d, c                                         ; $5ab8: $51

  db $09, $2e, $6a, $34, $6a, $b4, $26, $df, $6a

  dec bc                                          ; $5ac2: $0b
  ld a, $77                                       ; $5ac3: $3e $77
  sub [hl]                                        ; $5ac5: $96
  ld [hl], a                                      ; $5ac6: $77
  or h                                            ; $5ac7: $b4
  ld h, $0c                                       ; $5ac8: $26 $0c
  ld a, b                                         ; $5aca: $78
  dec bc                                          ; $5acb: $0b
  ld b, l                                         ; $5acc: $45
  ld [hl], a                                      ; $5acd: $77
  add d                                           ; $5ace: $82
  ld h, $b4                                       ; $5acf: $26 $b4
  ld h, $0c                                       ; $5ad1: $26 $0c
  ld a, b                                         ; $5ad3: $78

  db $01, $cd, $69, $d3, $69, $b4, $26, $2c, $6a

  ld bc, $6bd3                                    ; $5add: $01 $d3 $6b
  add d                                           ; $5ae0: $82
  ld h, $b4                                       ; $5ae1: $26 $b4
  ld h, $16                                       ; $5ae3: $26 $16
  ld l, h                                         ; $5ae5: $6c
  ld bc, $6c5c                                    ; $5ae6: $01 $5c $6c
  add d                                           ; $5ae9: $82
  ld h, $b4                                       ; $5aea: $26 $b4
  ld h, $2c                                       ; $5aec: $26 $2c
  ld l, d                                         ; $5aee: $6a
  ld b, $ee                                       ; $5aef: $06 $ee
  ld b, h                                         ; $5af1: $44
  rst $30                                         ; $5af2: $f7
  ld b, h                                         ; $5af3: $44
  or h                                            ; $5af4: $b4
  ld h, $3e                                       ; $5af5: $26 $3e
  ld b, l                                         ; $5af7: $45

  db $08, $42, $42, $48, $42, $b4, $26, $bd, $42, $00, $e9, $14, $82, $26, $3e, $18
  db $5c, $18, $03, $61, $41, $82, $26, $3e, $18, $5c, $18, $04, $82, $26, $82, $26
  db $b4, $26, $97, $44, $04, $6c, $5e, $cc, $5e, $b4, $26, $9a, $5f, $04, $88, $5e
  db $82, $26, $b4, $26, $9a, $5f, $04, $b3, $61, $82, $26, $b4, $26, $dc, $61, $04
  db $95, $62, $82, $26, $b4, $26, $b8, $62, $07, $f4, $46, $82, $26, $b4, $26, $3d
  db $4a, $07, $67, $47, $82, $26, $b4, $26, $3d, $4a, $04, $fc, $70, $82, $26, $b4
  db $26, $b5, $74, $04, $dd, $63, $82, $26, $b4, $26, $c1, $64, $04, $1b, $64, $82
  db $26, $b4, $26, $c1, $64, $08, $60, $4e, $82, $26, $b4, $26, $a9, $4e, $07, $b3
  db $4b, $b3, $4b, $b4, $26, $2c, $4c, $03, $32, $4d, $98, $4d, $ba, $26, $eb, $4e
  db $03, $d1, $4f, $82, $26, $ba, $26, $eb, $4e, $03, $4f, $50, $82, $26, $ba, $26
  db $c3, $51, $03, $10, $50, $82, $26, $ba, $26, $6a, $51, $03, $6a, $50, $82, $26
  db $ba, $26, $e1, $50, $03, $dc, $4b, $82, $26, $ba, $26, $15, $4c, $03, $81, $50
  db $82, $26, $ba, $26, $36, $52, $1e, $0f, $62, $82, $26, $ba, $26, $59, $62, $03
  db $4e, $52, $82, $26, $ba, $26, $58, $52, $03, $99, $56, $82, $26, $ba, $26, $a3
  db $56, $06, $88, $40, $8e, $40, $b4, $26, $f9, $41, $08, $c4, $4e, $82, $26, $b4
  db $26, $18, $4f

  ld [$4ed1], sp                                  ; $5beb: $08 $d1 $4e
  add d                                           ; $5bee: $82
  ld h, $b4                                       ; $5bef: $26 $b4
  ld h, $18                                       ; $5bf1: $26 $18
  ld c, a                                         ; $5bf3: $4f
  inc bc                                          ; $5bf4: $03
  pop de                                          ; $5bf5: $d1
  ld d, b                                         ; $5bf6: $50
  add d                                           ; $5bf7: $82
  ld h, $ba                                       ; $5bf8: $26 $ba
  ld h, $e0                                       ; $5bfa: $26 $e0
  ld d, b                                         ; $5bfc: $50

  db $03, $99, $55, $82, $26, $ba, $26, $b0, $55, $03, $f7, $55, $82, $26, $ba, $26
  db $0f, $56, $04, $9d, $79, $ab, $79, $b4, $26, $ba, $7c, $04, $d3, $7a, $82, $26
  db $b4, $26, $ba, $7c, $04, $03, $7b, $82, $26, $b4, $26, $02, $7d

  inc b                                           ; $5c2a: $04
  ld a, d                                         ; $5c2b: $7a
  ld d, b                                         ; $5c2c: $50
  adc e                                           ; $5c2d: $8b
  ld d, b                                         ; $5c2e: $50
  or h                                            ; $5c2f: $b4
  ld h, $e2                                       ; $5c30: $26 $e2
  ld d, b                                         ; $5c32: $50

  db $04, $81, $4d, $92, $4d, $b4, $26, $d4, $4e, $04, $7b, $4d, $87, $4d, $b4, $26
  db $d4, $4e, $04, $74, $53, $7a, $53, $b4, $26, $98, $54, $06, $37, $70, $4f, $70
  db $b4, $26, $ae, $70, $08, $48, $4d, $4e, $4d, $b4, $26, $a5, $4d, $08, $0e, $4e
  db $14, $4e, $b4, $26, $30, $4e

  ld a, [bc]                                      ; $5c69: $0a
  rst $38                                         ; $5c6a: $ff
  ld a, d                                         ; $5c6b: $7a
  cpl                                             ; $5c6c: $2f
  ld a, e                                         ; $5c6d: $7b
  or h                                            ; $5c6e: $b4
  ld h, $86                                       ; $5c6f: $26 $86
  ld a, h                                         ; $5c71: $7c
  ld a, [bc]                                      ; $5c72: $0a
  dec b                                           ; $5c73: $05
  ld a, e                                         ; $5c74: $7b
  jp $b47b                                        ; $5c75: $c3 $7b $b4


  ld h, $86                                       ; $5c78: $26 $86
  ld a, h                                         ; $5c7a: $7c
  ld a, [bc]                                      ; $5c7b: $0a
  xor b                                           ; $5c7c: $a8
  ld a, h                                         ; $5c7d: $7c
  xor [hl]                                        ; $5c7e: $ae
  ld a, h                                         ; $5c7f: $7c
  or h                                            ; $5c80: $b4
  ld h, $86                                       ; $5c81: $26 $86
  ld a, h                                         ; $5c83: $7c
  ld a, [bc]                                      ; $5c84: $0a
  ld bc, $077d                                    ; $5c85: $01 $7d $07
  ld a, l                                         ; $5c88: $7d
  or h                                            ; $5c89: $b4
  ld h, $86                                       ; $5c8a: $26 $86
  ld a, h                                         ; $5c8c: $7c
  ld b, $cf                                       ; $5c8d: $06 $cf
  ld d, d                                         ; $5c8f: $52
  push de                                         ; $5c90: $d5
  ld d, d                                         ; $5c91: $52
  or h                                            ; $5c92: $b4
  ld h, $d6                                       ; $5c93: $26 $d6
  ld d, d                                         ; $5c95: $52

  db $09, $18, $69, $1e, $69, $b4, $26, $3a, $69, $08, $16, $50, $1c, $50, $b4, $26
  db $49, $50

  ld [$519d], sp                                  ; $5ca8: $08 $9d $51
  and a                                           ; $5cab: $a7
  ld d, c                                         ; $5cac: $51
  or h                                            ; $5cad: $b4
  ld h, $bd                                       ; $5cae: $26 $bd
  ld d, c                                         ; $5cb0: $51

  db $09, $df, $74, $f4, $74, $b4, $26, $12, $75

  ld e, $6f                                       ; $5cba: $1e $6f
  ld h, d                                         ; $5cbc: $62
  ld [hl], l                                      ; $5cbd: $75
  ld h, d                                         ; $5cbe: $62
  or h                                            ; $5cbf: $b4
  ld h, $83                                       ; $5cc0: $26 $83
  ld h, d                                         ; $5cc2: $62
  ld e, $ea                                       ; $5cc3: $1e $ea
  ld d, e                                         ; $5cc5: $53
  ldh a, [rHDMA3]                                 ; $5cc6: $f0 $53
  or h                                            ; $5cc8: $b4
  ld h, $63                                       ; $5cc9: $26 $63
  ld d, h                                         ; $5ccb: $54
  ld b, $9c                                       ; $5ccc: $06 $9c
  ld d, e                                         ; $5cce: $53
  jp $b453                                        ; $5ccf: $c3 $53 $b4


  ld h, $16                                       ; $5cd2: $26 $16
  ld d, h                                         ; $5cd4: $54

  db $08, $c3, $61, $82, $26, $3e, $18, $f5, $63, $08, $b6, $75, $82, $26, $3e, $18
  db $05, $76

  ld [$79a4], sp                                  ; $5ce7: $08 $a4 $79
  xor d                                           ; $5cea: $aa
  ld a, c                                         ; $5ceb: $79
  or h                                            ; $5cec: $b4
  ld h, $47                                       ; $5ced: $26 $47
  ld a, d                                         ; $5cef: $7a

  db $07, $1c, $4e, $2a, $4e, $b4, $26, $9d, $4e, $01, $81, $79, $82, $26, $3e, $18
  db $8b, $7a, $01, $36, $74, $3c, $74, $3e, $18, $98, $74, $01, $ae, $6d, $b4, $6d
  db $3e, $18, $b5, $6f, $08, $d4, $53, $da, $53, $3e, $18, $2d, $54

  dec bc                                          ; $5d1d: $0b
  jp z, $d06e                                     ; $5d1e: $ca $6e $d0

  ld l, [hl]                                      ; $5d21: $6e
  or h                                            ; $5d22: $b4
  ld h, $cf                                       ; $5d23: $26 $cf
  ld l, a                                         ; $5d25: $6f
  ld b, $51                                       ; $5d26: $06 $51
  ld d, d                                         ; $5d28: $52
  add d                                           ; $5d29: $82
  ld h, $82                                       ; $5d2a: $26 $82
  ld h, $9a                                       ; $5d2c: $26 $9a
  ld d, d                                         ; $5d2e: $52
  ld b, $db                                       ; $5d2f: $06 $db
  ld d, c                                         ; $5d31: $51
  add d                                           ; $5d32: $82
  ld h, $82                                       ; $5d33: $26 $82
  ld h, $17                                       ; $5d35: $26 $17
  ld d, d                                         ; $5d37: $52
  rlca                                            ; $5d38: $07
  jp nz, $c84c                                    ; $5d39: $c2 $4c $c8

  ld c, h                                         ; $5d3c: $4c
  or h                                            ; $5d3d: $b4
  ld h, $13                                       ; $5d3e: $26 $13
  ld c, l                                         ; $5d40: $4d

  db $1e, $30, $5b, $36, $5b, $b4, $26, $7b, $5b, $1e, $80, $52, $86, $52, $b4, $26
  db $cc, $52, $04, $5a, $49, $66, $49, $b4, $26, $43, $4c, $04, $60, $49, $67, $4a
  db $b4, $26, $92, $4c, $08, $87, $4c, $8d, $4c, $b4, $26, $e0, $4c, $05, $14, $40
  db $71, $40, $b4, $26, $1f, $40, $0b, $fb, $7a, $01, $7b, $b4, $26, $19, $7b, $08
  db $83, $4b, $89, $4b, $b4, $26, $b9, $4b

  dec bc                                          ; $5d89: $0b
  ld b, e                                         ; $5d8a: $43
  ld a, e                                         ; $5d8b: $7b
  sbc c                                           ; $5d8c: $99
  ld a, e                                         ; $5d8d: $7b
  or h                                            ; $5d8e: $b4
  ld h, $e7                                       ; $5d8f: $26 $e7
  ld a, e                                         ; $5d91: $7b
  rlca                                            ; $5d92: $07
  jr nc, jr_004_5dd5                              ; $5d93: $30 $40

  ld [hl], $40                                    ; $5d95: $36 $40
  or h                                            ; $5d97: $b4
  ld h, $9a                                       ; $5d98: $26 $9a
  ld b, b                                         ; $5d9a: $40
  rlca                                            ; $5d9b: $07
  jr nc, jr_004_5dde                              ; $5d9c: $30 $40

  cp h                                            ; $5d9e: $bc
  ld b, b                                         ; $5d9f: $40
  or h                                            ; $5da0: $b4
  ld h, $46                                       ; $5da1: $26 $46
  ld b, c                                         ; $5da3: $41
  rlca                                            ; $5da4: $07
  jr nc, jr_004_5de7                              ; $5da5: $30 $40

  ld bc, $b441                                    ; $5da7: $01 $41 $b4
  ld h, $10                                       ; $5daa: $26 $10
  ld b, d                                         ; $5dac: $42
  rlca                                            ; $5dad: $07
  jr nc, jr_004_5df0                              ; $5dae: $30 $40

  ld [hl+], a                                     ; $5db0: $22
  ld b, e                                         ; $5db1: $43
  or h                                            ; $5db2: $b4
  ld h, $67                                       ; $5db3: $26 $67
  ld b, e                                         ; $5db5: $43
  rlca                                            ; $5db6: $07
  ld l, $44                                       ; $5db7: $2e $44
  add d                                           ; $5db9: $82
  ld h, $b4                                       ; $5dba: $26 $b4
  ld h, $82                                       ; $5dbc: $26 $82
  ld h, $07                                       ; $5dbe: $26 $07
  ld l, $44                                       ; $5dc0: $2e $44
  add d                                           ; $5dc2: $82
  ld h, $b4                                       ; $5dc3: $26 $b4
  ld h, $82                                       ; $5dc5: $26 $82
  ld h, $07                                       ; $5dc7: $26 $07
  ld l, $44                                       ; $5dc9: $2e $44
  add d                                           ; $5dcb: $82
  ld h, $b4                                       ; $5dcc: $26 $b4
  ld h, $82                                       ; $5dce: $26 $82
  ld h, $07                                       ; $5dd0: $26 $07
  ld l, $44                                       ; $5dd2: $2e $44
  add d                                           ; $5dd4: $82

jr_004_5dd5:
  ld h, $b4                                       ; $5dd5: $26 $b4
  ld h, $82                                       ; $5dd7: $26 $82
  ld h, $07                                       ; $5dd9: $26 $07
  ld l, $44                                       ; $5ddb: $2e $44
  add d                                           ; $5ddd: $82

jr_004_5dde:
  ld h, $b4                                       ; $5dde: $26 $b4
  ld h, $82                                       ; $5de0: $26 $82
  ld h, $07                                       ; $5de2: $26 $07
  ld l, $44                                       ; $5de4: $2e $44
  add d                                           ; $5de6: $82

jr_004_5de7:
  ld h, $b4                                       ; $5de7: $26 $b4
  ld h, $82                                       ; $5de9: $26 $82
  ld h, $07                                       ; $5deb: $26 $07
  ld l, $44                                       ; $5ded: $2e $44
  add d                                           ; $5def: $82

jr_004_5df0:
  ld h, $b4                                       ; $5df0: $26 $b4
  ld h, $82                                       ; $5df2: $26 $82
  ld h, $07                                       ; $5df4: $26 $07
  jr nc, @+$42                                    ; $5df6: $30 $40

  rla                                             ; $5df8: $17
  ld b, l                                         ; $5df9: $45
  or h                                            ; $5dfa: $b4
  ld h, $7b                                       ; $5dfb: $26 $7b
  ld b, l                                         ; $5dfd: $45
  rlca                                            ; $5dfe: $07
  jr nc, @+$42                                    ; $5dff: $30 $40

  sbc [hl]                                        ; $5e01: $9e
  ld b, l                                         ; $5e02: $45
  or h                                            ; $5e03: $b4
  ld h, $02                                       ; $5e04: $26 $02
  ld b, [hl]                                      ; $5e06: $46
  rlca                                            ; $5e07: $07
  ld l, $44                                       ; $5e08: $2e $44
  add d                                           ; $5e0a: $82
  ld h, $b4                                       ; $5e0b: $26 $b4
  ld h, $82                                       ; $5e0d: $26 $82
  db $26                                          ; $5e0f: $26

  db $01, $14, $7f, $01, $00, $00, $99, $26, $00, $02, $00, $02, $10, $01, $23, $5e
  db $b8, $00, $41, $61, $d0, $81, $d0, $a1, $d0, $c1, $d0, $e1, $d0, $01, $d1, $21
  db $d1, $41, $d1, $10, $01, $3a, $5e, $45, $01, $40, $aa, $d1, $ea, $d1, $0a, $d2
  db $10, $01, $47, $5e, $00, $01, $41, $a1, $d1, $c1, $d1, $e1, $d1, $01, $d2, $21
  db $d2, $ff, $ff, $fe, $ff, $ff, $ff, $fd, $83, $82, $84, $11, $12, $18, $ff, $10
  db $ff, $ff, $ff, $30, $ff, $3b, $ff, $54, $ff, $2d, $2f, $4d, $3e, $45, $cd, $4b
  db $39, $3e, $0e, $21, $fb, $6c, $cd, $f3, $33, $09, $75, $74, $cd, $f3, $33, $06
  db $2d, $68, $21, $10, $5e, $c3, $52

  add hl, hl                                      ; $5e87: $29

  ld a, $0a                                       ; $5e88: $3e $0a
  ldh [$ffc2], a                                  ; $5e8a: $e0 $c2
  ld a, $0e                                       ; $5e8c: $3e $0e
  ld hl, $6cfb                                    ; $5e8e: $21 $fb $6c
  call Call_000_33f3                              ; $5e91: $cd $f3 $33

  db $09, $75, $74

  xor a                                           ; $5e97: $af
  ld hl, $471b                                    ; $5e98: $21 $1b $47
  call Call_000_33f3                              ; $5e9b: $cd $f3 $33

  db $06, $fd, $50

  call Call_004_61a0                              ; $5ea1: $cd $a0 $61
  rst $18                                         ; $5ea4: $df
  call Call_004_60ad                              ; $5ea5: $cd $ad $60
  call Call_004_6100                              ; $5ea8: $cd $00 $61
  rst $20                                         ; $5eab: $e7
  xor a                                           ; $5eac: $af
  ld [$cc2a], a                                   ; $5ead: $ea $2a $cc
  ld [$cbed], a                                   ; $5eb0: $ea $ed $cb
  ld [$cec3], a                                   ; $5eb3: $ea $c3 $ce
  ld a, $04                                       ; $5eb6: $3e $04
  ld [$cc2c], a                                   ; $5eb8: $ea $2c $cc
  ret                                             ; $5ebb: $c9


  db $5e, $c0, $04, $a0, $20, $00, $b8, $64

  ld e, [hl]                                      ; $5ec4: $5e
  ret nz                                          ; $5ec5: $c0

  inc b                                           ; $5ec6: $04
  and b                                           ; $5ec7: $a0
  jr nz, jr_004_5eca                              ; $5ec8: $20 $00

jr_004_5eca:
  add b                                           ; $5eca: $80
  rst $18                                         ; $5ecb: $df

  ld a, $0a                                       ; $5ecc: $3e $0a
  ldh [$ffc2], a                                  ; $5ece: $e0 $c2
  call Call_004_6086                              ; $5ed0: $cd $86 $60
  call Call_000_33f3                              ; $5ed3: $cd $f3 $33

  db $06, $96, $6e

  ld hl, $6251                                    ; $5ed9: $21 $51 $62
  call Call_000_33f3                              ; $5edc: $cd $f3 $33

  db $00, $b1, $10

  ld a, $1e                                       ; $5ee2: $3e $1e
  ld [$c07f], a                                   ; $5ee4: $ea $7f $c0
  ld hl, $c081                                    ; $5ee7: $21 $81 $c0
  ld a, [hl+]                                     ; $5eea: $2a
  ld h, [hl]                                      ; $5eeb: $66
  ld l, a                                         ; $5eec: $6f
  ld de, $0020                                    ; $5eed: $11 $20 $00
  add hl, de                                      ; $5ef0: $19
  ld a, l                                         ; $5ef1: $7d
  ld [$c081], a                                   ; $5ef2: $ea $81 $c0
  ld a, h                                         ; $5ef5: $7c
  ld [$c082], a                                   ; $5ef6: $ea $82 $c0
  ld a, [$cafa]                                   ; $5ef9: $fa $fa $ca
  or a                                            ; $5efc: $b7
  jr z, jr_004_5f13                               ; $5efd: $28 $14

  ld hl, $64b8                                    ; $5eff: $21 $b8 $64
  ld de, $df80                                    ; $5f02: $11 $80 $df
  ld bc, $0040                                    ; $5f05: $01 $40 $00
  call Call_000_2851                              ; $5f08: $cd $51 $28
  ld hl, $5ec4                                    ; $5f0b: $21 $c4 $5e
  call Call_000_1a84                              ; $5f0e: $cd $84 $1a
  jr jr_004_5f19                                  ; $5f11: $18 $06

jr_004_5f13:
  ld hl, $5ebc                                    ; $5f13: $21 $bc $5e
  call Call_000_1a5c                              ; $5f16: $cd $5c $1a

jr_004_5f19:
  ld hl, $7c01                                    ; $5f19: $21 $01 $7c
  call Call_000_33f3                              ; $5f1c: $cd $f3 $33

  db $03, $88, $7e

  ldh a, [$ffca]                                  ; $5f22: $f0 $ca
  cp $12                                          ; $5f24: $fe $12
  jr z, jr_004_5f3d                               ; $5f26: $28 $15

  cp $13                                          ; $5f28: $fe $13
  jr z, jr_004_5f3d                               ; $5f2a: $28 $11

  call Call_000_38e8                              ; $5f2c: $cd $e8 $38
  ld a, l                                         ; $5f2f: $7d
  ld [$cc5e], a                                   ; $5f30: $ea $5e $cc
  ld a, h                                         ; $5f33: $7c
  ld [$cc5f], a                                   ; $5f34: $ea $5f $cc
  ld hl, $0120                                    ; $5f37: $21 $20 $01
  call Call_000_3916                              ; $5f3a: $cd $16 $39

jr_004_5f3d:
  rst $18                                         ; $5f3d: $df
  xor a                                           ; $5f3e: $af
  ld [$cbed], a                                   ; $5f3f: $ea $ed $cb
  ld [$cec3], a                                   ; $5f42: $ea $c3 $ce
  call Call_000_33f3                              ; $5f45: $cd $f3 $33

  db $07, $e5, $47

  call Call_004_60ad                              ; $5f4b: $cd $ad $60
  call Call_004_6100                              ; $5f4e: $cd $00 $61
  ld de, $0401                                    ; $5f51: $11 $01 $04
  ld hl, $6251                                    ; $5f54: $21 $51 $62
  call Call_000_33f3                              ; $5f57: $cd $f3 $33

  db $00, $b8, $27

  rst $20                                         ; $5f5d: $e7
  ld hl, $ffb9                                    ; $5f5e: $21 $b9 $ff
  ld [hl], $00                                    ; $5f61: $36 $00
  inc hl                                          ; $5f63: $23
  ld [hl], $00                                    ; $5f64: $36 $00
  ld a, $7c                                       ; $5f66: $3e $7c
  call Call_000_33f3                              ; $5f68: $cd $f3 $33

  db $00, $3c, $12

  ld a, $82                                       ; $5f6e: $3e $82
  call Call_000_33f3                              ; $5f70: $cd $f3 $33

  db $00, $3c, $12

  xor a                                           ; $5f76: $af
  ld hl, $471b                                    ; $5f77: $21 $1b $47
  call Call_000_33f3                              ; $5f7a: $cd $f3 $33

  db $06, $fd, $50

  ld a, $02                                       ; $5f80: $3e $02
  ld [$c0a0], a                                   ; $5f82: $ea $a0 $c0
  ldh [$ff9a], a                                  ; $5f85: $e0 $9a
  ld a, $04                                       ; $5f87: $3e $04
  ld [$cc2c], a                                   ; $5f89: $ea $2c $cc
  ld hl, $53be                                    ; $5f8c: $21 $be $53
  call Call_000_33f3                              ; $5f8f: $cd $f3 $33

  db $01, $33, $55

  ld a, $7c                                       ; $5f95: $3e $7c
  jp Jump_000_04e0                                ; $5f97: $c3 $e0 $04


  ld a, [$cd9a]                                   ; $5f9a: $fa $9a $cd
  or a                                            ; $5f9d: $b7
  ret nz                                          ; $5f9e: $c0

  ldh a, [$ffa6]                                  ; $5f9f: $f0 $a6
  bit 0, a                                        ; $5fa1: $cb $47
  jp nz, Jump_004_5fd3                            ; $5fa3: $c2 $d3 $5f

  bit 1, a                                        ; $5fa6: $cb $4f
  jp nz, Jump_004_603f                            ; $5fa8: $c2 $3f $60

  bit 3, a                                        ; $5fab: $cb $5f
  jp nz, Jump_004_603f                            ; $5fad: $c2 $3f $60

  and $c0                                         ; $5fb0: $e6 $c0
  ret z                                           ; $5fb2: $c8

jr_004_5fb3:
  call Call_000_33f3                              ; $5fb3: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffd3]                                  ; $5fb9: $f0 $d3
  ld hl, $5e51                                    ; $5fbb: $21 $51 $5e
  rst $08                                         ; $5fbe: $cf
  cp $ff                                          ; $5fbf: $fe $ff
  ret z                                           ; $5fc1: $c8

  cp $fe                                          ; $5fc2: $fe $fe
  jr nz, jr_004_5fcc                              ; $5fc4: $20 $06

  call Call_004_6057                              ; $5fc6: $cd $57 $60
  ret nz                                          ; $5fc9: $c0

  jr jr_004_5fb3                                  ; $5fca: $18 $e7

jr_004_5fcc:
  call Call_004_6b32                              ; $5fcc: $cd $32 $6b
  or a                                            ; $5fcf: $b7
  ret nz                                          ; $5fd0: $c0

  jr jr_004_5fb3                                  ; $5fd1: $18 $e0

Jump_004_5fd3:
  ldh a, [$ffd3]                                  ; $5fd3: $f0 $d3
  cp $03                                          ; $5fd5: $fe $03
  jr nz, jr_004_5fe8                              ; $5fd7: $20 $0f

  ld a, $a2                                       ; $5fd9: $3e $a2
  call Call_000_392b                              ; $5fdb: $cd $2b $39
  ld a, [$cdd0]                                   ; $5fde: $fa $d0 $cd
  ld d, a                                         ; $5fe1: $57
  call Call_004_58a0                              ; $5fe2: $cd $a0 $58
  jp Jump_004_614c                                ; $5fe5: $c3 $4c $61


jr_004_5fe8:
  push af                                         ; $5fe8: $f5
  ld a, $00                                       ; $5fe9: $3e $00
  call Call_000_392b                              ; $5feb: $cd $2b $39
  pop af                                          ; $5fee: $f1
  ld hl, $5e5b                                    ; $5fef: $21 $5b $5e
  call Call_000_317a                              ; $5ff2: $cd $7a $31
  ld a, [hl]                                      ; $5ff5: $7e
  push af                                         ; $5ff6: $f5
  cp $11                                          ; $5ff7: $fe $11
  jr z, jr_004_6012                               ; $5ff9: $28 $17

  cp $12                                          ; $5ffb: $fe $12
  jr z, jr_004_601e                               ; $5ffd: $28 $1f

  cp $18                                          ; $5fff: $fe $18
  jr z, jr_004_601e                               ; $6001: $28 $1b

  cp $10                                          ; $6003: $fe $10
  jr z, jr_004_601e                               ; $6005: $28 $17

  ld hl, $cc5e                                    ; $6007: $21 $5e $cc
  ld a, [hl+]                                     ; $600a: $2a
  ld h, [hl]                                      ; $600b: $66
  ld l, a                                         ; $600c: $6f
  call Call_000_38fe                              ; $600d: $cd $fe $38
  jr jr_004_601e                                  ; $6010: $18 $0c

jr_004_6012:
  ldh a, [$ffd3]                                  ; $6012: $f0 $d3
  ld hl, $5e5c                                    ; $6014: $21 $5c $5e
  call Call_000_317a                              ; $6017: $cd $7a $31
  ld a, [hl]                                      ; $601a: $7e
  ld [$cec4], a                                   ; $601b: $ea $c4 $ce

jr_004_601e:
  rst $18                                         ; $601e: $df
  ld c, $7f                                       ; $601f: $0e $7f
  ld e, $10                                       ; $6021: $1e $10
  ld d, $0a                                       ; $6023: $16 $0a
  ld hl, $0060                                    ; $6025: $21 $60 $00
  call Call_000_149f                              ; $6028: $cd $9f $14
  ld c, $7f                                       ; $602b: $0e $7f
  ld e, $13                                       ; $602d: $1e $13
  ld d, $05                                       ; $602f: $16 $05
  ld hl, $01a0                                    ; $6031: $21 $a0 $01
  call Call_000_149f                              ; $6034: $cd $9f $14
  rst $20                                         ; $6037: $e7
  call Call_000_3363                              ; $6038: $cd $63 $33
  pop af                                          ; $603b: $f1
  jp Jump_000_261e                                ; $603c: $c3 $1e $26


Jump_004_603f:
  ld a, $03                                       ; $603f: $3e $03
  call Call_000_392b                              ; $6041: $cd $2b $39
  ld a, $03                                       ; $6044: $3e $03
  call Call_000_392b                              ; $6046: $cd $2b $39
  ld hl, $cc5e                                    ; $6049: $21 $5e $cc
  ld a, [hl+]                                     ; $604c: $2a
  ld h, [hl]                                      ; $604d: $66
  ld l, a                                         ; $604e: $6f
  call Call_000_38fe                              ; $604f: $cd $fe $38
  ld a, $0b                                       ; $6052: $3e $0b
  jp Jump_000_261e                                ; $6054: $c3 $1e $26


Call_004_6057:
  push bc                                         ; $6057: $c5
  push hl                                         ; $6058: $e5
  ldh [$ffbd], a                                  ; $6059: $e0 $bd
  ldh a, [rSVBK]                                  ; $605b: $f0 $70
  push af                                         ; $605d: $f5
  ld a, $06                                       ; $605e: $3e $06
  ldh [rSVBK], a                                  ; $6060: $e0 $70
  ldh a, [$ffbd]                                  ; $6062: $f0 $bd
  ld hl, $d9f2                                    ; $6064: $21 $f2 $d9
  xor a                                           ; $6067: $af
  ld b, [hl]                                      ; $6068: $46
  inc hl                                          ; $6069: $23
  or b                                            ; $606a: $b0
  ld b, [hl]                                      ; $606b: $46
  inc hl                                          ; $606c: $23
  or b                                            ; $606d: $b0
  ld b, [hl]                                      ; $606e: $46
  or b                                            ; $606f: $b0
  ld b, a                                         ; $6070: $47
  ldh [$ffbd], a                                  ; $6071: $e0 $bd
  pop af                                          ; $6073: $f1
  ldh [rSVBK], a                                  ; $6074: $e0 $70
  ldh a, [$ffbd]                                  ; $6076: $f0 $bd
  ld a, b                                         ; $6078: $78
  or a                                            ; $6079: $b7
  pop hl                                          ; $607a: $e1
  pop bc                                          ; $607b: $c1
  ret                                             ; $607c: $c9


  db $01, $00, $00, $00, $00, $10, $02, $00, $00

Call_004_6086:
  ld hl, $ffb9                                    ; $6086: $21 $b9 $ff
  ld [hl], $6d                                    ; $6089: $36 $6d
  inc hl                                          ; $608b: $23
  ld [hl], $02                                    ; $608c: $36 $02
  rst $18                                         ; $608e: $df
  call Call_000_33eb                              ; $608f: $cd $eb $33
  add $0a                                         ; $6092: $c6 $0a
  ld hl, $558b                                    ; $6094: $21 $8b $55
  call Call_000_33f3                              ; $6097: $cd $f3 $33

  db $00, $76, $2a

  call Call_000_33eb                              ; $609d: $cd $eb $33
  add $0a                                         ; $60a0: $c6 $0a
  ld de, $607d                                    ; $60a2: $11 $7d $60
  call Call_000_33f3                              ; $60a5: $cd $f3 $33

  db $00, $2e, $26

  rst $20                                         ; $60ab: $e7
  ret                                             ; $60ac: $c9


Call_004_60ad:
  ld hl, $5e1c                                    ; $60ad: $21 $1c $5e
  call Call_000_3013                              ; $60b0: $cd $13 $30
  ld a, $7c                                       ; $60b3: $3e $7c
  ld [$c159], a                                   ; $60b5: $ea $59 $c1
  ld a, $01                                       ; $60b8: $3e $01
  ld [$c1a2], a                                   ; $60ba: $ea $a2 $c1
  ld b, $00                                       ; $60bd: $06 $00

jr_004_60bf:
  ld a, b                                         ; $60bf: $78
  ld hl, $5e51                                    ; $60c0: $21 $51 $5e
  rst $08                                         ; $60c3: $cf
  cp $ff                                          ; $60c4: $fe $ff
  jr z, jr_004_60ef                               ; $60c6: $28 $27

  cp $fe                                          ; $60c8: $fe $fe
  jr nz, jr_004_60d3                              ; $60ca: $20 $07

  call Call_004_6057                              ; $60cc: $cd $57 $60
  jr z, jr_004_60d9                               ; $60cf: $28 $08

  jr jr_004_60ef                                  ; $60d1: $18 $1c

jr_004_60d3:
  call Call_004_6b32                              ; $60d3: $cd $32 $6b
  or a                                            ; $60d6: $b7
  jr nz, jr_004_60ef                              ; $60d7: $20 $16

jr_004_60d9:
  ld a, $12                                       ; $60d9: $3e $12
  ld [$c15a], a                                   ; $60db: $ea $5a $c1
  ld a, b                                         ; $60de: $78
  ld hl, $1585                                    ; $60df: $21 $85 $15
  call Call_000_33f3                              ; $60e2: $cd $f3 $33
  ld bc, $6675                                    ; $60e5: $01 $75 $66
  ld a, $10                                       ; $60e8: $3e $10
  ld [$c15a], a                                   ; $60ea: $ea $5a $c1
  jr jr_004_60f9                                  ; $60ed: $18 $0a

jr_004_60ef:
  ld hl, $1585                                    ; $60ef: $21 $85 $15
  ld a, b                                         ; $60f2: $78
  call Call_000_33f3                              ; $60f3: $cd $f3 $33

  db $01, $75, $66

jr_004_60f9:
  inc b                                           ; $60f9: $04
  ld a, b                                         ; $60fa: $78
  cp $06                                          ; $60fb: $fe $06
  jr nz, jr_004_60bf                              ; $60fd: $20 $c0

  ret                                             ; $60ff: $c9


Call_004_6100:
  ld hl, $5e40                                    ; $6100: $21 $40 $5e
  call Call_000_3013                              ; $6103: $cd $13 $30
  ld a, $7c                                       ; $6106: $3e $7c
  ld [$c159], a                                   ; $6108: $ea $59 $c1
  ld a, $01                                       ; $610b: $3e $01
  ld [$c1a2], a                                   ; $610d: $ea $a2 $c1
  ld a, $13                                       ; $6110: $3e $13
  ld [$c15a], a                                   ; $6112: $ea $5a $c1
  ld hl, $2158                                    ; $6115: $21 $58 $21
  call Call_000_33f3                              ; $6118: $cd $f3 $33

  db $01, $28, $66

  ld a, $04                                       ; $611e: $3e $04
  ld [$c1a2], a                                   ; $6120: $ea $a2 $c1
  ld a, $10                                       ; $6123: $3e $10
  ld [$c15a], a                                   ; $6125: $ea $5a $c1
  ld hl, $1bac                                    ; $6128: $21 $ac $1b
  ldh [$ffbd], a                                  ; $612b: $e0 $bd
  ldh a, [rSVBK]                                  ; $612d: $f0 $70
  push af                                         ; $612f: $f5
  ld a, $06                                       ; $6130: $3e $06
  ldh [rSVBK], a                                  ; $6132: $e0 $70
  ldh a, [$ffbd]                                  ; $6134: $f0 $bd
  ld a, [$dcc8]                                   ; $6136: $fa $c8 $dc
  ldh [$ffbd], a                                  ; $6139: $e0 $bd
  pop af                                          ; $613b: $f1
  ldh [rSVBK], a                                  ; $613c: $e0 $70
  ldh a, [$ffbd]                                  ; $613e: $f0 $bd
  cp $ff                                          ; $6140: $fe $ff
  ret z                                           ; $6142: $c8

  call Call_000_3173                              ; $6143: $cd $73 $31
  call Call_000_3427                              ; $6146: $cd $27 $34

  db $01, $28, $66

Jump_004_614c:
  xor a                                           ; $614c: $af
  ld [$cc2c], a                                   ; $614d: $ea $2c $cc
  rst $18                                         ; $6150: $df
  ld c, $7f                                       ; $6151: $0e $7f
  ld e, $13                                       ; $6153: $1e $13
  ld d, $06                                       ; $6155: $16 $06
  ld hl, $0180                                    ; $6157: $21 $80 $01
  call Call_000_149f                              ; $615a: $cd $9f $14
  ld hl, $5e33                                    ; $615d: $21 $33 $5e
  call Call_000_3013                              ; $6160: $cd $13 $30
  ld a, $88                                       ; $6163: $3e $88
  ld [$c159], a                                   ; $6165: $ea $59 $c1
  ld a, $03                                       ; $6168: $3e $03
  ld [$c1a2], a                                   ; $616a: $ea $a2 $c1
  ld hl, $21b5                                    ; $616d: $21 $b5 $21
  call Call_000_33f3                              ; $6170: $cd $f3 $33

  db $01, $28, $66

  ld hl, $17e9                                    ; $6176: $21 $e9 $17
  call Call_000_33f3                              ; $6179: $cd $f3 $33

  db $01, $28, $66

  rst $20                                         ; $617f: $e7
  ld hl, $cd44                                    ; $6180: $21 $44 $cd
  ld [hl], $8d                                    ; $6183: $36 $8d
  inc hl                                          ; $6185: $23
  ld [hl], $61                                    ; $6186: $36 $61
  ld a, $16                                       ; $6188: $3e $16
  jp Jump_000_392b                                ; $618a: $c3 $2b $39


  ldh a, [$ffa6]                                  ; $618d: $f0 $a6
  and $0f                                         ; $618f: $e6 $0f
  ret z                                           ; $6191: $c8

  ld hl, $cc5e                                    ; $6192: $21 $5e $cc
  ld a, [hl+]                                     ; $6195: $2a
  ld h, [hl]                                      ; $6196: $66
  ld l, a                                         ; $6197: $6f
  call Call_000_38fe                              ; $6198: $cd $fe $38
  ld a, $0b                                       ; $619b: $3e $0b
  jp Jump_000_261e                                ; $619d: $c3 $1e $26


Call_004_61a0:
  rst $18                                         ; $61a0: $df
  ld c, $7f                                       ; $61a1: $0e $7f
  ld e, $14                                       ; $61a3: $1e $14
  ld d, $0f                                       ; $61a5: $16 $0f
  ld b, $03                                       ; $61a7: $06 $03
  ld hl, $0080                                    ; $61a9: $21 $80 $00
  call Call_000_14a1                              ; $61ac: $cd $a1 $14
  rst $20                                         ; $61af: $e7
  jp Jump_000_3363                                ; $61b0: $c3 $63 $33


  ld a, $02                                       ; $61b3: $3e $02
  ldh [$ffd3], a                                  ; $61b5: $e0 $d3
  ld hl, $4754                                    ; $61b7: $21 $54 $47
  call Call_000_33f3                              ; $61ba: $cd $f3 $33

  db $06, $fd, $50

  ld a, $80                                       ; $61c0: $3e $80
  ldh [$ffa6], a                                  ; $61c2: $e0 $a6
  call Call_004_61e6                              ; $61c4: $cd $e6 $61
  call Call_004_61a0                              ; $61c7: $cd $a0 $61
  rst $18                                         ; $61ca: $df
  call Call_004_6235                              ; $61cb: $cd $35 $62
  call Call_004_6100                              ; $61ce: $cd $00 $61
  rst $20                                         ; $61d1: $e7
  xor a                                           ; $61d2: $af
  ld [$cc2a], a                                   ; $61d3: $ea $2a $cc
  ld a, $04                                       ; $61d6: $3e $04
  ld [$cc2c], a                                   ; $61d8: $ea $2c $cc
  ret                                             ; $61db: $c9


  ldh a, [$ffa6]                                  ; $61dc: $f0 $a6
  bit 1, a                                        ; $61de: $cb $4f
  jr nz, jr_004_6228                              ; $61e0: $20 $46

  bit 0, a                                        ; $61e2: $cb $47
  jr nz, jr_004_6211                              ; $61e4: $20 $2b

Call_004_61e6:
jr_004_61e6:
  ldh a, [$ffa6]                                  ; $61e6: $f0 $a6
  and $c0                                         ; $61e8: $e6 $c0
  ret z                                           ; $61ea: $c8

  call Call_000_33f3                              ; $61eb: $cd $f3 $33

  db $06, $17, $51

  ldh a, [$ffd3]                                  ; $61f1: $f0 $d3
  ld hl, $5e58                                    ; $61f3: $21 $58 $5e
  rst $08                                         ; $61f6: $cf
  ld hl, $d970                                    ; $61f7: $21 $70 $d9
  ldh [$ffbd], a                                  ; $61fa: $e0 $bd
  ldh a, [rSVBK]                                  ; $61fc: $f0 $70
  push af                                         ; $61fe: $f5
  ld a, $06                                       ; $61ff: $3e $06
  ldh [rSVBK], a                                  ; $6201: $e0 $70
  ldh a, [$ffbd]                                  ; $6203: $f0 $bd
  rst $08                                         ; $6205: $cf
  ldh [$ffbd], a                                  ; $6206: $e0 $bd
  pop af                                          ; $6208: $f1
  ldh [rSVBK], a                                  ; $6209: $e0 $70
  ldh a, [$ffbd]                                  ; $620b: $f0 $bd
  or a                                            ; $620d: $b7
  ret nz                                          ; $620e: $c0

  jr jr_004_61e6                                  ; $620f: $18 $d5

jr_004_6211:
  ld hl, $cc5e                                    ; $6211: $21 $5e $cc
  ld a, [hl+]                                     ; $6214: $2a
  ld h, [hl]                                      ; $6215: $66
  ld l, a                                         ; $6216: $6f
  call Call_000_38fe                              ; $6217: $cd $fe $38
  ld a, $00                                       ; $621a: $3e $00
  call Call_000_392b                              ; $621c: $cd $2b $39
  ld hl, $5e69                                    ; $621f: $21 $69 $5e
  ldh a, [$ffd3]                                  ; $6222: $f0 $d3
  rst $08                                         ; $6224: $cf
  jp Jump_000_261e                                ; $6225: $c3 $1e $26


jr_004_6228:
  ld a, $03                                       ; $6228: $3e $03
  call Call_000_392b                              ; $622a: $cd $2b $39
  call Call_004_61a0                              ; $622d: $cd $a0 $61
  ld a, $0f                                       ; $6230: $3e $0f
  jp Jump_000_261e                                ; $6232: $c3 $1e $26


Call_004_6235:
  ld hl, $5e1c                                    ; $6235: $21 $1c $5e
  call Call_000_3013                              ; $6238: $cd $13 $30
  ld a, $7c                                       ; $623b: $3e $7c
  ld [$c159], a                                   ; $623d: $ea $59 $c1
  ld a, $01                                       ; $6240: $3e $01
  ld [$c1a2], a                                   ; $6242: $ea $a2 $c1
  ld b, $00                                       ; $6245: $06 $00

jr_004_6247:
  ld a, b                                         ; $6247: $78
  ld hl, $5e58                                    ; $6248: $21 $58 $5e
  rst $08                                         ; $624b: $cf
  cp $ff                                          ; $624c: $fe $ff
  jr z, jr_004_626c                               ; $624e: $28 $1c

  call Call_004_6b32                              ; $6250: $cd $32 $6b
  or a                                            ; $6253: $b7
  jr nz, jr_004_626c                              ; $6254: $20 $16

  ld a, $12                                       ; $6256: $3e $12
  ld [$c15a], a                                   ; $6258: $ea $5a $c1
  ld a, b                                         ; $625b: $78
  ld hl, $159a                                    ; $625c: $21 $9a $15
  call Call_000_33f3                              ; $625f: $cd $f3 $33

  db $01, $75, $66

  ld a, $10                                       ; $6265: $3e $10
  ld [$c15a], a                                   ; $6267: $ea $5a $c1
  jr jr_004_6276                                  ; $626a: $18 $0a

jr_004_626c:
  ld hl, $159a                                    ; $626c: $21 $9a $15
  ld a, b                                         ; $626f: $78
  call Call_000_33f3                              ; $6270: $cd $f3 $33

  db $01, $75, $66

jr_004_6276:
  inc b                                           ; $6276: $04
  ld a, b                                         ; $6277: $78
  cp $03                                          ; $6278: $fe $03
  jr nz, jr_004_6247                              ; $627a: $20 $cb

  ret                                             ; $627c: $c9


  db $3c, $5c, $7c, $84, $bd, $be, $bf, $9c, $9d, $9d, $9d, $10, $01, $8f, $62, $b0
  db $00, $41, $c7, $d0, $47, $d1, $c7, $d1, $cd, $a0, $61, $3e, $04, $ea, $2c, $cc
  db $af, $ea, $3f, $cb, $ea, $c3, $ce, $cd, $f3, $33, $07, $e5, $47, $cd, $61, $63

  xor a                                           ; $62ad: $af
  ld hl, $476d                                    ; $62ae: $21 $6d $47
  call Call_000_33f3                              ; $62b1: $cd $f3 $33

  db $06, $fd, $50

  ret                                             ; $62b7: $c9


  ldh a, [$ffa6]                                  ; $62b8: $f0 $a6
  bit 0, a                                        ; $62ba: $cb $47
  jp nz, Jump_004_633a                            ; $62bc: $c2 $3a $63

  bit 1, a                                        ; $62bf: $cb $4f
  jp nz, Jump_004_62ea                            ; $62c1: $c2 $ea $62

  ldh a, [$ffd3]                                  ; $62c4: $f0 $d3
  ld c, a                                         ; $62c6: $4f
  push bc                                         ; $62c7: $c5

jr_004_62c8:
  call Call_000_33f3                              ; $62c8: $cd $f3 $33

  db $06, $2b, $51

  ldh a, [$ffd3]                                  ; $62ce: $f0 $d3
  inc a                                           ; $62d0: $3c
  ld b, a                                         ; $62d1: $47
  ld a, [$cb3f]                                   ; $62d2: $fa $3f $cb
  cp b                                            ; $62d5: $b8
  jr c, jr_004_62c8                               ; $62d6: $38 $f0

  pop bc                                          ; $62d8: $c1
  ldh a, [$ffd3]                                  ; $62d9: $f0 $d3
  cp c                                            ; $62db: $b9
  ret z                                           ; $62dc: $c8

  call Call_004_634e                              ; $62dd: $cd $4e $63
  ld [$cec3], a                                   ; $62e0: $ea $c3 $ce
  call Call_000_33f3                              ; $62e3: $cd $f3 $33

  db $07, $e5, $47

  ret                                             ; $62e9: $c9


Jump_004_62ea:
  ld a, $03                                       ; $62ea: $3e $03
  call Call_000_392b                              ; $62ec: $cd $2b $39
  call Call_004_630d                              ; $62ef: $cd $0d $63
  xor a                                           ; $62f2: $af
  ld [$cec3], a                                   ; $62f3: $ea $c3 $ce
  call Call_000_33f3                              ; $62f6: $cd $f3 $33

  db $07, $e5, $47

  ld a, [$cbed]                                   ; $62fc: $fa $ed $cb
  or a                                            ; $62ff: $b7
  jr z, jr_004_6307                               ; $6300: $28 $05

  ld a, $15                                       ; $6302: $3e $15
  jp Jump_000_261e                                ; $6304: $c3 $1e $26


jr_004_6307:
  ld a, $0f                                       ; $6307: $3e $0f
  jp Jump_000_261e                                ; $6309: $c3 $1e $26


  ret                                             ; $630c: $c9


Call_004_630d:
  ld b, $00                                       ; $630d: $06 $00

jr_004_630f:
  push bc                                         ; $630f: $c5
  ld e, $ff                                       ; $6310: $1e $ff
  call Call_004_63b5                              ; $6312: $cd $b5 $63
  ld a, b                                         ; $6315: $78
  rst $08                                         ; $6316: $cf
  call Call_000_0a46                              ; $6317: $cd $46 $0a
  jr nz, jr_004_6321                              ; $631a: $20 $05

  ld b, h                                         ; $631c: $44
  ld c, l                                         ; $631d: $4d
  call Call_000_0dbb                              ; $631e: $cd $bb $0d

jr_004_6321:
  pop bc                                          ; $6321: $c1
  inc b                                           ; $6322: $04
  ld a, b                                         ; $6323: $78
  cp $04                                          ; $6324: $fe $04
  jr nz, jr_004_630f                              ; $6326: $20 $e7

  rst $18                                         ; $6328: $df
  ld c, $7f                                       ; $6329: $0e $7f
  ld e, $0d                                       ; $632b: $1e $0d
  ld d, $09                                       ; $632d: $16 $09
  ld hl, $00c7                                    ; $632f: $21 $c7 $00
  call Call_000_149f                              ; $6332: $cd $9f $14
  rst $20                                         ; $6335: $e7
  call Call_000_3363                              ; $6336: $cd $63 $33
  ret                                             ; $6339: $c9


Jump_004_633a:
  ld a, $00                                       ; $633a: $3e $00
  call Call_000_392b                              ; $633c: $cd $2b $39
  call Call_004_630d                              ; $633f: $cd $0d $63
  call Call_004_634e                              ; $6342: $cd $4e $63
  ld [$cec3], a                                   ; $6345: $ea $c3 $ce
  ld a, [$cec4]                                   ; $6348: $fa $c4 $ce
  jp Jump_000_261e                                ; $634b: $c3 $1e $26


Call_004_634e:
  ldh a, [$ffd3]                                  ; $634e: $f0 $d3
  ld c, $ff                                       ; $6350: $0e $ff
  ld b, a                                         ; $6352: $47
  inc b                                           ; $6353: $04
  ld hl, $cebc                                    ; $6354: $21 $bc $ce

jr_004_6357:
  inc c                                           ; $6357: $0c
  ld a, [hl+]                                     ; $6358: $2a
  or a                                            ; $6359: $b7
  jr z, jr_004_6357                               ; $635a: $28 $fb

  dec b                                           ; $635c: $05
  jr nz, jr_004_6357                              ; $635d: $20 $f8

  ld a, c                                         ; $635f: $79
  ret                                             ; $6360: $c9


  ld hl, $6288                                    ; $6361: $21 $88 $62
  call Call_000_3013                              ; $6364: $cd $13 $30
  ld a, $60                                       ; $6367: $3e $60
  ld [$c159], a                                   ; $6369: $ea $59 $c1
  ld a, $01                                       ; $636c: $3e $01
  ld [$c1a2], a                                   ; $636e: $ea $a2 $c1
  ld b, $00                                       ; $6371: $06 $00

jr_004_6373:
  ld a, b                                         ; $6373: $78
  ld hl, $cebc                                    ; $6374: $21 $bc $ce
  rst $08                                         ; $6377: $cf
  or a                                            ; $6378: $b7
  jr z, jr_004_63ae                               ; $6379: $28 $33

  ld hl, $627d                                    ; $637b: $21 $7d $62
  ld a, [$cb3f]                                   ; $637e: $fa $3f $cb
  rst $08                                         ; $6381: $cf
  ldh [$ff9d], a                                  ; $6382: $e0 $9d
  ld a, $28                                       ; $6384: $3e $28
  ldh [$ff9b], a                                  ; $6386: $e0 $9b
  xor a                                           ; $6388: $af
  ldh [$ff9e], a                                  ; $6389: $e0 $9e
  ldh [$ff9c], a                                  ; $638b: $e0 $9c
  ld hl, $6280                                    ; $638d: $21 $80 $62
  call Call_004_63b5                              ; $6390: $cd $b5 $63
  ld a, b                                         ; $6393: $78
  ldh [$ff9a], a                                  ; $6394: $e0 $9a
  rst $08                                         ; $6396: $cf
  call Call_000_04e0                              ; $6397: $cd $e0 $04
  ld hl, $0055                                    ; $639a: $21 $55 $00
  ld a, b                                         ; $639d: $78
  call Call_000_3173                              ; $639e: $cd $73 $31
  call Call_000_33f3                              ; $63a1: $cd $f3 $33

  db $01, $28, $66

  ld a, [$cb3f]                                   ; $63a7: $fa $3f $cb
  inc a                                           ; $63aa: $3c
  ld [$cb3f], a                                   ; $63ab: $ea $3f $cb

jr_004_63ae:
  inc b                                           ; $63ae: $04
  ld a, b                                         ; $63af: $78
  cp $04                                          ; $63b0: $fe $04
  jr nz, jr_004_6373                              ; $63b2: $20 $bf

  ret                                             ; $63b4: $c9


Call_004_63b5:
  ldh a, [rSVBK]                                  ; $63b5: $f0 $70
  push af                                         ; $63b7: $f5
  ld a, $06                                       ; $63b8: $3e $06
  ldh [rSVBK], a                                  ; $63ba: $e0 $70
  ld a, [$ddc7]                                   ; $63bc: $fa $c7 $dd
  ldh [$ffbd], a                                  ; $63bf: $e0 $bd
  pop af                                          ; $63c1: $f1
  ldh [rSVBK], a                                  ; $63c2: $e0 $70
  ldh a, [$ffbd]                                  ; $63c4: $f0 $bd
  ld hl, $6280                                    ; $63c6: $21 $80 $62
  cp $01                                          ; $63c9: $fe $01
  ret nz                                          ; $63cb: $c0

  ld hl, $6284                                    ; $63cc: $21 $84 $62
  ret                                             ; $63cf: $c9


  db $10, $01, $d7, $63, $a8, $00, $41, $01, $d1, $22, $d1, $42, $d1

  ld a, $ff                                       ; $63dd: $3e $ff
  ld [$cec3], a                                   ; $63df: $ea $c3 $ce
  ld a, $01                                       ; $63e2: $3e $01
  ld [$cbac], a                                   ; $63e4: $ea $ac $cb
  ld a, $05                                       ; $63e7: $3e $05
  ld [$cbad], a                                   ; $63e9: $ea $ad $cb
  ld a, $0c                                       ; $63ec: $3e $0c
  ld [$cbae], a                                   ; $63ee: $ea $ae $cb
  call Call_004_7198                              ; $63f1: $cd $98 $71
  xor a                                           ; $63f4: $af
  ld [$cc2c], a                                   ; $63f5: $ea $2c $cc
  xor a                                           ; $63f8: $af
  ld hl, $45b2                                    ; $63f9: $21 $b2 $45
  call Call_000_33f3                              ; $63fc: $cd $f3 $33

  db $06, $fd, $50

  ld a, $16                                       ; $6402: $3e $16
  ld [$cbe8], a                                   ; $6404: $ea $e8 $cb
  ld a, $18                                       ; $6407: $3e $18
  ld [$cbe9], a                                   ; $6409: $ea $e9 $cb
  ld a, [$cbd0]                                   ; $640c: $fa $d0 $cb
  ld d, $04                                       ; $640f: $16 $04
  ld e, $00                                       ; $6411: $1e $00
  call Call_004_6cbe                              ; $6413: $cd $be $6c
  ld a, $14                                       ; $6416: $3e $14
  jp Jump_000_261e                                ; $6418: $c3 $1e $26


  ld a, [$cec3]                                   ; $641b: $fa $c3 $ce
  inc a                                           ; $641e: $3c
  jr nz, jr_004_6438                              ; $641f: $20 $17

  ld a, [$cbeb]                                   ; $6421: $fa $eb $cb
  ld hl, $69e7                                    ; $6424: $21 $e7 $69
  rst $08                                         ; $6427: $cf
  or a                                            ; $6428: $b7
  jr z, jr_004_6438                               ; $6429: $28 $0d

  ld [$cbed], a                                   ; $642b: $ea $ed $cb
  ld a, $16                                       ; $642e: $3e $16
  ld [$cec4], a                                   ; $6430: $ea $c4 $ce
  ld a, $11                                       ; $6433: $3e $11
  jp Jump_000_261e                                ; $6435: $c3 $1e $26


jr_004_6438:
  rst $18                                         ; $6438: $df
  ld c, $7f                                       ; $6439: $0e $7f
  ld b, $03                                       ; $643b: $06 $03
  ld e, $10                                       ; $643d: $1e $10
  ld d, $0e                                       ; $643f: $16 $0e
  ld hl, $0083                                    ; $6441: $21 $83 $00
  call Call_000_14a1                              ; $6444: $cd $a1 $14
  rst $20                                         ; $6447: $e7
  call Call_000_3363                              ; $6448: $cd $63 $33
  rst $18                                         ; $644b: $df
  ld hl, $63d0                                    ; $644c: $21 $d0 $63
  call Call_000_3013                              ; $644f: $cd $13 $30
  ld a, $7c                                       ; $6452: $3e $7c
  ld [$c159], a                                   ; $6454: $ea $59 $c1
  ld a, $01                                       ; $6457: $3e $01
  ld [$c1a2], a                                   ; $6459: $ea $a2 $c1
  ld hl, $17dd                                    ; $645c: $21 $dd $17
  call Call_000_33f3                              ; $645f: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1816                                    ; $6465: $21 $16 $18
  call Call_000_33f3                              ; $6468: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1819                                    ; $646e: $21 $19 $18
  call Call_000_33f3                              ; $6471: $cd $f3 $33

  db $01, $28, $66

  call Call_004_648d                              ; $6477: $cd $8d $64
  rst $20                                         ; $647a: $e7
  ld a, $04                                       ; $647b: $3e $04
  ld [$cc2c], a                                   ; $647d: $ea $2c $cc
  xor a                                           ; $6480: $af
  ld hl, $46c8                                    ; $6481: $21 $c8 $46
  call Call_000_33f3                              ; $6484: $cd $f3 $33

  db $06, $fd, $50

  jp Jump_004_7903                                ; $648a: $c3 $03 $79


Call_004_648d:
  ld a, $06                                       ; $648d: $3e $06
  call Call_004_78d8                              ; $648f: $cd $d8 $78
  ld e, $06                                       ; $6492: $1e $06
  ld a, [$cbeb]                                   ; $6494: $fa $eb $cb
  ld d, a                                         ; $6497: $57
  call Call_004_787d                              ; $6498: $cd $7d $78
  ld hl, $7078                                    ; $649b: $21 $78 $70
  call Call_000_3013                              ; $649e: $cd $13 $30
  ld a, [$cbae]                                   ; $64a1: $fa $ae $cb
  add a                                           ; $64a4: $87
  add a                                           ; $64a5: $87
  add a                                           ; $64a6: $87
  ld [$c159], a                                   ; $64a7: $ea $59 $c1
  ld a, $02                                       ; $64aa: $3e $02
  ld [$c1a2], a                                   ; $64ac: $ea $a2 $c1
  ld hl, $15fa                                    ; $64af: $21 $fa $15
  ld a, [$cbeb]                                   ; $64b2: $fa $eb $cb
  call Call_000_3173                              ; $64b5: $cd $73 $31
  ld de, $0000                                    ; $64b8: $11 $00 $00
  call Call_000_3427                              ; $64bb: $cd $27 $34

  db $01, $0b, $66

  ldh a, [$ffd0]                                  ; $64c1: $f0 $d0
  res 7, a                                        ; $64c3: $cb $bf
  cp $15                                          ; $64c5: $fe $15
  jr z, jr_004_64cc                               ; $64c7: $28 $03

  cp $16                                          ; $64c9: $fe $16
  ret nz                                          ; $64cb: $c0

jr_004_64cc:
  ldh a, [$ffa6]                                  ; $64cc: $f0 $a6
  bit 0, a                                        ; $64ce: $cb $47
  jr nz, jr_004_64df                              ; $64d0: $20 $0d

  bit 1, a                                        ; $64d2: $cb $4f
  jr nz, jr_004_64f9                              ; $64d4: $20 $23

  and $c0                                         ; $64d6: $e6 $c0
  ret z                                           ; $64d8: $c8

  call Call_000_3427                              ; $64d9: $cd $27 $34
  ld b, $17                                       ; $64dc: $06 $17
  ld d, c                                         ; $64de: $51

jr_004_64df:
  ld a, $00                                       ; $64df: $3e $00
  call Call_000_392b                              ; $64e1: $cd $2b $39
  ldh a, [$ffd3]                                  ; $64e4: $f0 $d3
  or a                                            ; $64e6: $b7
  jr nz, jr_004_64fe                              ; $64e7: $20 $15

  ld a, [$cbeb]                                   ; $64e9: $fa $eb $cb
  call Call_004_6dbb                              ; $64ec: $cd $bb $6d
  ld a, l                                         ; $64ef: $7d
  or h                                            ; $64f0: $b4
  ret z                                           ; $64f1: $c8

  ld a, $17                                       ; $64f2: $3e $17
  call Call_000_261e                              ; $64f4: $cd $1e $26
  jr jr_004_6505                                  ; $64f7: $18 $0c

jr_004_64f9:
  ld a, $03                                       ; $64f9: $3e $03
  call Call_000_392b                              ; $64fb: $cd $2b $39

jr_004_64fe:
  ldh a, [$ffca]                                  ; $64fe: $f0 $ca
  call Call_000_261e                              ; $6500: $cd $1e $26
  jr jr_004_6505                                  ; $6503: $18 $00

jr_004_6505:
  ld a, $ff                                       ; $6505: $3e $ff
  ld [$cec3], a                                   ; $6507: $ea $c3 $ce
  ld e, $06                                       ; $650a: $1e $06
  jp Jump_004_78ee                                ; $650c: $c3 $ee $78


  nop                                             ; $650f: $00
  nop                                             ; $6510: $00
  nop                                             ; $6511: $00
  nop                                             ; $6512: $00
  nop                                             ; $6513: $00
  nop                                             ; $6514: $00

  db $00, $00, $03, $04, $01, $01

  nop                                             ; $651b: $00
  nop                                             ; $651c: $00
  ld [bc], a                                      ; $651d: $02
  inc b                                           ; $651e: $04
  ld bc, $0001                                    ; $651f: $01 $01 $00
  nop                                             ; $6522: $00
  ld [bc], a                                      ; $6523: $02
  inc b                                           ; $6524: $04
  ld bc, $0001                                    ; $6525: $01 $01 $00
  nop                                             ; $6528: $00
  ld b, $08                                       ; $6529: $06 $08
  inc bc                                          ; $652b: $03
  rst $38                                         ; $652c: $ff
  nop                                             ; $652d: $00
  nop                                             ; $652e: $00
  rlca                                            ; $652f: $07
  ld a, [bc]                                      ; $6530: $0a
  inc bc                                          ; $6531: $03
  rst $38                                         ; $6532: $ff
  nop                                             ; $6533: $00
  nop                                             ; $6534: $00
  ld [$030d], sp                                  ; $6535: $08 $0d $03
  ld [bc], a                                      ; $6538: $02
  nop                                             ; $6539: $00
  nop                                             ; $653a: $00
  add hl, bc                                      ; $653b: $09
  dec c                                           ; $653c: $0d
  inc b                                           ; $653d: $04
  cp $00                                          ; $653e: $fe $00
  nop                                             ; $6540: $00
  ld a, [bc]                                      ; $6541: $0a
  db $10                                          ; $6542: $10
  inc b                                           ; $6543: $04
  ld [bc], a                                      ; $6544: $02
  nop                                             ; $6545: $00
  nop                                             ; $6546: $00
  inc c                                           ; $6547: $0c
  db $10                                          ; $6548: $10
  inc b                                           ; $6549: $04
  cp $00                                          ; $654a: $fe $00
  nop                                             ; $654c: $00
  rrca                                            ; $654d: $0f
  ld [de], a                                      ; $654e: $12
  dec b                                           ; $654f: $05
  inc bc                                          ; $6550: $03
  nop                                             ; $6551: $00
  nop                                             ; $6552: $00
  rrca                                            ; $6553: $0f
  ld [de], a                                      ; $6554: $12
  dec b                                           ; $6555: $05
  inc bc                                          ; $6556: $03
  nop                                             ; $6557: $00
  nop                                             ; $6558: $00
  rrca                                            ; $6559: $0f
  inc d                                           ; $655a: $14
  dec b                                           ; $655b: $05
  inc bc                                          ; $655c: $03
  nop                                             ; $655d: $00
  nop                                             ; $655e: $00
  nop                                             ; $655f: $00
  nop                                             ; $6560: $00
  nop                                             ; $6561: $00
  nop                                             ; $6562: $00

  db $00, $00, $07, $00, $00, $00

  nop                                             ; $6569: $00
  nop                                             ; $656a: $00
  ld [$0200], sp                                  ; $656b: $08 $00 $02
  nop                                             ; $656e: $00
  nop                                             ; $656f: $00
  nop                                             ; $6570: $00
  inc c                                           ; $6571: $0c
  nop                                             ; $6572: $00
  inc b                                           ; $6573: $04
  nop                                             ; $6574: $00
  nop                                             ; $6575: $00
  nop                                             ; $6576: $00
  stop                                            ; $6577: $10 $00
  ld b, $03                                       ; $6579: $06 $03
  nop                                             ; $657b: $00
  nop                                             ; $657c: $00
  stop                                            ; $657d: $10 $00
  ld [$0003], sp                                  ; $657f: $08 $03 $00
  nop                                             ; $6582: $00
  stop                                            ; $6583: $10 $00
  ld a, [bc]                                      ; $6585: $0a
  inc bc                                          ; $6586: $03
  nop                                             ; $6587: $00
  nop                                             ; $6588: $00
  ld d, $00                                       ; $6589: $16 $00
  dec c                                           ; $658b: $0d
  db $fd                                          ; $658c: $fd
  nop                                             ; $658d: $00
  nop                                             ; $658e: $00
  inc e                                           ; $658f: $1c
  nop                                             ; $6590: $00
  dec c                                           ; $6591: $0d
  db $fd                                          ; $6592: $fd
  nop                                             ; $6593: $00
  nop                                             ; $6594: $00
  inc h                                           ; $6595: $24
  nop                                             ; $6596: $00
  stop                                            ; $6597: $10 $00
  nop                                             ; $6599: $00
  nop                                             ; $659a: $00
  jr z, jr_004_659d                               ; $659b: $28 $00

jr_004_659d:
  db $10                                          ; $659d: $10
  db $fd                                          ; $659e: $fd
  nop                                             ; $659f: $00
  nop                                             ; $65a0: $00
  ld [hl-], a                                     ; $65a1: $32
  nop                                             ; $65a2: $00
  ld [de], a                                      ; $65a3: $12
  inc bc                                          ; $65a4: $03
  nop                                             ; $65a5: $00
  nop                                             ; $65a6: $00
  ld [hl-], a                                     ; $65a7: $32
  nop                                             ; $65a8: $00
  ld [de], a                                      ; $65a9: $12
  inc bc                                          ; $65aa: $03
  nop                                             ; $65ab: $00
  nop                                             ; $65ac: $00
  ld [hl-], a                                     ; $65ad: $32
  nop                                             ; $65ae: $00
  inc d                                           ; $65af: $14
  inc bc                                          ; $65b0: $03
  nop                                             ; $65b1: $00
  nop                                             ; $65b2: $00
  nop                                             ; $65b3: $00
  nop                                             ; $65b4: $00
  nop                                             ; $65b5: $00
  nop                                             ; $65b6: $00
  nop                                             ; $65b7: $00
  nop                                             ; $65b8: $00
  ld bc, $0001                                    ; $65b9: $01 $01 $00
  ld bc, $0000                                    ; $65bc: $01 $00 $00
  ld [bc], a                                      ; $65bf: $02
  nop                                             ; $65c0: $00
  ld [bc], a                                      ; $65c1: $02
  ld [bc], a                                      ; $65c2: $02
  nop                                             ; $65c3: $00
  nop                                             ; $65c4: $00
  nop                                             ; $65c5: $00
  nop                                             ; $65c6: $00
  rlca                                            ; $65c7: $07
  inc bc                                          ; $65c8: $03
  nop                                             ; $65c9: $00
  nop                                             ; $65ca: $00
  ld b, $06                                       ; $65cb: $06 $06
  inc bc                                          ; $65cd: $03
  nop                                             ; $65ce: $00
  nop                                             ; $65cf: $00
  nop                                             ; $65d0: $00
  ld b, $00                                       ; $65d1: $06 $00
  ld b, $03                                       ; $65d3: $06 $03
  nop                                             ; $65d5: $00
  nop                                             ; $65d6: $00
  nop                                             ; $65d7: $00
  ld b, $03                                       ; $65d8: $06 $03
  ld b, $00                                       ; $65da: $06 $00
  nop                                             ; $65dc: $00
  ld b, $08                                       ; $65dd: $06 $08
  ld b, $00                                       ; $65df: $06 $00
  nop                                             ; $65e1: $00
  nop                                             ; $65e2: $00
  dec b                                           ; $65e3: $05
  nop                                             ; $65e4: $00
  ld a, [bc]                                      ; $65e5: $0a
  ld a, [bc]                                      ; $65e6: $0a
  nop                                             ; $65e7: $00
  nop                                             ; $65e8: $00
  stop                                            ; $65e9: $10 $00
  nop                                             ; $65eb: $00
  ld c, $00                                       ; $65ec: $0e $00
  nop                                             ; $65ee: $00
  inc d                                           ; $65ef: $14
  rrca                                            ; $65f0: $0f
  nop                                             ; $65f1: $00
  nop                                             ; $65f2: $00
  nop                                             ; $65f3: $00
  nop                                             ; $65f4: $00
  nop                                             ; $65f5: $00
  nop                                             ; $65f6: $00
  inc d                                           ; $65f7: $14
  rrca                                            ; $65f8: $0f
  nop                                             ; $65f9: $00
  nop                                             ; $65fa: $00
  add hl, de                                      ; $65fb: $19
  ld a, [bc]                                      ; $65fc: $0a
  nop                                             ; $65fd: $00
  nop                                             ; $65fe: $00
  nop                                             ; $65ff: $00
  nop                                             ; $6600: $00
  nop                                             ; $6601: $00
  nop                                             ; $6602: $00
  nop                                             ; $6603: $00
  nop                                             ; $6604: $00
  nop                                             ; $6605: $00
  nop                                             ; $6606: $00
  ld [bc], a                                      ; $6607: $02
  nop                                             ; $6608: $00
  nop                                             ; $6609: $00
  nop                                             ; $660a: $00
  nop                                             ; $660b: $00
  nop                                             ; $660c: $00
  dec b                                           ; $660d: $05
  nop                                             ; $660e: $00
  nop                                             ; $660f: $00
  rst $38                                         ; $6610: $ff
  nop                                             ; $6611: $00
  nop                                             ; $6612: $00
  ld b, $00                                       ; $6613: $06 $00
  nop                                             ; $6615: $00
  ld bc, $0000                                    ; $6616: $01 $00 $00
  ld [$0000], sp                                  ; $6619: $08 $00 $00
  ld [bc], a                                      ; $661c: $02
  nop                                             ; $661d: $00
  nop                                             ; $661e: $00
  inc c                                           ; $661f: $0c
  nop                                             ; $6620: $00
  nop                                             ; $6621: $00
  inc b                                           ; $6622: $04
  nop                                             ; $6623: $00
  nop                                             ; $6624: $00
  inc c                                           ; $6625: $0c
  nop                                             ; $6626: $00
  nop                                             ; $6627: $00
  inc b                                           ; $6628: $04
  nop                                             ; $6629: $00
  ld [bc], a                                      ; $662a: $02
  stop                                            ; $662b: $10 $00
  nop                                             ; $662d: $00
  cp $00                                          ; $662e: $fe $00
  nop                                             ; $6630: $00
  ld c, $00                                       ; $6631: $0e $00
  nop                                             ; $6633: $00
  ld b, $00                                       ; $6634: $06 $00
  nop                                             ; $6636: $00
  stop                                            ; $6637: $10 $00
  nop                                             ; $6639: $00
  ld [$0000], sp                                  ; $663a: $08 $00 $00
  ld [de], a                                      ; $663d: $12
  nop                                             ; $663e: $00
  nop                                             ; $663f: $00
  ld a, [bc]                                      ; $6640: $0a
  nop                                             ; $6641: $00
  nop                                             ; $6642: $00
  ld [de], a                                      ; $6643: $12
  nop                                             ; $6644: $00
  nop                                             ; $6645: $00
  ld a, [bc]                                      ; $6646: $0a
  nop                                             ; $6647: $00
  nop                                             ; $6648: $00
  ld [de], a                                      ; $6649: $12
  nop                                             ; $664a: $00
  nop                                             ; $664b: $00
  inc c                                           ; $664c: $0c
  nop                                             ; $664d: $00
  nop                                             ; $664e: $00
  nop                                             ; $664f: $00
  nop                                             ; $6650: $00
  nop                                             ; $6651: $00
  nop                                             ; $6652: $00

  db $00, $00, $01, $00, $00, $00

  nop                                             ; $6659: $00
  nop                                             ; $665a: $00
  ld bc, $0000                                    ; $665b: $01 $00 $00
  nop                                             ; $665e: $00
  nop                                             ; $665f: $00
  nop                                             ; $6660: $00
  ld bc, $0000                                    ; $6661: $01 $00 $00
  nop                                             ; $6664: $00
  nop                                             ; $6665: $00
  nop                                             ; $6666: $00
  inc b                                           ; $6667: $04
  nop                                             ; $6668: $00
  nop                                             ; $6669: $00
  nop                                             ; $666a: $00
  nop                                             ; $666b: $00
  nop                                             ; $666c: $00
  dec b                                           ; $666d: $05
  ld bc, $0000                                    ; $666e: $01 $00 $00
  nop                                             ; $6671: $00
  nop                                             ; $6672: $00
  rlca                                            ; $6673: $07
  ld bc, $0000                                    ; $6674: $01 $00 $00
  nop                                             ; $6677: $00
  nop                                             ; $6678: $00
  ld a, [bc]                                      ; $6679: $0a
  ld [bc], a                                      ; $667a: $02
  nop                                             ; $667b: $00
  nop                                             ; $667c: $00
  nop                                             ; $667d: $00
  nop                                             ; $667e: $00
  inc c                                           ; $667f: $0c
  ld [bc], a                                      ; $6680: $02
  ld bc, $0000                                    ; $6681: $01 $00 $00
  nop                                             ; $6684: $00
  ld c, $03                                       ; $6685: $0e $03
  ld [bc], a                                      ; $6687: $02
  nop                                             ; $6688: $00
  nop                                             ; $6689: $00
  nop                                             ; $668a: $00
  db $10                                          ; $668b: $10
  inc bc                                          ; $668c: $03
  inc bc                                          ; $668d: $03
  nop                                             ; $668e: $00
  nop                                             ; $668f: $00
  nop                                             ; $6690: $00
  db $10                                          ; $6691: $10
  inc bc                                          ; $6692: $03
  inc b                                           ; $6693: $04
  nop                                             ; $6694: $00
  nop                                             ; $6695: $00
  nop                                             ; $6696: $00
  db $10                                          ; $6697: $10
  inc bc                                          ; $6698: $03
  dec b                                           ; $6699: $05
  nop                                             ; $669a: $00
  nop                                             ; $669b: $00
  nop                                             ; $669c: $00
  nop                                             ; $669d: $00
  nop                                             ; $669e: $00
  nop                                             ; $669f: $00
  nop                                             ; $66a0: $00
  nop                                             ; $66a1: $00
  nop                                             ; $66a2: $00
  inc b                                           ; $66a3: $04
  nop                                             ; $66a4: $00
  nop                                             ; $66a5: $00
  rst $38                                         ; $66a6: $ff
  nop                                             ; $66a7: $00
  nop                                             ; $66a8: $00
  inc b                                           ; $66a9: $04
  nop                                             ; $66aa: $00
  nop                                             ; $66ab: $00
  rst $38                                         ; $66ac: $ff
  nop                                             ; $66ad: $00
  nop                                             ; $66ae: $00
  inc b                                           ; $66af: $04
  nop                                             ; $66b0: $00
  nop                                             ; $66b1: $00
  rst $38                                         ; $66b2: $ff
  nop                                             ; $66b3: $00
  nop                                             ; $66b4: $00
  ld [$0001], sp                                  ; $66b5: $08 $01 $00
  nop                                             ; $66b8: $00
  nop                                             ; $66b9: $00
  nop                                             ; $66ba: $00
  inc c                                           ; $66bb: $0c
  ld bc, $0001                                    ; $66bc: $01 $01 $00
  nop                                             ; $66bf: $00
  ld bc, $010c                                    ; $66c0: $01 $0c $01
  ld bc, $0000                                    ; $66c3: $01 $00 $00
  ld bc, $010e                                    ; $66c6: $01 $0e $01
  ld [bc], a                                      ; $66c9: $02
  nop                                             ; $66ca: $00
  nop                                             ; $66cb: $00
  ld bc, $020f                                    ; $66cc: $01 $0f $02
  ld [bc], a                                      ; $66cf: $02
  ld [bc], a                                      ; $66d0: $02
  nop                                             ; $66d1: $00
  ld [bc], a                                      ; $66d2: $02
  db $10                                          ; $66d3: $10
  ld [bc], a                                      ; $66d4: $02
  inc bc                                          ; $66d5: $03
  ld [bc], a                                      ; $66d6: $02
  nop                                             ; $66d7: $00
  inc bc                                          ; $66d8: $03
  inc d                                           ; $66d9: $14
  ld [bc], a                                      ; $66da: $02
  inc b                                           ; $66db: $04
  inc bc                                          ; $66dc: $03
  nop                                             ; $66dd: $00
  inc b                                           ; $66de: $04
  inc d                                           ; $66df: $14
  ld [bc], a                                      ; $66e0: $02
  dec b                                           ; $66e1: $05
  inc bc                                          ; $66e2: $03
  nop                                             ; $66e3: $00
  dec b                                           ; $66e4: $05
  inc d                                           ; $66e5: $14
  inc bc                                          ; $66e6: $03
  ld b, $03                                       ; $66e7: $06 $03
  nop                                             ; $66e9: $00
  nop                                             ; $66ea: $00
  nop                                             ; $66eb: $00
  nop                                             ; $66ec: $00
  nop                                             ; $66ed: $00
  nop                                             ; $66ee: $00
  nop                                             ; $66ef: $00
  nop                                             ; $66f0: $00
  nop                                             ; $66f1: $00
  nop                                             ; $66f2: $00
  nop                                             ; $66f3: $00
  nop                                             ; $66f4: $00
  nop                                             ; $66f5: $00
  nop                                             ; $66f6: $00
  nop                                             ; $66f7: $00
  nop                                             ; $66f8: $00
  nop                                             ; $66f9: $00
  nop                                             ; $66fa: $00
  nop                                             ; $66fb: $00
  nop                                             ; $66fc: $00
  inc b                                           ; $66fd: $04
  nop                                             ; $66fe: $00
  inc b                                           ; $66ff: $04
  ld bc, $0000                                    ; $6700: $01 $00 $00
  nop                                             ; $6703: $00
  nop                                             ; $6704: $00
  nop                                             ; $6705: $00
  nop                                             ; $6706: $00
  nop                                             ; $6707: $00
  nop                                             ; $6708: $00
  nop                                             ; $6709: $00
  nop                                             ; $670a: $00
  nop                                             ; $670b: $00
  nop                                             ; $670c: $00
  nop                                             ; $670d: $00
  nop                                             ; $670e: $00
  nop                                             ; $670f: $00
  nop                                             ; $6710: $00
  nop                                             ; $6711: $00
  nop                                             ; $6712: $00
  nop                                             ; $6713: $00
  nop                                             ; $6714: $00
  nop                                             ; $6715: $00
  nop                                             ; $6716: $00
  nop                                             ; $6717: $00
  nop                                             ; $6718: $00
  nop                                             ; $6719: $00
  nop                                             ; $671a: $00
  nop                                             ; $671b: $00
  nop                                             ; $671c: $00
  nop                                             ; $671d: $00
  nop                                             ; $671e: $00
  nop                                             ; $671f: $00
  nop                                             ; $6720: $00
  nop                                             ; $6721: $00
  nop                                             ; $6722: $00
  nop                                             ; $6723: $00
  nop                                             ; $6724: $00
  nop                                             ; $6725: $00
  nop                                             ; $6726: $00
  nop                                             ; $6727: $00
  nop                                             ; $6728: $00
  nop                                             ; $6729: $00
  nop                                             ; $672a: $00
  nop                                             ; $672b: $00
  nop                                             ; $672c: $00
  nop                                             ; $672d: $00
  nop                                             ; $672e: $00
  nop                                             ; $672f: $00
  nop                                             ; $6730: $00
  nop                                             ; $6731: $00
  nop                                             ; $6732: $00
  nop                                             ; $6733: $00
  nop                                             ; $6734: $00
  nop                                             ; $6735: $00
  nop                                             ; $6736: $00
  nop                                             ; $6737: $00
  nop                                             ; $6738: $00
  nop                                             ; $6739: $00
  nop                                             ; $673a: $00
  nop                                             ; $673b: $00
  nop                                             ; $673c: $00
  nop                                             ; $673d: $00
  nop                                             ; $673e: $00
  nop                                             ; $673f: $00
  nop                                             ; $6740: $00
  nop                                             ; $6741: $00
  nop                                             ; $6742: $00
  nop                                             ; $6743: $00
  nop                                             ; $6744: $00
  nop                                             ; $6745: $00
  nop                                             ; $6746: $00
  nop                                             ; $6747: $00
  nop                                             ; $6748: $00
  nop                                             ; $6749: $00
  nop                                             ; $674a: $00
  nop                                             ; $674b: $00
  nop                                             ; $674c: $00
  nop                                             ; $674d: $00
  nop                                             ; $674e: $00

  db $00

  nop                                             ; $6750: $00
  nop                                             ; $6751: $00
  nop                                             ; $6752: $00
  nop                                             ; $6753: $00
  nop                                             ; $6754: $00
  nop                                             ; $6755: $00
  nop                                             ; $6756: $00
  nop                                             ; $6757: $00
  nop                                             ; $6758: $00
  nop                                             ; $6759: $00
  nop                                             ; $675a: $00
  nop                                             ; $675b: $00
  nop                                             ; $675c: $00
  nop                                             ; $675d: $00
  nop                                             ; $675e: $00
  nop                                             ; $675f: $00
  nop                                             ; $6760: $00
  nop                                             ; $6761: $00
  nop                                             ; $6762: $00
  nop                                             ; $6763: $00
  nop                                             ; $6764: $00
  nop                                             ; $6765: $00
  nop                                             ; $6766: $00

  db $01, $1e, $01, $64

  ld b, $00                                       ; $676b: $06 $00

  db $02, $1e

  ld [bc], a                                      ; $676f: $02
  ld h, h                                         ; $6770: $64
  rlca                                            ; $6771: $07
  nop                                             ; $6772: $00
  ld [$0300], sp                                  ; $6773: $08 $00 $03
  ld a, [bc]                                      ; $6776: $0a

  db $03, $0f

  nop                                             ; $6779: $00
  nop                                             ; $677a: $00
  nop                                             ; $677b: $00
  nop                                             ; $677c: $00
  nop                                             ; $677d: $00
  nop                                             ; $677e: $00
  nop                                             ; $677f: $00
  nop                                             ; $6780: $00

  db $32, $00

  ld [hl-], a                                     ; $6783: $32
  nop                                             ; $6784: $00
  ld [hl-], a                                     ; $6785: $32
  nop                                             ; $6786: $00
  ret z                                           ; $6787: $c8

  nop                                             ; $6788: $00

  db $58, $02, $46, $05

  xor h                                           ; $678d: $ac
  dec c                                           ; $678e: $0d
  ld e, b                                         ; $678f: $58
  dec de                                          ; $6790: $1b
  ldh [$ff2e], a                                  ; $6791: $e0 $2e
  jr nz, jr_004_67e3                              ; $6793: $20 $4e

  jr nz, jr_004_67e5                              ; $6795: $20 $4e

  jr nz, jr_004_67e7                              ; $6797: $20 $4e

  nop                                             ; $6799: $00
  nop                                             ; $679a: $00

  db $28, $00, $3c, $00

  ld h, h                                         ; $679f: $64
  nop                                             ; $67a0: $00
  db $f4                                          ; $67a1: $f4
  ld bc, $01f4                                    ; $67a2: $01 $f4 $01

  db $f4, $01, $e8, $03, $c4, $09

  adc b                                           ; $67ab: $88
  inc de                                          ; $67ac: $13
  db $10                                          ; $67ad: $10
  daa                                             ; $67ae: $27
  jr nc, jr_004_6826                              ; $67af: $30 $75

  jr nc, jr_004_6828                              ; $67b1: $30 $75

  jr nc, jr_004_682a                              ; $67b3: $30 $75

  nop                                             ; $67b5: $00
  nop                                             ; $67b6: $00
  ret z                                           ; $67b7: $c8

  nop                                             ; $67b8: $00
  sub b                                           ; $67b9: $90
  ld bc, $0352                                    ; $67ba: $01 $52 $03
  call c, $dc05                                   ; $67bd: $dc $05 $dc
  dec b                                           ; $67c0: $05
  call c, $b805                                   ; $67c1: $dc $05 $b8
  dec bc                                          ; $67c4: $0b
  ld [hl], b                                      ; $67c5: $70
  rla                                             ; $67c6: $17
  ldh [$ff2e], a                                  ; $67c7: $e0 $2e
  xor b                                           ; $67c9: $a8
  ld h, c                                         ; $67ca: $61
  xor b                                           ; $67cb: $a8
  ld h, c                                         ; $67cc: $61
  xor b                                           ; $67cd: $a8
  ld h, c                                         ; $67ce: $61
  nop                                             ; $67cf: $00
  nop                                             ; $67d0: $00
  inc hl                                          ; $67d1: $23
  nop                                             ; $67d2: $00
  ld d, b                                         ; $67d3: $50
  nop                                             ; $67d4: $00
  ret z                                           ; $67d5: $c8

  nop                                             ; $67d6: $00
  db $f4                                          ; $67d7: $f4
  ld bc, $03e8                                    ; $67d8: $01 $e8 $03
  add sp, $03                                     ; $67db: $e8 $03
  add sp, $03                                     ; $67dd: $e8 $03
  call c, $b805                                   ; $67df: $dc $05 $b8
  dec bc                                          ; $67e2: $0b

jr_004_67e3:
  adc b                                           ; $67e3: $88
  inc de                                          ; $67e4: $13

jr_004_67e5:
  adc b                                           ; $67e5: $88
  inc de                                          ; $67e6: $13

jr_004_67e7:
  adc b                                           ; $67e7: $88
  inc de                                          ; $67e8: $13
  nop                                             ; $67e9: $00
  nop                                             ; $67ea: $00

  db $32, $00

  ld [hl-], a                                     ; $67ed: $32
  nop                                             ; $67ee: $00
  ld [hl-], a                                     ; $67ef: $32
  nop                                             ; $67f0: $00
  or h                                            ; $67f1: $b4
  nop                                             ; $67f2: $00
  jp nz, $e801                                    ; $67f3: $c2 $01 $e8

  inc bc                                          ; $67f6: $03
  cp b                                            ; $67f7: $b8
  dec bc                                          ; $67f8: $0b
  ld [hl], b                                      ; $67f9: $70
  rla                                             ; $67fa: $17
  ld b, b                                         ; $67fb: $40
  rra                                             ; $67fc: $1f
  ldh [$ff2e], a                                  ; $67fd: $e0 $2e
  ldh [$ff2e], a                                  ; $67ff: $e0 $2e
  ldh [$ff2e], a                                  ; $6801: $e0 $2e
  nop                                             ; $6803: $00
  nop                                             ; $6804: $00
  ld e, d                                         ; $6805: $5a
  nop                                             ; $6806: $00
  ld e, d                                         ; $6807: $5a
  nop                                             ; $6808: $00
  ld e, d                                         ; $6809: $5a
  nop                                             ; $680a: $00
  and $00                                         ; $680b: $e6 $00

  db $f4, $01

  add sp, $03                                     ; $680f: $e8 $03
  call c, $ac05                                   ; $6811: $dc $05 $ac
  dec c                                           ; $6814: $0d
  db $10                                          ; $6815: $10
  daa                                             ; $6816: $27
  jr nc, jr_004_688e                              ; $6817: $30 $75

  jr nc, jr_004_6890                              ; $6819: $30 $75

  jr nc, jr_004_6892                              ; $681b: $30 $75

  nop                                             ; $681d: $00
  nop                                             ; $681e: $00
  nop                                             ; $681f: $00
  nop                                             ; $6820: $00
  nop                                             ; $6821: $00
  nop                                             ; $6822: $00
  nop                                             ; $6823: $00
  nop                                             ; $6824: $00
  nop                                             ; $6825: $00

jr_004_6826:
  nop                                             ; $6826: $00
  nop                                             ; $6827: $00

jr_004_6828:
  nop                                             ; $6828: $00
  nop                                             ; $6829: $00

jr_004_682a:
  nop                                             ; $682a: $00

  db $0a, $00

  ld a, [bc]                                      ; $682d: $0a
  nop                                             ; $682e: $00
  nop                                             ; $682f: $00
  nop                                             ; $6830: $00
  nop                                             ; $6831: $00
  nop                                             ; $6832: $00
  nop                                             ; $6833: $00
  nop                                             ; $6834: $00
  nop                                             ; $6835: $00
  nop                                             ; $6836: $00
  nop                                             ; $6837: $00
  nop                                             ; $6838: $00
  nop                                             ; $6839: $00
  nop                                             ; $683a: $00
  nop                                             ; $683b: $00
  nop                                             ; $683c: $00
  nop                                             ; $683d: $00
  nop                                             ; $683e: $00
  nop                                             ; $683f: $00
  nop                                             ; $6840: $00
  nop                                             ; $6841: $00
  nop                                             ; $6842: $00
  nop                                             ; $6843: $00
  nop                                             ; $6844: $00
  nop                                             ; $6845: $00
  nop                                             ; $6846: $00
  nop                                             ; $6847: $00
  nop                                             ; $6848: $00
  nop                                             ; $6849: $00
  nop                                             ; $684a: $00
  nop                                             ; $684b: $00
  nop                                             ; $684c: $00
  nop                                             ; $684d: $00
  nop                                             ; $684e: $00
  nop                                             ; $684f: $00
  nop                                             ; $6850: $00
  nop                                             ; $6851: $00
  nop                                             ; $6852: $00
  nop                                             ; $6853: $00
  nop                                             ; $6854: $00
  nop                                             ; $6855: $00
  nop                                             ; $6856: $00
  nop                                             ; $6857: $00
  nop                                             ; $6858: $00
  nop                                             ; $6859: $00
  nop                                             ; $685a: $00
  nop                                             ; $685b: $00
  nop                                             ; $685c: $00
  nop                                             ; $685d: $00
  nop                                             ; $685e: $00
  nop                                             ; $685f: $00
  nop                                             ; $6860: $00
  nop                                             ; $6861: $00
  nop                                             ; $6862: $00
  nop                                             ; $6863: $00
  nop                                             ; $6864: $00
  nop                                             ; $6865: $00
  nop                                             ; $6866: $00
  nop                                             ; $6867: $00
  nop                                             ; $6868: $00
  nop                                             ; $6869: $00
  nop                                             ; $686a: $00
  nop                                             ; $686b: $00
  nop                                             ; $686c: $00
  nop                                             ; $686d: $00
  nop                                             ; $686e: $00
  nop                                             ; $686f: $00
  nop                                             ; $6870: $00
  nop                                             ; $6871: $00
  nop                                             ; $6872: $00
  nop                                             ; $6873: $00
  nop                                             ; $6874: $00
  nop                                             ; $6875: $00
  nop                                             ; $6876: $00
  nop                                             ; $6877: $00
  nop                                             ; $6878: $00
  nop                                             ; $6879: $00
  nop                                             ; $687a: $00
  nop                                             ; $687b: $00
  nop                                             ; $687c: $00
  nop                                             ; $687d: $00
  nop                                             ; $687e: $00
  nop                                             ; $687f: $00
  nop                                             ; $6880: $00
  nop                                             ; $6881: $00
  nop                                             ; $6882: $00
  nop                                             ; $6883: $00
  nop                                             ; $6884: $00
  nop                                             ; $6885: $00
  nop                                             ; $6886: $00
  nop                                             ; $6887: $00
  nop                                             ; $6888: $00
  nop                                             ; $6889: $00
  nop                                             ; $688a: $00
  nop                                             ; $688b: $00
  nop                                             ; $688c: $00
  nop                                             ; $688d: $00

jr_004_688e:
  nop                                             ; $688e: $00
  nop                                             ; $688f: $00

jr_004_6890:
  nop                                             ; $6890: $00
  nop                                             ; $6891: $00

jr_004_6892:
  nop                                             ; $6892: $00
  nop                                             ; $6893: $00
  nop                                             ; $6894: $00
  nop                                             ; $6895: $00
  nop                                             ; $6896: $00
  nop                                             ; $6897: $00
  nop                                             ; $6898: $00
  nop                                             ; $6899: $00
  nop                                             ; $689a: $00

  db $1e, $00

  inc a                                           ; $689d: $3c
  nop                                             ; $689e: $00
  ld e, $00                                       ; $689f: $1e $00

  db $28, $00

  ld d, b                                         ; $68a3: $50
  nop                                             ; $68a4: $00
  ld h, h                                         ; $68a5: $64
  nop                                             ; $68a6: $00

  db $14, $00, $0c, $00, $10, $00

  nop                                             ; $68ad: $00
  nop                                             ; $68ae: $00
  nop                                             ; $68af: $00
  nop                                             ; $68b0: $00
  nop                                             ; $68b1: $00
  nop                                             ; $68b2: $00
  nop                                             ; $68b3: $00
  nop                                             ; $68b4: $00
  add hl, de                                      ; $68b5: $19
  nop                                             ; $68b6: $00
  add hl, de                                      ; $68b7: $19
  nop                                             ; $68b8: $00
  add hl, de                                      ; $68b9: $19
  nop                                             ; $68ba: $00
  ld h, h                                         ; $68bb: $64
  nop                                             ; $68bc: $00
  inc l                                           ; $68bd: $2c
  ld bc, $02a3                                    ; $68be: $01 $a3 $02
  sub $06                                         ; $68c1: $d6 $06
  xor h                                           ; $68c3: $ac
  dec c                                           ; $68c4: $0d
  ld [hl], b                                      ; $68c5: $70
  rla                                             ; $68c6: $17
  db $10                                          ; $68c7: $10
  daa                                             ; $68c8: $27
  db $10                                          ; $68c9: $10
  daa                                             ; $68ca: $27
  db $10                                          ; $68cb: $10
  daa                                             ; $68cc: $27
  nop                                             ; $68cd: $00
  nop                                             ; $68ce: $00
  inc d                                           ; $68cf: $14
  nop                                             ; $68d0: $00
  ld e, $00                                       ; $68d1: $1e $00
  ld [hl-], a                                     ; $68d3: $32
  nop                                             ; $68d4: $00
  ld a, [$fa00]                                   ; $68d5: $fa $00 $fa
  nop                                             ; $68d8: $00
  ld a, [$f400]                                   ; $68d9: $fa $00 $f4
  ld bc, $04e2                                    ; $68dc: $01 $e2 $04
  call nz, $8809                                  ; $68df: $c4 $09 $88
  inc de                                          ; $68e2: $13
  sbc b                                           ; $68e3: $98
  ld a, [hl-]                                     ; $68e4: $3a
  sbc b                                           ; $68e5: $98
  ld a, [hl-]                                     ; $68e6: $3a
  sbc b                                           ; $68e7: $98
  ld a, [hl-]                                     ; $68e8: $3a
  nop                                             ; $68e9: $00
  nop                                             ; $68ea: $00
  ld h, h                                         ; $68eb: $64
  nop                                             ; $68ec: $00
  ret z                                           ; $68ed: $c8

  nop                                             ; $68ee: $00
  xor c                                           ; $68ef: $a9
  ld bc, $02ee                                    ; $68f0: $01 $ee $02
  xor $02                                         ; $68f3: $ee $02
  xor $02                                         ; $68f5: $ee $02
  call c, $b805                                   ; $68f7: $dc $05 $b8
  dec bc                                          ; $68fa: $0b
  ld [hl], b                                      ; $68fb: $70
  rla                                             ; $68fc: $17
  call nc, $d430                                  ; $68fd: $d4 $30 $d4
  jr nc, @-$2a                                    ; $6900: $30 $d4

  jr nc, jr_004_6904                              ; $6902: $30 $00

jr_004_6904:
  nop                                             ; $6904: $00
  ld de, $2800                                    ; $6905: $11 $00 $28
  nop                                             ; $6908: $00
  ld h, h                                         ; $6909: $64
  nop                                             ; $690a: $00
  ld a, [$f400]                                   ; $690b: $fa $00 $f4
  ld bc, $01f4                                    ; $690e: $01 $f4 $01
  db $f4                                          ; $6911: $f4
  ld bc, $02ee                                    ; $6912: $01 $ee $02
  call c, $c405                                   ; $6915: $dc $05 $c4
  add hl, bc                                      ; $6918: $09
  call nz, $c409                                  ; $6919: $c4 $09 $c4
  add hl, bc                                      ; $691c: $09
  nop                                             ; $691d: $00
  nop                                             ; $691e: $00
  add hl, de                                      ; $691f: $19
  nop                                             ; $6920: $00
  add hl, de                                      ; $6921: $19
  nop                                             ; $6922: $00
  add hl, de                                      ; $6923: $19
  nop                                             ; $6924: $00
  ld e, d                                         ; $6925: $5a
  nop                                             ; $6926: $00
  pop hl                                          ; $6927: $e1
  nop                                             ; $6928: $00
  db $f4                                          ; $6929: $f4
  ld bc, $05dc                                    ; $692a: $01 $dc $05
  cp b                                            ; $692d: $b8
  dec bc                                          ; $692e: $0b
  and b                                           ; $692f: $a0
  rrca                                            ; $6930: $0f
  ld [hl], b                                      ; $6931: $70
  rla                                             ; $6932: $17
  ld [hl], b                                      ; $6933: $70
  rla                                             ; $6934: $17
  ld [hl], b                                      ; $6935: $70
  rla                                             ; $6936: $17
  nop                                             ; $6937: $00
  nop                                             ; $6938: $00
  dec l                                           ; $6939: $2d
  nop                                             ; $693a: $00
  dec l                                           ; $693b: $2d
  nop                                             ; $693c: $00
  dec l                                           ; $693d: $2d
  nop                                             ; $693e: $00
  ld [hl], e                                      ; $693f: $73
  nop                                             ; $6940: $00
  ld a, [$f400]                                   ; $6941: $fa $00 $f4
  ld bc, $02ee                                    ; $6944: $01 $ee $02
  sub $06                                         ; $6947: $d6 $06
  adc b                                           ; $6949: $88
  inc de                                          ; $694a: $13
  sbc b                                           ; $694b: $98
  ld a, [hl-]                                     ; $694c: $3a
  sbc b                                           ; $694d: $98
  ld a, [hl-]                                     ; $694e: $3a
  sbc b                                           ; $694f: $98
  ld a, [hl-]                                     ; $6950: $3a
  nop                                             ; $6951: $00
  nop                                             ; $6952: $00
  nop                                             ; $6953: $00
  nop                                             ; $6954: $00
  nop                                             ; $6955: $00
  nop                                             ; $6956: $00
  nop                                             ; $6957: $00
  nop                                             ; $6958: $00
  nop                                             ; $6959: $00
  nop                                             ; $695a: $00
  nop                                             ; $695b: $00
  nop                                             ; $695c: $00
  nop                                             ; $695d: $00
  nop                                             ; $695e: $00
  dec b                                           ; $695f: $05
  nop                                             ; $6960: $00
  dec b                                           ; $6961: $05
  nop                                             ; $6962: $00
  nop                                             ; $6963: $00
  nop                                             ; $6964: $00
  nop                                             ; $6965: $00
  nop                                             ; $6966: $00
  nop                                             ; $6967: $00
  nop                                             ; $6968: $00
  nop                                             ; $6969: $00
  nop                                             ; $696a: $00
  nop                                             ; $696b: $00
  nop                                             ; $696c: $00
  nop                                             ; $696d: $00
  nop                                             ; $696e: $00
  nop                                             ; $696f: $00
  nop                                             ; $6970: $00
  nop                                             ; $6971: $00
  nop                                             ; $6972: $00
  nop                                             ; $6973: $00
  nop                                             ; $6974: $00
  nop                                             ; $6975: $00
  nop                                             ; $6976: $00
  nop                                             ; $6977: $00
  nop                                             ; $6978: $00
  nop                                             ; $6979: $00
  nop                                             ; $697a: $00
  nop                                             ; $697b: $00
  nop                                             ; $697c: $00
  nop                                             ; $697d: $00
  nop                                             ; $697e: $00
  nop                                             ; $697f: $00
  nop                                             ; $6980: $00
  nop                                             ; $6981: $00
  nop                                             ; $6982: $00
  nop                                             ; $6983: $00
  nop                                             ; $6984: $00
  nop                                             ; $6985: $00
  nop                                             ; $6986: $00
  nop                                             ; $6987: $00
  nop                                             ; $6988: $00
  nop                                             ; $6989: $00
  nop                                             ; $698a: $00
  nop                                             ; $698b: $00
  nop                                             ; $698c: $00
  nop                                             ; $698d: $00
  nop                                             ; $698e: $00
  nop                                             ; $698f: $00
  nop                                             ; $6990: $00
  nop                                             ; $6991: $00
  nop                                             ; $6992: $00
  nop                                             ; $6993: $00
  nop                                             ; $6994: $00
  nop                                             ; $6995: $00
  nop                                             ; $6996: $00
  nop                                             ; $6997: $00
  nop                                             ; $6998: $00
  nop                                             ; $6999: $00
  nop                                             ; $699a: $00
  nop                                             ; $699b: $00
  nop                                             ; $699c: $00
  nop                                             ; $699d: $00
  nop                                             ; $699e: $00
  nop                                             ; $699f: $00
  nop                                             ; $69a0: $00
  nop                                             ; $69a1: $00
  nop                                             ; $69a2: $00
  nop                                             ; $69a3: $00
  nop                                             ; $69a4: $00
  nop                                             ; $69a5: $00
  nop                                             ; $69a6: $00
  nop                                             ; $69a7: $00
  nop                                             ; $69a8: $00
  nop                                             ; $69a9: $00
  nop                                             ; $69aa: $00
  nop                                             ; $69ab: $00
  nop                                             ; $69ac: $00
  nop                                             ; $69ad: $00
  nop                                             ; $69ae: $00
  nop                                             ; $69af: $00
  nop                                             ; $69b0: $00
  nop                                             ; $69b1: $00
  nop                                             ; $69b2: $00
  nop                                             ; $69b3: $00
  nop                                             ; $69b4: $00
  nop                                             ; $69b5: $00
  nop                                             ; $69b6: $00
  nop                                             ; $69b7: $00
  nop                                             ; $69b8: $00
  nop                                             ; $69b9: $00
  nop                                             ; $69ba: $00
  nop                                             ; $69bb: $00
  nop                                             ; $69bc: $00
  nop                                             ; $69bd: $00
  nop                                             ; $69be: $00
  nop                                             ; $69bf: $00
  nop                                             ; $69c0: $00
  nop                                             ; $69c1: $00
  nop                                             ; $69c2: $00
  nop                                             ; $69c3: $00
  nop                                             ; $69c4: $00
  nop                                             ; $69c5: $00
  nop                                             ; $69c6: $00
  nop                                             ; $69c7: $00
  nop                                             ; $69c8: $00
  nop                                             ; $69c9: $00
  nop                                             ; $69ca: $00
  nop                                             ; $69cb: $00
  nop                                             ; $69cc: $00
  nop                                             ; $69cd: $00
  nop                                             ; $69ce: $00
  rrca                                            ; $69cf: $0f
  nop                                             ; $69d0: $00
  ld e, $00                                       ; $69d1: $1e $00
  rrca                                            ; $69d3: $0f
  nop                                             ; $69d4: $00
  inc d                                           ; $69d5: $14
  nop                                             ; $69d6: $00
  jr z, jr_004_69d9                               ; $69d7: $28 $00

jr_004_69d9:
  ld [hl-], a                                     ; $69d9: $32
  nop                                             ; $69da: $00
  ld a, [bc]                                      ; $69db: $0a
  nop                                             ; $69dc: $00
  ld bc, $0100                                    ; $69dd: $01 $00 $01
  nop                                             ; $69e0: $00
  nop                                             ; $69e1: $00
  nop                                             ; $69e2: $00
  nop                                             ; $69e3: $00
  nop                                             ; $69e4: $00
  nop                                             ; $69e5: $00
  nop                                             ; $69e6: $00
  nop                                             ; $69e7: $00

  db $03

  inc b                                           ; $69e9: $04
  ld bc, $0f0f                                    ; $69ea: $01 $0f $0f
  rrca                                            ; $69ed: $0f
  rrca                                            ; $69ee: $0f
  rrca                                            ; $69ef: $0f
  rrca                                            ; $69f0: $0f
  ld [bc], a                                      ; $69f1: $02
  inc b                                           ; $69f2: $04
  ld bc, $0f00                                    ; $69f3: $01 $00 $0f
  rrca                                            ; $69f6: $0f
  rrca                                            ; $69f7: $0f
  ld [bc], a                                      ; $69f8: $02
  inc b                                           ; $69f9: $04
  ld bc, $0f0f                                    ; $69fa: $01 $0f $0f
  rrca                                            ; $69fd: $0f
  rrca                                            ; $69fe: $0f
  inc bc                                          ; $69ff: $03
  inc b                                           ; $6a00: $04
  ld bc, $0f00                                    ; $6a01: $01 $00 $0f
  rrca                                            ; $6a04: $0f
  rrca                                            ; $6a05: $0f
  ld [bc], a                                      ; $6a06: $02
  inc b                                           ; $6a07: $04
  ld bc, $0f0f                                    ; $6a08: $01 $0f $0f
  rrca                                            ; $6a0b: $0f
  ld [bc], a                                      ; $6a0c: $02
  inc b                                           ; $6a0d: $04
  ld bc, $0f00                                    ; $6a0e: $01 $00 $0f
  rrca                                            ; $6a11: $0f
  rrca                                            ; $6a12: $0f
  rrca                                            ; $6a13: $0f
  ld [bc], a                                      ; $6a14: $02
  inc b                                           ; $6a15: $04
  ld bc, $0f0f                                    ; $6a16: $01 $0f $0f
  inc bc                                          ; $6a19: $03
  inc b                                           ; $6a1a: $04
  db $01                                          ; $6a1b: $01
  nop                                             ; $6a1c: $00

  db $03

  inc b                                           ; $6a1e: $04
  ld bc, $0f0f                                    ; $6a1f: $01 $0f $0f
  rrca                                            ; $6a22: $0f
  rrca                                            ; $6a23: $0f
  rrca                                            ; $6a24: $0f
  rrca                                            ; $6a25: $0f
  ld [bc], a                                      ; $6a26: $02
  inc b                                           ; $6a27: $04
  ld bc, $0200                                    ; $6a28: $01 $00 $02
  inc b                                           ; $6a2b: $04
  ld bc, $0f0f                                    ; $6a2c: $01 $0f $0f
  rrca                                            ; $6a2f: $0f
  rrca                                            ; $6a30: $0f
  rrca                                            ; $6a31: $0f
  rrca                                            ; $6a32: $0f
  inc bc                                          ; $6a33: $03
  inc b                                           ; $6a34: $04
  ld bc, $0000                                    ; $6a35: $01 $00 $00
  nop                                             ; $6a38: $00
  nop                                             ; $6a39: $00
  nop                                             ; $6a3a: $00
  nop                                             ; $6a3b: $00
  nop                                             ; $6a3c: $00
  nop                                             ; $6a3d: $00
  nop                                             ; $6a3e: $00
  nop                                             ; $6a3f: $00
  nop                                             ; $6a40: $00
  nop                                             ; $6a41: $00
  nop                                             ; $6a42: $00
  nop                                             ; $6a43: $00
  nop                                             ; $6a44: $00
  nop                                             ; $6a45: $00
  nop                                             ; $6a46: $00
  nop                                             ; $6a47: $00
  nop                                             ; $6a48: $00
  nop                                             ; $6a49: $00
  nop                                             ; $6a4a: $00
  nop                                             ; $6a4b: $00
  nop                                             ; $6a4c: $00
  nop                                             ; $6a4d: $00
  nop                                             ; $6a4e: $00
  nop                                             ; $6a4f: $00
  nop                                             ; $6a50: $00
  nop                                             ; $6a51: $00
  nop                                             ; $6a52: $00
  nop                                             ; $6a53: $00
  nop                                             ; $6a54: $00
  nop                                             ; $6a55: $00
  nop                                             ; $6a56: $00
  nop                                             ; $6a57: $00
  nop                                             ; $6a58: $00
  nop                                             ; $6a59: $00
  nop                                             ; $6a5a: $00
  nop                                             ; $6a5b: $00
  nop                                             ; $6a5c: $00
  nop                                             ; $6a5d: $00
  nop                                             ; $6a5e: $00
  nop                                             ; $6a5f: $00
  nop                                             ; $6a60: $00
  nop                                             ; $6a61: $00
  nop                                             ; $6a62: $00
  nop                                             ; $6a63: $00
  nop                                             ; $6a64: $00
  nop                                             ; $6a65: $00
  nop                                             ; $6a66: $00
  nop                                             ; $6a67: $00
  nop                                             ; $6a68: $00

  db $00, $00

  nop                                             ; $6a6b: $00
  nop                                             ; $6a6c: $00
  nop                                             ; $6a6d: $00
  nop                                             ; $6a6e: $00
  nop                                             ; $6a6f: $00
  nop                                             ; $6a70: $00
  nop                                             ; $6a71: $00
  nop                                             ; $6a72: $00
  nop                                             ; $6a73: $00
  nop                                             ; $6a74: $00

  db $01

  ld bc, $0101                                    ; $6a76: $01 $01 $01
  ld bc, $0101                                    ; $6a79: $01 $01 $01
  db $01                                          ; $6a7c: $01

  db $01

  nop                                             ; $6a7e: $00
  nop                                             ; $6a7f: $00
  nop                                             ; $6a80: $00

  db $00, $fe, $00, $0c

  dec c                                           ; $6a85: $0d
  ld a, [de]                                      ; $6a86: $1a

  db $1b, $27, $28, $34, $35, $41, $42, $4e, $4f, $81, $82, $8c, $8d, $94, $95, $96

  sub a                                           ; $6a97: $97
  db $fe                                          ; $6a98: $fe

  db $4f, $fe, $00, $4e

  db $fd                                          ; $6a9d: $fd
  cp $2d                                          ; $6a9e: $fe $2d
  dec l                                           ; $6aa0: $2d
  dec l                                           ; $6aa1: $2d

  ldh a, [rSVBK]                                  ; $6aa2: $f0 $70
  push af                                         ; $6aa4: $f5
  ld a, $06                                       ; $6aa5: $3e $06
  ldh [rSVBK], a                                  ; $6aa7: $e0 $70
  ld hl, $da70                                    ; $6aa9: $21 $70 $da
  ld bc, $0018                                    ; $6aac: $01 $18 $00
  ld a, $ff                                       ; $6aaf: $3e $ff
  call Call_000_1249                              ; $6ab1: $cd $49 $12
  pop af                                          ; $6ab4: $f1
  ldh [rSVBK], a                                  ; $6ab5: $e0 $70
  ret                                             ; $6ab7: $c9


  ldh a, [rSVBK]                                  ; $6ab8: $f0 $70
  push af                                         ; $6aba: $f5
  ld a, $06                                       ; $6abb: $3e $06
  ldh [rSVBK], a                                  ; $6abd: $e0 $70
  ld bc, $0100                                    ; $6abf: $01 $00 $01
  ld hl, $d970                                    ; $6ac2: $21 $70 $d9
  call Call_000_1248                              ; $6ac5: $cd $48 $12
  pop af                                          ; $6ac8: $f1
  ldh [rSVBK], a                                  ; $6ac9: $e0 $70
  ret                                             ; $6acb: $c9


  db $00, $0d

  dec de                                          ; $6ace: $1b
  db $28                                          ; $6acf: $28

  db $35

  ld b, d                                         ; $6ad1: $42

  ldh [$ffbd], a                                  ; $6ad2: $e0 $bd
  ldh a, [rSVBK]                                  ; $6ad4: $f0 $70
  push af                                         ; $6ad6: $f5
  ld a, $06                                       ; $6ad7: $3e $06
  ldh [rSVBK], a                                  ; $6ad9: $e0 $70
  ldh a, [$ffbd]                                  ; $6adb: $f0 $bd
  ld a, b                                         ; $6add: $78
  ld hl, $6acc                                    ; $6ade: $21 $cc $6a
  rst $08                                         ; $6ae1: $cf
  cp c                                            ; $6ae2: $b9
  jr nz, jr_004_6aff                              ; $6ae3: $20 $1a

  ld hl, $da70                                    ; $6ae5: $21 $70 $da
  ld a, [$cec3]                                   ; $6ae8: $fa $c3 $ce
  call Call_000_315f                              ; $6aeb: $cd $5f $31
  ld a, b                                         ; $6aee: $78
  rst $08                                         ; $6aef: $cf
  push hl                                         ; $6af0: $e5
  call Call_004_6d2b                              ; $6af1: $cd $2b $6d
  pop hl                                          ; $6af4: $e1
  ld [hl], $ff                                    ; $6af5: $36 $ff
  ldh [$ffbd], a                                  ; $6af7: $e0 $bd
  pop af                                          ; $6af9: $f1
  ldh [rSVBK], a                                  ; $6afa: $e0 $70
  ldh a, [$ffbd]                                  ; $6afc: $f0 $bd
  ret                                             ; $6afe: $c9


jr_004_6aff:
  ld a, c                                         ; $6aff: $79
  push hl                                         ; $6b00: $e5
  call Call_004_6b32                              ; $6b01: $cd $32 $6b
  pop hl                                          ; $6b04: $e1
  or a                                            ; $6b05: $b7

jr_004_6b06:
  ret z                                           ; $6b06: $c8

  ld a, c                                         ; $6b07: $79
  call Call_004_6d5f                              ; $6b08: $cd $5f $6d
  ld hl, $da70                                    ; $6b0b: $21 $70 $da
  ld a, [$cec3]                                   ; $6b0e: $fa $c3 $ce
  call Call_000_315f                              ; $6b11: $cd $5f $31
  ld a, b                                         ; $6b14: $78
  rst $08                                         ; $6b15: $cf
  cp $ff                                          ; $6b16: $fe $ff
  jr z, jr_004_6b1e                               ; $6b18: $28 $04

  ld a, [hl]                                      ; $6b1a: $7e
  call Call_004_6d2b                              ; $6b1b: $cd $2b $6d

jr_004_6b1e:
  ld hl, $da70                                    ; $6b1e: $21 $70 $da
  ld a, [$cec3]                                   ; $6b21: $fa $c3 $ce
  call Call_000_315f                              ; $6b24: $cd $5f $31
  ld a, b                                         ; $6b27: $78
  rst $08                                         ; $6b28: $cf
  ld [hl], c                                      ; $6b29: $71
  ldh [$ffbd], a                                  ; $6b2a: $e0 $bd
  pop af                                          ; $6b2c: $f1
  ldh [rSVBK], a                                  ; $6b2d: $e0 $70
  ldh a, [$ffbd]                                  ; $6b2f: $f0 $bd
  ret                                             ; $6b31: $c9


Call_004_6b32:
  ldh [$ffbd], a                                  ; $6b32: $e0 $bd
  ldh a, [rSVBK]                                  ; $6b34: $f0 $70
  push af                                         ; $6b36: $f5
  ld a, $06                                       ; $6b37: $3e $06
  ldh [rSVBK], a                                  ; $6b39: $e0 $70
  ldh a, [$ffbd]                                  ; $6b3b: $f0 $bd
  ld hl, $d970                                    ; $6b3d: $21 $70 $d9
  rst $08                                         ; $6b40: $cf
  ldh [$ffbd], a                                  ; $6b41: $e0 $bd
  pop af                                          ; $6b43: $f1
  ldh [rSVBK], a                                  ; $6b44: $e0 $70
  ldh a, [$ffbd]                                  ; $6b46: $f0 $bd
  or a                                            ; $6b48: $b7
  ret                                             ; $6b49: $c9


  ld b, $00                                       ; $6b4a: $06 $00
  ld c, $06                                       ; $6b4c: $0e $06

jr_004_6b4e:
  call Call_004_6b5d                              ; $6b4e: $cd $5d $6b
  cp $ff                                          ; $6b51: $fe $ff
  call nz, Call_004_6b7f                          ; $6b53: $c4 $7f $6b
  inc b                                           ; $6b56: $04
  ld a, b                                         ; $6b57: $78
  cp c                                            ; $6b58: $b9
  jr nz, jr_004_6b4e                              ; $6b59: $20 $f3

  jr jr_004_6bcf                                  ; $6b5b: $18 $72

Call_004_6b5d:
  ldh a, [rSVBK]                                  ; $6b5d: $f0 $70
  push af                                         ; $6b5f: $f5
  ld a, $06                                       ; $6b60: $3e $06
  ldh [rSVBK], a                                  ; $6b62: $e0 $70
  ld hl, $da70                                    ; $6b64: $21 $70 $da
  ld a, [$cec3]                                   ; $6b67: $fa $c3 $ce
  call Call_000_315f                              ; $6b6a: $cd $5f $31
  ld a, b                                         ; $6b6d: $78
  rst $08                                         ; $6b6e: $cf
  ldh [$ffbd], a                                  ; $6b6f: $e0 $bd
  pop af                                          ; $6b71: $f1
  ldh [rSVBK], a                                  ; $6b72: $e0 $70
  ldh a, [$ffbd]                                  ; $6b74: $f0 $bd
  ret                                             ; $6b76: $c9


  pop de                                          ; $6b77: $d1
  db $cd                                          ; $6b78: $cd

  db $03, $ce

  ld [$1ccd], a                                   ; $6b7b: $ea $cd $1c
  db $ce                                          ; $6b7e: $ce

Call_004_6b7f:
  push bc                                         ; $6b7f: $c5
  push af                                         ; $6b80: $f5
  ld hl, $6b77                                    ; $6b81: $21 $77 $6b
  ld a, [$cec3]                                   ; $6b84: $fa $c3 $ce
  call ResolveIndexedPointer16                              ; $6b87: $cd $8b $31
  ld b, h                                         ; $6b8a: $44
  ld c, l                                         ; $6b8b: $4d
  pop af                                          ; $6b8c: $f1
  ld hl, $650f                                    ; $6b8d: $21 $0f $65
  call Call_000_315f                              ; $6b90: $cd $5f $31
  ld d, h                                         ; $6b93: $54
  ld e, l                                         ; $6b94: $5d
  ld hl, $0001                                    ; $6b95: $21 $01 $00
  add hl, bc                                      ; $6b98: $09
  call Call_004_6beb                              ; $6b99: $cd $eb $6b
  ld hl, $000b                                    ; $6b9c: $21 $0b $00
  add hl, bc                                      ; $6b9f: $09
  call Call_004_6be6                              ; $6ba0: $cd $e6 $6b
  ld hl, $000d                                    ; $6ba3: $21 $0d $00
  add hl, bc                                      ; $6ba6: $09
  call Call_004_6be6                              ; $6ba7: $cd $e6 $6b
  ld hl, $000c                                    ; $6baa: $21 $0c $00
  add hl, bc                                      ; $6bad: $09
  call Call_004_6be6                              ; $6bae: $cd $e6 $6b
  ld hl, $000e                                    ; $6bb1: $21 $0e $00
  add hl, bc                                      ; $6bb4: $09
  call Call_004_6be6                              ; $6bb5: $cd $e6 $6b
  ld hl, $0009                                    ; $6bb8: $21 $09 $00
  add hl, bc                                      ; $6bbb: $09
  ld a, [de]                                      ; $6bbc: $1a
  ld b, a                                         ; $6bbd: $47
  ld a, [hl]                                      ; $6bbe: $7e
  add $64                                         ; $6bbf: $c6 $64
  cpl                                             ; $6bc1: $2f
  add b                                           ; $6bc2: $80
  cp $a0                                          ; $6bc3: $fe $a0
  jr c, jr_004_6bc8                               ; $6bc5: $38 $01

  xor a                                           ; $6bc7: $af

jr_004_6bc8:
  cpl                                             ; $6bc8: $2f
  sub $64                                         ; $6bc9: $d6 $64
  ld [hl], a                                      ; $6bcb: $77
  inc de                                          ; $6bcc: $13
  pop bc                                          ; $6bcd: $c1
  ret                                             ; $6bce: $c9


jr_004_6bcf:
  ld hl, $cdd2                                    ; $6bcf: $21 $d2 $cd
  ld e, [hl]                                      ; $6bd2: $5e
  inc hl                                          ; $6bd3: $23
  ld d, [hl]                                      ; $6bd4: $56
  ld hl, $cdd6                                    ; $6bd5: $21 $d6 $cd
  ld a, [hl+]                                     ; $6bd8: $2a
  ld h, [hl]                                      ; $6bd9: $66
  ld l, a                                         ; $6bda: $6f
  rst $10                                         ; $6bdb: $d7
  ret nc                                          ; $6bdc: $d0

  ld a, e                                         ; $6bdd: $7b
  ld [$cdd6], a                                   ; $6bde: $ea $d6 $cd
  ld a, d                                         ; $6be1: $7a
  ld [$cdd7], a                                   ; $6be2: $ea $d7 $cd
  ret                                             ; $6be5: $c9


Call_004_6be6:
  ld a, [de]                                      ; $6be6: $1a
  add [hl]                                        ; $6be7: $86
  ld [hl], a                                      ; $6be8: $77
  inc de                                          ; $6be9: $13
  ret                                             ; $6bea: $c9


Call_004_6beb:
  ld a, [de]                                      ; $6beb: $1a
  add [hl]                                        ; $6bec: $86
  ld [hl+], a                                     ; $6bed: $22
  ld a, [hl]                                      ; $6bee: $7e
  adc $00                                         ; $6bef: $ce $00
  ld [hl], a                                      ; $6bf1: $77
  inc de                                          ; $6bf2: $13
  ret                                             ; $6bf3: $c9


Call_004_6bf4:
  ld hl, $6a81                                    ; $6bf4: $21 $81 $6a
  call Call_000_317a                              ; $6bf7: $cd $7a $31
  ld a, [hl+]                                     ; $6bfa: $2a
  ld b, a                                         ; $6bfb: $47
  ld c, [hl]                                      ; $6bfc: $4e
  ldh a, [rSVBK]                                  ; $6bfd: $f0 $70
  push af                                         ; $6bff: $f5
  ld a, $06                                       ; $6c00: $3e $06
  ldh [rSVBK], a                                  ; $6c02: $e0 $70
  ld hl, $d970                                    ; $6c04: $21 $70 $d9
  ld a, b                                         ; $6c07: $78
  rst $08                                         ; $6c08: $cf

jr_004_6c09:
  ld a, [hl+]                                     ; $6c09: $2a
  or a                                            ; $6c0a: $b7
  jr z, jr_004_6c13                               ; $6c0b: $28 $06

  pop af                                          ; $6c0d: $f1
  ldh [rSVBK], a                                  ; $6c0e: $e0 $70
  ld a, $01                                       ; $6c10: $3e $01
  ret                                             ; $6c12: $c9


jr_004_6c13:
  ld a, b                                         ; $6c13: $78
  cp c                                            ; $6c14: $b9
  jr z, jr_004_6c1a                               ; $6c15: $28 $03

  inc b                                           ; $6c17: $04
  jr jr_004_6c09                                  ; $6c18: $18 $ef

jr_004_6c1a:
  pop af                                          ; $6c1a: $f1
  ldh [rSVBK], a                                  ; $6c1b: $e0 $70
  xor a                                           ; $6c1d: $af
  ret                                             ; $6c1e: $c9


Call_004_6c1f:
  ldh a, [rSVBK]                                  ; $6c1f: $f0 $70
  push af                                         ; $6c21: $f5
  ld a, $06                                       ; $6c22: $3e $06
  ldh [rSVBK], a                                  ; $6c24: $e0 $70
  ld de, $da8b                                    ; $6c26: $11 $8b $da
  ld a, [hl+]                                     ; $6c29: $2a
  ld [de], a                                      ; $6c2a: $12
  ld c, a                                         ; $6c2b: $4f
  ld b, $00                                       ; $6c2c: $06 $00
  inc de                                          ; $6c2e: $13
  ld a, $03                                       ; $6c2f: $3e $03
  ld [de], a                                      ; $6c31: $12
  inc de                                          ; $6c32: $13

jr_004_6c33:
  ld a, c                                         ; $6c33: $79
  cp b                                            ; $6c34: $b8
  jr z, jr_004_6c50                               ; $6c35: $28 $19

  ld a, [hl+]                                     ; $6c37: $2a
  push hl                                         ; $6c38: $e5
  push af                                         ; $6c39: $f5
  ld hl, $15fa                                    ; $6c3a: $21 $fa $15
  call Call_000_3173                              ; $6c3d: $cd $73 $31
  ld a, l                                         ; $6c40: $7d
  ld [de], a                                      ; $6c41: $12
  inc de                                          ; $6c42: $13
  ld a, h                                         ; $6c43: $7c
  ld [de], a                                      ; $6c44: $12
  inc de                                          ; $6c45: $13
  pop af                                          ; $6c46: $f1
  ld [de], a                                      ; $6c47: $12
  inc de                                          ; $6c48: $13
  pop hl                                          ; $6c49: $e1
  xor a                                           ; $6c4a: $af
  ld [de], a                                      ; $6c4b: $12
  inc de                                          ; $6c4c: $13
  inc b                                           ; $6c4d: $04
  jr jr_004_6c33                                  ; $6c4e: $18 $e3

jr_004_6c50:
  ld hl, $da8b                                    ; $6c50: $21 $8b $da
  ld a, [hl+]                                     ; $6c53: $2a
  cp [hl]                                         ; $6c54: $be
  jr nc, jr_004_6c58                              ; $6c55: $30 $01

  ld [hl], a                                      ; $6c57: $77

jr_004_6c58:
  pop af                                          ; $6c58: $f1
  ldh [rSVBK], a                                  ; $6c59: $e0 $70

Jump_004_6c5b:
  ld a, [$cbac]                                   ; $6c5b: $fa $ac $cb
  add $04                                         ; $6c5e: $c6 $04
  ld hl, $70d4                                    ; $6c60: $21 $d4 $70
  call Call_000_3182                              ; $6c63: $cd $82 $31
  ld a, [$cbad]                                   ; $6c66: $fa $ad $cb
  dec a                                           ; $6c69: $3d
  ld hl, $7094                                    ; $6c6a: $21 $94 $70
  call ResolveIndexedPointer16                              ; $6c6d: $cd $8b $31
  add hl, de                                      ; $6c70: $19
  ld a, l                                         ; $6c71: $7d
  ld [$cbb1], a                                   ; $6c72: $ea $b1 $cb
  ld a, h                                         ; $6c75: $7c
  ld [$cbb2], a                                   ; $6c76: $ea $b2 $cb
  ldh a, [rSVBK]                                  ; $6c79: $f0 $70
  push af                                         ; $6c7b: $f5
  ld a, $06                                       ; $6c7c: $3e $06
  ldh [rSVBK], a                                  ; $6c7e: $e0 $70
  ld a, [$da8c]                                   ; $6c80: $fa $8c $da
  ld c, a                                         ; $6c83: $4f
  pop af                                          ; $6c84: $f1
  ldh [rSVBK], a                                  ; $6c85: $e0 $70
  ld a, c                                         ; $6c87: $79
  add c                                           ; $6c88: $81
  add c                                           ; $6c89: $81
  ld c, a                                         ; $6c8a: $4f
  ld a, [$cbad]                                   ; $6c8b: $fa $ad $cb
  dec a                                           ; $6c8e: $3d
  add c                                           ; $6c8f: $81
  ld hl, $7094                                    ; $6c90: $21 $94 $70
  call ResolveIndexedPointer16                              ; $6c93: $cd $8b $31
  add hl, de                                      ; $6c96: $19
  ld a, l                                         ; $6c97: $7d
  ld [$cbb3], a                                   ; $6c98: $ea $b3 $cb
  ld a, h                                         ; $6c9b: $7c
  ld [$cbb4], a                                   ; $6c9c: $ea $b4 $cb
  ldh a, [rSVBK]                                  ; $6c9f: $f0 $70
  push af                                         ; $6ca1: $f5
  ld a, $06                                       ; $6ca2: $3e $06
  ldh [rSVBK], a                                  ; $6ca4: $e0 $70
  ld a, [$da8c]                                   ; $6ca6: $fa $8c $da
  ldh [$ffbd], a                                  ; $6ca9: $e0 $bd
  pop af                                          ; $6cab: $f1
  ldh [rSVBK], a                                  ; $6cac: $e0 $70
  ldh a, [$ffbd]                                  ; $6cae: $f0 $bd
  dec a                                           ; $6cb0: $3d
  ld [$cba6], a                                   ; $6cb1: $ea $a6 $cb
  ld [$cba7], a                                   ; $6cb4: $ea $a7 $cb
  ld [$cba8], a                                   ; $6cb7: $ea $a8 $cb
  ld [$cba9], a                                   ; $6cba: $ea $a9 $cb
  ret                                             ; $6cbd: $c9


Call_004_6cbe:
  ld hl, $6a81                                    ; $6cbe: $21 $81 $6a
  call Call_000_317a                              ; $6cc1: $cd $7a $31
  ld a, [hl+]                                     ; $6cc4: $2a
  ld b, a                                         ; $6cc5: $47
  ld c, [hl]                                      ; $6cc6: $4e
  ldh a, [rSVBK]                                  ; $6cc7: $f0 $70
  push af                                         ; $6cc9: $f5
  ld a, $06                                       ; $6cca: $3e $06
  ldh [rSVBK], a                                  ; $6ccc: $e0 $70
  ld a, e                                         ; $6cce: $7b
  ld [$da89], a                                   ; $6ccf: $ea $89 $da
  ld hl, $da8b                                    ; $6cd2: $21 $8b $da
  xor a                                           ; $6cd5: $af
  ld [hl+], a                                     ; $6cd6: $22
  ld a, d                                         ; $6cd7: $7a
  ld [hl+], a                                     ; $6cd8: $22
  ld d, h                                         ; $6cd9: $54
  ld e, l                                         ; $6cda: $5d
  ld hl, $d970                                    ; $6cdb: $21 $70 $d9
  ld a, b                                         ; $6cde: $78
  rst $08                                         ; $6cdf: $cf

jr_004_6ce0:
  ld a, [hl+]                                     ; $6ce0: $2a
  ld [$da8a], a                                   ; $6ce1: $ea $8a $da
  or a                                            ; $6ce4: $b7
  jr z, jr_004_6d16                               ; $6ce5: $28 $2f

  ld a, [$da89]                                   ; $6ce7: $fa $89 $da
  or a                                            ; $6cea: $b7
  jr z, jr_004_6cfb                               ; $6ceb: $28 $0e

  push hl                                         ; $6ced: $e5
  ld hl, $68b3                                    ; $6cee: $21 $b3 $68
  ld a, b                                         ; $6cf1: $78
  call Call_000_317a                              ; $6cf2: $cd $7a $31
  ld a, [hl+]                                     ; $6cf5: $2a
  or [hl]                                         ; $6cf6: $b6
  or a                                            ; $6cf7: $b7
  pop hl                                          ; $6cf8: $e1
  jr z, jr_004_6d16                               ; $6cf9: $28 $1b

jr_004_6cfb:
  push hl                                         ; $6cfb: $e5
  ld hl, $15fa                                    ; $6cfc: $21 $fa $15
  ld a, b                                         ; $6cff: $78
  call Call_000_3173                              ; $6d00: $cd $73 $31
  ld a, l                                         ; $6d03: $7d
  ld [de], a                                      ; $6d04: $12
  inc de                                          ; $6d05: $13
  ld a, h                                         ; $6d06: $7c
  ld [de], a                                      ; $6d07: $12
  inc de                                          ; $6d08: $13
  ld hl, $da8b                                    ; $6d09: $21 $8b $da
  inc [hl]                                        ; $6d0c: $34
  pop hl                                          ; $6d0d: $e1
  ld a, b                                         ; $6d0e: $78
  ld [de], a                                      ; $6d0f: $12
  inc de                                          ; $6d10: $13
  ld a, [$da8a]                                   ; $6d11: $fa $8a $da
  ld [de], a                                      ; $6d14: $12
  inc de                                          ; $6d15: $13

jr_004_6d16:
  ld a, b                                         ; $6d16: $78
  cp c                                            ; $6d17: $b9
  jr z, jr_004_6d1d                               ; $6d18: $28 $03

  inc b                                           ; $6d1a: $04
  jr jr_004_6ce0                                  ; $6d1b: $18 $c3

jr_004_6d1d:
  ld hl, $da8b                                    ; $6d1d: $21 $8b $da
  ld a, [hl+]                                     ; $6d20: $2a
  cp [hl]                                         ; $6d21: $be
  jr nc, jr_004_6d25                              ; $6d22: $30 $01

  ld [hl], a                                      ; $6d24: $77

jr_004_6d25:
  pop af                                          ; $6d25: $f1
  ldh [rSVBK], a                                  ; $6d26: $e0 $70
  jp Jump_004_6c5b                                ; $6d28: $c3 $5b $6c


Call_004_6d2b:
  ld hl, $d970                                    ; $6d2b: $21 $70 $d9
  rst $08                                         ; $6d2e: $cf
  ldh a, [rSVBK]                                  ; $6d2f: $f0 $70
  push af                                         ; $6d31: $f5
  ld a, $06                                       ; $6d32: $3e $06
  ldh [rSVBK], a                                  ; $6d34: $e0 $70
  inc [hl]                                        ; $6d36: $34
  jr z, jr_004_6d3d                               ; $6d37: $28 $04

  pop af                                          ; $6d39: $f1
  ldh [rSVBK], a                                  ; $6d3a: $e0 $70
  ret                                             ; $6d3c: $c9


jr_004_6d3d:
  ld a, $ff                                       ; $6d3d: $3e $ff
  ld [hl], a                                      ; $6d3f: $77
  pop af                                          ; $6d40: $f1
  ldh [rSVBK], a                                  ; $6d41: $e0 $70
  ret                                             ; $6d43: $c9


Call_004_6d44:
  ld hl, $d970                                    ; $6d44: $21 $70 $d9
  rst $08                                         ; $6d47: $cf
  ldh a, [rSVBK]                                  ; $6d48: $f0 $70
  push af                                         ; $6d4a: $f5
  ld a, $06                                       ; $6d4b: $3e $06
  ldh [rSVBK], a                                  ; $6d4d: $e0 $70
  ld a, b                                         ; $6d4f: $78
  add [hl]                                        ; $6d50: $86
  ld [hl], a                                      ; $6d51: $77
  jr c, jr_004_6d58                               ; $6d52: $38 $04

  pop af                                          ; $6d54: $f1
  ldh [rSVBK], a                                  ; $6d55: $e0 $70
  ret                                             ; $6d57: $c9


jr_004_6d58:
  ld a, $ff                                       ; $6d58: $3e $ff
  ld [hl], a                                      ; $6d5a: $77
  pop af                                          ; $6d5b: $f1
  ldh [rSVBK], a                                  ; $6d5c: $e0 $70
  ret                                             ; $6d5e: $c9


Call_004_6d5f:
  ld hl, $d970                                    ; $6d5f: $21 $70 $d9
  rst $08                                         ; $6d62: $cf
  ldh a, [rSVBK]                                  ; $6d63: $f0 $70
  push af                                         ; $6d65: $f5
  ld a, $06                                       ; $6d66: $3e $06
  ldh [rSVBK], a                                  ; $6d68: $e0 $70
  dec [hl]                                        ; $6d6a: $35
  pop af                                          ; $6d6b: $f1
  ldh [rSVBK], a                                  ; $6d6c: $e0 $70
  ret                                             ; $6d6e: $c9


Call_004_6d6f:
  ld hl, $d970                                    ; $6d6f: $21 $70 $d9
  rst $08                                         ; $6d72: $cf
  ldh a, [rSVBK]                                  ; $6d73: $f0 $70
  push af                                         ; $6d75: $f5
  ld a, $06                                       ; $6d76: $3e $06
  ldh [rSVBK], a                                  ; $6d78: $e0 $70
  ld a, [hl]                                      ; $6d7a: $7e
  sub b                                           ; $6d7b: $90
  ld [hl], a                                      ; $6d7c: $77
  pop af                                          ; $6d7d: $f1
  ldh [rSVBK], a                                  ; $6d7e: $e0 $70
  ret                                             ; $6d80: $c9


  push af                                         ; $6d81: $f5
  ld hl, $6a81                                    ; $6d82: $21 $81 $6a
  call Call_000_317a                              ; $6d85: $cd $7a $31
  ld b, [hl]                                      ; $6d88: $46
  inc hl                                          ; $6d89: $23
  ld c, [hl]                                      ; $6d8a: $4e
  pop af                                          ; $6d8b: $f1
  ret                                             ; $6d8c: $c9


  ldh a, [rSVBK]                                  ; $6d8d: $f0 $70
  push af                                         ; $6d8f: $f5
  ld a, $06                                       ; $6d90: $3e $06
  ldh [rSVBK], a                                  ; $6d92: $e0 $70
  ld b, $00                                       ; $6d94: $06 $00
  ld hl, $d970                                    ; $6d96: $21 $70 $d9

jr_004_6d99:
  ld a, [hl+]                                     ; $6d99: $2a
  or a                                            ; $6d9a: $b7
  jr nz, jr_004_6da7                              ; $6d9b: $20 $0a

  inc b                                           ; $6d9d: $04
  ld a, b                                         ; $6d9e: $78
  cp $4f                                          ; $6d9f: $fe $4f
  jr nz, jr_004_6d99                              ; $6da1: $20 $f6

  ld b, $00                                       ; $6da3: $06 $00
  jr jr_004_6da9                                  ; $6da5: $18 $02

jr_004_6da7:
  ld b, $01                                       ; $6da7: $06 $01

jr_004_6da9:
  pop af                                          ; $6da9: $f1
  ldh [rSVBK], a                                  ; $6daa: $e0 $70
  ldh a, [rSVBK]                                  ; $6dac: $f0 $70
  push af                                         ; $6dae: $f5
  ld a, $06                                       ; $6daf: $3e $06
  ldh [rSVBK], a                                  ; $6db1: $e0 $70
  ld a, b                                         ; $6db3: $78
  ld [$ddc6], a                                   ; $6db4: $ea $c6 $dd
  pop af                                          ; $6db7: $f1
  ldh [rSVBK], a                                  ; $6db8: $e0 $70
  ret                                             ; $6dba: $c9


Call_004_6dbb:
  push af                                         ; $6dbb: $f5
  ldh a, [$ffcd]                                  ; $6dbc: $f0 $cd
  cp $24                                          ; $6dbe: $fe $24
  jp z, Jump_004_6dca                             ; $6dc0: $ca $ca $6d

  cp $25                                          ; $6dc3: $fe $25
  jp z, Jump_004_6dca                             ; $6dc5: $ca $ca $6d

  jr jr_004_6dd9                                  ; $6dc8: $18 $0f

Jump_004_6dca:
  ld a, [$cc49]                                   ; $6dca: $fa $49 $cc
  cp $07                                          ; $6dcd: $fe $07
  jr nz, jr_004_6dd9                              ; $6dcf: $20 $08

  ld a, [$cc2a]                                   ; $6dd1: $fa $2a $cc
  cp $03                                          ; $6dd4: $fe $03
  jp z, Jump_004_7011                             ; $6dd6: $ca $11 $70

jr_004_6dd9:
  pop af                                          ; $6dd9: $f1
  ld c, a                                         ; $6dda: $4f
  sub $4f                                         ; $6ddb: $d6 $4f
  ret c                                           ; $6ddd: $d8

  ld hl, $66e9                                    ; $6dde: $21 $e9 $66
  call Call_000_317a                              ; $6de1: $cd $7a $31
  ld a, [hl+]                                     ; $6de4: $2a
  push hl                                         ; $6de5: $e5
  rst $00                                         ; $6de6: $c7

  db $11, $70, $f9, $6d, $29, $6e, $59, $6e

  ld a, [hl]                                      ; $6def: $7e
  ld l, [hl]                                      ; $6df0: $6e
  xor e                                           ; $6df1: $ab
  ld l, [hl]                                      ; $6df2: $6e
  or a                                            ; $6df3: $b7
  ld l, [hl]                                      ; $6df4: $6e
  jr z, jr_004_6e66                               ; $6df5: $28 $6f

  and b                                           ; $6df7: $a0
  ld l, a                                         ; $6df8: $6f

  pop hl                                          ; $6df9: $e1
  push bc                                         ; $6dfa: $c5
  ld a, [hl]                                      ; $6dfb: $7e
  ld l, a                                         ; $6dfc: $6f
  ld h, $00                                       ; $6dfd: $26 $00
  call Call_000_33f3                              ; $6dff: $cd $f3 $33

  db $06, $d5, $6b

  ld a, h                                         ; $6e05: $7c
  or l                                            ; $6e06: $b5
  jp z, Jump_004_7011                             ; $6e07: $ca $11 $70

  call Call_000_33f3                              ; $6e0a: $cd $f3 $33

  db $01, $23, $67

  ld a, $2c                                       ; $6e10: $3e $2c
  call Call_000_392b                              ; $6e12: $cd $2b $39
  ld a, [$cec3]                                   ; $6e15: $fa $c3 $ce
  ld hl, $17fe                                    ; $6e18: $21 $fe $17
  call Call_000_3173                              ; $6e1b: $cd $73 $31
  ld a, l                                         ; $6e1e: $7d
  ld [$cbe2], a                                   ; $6e1f: $ea $e2 $cb
  ld a, h                                         ; $6e22: $7c
  ld [$cbe3], a                                   ; $6e23: $ea $e3 $cb
  jp Jump_004_701f                                ; $6e26: $c3 $1f $70


  pop hl                                          ; $6e29: $e1
  push bc                                         ; $6e2a: $c5
  ld a, [hl]                                      ; $6e2b: $7e
  ld l, a                                         ; $6e2c: $6f
  ld h, $00                                       ; $6e2d: $26 $00
  call Call_000_33f3                              ; $6e2f: $cd $f3 $33

  db $06, $52, $6c

  ld a, h                                         ; $6e35: $7c
  or l                                            ; $6e36: $b5
  jp z, Jump_004_7011                             ; $6e37: $ca $11 $70

  call Call_000_33f3                              ; $6e3a: $cd $f3 $33

  db $01, $23, $67

  ld a, $2c                                       ; $6e40: $3e $2c
  call Call_000_392b                              ; $6e42: $cd $2b $39
  ld a, [$cec3]                                   ; $6e45: $fa $c3 $ce
  ld hl, $180a                                    ; $6e48: $21 $0a $18
  call Call_000_3173                              ; $6e4b: $cd $73 $31
  ld a, l                                         ; $6e4e: $7d
  ld [$cbe2], a                                   ; $6e4f: $ea $e2 $cb
  ld a, h                                         ; $6e52: $7c
  ld [$cbe3], a                                   ; $6e53: $ea $e3 $cb
  jp Jump_004_701f                                ; $6e56: $c3 $1f $70


  pop hl                                          ; $6e59: $e1
  push bc                                         ; $6e5a: $c5
  ld a, [hl]                                      ; $6e5b: $7e
  ld l, a                                         ; $6e5c: $6f
  ld h, $00                                       ; $6e5d: $26 $00
  call Call_000_33f3                              ; $6e5f: $cd $f3 $33

  db $06, $d5, $6b

  ld a, h                                         ; $6e65: $7c

jr_004_6e66:
  or l                                            ; $6e66: $b5
  jp z, Jump_004_7011                             ; $6e67: $ca $11 $70

  call Call_000_33f3                              ; $6e6a: $cd $f3 $33
  ld bc, $6723                                    ; $6e6d: $01 $23 $67
  ld hl, $17ec                                    ; $6e70: $21 $ec $17
  ld a, l                                         ; $6e73: $7d
  ld [$cbe2], a                                   ; $6e74: $ea $e2 $cb
  ld a, h                                         ; $6e77: $7c
  ld [$cbe3], a                                   ; $6e78: $ea $e3 $cb
  jp Jump_004_701f                                ; $6e7b: $c3 $1f $70


  ldh a, [$ffcd]                                  ; $6e7e: $f0 $cd
  cp $24                                          ; $6e80: $fe $24
  jp z, Jump_004_7011                             ; $6e82: $ca $11 $70

  cp $25                                          ; $6e85: $fe $25
  jp z, Jump_004_7011                             ; $6e87: $ca $11 $70

  pop hl                                          ; $6e8a: $e1
  ld a, [hl]                                      ; $6e8b: $7e
  ld [$cbe6], a                                   ; $6e8c: $ea $e6 $cb
  ld hl, $cc5e                                    ; $6e8f: $21 $5e $cc
  ld a, [hl+]                                     ; $6e92: $2a
  ld h, [hl]                                      ; $6e93: $66
  ld l, a                                         ; $6e94: $6f
  call Call_000_38fe                              ; $6e95: $cd $fe $38
  ld a, $3a                                       ; $6e98: $3e $3a
  call Call_000_261e                              ; $6e9a: $cd $1e $26
  ld hl, $0000                                    ; $6e9d: $21 $00 $00
  ld a, l                                         ; $6ea0: $7d
  ld [$cbe2], a                                   ; $6ea1: $ea $e2 $cb
  ld a, h                                         ; $6ea4: $7c
  ld [$cbe3], a                                   ; $6ea5: $ea $e3 $cb
  jp Jump_004_7024                                ; $6ea8: $c3 $24 $70


  ld a, [bc]                                      ; $6eab: $0a
  ret nc                                          ; $6eac: $d0

  inc hl                                          ; $6ead: $23
  ret nc                                          ; $6eae: $d0

  inc a                                           ; $6eaf: $3c
  ret nc                                          ; $6eb0: $d0

  dec d                                           ; $6eb1: $15
  ret nc                                          ; $6eb2: $d0

  ld l, $d0                                       ; $6eb3: $2e $d0
  ld b, a                                         ; $6eb5: $47
  ret nc                                          ; $6eb6: $d0

  ldh a, [$ffcd]                                  ; $6eb7: $f0 $cd
  cp $24                                          ; $6eb9: $fe $24
  jp nz, Jump_004_7011                            ; $6ebb: $c2 $11 $70

  pop hl                                          ; $6ebe: $e1
  push bc                                         ; $6ebf: $c5
  ldh [$ffbd], a                                  ; $6ec0: $e0 $bd
  ldh a, [rSVBK]                                  ; $6ec2: $f0 $70
  push af                                         ; $6ec4: $f5
  ld a, $05                                       ; $6ec5: $3e $05
  ldh [rSVBK], a                                  ; $6ec7: $e0 $70
  ldh a, [$ffbd]                                  ; $6ec9: $f0 $bd
  ld hl, $6eab                                    ; $6ecb: $21 $ab $6e
  ld a, [$cc2a]                                   ; $6ece: $fa $2a $cc
  dec a                                           ; $6ed1: $3d
  call ResolveIndexedPointer16                              ; $6ed2: $cd $8b $31
  bit 2, [hl]                                     ; $6ed5: $cb $56
  jr z, jr_004_6f1e                               ; $6ed7: $28 $45

  res 2, [hl]                                     ; $6ed9: $cb $96
  ld hl, $6eb1                                    ; $6edb: $21 $b1 $6e
  ld a, [$cc2a]                                   ; $6ede: $fa $2a $cc
  dec a                                           ; $6ee1: $3d
  call ResolveIndexedPointer16                              ; $6ee2: $cd $8b $31
  ld de, $0000                                    ; $6ee5: $11 $00 $00
  ld [hl], e                                      ; $6ee8: $73
  inc hl                                          ; $6ee9: $23
  ld [hl], d                                      ; $6eea: $72
  ldh [$ffbd], a                                  ; $6eeb: $e0 $bd
  pop af                                          ; $6eed: $f1
  ldh [rSVBK], a                                  ; $6eee: $e0 $70
  ldh a, [$ffbd]                                  ; $6ef0: $f0 $bd
  ldh a, [$ffcd]                                  ; $6ef2: $f0 $cd
  cp $24                                          ; $6ef4: $fe $24
  jp nz, Jump_004_6f05                            ; $6ef6: $c2 $05 $6f

  ld a, [$cc2a]                                   ; $6ef9: $fa $2a $cc
  dec a                                           ; $6efc: $3d
  ld l, $00                                       ; $6efd: $2e $00
  call Call_000_33f3                              ; $6eff: $cd $f3 $33
  inc bc                                          ; $6f02: $03
  sbc $48                                         ; $6f03: $de $48

Jump_004_6f05:
  ld a, $2c                                       ; $6f05: $3e $2c
  call Call_000_392b                              ; $6f07: $cd $2b $39
  ld hl, $286f                                    ; $6f0a: $21 $6f $28
  ld a, [$cec3]                                   ; $6f0d: $fa $c3 $ce
  call Call_000_3173                              ; $6f10: $cd $73 $31
  ld a, l                                         ; $6f13: $7d
  ld [$cbe2], a                                   ; $6f14: $ea $e2 $cb
  ld a, h                                         ; $6f17: $7c
  ld [$cbe3], a                                   ; $6f18: $ea $e3 $cb
  jp Jump_004_701f                                ; $6f1b: $c3 $1f $70


jr_004_6f1e:
  ldh [$ffbd], a                                  ; $6f1e: $e0 $bd
  pop af                                          ; $6f20: $f1
  ldh [rSVBK], a                                  ; $6f21: $e0 $70
  ldh a, [$ffbd]                                  ; $6f23: $f0 $bd
  jp Jump_004_7011                                ; $6f25: $c3 $11 $70


  ldh a, [$ffcd]                                  ; $6f28: $f0 $cd
  cp $25                                          ; $6f2a: $fe $25
  jp nz, Jump_004_7011                            ; $6f2c: $c2 $11 $70

  pop hl                                          ; $6f2f: $e1
  push bc                                         ; $6f30: $c5
  ld a, $2c                                       ; $6f31: $3e $2c
  call Call_000_392b                              ; $6f33: $cd $2b $39
  call Call_000_33f3                              ; $6f36: $cd $f3 $33
  dec b                                           ; $6f39: $05
  bit 7, h                                        ; $6f3a: $cb $7c
  ldh [$ffbd], a                                  ; $6f3c: $e0 $bd
  ldh a, [rSVBK]                                  ; $6f3e: $f0 $70
  push af                                         ; $6f40: $f5
  ld a, $05                                       ; $6f41: $3e $05
  ldh [rSVBK], a                                  ; $6f43: $e0 $70
  ldh a, [$ffbd]                                  ; $6f45: $f0 $bd
  ld hl, $6eab                                    ; $6f47: $21 $ab $6e
  ld a, [$cc2a]                                   ; $6f4a: $fa $2a $cc
  dec a                                           ; $6f4d: $3d
  call ResolveIndexedPointer16                              ; $6f4e: $cd $8b $31
  bit 2, [hl]                                     ; $6f51: $cb $56
  jr z, jr_004_6f67                               ; $6f53: $28 $12

  res 2, [hl]                                     ; $6f55: $cb $96
  ld hl, $6eb1                                    ; $6f57: $21 $b1 $6e
  ld a, [$cc2a]                                   ; $6f5a: $fa $2a $cc
  dec a                                           ; $6f5d: $3d
  call ResolveIndexedPointer16                              ; $6f5e: $cd $8b $31
  ld de, $0000                                    ; $6f61: $11 $00 $00
  ld [hl], e                                      ; $6f64: $73
  inc hl                                          ; $6f65: $23
  ld [hl], d                                      ; $6f66: $72

jr_004_6f67:
  ldh [$ffbd], a                                  ; $6f67: $e0 $bd
  pop af                                          ; $6f69: $f1
  ldh [rSVBK], a                                  ; $6f6a: $e0 $70
  ldh a, [$ffbd]                                  ; $6f6c: $f0 $bd
  ld a, [$cc2a]                                   ; $6f6e: $fa $2a $cc
  dec a                                           ; $6f71: $3d
  ld l, $00                                       ; $6f72: $2e $00
  call Call_000_33f3                              ; $6f74: $cd $f3 $33
  inc bc                                          ; $6f77: $03
  sbc $48                                         ; $6f78: $de $48
  push bc                                         ; $6f7a: $c5
  ld a, [$cc25]                                   ; $6f7b: $fa $25 $cc
  ld e, a                                         ; $6f7e: $5f
  ld a, $7b                                       ; $6f7f: $3e $7b
  call Call_000_0a46                              ; $6f81: $cd $46 $0a
  ld b, h                                         ; $6f84: $44
  ld c, l                                         ; $6f85: $4d
  call Call_000_33f3                              ; $6f86: $cd $f3 $33
  rlca                                            ; $6f89: $07
  and e                                           ; $6f8a: $a3
  ld e, [hl]                                      ; $6f8b: $5e
  pop bc                                          ; $6f8c: $c1
  ld hl, $286f                                    ; $6f8d: $21 $6f $28
  ld a, [$cec3]                                   ; $6f90: $fa $c3 $ce
  call Call_000_3173                              ; $6f93: $cd $73 $31
  ld a, l                                         ; $6f96: $7d
  ld [$cbe2], a                                   ; $6f97: $ea $e2 $cb
  ld a, h                                         ; $6f9a: $7c
  ld [$cbe3], a                                   ; $6f9b: $ea $e3 $cb
  jr jr_004_701f                                  ; $6f9e: $18 $7f

  ldh a, [$ffcd]                                  ; $6fa0: $f0 $cd
  cp $24                                          ; $6fa2: $fe $24
  jp nz, Jump_004_7011                            ; $6fa4: $c2 $11 $70

  pop hl                                          ; $6fa7: $e1
  push bc                                         ; $6fa8: $c5
  ldh [$ffbd], a                                  ; $6fa9: $e0 $bd
  ldh a, [rSVBK]                                  ; $6fab: $f0 $70
  push af                                         ; $6fad: $f5
  ld a, $05                                       ; $6fae: $3e $05
  ldh [rSVBK], a                                  ; $6fb0: $e0 $70
  ldh a, [$ffbd]                                  ; $6fb2: $f0 $bd
  ld hl, $6eab                                    ; $6fb4: $21 $ab $6e
  ld a, [$cc2a]                                   ; $6fb7: $fa $2a $cc
  dec a                                           ; $6fba: $3d
  call ResolveIndexedPointer16                              ; $6fbb: $cd $8b $31
  bit 3, [hl]                                     ; $6fbe: $cb $5e
  jr z, jr_004_7007                               ; $6fc0: $28 $45

  res 3, [hl]                                     ; $6fc2: $cb $9e
  ld hl, $6eb1                                    ; $6fc4: $21 $b1 $6e
  ld a, [$cc2a]                                   ; $6fc7: $fa $2a $cc
  dec a                                           ; $6fca: $3d
  call ResolveIndexedPointer16                              ; $6fcb: $cd $8b $31
  ld de, $fff6                                    ; $6fce: $11 $f6 $ff
  ld [hl], e                                      ; $6fd1: $73
  inc hl                                          ; $6fd2: $23
  ld [hl], d                                      ; $6fd3: $72
  ldh [$ffbd], a                                  ; $6fd4: $e0 $bd
  pop af                                          ; $6fd6: $f1
  ldh [rSVBK], a                                  ; $6fd7: $e0 $70
  ldh a, [$ffbd]                                  ; $6fd9: $f0 $bd
  ldh a, [$ffcd]                                  ; $6fdb: $f0 $cd
  cp $24                                          ; $6fdd: $fe $24
  jp nz, Jump_004_6fee                            ; $6fdf: $c2 $ee $6f

  ld a, [$cc2a]                                   ; $6fe2: $fa $2a $cc
  dec a                                           ; $6fe5: $3d
  ld l, $00                                       ; $6fe6: $2e $00
  call Call_000_33f3                              ; $6fe8: $cd $f3 $33
  inc bc                                          ; $6feb: $03
  sbc $48                                         ; $6fec: $de $48

Jump_004_6fee:
  ld a, $2c                                       ; $6fee: $3e $2c
  call Call_000_392b                              ; $6ff0: $cd $2b $39
  ld hl, $286f                                    ; $6ff3: $21 $6f $28
  ld a, [$cec3]                                   ; $6ff6: $fa $c3 $ce
  call Call_000_3173                              ; $6ff9: $cd $73 $31
  ld a, l                                         ; $6ffc: $7d
  ld [$cbe2], a                                   ; $6ffd: $ea $e2 $cb
  ld a, h                                         ; $7000: $7c
  ld [$cbe3], a                                   ; $7001: $ea $e3 $cb
  jp Jump_004_701f                                ; $7004: $c3 $1f $70


jr_004_7007:
  ldh [$ffbd], a                                  ; $7007: $e0 $bd
  pop af                                          ; $7009: $f1
  ldh [rSVBK], a                                  ; $700a: $e0 $70
  ldh a, [$ffbd]                                  ; $700c: $f0 $bd
  jp Jump_004_7011                                ; $700e: $c3 $11 $70


Jump_004_7011:
  pop hl                                          ; $7011: $e1
  ld hl, $17e6                                    ; $7012: $21 $e6 $17
  ld a, l                                         ; $7015: $7d
  ld [$cbe2], a                                   ; $7016: $ea $e2 $cb
  ld a, h                                         ; $7019: $7c
  ld [$cbe3], a                                   ; $701a: $ea $e3 $cb
  jr jr_004_702b                                  ; $701d: $18 $0c

Jump_004_701f:
jr_004_701f:
  pop bc                                          ; $701f: $c1
  ld a, c                                         ; $7020: $79
  call Call_004_6d5f                              ; $7021: $cd $5f $6d

Jump_004_7024:
  ld a, $01                                       ; $7024: $3e $01
  ld [$cbe7], a                                   ; $7026: $ea $e7 $cb
  or a                                            ; $7029: $b7
  ret                                             ; $702a: $c9


jr_004_702b:
  xor a                                           ; $702b: $af
  ld [$cbe7], a                                   ; $702c: $ea $e7 $cb
  scf                                             ; $702f: $37
  ret                                             ; $7030: $c9


  db $10, $01, $4f, $cb, $90, $00, $41

  inc hl                                          ; $7038: $23
  ld bc, $703f                                    ; $7039: $01 $3f $70
  add b                                           ; $703c: $80
  ld [bc], a                                      ; $703d: $02
  ld b, b                                         ; $703e: $40
  db $10                                          ; $703f: $10
  pop de                                          ; $7040: $d1
  jr nc, @-$2d                                    ; $7041: $30 $d1

  ld d, b                                         ; $7043: $50
  pop de                                          ; $7044: $d1
  ld [hl], b                                      ; $7045: $70
  pop de                                          ; $7046: $d1
  sub b                                           ; $7047: $90
  pop de                                          ; $7048: $d1
  or b                                            ; $7049: $b0
  pop de                                          ; $704a: $d1
  ret nc                                          ; $704b: $d0

  pop de                                          ; $704c: $d1
  ldh a, [$ffd1]                                  ; $704d: $f0 $d1

  db $10, $01, $5b, $cb, $54, $01, $c0, $10, $01, $63, $cb, $54, $01, $41, $23, $01
  db $64, $70, $80, $02, $40, $b0, $d0, $f0, $d0, $30, $d1, $b0, $d1, $f0, $d1, $70
  db $d1, $78, $70, $7f, $70, $86, $70, $8d, $70, $10, $01, $6b, $cb, $90, $00, $41
  db $10, $01, $6f, $cb, $a8, $00, $41, $10, $01, $73, $cb, $c0, $00, $41, $10, $01
  db $77, $cb, $d8, $00, $41, $00, $00, $20, $00, $40, $00, $60, $00, $80, $00, $a0
  db $00, $c0, $00, $e0, $00, $00, $01, $20, $01, $40, $01, $60, $01, $80, $01, $a0
  db $01, $c0, $01, $e0, $01, $00, $02

  jr nz, jr_004_70ba                              ; $70b6: $20 $02

  ld b, b                                         ; $70b8: $40
  ld [bc], a                                      ; $70b9: $02

jr_004_70ba:
  ld h, b                                         ; $70ba: $60
  ld [bc], a                                      ; $70bb: $02
  add b                                           ; $70bc: $80
  ld [bc], a                                      ; $70bd: $02
  and b                                           ; $70be: $a0
  ld [bc], a                                      ; $70bf: $02
  ret nz                                          ; $70c0: $c0

  ld [bc], a                                      ; $70c1: $02
  ldh [rSC], a                                    ; $70c2: $e0 $02
  nop                                             ; $70c4: $00
  inc bc                                          ; $70c5: $03
  jr nz, jr_004_70cb                              ; $70c6: $20 $03

  ld b, b                                         ; $70c8: $40
  inc bc                                          ; $70c9: $03
  ld h, b                                         ; $70ca: $60

jr_004_70cb:
  inc bc                                          ; $70cb: $03
  add b                                           ; $70cc: $80
  inc bc                                          ; $70cd: $03
  and b                                           ; $70ce: $a0
  inc bc                                          ; $70cf: $03
  ret nz                                          ; $70d0: $c0

  inc bc                                          ; $70d1: $03
  ldh [$ff03], a                                  ; $70d2: $e0 $03
  nop                                             ; $70d4: $00
  nop                                             ; $70d5: $00

  db $01, $00, $02, $00, $03, $00, $04, $00, $05, $00

  ld b, $00                                       ; $70e0: $06 $00
  rlca                                            ; $70e2: $07
  nop                                             ; $70e3: $00
  ld [$0900], sp                                  ; $70e4: $08 $00 $09
  nop                                             ; $70e7: $00
  ld a, [bc]                                      ; $70e8: $0a
  nop                                             ; $70e9: $00
  dec bc                                          ; $70ea: $0b
  nop                                             ; $70eb: $00
  inc c                                           ; $70ec: $0c
  nop                                             ; $70ed: $00

  db $0d, $00

  ld c, $00                                       ; $70f0: $0e $00

  db $0f, $00, $10, $00

  db $11                                          ; $70f6: $11
  nop                                             ; $70f7: $00

  db $12, $00, $13, $00

  xor a                                           ; $70fc: $af
  ld [$cbb7], a                                   ; $70fd: $ea $b7 $cb
  ld [$cbb8], a                                   ; $7100: $ea $b8 $cb
  ld [$cbb9], a                                   ; $7103: $ea $b9 $cb
  ld [$cbea], a                                   ; $7106: $ea $ea $cb
  ld a, $01                                       ; $7109: $3e $01
  ld [$cbec], a                                   ; $710b: $ea $ec $cb
  rst $18                                         ; $710e: $df
  ld a, $7f                                       ; $710f: $3e $7f
  ld c, a                                         ; $7111: $4f
  ld e, $09                                       ; $7112: $1e $09
  ld d, $0c                                       ; $7114: $16 $0c
  ld hl, $0080                                    ; $7116: $21 $80 $00
  call Call_000_149f                              ; $7119: $cd $9f $14
  rst $20                                         ; $711c: $e7
  call Call_000_3363                              ; $711d: $cd $63 $33
  ldh [$ffbd], a                                  ; $7120: $e0 $bd
  ldh a, [rSVBK]                                  ; $7122: $f0 $70
  push af                                         ; $7124: $f5
  ld a, $06                                       ; $7125: $3e $06
  ldh [rSVBK], a                                  ; $7127: $e0 $70
  ldh a, [$ffbd]                                  ; $7129: $f0 $bd
  ld a, [$da8c]                                   ; $712b: $fa $8c $da
  ldh [$ffbd], a                                  ; $712e: $e0 $bd
  pop af                                          ; $7130: $f1
  ldh [rSVBK], a                                  ; $7131: $e0 $70
  ldh a, [$ffbd]                                  ; $7133: $f0 $bd
  or a                                            ; $7135: $b7
  jr z, jr_004_7167                               ; $7136: $28 $2f

  xor a                                           ; $7138: $af
  ldh [$ffd3], a                                  ; $7139: $e0 $d3
  call Call_004_71a7                              ; $713b: $cd $a7 $71
  xor a                                           ; $713e: $af
  ld [$cc2a], a                                   ; $713f: $ea $2a $cc
  ldh a, [rSVBK]                                  ; $7142: $f0 $70
  push af                                         ; $7144: $f5
  ld a, $06                                       ; $7145: $3e $06
  ldh [rSVBK], a                                  ; $7147: $e0 $70
  ld a, $ff                                       ; $7149: $3e $ff
  ld [$cbeb], a                                   ; $714b: $ea $eb $cb
  call Call_004_7203                              ; $714e: $cd $03 $72
  pop af                                          ; $7151: $f1
  ldh [rSVBK], a                                  ; $7152: $e0 $70
  ld a, $04                                       ; $7154: $3e $04
  ld [$cc2c], a                                   ; $7156: $ea $2c $cc
  xor a                                           ; $7159: $af
  ld hl, $cb7b                                    ; $715a: $21 $7b $cb
  call Call_000_33f3                              ; $715d: $cd $f3 $33

  db $06, $fd, $50

  call Call_004_7903                              ; $7163: $cd $03 $79
  ret                                             ; $7166: $c9


jr_004_7167:
  xor a                                           ; $7167: $af
  ld [$cc2c], a                                   ; $7168: $ea $2c $cc
  xor a                                           ; $716b: $af
  ld [$cbec], a                                   ; $716c: $ea $ec $cb
  ld a, [$cbe9]                                   ; $716f: $fa $e9 $cb
  cp $18                                          ; $7172: $fe $18
  jr nz, jr_004_717b                              ; $7174: $20 $05

  ld a, $0e                                       ; $7176: $3e $0e
  ld [$cbe9], a                                   ; $7178: $ea $e9 $cb

jr_004_717b:
  ld hl, $7031                                    ; $717b: $21 $31 $70
  call Call_000_3013                              ; $717e: $cd $13 $30
  ld a, $40                                       ; $7181: $3e $40
  ld [$c159], a                                   ; $7183: $ea $59 $c1
  ld a, $06                                       ; $7186: $3e $06
  ld [$c1a2], a                                   ; $7188: $ea $a2 $c1
  ld hl, $17c8                                    ; $718b: $21 $c8 $17
  ld de, $0000                                    ; $718e: $11 $00 $00
  call Call_000_33f3                              ; $7191: $cd $f3 $33

  db $01, $0b, $66

  ret                                             ; $7197: $c9


Call_004_7198:
  call Call_004_76da                              ; $7198: $cd $da $76
  call Call_004_7722                              ; $719b: $cd $22 $77
  call Call_004_7772                              ; $719e: $cd $72 $77
  call Call_004_77c2                              ; $71a1: $cd $c2 $77
  jp Jump_004_7843                                ; $71a4: $c3 $43 $78


Call_004_71a7:
  ldh [$ffbd], a                                  ; $71a7: $e0 $bd
  ldh a, [rSVBK]                                  ; $71a9: $f0 $70
  push af                                         ; $71ab: $f5
  ld a, $06                                       ; $71ac: $3e $06
  ldh [rSVBK], a                                  ; $71ae: $e0 $70
  ldh a, [$ffbd]                                  ; $71b0: $f0 $bd
  ld a, [$da8c]                                   ; $71b2: $fa $8c $da
  ldh [$ffbd], a                                  ; $71b5: $e0 $bd
  pop af                                          ; $71b7: $f1
  ldh [rSVBK], a                                  ; $71b8: $e0 $70
  ldh a, [$ffbd]                                  ; $71ba: $f0 $bd
  add $06                                         ; $71bc: $c6 $06
  ld c, a                                         ; $71be: $4f
  ld b, $06                                       ; $71bf: $06 $06

jr_004_71c1:
  ld a, b                                         ; $71c1: $78
  call Call_004_78d8                              ; $71c2: $cd $d8 $78
  inc b                                           ; $71c5: $04
  ld a, b                                         ; $71c6: $78
  cp c                                            ; $71c7: $b9
  jr nz, jr_004_71c1                              ; $71c8: $20 $f7

Call_004_71ca:
  xor a                                           ; $71ca: $af
  call Call_004_7919                              ; $71cb: $cd $19 $79
  xor a                                           ; $71ce: $af
  call Call_004_7928                              ; $71cf: $cd $28 $79
  ld hl, $cbb1                                    ; $71d2: $21 $b1 $cb
  ld a, [hl+]                                     ; $71d5: $2a
  ld h, [hl]                                      ; $71d6: $66
  ld l, a                                         ; $71d7: $6f
  ld de, $001f                                    ; $71d8: $11 $1f $00
  add hl, de                                      ; $71db: $19
  ldh a, [rSVBK]                                  ; $71dc: $f0 $70
  push af                                         ; $71de: $f5
  ld a, $06                                       ; $71df: $3e $06
  ldh [rSVBK], a                                  ; $71e1: $e0 $70
  ld a, [$da8c]                                   ; $71e3: $fa $8c $da
  ld d, a                                         ; $71e6: $57
  add d                                           ; $71e7: $82
  add d                                           ; $71e8: $82
  dec a                                           ; $71e9: $3d
  ld d, a                                         ; $71ea: $57
  pop af                                          ; $71eb: $f1
  ldh [rSVBK], a                                  ; $71ec: $e0 $70
  ld a, $7f                                       ; $71ee: $3e $7f
  ld c, a                                         ; $71f0: $4f
  ld a, [$cbae]                                   ; $71f1: $fa $ae $cb
  ld e, a                                         ; $71f4: $5f
  ld a, [$cbe8]                                   ; $71f5: $fa $e8 $cb
  cp $13                                          ; $71f8: $fe $13
  jr z, jr_004_7200                               ; $71fa: $28 $04

  ld a, $04                                       ; $71fc: $3e $04
  add e                                           ; $71fe: $83
  ld e, a                                         ; $71ff: $5f

jr_004_7200:
  jp Jump_000_149f                                ; $7200: $c3 $9f $14


Call_004_7203:
  rst $18                                         ; $7203: $df
  call Call_004_71ca                              ; $7204: $cd $ca $71
  ld a, [$cbb8]                                   ; $7207: $fa $b8 $cb
  xor $60                                         ; $720a: $ee $60
  ld [$cbb8], a                                   ; $720c: $ea $b8 $cb
  ld a, [$cbae]                                   ; $720f: $fa $ae $cb
  add a                                           ; $7212: $87
  add a                                           ; $7213: $87
  add a                                           ; $7214: $87
  ld [$c159], a                                   ; $7215: $ea $59 $c1
  ld a, $02                                       ; $7218: $3e $02
  ld [$c1a2], a                                   ; $721a: $ea $a2 $c1
  ld a, [$cbb7]                                   ; $721d: $fa $b7 $cb
  or a                                            ; $7220: $b7
  jr z, jr_004_722a                               ; $7221: $28 $07

  ld a, $01                                       ; $7223: $3e $01
  call Call_004_7928                              ; $7225: $cd $28 $79
  jr jr_004_722e                                  ; $7228: $18 $04

jr_004_722a:
  xor a                                           ; $722a: $af
  call Call_004_7928                              ; $722b: $cd $28 $79

jr_004_722e:
  ld hl, $da8c                                    ; $722e: $21 $8c $da
  ld a, [$cbb7]                                   ; $7231: $fa $b7 $cb
  add [hl]                                        ; $7234: $86
  ld b, a                                         ; $7235: $47
  ld hl, $da8b                                    ; $7236: $21 $8b $da
  ld a, b                                         ; $7239: $78
  cp [hl]                                         ; $723a: $be
  inc hl                                          ; $723b: $23
  jr c, jr_004_7244                               ; $723c: $38 $06

  xor a                                           ; $723e: $af
  call Call_004_7919                              ; $723f: $cd $19 $79
  jr jr_004_7249                                  ; $7242: $18 $05

jr_004_7244:
  ld a, $01                                       ; $7244: $3e $01
  call Call_004_7919                              ; $7246: $cd $19 $79

jr_004_7249:
  call Call_004_7250                              ; $7249: $cd $50 $72
  rst $20                                         ; $724c: $e7
  jp z, Jump_004_72ac                             ; $724d: $ca $ac $72

Call_004_7250:
  call Call_004_7377                              ; $7250: $cd $77 $73
  ld b, $00                                       ; $7253: $06 $00
  ld a, [$da8c]                                   ; $7255: $fa $8c $da
  ld c, a                                         ; $7258: $4f

jr_004_7259:
  push hl                                         ; $7259: $e5
  ld a, [hl+]                                     ; $725a: $2a
  ld h, [hl]                                      ; $725b: $66
  ld l, a                                         ; $725c: $6f
  ld a, $01                                       ; $725d: $3e $01
  ldh [rSVBK], a                                  ; $725f: $e0 $70
  call Call_004_7467                              ; $7261: $cd $67 $74
  ld de, $0000                                    ; $7264: $11 $00 $00
  call Call_000_33f3                              ; $7267: $cd $f3 $33

  db $01, $0b, $66

  ld a, $06                                       ; $726d: $3e $06
  ldh [rSVBK], a                                  ; $726f: $e0 $70
  pop hl                                          ; $7271: $e1
  ld de, $0002                                    ; $7272: $11 $02 $00
  add hl, de                                      ; $7275: $19
  ld a, [hl]                                      ; $7276: $7e
  add hl, de                                      ; $7277: $19
  push hl                                         ; $7278: $e5
  ld d, a                                         ; $7279: $57
  ld a, b                                         ; $727a: $78
  add $06                                         ; $727b: $c6 $06
  ld e, a                                         ; $727d: $5f
  push bc                                         ; $727e: $c5
  push de                                         ; $727f: $d5
  call Call_004_787d                              ; $7280: $cd $7d $78
  pop de                                          ; $7283: $d1
  pop bc                                          ; $7284: $c1
  pop hl                                          ; $7285: $e1
  inc b                                           ; $7286: $04
  ld a, c                                         ; $7287: $79
  cp b                                            ; $7288: $b8
  jr nz, jr_004_7259                              ; $7289: $20 $ce

  ld a, [$cbe8]                                   ; $728b: $fa $e8 $cb
  cp $16                                          ; $728e: $fe $16
  jp z, Jump_004_7388                             ; $7290: $ca $88 $73

  cp $2b                                          ; $7293: $fe $2b
  ret nz                                          ; $7295: $c0

  ld a, [$cc0c]                                   ; $7296: $fa $0c $cc
  or a                                            ; $7299: $b7
  jp nz, Jump_004_7388                            ; $729a: $c2 $88 $73

  jp Jump_004_73ef                                ; $729d: $c3 $ef $73


  db $af, $00, $ef, $00, $2f, $01, $af, $01, $ef, $01, $6f, $01

Call_004_72ac:
Jump_004_72ac:
  ld a, [$cbe8]                                   ; $72ac: $fa $e8 $cb
  cp $13                                          ; $72af: $fe $13
  ret nz                                          ; $72b1: $c0

  rst $18                                         ; $72b2: $df
  ld b, $00                                       ; $72b3: $06 $00
  ldh a, [rSVBK]                                  ; $72b5: $f0 $70
  push af                                         ; $72b7: $f5
  ld a, $03                                       ; $72b8: $3e $03
  ldh [rSVBK], a                                  ; $72ba: $e0 $70

jr_004_72bc:
  ld a, b                                         ; $72bc: $78
  ld hl, $72a0                                    ; $72bd: $21 $a0 $72
  call ResolveIndexedPointer16                              ; $72c0: $cd $8b $31
  ld de, $d000                                    ; $72c3: $11 $00 $d0
  add hl, de                                      ; $72c6: $19
  ld a, $80                                       ; $72c7: $3e $80
  ld [hl+], a                                     ; $72c9: $22
  ld [hl+], a                                     ; $72ca: $22
  ld [hl+], a                                     ; $72cb: $22
  inc b                                           ; $72cc: $04
  ld a, b                                         ; $72cd: $78
  cp $06                                          ; $72ce: $fe $06
  jr nz, jr_004_72bc                              ; $72d0: $20 $ea

  pop af                                          ; $72d2: $f1
  ldh [rSVBK], a                                  ; $72d3: $e0 $70
  ld hl, $705d                                    ; $72d5: $21 $5d $70
  call Call_000_3013                              ; $72d8: $cd $13 $30
  ld a, $18                                       ; $72db: $3e $18
  ld [$c159], a                                   ; $72dd: $ea $59 $c1
  ld a, $01                                       ; $72e0: $3e $01
  ld [$c1a2], a                                   ; $72e2: $ea $a2 $c1
  ldh a, [rSVBK]                                  ; $72e5: $f0 $70
  push af                                         ; $72e7: $f5
  ld a, $06                                       ; $72e8: $3e $06
  ldh [rSVBK], a                                  ; $72ea: $e0 $70
  ldh a, [$ffd3]                                  ; $72ec: $f0 $d3
  ld b, a                                         ; $72ee: $47
  ld a, [$cbb7]                                   ; $72ef: $fa $b7 $cb
  add b                                           ; $72f2: $80
  ld hl, $da8f                                    ; $72f3: $21 $8f $da
  call Call_000_316b                              ; $72f6: $cd $6b $31
  ld a, [hl]                                      ; $72f9: $7e
  ldh [$ffbd], a                                  ; $72fa: $e0 $bd
  pop af                                          ; $72fc: $f1
  ldh [rSVBK], a                                  ; $72fd: $e0 $70
  ldh a, [$ffbd]                                  ; $72ff: $f0 $bd
  ld hl, $650f                                    ; $7301: $21 $0f $65
  call Call_000_315f                              ; $7304: $cd $5f $31
  ld b, $00                                       ; $7307: $06 $00

jr_004_7309:
  ld a, [hl+]                                     ; $7309: $2a
  push hl                                         ; $730a: $e5
  push bc                                         ; $730b: $c5
  or a                                            ; $730c: $b7
  jr z, jr_004_7314                               ; $730d: $28 $05

  call Call_004_7325                              ; $730f: $cd $25 $73
  jr jr_004_731a                                  ; $7312: $18 $06

jr_004_7314:
  call Call_000_33f3                              ; $7314: $cd $f3 $33

  db $01, $bd, $64

jr_004_731a:
  pop bc                                          ; $731a: $c1
  pop hl                                          ; $731b: $e1
  inc b                                           ; $731c: $04
  ld a, b                                         ; $731d: $78
  cp $06                                          ; $731e: $fe $06
  jr nz, jr_004_7309                              ; $7320: $20 $e7

  jp RST_20                                       ; $7322: $c3 $20 $00


Call_004_7325:
  push bc                                         ; $7325: $c5
  bit 7, a                                        ; $7326: $cb $7f
  jr z, jr_004_733f                               ; $7328: $28 $15

  cpl                                             ; $732a: $2f
  inc a                                           ; $732b: $3c
  call Call_000_33f3                              ; $732c: $cd $f3 $33
  ld bc, $670e                                    ; $732f: $01 $0e $67
  ld hl, $2110                                    ; $7332: $21 $10 $21
  call Call_000_33f3                              ; $7335: $cd $f3 $33
  ld bc, $65e8                                    ; $7338: $01 $e8 $65
  ld a, $01                                       ; $733b: $3e $01
  jr jr_004_7350                                  ; $733d: $18 $11

jr_004_733f:
  call Call_000_33f3                              ; $733f: $cd $f3 $33

  db $01, $0e, $67

  ld hl, $210d                                    ; $7345: $21 $0d $21
  call Call_000_33f3                              ; $7348: $cd $f3 $33

  db $01, $e8, $65

  ld a, $03                                       ; $734e: $3e $03

jr_004_7350:
  pop bc                                          ; $7350: $c1
  ld c, a                                         ; $7351: $4f
  ld a, b                                         ; $7352: $78
  ld hl, $72a0                                    ; $7353: $21 $a0 $72
  call ResolveIndexedPointer16                              ; $7356: $cd $8b $31
  ld de, $d500                                    ; $7359: $11 $00 $d5
  add hl, de                                      ; $735c: $19
  ldh a, [rSVBK]                                  ; $735d: $f0 $70
  push af                                         ; $735f: $f5
  ld a, $03                                       ; $7360: $3e $03
  ldh [rSVBK], a                                  ; $7362: $e0 $70
  ld a, [hl]                                      ; $7364: $7e
  and $f8                                         ; $7365: $e6 $f8
  or c                                            ; $7367: $b1
  ld [hl+], a                                     ; $7368: $22
  ld a, [hl]                                      ; $7369: $7e
  and $f8                                         ; $736a: $e6 $f8
  or c                                            ; $736c: $b1
  ld [hl+], a                                     ; $736d: $22
  ld a, [hl]                                      ; $736e: $7e
  and $f8                                         ; $736f: $e6 $f8
  or c                                            ; $7371: $b1
  ld [hl+], a                                     ; $7372: $22
  pop af                                          ; $7373: $f1
  ldh [rSVBK], a                                  ; $7374: $e0 $70
  ret                                             ; $7376: $c9


Call_004_7377:
  ld hl, $da8b                                    ; $7377: $21 $8b $da
  inc hl                                          ; $737a: $23
  inc hl                                          ; $737b: $23
  ld d, h                                         ; $737c: $54
  ld e, l                                         ; $737d: $5d
  ld a, [$cbb7]                                   ; $737e: $fa $b7 $cb
  ld l, a                                         ; $7381: $6f
  ld h, $00                                       ; $7382: $26 $00
  add hl, hl                                      ; $7384: $29
  add hl, hl                                      ; $7385: $29
  add hl, de                                      ; $7386: $19
  ret                                             ; $7387: $c9


Jump_004_7388:
  ld a, [$cbb9]                                   ; $7388: $fa $b9 $cb
  xor $10                                         ; $738b: $ee $10
  ld [$cbb9], a                                   ; $738d: $ea $b9 $cb
  ld a, $01                                       ; $7390: $3e $01
  ldh [rSVBK], a                                  ; $7392: $e0 $70
  ld hl, $7056                                    ; $7394: $21 $56 $70
  call Call_000_3013                              ; $7397: $cd $13 $30
  ld a, $20                                       ; $739a: $3e $20
  ld [$c159], a                                   ; $739c: $ea $59 $c1
  ld a, $02                                       ; $739f: $3e $02
  ld [$c1a2], a                                   ; $73a1: $ea $a2 $c1
  ld hl, $c15e                                    ; $73a4: $21 $5e $c1
  ld a, [hl+]                                     ; $73a7: $2a
  ld h, [hl]                                      ; $73a8: $66
  ld l, a                                         ; $73a9: $6f
  ld a, [$cbb9]                                   ; $73aa: $fa $b9 $cb
  rst $08                                         ; $73ad: $cf
  ld a, l                                         ; $73ae: $7d
  ld [$c15e], a                                   ; $73af: $ea $5e $c1
  ld a, h                                         ; $73b2: $7c
  ld [$c15f], a                                   ; $73b3: $ea $5f $c1
  ld a, $06                                       ; $73b6: $3e $06
  ldh [rSVBK], a                                  ; $73b8: $e0 $70
  call Call_004_7377                              ; $73ba: $cd $77 $73
  inc hl                                          ; $73bd: $23
  inc hl                                          ; $73be: $23
  inc hl                                          ; $73bf: $23
  ld a, [$da8c]                                   ; $73c0: $fa $8c $da
  ld c, a                                         ; $73c3: $4f
  ld b, $00                                       ; $73c4: $06 $00

jr_004_73c6:
  push bc                                         ; $73c6: $c5
  ld a, [hl]                                      ; $73c7: $7e
  push hl                                         ; $73c8: $e5
  ld l, a                                         ; $73c9: $6f
  ld h, $00                                       ; $73ca: $26 $00
  ld a, $01                                       ; $73cc: $3e $01
  ldh [rSVBK], a                                  ; $73ce: $e0 $70
  call Call_000_33f3                              ; $73d0: $cd $f3 $33

  db $01, $23, $67

  ld hl, $17e0                                    ; $73d6: $21 $e0 $17
  call Call_000_33f3                              ; $73d9: $cd $f3 $33

  db $01, $e8, $65

  ld a, $06                                       ; $73df: $3e $06
  ldh [rSVBK], a                                  ; $73e1: $e0 $70
  pop hl                                          ; $73e3: $e1
  ld de, $0004                                    ; $73e4: $11 $04 $00
  add hl, de                                      ; $73e7: $19
  pop bc                                          ; $73e8: $c1
  inc b                                           ; $73e9: $04
  ld a, b                                         ; $73ea: $78
  cp c                                            ; $73eb: $b9
  jr nz, jr_004_73c6                              ; $73ec: $20 $d8

  ret                                             ; $73ee: $c9


Jump_004_73ef:
  ld a, [$cbb9]                                   ; $73ef: $fa $b9 $cb
  xor $10                                         ; $73f2: $ee $10
  ld [$cbb9], a                                   ; $73f4: $ea $b9 $cb
  ld a, $01                                       ; $73f7: $3e $01
  ldh [rSVBK], a                                  ; $73f9: $e0 $70
  ld hl, $704f                                    ; $73fb: $21 $4f $70
  call Call_000_3013                              ; $73fe: $cd $13 $30
  ld a, $20                                       ; $7401: $3e $20
  ld [$c159], a                                   ; $7403: $ea $59 $c1
  ld a, $02                                       ; $7406: $3e $02
  ld [$c1a2], a                                   ; $7408: $ea $a2 $c1
  ld hl, $c15e                                    ; $740b: $21 $5e $c1
  ld a, [hl+]                                     ; $740e: $2a
  ld h, [hl]                                      ; $740f: $66
  ld l, a                                         ; $7410: $6f
  ld a, [$cbb9]                                   ; $7411: $fa $b9 $cb
  rst $08                                         ; $7414: $cf
  ld a, l                                         ; $7415: $7d
  ld [$c15e], a                                   ; $7416: $ea $5e $c1
  ld a, h                                         ; $7419: $7c
  ld [$c15f], a                                   ; $741a: $ea $5f $c1
  ld a, $06                                       ; $741d: $3e $06
  ldh [rSVBK], a                                  ; $741f: $e0 $70
  call Call_004_7377                              ; $7421: $cd $77 $73
  inc hl                                          ; $7424: $23
  inc hl                                          ; $7425: $23
  ld a, [$da8c]                                   ; $7426: $fa $8c $da
  ld c, a                                         ; $7429: $4f
  ld b, $00                                       ; $742a: $06 $00

jr_004_742c:
  push bc                                         ; $742c: $c5
  push hl                                         ; $742d: $e5
  ld a, [$cc0c]                                   ; $742e: $fa $0c $cc
  or a                                            ; $7431: $b7
  jr z, jr_004_743d                               ; $7432: $28 $09

  ld a, [hl]                                      ; $7434: $7e
  ld hl, $68b3                                    ; $7435: $21 $b3 $68
  call ResolveIndexedPointer16                              ; $7438: $cd $8b $31
  jr jr_004_7444                                  ; $743b: $18 $07

jr_004_743d:
  ld a, [hl]                                      ; $743d: $7e
  ld hl, $677f                                    ; $743e: $21 $7f $67
  call ResolveIndexedPointer16                              ; $7441: $cd $8b $31

jr_004_7444:
  ld a, $01                                       ; $7444: $3e $01
  ldh [rSVBK], a                                  ; $7446: $e0 $70
  call Call_000_33f3                              ; $7448: $cd $f3 $33

  db $01, $23, $67

  ld hl, $181c                                    ; $744e: $21 $1c $18
  call Call_000_33f3                              ; $7451: $cd $f3 $33

  db $01, $e8, $65

  ld a, $06                                       ; $7457: $3e $06
  ldh [rSVBK], a                                  ; $7459: $e0 $70
  pop hl                                          ; $745b: $e1
  ld de, $0004                                    ; $745c: $11 $04 $00
  add hl, de                                      ; $745f: $19
  pop bc                                          ; $7460: $c1
  inc b                                           ; $7461: $04
  ld a, b                                         ; $7462: $78
  cp c                                            ; $7463: $b9
  jr nz, jr_004_742c                              ; $7464: $20 $c6

  ret                                             ; $7466: $c9


Call_004_7467:
  push hl                                         ; $7467: $e5
  ld hl, $7070                                    ; $7468: $21 $70 $70
  ld a, b                                         ; $746b: $78
  call ResolveIndexedPointer16                              ; $746c: $cd $8b $31
  call Call_000_3013                              ; $746f: $cd $13 $30
  ld a, [$cbae]                                   ; $7472: $fa $ae $cb
  add a                                           ; $7475: $87
  add a                                           ; $7476: $87
  add a                                           ; $7477: $87
  ld [$c159], a                                   ; $7478: $ea $59 $c1
  ld a, $02                                       ; $747b: $3e $02
  ld [$c1a2], a                                   ; $747d: $ea $a2 $c1
  ld hl, $c15e                                    ; $7480: $21 $5e $c1
  ld a, [hl+]                                     ; $7483: $2a
  ld h, [hl]                                      ; $7484: $66
  ld l, a                                         ; $7485: $6f
  ld a, [$cbb8]                                   ; $7486: $fa $b8 $cb
  rst $08                                         ; $7489: $cf
  ld a, l                                         ; $748a: $7d
  ld [$c15e], a                                   ; $748b: $ea $5e $c1
  ld a, h                                         ; $748e: $7c
  ld [$c15f], a                                   ; $748f: $ea $5f $c1
  pop hl                                          ; $7492: $e1
  ret                                             ; $7493: $c9


Call_004_7494:
  ld e, $06                                       ; $7494: $1e $06
  call Call_004_78ee                              ; $7496: $cd $ee $78
  ld e, $07                                       ; $7499: $1e $07
  call Call_004_78ee                              ; $749b: $cd $ee $78
  ld e, $08                                       ; $749e: $1e $08
  call Call_004_78ee                              ; $74a0: $cd $ee $78
  ld e, $09                                       ; $74a3: $1e $09
  jp Jump_004_78ee                                ; $74a5: $c3 $ee $78


  ld a, $82                                       ; $74a8: $3e $82
  ld e, $ff                                       ; $74aa: $1e $ff
  call Call_000_0a46                              ; $74ac: $cd $46 $0a
  ret nz                                          ; $74af: $c0

  ld c, l                                         ; $74b0: $4d
  ld b, h                                         ; $74b1: $44
  jp Jump_000_0dbb                                ; $74b2: $c3 $bb $0d


  ld a, [$cbea]                                   ; $74b5: $fa $ea $cb
  dec a                                           ; $74b8: $3d
  jp z, Jump_004_7600                             ; $74b9: $ca $00 $76

  ld hl, $cb4e                                    ; $74bc: $21 $4e $cb
  ld a, [hl]                                      ; $74bf: $7e
  or a                                            ; $74c0: $b7
  jr z, jr_004_74c6                               ; $74c1: $28 $03

  dec a                                           ; $74c3: $3d
  ld [hl], a                                      ; $74c4: $77
  ret nz                                          ; $74c5: $c0

jr_004_74c6:
  ldh a, [$ffa6]                                  ; $74c6: $f0 $a6
  bit 3, a                                        ; $74c8: $cb $5f
  ret nz                                          ; $74ca: $c0

  bit 2, a                                        ; $74cb: $cb $57
  ret nz                                          ; $74cd: $c0

  ldh a, [rSVBK]                                  ; $74ce: $f0 $70
  push af                                         ; $74d0: $f5
  ld a, $06                                       ; $74d1: $3e $06
  ldh [rSVBK], a                                  ; $74d3: $e0 $70
  ld a, [$da8c]                                   ; $74d5: $fa $8c $da
  or a                                            ; $74d8: $b7
  jp z, Jump_004_75ea                             ; $74d9: $ca $ea $75

  ldh a, [$ffa6]                                  ; $74dc: $f0 $a6
  and $30                                         ; $74de: $e6 $30
  call nz, Call_004_7663                          ; $74e0: $c4 $63 $76
  ld c, $00                                       ; $74e3: $0e $00
  ld e, $00                                       ; $74e5: $1e $00
  ldh a, [$ffa6]                                  ; $74e7: $f0 $a6
  bit 7, a                                        ; $74e9: $cb $7f
  jr z, jr_004_753b                               ; $74eb: $28 $4e

  ld c, $01                                       ; $74ed: $0e $01
  ld hl, $da8b                                    ; $74ef: $21 $8b $da
  inc hl                                          ; $74f2: $23
  ld b, [hl]                                      ; $74f3: $46
  dec b                                           ; $74f4: $05
  ldh a, [$ffd3]                                  ; $74f5: $f0 $d3
  cp b                                            ; $74f7: $b8
  jr nz, jr_004_7537                              ; $74f8: $20 $3d

  ld b, a                                         ; $74fa: $47
  ld a, [$cbb7]                                   ; $74fb: $fa $b7 $cb
  add b                                           ; $74fe: $80
  inc a                                           ; $74ff: $3c
  ld b, a                                         ; $7500: $47
  ld hl, $da8b                                    ; $7501: $21 $8b $da
  ld a, b                                         ; $7504: $78
  cp [hl]                                         ; $7505: $be
  jr z, jr_004_7537                               ; $7506: $28 $2f

  ld a, [$cbb7]                                   ; $7508: $fa $b7 $cb
  ld e, a                                         ; $750b: $5f
  ld a, [$da8c]                                   ; $750c: $fa $8c $da
  add e                                           ; $750f: $83
  ld [$cbb7], a                                   ; $7510: $ea $b7 $cb
  ld a, [$da8c]                                   ; $7513: $fa $8c $da
  ld d, a                                         ; $7516: $57
  ld a, [$da8b]                                   ; $7517: $fa $8b $da
  sub d                                           ; $751a: $92
  ld hl, $cbb7                                    ; $751b: $21 $b7 $cb
  cp [hl]                                         ; $751e: $be
  jr nc, jr_004_7524                              ; $751f: $30 $03

  ld [$cbb7], a                                   ; $7521: $ea $b7 $cb

jr_004_7524:
  ld a, $01                                       ; $7524: $3e $01
  call Call_000_392b                              ; $7526: $cd $2b $39
  ld c, $02                                       ; $7529: $0e $02
  ld a, [$da8c]                                   ; $752b: $fa $8c $da
  add e                                           ; $752e: $83
  ld hl, $cbb7                                    ; $752f: $21 $b7 $cb
  sub [hl]                                        ; $7532: $96
  ldh [$ffd3], a                                  ; $7533: $e0 $d3
  ld e, $01                                       ; $7535: $1e $01

jr_004_7537:
  ldh a, [$ffa6]                                  ; $7537: $f0 $a6
  jr jr_004_7571                                  ; $7539: $18 $36

jr_004_753b:
  bit 6, a                                        ; $753b: $cb $77
  jr z, jr_004_7571                               ; $753d: $28 $32

  ld c, $01                                       ; $753f: $0e $01
  ldh a, [$ffd3]                                  ; $7541: $f0 $d3
  or a                                            ; $7543: $b7
  jr nz, jr_004_756f                              ; $7544: $20 $29

  ld a, [$cbb7]                                   ; $7546: $fa $b7 $cb
  or a                                            ; $7549: $b7
  jr z, jr_004_756f                               ; $754a: $28 $23

  ld a, [$da8c]                                   ; $754c: $fa $8c $da
  ld d, a                                         ; $754f: $57
  ld a, [$cbb7]                                   ; $7550: $fa $b7 $cb
  ld e, a                                         ; $7553: $5f
  cp d                                            ; $7554: $ba
  jr c, jr_004_755a                               ; $7555: $38 $03

  sub d                                           ; $7557: $92
  jr jr_004_755b                                  ; $7558: $18 $01

jr_004_755a:
  xor a                                           ; $755a: $af

jr_004_755b:
  ld [$cbb7], a                                   ; $755b: $ea $b7 $cb
  ld c, $02                                       ; $755e: $0e $02
  ld a, $01                                       ; $7560: $3e $01
  call Call_000_392b                              ; $7562: $cd $2b $39
  ld a, e                                         ; $7565: $7b
  dec a                                           ; $7566: $3d
  ld hl, $cbb7                                    ; $7567: $21 $b7 $cb
  sub [hl]                                        ; $756a: $96
  ldh [$ffd3], a                                  ; $756b: $e0 $d3
  ld e, $01                                       ; $756d: $1e $01

jr_004_756f:
  ldh a, [$ffa6]                                  ; $756f: $f0 $a6

jr_004_7571:
  bit 0, a                                        ; $7571: $cb $47
  jr nz, jr_004_75b2                              ; $7573: $20 $3d

  ld d, $00                                       ; $7575: $16 $00
  bit 1, a                                        ; $7577: $cb $4f
  jr nz, jr_004_75cc                              ; $7579: $20 $51

  bit 7, a                                        ; $757b: $cb $7f
  jr z, jr_004_758b                               ; $757d: $28 $0c

  ld a, [$da8c]                                   ; $757f: $fa $8c $da
  dec a                                           ; $7582: $3d
  ld hl, $ffd3                                    ; $7583: $21 $d3 $ff
  cp [hl]                                         ; $7586: $be
  jr nz, jr_004_758b                              ; $7587: $20 $02

  jr jr_004_759b                                  ; $7589: $18 $10

jr_004_758b:
  ld a, e                                         ; $758b: $7b
  or a                                            ; $758c: $b7
  jr nz, jr_004_759b                              ; $758d: $20 $0c

  ldh a, [$ffa6]                                  ; $758f: $f0 $a6
  and $f0                                         ; $7591: $e6 $f0
  jr z, jr_004_759b                               ; $7593: $28 $06

  call Call_000_33f3                              ; $7595: $cd $f3 $33

  db $06, $17, $51

jr_004_759b:
  ld a, c                                         ; $759b: $79
  or a                                            ; $759c: $b7
  jr z, jr_004_75e6                               ; $759d: $28 $47

  cp $02                                          ; $759f: $fe $02
  jr z, jr_004_75a8                               ; $75a1: $28 $05

  call Call_004_72ac                              ; $75a3: $cd $ac $72
  jr jr_004_75e6                                  ; $75a6: $18 $3e

jr_004_75a8:
  call Call_004_7203                              ; $75a8: $cd $03 $72
  ld a, $03                                       ; $75ab: $3e $03
  ld [$cb4e], a                                   ; $75ad: $ea $4e $cb
  jr jr_004_75e6                                  ; $75b0: $18 $34

jr_004_75b2:
  ld a, $00                                       ; $75b2: $3e $00
  call Call_000_392b                              ; $75b4: $cd $2b $39
  ldh a, [$ffd3]                                  ; $75b7: $f0 $d3
  ld b, a                                         ; $75b9: $47
  ld a, [$cbb7]                                   ; $75ba: $fa $b7 $cb
  add b                                           ; $75bd: $80
  ld hl, $da8f                                    ; $75be: $21 $8f $da
  call Call_000_316b                              ; $75c1: $cd $6b $31
  ld a, [hl]                                      ; $75c4: $7e
  ld [$cbeb], a                                   ; $75c5: $ea $eb $cb
  ld d, $01                                       ; $75c8: $16 $01
  jr jr_004_75d6                                  ; $75ca: $18 $0a

jr_004_75cc:
  ld a, $03                                       ; $75cc: $3e $03
  call Call_000_392b                              ; $75ce: $cd $2b $39
  ld a, $ff                                       ; $75d1: $3e $ff
  ld [$cbeb], a                                   ; $75d3: $ea $eb $cb

jr_004_75d6:
  call Call_004_7686                              ; $75d6: $cd $86 $76
  ld a, [$cbea]                                   ; $75d9: $fa $ea $cb
  or a                                            ; $75dc: $b7
  jr nz, jr_004_75e6                              ; $75dd: $20 $07

  call Call_004_7494                              ; $75df: $cd $94 $74
  xor a                                           ; $75e2: $af
  ld [$cc2c], a                                   ; $75e3: $ea $2c $cc

jr_004_75e6:
  pop af                                          ; $75e6: $f1
  ldh [rSVBK], a                                  ; $75e7: $e0 $70
  ret                                             ; $75e9: $c9


Jump_004_75ea:
  pop af                                          ; $75ea: $f1
  ldh [rSVBK], a                                  ; $75eb: $e0 $70
  ldh a, [$ffa6]                                  ; $75ed: $f0 $a6
  bit 1, a                                        ; $75ef: $cb $4f
  ret z                                           ; $75f1: $c8

  xor a                                           ; $75f2: $af
  ld [$cc2c], a                                   ; $75f3: $ea $2c $cc
  dec a                                           ; $75f6: $3d
  ld [$cbeb], a                                   ; $75f7: $ea $eb $cb
  ld d, $00                                       ; $75fa: $16 $00
  call Call_004_7686                              ; $75fc: $cd $86 $76
  ret                                             ; $75ff: $c9


Jump_004_7600:
  ldh a, [$ffa6]                                  ; $7600: $f0 $a6
  and $0b                                         ; $7602: $e6 $0b
  ret z                                           ; $7604: $c8

  xor a                                           ; $7605: $af
  ld [$cbea], a                                   ; $7606: $ea $ea $cb
  ld a, $04                                       ; $7609: $3e $04
  ld [$cc2c], a                                   ; $760b: $ea $2c $cc
  rst $18                                         ; $760e: $df
  ld c, $80                                       ; $760f: $0e $80
  ld e, $06                                       ; $7611: $1e $06
  ld d, $0c                                       ; $7613: $16 $0c
  ld hl, $00ad                                    ; $7615: $21 $ad $00
  ld b, $08                                       ; $7618: $06 $08
  call Call_000_14a1                              ; $761a: $cd $a1 $14
  rst $20                                         ; $761d: $e7
  call Call_000_3363                              ; $761e: $cd $63 $33
  call Call_000_33f3                              ; $7621: $cd $f3 $33
  rlca                                            ; $7624: $07
  ei                                              ; $7625: $fb
  ld c, d                                         ; $7626: $4a
  call Call_004_72ac                              ; $7627: $cd $ac $72
  ret                                             ; $762a: $c9


Jump_004_762b:
  xor a                                           ; $762b: $af
  ld [$cc2c], a                                   ; $762c: $ea $2c $cc
  inc a                                           ; $762f: $3c
  ld [$cbea], a                                   ; $7630: $ea $ea $cb
  rst $18                                         ; $7633: $df
  ld c, $80                                       ; $7634: $0e $80
  ld e, $06                                       ; $7636: $1e $06
  ld d, $0c                                       ; $7638: $16 $0c
  ld hl, $00ad                                    ; $763a: $21 $ad $00
  ld b, $08                                       ; $763d: $06 $08
  call Call_000_14a1                              ; $763f: $cd $a1 $14
  rst $20                                         ; $7642: $e7
  call Call_000_3363                              ; $7643: $cd $63 $33
  ld hl, $7038                                    ; $7646: $21 $38 $70
  call Call_000_3013                              ; $7649: $cd $13 $30
  ld a, $2c                                       ; $764c: $3e $2c
  ld [$c159], a                                   ; $764e: $ea $59 $c1
  ld a, $06                                       ; $7651: $3e $06
  ld [$c1a2], a                                   ; $7653: $ea $a2 $c1
  ld hl, $282a                                    ; $7656: $21 $2a $28
  ld a, [$cec3]                                   ; $7659: $fa $c3 $ce
  call Call_000_33f3                              ; $765c: $cd $f3 $33
  ld bc, $6675                                    ; $765f: $01 $75 $66
  ret                                             ; $7662: $c9


Call_004_7663:
  ldh a, [$ffa6]                                  ; $7663: $f0 $a6
  and $20                                         ; $7665: $e6 $20
  jr nz, jr_004_7679                              ; $7667: $20 $10

  ld a, $01                                       ; $7669: $3e $01
  call Call_000_392b                              ; $766b: $cd $2b $39
  ld a, [$da8c]                                   ; $766e: $fa $8c $da
  dec a                                           ; $7671: $3d
  ldh [$ffd3], a                                  ; $7672: $e0 $d3
  ld a, $80                                       ; $7674: $3e $80
  ldh [$ffa6], a                                  ; $7676: $e0 $a6
  ret                                             ; $7678: $c9


jr_004_7679:
  ld a, $01                                       ; $7679: $3e $01
  call Call_000_392b                              ; $767b: $cd $2b $39
  xor a                                           ; $767e: $af
  ldh [$ffd3], a                                  ; $767f: $e0 $d3
  ld a, $40                                       ; $7681: $3e $40
  ldh [$ffa6], a                                  ; $7683: $e0 $a6
  ret                                             ; $7685: $c9


Call_004_7686:
  ld a, d                                         ; $7686: $7a
  or a                                            ; $7687: $b7
  jr z, jr_004_76cd                               ; $7688: $28 $43

  ld a, [$cbe8]                                   ; $768a: $fa $e8 $cb
  cp $13                                          ; $768d: $fe $13
  jr z, jr_004_7693                               ; $768f: $28 $02

  jr jr_004_76c4                                  ; $7691: $18 $31

jr_004_7693:
  ld a, [$cbeb]                                   ; $7693: $fa $eb $cb
  cp $00                                          ; $7696: $fe $00
  jr z, jr_004_76c4                               ; $7698: $28 $2a

  cp $0d                                          ; $769a: $fe $0d
  jr z, jr_004_76c4                               ; $769c: $28 $26

  cp $1b                                          ; $769e: $fe $1b
  jr z, jr_004_76c4                               ; $76a0: $28 $22

  cp $28                                          ; $76a2: $fe $28
  jr z, jr_004_76c4                               ; $76a4: $28 $1e

  cp $35                                          ; $76a6: $fe $35
  jr z, jr_004_76c4                               ; $76a8: $28 $1a

  cp $42                                          ; $76aa: $fe $42
  jr z, jr_004_76c4                               ; $76ac: $28 $16

  ld hl, $69e7                                    ; $76ae: $21 $e7 $69
  rst $08                                         ; $76b1: $cf
  ld b, a                                         ; $76b2: $47
  ld a, [$cec3]                                   ; $76b3: $fa $c3 $ce

jr_004_76b6:
  or a                                            ; $76b6: $b7
  jr z, jr_004_76be                               ; $76b7: $28 $05

  dec a                                           ; $76b9: $3d
  srl b                                           ; $76ba: $cb $38
  jr jr_004_76b6                                  ; $76bc: $18 $f8

jr_004_76be:
  ld a, b                                         ; $76be: $78
  and $01                                         ; $76bf: $e6 $01
  jp z, Jump_004_762b                             ; $76c1: $ca $2b $76

jr_004_76c4:
  call Call_004_71ca                              ; $76c4: $cd $ca $71
  ld a, [$cbe8]                                   ; $76c7: $fa $e8 $cb
  jp Jump_000_261e                                ; $76ca: $c3 $1e $26


jr_004_76cd:
  ld a, [$cbec]                                   ; $76cd: $fa $ec $cb
  or a                                            ; $76d0: $b7
  call nz, Call_004_71ca                          ; $76d1: $c4 $ca $71
  ld a, [$cbe9]                                   ; $76d4: $fa $e9 $cb
  jp Jump_000_261e                                ; $76d7: $c3 $1e $26


Call_004_76da:
  ldh a, [rSVBK]                                  ; $76da: $f0 $70
  push af                                         ; $76dc: $f5
  ld a, $03                                       ; $76dd: $3e $03
  ldh [rSVBK], a                                  ; $76df: $e0 $70
  ld a, [$cbac]                                   ; $76e1: $fa $ac $cb
  inc a                                           ; $76e4: $3c
  ld hl, $70d4                                    ; $76e5: $21 $d4 $70
  call ResolveIndexedPointer16                              ; $76e8: $cd $8b $31
  ld de, $d000                                    ; $76eb: $11 $00 $d0
  add hl, de                                      ; $76ee: $19
  ld a, l                                         ; $76ef: $7d
  ld [$cbaf], a                                   ; $76f0: $ea $af $cb
  ld a, h                                         ; $76f3: $7c
  ld [$cbb0], a                                   ; $76f4: $ea $b0 $cb
  ld de, $cb4f                                    ; $76f7: $11 $4f $cb
  ld bc, $0006                                    ; $76fa: $01 $06 $00

jr_004_76fd:
  push de                                         ; $76fd: $d5
  ld a, [$cbad]                                   ; $76fe: $fa $ad $cb
  add b                                           ; $7701: $80
  inc a                                           ; $7702: $3c
  ld hl, $7094                                    ; $7703: $21 $94 $70
  call ResolveIndexedPointer16                              ; $7706: $cd $8b $31
  push hl                                         ; $7709: $e5
  ld hl, $cbaf                                    ; $770a: $21 $af $cb
  ld e, [hl]                                      ; $770d: $5e
  inc hl                                          ; $770e: $23
  ld d, [hl]                                      ; $770f: $56
  pop hl                                          ; $7710: $e1
  add hl, de                                      ; $7711: $19
  pop de                                          ; $7712: $d1
  ld a, l                                         ; $7713: $7d
  ld [de], a                                      ; $7714: $12
  inc de                                          ; $7715: $13
  ld a, h                                         ; $7716: $7c
  ld [de], a                                      ; $7717: $12
  inc de                                          ; $7718: $13
  inc b                                           ; $7719: $04
  ld a, b                                         ; $771a: $78
  cp c                                            ; $771b: $b9
  jr nz, jr_004_76fd                              ; $771c: $20 $df

  pop af                                          ; $771e: $f1
  ldh [rSVBK], a                                  ; $771f: $e0 $70
  ret                                             ; $7721: $c9


Call_004_7722:
  ldh a, [rSVBK]                                  ; $7722: $f0 $70
  push af                                         ; $7724: $f5
  ld a, $03                                       ; $7725: $3e $03
  ldh [rSVBK], a                                  ; $7727: $e0 $70
  ld a, [$cbac]                                   ; $7729: $fa $ac $cb
  ld b, a                                         ; $772c: $47
  ld a, [$cbae]                                   ; $772d: $fa $ae $cb
  add b                                           ; $7730: $80
  add $06                                         ; $7731: $c6 $06
  ld hl, $70d4                                    ; $7733: $21 $d4 $70
  call ResolveIndexedPointer16                              ; $7736: $cd $8b $31
  ld de, $d000                                    ; $7739: $11 $00 $d0
  add hl, de                                      ; $773c: $19
  ld a, l                                         ; $773d: $7d
  ld [$cbaf], a                                   ; $773e: $ea $af $cb
  ld a, h                                         ; $7741: $7c
  ld [$cbb0], a                                   ; $7742: $ea $b0 $cb
  ld de, $cb5b                                    ; $7745: $11 $5b $cb
  ld b, $01                                       ; $7748: $06 $01
  ld c, $0d                                       ; $774a: $0e $0d

jr_004_774c:
  push de                                         ; $774c: $d5
  ld a, [$cbad]                                   ; $774d: $fa $ad $cb
  add b                                           ; $7750: $80
  ld hl, $7094                                    ; $7751: $21 $94 $70
  call ResolveIndexedPointer16                              ; $7754: $cd $8b $31
  push hl                                         ; $7757: $e5
  ld hl, $cbaf                                    ; $7758: $21 $af $cb
  ld e, [hl]                                      ; $775b: $5e
  inc hl                                          ; $775c: $23
  ld d, [hl]                                      ; $775d: $56
  pop hl                                          ; $775e: $e1
  add hl, de                                      ; $775f: $19
  pop de                                          ; $7760: $d1
  ld a, l                                         ; $7761: $7d
  ld [de], a                                      ; $7762: $12
  inc de                                          ; $7763: $13
  ld a, h                                         ; $7764: $7c
  ld [de], a                                      ; $7765: $12
  inc de                                          ; $7766: $13
  inc b                                           ; $7767: $04
  inc b                                           ; $7768: $04
  inc b                                           ; $7769: $04
  ld a, b                                         ; $776a: $78
  cp c                                            ; $776b: $b9
  jr nz, jr_004_774c                              ; $776c: $20 $de

  pop af                                          ; $776e: $f1
  ldh [rSVBK], a                                  ; $776f: $e0 $70
  ret                                             ; $7771: $c9


Call_004_7772:
  ldh a, [rSVBK]                                  ; $7772: $f0 $70
  push af                                         ; $7774: $f5
  ld a, $03                                       ; $7775: $3e $03
  ldh [rSVBK], a                                  ; $7777: $e0 $70
  ld a, [$cbac]                                   ; $7779: $fa $ac $cb
  ld b, a                                         ; $777c: $47
  ld a, [$cbae]                                   ; $777d: $fa $ae $cb
  add b                                           ; $7780: $80
  add $03                                         ; $7781: $c6 $03
  ld hl, $70d4                                    ; $7783: $21 $d4 $70
  call ResolveIndexedPointer16                              ; $7786: $cd $8b $31
  ld de, $d000                                    ; $7789: $11 $00 $d0
  add hl, de                                      ; $778c: $19
  ld a, l                                         ; $778d: $7d
  ld [$cbaf], a                                   ; $778e: $ea $af $cb
  ld a, h                                         ; $7791: $7c
  ld [$cbb0], a                                   ; $7792: $ea $b0 $cb
  ld de, $cb63                                    ; $7795: $11 $63 $cb
  ld b, $01                                       ; $7798: $06 $01
  ld c, $0d                                       ; $779a: $0e $0d

jr_004_779c:
  push de                                         ; $779c: $d5
  ld a, [$cbad]                                   ; $779d: $fa $ad $cb
  add b                                           ; $77a0: $80
  ld hl, $7094                                    ; $77a1: $21 $94 $70
  call ResolveIndexedPointer16                              ; $77a4: $cd $8b $31
  push hl                                         ; $77a7: $e5
  ld hl, $cbaf                                    ; $77a8: $21 $af $cb
  ld e, [hl]                                      ; $77ab: $5e
  inc hl                                          ; $77ac: $23
  ld d, [hl]                                      ; $77ad: $56
  pop hl                                          ; $77ae: $e1
  add hl, de                                      ; $77af: $19
  pop de                                          ; $77b0: $d1
  ld a, l                                         ; $77b1: $7d
  ld [de], a                                      ; $77b2: $12
  inc de                                          ; $77b3: $13
  ld a, h                                         ; $77b4: $7c
  ld [de], a                                      ; $77b5: $12
  inc de                                          ; $77b6: $13
  inc b                                           ; $77b7: $04
  inc b                                           ; $77b8: $04
  inc b                                           ; $77b9: $04
  ld a, b                                         ; $77ba: $78
  cp c                                            ; $77bb: $b9
  jr nz, jr_004_779c                              ; $77bc: $20 $de

  pop af                                          ; $77be: $f1
  ldh [rSVBK], a                                  ; $77bf: $e0 $70
  ret                                             ; $77c1: $c9


Call_004_77c2:
  ldh a, [rSVBK]                                  ; $77c2: $f0 $70
  push af                                         ; $77c4: $f5
  ld a, $03                                       ; $77c5: $3e $03
  ldh [rSVBK], a                                  ; $77c7: $e0 $70
  ld a, [$cbac]                                   ; $77c9: $fa $ac $cb
  add $03                                         ; $77cc: $c6 $03
  ld hl, $70d4                                    ; $77ce: $21 $d4 $70
  call ResolveIndexedPointer16                              ; $77d1: $cd $8b $31
  ld de, $d000                                    ; $77d4: $11 $00 $d0
  add hl, de                                      ; $77d7: $19
  ld a, l                                         ; $77d8: $7d
  ld [$cbaf], a                                   ; $77d9: $ea $af $cb
  ld a, h                                         ; $77dc: $7c
  ld [$cbb0], a                                   ; $77dd: $ea $b0 $cb
  ld de, $cb6b                                    ; $77e0: $11 $6b $cb
  ld b, $00                                       ; $77e3: $06 $00
  ld c, $01                                       ; $77e5: $0e $01

jr_004_77e7:
  push de                                         ; $77e7: $d5
  ld a, [$cbad]                                   ; $77e8: $fa $ad $cb
  add b                                           ; $77eb: $80
  ld hl, $7094                                    ; $77ec: $21 $94 $70
  call ResolveIndexedPointer16                              ; $77ef: $cd $8b $31
  push hl                                         ; $77f2: $e5
  ld hl, $cbaf                                    ; $77f3: $21 $af $cb
  ld e, [hl]                                      ; $77f6: $5e
  inc hl                                          ; $77f7: $23
  ld d, [hl]                                      ; $77f8: $56
  pop hl                                          ; $77f9: $e1
  add hl, de                                      ; $77fa: $19
  pop de                                          ; $77fb: $d1
  ld a, l                                         ; $77fc: $7d
  ld [de], a                                      ; $77fd: $12
  inc de                                          ; $77fe: $13
  ld a, h                                         ; $77ff: $7c
  ld [de], a                                      ; $7800: $12
  inc de                                          ; $7801: $13
  ld a, c                                         ; $7802: $79
  xor $01                                         ; $7803: $ee $01
  ld c, a                                         ; $7805: $4f
  inc b                                           ; $7806: $04
  ld a, b                                         ; $7807: $78
  add c                                           ; $7808: $81
  ld b, a                                         ; $7809: $47
  cp $0c                                          ; $780a: $fe $0c
  jr nz, jr_004_77e7                              ; $780c: $20 $d9

  pop af                                          ; $780e: $f1
  ldh [rSVBK], a                                  ; $780f: $e0 $70
  ret                                             ; $7811: $c9


  db $03, $03, $30, $00, $01, $00, $00, $00, $00, $03, $48, $00, $02, $01, $01, $00
  db $01, $03, $60, $01, $03, $02, $02, $00, $02, $03, $78, $02, $03, $03, $03, $00
  db $03, $00, $00, $00, $00, $00, $00, $00, $04, $00, $00, $03, $03, $03, $03, $00
  db $05

Jump_004_7843:
  ld bc, $0031                                    ; $7843: $01 $31 $00
  ld de, $cb7b                                    ; $7846: $11 $7b $cb
  ld hl, $7812                                    ; $7849: $21 $12 $78
  call Call_000_129c                              ; $784c: $cd $9c $12
  ld a, [$cbac]                                   ; $784f: $fa $ac $cb
  add a                                           ; $7852: $87
  add a                                           ; $7853: $87
  add a                                           ; $7854: $87
  add $03                                         ; $7855: $c6 $03
  ld [$cb7c], a                                   ; $7857: $ea $7c $cb
  ld [$cb84], a                                   ; $785a: $ea $84 $cb
  ld [$cb8c], a                                   ; $785d: $ea $8c $cb
  ld [$cb94], a                                   ; $7860: $ea $94 $cb
  ld a, [$cbad]                                   ; $7863: $fa $ad $cb
  inc a                                           ; $7866: $3c
  add a                                           ; $7867: $87
  add a                                           ; $7868: $87
  add a                                           ; $7869: $87
  ld [$cb7d], a                                   ; $786a: $ea $7d $cb
  add $18                                         ; $786d: $c6 $18
  ld [$cb85], a                                   ; $786f: $ea $85 $cb
  add $18                                         ; $7872: $c6 $18
  ld [$cb8d], a                                   ; $7874: $ea $8d $cb
  add $18                                         ; $7877: $c6 $18
  ld [$cb95], a                                   ; $7879: $ea $95 $cb
  ret                                             ; $787c: $c9


Call_004_787d:
Jump_004_787d:
  push de                                         ; $787d: $d5
  ld hl, $cbbb                                    ; $787e: $21 $bb $cb
  ld a, e                                         ; $7881: $7b
  call Call_000_317a                              ; $7882: $cd $7a $31
  ld a, [hl+]                                     ; $7885: $2a
  ld c, a                                         ; $7886: $4f
  ld b, [hl]                                      ; $7887: $46
  pop de                                          ; $7888: $d1
  ld hl, $0025                                    ; $7889: $21 $25 $00
  add hl, bc                                      ; $788c: $09
  ld [hl], $d4                                    ; $788d: $36 $d4
  inc hl                                          ; $788f: $23
  ld [hl], $11                                    ; $7890: $36 $11
  ld a, d                                         ; $7892: $7a
  cp $80                                          ; $7893: $fe $80
  jr c, jr_004_789d                               ; $7895: $38 $06

  dec hl                                          ; $7897: $2b
  ld [hl], $54                                    ; $7898: $36 $54
  inc hl                                          ; $789a: $23
  ld [hl], $12                                    ; $789b: $36 $12

jr_004_789d:
  ld hl, $002a                                    ; $789d: $21 $2a $00
  add hl, bc                                      ; $78a0: $09
  set 0, [hl]                                     ; $78a1: $cb $c6
  ld hl, $0002                                    ; $78a3: $21 $02 $00
  add hl, bc                                      ; $78a6: $09
  ld [hl], $01                                    ; $78a7: $36 $01
  call Call_000_0864                              ; $78a9: $cd $64 $08
  ldh a, [$ffcd]                                  ; $78ac: $f0 $cd
  cp $0d                                          ; $78ae: $fe $0d
  ret z                                           ; $78b0: $c8

  cp $0b                                          ; $78b1: $fe $0b
  ret z                                           ; $78b3: $c8

  cp $0c                                          ; $78b4: $fe $0c
  ret z                                           ; $78b6: $c8

  ld a, d                                         ; $78b7: $7a
  call Call_000_3427                              ; $78b8: $cd $27 $34

  db $08, $85, $73

  push de                                         ; $78be: $d5
  ld hl, $cbbb                                    ; $78bf: $21 $bb $cb
  ld a, e                                         ; $78c2: $7b
  call Call_000_317a                              ; $78c3: $cd $7a $31
  ld a, [hl+]                                     ; $78c6: $2a
  ld c, a                                         ; $78c7: $4f
  ld b, [hl]                                      ; $78c8: $46
  pop de                                          ; $78c9: $d1
  ld hl, $002a                                    ; $78ca: $21 $2a $00
  add hl, bc                                      ; $78cd: $09
  ld a, d                                         ; $78ce: $7a
  or a                                            ; $78cf: $b7
  jr z, jr_004_78d5                               ; $78d0: $28 $03

  res 0, [hl]                                     ; $78d2: $cb $86
  ret                                             ; $78d4: $c9


jr_004_78d5:
  set 0, [hl]                                     ; $78d5: $cb $c6
  ret                                             ; $78d7: $c9


Call_004_78d8:
  push af                                         ; $78d8: $f5
  ldh [$ff9a], a                                  ; $78d9: $e0 $9a
  ld a, $83                                       ; $78db: $3e $83
  call Call_000_04e0                              ; $78dd: $cd $e0 $04
  pop af                                          ; $78e0: $f1
  push hl                                         ; $78e1: $e5
  ld hl, $cbbb                                    ; $78e2: $21 $bb $cb
  call Call_000_317a                              ; $78e5: $cd $7a $31
  ld a, e                                         ; $78e8: $7b
  ld [hl+], a                                     ; $78e9: $22
  ld a, d                                         ; $78ea: $7a
  ld [hl], a                                      ; $78eb: $77
  pop hl                                          ; $78ec: $e1
  ret                                             ; $78ed: $c9


Call_004_78ee:
Jump_004_78ee:
  ld hl, $cbbb                                    ; $78ee: $21 $bb $cb
  ld a, e                                         ; $78f1: $7b
  call Call_000_317a                              ; $78f2: $cd $7a $31
  xor a                                           ; $78f5: $af
  ld [hl+], a                                     ; $78f6: $22
  ld [hl], a                                      ; $78f7: $77
  ld a, $83                                       ; $78f8: $3e $83
  call Call_000_0a46                              ; $78fa: $cd $46 $0a
  ret nz                                          ; $78fd: $c0

  ld b, h                                         ; $78fe: $44
  ld c, l                                         ; $78ff: $4d
  jp Jump_000_0dbb                                ; $7900: $c3 $bb $0d


Call_004_7903:
Jump_004_7903:
  ld e, $ff                                       ; $7903: $1e $ff
  ld a, $82                                       ; $7905: $3e $82
  call Call_000_0a46                              ; $7907: $cd $46 $0a
  ret z                                           ; $790a: $c8

  xor a                                           ; $790b: $af
  ldh [$ff9a], a                                  ; $790c: $e0 $9a
  ld a, $82                                       ; $790e: $3e $82
  jp Jump_000_04e0                                ; $7910: $c3 $e0 $04


  db $15, $03, $14, $03, $14, $04

Call_004_7919:
  push af                                         ; $7919: $f5
  ld hl, $cbb3                                    ; $791a: $21 $b3 $cb
  ld e, [hl]                                      ; $791d: $5e
  inc hl                                          ; $791e: $23
  ld d, [hl]                                      ; $791f: $56
  pop af                                          ; $7920: $f1
  or a                                            ; $7921: $b7
  jr z, jr_004_7930                               ; $7922: $28 $0c

  ld a, $02                                       ; $7924: $3e $02
  jr jr_004_7930                                  ; $7926: $18 $08

Call_004_7928:
  push af                                         ; $7928: $f5
  ld hl, $cbb1                                    ; $7929: $21 $b1 $cb
  ld e, [hl]                                      ; $792c: $5e
  inc hl                                          ; $792d: $23
  ld d, [hl]                                      ; $792e: $56
  pop af                                          ; $792f: $f1

jr_004_7930:
  ld hl, $7913                                    ; $7930: $21 $13 $79
  call ResolveIndexedPointer16                              ; $7933: $cd $8b $31
  ld a, l                                         ; $7936: $7d
  ldh [$fff5], a                                  ; $7937: $e0 $f5
  ld a, h                                         ; $7939: $7c
  ldh [$fff6], a                                  ; $793a: $e0 $f6
  ld hl, $d000                                    ; $793c: $21 $00 $d0
  add hl, de                                      ; $793f: $19
  ld d, h                                         ; $7940: $54
  ld e, l                                         ; $7941: $5d
  ld a, $01                                       ; $7942: $3e $01
  ldh [$fff7], a                                  ; $7944: $e0 $f7
  ldh [$fff8], a                                  ; $7946: $e0 $f8
  ld bc, $0000                                    ; $7948: $01 $00 $00
  ld hl, $d000                                    ; $794b: $21 $00 $d0
  jp Jump_000_1380                                ; $794e: $c3 $80 $13


  db $01, $26, $7f, $01, $00, $00, $99, $26, $00, $01, $00, $01, $12, $01, $64, $79
  db $30, $02, $41, $04, $d0, $10, $01, $6d, $79, $40, $02, $41, $24, $d0, $44, $d0
  db $64, $d0, $10, $01, $7a, $79, $a8, $00, $41, $22, $d1, $42, $d1, $10, $01, $85
  db $79, $3b, $01, $41, $08, $d2, $10, $01, $8e, $79, $a8, $00, $41, $a2, $d0, $c2
  db $d0, $e2, $d0, $10, $01, $9b, $79, $e0, $00, $41, $25, $d1, $21, $51, $79, $c3
  db $52, $29, $5e, $c0, $04, $a0, $20, $00, $be, $64, $3e, $3a, $cd, $4b, $39, $af
  db $ea, $ac, $cb, $3e, $05, $ea, $ad, $cb, $3e, $0c, $ea, $ae, $cb, $cd, $98, $71
  db $cd, $e8, $38, $7d, $ea, $5e, $cc, $7c, $ea, $5f, $cc, $21, $0a, $cc

  ld a, [hl+]                                     ; $79cf: $2a
  ld h, [hl]                                      ; $79d0: $66
  ld l, a                                         ; $79d1: $6f
  ld a, [hl]                                      ; $79d2: $7e
  ld [$c07c], a                                   ; $79d3: $ea $7c $c0
  ld hl, $79a3                                    ; $79d6: $21 $a3 $79
  call Call_000_1a5c                              ; $79d9: $cd $5c $1a
  ld hl, $cc0a                                    ; $79dc: $21 $0a $cc
  ld a, [hl+]                                     ; $79df: $2a
  ld h, [hl]                                      ; $79e0: $66
  ld l, a                                         ; $79e1: $6f
  ld a, [hl]                                      ; $79e2: $7e
  ld hl, $6251                                    ; $79e3: $21 $51 $62
  call Call_000_33f3                              ; $79e6: $cd $f3 $33

  db $00, $b1, $10

  ld a, $1e                                       ; $79ec: $3e $1e
  ld [$c07f], a                                   ; $79ee: $ea $7f $c0
  ld hl, $c081                                    ; $79f1: $21 $81 $c0
  ld a, [hl+]                                     ; $79f4: $2a
  ld h, [hl]                                      ; $79f5: $66
  ld l, a                                         ; $79f6: $6f
  ld de, $0020                                    ; $79f7: $11 $20 $00
  add hl, de                                      ; $79fa: $19
  ld a, l                                         ; $79fb: $7d
  ld [$c081], a                                   ; $79fc: $ea $81 $c0
  ld a, h                                         ; $79ff: $7c
  ld [$c082], a                                   ; $7a00: $ea $82 $c0
  ld hl, $7c01                                    ; $7a03: $21 $01 $7c
  call Call_000_33f3                              ; $7a06: $cd $f3 $33

  db $03, $88, $7e

  ld hl, $0120                                    ; $7a0c: $21 $20 $01
  call Call_000_3916                              ; $7a0f: $cd $16 $39
  ld hl, $cc0a                                    ; $7a12: $21 $0a $cc
  ld a, [hl+]                                     ; $7a15: $2a
  ld h, [hl]                                      ; $7a16: $66
  ld l, a                                         ; $7a17: $6f
  ld a, [hl]                                      ; $7a18: $7e
  ld bc, $6029                                    ; $7a19: $01 $29 $60
  ld hl, $0080                                    ; $7a1c: $21 $80 $00
  call Call_000_33f3                              ; $7a1f: $cd $f3 $33

  db $00, $4f, $10

  ld bc, $624b                                    ; $7a25: $01 $4b $62
  ld de, $d000                                    ; $7a28: $11 $00 $d0
  ld hl, $0000                                    ; $7a2b: $21 $00 $00
  push af                                         ; $7a2e: $f5
  xor a                                           ; $7a2f: $af
  call Call_000_33f3                              ; $7a30: $cd $f3 $33

  db $00, $5f, $10

  pop af                                          ; $7a36: $f1
  ld d, $04                                       ; $7a37: $16 $04
  ld e, $01                                       ; $7a39: $1e $01
  ld hl, $6251                                    ; $7a3b: $21 $51 $62
  call Call_000_33f3                              ; $7a3e: $cd $f3 $33

  db $00, $b8, $27

  ld hl, $795d                                    ; $7a44: $21 $5d $79
  call Call_000_3013                              ; $7a47: $cd $13 $30
  ld a, $7c                                       ; $7a4a: $3e $7c
  ld [$c159], a                                   ; $7a4c: $ea $59 $c1
  ld a, $01                                       ; $7a4f: $3e $01
  ld [$c1a2], a                                   ; $7a51: $ea $a2 $c1
  ld hl, $cc0a                                    ; $7a54: $21 $0a $cc
  ld a, [hl+]                                     ; $7a57: $2a
  ld h, [hl]                                      ; $7a58: $66
  ld l, a                                         ; $7a59: $6f
  inc hl                                          ; $7a5a: $23
  ld a, [hl+]                                     ; $7a5b: $2a
  ld h, [hl]                                      ; $7a5c: $66
  ld l, a                                         ; $7a5d: $6f
  call Call_000_33f3                              ; $7a5e: $cd $f3 $33

  db $01, $28, $66

  xor a                                           ; $7a64: $af
  call Call_000_33f3                              ; $7a65: $cd $f3 $33

  db $00, $68, $27

  ld hl, $ffb9                                    ; $7a6b: $21 $b9 $ff
  ld [hl], $00                                    ; $7a6e: $36 $00
  inc hl                                          ; $7a70: $23
  ld [hl], $00                                    ; $7a71: $36 $00
  ld a, $7c                                       ; $7a73: $3e $7c
  call Call_000_33f3                              ; $7a75: $cd $f3 $33

  db $00, $3c, $12

  ld a, $02                                       ; $7a7b: $3e $02
  ldh [$ff9a], a                                  ; $7a7d: $e0 $9a
  ld a, $7c                                       ; $7a7f: $3e $7c
  call Call_000_04e0                              ; $7a81: $cd $e0 $04
  call Call_004_7b9c                              ; $7a84: $cd $9c $7b
  or a                                            ; $7a87: $b7
  jp z, Jump_004_7bc1                             ; $7a88: $ca $c1 $7b

jr_004_7a8b:
  call Call_004_7f5b                              ; $7a8b: $cd $5b $7f
  ld a, $00                                       ; $7a8e: $3e $00
  call Call_004_7e68                              ; $7a90: $cd $68 $7e
  ld hl, $7987                                    ; $7a93: $21 $87 $79
  call Call_000_3013                              ; $7a96: $cd $13 $30
  ld a, $7c                                       ; $7a99: $3e $7c
  ld [$c159], a                                   ; $7a9b: $ea $59 $c1
  ld a, $01                                       ; $7a9e: $3e $01
  ld [$c1a2], a                                   ; $7aa0: $ea $a2 $c1
  ld hl, $1822                                    ; $7aa3: $21 $22 $18
  call Call_000_33f3                              ; $7aa6: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1825                                    ; $7aac: $21 $25 $18
  call Call_000_33f3                              ; $7aaf: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1828                                    ; $7ab5: $21 $28 $18
  call Call_000_33f3                              ; $7ab8: $cd $f3 $33

  db $01, $28, $66

  xor a                                           ; $7abe: $af
  ld [$cc2a], a                                   ; $7abf: $ea $2a $cc
  ldh [$ffd3], a                                  ; $7ac2: $e0 $d3
  ld a, $04                                       ; $7ac4: $3e $04
  ld [$cc2c], a                                   ; $7ac6: $ea $2c $cc
  xor a                                           ; $7ac9: $af
  ld hl, $4702                                    ; $7aca: $21 $02 $47
  call Call_000_3427                              ; $7acd: $cd $27 $34

  db $06, $fd, $50

  ld a, [$cc0c]                                   ; $7ad3: $fa $0c $cc
  or a                                            ; $7ad6: $b7
  jr nz, jr_004_7ae0                              ; $7ad7: $20 $07

  call Call_004_7b9c                              ; $7ad9: $cd $9c $7b
  or a                                            ; $7adc: $b7
  jp z, Jump_004_7cea                             ; $7add: $ca $ea $7c

jr_004_7ae0:
  rst $18                                         ; $7ae0: $df
  ld c, $7f                                       ; $7ae1: $0e $7f
  ld e, $14                                       ; $7ae3: $1e $14
  ld d, $0a                                       ; $7ae5: $16 $0a
  ld hl, $0080                                    ; $7ae7: $21 $80 $00
  ld b, $03                                       ; $7aea: $06 $03
  call Call_000_14a1                              ; $7aec: $cd $a1 $14
  ld c, $7f                                       ; $7aef: $0e $7f
  ld e, $0a                                       ; $7af1: $1e $0a
  ld d, $01                                       ; $7af3: $16 $01
  ld hl, $0208                                    ; $7af5: $21 $08 $02
  ld b, $03                                       ; $7af8: $06 $03
  call Call_000_14a1                              ; $7afa: $cd $a1 $14
  rst $20                                         ; $7afd: $e7
  call Call_000_3363                              ; $7afe: $cd $63 $33
  jr jr_004_7a8b                                  ; $7b01: $18 $88

  rst $18                                         ; $7b03: $df
  ld a, $01                                       ; $7b04: $3e $01
  ld [$cc0d], a                                   ; $7b06: $ea $0d $cc
  call Call_004_7b5e                              ; $7b09: $cd $5e $7b
  ld c, $7f                                       ; $7b0c: $0e $7f
  ld e, $14                                       ; $7b0e: $1e $14
  ld d, $0a                                       ; $7b10: $16 $0a
  ld hl, $0080                                    ; $7b12: $21 $80 $00
  call Call_000_149f                              ; $7b15: $cd $9f $14
  rst $20                                         ; $7b18: $e7
  call Call_000_3363                              ; $7b19: $cd $63 $33
  rst $18                                         ; $7b1c: $df
  ld hl, $7973                                    ; $7b1d: $21 $73 $79
  call Call_000_3013                              ; $7b20: $cd $13 $30
  ld a, $7c                                       ; $7b23: $3e $7c
  ld [$c159], a                                   ; $7b25: $ea $59 $c1
  ld a, $01                                       ; $7b28: $3e $01
  ld [$c1a2], a                                   ; $7b2a: $ea $a2 $c1
  ld hl, $1816                                    ; $7b2d: $21 $16 $18
  call Call_000_33f3                              ; $7b30: $cd $f3 $33

  db $01, $28, $66

  ld hl, $1819                                    ; $7b36: $21 $19 $18
  call Call_000_33f3                              ; $7b39: $cd $f3 $33

  db $01, $28, $66

  call Call_004_648d                              ; $7b3f: $cd $8d $64
  rst $20                                         ; $7b42: $e7
  call Call_004_7c1d                              ; $7b43: $cd $1d $7c
  call Call_004_7f07                              ; $7b46: $cd $07 $7f
  call Call_004_7d9d                              ; $7b49: $cd $9d $7d
  ld a, $04                                       ; $7b4c: $3e $04
  ld [$cc2c], a                                   ; $7b4e: $ea $2c $cc
  xor a                                           ; $7b51: $af
  ld hl, $46c8                                    ; $7b52: $21 $c8 $46
  call Call_000_33f3                              ; $7b55: $cd $f3 $33

  db $06, $fd, $50

  jp Jump_004_7903                                ; $7b5b: $c3 $03 $79


Call_004_7b5e:
  ld a, [$cc0c]                                   ; $7b5e: $fa $0c $cc
  or a                                            ; $7b61: $b7
  jr z, jr_004_7b77                               ; $7b62: $28 $13

  ld a, $06                                       ; $7b64: $3e $06
  ldh [rSVBK], a                                  ; $7b66: $e0 $70
  ld a, [$cbeb]                                   ; $7b68: $fa $eb $cb
  ld hl, $d970                                    ; $7b6b: $21 $70 $d9
  rst $08                                         ; $7b6e: $cf
  ld [$cc0e], a                                   ; $7b6f: $ea $0e $cc
  ld a, $01                                       ; $7b72: $3e $01
  ldh [rSVBK], a                                  ; $7b74: $e0 $70
  ret                                             ; $7b76: $c9


jr_004_7b77:
  ld a, [$cbeb]                                   ; $7b77: $fa $eb $cb
  ld hl, $677f                                    ; $7b7a: $21 $7f $67
  call ResolveIndexedPointer16                              ; $7b7d: $cd $8b $31
  ld a, h                                         ; $7b80: $7c
  and $f0                                         ; $7b81: $e6 $f0
  jr z, jr_004_7b8b                               ; $7b83: $28 $06

  ld a, $01                                       ; $7b85: $3e $01
  ld [$cc0e], a                                   ; $7b87: $ea $0e $cc
  ret                                             ; $7b8a: $c9


jr_004_7b8b:
  ld a, h                                         ; $7b8b: $7c
  and $fc                                         ; $7b8c: $e6 $fc
  jr z, jr_004_7b96                               ; $7b8e: $28 $06

  ld a, $0a                                       ; $7b90: $3e $0a
  ld [$cc0e], a                                   ; $7b92: $ea $0e $cc
  ret                                             ; $7b95: $c9


jr_004_7b96:
  ld a, $19                                       ; $7b96: $3e $19
  ld [$cc0e], a                                   ; $7b98: $ea $0e $cc
  ret                                             ; $7b9b: $c9


Call_004_7b9c:
  ld hl, $cc0a                                    ; $7b9c: $21 $0a $cc
  ld a, [hl+]                                     ; $7b9f: $2a
  ld h, [hl]                                      ; $7ba0: $66
  ld l, a                                         ; $7ba1: $6f
  ld de, $0005                                    ; $7ba2: $11 $05 $00
  add hl, de                                      ; $7ba5: $19
  ld a, [hl]                                      ; $7ba6: $7e
  cp $ff                                          ; $7ba7: $fe $ff
  jr z, jr_004_7bbf                               ; $7ba9: $28 $14

  ld hl, $cc0a                                    ; $7bab: $21 $0a $cc
  ld a, [hl+]                                     ; $7bae: $2a
  ld h, [hl]                                      ; $7baf: $66
  ld l, a                                         ; $7bb0: $6f
  ld de, $0005                                    ; $7bb1: $11 $05 $00
  add hl, de                                      ; $7bb4: $19
  ld a, [hl]                                      ; $7bb5: $7e
  call Call_004_6bf4                              ; $7bb6: $cd $f4 $6b
  or a                                            ; $7bb9: $b7
  jr z, jr_004_7bbf                               ; $7bba: $28 $03

  ld a, $01                                       ; $7bbc: $3e $01
  ret                                             ; $7bbe: $c9


jr_004_7bbf:
  xor a                                           ; $7bbf: $af
  ret                                             ; $7bc0: $c9


Call_004_7bc1:
Jump_004_7bc1:
  ld a, $02                                       ; $7bc1: $3e $02
  call Call_004_7e68                              ; $7bc3: $cd $68 $7e
  call Call_004_7f3b                              ; $7bc6: $cd $3b $7f
  ld hl, $cc0a                                    ; $7bc9: $21 $0a $cc
  ld a, [hl+]                                     ; $7bcc: $2a
  ld h, [hl]                                      ; $7bcd: $66
  ld l, a                                         ; $7bce: $6f
  ld de, $0006                                    ; $7bcf: $11 $06 $00
  add hl, de                                      ; $7bd2: $19
  call Call_004_6c1f                              ; $7bd3: $cd $1f $6c
  xor a                                           ; $7bd6: $af
  ld [$cc0c], a                                   ; $7bd7: $ea $0c $cc
  call Call_004_7f07                              ; $7bda: $cd $07 $7f
  ld a, $2b                                       ; $7bdd: $3e $2b
  ld [$cbe8], a                                   ; $7bdf: $ea $e8 $cb
  ld a, $2a                                       ; $7be2: $3e $2a
  ld [$cbe9], a                                   ; $7be4: $ea $e9 $cb
  ld a, $14                                       ; $7be7: $3e $14
  jp Jump_000_261e                                ; $7be9: $c3 $1e $26


Jump_004_7bec:
  ld a, $01                                       ; $7bec: $3e $01
  call Call_004_7e68                              ; $7bee: $cd $68 $7e
  call Call_004_7f3b                              ; $7bf1: $cd $3b $7f
  ld hl, $cc0a                                    ; $7bf4: $21 $0a $cc
  ld a, [hl+]                                     ; $7bf7: $2a
  ld h, [hl]                                      ; $7bf8: $66
  ld l, a                                         ; $7bf9: $6f
  ld de, $0005                                    ; $7bfa: $11 $05 $00
  add hl, de                                      ; $7bfd: $19
  ld a, [hl]                                      ; $7bfe: $7e
  ld d, $03                                       ; $7bff: $16 $03
  ld e, $01                                       ; $7c01: $1e $01
  call Call_004_6cbe                              ; $7c03: $cd $be $6c
  ld a, $01                                       ; $7c06: $3e $01
  ld [$cc0c], a                                   ; $7c08: $ea $0c $cc
  call Call_004_7f07                              ; $7c0b: $cd $07 $7f
  ld a, $2b                                       ; $7c0e: $3e $2b
  ld [$cbe8], a                                   ; $7c10: $ea $e8 $cb
  ld a, $2a                                       ; $7c13: $3e $2a
  ld [$cbe9], a                                   ; $7c15: $ea $e9 $cb
  ld a, $14                                       ; $7c18: $3e $14
  jp Jump_000_261e                                ; $7c1a: $c3 $1e $26


Call_004_7c1d:
  rst $18                                         ; $7c1d: $df
  call Call_004_7c8f                              ; $7c1e: $cd $8f $7c
  rst $20                                         ; $7c21: $e7
  call Call_000_3363                              ; $7c22: $cd $63 $33
  rst $18                                         ; $7c25: $df
  ld hl, $7966                                    ; $7c26: $21 $66 $79
  call Call_000_3013                              ; $7c29: $cd $13 $30
  ld a, $80                                       ; $7c2c: $3e $80
  ld [$c159], a                                   ; $7c2e: $ea $59 $c1
  ld a, $02                                       ; $7c31: $3e $02
  ld [$c1a2], a                                   ; $7c33: $ea $a2 $c1
  ld hl, $cc0a                                    ; $7c36: $21 $0a $cc
  ld a, [hl+]                                     ; $7c39: $2a
  ld h, [hl]                                      ; $7c3a: $66
  ld l, a                                         ; $7c3b: $6f
  inc hl                                          ; $7c3c: $23
  inc hl                                          ; $7c3d: $23
  inc hl                                          ; $7c3e: $23
  ld a, [hl+]                                     ; $7c3f: $2a
  ld h, [hl]                                      ; $7c40: $66
  ld l, a                                         ; $7c41: $6f
  push hl                                         ; $7c42: $e5
  ld a, [$cc0c]                                   ; $7c43: $fa $0c $cc
  or a                                            ; $7c46: $b7
  jr nz, jr_004_7c5a                              ; $7c47: $20 $11

  ld a, $05                                       ; $7c49: $3e $05
  call Call_000_3173                              ; $7c4b: $cd $73 $31
  push hl                                         ; $7c4e: $e5
  ld a, [$cbeb]                                   ; $7c4f: $fa $eb $cb
  ld hl, $677f                                    ; $7c52: $21 $7f $67
  call ResolveIndexedPointer16                              ; $7c55: $cd $8b $31
  jr jr_004_7c69                                  ; $7c58: $18 $0f

jr_004_7c5a:
  ld a, $06                                       ; $7c5a: $3e $06
  call Call_000_3173                              ; $7c5c: $cd $73 $31
  push hl                                         ; $7c5f: $e5
  ld a, [$cbeb]                                   ; $7c60: $fa $eb $cb
  ld hl, $68b3                                    ; $7c63: $21 $b3 $68
  call ResolveIndexedPointer16                              ; $7c66: $cd $8b $31

jr_004_7c69:
  call Call_000_33f3                              ; $7c69: $cd $f3 $33

  db $01, $23, $67

  pop hl                                          ; $7c6f: $e1
  call Call_000_33f3                              ; $7c70: $cd $f3 $33

  db $01, $a2, $66

  call Call_000_33f3                              ; $7c76: $cd $f3 $33

  db $01, $bd, $64

  pop hl                                          ; $7c7c: $e1
  ld a, $01                                       ; $7c7d: $3e $01
  ld [$c1a2], a                                   ; $7c7f: $ea $a2 $c1
  ld a, $07                                       ; $7c82: $3e $07
  call Call_000_3173                              ; $7c84: $cd $73 $31
  call Call_000_33f3                              ; $7c87: $cd $f3 $33

  db $01, $28, $66

  rst $20                                         ; $7c8d: $e7
  ret                                             ; $7c8e: $c9


Call_004_7c8f:
  ldh a, [rSVBK]                                  ; $7c8f: $f0 $70
  push af                                         ; $7c91: $f5
  ld a, $03                                       ; $7c92: $3e $03
  ldh [rSVBK], a                                  ; $7c94: $e0 $70
  ld b, $03                                       ; $7c96: $06 $03
  ld de, $0010                                    ; $7c98: $11 $10 $00
  ld hl, $d524                                    ; $7c9b: $21 $24 $d5

jr_004_7c9e:
  ld c, $10                                       ; $7c9e: $0e $10

jr_004_7ca0:
  res 3, [hl]                                     ; $7ca0: $cb $9e
  inc hl                                          ; $7ca2: $23
  dec c                                           ; $7ca3: $0d
  jr nz, jr_004_7ca0                              ; $7ca4: $20 $fa

  add hl, de                                      ; $7ca6: $19
  dec b                                           ; $7ca7: $05
  jr nz, jr_004_7c9e                              ; $7ca8: $20 $f4

  ld c, $7f                                       ; $7caa: $0e $7f
  ld e, $10                                       ; $7cac: $1e $10
  ld d, $03                                       ; $7cae: $16 $03
  ld hl, $0024                                    ; $7cb0: $21 $24 $00
  call Call_000_149f                              ; $7cb3: $cd $9f $14
  pop af                                          ; $7cb6: $f1
  ldh [rSVBK], a                                  ; $7cb7: $e0 $70
  ret                                             ; $7cb9: $c9


  ldh a, [$ffd0]                                  ; $7cba: $f0 $d0
  res 7, a                                        ; $7cbc: $cb $bf
  cp $29                                          ; $7cbe: $fe $29
  jr z, jr_004_7cc5                               ; $7cc0: $28 $03

  cp $2a                                          ; $7cc2: $fe $2a
  ret nz                                          ; $7cc4: $c0

jr_004_7cc5:
  ldh a, [$ffa6]                                  ; $7cc5: $f0 $a6
  bit 0, a                                        ; $7cc7: $cb $47
  jr nz, jr_004_7cd8                              ; $7cc9: $20 $0d

  bit 1, a                                        ; $7ccb: $cb $4f
  jr nz, jr_004_7cea                              ; $7ccd: $20 $1b

  and $c0                                         ; $7ccf: $e6 $c0
  ret z                                           ; $7cd1: $c8

  call Call_000_3427                              ; $7cd2: $cd $27 $34
  ld b, $17                                       ; $7cd5: $06 $17
  ld d, c                                         ; $7cd7: $51

jr_004_7cd8:
  ld a, $00                                       ; $7cd8: $3e $00
  call Call_000_392b                              ; $7cda: $cd $2b $39
  ldh a, [$ffd3]                                  ; $7cdd: $f0 $d3
  or a                                            ; $7cdf: $b7
  jp z, Jump_004_7bc1                             ; $7ce0: $ca $c1 $7b

  cp $02                                          ; $7ce3: $fe $02
  jr z, jr_004_7cea                               ; $7ce5: $28 $03

  jp Jump_004_7bec                                ; $7ce7: $c3 $ec $7b


Jump_004_7cea:
jr_004_7cea:
  ld a, $03                                       ; $7cea: $3e $03
  call Call_000_392b                              ; $7cec: $cd $2b $39
  ld a, $02                                       ; $7cef: $3e $02
  ld [$c0a0], a                                   ; $7cf1: $ea $a0 $c0
  ld hl, $cc5e                                    ; $7cf4: $21 $5e $cc
  ld a, [hl+]                                     ; $7cf7: $2a
  ld h, [hl]                                      ; $7cf8: $66
  ld l, a                                         ; $7cf9: $6f
  call Call_000_38fe                              ; $7cfa: $cd $fe $38
  ld a, $0b                                       ; $7cfd: $3e $0b
  jp Jump_000_261e                                ; $7cff: $c3 $1e $26


  ldh a, [$ffa6]                                  ; $7d02: $f0 $a6
  bit 0, a                                        ; $7d04: $cb $47
  jr nz, jr_004_7d46                              ; $7d06: $20 $3e

  bit 1, a                                        ; $7d08: $cb $4f
  jr nz, jr_004_7d70                              ; $7d0a: $20 $64

  and $f0                                         ; $7d0c: $e6 $f0
  ret z                                           ; $7d0e: $c8

  ldh a, [$ffa6]                                  ; $7d0f: $f0 $a6
  bit 4, a                                        ; $7d11: $cb $67
  jr nz, jr_004_7d1f                              ; $7d13: $20 $0a

  bit 5, a                                        ; $7d15: $cb $6f
  jr nz, jr_004_7d34                              ; $7d17: $20 $1b

  call Call_000_3427                              ; $7d19: $cd $27 $34
  ld b, $17                                       ; $7d1c: $06 $17
  ld d, c                                         ; $7d1e: $51

jr_004_7d1f:
  ld a, [$cc0d]                                   ; $7d1f: $fa $0d $cc
  inc a                                           ; $7d22: $3c
  ld [$cc0d], a                                   ; $7d23: $ea $0d $cc
  ld d, a                                         ; $7d26: $57
  ld a, [$cc0e]                                   ; $7d27: $fa $0e $cc
  cp d                                            ; $7d2a: $ba
  jr nc, jr_004_7d9d                              ; $7d2b: $30 $70

  ld a, $01                                       ; $7d2d: $3e $01
  ld [$cc0d], a                                   ; $7d2f: $ea $0d $cc
  jr jr_004_7d9d                                  ; $7d32: $18 $69

jr_004_7d34:
  ld a, [$cc0d]                                   ; $7d34: $fa $0d $cc
  dec a                                           ; $7d37: $3d
  ld [$cc0d], a                                   ; $7d38: $ea $0d $cc
  or a                                            ; $7d3b: $b7
  jr nz, jr_004_7d9d                              ; $7d3c: $20 $5f

  ld a, [$cc0e]                                   ; $7d3e: $fa $0e $cc
  ld [$cc0d], a                                   ; $7d41: $ea $0d $cc
  jr jr_004_7d9d                                  ; $7d44: $18 $57

jr_004_7d46:
  ldh a, [$ffd3]                                  ; $7d46: $f0 $d3
  or a                                            ; $7d48: $b7
  jr nz, jr_004_7d69                              ; $7d49: $20 $1e

  ld a, [$cc0c]                                   ; $7d4b: $fa $0c $cc
  or a                                            ; $7d4e: $b7
  jr nz, jr_004_7d56                              ; $7d4f: $20 $05

  call Call_004_7df7                              ; $7d51: $cd $f7 $7d
  jr jr_004_7d87                                  ; $7d54: $18 $31

jr_004_7d56:
  ld a, $24                                       ; $7d56: $3e $24
  call Call_000_392b                              ; $7d58: $cd $2b $39
  call Call_004_7eb9                              ; $7d5b: $cd $b9 $7e
  call Call_004_7b9c                              ; $7d5e: $cd $9c $7b
  or a                                            ; $7d61: $b7
  jr nz, jr_004_7d87                              ; $7d62: $20 $23

  call Call_004_7bc1                              ; $7d64: $cd $c1 $7b
  jr jr_004_7d87                                  ; $7d67: $18 $1e

jr_004_7d69:
  ld a, $04                                       ; $7d69: $3e $04
  call Call_004_7e68                              ; $7d6b: $cd $68 $7e
  jr jr_004_7d87                                  ; $7d6e: $18 $17

jr_004_7d70:
  ld a, $03                                       ; $7d70: $3e $03
  call Call_000_392b                              ; $7d72: $cd $2b $39
  ld a, [$cc0c]                                   ; $7d75: $fa $0c $cc
  or a                                            ; $7d78: $b7
  jr nz, jr_004_7d82                              ; $7d79: $20 $07

  ld a, $02                                       ; $7d7b: $3e $02
  call Call_004_7e68                              ; $7d7d: $cd $68 $7e
  jr jr_004_7d87                                  ; $7d80: $18 $05

jr_004_7d82:
  ld a, $01                                       ; $7d82: $3e $01
  call Call_004_7e68                              ; $7d84: $cd $68 $7e

jr_004_7d87:
  ld c, $7f                                       ; $7d87: $0e $7f
  ld e, $0f                                       ; $7d89: $1e $0f
  ld d, $05                                       ; $7d8b: $16 $05
  ld hl, $00a5                                    ; $7d8d: $21 $a5 $00
  call Call_000_149f                              ; $7d90: $cd $9f $14
  ld a, $14                                       ; $7d93: $3e $14
  call Call_000_261e                              ; $7d95: $cd $1e $26
  ld e, $06                                       ; $7d98: $1e $06
  jp Jump_004_78ee                                ; $7d9a: $c3 $ee $78


Call_004_7d9d:
jr_004_7d9d:
  rst $18                                         ; $7d9d: $df
  ld c, $7f                                       ; $7d9e: $0e $7f
  ld e, $0f                                       ; $7da0: $1e $0f
  ld d, $02                                       ; $7da2: $16 $02
  ld hl, $0125                                    ; $7da4: $21 $25 $01
  call Call_000_149f                              ; $7da7: $cd $9f $14
  ld hl, $7994                                    ; $7daa: $21 $94 $79
  call Call_000_3013                              ; $7dad: $cd $13 $30
  ld a, $50                                       ; $7db0: $3e $50
  ld [$c159], a                                   ; $7db2: $ea $59 $c1
  ld a, $01                                       ; $7db5: $3e $01
  ld [$c1a2], a                                   ; $7db7: $ea $a2 $c1
  ld a, [$cc0d]                                   ; $7dba: $fa $0d $cc
  call Call_000_33f3                              ; $7dbd: $cd $f3 $33

  db $01, $0e, $67

  ld a, [$cc0c]                                   ; $7dc3: $fa $0c $cc
  or a                                            ; $7dc6: $b7
  jr z, jr_004_7dd4                               ; $7dc7: $28 $0b

  ld a, [$cbeb]                                   ; $7dc9: $fa $eb $cb
  ld hl, $68b3                                    ; $7dcc: $21 $b3 $68
  call ResolveIndexedPointer16                              ; $7dcf: $cd $8b $31
  jr jr_004_7ddd                                  ; $7dd2: $18 $09

jr_004_7dd4:
  ld a, [$cbeb]                                   ; $7dd4: $fa $eb $cb
  ld hl, $677f                                    ; $7dd7: $21 $7f $67
  call ResolveIndexedPointer16                              ; $7dda: $cd $8b $31

jr_004_7ddd:
  ld a, [$cc0d]                                   ; $7ddd: $fa $0d $cc
  ld e, a                                         ; $7de0: $5f
  ld d, $00                                       ; $7de1: $16 $00
  call $00d3                                      ; $7de3: $cd $d3 $00
  call Call_000_33f3                              ; $7de6: $cd $f3 $33

  db $01, $29, $67

  ld hl, $1fa5                                    ; $7dec: $21 $a5 $1f
  call Call_000_33f3                              ; $7def: $cd $f3 $33

  db $01, $e8, $65

  rst $20                                         ; $7df5: $e7
  ret                                             ; $7df6: $c9


Call_004_7df7:
  ld a, [$cbeb]                                   ; $7df7: $fa $eb $cb
  ld hl, $677f                                    ; $7dfa: $21 $7f $67
  call ResolveIndexedPointer16                              ; $7dfd: $cd $8b $31
  ld a, [$cc0d]                                   ; $7e00: $fa $0d $cc
  ld e, a                                         ; $7e03: $5f
  ld d, $00                                       ; $7e04: $16 $00
  call $00d3                                      ; $7e06: $cd $d3 $00
  push hl                                         ; $7e09: $e5
  ld hl, $ce38                                    ; $7e0a: $21 $38 $ce
  ld e, [hl]                                      ; $7e0d: $5e
  inc hl                                          ; $7e0e: $23
  ld d, [hl]                                      ; $7e0f: $56
  pop hl                                          ; $7e10: $e1
  rst $10                                         ; $7e11: $d7
  jr c, jr_004_7e61                               ; $7e12: $38 $4d

  call Call_000_01ee                              ; $7e14: $cd $ee $01
  ld hl, $ce38                                    ; $7e17: $21 $38 $ce
  ld [hl], e                                      ; $7e1a: $73
  inc hl                                          ; $7e1b: $23
  ld [hl], d                                      ; $7e1c: $72
  ld a, $24                                       ; $7e1d: $3e $24
  call Call_000_392b                              ; $7e1f: $cd $2b $39
  ld a, [$cbeb]                                   ; $7e22: $fa $eb $cb
  cp $56                                          ; $7e25: $fe $56
  jr z, jr_004_7e40                               ; $7e27: $28 $17

  ld a, [$cc0d]                                   ; $7e29: $fa $0d $cc
  ld b, a                                         ; $7e2c: $47
  ld a, [$cbeb]                                   ; $7e2d: $fa $eb $cb
  call Call_004_6d44                              ; $7e30: $cd $44 $6d

jr_004_7e33:
  ld a, $24                                       ; $7e33: $3e $24
  call Call_000_392b                              ; $7e35: $cd $2b $39
  ld a, $03                                       ; $7e38: $3e $03
  call Call_004_7e68                              ; $7e3a: $cd $68 $7e
  jp Jump_004_7f07                                ; $7e3d: $c3 $07 $7f


jr_004_7e40:
  ld a, [$cc0d]                                   ; $7e40: $fa $0d $cc
  ld b, a                                         ; $7e43: $47

jr_004_7e44:
  push bc                                         ; $7e44: $c5
  ld a, $05                                       ; $7e45: $3e $05
  call Call_000_28e6                              ; $7e47: $cd $e6 $28
  or a                                            ; $7e4a: $b7
  jr z, jr_004_7e50                               ; $7e4b: $28 $03

  xor a                                           ; $7e4d: $af
  jr jr_004_7e52                                  ; $7e4e: $18 $02

jr_004_7e50:
  ld a, $01                                       ; $7e50: $3e $01

jr_004_7e52:
  call Call_000_33f3                              ; $7e52: $cd $f3 $33

  db $06, $34, $66

  call Call_004_46f2                              ; $7e58: $cd $f2 $46
  pop bc                                          ; $7e5b: $c1
  dec b                                           ; $7e5c: $05
  jr nz, jr_004_7e44                              ; $7e5d: $20 $e5

  jr jr_004_7e33                                  ; $7e5f: $18 $d2

jr_004_7e61:
  ld a, $02                                       ; $7e61: $3e $02
  call Call_000_392b                              ; $7e63: $cd $2b $39
  ld a, $08                                       ; $7e66: $3e $08

Call_004_7e68:
  push af                                         ; $7e68: $f5
  rst $18                                         ; $7e69: $df
  call Call_004_7c8f                              ; $7e6a: $cd $8f $7c
  rst $20                                         ; $7e6d: $e7
  call Call_000_3363                              ; $7e6e: $cd $63 $33
  rst $18                                         ; $7e71: $df
  ld hl, $7966                                    ; $7e72: $21 $66 $79
  call Call_000_3013                              ; $7e75: $cd $13 $30
  ld a, $78                                       ; $7e78: $3e $78
  ld [$c159], a                                   ; $7e7a: $ea $59 $c1
  ld a, $03                                       ; $7e7d: $3e $03
  ld [$c1a2], a                                   ; $7e7f: $ea $a2 $c1
  ld hl, $cc0a                                    ; $7e82: $21 $0a $cc
  ld a, [hl+]                                     ; $7e85: $2a
  ld h, [hl]                                      ; $7e86: $66
  ld l, a                                         ; $7e87: $6f
  inc hl                                          ; $7e88: $23
  inc hl                                          ; $7e89: $23
  inc hl                                          ; $7e8a: $23
  ld a, [hl+]                                     ; $7e8b: $2a
  ld h, [hl]                                      ; $7e8c: $66
  ld l, a                                         ; $7e8d: $6f
  pop af                                          ; $7e8e: $f1
  cp $09                                          ; $7e8f: $fe $09
  jr z, jr_004_7ea6                               ; $7e91: $28 $13

  ld e, a                                         ; $7e93: $5f
  add e                                           ; $7e94: $83
  add e                                           ; $7e95: $83
  ld e, a                                         ; $7e96: $5f
  ld d, $00                                       ; $7e97: $16 $00
  add hl, de                                      ; $7e99: $19

jr_004_7e9a:
  ld de, $0000                                    ; $7e9a: $11 $00 $00
  call Call_000_33f3                              ; $7e9d: $cd $f3 $33

  db $01, $0b, $66

  jp RST_20                                       ; $7ea3: $c3 $20 $00


jr_004_7ea6:
  ld a, $64                                       ; $7ea6: $3e $64
  call Call_000_28e6                              ; $7ea8: $cd $e6 $28
  cp $32                                          ; $7eab: $fe $32
  jr c, jr_004_7eb4                               ; $7ead: $38 $05

  ld hl, $18cd                                    ; $7eaf: $21 $cd $18
  jr jr_004_7e9a                                  ; $7eb2: $18 $e6

jr_004_7eb4:
  ld hl, $18eb                                    ; $7eb4: $21 $eb $18
  jr jr_004_7e9a                                  ; $7eb7: $18 $e1

Call_004_7eb9:
  ld hl, $ce38                                    ; $7eb9: $21 $38 $ce
  ld a, [hl+]                                     ; $7ebc: $2a
  ld h, [hl]                                      ; $7ebd: $66
  ld l, a                                         ; $7ebe: $6f
  push hl                                         ; $7ebf: $e5
  ld a, [$cbeb]                                   ; $7ec0: $fa $eb $cb
  ld hl, $68b3                                    ; $7ec3: $21 $b3 $68
  call ResolveIndexedPointer16                              ; $7ec6: $cd $8b $31
  ld a, [$cc0d]                                   ; $7ec9: $fa $0d $cc
  ld e, a                                         ; $7ecc: $5f
  ld d, $00                                       ; $7ecd: $16 $00
  call $00d3                                      ; $7ecf: $cd $d3 $00
  pop de                                          ; $7ed2: $d1
  add hl, de                                      ; $7ed3: $19
  jr nc, jr_004_7ed9                              ; $7ed4: $30 $03

  ld hl, $ffff                                    ; $7ed6: $21 $ff $ff

jr_004_7ed9:
  ld a, l                                         ; $7ed9: $7d
  ld [$ce38], a                                   ; $7eda: $ea $38 $ce
  ld a, h                                         ; $7edd: $7c
  ld [$ce39], a                                   ; $7ede: $ea $39 $ce
  ld a, [$cc0d]                                   ; $7ee1: $fa $0d $cc
  ld b, a                                         ; $7ee4: $47
  ld a, [$cbeb]                                   ; $7ee5: $fa $eb $cb
  call Call_004_6d6f                              ; $7ee8: $cd $6f $6d
  ld hl, $cc0a                                    ; $7eeb: $21 $0a $cc
  ld a, [hl+]                                     ; $7eee: $2a
  ld h, [hl]                                      ; $7eef: $66
  ld l, a                                         ; $7ef0: $6f
  ld de, $0005                                    ; $7ef1: $11 $05 $00
  add hl, de                                      ; $7ef4: $19
  ld a, [hl]                                      ; $7ef5: $7e
  ld d, $03                                       ; $7ef6: $16 $03
  ld e, $01                                       ; $7ef8: $1e $01
  call Call_004_6cbe                              ; $7efa: $cd $be $6c
  ld a, $24                                       ; $7efd: $3e $24
  call Call_000_392b                              ; $7eff: $cd $2b $39
  ld a, $09                                       ; $7f02: $3e $09
  call Call_004_7e68                              ; $7f04: $cd $68 $7e

Call_004_7f07:
Jump_004_7f07:
  rst $18                                         ; $7f07: $df
  ld c, $7f                                       ; $7f08: $0e $7f
  ld e, $0a                                       ; $7f0a: $1e $0a
  ld d, $01                                       ; $7f0c: $16 $01
  ld hl, $0208                                    ; $7f0e: $21 $08 $02
  call Call_000_149f                              ; $7f11: $cd $9f $14
  ld hl, $797e                                    ; $7f14: $21 $7e $79
  call Call_000_3013                              ; $7f17: $cd $13 $30
  ld a, $50                                       ; $7f1a: $3e $50
  ld [$c159], a                                   ; $7f1c: $ea $59 $c1
  ld a, $01                                       ; $7f1f: $3e $01
  ld [$c1a2], a                                   ; $7f21: $ea $a2 $c1
  ld hl, $ce38                                    ; $7f24: $21 $38 $ce
  ld a, [hl+]                                     ; $7f27: $2a
  ld h, [hl]                                      ; $7f28: $66
  ld l, a                                         ; $7f29: $6f
  call Call_000_33f3                              ; $7f2a: $cd $f3 $33

  db $01, $23, $67

  ld hl, $181c                                    ; $7f30: $21 $1c $18
  call Call_000_33f3                              ; $7f33: $cd $f3 $33

  db $01, $e8, $65

  rst $18                                         ; $7f39: $df
  ret                                             ; $7f3a: $c9


Call_004_7f3b:
  ld e, $ff                                       ; $7f3b: $1e $ff
  ld a, $84                                       ; $7f3d: $3e $84
  call Call_000_0a46                              ; $7f3f: $cd $46 $0a
  ret z                                           ; $7f42: $c8

  ld hl, $ff9b                                    ; $7f43: $21 $9b $ff
  ld [hl], $34                                    ; $7f46: $36 $34
  inc hl                                          ; $7f48: $23
  ld [hl], $00                                    ; $7f49: $36 $00
  ld hl, $ff9d                                    ; $7f4b: $21 $9d $ff
  ld [hl], $88                                    ; $7f4e: $36 $88
  inc hl                                          ; $7f50: $23
  ld [hl], $00                                    ; $7f51: $36 $00
  xor a                                           ; $7f53: $af
  ldh [$ff9a], a                                  ; $7f54: $e0 $9a
  ld a, $84                                       ; $7f56: $3e $84
  jp Jump_000_04e0                                ; $7f58: $c3 $e0 $04


Call_004_7f5b:
  ld a, $84                                       ; $7f5b: $3e $84
  ld e, $ff                                       ; $7f5d: $1e $ff
  call Call_000_0a46                              ; $7f5f: $cd $46 $0a
  ret nz                                          ; $7f62: $c0

  ld b, h                                         ; $7f63: $44
  ld c, l                                         ; $7f64: $4d
  jp Jump_000_0dbb                                ; $7f65: $c3 $bb $0d


  db $78, $7f, $83, $7f

  adc l                                           ; $7f6c: $8d
  ld a, a                                         ; $7f6d: $7f
  sbc b                                           ; $7f6e: $98
  ld a, a                                         ; $7f6f: $7f

  db $a0, $7f

  xor d                                           ; $7f72: $aa
  ld a, a                                         ; $7f73: $7f

  db $bd, $7f

  rst $08                                         ; $7f76: $cf
  ld a, a                                         ; $7f77: $7f

  db $12, $a3, $18, $a6, $18, $0d, $04, $01, $0e, $0f, $36, $17, $67, $18, $6a, $18
  db $0a, $03, $56, $95, $96

  ld [hl-], a                                     ; $7f8d: $32
  ld c, c                                         ; $7f8e: $49
  jr @+$4e                                        ; $7f8f: $18 $4c

  jr jr_004_7f9c                                  ; $7f91: $18 $09

  inc b                                           ; $7f93: $04
  adc [hl]                                        ; $7f94: $8e
  sub c                                           ; $7f95: $91
  sub b                                           ; $7f96: $90
  sub h                                           ; $7f97: $94
  dec l                                           ; $7f98: $2d
  dec hl                                          ; $7f99: $2b
  jr @+$30                                        ; $7f9a: $18 $2e

jr_004_7f9c:
  jr jr_004_7fac                                  ; $7f9c: $18 $0e

  db $01                                          ; $7f9e: $01
  adc h                                           ; $7f9f: $8c

  db $0e, $c1, $18, $c4, $18, $0a, $03, $56, $95, $96

  rrca                                            ; $7faa: $0f
  rst $18                                         ; $7fab: $df

jr_004_7fac:
  jr @-$1c                                        ; $7fac: $18 $e2

  jr jr_004_7fb0                                  ; $7fae: $18 $00

jr_004_7fb0:
  inc c                                           ; $7fb0: $0c
  adc [hl]                                        ; $7fb1: $8e
  sub c                                           ; $7fb2: $91
  sub e                                           ; $7fb3: $93
  ld [bc], a                                      ; $7fb4: $02

jr_004_7fb5:
  inc bc                                          ; $7fb5: $03
  inc b                                           ; $7fb6: $04
  ld de, $1312                                    ; $7fb7: $11 $12 $13
  ld a, [hl+]                                     ; $7fba: $2a
  dec hl                                          ; $7fbb: $2b
  inc l                                           ; $7fbc: $2c

  db $0f, $df, $18, $e2, $18, $00, $0b, $8e, $91, $94, $05, $06, $13, $14, $15, $47
  db $48, $49

  rrca                                            ; $7fcf: $0f
  rst $18                                         ; $7fd0: $df
  jr jr_004_7fb5                                  ; $7fd1: $18 $e2

  jr jr_004_7fd5                                  ; $7fd3: $18 $00

jr_004_7fd5:
  add hl, bc                                      ; $7fd5: $09
  adc [hl]                                        ; $7fd6: $8e
  adc a                                           ; $7fd7: $8f
  sub c                                           ; $7fd8: $91
  sub e                                           ; $7fd9: $93
  add hl, bc                                      ; $7fda: $09
  rla                                             ; $7fdb: $17
  ld sp, $4b3d                                    ; $7fdc: $31 $3d $4b
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
