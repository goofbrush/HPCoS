; Disassembly of "baserom.gbc"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis





Jump_000_0150:
  and a                                           ; $0150: $a7
  cp $11                                          ; $0151: $fe $11
  ld a, $00                                       ; $0153: $3e $00
  jr nz, jr_000_0161                              ; $0155: $20 $0a
  
  ld a, b                                         ; $0157: $78
  rrca                                            ; $0158: $0f
  jr nc, jr_000_015f                              ; $0159: $30 $04
  
  ld a, $02                                       ; $015b: $3e $02
  jr jr_000_0161                                  ; $015d: $18 $02

jr_000_015f:
  ld a, $01                                       ; $015f: $3e $01

jr_000_0161:
  ldh [$fff2], a                                  ; $0161: $e0 $f2
  ld sp, $cfff                                    ; $0163: $31 $ff $cf
  ldh a, [$fff2]                                  ; $0166: $f0 $f2
  or a                                            ; $0168: $b7
  call z, Call_000_291e                           ; $0169: $cc $1e $29

Jump_000_016c:
  ld sp, $cfff                                    ; $016c: $31 $ff $cf
  di                                              ; $016f: $f3
  ldh a, [$fff2]                                  ; $0170: $f0 $f2
  push af                                         ; $0172: $f5
  ld a, $03                                       ; $0173: $3e $03
  ld [$2000], a                                   ; $0175: $ea $00 $20
  call $7ecb                                      ; $0178: $cd $cb $7e
  pop af                                          ; $017b: $f1
  ldh [$fff2], a                                  ; $017c: $e0 $f2
  cp $02                                          ; $017e: $fe $02
  jr nz, jr_000_0187                              ; $0180: $20 $05

  ld a, $01                                       ; $0182: $3e $01
  ld [$cafa], a                                   ; $0184: $ea $fa $ca

jr_000_0187:
  ld a, $07                                       ; $0187: $3e $07
  ldh [rWX], a                                    ; $0189: $e0 $4b
  ld a, $91                                       ; $018b: $3e $91
  ldh [rWY], a                                    ; $018d: $e0 $4a
  call Call_000_38ab                              ; $018f: $cd $ab $38
  ld a, $01                                       ; $0192: $3e $01
  ld [$2000], a                                   ; $0194: $ea $00 $20
  call $474a                                      ; $0197: $cd $4a $47
  call Call_000_3a55                              ; $019a: $cd $55 $3a
  ld hl, $ffff                                    ; $019d: $21 $ff $ff
  set 0, [hl]                                     ; $01a0: $cb $c6
  ld a, $04                                       ; $01a2: $3e $04
  ld [$2000], a                                   ; $01a4: $ea $00 $20
  call $575a                                      ; $01a7: $cd $5a $57
  ld a, $01                                       ; $01aa: $3e $01
  ld [$2000], a                                   ; $01ac: $ea $00 $20
  call $5fdb                                      ; $01af: $cd $db $5f
  call Call_000_2578                              ; $01b2: $cd $78 $25
  ei                                              ; $01b5: $fb

jr_000_01b6:
  call Call_000_258f                              ; $01b6: $cd $8f $25
  call Call_000_3838                              ; $01b9: $cd $38 $38
  jr jr_000_01b6                                  ; $01bc: $18 $f8

  db $af, $21, $c3, $ff, $36, $3c, $23, $22, $22, $22, $22, $c9

Call_000_01ca:
Jump_000_01ca:
  ld a, e                                         ; $01ca: $7b
  ld [$cd54], a                                   ; $01cb: $ea $54 $cd
  ld a, d                                         ; $01ce: $7a
  ld [$cd55], a                                   ; $01cf: $ea $55 $cd
  ret                                             ; $01d2: $c9


  db $7b, $ea, $56, $cd

  ld a, d                                         ; $01d7: $7a
  ld [$cd57], a                                   ; $01d8: $ea $57 $cd

  db $c9

Call_000_01dc:
  push hl                                         ; $01dc: $e5
  ld hl, $cd54                                    ; $01dd: $21 $54 $cd
  call Call_000_3108                              ; $01e0: $cd $08 $31
  pop hl                                          ; $01e3: $e1
  ret                                             ; $01e4: $c9


Call_000_01e5:
  push hl                                         ; $01e5: $e5

  db $21, $56, $cd

  call Call_000_3108                              ; $01e9: $cd $08 $31
  pop hl                                          ; $01ec: $e1

  db $c9

Call_000_01ee:
  ld a, e                                         ; $01ee: $7b
  sub l                                           ; $01ef: $95
  ld e, a                                         ; $01f0: $5f
  ld a, d                                         ; $01f1: $7a
  sbc h                                           ; $01f2: $9c
  ld d, a                                         ; $01f3: $57
  ret                                             ; $01f4: $c9


Call_000_01f5:
  add hl, hl                                      ; $01f5: $29

Call_000_01f6:
  add hl, hl                                      ; $01f6: $29
  add hl, hl                                      ; $01f7: $29
  add hl, hl                                      ; $01f8: $29
  add hl, hl                                      ; $01f9: $29
  ret                                             ; $01fa: $c9


  db $ff, $ff, $ff, $ff, $ff

Call_000_0200:
  call Call_000_0215                              ; $0200: $cd $15 $02
  call Call_000_0215                              ; $0203: $cd $15 $02

  db $cd

  dec d                                           ; $0207: $15

  db $02

Call_000_0209:
  call Call_000_0215                              ; $0209: $cd $15 $02

Call_000_020c:
  call Call_000_0215                              ; $020c: $cd $15 $02

Call_000_020f:
  call Call_000_0215                              ; $020f: $cd $15 $02

Call_000_0212:
  call Call_000_0215                              ; $0212: $cd $15 $02

Call_000_0215:
  ld a, [hl+]                                     ; $0215: $2a
  ld [de], a                                      ; $0216: $12
  inc de                                          ; $0217: $13
  ld a, [hl+]                                     ; $0218: $2a
  ld [de], a                                      ; $0219: $12
  inc de                                          ; $021a: $13
  ld a, [hl+]                                     ; $021b: $2a
  ld [de], a                                      ; $021c: $12
  inc de                                          ; $021d: $13
  ld a, [hl+]                                     ; $021e: $2a
  ld [de], a                                      ; $021f: $12
  inc de                                          ; $0220: $13
  ld a, [hl+]                                     ; $0221: $2a
  ld [de], a                                      ; $0222: $12
  inc de                                          ; $0223: $13
  ld a, [hl+]                                     ; $0224: $2a
  ld [de], a                                      ; $0225: $12
  inc de                                          ; $0226: $13
  ld a, [hl+]                                     ; $0227: $2a
  ld [de], a                                      ; $0228: $12
  inc de                                          ; $0229: $13
  ld a, [hl+]                                     ; $022a: $2a
  ld [de], a                                      ; $022b: $12
  inc de                                          ; $022c: $13

Call_000_022d:
  ld a, [hl+]                                     ; $022d: $2a
  ld [de], a                                      ; $022e: $12
  inc de                                          ; $022f: $13
  ld a, [hl+]                                     ; $0230: $2a
  ld [de], a                                      ; $0231: $12
  inc de                                          ; $0232: $13
  ld a, [hl+]                                     ; $0233: $2a
  ld [de], a                                      ; $0234: $12
  inc de                                          ; $0235: $13
  ld a, [hl+]                                     ; $0236: $2a
  ld [de], a                                      ; $0237: $12
  inc de                                          ; $0238: $13
  ld a, [hl+]                                     ; $0239: $2a
  ld [de], a                                      ; $023a: $12
  inc de                                          ; $023b: $13
  ld a, [hl+]                                     ; $023c: $2a
  ld [de], a                                      ; $023d: $12
  inc de                                          ; $023e: $13
  ld a, [hl+]                                     ; $023f: $2a
  ld [de], a                                      ; $0240: $12
  inc de                                          ; $0241: $13
  ld a, [hl+]                                     ; $0242: $2a
  ld [de], a                                      ; $0243: $12
  inc de                                          ; $0244: $13

Call_000_0245:
Jump_000_0245:
  ld a, [hl+]                                     ; $0245: $2a
  ld [de], a                                      ; $0246: $12
  inc de                                          ; $0247: $13
  ld a, [hl+]                                     ; $0248: $2a
  ld [de], a                                      ; $0249: $12
  inc de                                          ; $024a: $13

Call_000_024b:
  ld a, [hl+]                                     ; $024b: $2a
  ld [de], a                                      ; $024c: $12
  inc de                                          ; $024d: $13
  ld a, [hl+]                                     ; $024e: $2a
  ld [de], a                                      ; $024f: $12
  inc de                                          ; $0250: $13

Call_000_0251:
  ld a, [hl+]                                     ; $0251: $2a
  ld [de], a                                      ; $0252: $12
  inc de                                          ; $0253: $13
  ld a, [hl+]                                     ; $0254: $2a
  ld [de], a                                      ; $0255: $12
  inc de                                          ; $0256: $13

Call_000_0257:
  ld a, [hl+]                                     ; $0257: $2a
  ld [de], a                                      ; $0258: $12
  inc de                                          ; $0259: $13

Call_000_025a:
  ld a, [hl+]                                     ; $025a: $2a
  ld [de], a                                      ; $025b: $12
  inc de                                          ; $025c: $13

Call_000_025d:
  ld a, [hl+]                                     ; $025d: $2a
  ld [de], a                                      ; $025e: $12
  inc de                                          ; $025f: $13
  ld a, [hl+]                                     ; $0260: $2a
  ld [de], a                                      ; $0261: $12
  inc de                                          ; $0262: $13

Call_000_0263:
Jump_000_0263:
  ld a, [hl+]                                     ; $0263: $2a
  ld [de], a                                      ; $0264: $12
  inc de                                          ; $0265: $13

Call_000_0266:
Jump_000_0266:
  ld a, [hl+]                                     ; $0266: $2a
  ld [de], a                                      ; $0267: $12
  inc de                                          ; $0268: $13

Call_000_0269:
Jump_000_0269:
  ld a, [hl+]                                     ; $0269: $2a
  ld [de], a                                      ; $026a: $12
  inc de                                          ; $026b: $13

Call_000_026c:
  ld a, [hl+]                                     ; $026c: $2a
  ld [de], a                                      ; $026d: $12
  inc de                                          ; $026e: $13

Call_000_026f:
  ld a, [hl+]                                     ; $026f: $2a
  ld [de], a                                      ; $0270: $12
  inc de                                          ; $0271: $13
  ld a, [hl+]                                     ; $0272: $2a
  ld [de], a                                      ; $0273: $12
  inc de                                          ; $0274: $13
  ret                                             ; $0275: $c9


  db $7f, $07, $7b, $06, $7e, $05, $cc

  dec bc                                          ; $027d: $0b

  db $cd, $0b, $ce

  dec bc                                          ; $0281: $0b

  db $cf, $0b, $d0

  dec bc                                          ; $0285: $0b

  db $d1, $0b, $88, $08, $89, $08, $8a, $08, $8b, $08, $8d, $08, $8e, $08, $8f, $08
  db $90, $08, $dd, $09, $de

  add hl, bc                                      ; $029b: $09

  db $a0

  db $1e                                          ; $029d: $1e

  db $9f

  db $1e                                          ; $029f: $1e

  db $9b

  db $1e                                          ; $02a1: $1e

  db $03, $08, $ff

  rst $38                                         ; $02a5: $ff

Call_000_02a6:
Jump_000_02a6:
  ld a, $05                                       ; $02a6: $3e $05
  ld [$2000], a                                   ; $02a8: $ea $00 $20
  call $5dad                                      ; $02ab: $cd $ad $5d

Call_000_02ae:
  ld a, $18                                       ; $02ae: $3e $18
  ld bc, $ca5b                                    ; $02b0: $01 $5b $ca

Jump_000_02b3:
  ld [$caaf], a                                   ; $02b3: $ea $af $ca
  ld a, [bc]                                      ; $02b6: $0a
  or a                                            ; $02b7: $b7
  jr z, jr_000_02f9                               ; $02b8: $28 $3f

  ld [$cab0], a                                   ; $02ba: $ea $b0 $ca
  ld hl, $cab1                                    ; $02bd: $21 $b1 $ca
  ld [hl], c                                      ; $02c0: $71
  inc hl                                          ; $02c1: $23
  ld [hl], b                                      ; $02c2: $70
  ld a, $01                                       ; $02c3: $3e $01
  ld [$2000], a                                   ; $02c5: $ea $00 $20
  ld a, [$cab0]                                   ; $02c8: $fa $b0 $ca
  cp $e1                                          ; $02cb: $fe $e1
  jr nc, jr_000_02f9                              ; $02cd: $30 $2a

  ld a, [$cd5b]                                   ; $02cf: $fa $5b $cd
  cp $ff                                          ; $02d2: $fe $ff
  jr z, jr_000_02e5                               ; $02d4: $28 $0f

  ld a, [$cab0]                                   ; $02d6: $fa $b0 $ca
  cp $11                                          ; $02d9: $fe $11
  jr z, jr_000_02f9                               ; $02db: $28 $1c

  cp $14                                          ; $02dd: $fe $14
  jr z, jr_000_02f9                               ; $02df: $28 $18

  cp $20                                          ; $02e1: $fe $20
  jr z, jr_000_02f9                               ; $02e3: $28 $14

jr_000_02e5:
  ld a, [$cab0]                                   ; $02e5: $fa $b0 $ca
  push bc                                         ; $02e8: $c5
  ld de, $02f0                                    ; $02e9: $11 $f0 $02
  push de                                         ; $02ec: $d5
  jp $41ba                                        ; $02ed: $c3 $ba $41


  pop bc                                          ; $02f0: $c1
  ld a, $01                                       ; $02f1: $3e $01
  ld [$2000], a                                   ; $02f3: $ea $00 $20
  call $566c                                      ; $02f6: $cd $6c $56

jr_000_02f9:
  ld hl, $ffac                                    ; $02f9: $21 $ac $ff
  add hl, bc                                      ; $02fc: $09
  ld c, l                                         ; $02fd: $4d
  ld b, h                                         ; $02fe: $44
  ld a, [$caaf]                                   ; $02ff: $fa $af $ca
  dec a                                           ; $0302: $3d
  jp nz, Jump_000_02b3                            ; $0303: $c2 $b3 $02

  ld a, $03                                       ; $0306: $3e $03
  ld [$2000], a                                   ; $0308: $ea $00 $20
  call Call_000_2709                              ; $030b: $cd $09 $27
  ret                                             ; $030e: $c9


Call_000_030f:
Jump_000_030f:
  ld a, $01                                       ; $030f: $3e $01
  ld [$2000], a                                   ; $0311: $ea $00 $20
  call $5577                                      ; $0314: $cd $77 $55
  call Call_000_0620                              ; $0317: $cd $20 $06
  ld a, $28                                       ; $031a: $3e $28
  ld [$c09e], a                                   ; $031c: $ea $9e $c0
  ld a, [$cd2a]                                   ; $031f: $fa $2a $cd
  ldh [$ffbb], a                                  ; $0322: $e0 $bb
  ld a, $04                                       ; $0324: $3e $04
  call Call_000_08cd                              ; $0326: $cd $cd $08
  call Call_000_037a                              ; $0329: $cd $7a $03
  ld a, l                                         ; $032c: $7d
  ld [$c09c], a                                   ; $032d: $ea $9c $c0
  ld a, h                                         ; $0330: $7c
  ld [$c09d], a                                   ; $0331: $ea $9d $c0
  ld a, $01                                       ; $0334: $3e $01
  call Call_000_0397                              ; $0336: $cd $97 $03
  ld a, [$c2ae]                                   ; $0339: $fa $ae $c2
  or a                                            ; $033c: $b7
  jr nz, jr_000_034c                              ; $033d: $20 $0d

  ld bc, $c2cf                                    ; $033f: $01 $cf $c2
  call Call_000_03df                              ; $0342: $cd $df $03
  ld a, $02                                       ; $0345: $3e $02
  call Call_000_0397                              ; $0347: $cd $97 $03
  jr jr_000_0351                                  ; $034a: $18 $05

jr_000_034c:
  ld a, $02                                       ; $034c: $3e $02
  call Call_000_08cd                              ; $034e: $cd $cd $08

jr_000_0351:
  ld a, $03                                       ; $0351: $3e $03
  call Call_000_0397                              ; $0353: $cd $97 $03
  ld a, $01                                       ; $0356: $3e $01
  ld [$2000], a                                   ; $0358: $ea $00 $20
  ldh a, [$ffcd]                                  ; $035b: $f0 $cd
  cp $19                                          ; $035d: $fe $19
  call nz, $471f                                  ; $035f: $c4 $1f $47
  call Call_000_0390                              ; $0362: $cd $90 $03
  ld a, [$c0aa]                                   ; $0365: $fa $aa $c0
  or $11                                          ; $0368: $f6 $11
  ld [$c0aa], a                                   ; $036a: $ea $aa $c0
  ldh a, [rLCDC]                                  ; $036d: $f0 $40
  bit 7, a                                        ; $036f: $cb $7f
  ret z                                           ; $0371: $c8

  ld a, $01                                       ; $0372: $3e $01
  ld [$2000], a                                   ; $0374: $ea $00 $20
  jp $5583                                        ; $0377: $c3 $83 $55


Call_000_037a:
  ldh a, [$fffb]                                  ; $037a: $f0 $fb
  xor $01                                         ; $037c: $ee $01
  ld h, a                                         ; $037e: $67
  ld l, $00                                       ; $037f: $2e $00
  ret                                             ; $0381: $c9


Call_000_0382:
  ldh a, [$fffb]                                  ; $0382: $f0 $fb
  ld h, a                                         ; $0384: $67
  ld l, $00                                       ; $0385: $2e $00
  ret                                             ; $0387: $c9


Call_000_0388:
  ldh a, [$fffb]                                  ; $0388: $f0 $fb
  xor $01                                         ; $038a: $ee $01
  ld h, a                                         ; $038c: $67
  ld l, $a0                                       ; $038d: $2e $a0
  ret                                             ; $038f: $c9


Call_000_0390:
  ldh a, [$fffb]                                  ; $0390: $f0 $fb
  xor $01                                         ; $0392: $ee $01
  ldh [$fffb], a                                  ; $0394: $e0 $fb
  ret                                             ; $0396: $c9


Call_000_0397:
  ld [$cd2b], a                                   ; $0397: $ea $2b $cd
  ld bc, $c323                                    ; $039a: $01 $23 $c3
  ld a, $17                                       ; $039d: $3e $17

jr_000_039f:
  ld [$caaf], a                                   ; $039f: $ea $af $ca
  ld a, [bc]                                      ; $03a2: $0a
  or a                                            ; $03a3: $b7
  jp z, Jump_000_03b0                             ; $03a4: $ca $b0 $03

  ld [$cab0], a                                   ; $03a7: $ea $b0 $ca
  call Call_000_03bd                              ; $03aa: $cd $bd $03
  call nz, Call_000_03df                          ; $03ad: $c4 $df $03

Jump_000_03b0:
  ld hl, $0054                                    ; $03b0: $21 $54 $00
  add hl, bc                                      ; $03b3: $09
  ld c, l                                         ; $03b4: $4d
  ld b, h                                         ; $03b5: $44
  ld a, [$caaf]                                   ; $03b6: $fa $af $ca
  dec a                                           ; $03b9: $3d
  jr nz, jr_000_039f                              ; $03ba: $20 $e3

  ret                                             ; $03bc: $c9


Call_000_03bd:
  ld hl, $002d                                    ; $03bd: $21 $2d $00
  add hl, bc                                      ; $03c0: $09
  ld a, [$cd2b]                                   ; $03c1: $fa $2b $cd
  dec a                                           ; $03c4: $3d
  jr z, jr_000_03d9                               ; $03c5: $28 $12

  dec a                                           ; $03c7: $3d
  jr z, jr_000_03d0                               ; $03c8: $28 $06

  dec a                                           ; $03ca: $3d
  jr z, jr_000_03dc                               ; $03cb: $28 $0f

  bit 5, [hl]                                     ; $03cd: $cb $6e
  ret                                             ; $03cf: $c9


Jump_000_03d0:
jr_000_03d0:
  ld a, $38                                       ; $03d0: $3e $38
  and [hl]                                        ; $03d2: $a6
  jr nz, jr_000_03d7                              ; $03d3: $20 $02

  inc a                                           ; $03d5: $3c
  ret                                             ; $03d6: $c9


jr_000_03d7:
  xor a                                           ; $03d7: $af
  ret                                             ; $03d8: $c9


jr_000_03d9:
  bit 4, [hl]                                     ; $03d9: $cb $66
  ret                                             ; $03db: $c9


jr_000_03dc:
  bit 3, [hl]                                     ; $03dc: $cb $5e
  ret                                             ; $03de: $c9


Call_000_03df:
  ld a, [bc]                                      ; $03df: $0a
  or a                                            ; $03e0: $b7
  ret z                                           ; $03e1: $c8

  ld hl, $002d                                    ; $03e2: $21 $2d $00
  add hl, bc                                      ; $03e5: $09
  bit 2, [hl]                                     ; $03e6: $cb $56
  ret z                                           ; $03e8: $c8

  bit 1, [hl]                                     ; $03e9: $cb $4e
  ret nz                                          ; $03eb: $c0

  ld hl, $002c                                    ; $03ec: $21 $2c $00
  add hl, bc                                      ; $03ef: $09
  bit 5, [hl]                                     ; $03f0: $cb $6e
  jr z, jr_000_03fa                               ; $03f2: $28 $06

  ld a, [$c0a9]                                   ; $03f4: $fa $a9 $c0
  and $01                                         ; $03f7: $e6 $01
  ret z                                           ; $03f9: $c8

jr_000_03fa:
  ld hl, $002a                                    ; $03fa: $21 $2a $00
  add hl, bc                                      ; $03fd: $09
  bit 0, [hl]                                     ; $03fe: $cb $46
  ret nz                                          ; $0400: $c0

  ld hl, $002b                                    ; $0401: $21 $2b $00
  add hl, bc                                      ; $0404: $09
  ld a, [hl]                                      ; $0405: $7e
  ldh [$ffb0], a                                  ; $0406: $e0 $b0
  ld a, $01                                       ; $0408: $3e $01
  ld [$2000], a                                   ; $040a: $ea $00 $20
  ld hl, $000b                                    ; $040d: $21 $0b $00
  add hl, bc                                      ; $0410: $09
  ld de, $ffac                                    ; $0411: $11 $ac $ff
  call Call_000_0269                              ; $0414: $cd $69 $02
  ld hl, $002c                                    ; $0417: $21 $2c $00
  add hl, bc                                      ; $041a: $09
  bit 2, [hl]                                     ; $041b: $cb $56
  call z, $46d4                                   ; $041d: $cc $d4 $46
  ldh a, [$ffae]                                  ; $0420: $f0 $ae
  cp $cc                                          ; $0422: $fe $cc
  ret nc                                          ; $0424: $d0

  ld hl, $0026                                    ; $0425: $21 $26 $00
  add hl, bc                                      ; $0428: $09
  bit 7, [hl]                                     ; $0429: $cb $7e
  jr z, jr_000_047b                               ; $042b: $28 $4e

  call Call_000_0841                              ; $042d: $cd $41 $08
  ld hl, $002b                                    ; $0430: $21 $2b $00
  add hl, bc                                      ; $0433: $09
  ld a, [hl]                                      ; $0434: $7e
  ldh [$ffb0], a                                  ; $0435: $e0 $b0
  ld hl, $002e                                    ; $0437: $21 $2e $00
  add hl, bc                                      ; $043a: $09
  ld a, [hl]                                      ; $043b: $7e
  ldh [$ffb1], a                                  ; $043c: $e0 $b1
  ld hl, $0027                                    ; $043e: $21 $27 $00
  add hl, bc                                      ; $0441: $09
  ld a, [hl]                                      ; $0442: $7e
  ldh [$ffab], a                                  ; $0443: $e0 $ab
  ld a, $01                                       ; $0445: $3e $01
  ld [$2000], a                                   ; $0447: $ea $00 $20
  ld a, [bc]                                      ; $044a: $0a
  ld hl, $458e                                    ; $044b: $21 $8e $45
  rst $08                                         ; $044e: $cf
  ld hl, $6602                                    ; $044f: $21 $02 $66
  call Call_000_07ca                              ; $0452: $cd $ca $07
  call Call_000_0df1                              ; $0455: $cd $f1 $0d
  ld a, [bc]                                      ; $0458: $0a
  cp $7c                                          ; $0459: $fe $7c
  jr z, jr_000_0460                               ; $045b: $28 $03

  cp $b2                                          ; $045d: $fe $b2
  ret nz                                          ; $045f: $c0

jr_000_0460:
  ldh a, [rSVBK]                                  ; $0460: $f0 $70
  push af                                         ; $0462: $f5
  ld a, $07                                       ; $0463: $3e $07
  ldh [rSVBK], a                                  ; $0465: $e0 $70
  ld hl, $c09c                                    ; $0467: $21 $9c $c0
  ld a, [hl+]                                     ; $046a: $2a
  ld h, [hl]                                      ; $046b: $66
  ld l, a                                         ; $046c: $6f
  ld de, $fffc                                    ; $046d: $11 $fc $ff
  add hl, de                                      ; $0470: $19
  ld de, $cd5c                                    ; $0471: $11 $5c $cd
  call Call_000_0269                              ; $0474: $cd $69 $02
  pop af                                          ; $0477: $f1
  ldh [rSVBK], a                                  ; $0478: $e0 $70
  ret                                             ; $047a: $c9


jr_000_047b:
  ld hl, $002e                                    ; $047b: $21 $2e $00
  add hl, bc                                      ; $047e: $09
  ld a, [hl]                                      ; $047f: $7e
  ldh [$ffb1], a                                  ; $0480: $e0 $b1
  xor a                                           ; $0482: $af
  ldh [$ffab], a                                  ; $0483: $e0 $ab
  ld hl, $002b                                    ; $0485: $21 $2b $00
  add hl, bc                                      ; $0488: $09
  ld a, [hl]                                      ; $0489: $7e
  ldh [$ffb0], a                                  ; $048a: $e0 $b0
  call Call_000_07b0                              ; $048c: $cd $b0 $07
  ld hl, $002a                                    ; $048f: $21 $2a $00
  add hl, bc                                      ; $0492: $09
  ld a, [hl]                                      ; $0493: $7e
  bit 3, a                                        ; $0494: $cb $5f
  jr nz, jr_000_04c7                              ; $0496: $20 $2f

  ld hl, $4001                                    ; $0498: $21 $01 $40
  call Call_000_07ea                              ; $049b: $cd $ea $07
  call Call_000_0e09                              ; $049e: $cd $09 $0e
  ld a, [$cd5b]                                   ; $04a1: $fa $5b $cd
  or a                                            ; $04a4: $b7
  ret z                                           ; $04a5: $c8

  inc a                                           ; $04a6: $3c
  ret z                                           ; $04a7: $c8

  ld a, [bc]                                      ; $04a8: $0a
  cp $83                                          ; $04a9: $fe $83
  ret nz                                          ; $04ab: $c0

  ldh a, [rSVBK]                                  ; $04ac: $f0 $70
  push af                                         ; $04ae: $f5
  ld a, $07                                       ; $04af: $3e $07
  ldh [rSVBK], a                                  ; $04b1: $e0 $70
  ld hl, $c09c                                    ; $04b3: $21 $9c $c0
  ld a, [hl+]                                     ; $04b6: $2a
  ld h, [hl]                                      ; $04b7: $66
  ld l, a                                         ; $04b8: $6f
  ld de, $fff8                                    ; $04b9: $11 $f8 $ff
  add hl, de                                      ; $04bc: $19
  ld de, $cd5c                                    ; $04bd: $11 $5c $cd
  call Call_000_025d                              ; $04c0: $cd $5d $02
  pop af                                          ; $04c3: $f1
  ldh [rSVBK], a                                  ; $04c4: $e0 $70
  ret                                             ; $04c6: $c9


jr_000_04c7:
  ld hl, $4001                                    ; $04c7: $21 $01 $40
  call Call_000_07ea                              ; $04ca: $cd $ea $07
  call Call_000_0e09                              ; $04cd: $cd $09 $0e
  push hl                                         ; $04d0: $e5
  ld hl, $004c                                    ; $04d1: $21 $4c $00
  add hl, bc                                      ; $04d4: $09
  ldh a, [$ffb0]                                  ; $04d5: $f0 $b0
  and $f8                                         ; $04d7: $e6 $f8
  or [hl]                                         ; $04d9: $b6
  ldh [$ffb0], a                                  ; $04da: $e0 $b0
  pop hl                                          ; $04dc: $e1
  jp Jump_000_0e09                                ; $04dd: $c3 $09 $0e


Call_000_04e0:
Jump_000_04e0:
  ldh [$ff99], a                                  ; $04e0: $e0 $99
  ld a, $ff                                       ; $04e2: $3e $ff
  ld [$c1de], a                                   ; $04e4: $ea $de $c1

Call_000_04e7:
  push bc                                         ; $04e7: $c5
  ld a, [$4000]                                   ; $04e8: $fa $00 $40
  push af                                         ; $04eb: $f5
  ld hl, $ff97                                    ; $04ec: $21 $97 $ff
  ld a, [hl+]                                     ; $04ef: $2a
  ld h, [hl]                                      ; $04f0: $66
  ld l, a                                         ; $04f1: $6f
  push hl                                         ; $04f2: $e5
  ld bc, $c2cf                                    ; $04f3: $01 $cf $c2
  ldh a, [$ff99]                                  ; $04f6: $f0 $99
  cp $01                                          ; $04f8: $fe $01
  jr z, jr_000_051c                               ; $04fa: $28 $20

  ld e, $17                                       ; $04fc: $1e $17
  ld bc, $c323                                    ; $04fe: $01 $23 $c3

jr_000_0501:
  ld a, [bc]                                      ; $0501: $0a
  or a                                            ; $0502: $b7
  jr z, jr_000_051c                               ; $0503: $28 $17

  ld hl, $0054                                    ; $0505: $21 $54 $00
  add hl, bc                                      ; $0508: $09
  ld b, h                                         ; $0509: $44
  ld c, l                                         ; $050a: $4d
  dec e                                           ; $050b: $1d
  jr nz, jr_000_0501                              ; $050c: $20 $f3

  pop hl                                          ; $050e: $e1
  ld a, l                                         ; $050f: $7d
  ldh [$ff97], a                                  ; $0510: $e0 $97
  ld a, h                                         ; $0512: $7c
  ldh [$ff98], a                                  ; $0513: $e0 $98
  pop af                                          ; $0515: $f1
  ld [$2000], a                                   ; $0516: $ea $00 $20
  pop bc                                          ; $0519: $c1
  xor a                                           ; $051a: $af
  ret                                             ; $051b: $c9


jr_000_051c:
  ld h, b                                         ; $051c: $60
  ld l, c                                         ; $051d: $69
  ld a, $54                                       ; $051e: $3e $54

jr_000_0520:
  ld [hl], $00                                    ; $0520: $36 $00
  inc hl                                          ; $0522: $23
  dec a                                           ; $0523: $3d
  jr nz, jr_000_0520                              ; $0524: $20 $fa

  ld a, $01                                       ; $0526: $3e $01
  ld [$2000], a                                   ; $0528: $ea $00 $20
  ld a, $17                                       ; $052b: $3e $17
  sub e                                           ; $052d: $93
  inc a                                           ; $052e: $3c
  ld hl, $004b                                    ; $052f: $21 $4b $00
  add hl, bc                                      ; $0532: $09
  ld [hl], a                                      ; $0533: $77
  ldh a, [$ff99]                                  ; $0534: $f0 $99
  ld [bc], a                                      ; $0536: $02
  call $4696                                      ; $0537: $cd $96 $46
  ld hl, $004d                                    ; $053a: $21 $4d $00
  add hl, bc                                      ; $053d: $09
  ld a, $ff                                       ; $053e: $3e $ff
  ld [hl+], a                                     ; $0540: $22
  ld [hl+], a                                     ; $0541: $22
  ld [hl+], a                                     ; $0542: $22
  ld [hl+], a                                     ; $0543: $22
  ld hl, $002f                                    ; $0544: $21 $2f $00
  add hl, bc                                      ; $0547: $09
  ld a, [$c1de]                                   ; $0548: $fa $de $c1
  ld [hl], a                                      ; $054b: $77
  ld hl, $0006                                    ; $054c: $21 $06 $00
  add hl, bc                                      ; $054f: $09
  ld e, l                                         ; $0550: $5d
  ld d, h                                         ; $0551: $54
  ld hl, $ff9b                                    ; $0552: $21 $9b $ff
  push hl                                         ; $0555: $e5
  call Call_000_026f                              ; $0556: $cd $6f $02
  inc de                                          ; $0559: $13
  call Call_000_026f                              ; $055a: $cd $6f $02
  ld hl, $000b                                    ; $055d: $21 $0b $00
  add hl, bc                                      ; $0560: $09
  ld e, l                                         ; $0561: $5d
  ld d, h                                         ; $0562: $54
  pop hl                                          ; $0563: $e1
  call Call_000_0269                              ; $0564: $cd $69 $02
  ld a, [hl+]                                     ; $0567: $2a
  ld e, a                                         ; $0568: $5f
  ld a, [hl+]                                     ; $0569: $2a
  push hl                                         ; $056a: $e5
  ld hl, $0002                                    ; $056b: $21 $02 $00
  add hl, bc                                      ; $056e: $09
  ld [hl], e                                      ; $056f: $73
  ld hl, $0043                                    ; $0570: $21 $43 $00
  add hl, bc                                      ; $0573: $09
  ld [hl], a                                      ; $0574: $77
  ld hl, $000f                                    ; $0575: $21 $0f $00
  add hl, bc                                      ; $0578: $09
  ld e, l                                         ; $0579: $5d
  ld d, h                                         ; $057a: $54
  pop hl                                          ; $057b: $e1
  call Call_000_0269                              ; $057c: $cd $69 $02
  ld hl, $001c                                    ; $057f: $21 $1c $00
  add hl, bc                                      ; $0582: $09
  ld [hl], $01                                    ; $0583: $36 $01
  ld hl, $0276                                    ; $0585: $21 $76 $02
  ldh a, [$ff99]                                  ; $0588: $f0 $99
  ld d, a                                         ; $058a: $57

jr_000_058b:
  ld a, [hl+]                                     ; $058b: $2a
  cp d                                            ; $058c: $ba
  jr z, jr_000_0596                               ; $058d: $28 $07

  cp $ff                                          ; $058f: $fe $ff
  jr z, jr_000_059c                               ; $0591: $28 $09

  inc hl                                          ; $0593: $23
  jr jr_000_058b                                  ; $0594: $18 $f5

jr_000_0596:
  ld a, [hl]                                      ; $0596: $7e
  ld hl, $0053                                    ; $0597: $21 $53 $00
  add hl, bc                                      ; $059a: $09
  ld [hl], a                                      ; $059b: $77

jr_000_059c:
  xor a                                           ; $059c: $af
  ldh [$ff9f], a                                  ; $059d: $e0 $9f
  ldh a, [$ff9a]                                  ; $059f: $f0 $9a
  call Call_000_2fd9                              ; $05a1: $cd $d9 $2f
  call Call_000_2ae6                              ; $05a4: $cd $e6 $2a
  call Call_000_05bd                              ; $05a7: $cd $bd $05
  call Call_000_2af2                              ; $05aa: $cd $f2 $2a
  ld e, c                                         ; $05ad: $59
  ld d, b                                         ; $05ae: $50
  pop hl                                          ; $05af: $e1
  ld a, l                                         ; $05b0: $7d
  ldh [$ff97], a                                  ; $05b1: $e0 $97
  ld a, h                                         ; $05b3: $7c
  ldh [$ff98], a                                  ; $05b4: $e0 $98
  pop af                                          ; $05b6: $f1
  ld [$2000], a                                   ; $05b7: $ea $00 $20
  pop bc                                          ; $05ba: $c1
  scf                                             ; $05bb: $37
  ret                                             ; $05bc: $c9


Call_000_05bd:
  ld hl, $001a                                    ; $05bd: $21 $1a $00
  add hl, bc                                      ; $05c0: $09
  ld [hl], e                                      ; $05c1: $73
  inc hl                                          ; $05c2: $23
  ld [hl], d                                      ; $05c3: $72
  ret                                             ; $05c4: $c9


Call_000_05c5:
  call Call_000_05d9                              ; $05c5: $cd $d9 $05
  set 0, [hl]                                     ; $05c8: $cb $c6
  ret                                             ; $05ca: $c9


Jump_000_05cb:
  call Call_000_05d9                              ; $05cb: $cd $d9 $05
  ld a, [hl]                                      ; $05ce: $7e
  and $c0                                         ; $05cf: $e6 $c0
  ld [hl], a                                      ; $05d1: $77
  ret                                             ; $05d2: $c9


Call_000_05d3:
  call Call_000_05d9                              ; $05d3: $cd $d9 $05
  ld [hl], $82                                    ; $05d6: $36 $82
  ret                                             ; $05d8: $c9


Call_000_05d9:
  ld hl, $c1e3                                    ; $05d9: $21 $e3 $c1
  ld e, a                                         ; $05dc: $5f
  ld d, $00                                       ; $05dd: $16 $00
  add hl, de                                      ; $05df: $19
  ret                                             ; $05e0: $c9


Call_000_05e1:
  ld a, $00                                       ; $05e1: $3e $00
  ld hl, $c1e3                                    ; $05e3: $21 $e3 $c1
  ld bc, $00c8                                    ; $05e6: $01 $c8 $00
  jp Jump_000_1249                                ; $05e9: $c3 $49 $12


  ld bc, $00c8                                    ; $05ec: $01 $c8 $00
  ld b, c                                         ; $05ef: $41
  ld hl, $c1e3                                    ; $05f0: $21 $e3 $c1

jr_000_05f3:
  ld a, [hl]                                      ; $05f3: $7e
  and $c0                                         ; $05f4: $e6 $c0
  ld [hl+], a                                     ; $05f6: $22
  dec b                                           ; $05f7: $05
  jr nz, jr_000_05f3                              ; $05f8: $20 $f9

  ret                                             ; $05fa: $c9


Jump_000_05fb:
  ld hl, $c2cf                                    ; $05fb: $21 $cf $c2
  ld bc, $07e0                                    ; $05fe: $01 $e0 $07
  call Call_000_1248                              ; $0601: $cd $48 $12

Jump_000_0604:
  ldh a, [rSVBK]                                  ; $0604: $f0 $70
  push af                                         ; $0606: $f5
  ld a, $07                                       ; $0607: $3e $07
  ldh [rSVBK], a                                  ; $0609: $e0 $70
  ld hl, $d000                                    ; $060b: $21 $00 $d0

Call_000_060e:
  ld bc, $0200                                    ; $060e: $01 $00 $02
  call Call_000_1248                              ; $0611: $cd $48 $12
  ld hl, $d000                                    ; $0614: $21 $00 $d0
  ld de, $fe00                                    ; $0617: $11 $00 $fe
  call Call_000_0209                              ; $061a: $cd $09 $02
  pop af                                          ; $061d: $f1
  ldh [rSVBK], a                                  ; $061e: $e0 $70

Call_000_0620:
  ldh a, [rSVBK]                                  ; $0620: $f0 $70
  push af                                         ; $0622: $f5
  ld a, $07                                       ; $0623: $3e $07
  ldh [rSVBK], a                                  ; $0625: $e0 $70
  push bc                                         ; $0627: $c5
  call Call_000_037a                              ; $0628: $cd $7a $03
  ld bc, $0100                                    ; $062b: $01 $00 $01
  call Call_000_1248                              ; $062e: $cd $48 $12
  pop bc                                          ; $0631: $c1
  pop af                                          ; $0632: $f1
  ldh [rSVBK], a                                  ; $0633: $e0 $70
  ret                                             ; $0635: $c9


Call_000_0636:
jr_000_0636:
  ld a, [$cda7]                                   ; $0636: $fa $a7 $cd
  ld [$2000], a                                   ; $0639: $ea $00 $20
  ld a, [hl+]                                     ; $063c: $2a
  or a                                            ; $063d: $b7
  ret z                                           ; $063e: $c8

  push hl                                         ; $063f: $e5
  call Call_000_123c                              ; $0640: $cd $3c $12
  pop hl                                          ; $0643: $e1
  jr jr_000_0636                                  ; $0644: $18 $f0

Call_000_0646:
  ld a, $ff                                       ; $0646: $3e $ff
  ld hl, $cc62                                    ; $0648: $21 $62 $cc
  ld bc, $00c8                                    ; $064b: $01 $c8 $00
  jp Jump_000_1249                                ; $064e: $c3 $49 $12


Call_000_0651:
  ld hl, $000b                                    ; $0651: $21 $0b $00
  add hl, bc                                      ; $0654: $09
  ld de, $cab3                                    ; $0655: $11 $b3 $ca
  jp Jump_000_0269                                ; $0658: $c3 $69 $02


  ld hl, $cda3                                    ; $065b: $21 $a3 $cd
  ld [hl], $b7                                    ; $065e: $36 $b7
  inc hl                                          ; $0660: $23
  ld [hl], $ca                                    ; $0661: $36 $ca
  xor a                                           ; $0663: $af
  ldh [$ffab], a                                  ; $0664: $e0 $ab

Call_000_0666:
  call Call_000_07b0                              ; $0666: $cd $b0 $07
  ld hl, $4001                                    ; $0669: $21 $01 $40
  call Call_000_07ea                              ; $066c: $cd $ea $07
  jp Jump_000_06bf                                ; $066f: $c3 $bf $06


Call_000_0672:
  ld hl, $002a                                    ; $0672: $21 $2a $00
  add hl, bc                                      ; $0675: $09
  bit 6, [hl]                                     ; $0676: $cb $76
  jp nz, Jump_000_0790                            ; $0678: $c2 $90 $07

  ld hl, $002c                                    ; $067b: $21 $2c $00
  add hl, bc                                      ; $067e: $09
  bit 3, [hl]                                     ; $067f: $cb $5e
  ret z                                           ; $0681: $c8

  ld hl, $003a                                    ; $0682: $21 $3a $00
  add hl, bc                                      ; $0685: $09
  ld a, l                                         ; $0686: $7d
  ld [$cda3], a                                   ; $0687: $ea $a3 $cd
  ld a, h                                         ; $068a: $7c
  ld [$cda4], a                                   ; $068b: $ea $a4 $cd
  call Call_000_0651                              ; $068e: $cd $51 $06
  ld hl, $0026                                    ; $0691: $21 $26 $00
  add hl, bc                                      ; $0694: $09
  bit 7, [hl]                                     ; $0695: $cb $7e
  jr z, jr_000_06b3                               ; $0697: $28 $1a

  ld hl, $0027                                    ; $0699: $21 $27 $00
  add hl, bc                                      ; $069c: $09
  ld a, [hl]                                      ; $069d: $7e
  ldh [$ffab], a                                  ; $069e: $e0 $ab
  ld a, $01                                       ; $06a0: $3e $01
  ld [$2000], a                                   ; $06a2: $ea $00 $20
  ld a, [bc]                                      ; $06a5: $0a
  ld hl, $458e                                    ; $06a6: $21 $8e $45
  rst $08                                         ; $06a9: $cf
  ld hl, $6602                                    ; $06aa: $21 $02 $66
  call Call_000_07ca                              ; $06ad: $cd $ca $07
  inc hl                                          ; $06b0: $23
  jr jr_000_06bf                                  ; $06b1: $18 $0c

jr_000_06b3:
  xor a                                           ; $06b3: $af
  ldh [$ffab], a                                  ; $06b4: $e0 $ab
  call Call_000_07b0                              ; $06b6: $cd $b0 $07
  ld hl, $4001                                    ; $06b9: $21 $01 $40
  call Call_000_07ea                              ; $06bc: $cd $ea $07

Jump_000_06bf:
jr_000_06bf:
  inc hl                                          ; $06bf: $23

Jump_000_06c0:
  ld e, l                                         ; $06c0: $5d
  ld d, h                                         ; $06c1: $54
  push bc                                         ; $06c2: $c5
  ld hl, $002b                                    ; $06c3: $21 $2b $00
  add hl, bc                                      ; $06c6: $09
  bit 5, [hl]                                     ; $06c7: $cb $6e
  jr z, jr_000_0704                               ; $06c9: $28 $39

  ld hl, $cab3                                    ; $06cb: $21 $b3 $ca
  ld c, [hl]                                      ; $06ce: $4e
  inc hl                                          ; $06cf: $23
  ld b, [hl]                                      ; $06d0: $46
  ld a, [de]                                      ; $06d1: $1a
  cpl                                             ; $06d2: $2f
  inc a                                           ; $06d3: $3c
  ld l, a                                         ; $06d4: $6f
  rla                                             ; $06d5: $17
  sbc a                                           ; $06d6: $9f
  ld h, a                                         ; $06d7: $67
  add hl, bc                                      ; $06d8: $09
  ld a, l                                         ; $06d9: $7d
  ld [$cac1], a                                   ; $06da: $ea $c1 $ca
  ld a, h                                         ; $06dd: $7c
  ld [$cac2], a                                   ; $06de: $ea $c2 $ca
  bit 7, a                                        ; $06e1: $cb $7f
  jp nz, Jump_000_0784                            ; $06e3: $c2 $84 $07

  inc de                                          ; $06e6: $13
  ld a, [de]                                      ; $06e7: $1a
  cpl                                             ; $06e8: $2f
  inc a                                           ; $06e9: $3c
  ld h, $ff                                       ; $06ea: $26 $ff
  bit 7, a                                        ; $06ec: $cb $7f
  jr nz, jr_000_06f1                              ; $06ee: $20 $01

  inc h                                           ; $06f0: $24

jr_000_06f1:
  ld l, a                                         ; $06f1: $6f
  add hl, bc                                      ; $06f2: $09
  bit 7, h                                        ; $06f3: $cb $7c
  jr z, jr_000_06fa                               ; $06f5: $28 $03

  ld hl, $0000                                    ; $06f7: $21 $00 $00

jr_000_06fa:
  ld a, l                                         ; $06fa: $7d
  ld [$cabf], a                                   ; $06fb: $ea $bf $ca

Call_000_06fe:
  ld a, h                                         ; $06fe: $7c
  ld [$cac0], a                                   ; $06ff: $ea $c0 $ca
  jr jr_000_073a                                  ; $0702: $18 $36

jr_000_0704:
  ld hl, $cab3                                    ; $0704: $21 $b3 $ca
  ld c, [hl]                                      ; $0707: $4e
  inc hl                                          ; $0708: $23
  ld b, [hl]                                      ; $0709: $46
  ld a, [de]                                      ; $070a: $1a
  ld h, $ff                                       ; $070b: $26 $ff
  bit 7, a                                        ; $070d: $cb $7f
  jr nz, jr_000_0712                              ; $070f: $20 $01

  inc h                                           ; $0711: $24

jr_000_0712:
  ld l, a                                         ; $0712: $6f
  add hl, bc                                      ; $0713: $09
  bit 7, h                                        ; $0714: $cb $7c
  jr z, jr_000_071b                               ; $0716: $28 $03

  ld hl, $0000                                    ; $0718: $21 $00 $00

jr_000_071b:
  ld a, l                                         ; $071b: $7d
  ld [$cabf], a                                   ; $071c: $ea $bf $ca
  ld a, h                                         ; $071f: $7c
  ld [$cac0], a                                   ; $0720: $ea $c0 $ca
  inc de                                          ; $0723: $13
  ld a, [de]                                      ; $0724: $1a
  ld h, $00                                       ; $0725: $26 $00
  bit 7, a                                        ; $0727: $cb $7f
  jr z, jr_000_072c                               ; $0729: $28 $01

  dec h                                           ; $072b: $25

jr_000_072c:
  ld l, a                                         ; $072c: $6f
  add hl, bc                                      ; $072d: $09
  ld a, l                                         ; $072e: $7d
  ld [$cac1], a                                   ; $072f: $ea $c1 $ca
  ld a, h                                         ; $0732: $7c
  ld [$cac2], a                                   ; $0733: $ea $c2 $ca
  bit 7, a                                        ; $0736: $cb $7f
  jr nz, jr_000_0784                              ; $0738: $20 $4a

jr_000_073a:
  ld hl, $cab5                                    ; $073a: $21 $b5 $ca
  ld c, [hl]                                      ; $073d: $4e
  inc hl                                          ; $073e: $23
  ld b, [hl]                                      ; $073f: $46
  inc de                                          ; $0740: $13
  ld a, [de]                                      ; $0741: $1a
  ld h, $ff                                       ; $0742: $26 $ff
  bit 7, a                                        ; $0744: $cb $7f
  jr nz, jr_000_0749                              ; $0746: $20 $01

  inc h                                           ; $0748: $24

jr_000_0749:
  ld l, a                                         ; $0749: $6f
  add hl, bc                                      ; $074a: $09
  bit 7, h                                        ; $074b: $cb $7c
  jr z, jr_000_0752                               ; $074d: $28 $03

  ld hl, $0000                                    ; $074f: $21 $00 $00

jr_000_0752:
  ld a, l                                         ; $0752: $7d
  ld [$cac3], a                                   ; $0753: $ea $c3 $ca
  ld a, h                                         ; $0756: $7c
  ld [$cac4], a                                   ; $0757: $ea $c4 $ca
  bit 7, a                                        ; $075a: $cb $7f
  jr nz, jr_000_0784                              ; $075c: $20 $26

  inc de                                          ; $075e: $13
  ld a, [de]                                      ; $075f: $1a
  ld h, $ff                                       ; $0760: $26 $ff
  bit 7, a                                        ; $0762: $cb $7f
  jr nz, jr_000_0767                              ; $0764: $20 $01

  inc h                                           ; $0766: $24

jr_000_0767:
  ld l, a                                         ; $0767: $6f
  add hl, bc                                      ; $0768: $09
  ld a, l                                         ; $0769: $7d
  ld [$cac5], a                                   ; $076a: $ea $c5 $ca
  ld a, h                                         ; $076d: $7c
  ld [$cac6], a                                   ; $076e: $ea $c6 $ca
  bit 7, a                                        ; $0771: $cb $7f
  jr nz, jr_000_0784                              ; $0773: $20 $0f

  ld hl, $cda3                                    ; $0775: $21 $a3 $cd
  ld e, [hl]                                      ; $0778: $5e
  inc hl                                          ; $0779: $23
  ld d, [hl]                                      ; $077a: $56
  ld hl, $cabf                                    ; $077b: $21 $bf $ca
  call Call_000_025d                              ; $077e: $cd $5d $02
  pop bc                                          ; $0781: $c1
  xor a                                           ; $0782: $af
  ret                                             ; $0783: $c9


Jump_000_0784:
jr_000_0784:
  pop bc                                          ; $0784: $c1
  ret                                             ; $0785: $c9


Call_000_0786:
  ld d, h                                         ; $0786: $54
  ld e, l                                         ; $0787: $5d
  ld hl, $0042                                    ; $0788: $21 $42 $00
  add hl, bc                                      ; $078b: $09
  ld a, e                                         ; $078c: $7b
  ld [hl+], a                                     ; $078d: $22
  ld a, d                                         ; $078e: $7a
  ld [hl], a                                      ; $078f: $77

Jump_000_0790:
  ld a, $02                                       ; $0790: $3e $02
  ld [$2000], a                                   ; $0792: $ea $00 $20
  ld hl, $0042                                    ; $0795: $21 $42 $00
  add hl, bc                                      ; $0798: $09
  ld a, [hl+]                                     ; $0799: $2a
  ld h, [hl]                                      ; $079a: $66
  ld l, a                                         ; $079b: $6f

Call_000_079c:
Jump_000_079c:
  push hl                                         ; $079c: $e5
  ld hl, $003a                                    ; $079d: $21 $3a $00
  add hl, bc                                      ; $07a0: $09
  ld a, l                                         ; $07a1: $7d
  ld [$cda3], a                                   ; $07a2: $ea $a3 $cd
  ld a, h                                         ; $07a5: $7c
  ld [$cda4], a                                   ; $07a6: $ea $a4 $cd
  call Call_000_0651                              ; $07a9: $cd $51 $06
  pop hl                                          ; $07ac: $e1
  jp Jump_000_06c0                                ; $07ad: $c3 $c0 $06


Call_000_07b0:
  ld a, $01                                       ; $07b0: $3e $01
  jr jr_000_07b6                                  ; $07b2: $18 $02

Call_000_07b4:
  ld a, $02                                       ; $07b4: $3e $02

jr_000_07b6:
  ld hl, $0025                                    ; $07b6: $21 $25 $00
  add hl, bc                                      ; $07b9: $09
  ld e, [hl]                                      ; $07ba: $5e
  inc hl                                          ; $07bb: $23
  ld d, [hl]                                      ; $07bc: $56
  bit 7, d                                        ; $07bd: $cb $7a
  jr z, jr_000_07c3                               ; $07bf: $28 $02

  ld d, $00                                       ; $07c1: $16 $00

jr_000_07c3:
  rst $08                                         ; $07c3: $cf
  add e                                           ; $07c4: $83
  ld e, a                                         ; $07c5: $5f
  jr nc, jr_000_07c9                              ; $07c6: $30 $01

  inc d                                           ; $07c8: $14

jr_000_07c9:
  ret                                             ; $07c9: $c9


Call_000_07ca:
  ld e, a                                         ; $07ca: $5f
  ld d, $00                                       ; $07cb: $16 $00
  add hl, de                                      ; $07cd: $19
  add hl, de                                      ; $07ce: $19
  add hl, de                                      ; $07cf: $19
  ld a, $09                                       ; $07d0: $3e $09
  ld [$2000], a                                   ; $07d2: $ea $00 $20
  ld a, [hl+]                                     ; $07d5: $2a
  ld e, [hl]                                      ; $07d6: $5e
  inc hl                                          ; $07d7: $23
  ld d, [hl]                                      ; $07d8: $56
  ld [$2000], a                                   ; $07d9: $ea $00 $20
  inc de                                          ; $07dc: $13
  inc de                                          ; $07dd: $13
  ldh a, [$ffab]                                  ; $07de: $f0 $ab
  add a                                           ; $07e0: $87
  ld l, a                                         ; $07e1: $6f
  ld h, $00                                       ; $07e2: $26 $00
  add hl, de                                      ; $07e4: $19
  ld a, [hl+]                                     ; $07e5: $2a
  ld h, [hl]                                      ; $07e6: $66
  ld l, a                                         ; $07e7: $6f
  add hl, de                                      ; $07e8: $19
  ret                                             ; $07e9: $c9


Call_000_07ea:
  add hl, de                                      ; $07ea: $19
  add hl, de                                      ; $07eb: $19
  add hl, de                                      ; $07ec: $19
  ldh a, [$ffc2]                                  ; $07ed: $f0 $c2
  ld [$2000], a                                   ; $07ef: $ea $00 $20
  ld a, [hl+]                                     ; $07f2: $2a
  ld e, [hl]                                      ; $07f3: $5e
  inc hl                                          ; $07f4: $23
  ld d, [hl]                                      ; $07f5: $56
  ld [$2000], a                                   ; $07f6: $ea $00 $20
  inc de                                          ; $07f9: $13
  ld l, e                                         ; $07fa: $6b
  ld h, d                                         ; $07fb: $62
  ret                                             ; $07fc: $c9


Call_000_07fd:
  ld hl, $002a                                    ; $07fd: $21 $2a $00
  add hl, bc                                      ; $0800: $09
  ld a, [hl]                                      ; $0801: $7e
  and $20                                         ; $0802: $e6 $20
  xor $20                                         ; $0804: $ee $20

Call_000_0806:
Jump_000_0806:
  bit 5, a                                        ; $0806: $cb $6f
  jr z, jr_000_0811                               ; $0808: $28 $07

  ld hl, $002a                                    ; $080a: $21 $2a $00
  add hl, bc                                      ; $080d: $09
  set 5, [hl]                                     ; $080e: $cb $ee
  ret                                             ; $0810: $c9


jr_000_0811:
  ld hl, $002a                                    ; $0811: $21 $2a $00
  add hl, bc                                      ; $0814: $09
  res 5, [hl]                                     ; $0815: $cb $ae
  ret                                             ; $0817: $c9


Call_000_0818:
  ld e, a                                         ; $0818: $5f
  call Call_000_0806                              ; $0819: $cd $06 $08
  ld hl, $002b                                    ; $081c: $21 $2b $00
  add hl, bc                                      ; $081f: $09
  ld a, [hl]                                      ; $0820: $7e
  res 5, a                                        ; $0821: $cb $af
  or e                                            ; $0823: $b3
  ld [hl], a                                      ; $0824: $77
  ret                                             ; $0825: $c9


  ld hl, $002b                                    ; $0826: $21 $2b $00
  add hl, bc                                      ; $0829: $09
  ld a, [hl]                                      ; $082a: $7e
  and $40                                         ; $082b: $e6 $40
  xor $40                                         ; $082d: $ee $40

Call_000_082f:
Jump_000_082f:
  bit 6, a                                        ; $082f: $cb $77
  jr z, jr_000_083a                               ; $0831: $28 $07

  ld hl, $002a                                    ; $0833: $21 $2a $00
  add hl, bc                                      ; $0836: $09
  set 4, [hl]                                     ; $0837: $cb $e6
  ret                                             ; $0839: $c9


jr_000_083a:
  ld hl, $002a                                    ; $083a: $21 $2a $00
  add hl, bc                                      ; $083d: $09
  res 4, [hl]                                     ; $083e: $cb $a6
  ret                                             ; $0840: $c9


Call_000_0841:
Jump_000_0841:
  ld hl, $002b                                    ; $0841: $21 $2b $00
  add hl, bc                                      ; $0844: $09
  res 5, [hl]                                     ; $0845: $cb $ae
  res 6, [hl]                                     ; $0847: $cb $b6
  ld hl, $002a                                    ; $0849: $21 $2a $00
  add hl, bc                                      ; $084c: $09
  bit 5, [hl]                                     ; $084d: $cb $6e
  jr z, jr_000_0859                               ; $084f: $28 $08

  push hl                                         ; $0851: $e5
  ld hl, $002b                                    ; $0852: $21 $2b $00
  add hl, bc                                      ; $0855: $09
  set 5, [hl]                                     ; $0856: $cb $ee
  pop hl                                          ; $0858: $e1

jr_000_0859:
  bit 4, [hl]                                     ; $0859: $cb $66
  jr z, jr_000_0863                               ; $085b: $28 $06

  ld hl, $002b                                    ; $085d: $21 $2b $00
  add hl, bc                                      ; $0860: $09
  set 6, [hl]                                     ; $0861: $cb $f6

jr_000_0863:
  ret                                             ; $0863: $c9


Call_000_0864:
Jump_000_0864:
  ld hl, $0026                                    ; $0864: $21 $26 $00
  add hl, bc                                      ; $0867: $09
  bit 7, [hl]                                     ; $0868: $cb $7e
  jr z, jr_000_0872                               ; $086a: $28 $06

  ld hl, $0027                                    ; $086c: $21 $27 $00
  add hl, bc                                      ; $086f: $09
  ld [hl], a                                      ; $0870: $77
  ret                                             ; $0871: $c9


jr_000_0872:
  ld hl, $0028                                    ; $0872: $21 $28 $00
  add hl, bc                                      ; $0875: $09
  or $80                                          ; $0876: $f6 $80
  ld [hl], a                                      ; $0878: $77
  ret                                             ; $0879: $c9


Jump_000_087a:
  ld e, a                                         ; $087a: $5f
  ld hl, $002b                                    ; $087b: $21 $2b $00
  add hl, bc                                      ; $087e: $09
  ld a, [hl]                                      ; $087f: $7e
  and $f8                                         ; $0880: $e6 $f8
  or e                                            ; $0882: $b3
  ld [hl], a                                      ; $0883: $77
  ret                                             ; $0884: $c9


Call_000_0885:
Jump_000_0885:
  xor a                                           ; $0885: $af
  ld hl, $0005                                    ; $0886: $21 $05 $00
  add hl, bc                                      ; $0889: $09
  ld [hl+], a                                     ; $088a: $22
  ld [hl], e                                      ; $088b: $73
  inc hl                                          ; $088c: $23
  ld [hl+], a                                     ; $088d: $22
  ld [hl+], a                                     ; $088e: $22
  ld [hl], d                                      ; $088f: $72
  inc hl                                          ; $0890: $23
  ld [hl+], a                                     ; $0891: $22
  xor a                                           ; $0892: $af
  ld hl, $000b                                    ; $0893: $21 $0b $00
  add hl, bc                                      ; $0896: $09
  ld [hl], e                                      ; $0897: $73
  inc hl                                          ; $0898: $23
  ld [hl+], a                                     ; $0899: $22
  ld [hl], d                                      ; $089a: $72
  inc hl                                          ; $089b: $23
  ld [hl+], a                                     ; $089c: $22
  ret                                             ; $089d: $c9


Call_000_089e:
  ld hl, $cc54                                    ; $089e: $21 $54 $cc
  ld e, [hl]                                      ; $08a1: $5e
  inc hl                                          ; $08a2: $23
  ld d, [hl]                                      ; $08a3: $56
  call Call_000_008f                              ; $08a4: $cd $8f $00
  ld hl, $cc58                                    ; $08a7: $21 $58 $cc
  ld a, [hl+]                                     ; $08aa: $2a
  ld h, [hl]                                      ; $08ab: $66
  ld l, a                                         ; $08ac: $6f
  call Call_000_0078                              ; $08ad: $cd $78 $00
  jp Jump_000_0061                                ; $08b0: $c3 $61 $00


Call_000_08b3:
  ldh a, [rSVBK]                                  ; $08b3: $f0 $70
  push af                                         ; $08b5: $f5
  ld a, $07                                       ; $08b6: $3e $07
  ldh [rSVBK], a                                  ; $08b8: $e0 $70
  ld hl, $db81                                    ; $08ba: $21 $81 $db
  ld bc, $0062                                    ; $08bd: $01 $62 $00
  ld a, $ff                                       ; $08c0: $3e $ff
  call Call_000_1249                              ; $08c2: $cd $49 $12
  xor a                                           ; $08c5: $af
  ld [$db80], a                                   ; $08c6: $ea $80 $db
  pop af                                          ; $08c9: $f1
  ldh [rSVBK], a                                  ; $08ca: $e0 $70
  ret                                             ; $08cc: $c9


Call_000_08cd:
  ld [$cd2b], a                                   ; $08cd: $ea $2b $cd
  call Call_000_08b3                              ; $08d0: $cd $b3 $08
  ld bc, $c2cf                                    ; $08d3: $01 $cf $c2
  ldh a, [rSVBK]                                  ; $08d6: $f0 $70
  push af                                         ; $08d8: $f5
  ld a, $07                                       ; $08d9: $3e $07
  ldh [rSVBK], a                                  ; $08db: $e0 $70
  ld a, $18                                       ; $08dd: $3e $18

jr_000_08df:
  ld [$caaf], a                                   ; $08df: $ea $af $ca
  ld a, [bc]                                      ; $08e2: $0a
  or a                                            ; $08e3: $b7
  jr z, jr_000_08ef                               ; $08e4: $28 $09

  ld [$cab0], a                                   ; $08e6: $ea $b0 $ca
  call Call_000_03bd                              ; $08e9: $cd $bd $03
  call nz, Call_000_093e                          ; $08ec: $c4 $3e $09

jr_000_08ef:
  ld hl, $0054                                    ; $08ef: $21 $54 $00
  add hl, bc                                      ; $08f2: $09
  ld c, l                                         ; $08f3: $4d
  ld b, h                                         ; $08f4: $44
  ld a, [$caaf]                                   ; $08f5: $fa $af $ca
  dec a                                           ; $08f8: $3d
  jr nz, jr_000_08df                              ; $08f9: $20 $e4

  call Call_000_0902                              ; $08fb: $cd $02 $09
  pop af                                          ; $08fe: $f1
  ldh [rSVBK], a                                  ; $08ff: $e0 $70
  ret                                             ; $0901: $c9


Call_000_0902:
  push bc                                         ; $0902: $c5
  ld hl, $db81                                    ; $0903: $21 $81 $db
  ld e, $00                                       ; $0906: $1e $00

jr_000_0908:
  ld a, [hl+]                                     ; $0908: $2a
  ld c, a                                         ; $0909: $4f
  ld a, [hl+]                                     ; $090a: $2a
  ld b, a                                         ; $090b: $47
  inc a                                           ; $090c: $3c
  jr z, jr_000_093c                               ; $090d: $28 $2d

  push de                                         ; $090f: $d5
  ld a, [$cd2b]                                   ; $0910: $fa $2b $cd
  cp $04                                          ; $0913: $fe $04
  jr nz, jr_000_0931                              ; $0915: $20 $1a

  push hl                                         ; $0917: $e5
  ld l, e                                         ; $0918: $6b
  ld h, $24                                       ; $0919: $26 $24
  call Call_000_009c                              ; $091b: $cd $9c $00
  ld de, $ffdc                                    ; $091e: $11 $dc $ff
  add hl, de                                      ; $0921: $19
  push hl                                         ; $0922: $e5
  call Call_000_0388                              ; $0923: $cd $88 $03
  pop de                                          ; $0926: $d1
  add hl, de                                      ; $0927: $19
  ld a, l                                         ; $0928: $7d
  ld [$c09c], a                                   ; $0929: $ea $9c $c0
  ld a, h                                         ; $092c: $7c
  ld [$c09d], a                                   ; $092d: $ea $9d $c0
  pop hl                                          ; $0930: $e1

jr_000_0931:
  push hl                                         ; $0931: $e5
  call Call_000_03df                              ; $0932: $cd $df $03
  pop hl                                          ; $0935: $e1
  inc hl                                          ; $0936: $23
  inc hl                                          ; $0937: $23
  pop de                                          ; $0938: $d1
  inc e                                           ; $0939: $1c
  jr jr_000_0908                                  ; $093a: $18 $cc

jr_000_093c:
  pop bc                                          ; $093c: $c1
  ret                                             ; $093d: $c9


Call_000_093e:
  ldh a, [rSVBK]                                  ; $093e: $f0 $70
  push af                                         ; $0940: $f5
  ld a, $07                                       ; $0941: $3e $07
  ldh [rSVBK], a                                  ; $0943: $e0 $70
  push bc                                         ; $0945: $c5
  ld hl, $0009                                    ; $0946: $21 $09 $00
  add hl, bc                                      ; $0949: $09
  ld a, [hl+]                                     ; $094a: $2a
  ld d, [hl]                                      ; $094b: $56
  ld e, a                                         ; $094c: $5f
  ld b, $00                                       ; $094d: $06 $00
  ld hl, $db81                                    ; $094f: $21 $81 $db

jr_000_0952:
  ld a, [hl+]                                     ; $0952: $2a
  ld a, [hl+]                                     ; $0953: $2a
  cp $ff                                          ; $0954: $fe $ff
  jr z, jr_000_0977                               ; $0956: $28 $1f

  push hl                                         ; $0958: $e5
  ld a, [hl+]                                     ; $0959: $2a
  ld h, [hl]                                      ; $095a: $66
  ld l, a                                         ; $095b: $6f
  ld a, [$cd2b]                                   ; $095c: $fa $2b $cd
  cp $04                                          ; $095f: $fe $04
  jr nz, jr_000_0969                              ; $0961: $20 $06

  rst $10                                         ; $0963: $d7
  pop hl                                          ; $0964: $e1
  jr c, jr_000_0974                               ; $0965: $38 $0d

  jr jr_000_096f                                  ; $0967: $18 $06

jr_000_0969:
  rst $10                                         ; $0969: $d7
  pop hl                                          ; $096a: $e1
  jr z, jr_000_096f                               ; $096b: $28 $02

  jr nc, jr_000_0974                              ; $096d: $30 $05

jr_000_096f:
  inc b                                           ; $096f: $04
  inc hl                                          ; $0970: $23
  inc hl                                          ; $0971: $23
  jr jr_000_0952                                  ; $0972: $18 $de

jr_000_0974:
  call Call_000_0989                              ; $0974: $cd $89 $09

jr_000_0977:
  pop bc                                          ; $0977: $c1
  dec hl                                          ; $0978: $2b
  dec hl                                          ; $0979: $2b
  ld a, c                                         ; $097a: $79
  ld [hl+], a                                     ; $097b: $22
  ld a, b                                         ; $097c: $78
  ld [hl+], a                                     ; $097d: $22
  ld a, e                                         ; $097e: $7b
  ld [hl+], a                                     ; $097f: $22
  ld [hl], d                                      ; $0980: $72
  ld hl, $db80                                    ; $0981: $21 $80 $db
  inc [hl]                                        ; $0984: $34
  pop af                                          ; $0985: $f1
  ldh [rSVBK], a                                  ; $0986: $e0 $70
  ret                                             ; $0988: $c9


Call_000_0989:
  push bc                                         ; $0989: $c5
  push de                                         ; $098a: $d5
  push hl                                         ; $098b: $e5
  ld a, [$db80]                                   ; $098c: $fa $80 $db
  ld hl, $db84                                    ; $098f: $21 $84 $db
  call ResolveIndexedPointer8Stride4                              ; $0992: $cd $06 $00
  ld e, l                                         ; $0995: $5d
  ld d, h                                         ; $0996: $54
  ld hl, $fffc                                    ; $0997: $21 $fc $ff
  add hl, de                                      ; $099a: $19
  ld a, [$db80]                                   ; $099b: $fa $80 $db
  sub b                                           ; $099e: $90
  add a                                           ; $099f: $87
  add a                                           ; $09a0: $87
  ld c, a                                         ; $09a1: $4f
  ld b, $00                                       ; $09a2: $06 $00
  call Call_000_1255                              ; $09a4: $cd $55 $12
  pop hl                                          ; $09a7: $e1
  pop de                                          ; $09a8: $d1
  pop bc                                          ; $09a9: $c1
  ret                                             ; $09aa: $c9


Call_000_09ab:
  push de                                         ; $09ab: $d5
  push hl                                         ; $09ac: $e5
  ld hl, $c2d8                                    ; $09ad: $21 $d8 $c2
  ld e, [hl]                                      ; $09b0: $5e
  inc hl                                          ; $09b1: $23
  ld d, [hl]                                      ; $09b2: $56
  call Call_000_0092                              ; $09b3: $cd $92 $00
  ld hl, $0009                                    ; $09b6: $21 $09 $00
  add hl, bc                                      ; $09b9: $09
  ld a, [hl+]                                     ; $09ba: $2a
  ld h, [hl]                                      ; $09bb: $66
  ld l, a                                         ; $09bc: $6f
  add hl, de                                      ; $09bd: $19
  push hl                                         ; $09be: $e5
  ld hl, $c2d5                                    ; $09bf: $21 $d5 $c2
  ld e, [hl]                                      ; $09c2: $5e
  inc hl                                          ; $09c3: $23
  ld d, [hl]                                      ; $09c4: $56
  call Call_000_0092                              ; $09c5: $cd $92 $00
  ld hl, $0006                                    ; $09c8: $21 $06 $00
  add hl, bc                                      ; $09cb: $09
  ld a, [hl+]                                     ; $09cc: $2a
  ld h, [hl]                                      ; $09cd: $66
  ld l, a                                         ; $09ce: $6f
  add hl, de                                      ; $09cf: $19
  pop de                                          ; $09d0: $d1
  call Call_000_32ec                              ; $09d1: $cd $ec $32
  pop hl                                          ; $09d4: $e1
  pop de                                          ; $09d5: $d1
  ret                                             ; $09d6: $c9


Call_000_09d7:
  push hl                                         ; $09d7: $e5
  call Call_000_0092                              ; $09d8: $cd $92 $00
  ld hl, $0009                                    ; $09db: $21 $09 $00
  add hl, bc                                      ; $09de: $09
  ld a, [hl+]                                     ; $09df: $2a
  ld h, [hl]                                      ; $09e0: $66
  ld l, a                                         ; $09e1: $6f
  add hl, de                                      ; $09e2: $19
  pop de                                          ; $09e3: $d1
  push hl                                         ; $09e4: $e5
  call Call_000_0092                              ; $09e5: $cd $92 $00
  ld hl, $0006                                    ; $09e8: $21 $06 $00
  add hl, bc                                      ; $09eb: $09
  ld a, [hl+]                                     ; $09ec: $2a
  ld h, [hl]                                      ; $09ed: $66
  ld l, a                                         ; $09ee: $6f
  add hl, de                                      ; $09ef: $19
  pop de                                          ; $09f0: $d1
  jp Jump_000_32ec                                ; $09f1: $c3 $ec $32


Call_000_09f4:
Jump_000_09f4:
  ld hl, $0021                                    ; $09f4: $21 $21 $00
  add hl, bc                                      ; $09f7: $09
  ld [hl], e                                      ; $09f8: $73
  inc hl                                          ; $09f9: $23
  ld [hl], d                                      ; $09fa: $72
  inc hl                                          ; $09fb: $23
  ld [hl], $01                                    ; $09fc: $36 $01
  ret                                             ; $09fe: $c9


Call_000_09ff:
  ld hl, $001a                                    ; $09ff: $21 $1a $00
  add hl, bc                                      ; $0a02: $09
  ld [hl], e                                      ; $0a03: $73
  inc hl                                          ; $0a04: $23
  ld [hl], d                                      ; $0a05: $72
  ld hl, $001c                                    ; $0a06: $21 $1c $00
  add hl, bc                                      ; $0a09: $09
  ld [hl], $01                                    ; $0a0a: $36 $01
  ld hl, $001e                                    ; $0a0c: $21 $1e $00
  add hl, bc                                      ; $0a0f: $09
  ld [hl], $00                                    ; $0a10: $36 $00
  ret                                             ; $0a12: $c9


Call_000_0a13:
  ldh a, [rSVBK]                                  ; $0a13: $f0 $70
  push af                                         ; $0a15: $f5
  ld a, $06                                       ; $0a16: $3e $06
  ldh [rSVBK], a                                  ; $0a18: $e0 $70
  push bc                                         ; $0a1a: $c5
  ld a, $03                                       ; $0a1b: $3e $03
  ld [$2000], a                                   ; $0a1d: $ea $00 $20
  ld hl, $002f                                    ; $0a20: $21 $2f $00
  add hl, bc                                      ; $0a23: $09
  ld a, [hl]                                      ; $0a24: $7e
  call $7553                                      ; $0a25: $cd $53 $75
  inc hl                                          ; $0a28: $23
  inc hl                                          ; $0a29: $23
  ld e, l                                         ; $0a2a: $5d
  ld d, h                                         ; $0a2b: $54
  ld hl, $000b                                    ; $0a2c: $21 $0b $00
  add hl, bc                                      ; $0a2f: $09
  call Call_000_0269                              ; $0a30: $cd $69 $02
  ld hl, $0002                                    ; $0a33: $21 $02 $00
  add hl, bc                                      ; $0a36: $09
  ld a, [hl]                                      ; $0a37: $7e
  ld [de], a                                      ; $0a38: $12
  inc de                                          ; $0a39: $13
  ld hl, $0043                                    ; $0a3a: $21 $43 $00
  add hl, bc                                      ; $0a3d: $09
  ld a, [hl]                                      ; $0a3e: $7e
  ld [de], a                                      ; $0a3f: $12
  inc de                                          ; $0a40: $13
  pop bc                                          ; $0a41: $c1
  pop af                                          ; $0a42: $f1
  ldh [rSVBK], a                                  ; $0a43: $e0 $70
  ret                                             ; $0a45: $c9


Call_000_0a46:
  push bc                                         ; $0a46: $c5
  ld hl, $c323                                    ; $0a47: $21 $23 $c3
  ld b, $17                                       ; $0a4a: $06 $17

jr_000_0a4c:
  cp [hl]                                         ; $0a4c: $be
  jr nz, jr_000_0a5b                              ; $0a4d: $20 $0c

  ld d, a                                         ; $0a4f: $57
  ld a, e                                         ; $0a50: $7b
  cp $ff                                          ; $0a51: $fe $ff
  jr z, jr_000_0a69                               ; $0a53: $28 $14

  inc hl                                          ; $0a55: $23
  cp [hl]                                         ; $0a56: $be
  dec hl                                          ; $0a57: $2b
  jr z, jr_000_0a69                               ; $0a58: $28 $0f

  ld a, d                                         ; $0a5a: $7a

jr_000_0a5b:
  push de                                         ; $0a5b: $d5
  ld de, $0054                                    ; $0a5c: $11 $54 $00
  add hl, de                                      ; $0a5f: $19
  pop de                                          ; $0a60: $d1
  dec b                                           ; $0a61: $05
  jr nz, jr_000_0a4c                              ; $0a62: $20 $e8

  pop bc                                          ; $0a64: $c1
  ld a, $01                                       ; $0a65: $3e $01
  or a                                            ; $0a67: $b7
  ret                                             ; $0a68: $c9


jr_000_0a69:
  pop bc                                          ; $0a69: $c1
  xor a                                           ; $0a6a: $af
  ret                                             ; $0a6b: $c9


Call_000_0a6c:
  push bc                                         ; $0a6c: $c5
  ld b, b                                         ; $0a6d: $40
  pop bc                                          ; $0a6e: $c1
  ret                                             ; $0a6f: $c9


Call_000_0a70:
  ldh a, [$ffcd]                                  ; $0a70: $f0 $cd
  cp $3f                                          ; $0a72: $fe $3f
  jr z, jr_000_0a97                               ; $0a74: $28 $21

  ld hl, $0051                                    ; $0a76: $21 $51 $00
  add hl, bc                                      ; $0a79: $09
  ld a, [hl+]                                     ; $0a7a: $2a
  or [hl]                                         ; $0a7b: $b6
  jr z, jr_000_0a97                               ; $0a7c: $28 $19

  ld a, $03                                       ; $0a7e: $3e $03
  ld [$2000], a                                   ; $0a80: $ea $00 $20
  push af                                         ; $0a83: $f5
  ld a, $08                                       ; $0a84: $3e $08
  ld [$2000], a                                   ; $0a86: $ea $00 $20
  pop af                                          ; $0a89: $f1
  call $7667                                      ; $0a8a: $cd $67 $76
  ld a, $03                                       ; $0a8d: $3e $03
  ld [$2000], a                                   ; $0a8f: $ea $00 $20
  call $6ccd                                      ; $0a92: $cd $cd $6c
  jr jr_000_0aac                                  ; $0a95: $18 $15

jr_000_0a97:
  ld a, $03                                       ; $0a97: $3e $03
  ld [$2000], a                                   ; $0a99: $ea $00 $20
  call $6ccd                                      ; $0a9c: $cd $cd $6c
  call $6da6                                      ; $0a9f: $cd $a6 $6d
  ld a, $01                                       ; $0aa2: $3e $01
  ld [$2000], a                                   ; $0aa4: $ea $00 $20
  call $4846                                      ; $0aa7: $cd $46 $48
  jr z, jr_000_0ab6                               ; $0aaa: $28 $0a

jr_000_0aac:
  ld a, $03                                       ; $0aac: $3e $03
  ld [$2000], a                                   ; $0aae: $ea $00 $20
  call $74c3                                      ; $0ab1: $cd $c3 $74
  jr jr_000_0ab6                                  ; $0ab4: $18 $00

jr_000_0ab6:
  ld a, $08                                       ; $0ab6: $3e $08
  ld [$2000], a                                   ; $0ab8: $ea $00 $20
  call $4001                                      ; $0abb: $cd $01 $40
  call $401b                                      ; $0abe: $cd $1b $40
  ld a, $03                                       ; $0ac1: $3e $03
  ld [$2000], a                                   ; $0ac3: $ea $00 $20
  call $748f                                      ; $0ac6: $cd $8f $74
  jp nz, Jump_000_0d92                            ; $0ac9: $c2 $92 $0d

  ld a, $03                                       ; $0acc: $3e $03
  ld [$2000], a                                   ; $0ace: $ea $00 $20
  call $7192                                      ; $0ad1: $cd $92 $71
  call Call_000_0672                              ; $0ad4: $cd $72 $06
  ld a, $03                                       ; $0ad7: $3e $03
  ld [$2000], a                                   ; $0ad9: $ea $00 $20
  call $731d                                      ; $0adc: $cd $1d $73
  jr nc, jr_000_0ae6                              ; $0adf: $30 $05

  push bc                                         ; $0ae1: $c5
  call $736c                                      ; $0ae2: $cd $6c $73
  pop bc                                          ; $0ae5: $c1

jr_000_0ae6:
  ld a, [bc]                                      ; $0ae6: $0a
  or a                                            ; $0ae7: $b7
  ret z                                           ; $0ae8: $c8

  call Call_000_2f3d                              ; $0ae9: $cd $3d $2f
  jp Jump_000_2af2                                ; $0aec: $c3 $f2 $2a


  ld a, $03                                       ; $0aef: $3e $03
  ld [$2000], a                                   ; $0af1: $ea $00 $20
  call $6ccd                                      ; $0af4: $cd $cd $6c
  ld a, $03                                       ; $0af7: $3e $03
  ld [$2000], a                                   ; $0af9: $ea $00 $20
  call $74c3                                      ; $0afc: $cd $c3 $74
  ld a, $08                                       ; $0aff: $3e $08
  ld [$2000], a                                   ; $0b01: $ea $00 $20
  call $4001                                      ; $0b04: $cd $01 $40
  call $401b                                      ; $0b07: $cd $1b $40
  ld a, $03                                       ; $0b0a: $3e $03
  ld [$2000], a                                   ; $0b0c: $ea $00 $20
  call $748f                                      ; $0b0f: $cd $8f $74
  jp nz, Jump_000_0d92                            ; $0b12: $c2 $92 $0d

  ld a, [bc]                                      ; $0b15: $0a
  or a                                            ; $0b16: $b7
  ret z                                           ; $0b17: $c8

  call Call_000_2f3d                              ; $0b18: $cd $3d $2f
  jp Jump_000_2af2                                ; $0b1b: $c3 $f2 $2a


Call_000_0b1e:
  ld a, $03                                       ; $0b1e: $3e $03
  ld [$2000], a                                   ; $0b20: $ea $00 $20
  call $6ccd                                      ; $0b23: $cd $cd $6c
  ld a, $03                                       ; $0b26: $3e $03
  ld [$2000], a                                   ; $0b28: $ea $00 $20
  call $74c3                                      ; $0b2b: $cd $c3 $74
  ld a, $08                                       ; $0b2e: $3e $08
  ld [$2000], a                                   ; $0b30: $ea $00 $20
  call $4001                                      ; $0b33: $cd $01 $40
  call $401b                                      ; $0b36: $cd $1b $40
  jp Jump_000_2af2                                ; $0b39: $c3 $f2 $2a


  call Call_000_0b1e                              ; $0b3c: $cd $1e $0b
  jp Jump_000_2f3d                                ; $0b3f: $c3 $3d $2f


  call Call_000_0a70                              ; $0b42: $cd $70 $0a
  ld a, [bc]                                      ; $0b45: $0a
  or a                                            ; $0b46: $b7
  ret z                                           ; $0b47: $c8

  ld a, $03                                       ; $0b48: $3e $03
  ld [$2000], a                                   ; $0b4a: $ea $00 $20
  push af                                         ; $0b4d: $f5
  ld a, $08                                       ; $0b4e: $3e $08
  ld [$2000], a                                   ; $0b50: $ea $00 $20
  pop af                                          ; $0b53: $f1
  jp $7709                                        ; $0b54: $c3 $09 $77


  call Call_000_0a70                              ; $0b57: $cd $70 $0a
  ld a, [bc]                                      ; $0b5a: $0a
  or a                                            ; $0b5b: $b7
  ret z                                           ; $0b5c: $c8

  ld a, $01                                       ; $0b5d: $3e $01
  ld [$2000], a                                   ; $0b5f: $ea $00 $20
  jp $750f                                        ; $0b62: $c3 $0f $75


  call Call_000_0a70                              ; $0b65: $cd $70 $0a
  ld a, [bc]                                      ; $0b68: $0a
  or a                                            ; $0b69: $b7
  ret z                                           ; $0b6a: $c8

  ld a, $08                                       ; $0b6b: $3e $08
  ld [$2000], a                                   ; $0b6d: $ea $00 $20
  jp $7d87                                        ; $0b70: $c3 $87 $7d


  call Call_000_0a70                              ; $0b73: $cd $70 $0a
  ld a, [bc]                                      ; $0b76: $0a
  or a                                            ; $0b77: $b7
  ret z                                           ; $0b78: $c8

  ld a, $08                                       ; $0b79: $3e $08
  ld [$2000], a                                   ; $0b7b: $ea $00 $20
  jp $6dce                                        ; $0b7e: $c3 $ce $6d


  call Call_000_0a70                              ; $0b81: $cd $70 $0a
  ld a, [bc]                                      ; $0b84: $0a
  or a                                            ; $0b85: $b7
  ret z                                           ; $0b86: $c8

  ld a, $08                                       ; $0b87: $3e $08
  ld [$2000], a                                   ; $0b89: $ea $00 $20
  jp $6f0d                                        ; $0b8c: $c3 $0d $6f


  call Call_000_0a70                              ; $0b8f: $cd $70 $0a
  ld a, [bc]                                      ; $0b92: $0a
  or a                                            ; $0b93: $b7
  ret z                                           ; $0b94: $c8

  ld a, $08                                       ; $0b95: $3e $08
  ld [$2000], a                                   ; $0b97: $ea $00 $20
  jp $6fb0                                        ; $0b9a: $c3 $b0 $6f


  call Call_000_0a70                              ; $0b9d: $cd $70 $0a
  ld a, [bc]                                      ; $0ba0: $0a
  or a                                            ; $0ba1: $b7
  ret z                                           ; $0ba2: $c8

  ld a, $08                                       ; $0ba3: $3e $08
  ld [$2000], a                                   ; $0ba5: $ea $00 $20
  jp $6ff3                                        ; $0ba8: $c3 $f3 $6f


  call Call_000_0a70                              ; $0bab: $cd $70 $0a
  ld a, [bc]                                      ; $0bae: $0a
  or a                                            ; $0baf: $b7
  ret z                                           ; $0bb0: $c8

  push bc                                         ; $0bb1: $c5
  push af                                         ; $0bb2: $f5
  ld a, $03                                       ; $0bb3: $3e $03
  ld [$2000], a                                   ; $0bb5: $ea $00 $20
  pop af                                          ; $0bb8: $f1
  call $7352                                      ; $0bb9: $cd $52 $73
  pop bc                                          ; $0bbc: $c1
  ret                                             ; $0bbd: $c9


  call Call_000_0a70                              ; $0bbe: $cd $70 $0a
  ld a, [bc]                                      ; $0bc1: $0a
  or a                                            ; $0bc2: $b7
  ret z                                           ; $0bc3: $c8

  ld a, [$cb2d]                                   ; $0bc4: $fa $2d $cb
  or a                                            ; $0bc7: $b7
  ret nz                                          ; $0bc8: $c0

  ld a, $03                                       ; $0bc9: $3e $03
  ld [$2000], a                                   ; $0bcb: $ea $00 $20
  jp $737f                                        ; $0bce: $c3 $7f $73


  call Call_000_0a70                              ; $0bd1: $cd $70 $0a
  ld a, [bc]                                      ; $0bd4: $0a
  or a                                            ; $0bd5: $b7
  ret z                                           ; $0bd6: $c8

  inc bc                                          ; $0bd7: $03
  ld a, [bc]                                      ; $0bd8: $0a
  dec bc                                          ; $0bd9: $0b
  cp $03                                          ; $0bda: $fe $03
  ret nz                                          ; $0bdc: $c0

  ld a, $01                                       ; $0bdd: $3e $01
  ld [$2000], a                                   ; $0bdf: $ea $00 $20
  call $479c                                      ; $0be2: $cd $9c $47
  ret c                                           ; $0be5: $d8

  ld a, $01                                       ; $0be6: $3e $01
  ld [$2000], a                                   ; $0be8: $ea $00 $20
  jp $7e28                                        ; $0beb: $c3 $28 $7e


  ret                                             ; $0bee: $c9


  call Call_000_0a70                              ; $0bef: $cd $70 $0a
  ld a, [bc]                                      ; $0bf2: $0a
  or a                                            ; $0bf3: $b7
  ret z                                           ; $0bf4: $c8

  ld a, $01                                       ; $0bf5: $3e $01
  ld [$2000], a                                   ; $0bf7: $ea $00 $20
  call $479c                                      ; $0bfa: $cd $9c $47
  ret c                                           ; $0bfd: $d8

  ld a, $01                                       ; $0bfe: $3e $01

Call_000_0c00:
  ld [$2000], a                                   ; $0c00: $ea $00 $20
  jp $7e1a                                        ; $0c03: $c3 $1a $7e


  call Call_000_0a70                              ; $0c06: $cd $70 $0a
  ld a, [bc]                                      ; $0c09: $0a
  or a                                            ; $0c0a: $b7
  ret z                                           ; $0c0b: $c8

  ld a, [$cb2d]                                   ; $0c0c: $fa $2d $cb
  cp $09                                          ; $0c0f: $fe $09
  ret z                                           ; $0c11: $c8

  cp $04                                          ; $0c12: $fe $04
  ret z                                           ; $0c14: $c8

  ld hl, $002d                                    ; $0c15: $21 $2d $00
  add hl, bc                                      ; $0c18: $09
  bit 1, [hl]                                     ; $0c19: $cb $4e
  ret nz                                          ; $0c1b: $c0

  ld hl, $002c                                    ; $0c1c: $21 $2c $00
  add hl, bc                                      ; $0c1f: $09
  bit 4, [hl]                                     ; $0c20: $cb $66
  ret z                                           ; $0c22: $c8

  ld a, $01                                       ; $0c23: $3e $01
  ld [$2000], a                                   ; $0c25: $ea $00 $20
  call $4794                                      ; $0c28: $cd $94 $47
  ret c                                           ; $0c2b: $d8

  ldh a, [$ffe1]                                  ; $0c2c: $f0 $e1
  or a                                            ; $0c2e: $b7
  ret z                                           ; $0c2f: $c8

  ld a, $01                                       ; $0c30: $3e $01
  ldh [$ffe0], a                                  ; $0c32: $e0 $e0
  xor a                                           ; $0c34: $af
  ld hl, $002c                                    ; $0c35: $21 $2c $00
  add hl, bc                                      ; $0c38: $09
  ld [hl], a                                      ; $0c39: $77
  ldh [$ffa6], a                                  ; $0c3a: $e0 $a6
  ldh [$ffa5], a                                  ; $0c3c: $e0 $a5

Call_000_0c3e:
Jump_000_0c3e:
  ld hl, $001c                                    ; $0c3e: $21 $1c $00
  add hl, bc                                      ; $0c41: $09
  ld [hl], $01                                    ; $0c42: $36 $01
  ret                                             ; $0c44: $c9


  call Call_000_0a70                              ; $0c45: $cd $70 $0a
  ld a, [bc]                                      ; $0c48: $0a
  or a                                            ; $0c49: $b7
  ret                                             ; $0c4a: $c9


  call Call_000_0a70                              ; $0c4b: $cd $70 $0a
  ld a, [bc]                                      ; $0c4e: $0a
  or a                                            ; $0c4f: $b7
  ret z                                           ; $0c50: $c8

  xor a                                           ; $0c51: $af
  ld [$cafd], a                                   ; $0c52: $ea $fd $ca

Call_000_0c55:
Jump_000_0c55:
  ld a, $01                                       ; $0c55: $3e $01
  ld [$2000], a                                   ; $0c57: $ea $00 $20
  call $479c                                      ; $0c5a: $cd $9c $47
  ret c                                           ; $0c5d: $d8

  ld a, $01                                       ; $0c5e: $3e $01
  ld [$cafd], a                                   ; $0c60: $ea $fd $ca
  ret                                             ; $0c63: $c9


  ldh a, [$ffa6]                                  ; $0c64: $f0 $a6
  and $01                                         ; $0c66: $e6 $01
  jr z, jr_000_0ce9                               ; $0c68: $28 $7f

  ld a, [$cc1e]                                   ; $0c6a: $fa $1e $cc
  or a                                            ; $0c6d: $b7
  ret nz                                          ; $0c6e: $c0

  ldh a, [rLCDC]                                  ; $0c6f: $f0 $40
  bit 7, a                                        ; $0c71: $cb $7f
  ret z                                           ; $0c73: $c8

  ld a, [$cafb]                                   ; $0c74: $fa $fb $ca
  or a                                            ; $0c77: $b7
  ret nz                                          ; $0c78: $c0

  ld a, $01                                       ; $0c79: $3e $01
  ld [$2000], a                                   ; $0c7b: $ea $00 $20
  call $479c                                      ; $0c7e: $cd $9c $47
  jr c, jr_000_0ce9                               ; $0c81: $38 $66

  xor a                                           ; $0c83: $af
  ldh [$ffa6], a                                  ; $0c84: $e0 $a6
  ldh [$ffa5], a                                  ; $0c86: $e0 $a5
  call Call_000_0a70                              ; $0c88: $cd $70 $0a
  ld a, [bc]                                      ; $0c8b: $0a
  or a                                            ; $0c8c: $b7
  jr z, jr_000_0ce9                               ; $0c8d: $28 $5a

  ld hl, $002d                                    ; $0c8f: $21 $2d $00
  add hl, bc                                      ; $0c92: $09
  bit 1, [hl]                                     ; $0c93: $cb $4e
  jr nz, jr_000_0ce9                              ; $0c95: $20 $52

  ld a, [$cb2d]                                   ; $0c97: $fa $2d $cb
  cp $09                                          ; $0c9a: $fe $09
  ret z                                           ; $0c9c: $c8

  cp $04                                          ; $0c9d: $fe $04
  ret z                                           ; $0c9f: $c8

  ld a, [$cd66]                                   ; $0ca0: $fa $66 $cd
  or a                                            ; $0ca3: $b7
  ret nz                                          ; $0ca4: $c0

  ld a, $01                                       ; $0ca5: $3e $01
  ld [$2000], a                                   ; $0ca7: $ea $00 $20
  call $479c                                      ; $0caa: $cd $9c $47
  jr c, jr_000_0ce9                               ; $0cad: $38 $3a

  call Call_000_0cbf                              ; $0caf: $cd $bf $0c
  ret nz                                          ; $0cb2: $c0

  call Call_000_2fc1                              ; $0cb3: $cd $c1 $2f
  ld e, a                                         ; $0cb6: $5f
  ld a, $05                                       ; $0cb7: $3e $05
  ld [$2000], a                                   ; $0cb9: $ea $00 $20
  jp $5d65                                        ; $0cbc: $c3 $65 $5d


Call_000_0cbf:
  ld hl, $caef                                    ; $0cbf: $21 $ef $ca
  ld a, [hl+]                                     ; $0cc2: $2a
  or [hl]                                         ; $0cc3: $b6
  inc hl                                          ; $0cc4: $23
  or [hl]                                         ; $0cc5: $b6
  inc hl                                          ; $0cc6: $23
  or [hl]                                         ; $0cc7: $b6
  ret nz                                          ; $0cc8: $c0

  ld hl, $0006                                    ; $0cc9: $21 $06 $00
  add hl, bc                                      ; $0ccc: $09
  ld a, [hl+]                                     ; $0ccd: $2a
  ld h, [hl]                                      ; $0cce: $66
  ld l, a                                         ; $0ccf: $6f
  ld a, l                                         ; $0cd0: $7d
  ld [$caef], a                                   ; $0cd1: $ea $ef $ca
  ld a, h                                         ; $0cd4: $7c
  ld [$caf0], a                                   ; $0cd5: $ea $f0 $ca
  ld hl, $0009                                    ; $0cd8: $21 $09 $00
  add hl, bc                                      ; $0cdb: $09
  ld a, [hl+]                                     ; $0cdc: $2a
  ld h, [hl]                                      ; $0cdd: $66
  ld l, a                                         ; $0cde: $6f
  ld a, l                                         ; $0cdf: $7d
  ld [$caf1], a                                   ; $0ce0: $ea $f1 $ca
  ld a, h                                         ; $0ce3: $7c
  ld [$caf2], a                                   ; $0ce4: $ea $f2 $ca
  xor a                                           ; $0ce7: $af
  ret                                             ; $0ce8: $c9


jr_000_0ce9:
  ld hl, $caef                                    ; $0ce9: $21 $ef $ca
  ld a, [hl+]                                     ; $0cec: $2a
  or [hl]                                         ; $0ced: $b6
  inc hl                                          ; $0cee: $23
  or [hl]                                         ; $0cef: $b6
  inc hl                                          ; $0cf0: $23
  or [hl]                                         ; $0cf1: $b6
  ret z                                           ; $0cf2: $c8

  ld hl, $caef                                    ; $0cf3: $21 $ef $ca
  ld e, [hl]                                      ; $0cf6: $5e
  inc hl                                          ; $0cf7: $23
  ld d, [hl]                                      ; $0cf8: $56
  ld hl, $0006                                    ; $0cf9: $21 $06 $00
  add hl, bc                                      ; $0cfc: $09
  ld a, [hl+]                                     ; $0cfd: $2a
  ld h, [hl]                                      ; $0cfe: $66
  ld l, a                                         ; $0cff: $6f
  rst $10                                         ; $0d00: $d7
  ret nz                                          ; $0d01: $c0

  ld hl, $caf1                                    ; $0d02: $21 $f1 $ca
  ld e, [hl]                                      ; $0d05: $5e
  inc hl                                          ; $0d06: $23
  ld d, [hl]                                      ; $0d07: $56
  ld hl, $0009                                    ; $0d08: $21 $09 $00
  add hl, bc                                      ; $0d0b: $09
  ld a, [hl+]                                     ; $0d0c: $2a
  ld h, [hl]                                      ; $0d0d: $66
  ld l, a                                         ; $0d0e: $6f
  rst $10                                         ; $0d0f: $d7
  ret nz                                          ; $0d10: $c0

  ld hl, $caef                                    ; $0d11: $21 $ef $ca
  xor a                                           ; $0d14: $af
  ld [hl+], a                                     ; $0d15: $22
  ld [hl+], a                                     ; $0d16: $22
  ld [hl+], a                                     ; $0d17: $22
  ld [hl], a                                      ; $0d18: $77
  ret                                             ; $0d19: $c9


  call Call_000_2674                              ; $0d1a: $cd $74 $26
  jr nz, jr_000_0d25                              ; $0d1d: $20 $06

  ldh a, [$ffe1]                                  ; $0d1f: $f0 $e1
  cp $00                                          ; $0d21: $fe $00
  jr nz, jr_000_0d35                              ; $0d23: $20 $10

jr_000_0d25:
  ld a, $08                                       ; $0d25: $3e $08
  ld [$2000], a                                   ; $0d27: $ea $00 $20
  call $720d                                      ; $0d2a: $cd $0d $72
  ld a, $03                                       ; $0d2d: $3e $03
  ld [$2000], a                                   ; $0d2f: $ea $00 $20
  jp Jump_000_0dbb                                ; $0d32: $c3 $bb $0d


jr_000_0d35:
  call Call_000_0a70                              ; $0d35: $cd $70 $0a
  ld a, [bc]                                      ; $0d38: $0a
  or a                                            ; $0d39: $b7
  ret z                                           ; $0d3a: $c8

  ld hl, $002d                                    ; $0d3b: $21 $2d $00
  add hl, bc                                      ; $0d3e: $09
  bit 1, [hl]                                     ; $0d3f: $cb $4e
  ret nz                                          ; $0d41: $c0

  ld a, $01                                       ; $0d42: $3e $01
  ld [$2000], a                                   ; $0d44: $ea $00 $20
  call $479c                                      ; $0d47: $cd $9c $47
  ret c                                           ; $0d4a: $d8

  ldh a, [rSVBK]                                  ; $0d4b: $f0 $70
  push af                                         ; $0d4d: $f5
  ld a, $06                                       ; $0d4e: $3e $06
  ldh [rSVBK], a                                  ; $0d50: $e0 $70
  ld a, [$dd04]                                   ; $0d52: $fa $04 $dd
  or a                                            ; $0d55: $b7
  jr nz, jr_000_0d7a                              ; $0d56: $20 $22

  ld a, $01                                       ; $0d58: $3e $01
  ld [$dd04], a                                   ; $0d5a: $ea $04 $dd
  ld [$dd05], a                                   ; $0d5d: $ea $05 $dd
  pop af                                          ; $0d60: $f1
  ldh [rSVBK], a                                  ; $0d61: $e0 $70
  xor a                                           ; $0d63: $af
  ldh [$ffe1], a                                  ; $0d64: $e0 $e1
  ld a, $03                                       ; $0d66: $3e $03
  ld [$cd5b], a                                   ; $0d68: $ea $5b $cd
  ld hl, $20c5                                    ; $0d6b: $21 $c5 $20
  ld a, $29                                       ; $0d6e: $3e $29
  push af                                         ; $0d70: $f5
  ld a, $04                                       ; $0d71: $3e $04
  ld [$2000], a                                   ; $0d73: $ea $00 $20
  pop af                                          ; $0d76: $f1
  jp $42c9                                        ; $0d77: $c3 $c9 $42


jr_000_0d7a:
  pop af                                          ; $0d7a: $f1
  ldh [rSVBK], a                                  ; $0d7b: $e0 $70
  ld a, $03                                       ; $0d7d: $3e $03
  ld [$2000], a                                   ; $0d7f: $ea $00 $20
  jp $6e0f                                        ; $0d82: $c3 $0f $6e


  ld a, [$cad7]                                   ; $0d85: $fa $d7 $ca
  ld [$2000], a                                   ; $0d88: $ea $00 $20
  ld hl, $cad8                                    ; $0d8b: $21 $d8 $ca
  ld a, [hl+]                                     ; $0d8e: $2a
  ld h, [hl]                                      ; $0d8f: $66
  ld l, a                                         ; $0d90: $6f
  jp hl                                           ; $0d91: $e9


Call_000_0d92:
Jump_000_0d92:
  xor a                                           ; $0d92: $af
  ld [bc], a                                      ; $0d93: $02
  ld a, $03                                       ; $0d94: $3e $03
  ld [$2000], a                                   ; $0d96: $ea $00 $20
  call $78ed                                      ; $0d99: $cd $ed $78
  ld a, $01                                       ; $0d9c: $3e $01
  ld [$2000], a                                   ; $0d9e: $ea $00 $20
  call $554d                                      ; $0da1: $cd $4d $55
  ld hl, $002f                                    ; $0da4: $21 $2f $00
  add hl, bc                                      ; $0da7: $09
  ld a, [hl]                                      ; $0da8: $7e
  inc a                                           ; $0da9: $3c
  ret z                                           ; $0daa: $c8

  call Call_000_0a13                              ; $0dab: $cd $13 $0a
  ld a, $01                                       ; $0dae: $3e $01
  ld [$2000], a                                   ; $0db0: $ea $00 $20
  ld hl, $002f                                    ; $0db3: $21 $2f $00
  add hl, bc                                      ; $0db6: $09
  ld a, [hl]                                      ; $0db7: $7e
  jp Jump_000_05cb                                ; $0db8: $c3 $cb $05


Call_000_0dbb:
Jump_000_0dbb:
  push bc                                         ; $0dbb: $c5
  ld a, [$4000]                                   ; $0dbc: $fa $00 $40
  push af                                         ; $0dbf: $f5
  xor a                                           ; $0dc0: $af
  ld [bc], a                                      ; $0dc1: $02
  ld a, $03                                       ; $0dc2: $3e $03
  ld [$2000], a                                   ; $0dc4: $ea $00 $20
  call $78ed                                      ; $0dc7: $cd $ed $78
  ld a, $01                                       ; $0dca: $3e $01
  ld [$2000], a                                   ; $0dcc: $ea $00 $20
  call $554d                                      ; $0dcf: $cd $4d $55
  ld hl, $002f                                    ; $0dd2: $21 $2f $00
  add hl, bc                                      ; $0dd5: $09
  ld a, [hl]                                      ; $0dd6: $7e
  cp $ff                                          ; $0dd7: $fe $ff
  call nz, Call_000_05d3                          ; $0dd9: $c4 $d3 $05
  ld hl, $0005                                    ; $0ddc: $21 $05 $00
  add hl, bc                                      ; $0ddf: $09
  ld bc, $000a                                    ; $0de0: $01 $0a $00
  call Call_000_1248                              ; $0de3: $cd $48 $12
  pop af                                          ; $0de6: $f1
  ld [$2000], a                                   ; $0de7: $ea $00 $20
  ld hl, $c0aa                                    ; $0dea: $21 $aa $c0
  set 0, [hl]                                     ; $0ded: $cb $c6
  pop bc                                          ; $0def: $c1
  ret                                             ; $0df0: $c9


Call_000_0df1:
  ld a, [hl+]                                     ; $0df1: $2a
  ld d, a                                         ; $0df2: $57
  and $3f                                         ; $0df3: $e6 $3f
  ld e, a                                         ; $0df5: $5f
  ld a, [$c09e]                                   ; $0df6: $fa $9e $c0
  sub e                                           ; $0df9: $93
  ret c                                           ; $0dfa: $d8

  ld [$c09e], a                                   ; $0dfb: $ea $9e $c0
  push bc                                         ; $0dfe: $c5
  ld b, e                                         ; $0dff: $43
  ld c, d                                         ; $0e00: $4a
  ldh a, [$ffb1]                                  ; $0e01: $f0 $b1
  add [hl]                                        ; $0e03: $86
  ldh [$ffb1], a                                  ; $0e04: $e0 $b1
  inc hl                                          ; $0e06: $23
  jr jr_000_0e19                                  ; $0e07: $18 $10

Call_000_0e09:
Jump_000_0e09:
  ld a, [hl+]                                     ; $0e09: $2a
  ld d, a                                         ; $0e0a: $57
  and $3f                                         ; $0e0b: $e6 $3f
  ld e, a                                         ; $0e0d: $5f
  ld a, [$c09e]                                   ; $0e0e: $fa $9e $c0
  sub e                                           ; $0e11: $93
  ret c                                           ; $0e12: $d8

  ld [$c09e], a                                   ; $0e13: $ea $9e $c0
  push bc                                         ; $0e16: $c5
  ld b, e                                         ; $0e17: $43
  ld c, d                                         ; $0e18: $4a

jr_000_0e19:
  ldh a, [rSVBK]                                  ; $0e19: $f0 $70
  push af                                         ; $0e1b: $f5
  ld a, $07                                       ; $0e1c: $3e $07
  ldh [rSVBK], a                                  ; $0e1e: $e0 $70
  ldh a, [$ffb2]                                  ; $0e20: $f0 $b2
  or a                                            ; $0e22: $b7
  jr nz, jr_000_0e29                              ; $0e23: $20 $04

  ld de, $0004                                    ; $0e25: $11 $04 $00
  add hl, de                                      ; $0e28: $19

jr_000_0e29:
  ld a, [$c09c]                                   ; $0e29: $fa $9c $c0
  ld e, a                                         ; $0e2c: $5f
  ld a, [$c09d]                                   ; $0e2d: $fa $9d $c0
  ld d, a                                         ; $0e30: $57

jr_000_0e31:
  ldh a, [$ffb0]                                  ; $0e31: $f0 $b0
  bit 6, a                                        ; $0e33: $cb $77
  ldh a, [$ffae]                                  ; $0e35: $f0 $ae
  jr z, jr_000_0e3e                               ; $0e37: $28 $05

  sub [hl]                                        ; $0e39: $96
  sub $0f                                         ; $0e3a: $d6 $0f
  jr jr_000_0e3f                                  ; $0e3c: $18 $01

jr_000_0e3e:
  add [hl]                                        ; $0e3e: $86

jr_000_0e3f:
  ld [de], a                                      ; $0e3f: $12
  inc de                                          ; $0e40: $13
  inc hl                                          ; $0e41: $23
  ldh a, [$ffb0]                                  ; $0e42: $f0 $b0
  bit 5, a                                        ; $0e44: $cb $6f
  ldh a, [$ffac]                                  ; $0e46: $f0 $ac
  jr z, jr_000_0e4f                               ; $0e48: $28 $05

  sub [hl]                                        ; $0e4a: $96
  sub $07                                         ; $0e4b: $d6 $07
  jr jr_000_0e50                                  ; $0e4d: $18 $01

jr_000_0e4f:
  add [hl]                                        ; $0e4f: $86

jr_000_0e50:
  ld [de], a                                      ; $0e50: $12
  inc de                                          ; $0e51: $13
  inc hl                                          ; $0e52: $23
  ldh a, [$ffbb]                                  ; $0e53: $f0 $bb
  dec a                                           ; $0e55: $3d
  ldh a, [$ffb1]                                  ; $0e56: $f0 $b1
  ld [de], a                                      ; $0e58: $12
  jr z, jr_000_0e5c                               ; $0e59: $28 $01

  inc a                                           ; $0e5b: $3c

jr_000_0e5c:
  inc a                                           ; $0e5c: $3c
  ldh [$ffb1], a                                  ; $0e5d: $e0 $b1
  inc de                                          ; $0e5f: $13
  ldh a, [$ffb0]                                  ; $0e60: $f0 $b0
  bit 7, c                                        ; $0e62: $cb $79
  jr z, jr_000_0e6a                               ; $0e64: $28 $04

  and $f0                                         ; $0e66: $e6 $f0
  or [hl]                                         ; $0e68: $b6
  inc hl                                          ; $0e69: $23

jr_000_0e6a:
  ld [de], a                                      ; $0e6a: $12
  inc de                                          ; $0e6b: $13
  dec b                                           ; $0e6c: $05
  jr nz, jr_000_0e31                              ; $0e6d: $20 $c2

  ld a, e                                         ; $0e6f: $7b
  ld [$c09c], a                                   ; $0e70: $ea $9c $c0
  ld a, d                                         ; $0e73: $7a
  ld [$c09d], a                                   ; $0e74: $ea $9d $c0
  pop af                                          ; $0e77: $f1
  ldh [rSVBK], a                                  ; $0e78: $e0 $70
  pop bc                                          ; $0e7a: $c1
  ret                                             ; $0e7b: $c9


Call_000_0e7c:
  xor a                                           ; $0e7c: $af
  ldh [$fff3], a                                  ; $0e7d: $e0 $f3
  ldh [$fff4], a                                  ; $0e7f: $e0 $f4

Jump_000_0e81:
  ld a, [hl]                                      ; $0e81: $7e
  and $03                                         ; $0e82: $e6 $03
  ld c, a                                         ; $0e84: $4f
  ld a, [hl]                                      ; $0e85: $7e
  and $10                                         ; $0e86: $e6 $10
  jr z, jr_000_0e8e                               ; $0e88: $28 $04

  ld a, $01                                       ; $0e8a: $3e $01
  ldh [rVBK], a                                   ; $0e8c: $e0 $4f

jr_000_0e8e:
  ld a, [hl+]                                     ; $0e8e: $2a
  and $08                                         ; $0e8f: $e6 $08
  rra                                             ; $0e91: $1f
  rra                                             ; $0e92: $1f
  rra                                             ; $0e93: $1f
  inc a                                           ; $0e94: $3c
  ld b, a                                         ; $0e95: $47
  push bc                                         ; $0e96: $c5
  push de                                         ; $0e97: $d5
  dec c                                           ; $0e98: $0d
  jr z, jr_000_0eaa                               ; $0e99: $28 $0f

  dec c                                           ; $0e9b: $0d
  jr z, jr_000_0eaf                               ; $0e9c: $28 $11

  dec c                                           ; $0e9e: $0d
  jr z, jr_000_0eb4                               ; $0e9f: $28 $13

  ld a, [hl+]                                     ; $0ea1: $2a
  ld c, a                                         ; $0ea2: $4f
  ld a, [hl+]                                     ; $0ea3: $2a
  ld b, a                                         ; $0ea4: $47
  call Call_000_129c                              ; $0ea5: $cd $9c $12
  jr jr_000_0eb7                                  ; $0ea8: $18 $0d

jr_000_0eaa:
  call Call_000_0f86                              ; $0eaa: $cd $86 $0f
  jr jr_000_0eb7                                  ; $0ead: $18 $08

jr_000_0eaf:
  call Call_000_0f3a                              ; $0eaf: $cd $3a $0f
  jr jr_000_0eb7                                  ; $0eb2: $18 $03

jr_000_0eb4:
  call Call_000_0fd7                              ; $0eb4: $cd $d7 $0f

jr_000_0eb7:
  ld c, l                                         ; $0eb7: $4d
  ld b, h                                         ; $0eb8: $44
  pop hl                                          ; $0eb9: $e1
  call Call_000_007b                              ; $0eba: $cd $7b $00
  add hl, de                                      ; $0ebd: $19
  push de                                         ; $0ebe: $d5
  ldh a, [$fff3]                                  ; $0ebf: $f0 $f3
  ld e, a                                         ; $0ec1: $5f
  ldh a, [$fff4]                                  ; $0ec2: $f0 $f4
  ld d, a                                         ; $0ec4: $57
  add hl, de                                      ; $0ec5: $19
  ld a, l                                         ; $0ec6: $7d
  ldh [$fff3], a                                  ; $0ec7: $e0 $f3
  ld a, h                                         ; $0ec9: $7c
  ldh [$fff4], a                                  ; $0eca: $e0 $f4
  pop de                                          ; $0ecc: $d1
  ld l, c                                         ; $0ecd: $69
  ld h, b                                         ; $0ece: $60
  pop bc                                          ; $0ecf: $c1
  dec b                                           ; $0ed0: $05
  jr z, jr_000_0f30                               ; $0ed1: $28 $5d

  ldh a, [rLCDC]                                  ; $0ed3: $f0 $40
  rla                                             ; $0ed5: $17
  jr nc, jr_000_0f26                              ; $0ed6: $30 $4e

  push hl                                         ; $0ed8: $e5
  ld a, d                                         ; $0ed9: $7a
  sub $d0                                         ; $0eda: $d6 $d0
  ld d, a                                         ; $0edc: $57
  sra d                                           ; $0edd: $cb $2a
  rr e                                            ; $0edf: $cb $1b
  sra d                                           ; $0ee1: $cb $2a
  rr e                                            ; $0ee3: $cb $1b
  sra d                                           ; $0ee5: $cb $2a
  rr e                                            ; $0ee7: $cb $1b
  sra d                                           ; $0ee9: $cb $2a
  rr e                                            ; $0eeb: $cb $1b
  ld a, e                                         ; $0eed: $7b
  dec a                                           ; $0eee: $3d
  push af                                         ; $0eef: $f5
  pop af                                          ; $0ef0: $f1
  ld [$c2bf], a                                   ; $0ef1: $ea $bf $c2
  ld a, [$4000]                                   ; $0ef4: $fa $00 $40
  push af                                         ; $0ef7: $f5
  ld a, $01                                       ; $0ef8: $3e $01
  ld [$2000], a                                   ; $0efa: $ea $00 $20
  call $4153                                      ; $0efd: $cd $53 $41

Call_000_0f00:
  pop af                                          ; $0f00: $f1
  ld [$2000], a                                   ; $0f01: $ea $00 $20
  ld hl, $c2c0                                    ; $0f04: $21 $c0 $c2
  ld [hl], $00                                    ; $0f07: $36 $00
  inc hl                                          ; $0f09: $23
  ld [hl], $88                                    ; $0f0a: $36 $88
  ld a, $01                                       ; $0f0c: $3e $01
  ld [$c2c4], a                                   ; $0f0e: $ea $c4 $c2
  ld hl, $fff3                                    ; $0f11: $21 $f3 $ff
  ld [hl], $00                                    ; $0f14: $36 $00
  inc hl                                          ; $0f16: $23
  ld [hl], $00                                    ; $0f17: $36 $00
  ld de, $d000                                    ; $0f19: $11 $00 $d0
  ld hl, $c2c2                                    ; $0f1c: $21 $c2 $c2
  ld [hl], e                                      ; $0f1f: $73
  inc hl                                          ; $0f20: $23
  ld [hl], d                                      ; $0f21: $72
  pop hl                                          ; $0f22: $e1
  jp Jump_000_0e81                                ; $0f23: $c3 $81 $0e


jr_000_0f26:
  ld de, $8800                                    ; $0f26: $11 $00 $88
  ld a, $01                                       ; $0f29: $3e $01
  ldh [rVBK], a                                   ; $0f2b: $e0 $4f
  jp Jump_000_0e81                                ; $0f2d: $c3 $81 $0e


jr_000_0f30:
  xor a                                           ; $0f30: $af
  ldh [rVBK], a                                   ; $0f31: $e0 $4f
  ldh a, [$fff3]                                  ; $0f33: $f0 $f3
  ld c, a                                         ; $0f35: $4f
  ldh a, [$fff4]                                  ; $0f36: $f0 $f4
  ld b, a                                         ; $0f38: $47
  ret                                             ; $0f39: $c9


Call_000_0f3a:
jr_000_0f3a:
  ld a, [hl+]                                     ; $0f3a: $2a
  or a                                            ; $0f3b: $b7
  ret z                                           ; $0f3c: $c8

  add a                                           ; $0f3d: $87
  jr c, jr_000_0f5f                               ; $0f3e: $38 $1f

  add a                                           ; $0f40: $87
  jr c, jr_000_0f4e                               ; $0f41: $38 $0b

  rra                                             ; $0f43: $1f
  rra                                             ; $0f44: $1f
  ld b, a                                         ; $0f45: $47

jr_000_0f46:
  ld a, [hl+]                                     ; $0f46: $2a
  ld [de], a                                      ; $0f47: $12
  inc de                                          ; $0f48: $13
  dec b                                           ; $0f49: $05
  jr nz, jr_000_0f46                              ; $0f4a: $20 $fa

  jr jr_000_0f3a                                  ; $0f4c: $18 $ec

jr_000_0f4e:
  or a                                            ; $0f4e: $b7
  rra                                             ; $0f4f: $1f
  rra                                             ; $0f50: $1f
  ld b, a                                         ; $0f51: $47
  ld a, [hl+]                                     ; $0f52: $2a
  push hl                                         ; $0f53: $e5
  ld l, e                                         ; $0f54: $6b
  ld h, d                                         ; $0f55: $62

jr_000_0f56:
  ld [hl+], a                                     ; $0f56: $22
  dec b                                           ; $0f57: $05
  jr nz, jr_000_0f56                              ; $0f58: $20 $fc

  ld e, l                                         ; $0f5a: $5d
  ld d, h                                         ; $0f5b: $54
  pop hl                                          ; $0f5c: $e1
  jr jr_000_0f3a                                  ; $0f5d: $18 $db

jr_000_0f5f:
  or a                                            ; $0f5f: $b7
  ld b, $00                                       ; $0f60: $06 $00
  rla                                             ; $0f62: $17
  rl b                                            ; $0f63: $cb $10
  rla                                             ; $0f65: $17
  rl b                                            ; $0f66: $cb $10
  ld c, a                                         ; $0f68: $4f
  ld a, [hl]                                      ; $0f69: $7e
  and $e0                                         ; $0f6a: $e6 $e0
  swap a                                          ; $0f6c: $cb $37
  rra                                             ; $0f6e: $1f
  or c                                            ; $0f6f: $b1
  ld c, a                                         ; $0f70: $4f
  ld a, [hl+]                                     ; $0f71: $2a
  and $1f                                         ; $0f72: $e6 $1f
  push hl                                         ; $0f74: $e5
  push af                                         ; $0f75: $f5
  ld a, e                                         ; $0f76: $7b
  sub c                                           ; $0f77: $91
  ld l, a                                         ; $0f78: $6f
  ld a, d                                         ; $0f79: $7a
  sbc b                                           ; $0f7a: $98
  ld h, a                                         ; $0f7b: $67
  pop bc                                          ; $0f7c: $c1

jr_000_0f7d:
  ld a, [hl+]                                     ; $0f7d: $2a
  ld [de], a                                      ; $0f7e: $12
  inc de                                          ; $0f7f: $13
  dec b                                           ; $0f80: $05
  jr nz, jr_000_0f7d                              ; $0f81: $20 $fa

  pop hl                                          ; $0f83: $e1
  jr jr_000_0f3a                                  ; $0f84: $18 $b4

Call_000_0f86:
  ld a, [hl+]                                     ; $0f86: $2a
  ld c, a                                         ; $0f87: $4f
  dec a                                           ; $0f88: $3d
  jr nz, jr_000_0fab                              ; $0f89: $20 $20

jr_000_0f8b:
  ld a, [hl+]                                     ; $0f8b: $2a
  cp $00                                          ; $0f8c: $fe $00
  ret z                                           ; $0f8e: $c8

  bit 7, a                                        ; $0f8f: $cb $7f
  ld b, a                                         ; $0f91: $47
  jr nz, jr_000_0fa1                              ; $0f92: $20 $0d

  ld a, [hl+]                                     ; $0f94: $2a
  push hl                                         ; $0f95: $e5
  ld l, e                                         ; $0f96: $6b
  ld h, d                                         ; $0f97: $62

jr_000_0f98:
  ld [hl+], a                                     ; $0f98: $22
  dec b                                           ; $0f99: $05
  jr nz, jr_000_0f98                              ; $0f9a: $20 $fc

  ld e, l                                         ; $0f9c: $5d
  ld d, h                                         ; $0f9d: $54
  pop hl                                          ; $0f9e: $e1
  jr jr_000_0f8b                                  ; $0f9f: $18 $ea

jr_000_0fa1:
  res 7, b                                        ; $0fa1: $cb $b8

jr_000_0fa3:
  ld a, [hl+]                                     ; $0fa3: $2a
  ld [de], a                                      ; $0fa4: $12
  inc de                                          ; $0fa5: $13
  dec b                                           ; $0fa6: $05
  jr nz, jr_000_0fa3                              ; $0fa7: $20 $fa

  jr jr_000_0f8b                                  ; $0fa9: $18 $e0

jr_000_0fab:
  push de                                         ; $0fab: $d5

jr_000_0fac:
  ld a, [hl+]                                     ; $0fac: $2a
  cp $00                                          ; $0fad: $fe $00
  jr z, jr_000_0fca                               ; $0faf: $28 $19

  bit 7, a                                        ; $0fb1: $cb $7f
  ld b, a                                         ; $0fb3: $47
  jr nz, jr_000_0fbf                              ; $0fb4: $20 $09

  ld a, [hl+]                                     ; $0fb6: $2a

jr_000_0fb7:
  ld [de], a                                      ; $0fb7: $12
  inc de                                          ; $0fb8: $13
  inc de                                          ; $0fb9: $13
  dec b                                           ; $0fba: $05
  jr nz, jr_000_0fb7                              ; $0fbb: $20 $fa

  jr jr_000_0fac                                  ; $0fbd: $18 $ed

jr_000_0fbf:
  res 7, b                                        ; $0fbf: $cb $b8

jr_000_0fc1:
  ld a, [hl+]                                     ; $0fc1: $2a
  ld [de], a                                      ; $0fc2: $12
  inc de                                          ; $0fc3: $13
  inc de                                          ; $0fc4: $13
  dec b                                           ; $0fc5: $05
  jr nz, jr_000_0fc1                              ; $0fc6: $20 $f9

  jr jr_000_0fac                                  ; $0fc8: $18 $e2

jr_000_0fca:
  dec c                                           ; $0fca: $0d
  jr z, jr_000_0fd1                               ; $0fcb: $28 $04

  pop de                                          ; $0fcd: $d1
  inc de                                          ; $0fce: $13
  jr jr_000_0fab                                  ; $0fcf: $18 $da

jr_000_0fd1:
  dec de                                          ; $0fd1: $1b
  pop bc                                          ; $0fd2: $c1
  ret                                             ; $0fd3: $c9


jr_000_0fd4:
  dec b                                           ; $0fd4: $05
  jr nz, jr_000_0fdb                              ; $0fd5: $20 $04

Call_000_0fd7:
  ld a, [hl+]                                     ; $0fd7: $2a
  ld c, a                                         ; $0fd8: $4f
  ld b, $08                                       ; $0fd9: $06 $08

jr_000_0fdb:
  rlc c                                           ; $0fdb: $cb $01
  jr c, jr_000_0fe4                               ; $0fdd: $38 $05

  ld a, [hl+]                                     ; $0fdf: $2a
  ld [de], a                                      ; $0fe0: $12
  inc de                                          ; $0fe1: $13
  jr jr_000_0fd4                                  ; $0fe2: $18 $f0

jr_000_0fe4:
  push bc                                         ; $0fe4: $c5
  ld a, [hl+]                                     ; $0fe5: $2a
  ld c, a                                         ; $0fe6: $4f
  or [hl]                                         ; $0fe7: $b6
  jr z, jr_000_1008                               ; $0fe8: $28 $1e

  ld a, [hl]                                      ; $0fea: $7e
  and $0f                                         ; $0feb: $e6 $0f
  ld b, a                                         ; $0fed: $47
  ld a, [hl+]                                     ; $0fee: $2a
  and $f0                                         ; $0fef: $e6 $f0
  swap a                                          ; $0ff1: $cb $37
  add $03                                         ; $0ff3: $c6 $03
  push hl                                         ; $0ff5: $e5
  push af                                         ; $0ff6: $f5
  ld a, e                                         ; $0ff7: $7b
  sub c                                           ; $0ff8: $91
  ld l, a                                         ; $0ff9: $6f
  ld a, d                                         ; $0ffa: $7a
  sbc b                                           ; $0ffb: $98
  ld h, a                                         ; $0ffc: $67
  pop bc                                          ; $0ffd: $c1

jr_000_0ffe:
  ld a, [hl+]                                     ; $0ffe: $2a
  ld [de], a                                      ; $0fff: $12
  inc de                                          ; $1000: $13
  dec b                                           ; $1001: $05
  jr nz, jr_000_0ffe                              ; $1002: $20 $fa

  pop hl                                          ; $1004: $e1
  pop bc                                          ; $1005: $c1
  jr jr_000_0fd4                                  ; $1006: $18 $cc

jr_000_1008:
  inc hl                                          ; $1008: $23
  pop bc                                          ; $1009: $c1
  ret                                             ; $100a: $c9


  ld a, [$cdc4]                                   ; $100b: $fa $c4 $cd
  ld hl, $ffb9                                    ; $100e: $21 $b9 $ff
  ld [hl+], a                                     ; $1011: $22
  ld [hl], $00                                    ; $1012: $36 $00
  ld a, $08                                       ; $1014: $3e $08
  ld hl, $558b                                    ; $1016: $21 $8b $55
  call Call_000_2a76                              ; $1019: $cd $76 $2a
  ret                                             ; $101c: $c9


  push bc                                         ; $101d: $c5
  push de                                         ; $101e: $d5
  push hl                                         ; $101f: $e5
  ld hl, $56d8                                    ; $1020: $21 $d8 $56
  call Call_000_2ab5                              ; $1023: $cd $b5 $2a
  ld c, $00                                       ; $1026: $0e $00
  ld b, $00                                       ; $1028: $06 $00
  ld de, $d400                                    ; $102a: $11 $00 $d4
  call Call_000_132e                              ; $102d: $cd $2e $13
  pop hl                                          ; $1030: $e1
  pop de                                          ; $1031: $d1
  pop bc                                          ; $1032: $c1
  ret                                             ; $1033: $c9


  push bc                                         ; $1034: $c5
  push de                                         ; $1035: $d5
  push hl                                         ; $1036: $e5
  ld a, $08                                       ; $1037: $3e $08
  ld hl, $56d8                                    ; $1039: $21 $d8 $56
  call Call_000_2ab5                              ; $103c: $cd $b5 $2a
  ld a, [$cdc4]                                   ; $103f: $fa $c4 $cd
  ld c, a                                         ; $1042: $4f
  ld b, $00                                       ; $1043: $06 $00
  ld de, $d400                                    ; $1045: $11 $00 $d4
  call Call_000_132e                              ; $1048: $cd $2e $13
  pop hl                                          ; $104b: $e1
  pop de                                          ; $104c: $d1
  pop bc                                          ; $104d: $c1
  ret                                             ; $104e: $c9


  push af                                         ; $104f: $f5
  ld a, l                                         ; $1050: $7d
  ldh [$ffb9], a                                  ; $1051: $e0 $b9
  ld a, h                                         ; $1053: $7c
  ldh [$ffba], a                                  ; $1054: $e0 $ba
  pop af                                          ; $1056: $f1
  push af                                         ; $1057: $f5
  ld l, c                                         ; $1058: $69
  ld h, b                                         ; $1059: $60
  call Call_000_2a76                              ; $105a: $cd $76 $2a
  pop af                                          ; $105d: $f1
  ret                                             ; $105e: $c9


  ldh [$ffbd], a                                  ; $105f: $e0 $bd
  ldh a, [rSVBK]                                  ; $1061: $f0 $70
  push af                                         ; $1063: $f5
  ld a, $01                                       ; $1064: $3e $01
  ldh [rSVBK], a                                  ; $1066: $e0 $70
  ldh a, [$ffbd]                                  ; $1068: $f0 $bd
  push hl                                         ; $106a: $e5
  ld l, c                                         ; $106b: $69
  ld h, b                                         ; $106c: $60
  call Call_000_2ab5                              ; $106d: $cd $b5 $2a
  pop bc                                          ; $1070: $c1
  ld b, $00                                       ; $1071: $06 $00
  call Call_000_1330                              ; $1073: $cd $30 $13
  pop af                                          ; $1076: $f1
  ldh [rSVBK], a                                  ; $1077: $e0 $70
  ret                                             ; $1079: $c9


  push bc                                         ; $107a: $c5
  push de                                         ; $107b: $d5
  push hl                                         ; $107c: $e5
  push af                                         ; $107d: $f5
  ld a, $08                                       ; $107e: $3e $08
  ld [$2000], a                                   ; $1080: $ea $00 $20
  pop af                                          ; $1083: $f1
  call $7392                                      ; $1084: $cd $92 $73
  push de                                         ; $1087: $d5
  ld hl, $65ff                                    ; $1088: $21 $ff $65
  call Call_000_3331                              ; $108b: $cd $31 $33
  pop de                                          ; $108e: $d1
  add hl, de                                      ; $108f: $19
  ld de, $c056                                    ; $1090: $11 $56 $c0
  call Call_000_025d                              ; $1093: $cd $5d $02
  pop hl                                          ; $1096: $e1
  pop de                                          ; $1097: $d1
  pop bc                                          ; $1098: $c1
  ret                                             ; $1099: $c9


  push bc                                         ; $109a: $c5
  push de                                         ; $109b: $d5
  push hl                                         ; $109c: $e5
  ld hl, $65ff                                    ; $109d: $21 $ff $65
  call Call_000_3331                              ; $10a0: $cd $31 $33
  ld de, $0050                                    ; $10a3: $11 $50 $00
  add hl, de                                      ; $10a6: $19
  ld de, $c056                                    ; $10a7: $11 $56 $c0
  call Call_000_025d                              ; $10aa: $cd $5d $02
  pop hl                                          ; $10ad: $e1
  pop de                                          ; $10ae: $d1
  pop bc                                          ; $10af: $c1
  ret                                             ; $10b0: $c9


  call Call_000_338c                              ; $10b1: $cd $8c $33
  ld hl, $c081                                    ; $10b4: $21 $81 $c0
  ld [hl], $00                                    ; $10b7: $36 $00
  inc hl                                          ; $10b9: $23
  ld [hl], $d0                                    ; $10ba: $36 $d0
  ret                                             ; $10bc: $c9


Call_000_10bd:
  ld bc, $2778                                    ; $10bd: $01 $78 $27
  ld de, $0004                                    ; $10c0: $11 $04 $00
  call Call_000_0382                              ; $10c3: $cd $82 $03

jr_000_10c6:
  ld a, [hl]                                      ; $10c6: $7e
  cp c                                            ; $10c7: $b9
  jr c, jr_000_10cb                               ; $10c8: $38 $01

  ld [hl], d                                      ; $10ca: $72

jr_000_10cb:
  add hl, de                                      ; $10cb: $19
  dec b                                           ; $10cc: $05
  jr nz, jr_000_10c6                              ; $10cd: $20 $f7

  ret                                             ; $10cf: $c9


Jump_000_10d0:
  ld hl, $000b                                    ; $10d0: $21 $0b $00
  add hl, bc                                      ; $10d3: $09
  ld a, [hl+]                                     ; $10d4: $2a
  ld d, [hl]                                      ; $10d5: $56
  inc hl                                          ; $10d6: $23
  add a                                           ; $10d7: $87
  rl d                                            ; $10d8: $cb $12
  add a                                           ; $10da: $87
  rl d                                            ; $10db: $cb $12
  add a                                           ; $10dd: $87
  rl d                                            ; $10de: $cb $12
  ld e, d                                         ; $10e0: $5a
  ld a, [hl+]                                     ; $10e1: $2a
  ld h, [hl]                                      ; $10e2: $66
  add a                                           ; $10e3: $87
  rl h                                            ; $10e4: $cb $14
  add a                                           ; $10e6: $87
  rl h                                            ; $10e7: $cb $14
  add a                                           ; $10e9: $87
  rl h                                            ; $10ea: $cb $14
  ld d, h                                         ; $10ec: $54
  ld a, [$cdae]                                   ; $10ed: $fa $ae $cd
  ld [$2000], a                                   ; $10f0: $ea $00 $20
  ld hl, $0003                                    ; $10f3: $21 $03 $00
  add hl, bc                                      ; $10f6: $09
  ld a, [hl]                                      ; $10f7: $7e
  push bc                                         ; $10f8: $c5
  inc a                                           ; $10f9: $3c
  ld c, a                                         ; $10fa: $4f
  ld hl, $cdaf                                    ; $10fb: $21 $af $cd
  ld a, [hl+]                                     ; $10fe: $2a
  ld h, [hl]                                      ; $10ff: $66

Call_000_1100:
  ld l, a                                         ; $1100: $6f
  ld a, [hl+]                                     ; $1101: $2a
  sub c                                           ; $1102: $91
  ld b, a                                         ; $1103: $47
  ld a, c                                         ; $1104: $79
  push de                                         ; $1105: $d5
  call Call_000_3182                              ; $1106: $cd $82 $31
  ld hl, $cdaf                                    ; $1109: $21 $af $cd
  ld a, [hl+]                                     ; $110c: $2a
  ld h, [hl]                                      ; $110d: $66
  ld l, a                                         ; $110e: $6f
  add hl, de                                      ; $110f: $19
  pop de                                          ; $1110: $d1

jr_000_1111:
  ld a, [hl+]                                     ; $1111: $2a
  cp e                                            ; $1112: $bb
  ld a, [hl+]                                     ; $1113: $2a
  jr nz, jr_000_1119                              ; $1114: $20 $03

  cp d                                            ; $1116: $ba
  jr z, jr_000_1122                               ; $1117: $28 $09

jr_000_1119:
  inc hl                                          ; $1119: $23
  ld a, [hl+]                                     ; $111a: $2a
  rst $08                                         ; $111b: $cf
  inc c                                           ; $111c: $0c
  dec b                                           ; $111d: $05
  jr nz, jr_000_1111                              ; $111e: $20 $f1

  ld c, $ff                                       ; $1120: $0e $ff

jr_000_1122:
  ld a, c                                         ; $1122: $79
  pop bc                                          ; $1123: $c1
  ld hl, $0002                                    ; $1124: $21 $02 $00
  add hl, bc                                      ; $1127: $09
  ld [hl], $ff                                    ; $1128: $36 $ff
  inc hl                                          ; $112a: $23
  ld [hl], a                                      ; $112b: $77
  ret                                             ; $112c: $c9


Call_000_112d:
jr_000_112d:
  ld a, [$cdae]                                   ; $112d: $fa $ae $cd
  ld [$2000], a                                   ; $1130: $ea $00 $20
  ld hl, $0002                                    ; $1133: $21 $02 $00
  add hl, bc                                      ; $1136: $09
  ld a, [hl+]                                     ; $1137: $2a
  inc a                                           ; $1138: $3c
  ld e, [hl]                                      ; $1139: $5e
  ld d, $00                                       ; $113a: $16 $00
  sla e                                           ; $113c: $cb $23
  rl d                                            ; $113e: $cb $12
  push af                                         ; $1140: $f5
  ld hl, $cdaf                                    ; $1141: $21 $af $cd
  ld a, [hl+]                                     ; $1144: $2a
  ld h, [hl]                                      ; $1145: $66
  ld l, a                                         ; $1146: $6f
  inc hl                                          ; $1147: $23
  add hl, de                                      ; $1148: $19
  ld a, [hl+]                                     ; $1149: $2a
  ld d, [hl]                                      ; $114a: $56
  ld e, a                                         ; $114b: $5f
  ld hl, $cdaf                                    ; $114c: $21 $af $cd
  ld a, [hl+]                                     ; $114f: $2a
  ld h, [hl]                                      ; $1150: $66
  ld l, a                                         ; $1151: $6f
  add hl, de                                      ; $1152: $19
  pop af                                          ; $1153: $f1
  inc hl                                          ; $1154: $23
  inc hl                                          ; $1155: $23
  inc hl                                          ; $1156: $23
  cp [hl]                                         ; $1157: $be
  ret c                                           ; $1158: $d8

  ld e, $ff                                       ; $1159: $1e $ff
  dec hl                                          ; $115b: $2b
  ld a, [hl]                                      ; $115c: $7e
  ld hl, $0002                                    ; $115d: $21 $02 $00
  add hl, bc                                      ; $1160: $09
  ld [hl], e                                      ; $1161: $73
  jr jr_000_112d                                  ; $1162: $18 $c9

  ret                                             ; $1164: $c9


  call Call_000_112d                              ; $1165: $cd $2d $11
  ld e, a                                         ; $1168: $5f
  ldh a, [rSVBK]                                  ; $1169: $f0 $70
  push af                                         ; $116b: $f5
  ld a, $02                                       ; $116c: $3e $02
  ldh [rSVBK], a                                  ; $116e: $e0 $70
  ld a, [$4000]                                   ; $1170: $fa $00 $40
  push af                                         ; $1173: $f5
  ld a, e                                         ; $1174: $7b
  inc hl                                          ; $1175: $23
  rst $08                                         ; $1176: $cf
  ld hl, $0002                                    ; $1177: $21 $02 $00
  add hl, bc                                      ; $117a: $09
  ld [hl], e                                      ; $117b: $73
  push af                                         ; $117c: $f5
  ld hl, $000b                                    ; $117d: $21 $0b $00
  add hl, bc                                      ; $1180: $09
  ld a, [hl+]                                     ; $1181: $2a
  ld e, a                                         ; $1182: $5f
  ld a, [hl+]                                     ; $1183: $2a
  ld d, a                                         ; $1184: $57
  ld a, [hl+]                                     ; $1185: $2a
  ld h, [hl]                                      ; $1186: $66
  ld l, a                                         ; $1187: $6f
  push bc                                         ; $1188: $c5
  ld a, $1e                                       ; $1189: $3e $1e
  ld [$2000], a                                   ; $118b: $ea $00 $20
  call $5223                                      ; $118e: $cd $23 $52
  call $5238                                      ; $1191: $cd $38 $52
  pop bc                                          ; $1194: $c1
  pop af                                          ; $1195: $f1
  ld [hl], a                                      ; $1196: $77
  call $4e2e                                      ; $1197: $cd $2e $4e
  pop af                                          ; $119a: $f1
  ld [$2000], a                                   ; $119b: $ea $00 $20
  pop af                                          ; $119e: $f1
  ldh [rSVBK], a                                  ; $119f: $e0 $70
  ret                                             ; $11a1: $c9


Call_000_11a2:
  push de                                         ; $11a2: $d5
  ld a, [$cd39]                                   ; $11a3: $fa $39 $cd

jr_000_11a6:
  push af                                         ; $11a6: $f5
  push de                                         ; $11a7: $d5
  ld a, [$cd37]                                   ; $11a8: $fa $37 $cd
  ld c, a                                         ; $11ab: $4f
  call Call_000_12a6                              ; $11ac: $cd $a6 $12
  pop de                                          ; $11af: $d1
  ld a, e                                         ; $11b0: $7b
  add $20                                         ; $11b1: $c6 $20
  ld e, a                                         ; $11b3: $5f
  ld a, d                                         ; $11b4: $7a
  adc $00                                         ; $11b5: $ce $00
  ld d, a                                         ; $11b7: $57
  pop af                                          ; $11b8: $f1
  dec a                                           ; $11b9: $3d
  jr nz, jr_000_11a6                              ; $11ba: $20 $ea

  pop de                                          ; $11bc: $d1
  ldh a, [$fff2]                                  ; $11bd: $f0 $f2
  or a                                            ; $11bf: $b7
  ret z                                           ; $11c0: $c8

  ld a, $01                                       ; $11c1: $3e $01
  ldh [rVBK], a                                   ; $11c3: $e0 $4f
  ld a, [$cd39]                                   ; $11c5: $fa $39 $cd

jr_000_11c8:
  push af                                         ; $11c8: $f5
  push de                                         ; $11c9: $d5
  ld a, [$cd37]                                   ; $11ca: $fa $37 $cd
  ld c, a                                         ; $11cd: $4f
  call Call_000_12a6                              ; $11ce: $cd $a6 $12
  pop de                                          ; $11d1: $d1
  ld a, e                                         ; $11d2: $7b
  add $20                                         ; $11d3: $c6 $20
  ld e, a                                         ; $11d5: $5f
  ld a, d                                         ; $11d6: $7a
  adc $00                                         ; $11d7: $ce $00
  ld d, a                                         ; $11d9: $57
  pop af                                          ; $11da: $f1
  dec a                                           ; $11db: $3d
  jr nz, jr_000_11c8                              ; $11dc: $20 $ea

  xor a                                           ; $11de: $af
  ldh [rVBK], a                                   ; $11df: $e0 $4f
  ret                                             ; $11e1: $c9


Call_000_11e2:
  ld c, $00                                       ; $11e2: $0e $00
  ld a, $20                                       ; $11e4: $3e $20
  ldh [c], a                                      ; $11e6: $e2
  ldh a, [c]                                      ; $11e7: $f2
  ldh a, [c]                                      ; $11e8: $f2
  cpl                                             ; $11e9: $2f
  and $0f                                         ; $11ea: $e6 $0f
  swap a                                          ; $11ec: $cb $37
  ld b, a                                         ; $11ee: $47
  ld a, $10                                       ; $11ef: $3e $10
  ldh [c], a                                      ; $11f1: $e2
  ldh a, [c]                                      ; $11f2: $f2
  ldh a, [c]                                      ; $11f3: $f2
  ldh a, [c]                                      ; $11f4: $f2
  ldh a, [c]                                      ; $11f5: $f2
  ldh a, [c]                                      ; $11f6: $f2
  ldh a, [c]                                      ; $11f7: $f2
  cpl                                             ; $11f8: $2f
  and $0f                                         ; $11f9: $e6 $0f
  or b                                            ; $11fb: $b0
  ld c, a                                         ; $11fc: $4f
  ldh a, [$ffa5]                                  ; $11fd: $f0 $a5
  xor c                                           ; $11ff: $a9
  and c                                           ; $1200: $a1

Jump_000_1201:
  ldh [$ffa6], a                                  ; $1201: $e0 $a6
  ld a, c                                         ; $1203: $79
  ldh [$ffa5], a                                  ; $1204: $e0 $a5
  ld a, $30                                       ; $1206: $3e $30
  ldh [rP1], a                                    ; $1208: $e0 $00
  ldh a, [$ffa5]                                  ; $120a: $f0 $a5
  or a                                            ; $120c: $b7
  jr nz, jr_000_1218                              ; $120d: $20 $09

  ld a, [$c0a1]                                   ; $120f: $fa $a1 $c0
  or a                                            ; $1212: $b7
  jp nz, Jump_000_3121                            ; $1213: $c2 $21 $31

  ldh a, [$ffa5]                                  ; $1216: $f0 $a5

jr_000_1218:
  and $0f                                         ; $1218: $e6 $0f
  cp $0f                                          ; $121a: $fe $0f
  ret nz                                          ; $121c: $c0

  ld a, $01                                       ; $121d: $3e $01
  ld [$c0a1], a                                   ; $121f: $ea $a1 $c0
  ret                                             ; $1222: $c9


Call_000_1223:
  ldh a, [$ffc8]                                  ; $1223: $f0 $c8
  ldh [rSCX], a                                   ; $1225: $e0 $43
  ldh a, [$ffc9]                                  ; $1227: $f0 $c9
  ldh [rSCY], a                                   ; $1229: $e0 $42
  ret                                             ; $122b: $c9


  ld hl, $ff40                                    ; $122c: $21 $40 $ff
  res 7, [hl]                                     ; $122f: $cb $be
  ret                                             ; $1231: $c9


Call_000_1232:
Jump_000_1232:
  ld hl, $ff40                                    ; $1232: $21 $40 $ff
  set 7, [hl]                                     ; $1235: $cb $fe
  ret                                             ; $1237: $c9


  ld c, $00                                       ; $1238: $0e $00
  jr jr_000_123e                                  ; $123a: $18 $02

Call_000_123c:
  ld c, $01                                       ; $123c: $0e $01

jr_000_123e:
  ld l, a                                         ; $123e: $6f
  ld a, $01                                       ; $123f: $3e $01
  ld [$2000], a                                   ; $1241: $ea $00 $20
  ld a, l                                         ; $1244: $7d
  jp $466f                                        ; $1245: $c3 $6f $46


Call_000_1248:
Jump_000_1248:
  xor a                                           ; $1248: $af

Call_000_1249:
Jump_000_1249:
  inc b                                           ; $1249: $04
  inc c                                           ; $124a: $0c
  jr jr_000_124e                                  ; $124b: $18 $01

jr_000_124d:
  ld [hl+], a                                     ; $124d: $22

jr_000_124e:
  dec c                                           ; $124e: $0d
  jr nz, jr_000_124d                              ; $124f: $20 $fc

  dec b                                           ; $1251: $05
  jr nz, jr_000_124d                              ; $1252: $20 $f9

  ret                                             ; $1254: $c9


Call_000_1255:
  inc b                                           ; $1255: $04
  inc c                                           ; $1256: $0c
  jr jr_000_125c                                  ; $1257: $18 $03

jr_000_1259:
  ld a, [hl-]                                     ; $1259: $3a
  ld [de], a                                      ; $125a: $12
  dec de                                          ; $125b: $1b

jr_000_125c:
  dec c                                           ; $125c: $0d
  jr nz, jr_000_1259                              ; $125d: $20 $fa

  dec b                                           ; $125f: $05
  jr nz, jr_000_1259                              ; $1260: $20 $f7

  ret                                             ; $1262: $c9


  push bc                                         ; $1263: $c5
  push hl                                         ; $1264: $e5
  push de                                         ; $1265: $d5
  push de                                         ; $1266: $d5
  ld d, h                                         ; $1267: $54
  ld e, l                                         ; $1268: $5d
  pop hl                                          ; $1269: $e1
  add hl, bc                                      ; $126a: $09
  ld de, $9800                                    ; $126b: $11 $00 $98
  rst $10                                         ; $126e: $d7
  jr nc, jr_000_1297                              ; $126f: $30 $26

  call Call_000_01ee                              ; $1271: $cd $ee $01
  push de                                         ; $1274: $d5
  ld d, h                                         ; $1275: $54
  ld e, l                                         ; $1276: $5d

Call_000_1277:
  pop hl                                          ; $1277: $e1
  add hl, bc                                      ; $1278: $09
  ld c, l                                         ; $1279: $4d
  ld b, h                                         ; $127a: $44
  pop de                                          ; $127b: $d1
  pop hl                                          ; $127c: $e1
  push bc                                         ; $127d: $c5
  call Call_000_129c                              ; $127e: $cd $9c $12
  push af                                         ; $1281: $f5
  ld a, $01                                       ; $1282: $3e $01
  ldh [rVBK], a                                   ; $1284: $e0 $4f
  pop af                                          ; $1286: $f1
  pop bc                                          ; $1287: $c1
  pop de                                          ; $1288: $d1
  push hl                                         ; $1289: $e5
  ld l, c                                         ; $128a: $69
  ld h, b                                         ; $128b: $60
  call Call_000_01ee                              ; $128c: $cd $ee $01
  ld c, e                                         ; $128f: $4b
  ld b, d                                         ; $1290: $42
  ld de, $8800                                    ; $1291: $11 $00 $88
  pop hl                                          ; $1294: $e1
  jr jr_000_129c                                  ; $1295: $18 $05

jr_000_1297:
  pop de                                          ; $1297: $d1
  pop hl                                          ; $1298: $e1
  pop bc                                          ; $1299: $c1
  jr jr_000_129c                                  ; $129a: $18 $00

Call_000_129c:
jr_000_129c:
  ld a, b                                         ; $129c: $78
  or a                                            ; $129d: $b7
  jr z, jr_000_12a6                               ; $129e: $28 $06

jr_000_12a0:
  call Call_000_0200                              ; $12a0: $cd $00 $02
  dec b                                           ; $12a3: $05
  jr nz, jr_000_12a0                              ; $12a4: $20 $fa

Call_000_12a6:
Jump_000_12a6:
jr_000_12a6:
  ld a, c                                         ; $12a6: $79
  and $1f                                         ; $12a7: $e6 $1f
  jr z, jr_000_12bb                               ; $12a9: $28 $10

  cpl                                             ; $12ab: $2f
  inc a                                           ; $12ac: $3c
  add $1f                                         ; $12ad: $c6 $1f
  ld b, a                                         ; $12af: $47
  add b                                           ; $12b0: $80
  add b                                           ; $12b1: $80
  add $18                                         ; $12b2: $c6 $18
  ld b, c                                         ; $12b4: $41
  ld c, a                                         ; $12b5: $4f
  ld a, b                                         ; $12b6: $78
  ld b, $02                                       ; $12b7: $06 $02
  push bc                                         ; $12b9: $c5
  ld c, a                                         ; $12ba: $4f

jr_000_12bb:
  ld a, c                                         ; $12bb: $79
  and $e0                                         ; $12bc: $e6 $e0
  jr z, jr_000_12ce                               ; $12be: $28 $0e

  swap a                                          ; $12c0: $cb $37
  rra                                             ; $12c2: $1f
  cpl                                             ; $12c3: $2f
  inc a                                           ; $12c4: $3c
  add $08                                         ; $12c5: $c6 $08
  ld c, a                                         ; $12c7: $4f
  add c                                           ; $12c8: $81
  add c                                           ; $12c9: $81
  ld b, $02                                       ; $12ca: $06 $02
  ld c, a                                         ; $12cc: $4f
  push bc                                         ; $12cd: $c5

jr_000_12ce:
  ld bc, $0000                                    ; $12ce: $01 $00 $00
  ret                                             ; $12d1: $c9


Call_000_12d2:
  push hl                                         ; $12d2: $e5
  ld hl, $ffb9                                    ; $12d3: $21 $b9 $ff
  ld e, [hl]                                      ; $12d6: $5e
  inc hl                                          ; $12d7: $23
  ld d, [hl]                                      ; $12d8: $56
  xor a                                           ; $12d9: $af
  ld hl, $fe80                                    ; $12da: $21 $80 $fe
  add hl, de                                      ; $12dd: $19
  jr nc, jr_000_12e3                              ; $12de: $30 $03

  inc a                                           ; $12e0: $3c
  ld e, l                                         ; $12e1: $5d
  ld d, h                                         ; $12e2: $54

jr_000_12e3:
  ld [$c2c4], a                                   ; $12e3: $ea $c4 $c2
  ldh a, [rLCDC]                                  ; $12e6: $f0 $40
  rla                                             ; $12e8: $17
  jr c, jr_000_12f6                               ; $12e9: $38 $0b

  push hl                                         ; $12eb: $e5
  ld a, [$c2c4]                                   ; $12ec: $fa $c4 $c2
  ld hl, $ff4f                                    ; $12ef: $21 $4f $ff
  xor [hl]                                        ; $12f2: $ae
  ldh [rVBK], a                                   ; $12f3: $e0 $4f
  pop hl                                          ; $12f5: $e1

jr_000_12f6:
  call Call_000_3142                              ; $12f6: $cd $42 $31
  set 7, d                                        ; $12f9: $cb $fa
  pop hl                                          ; $12fb: $e1
  ret                                             ; $12fc: $c9


Call_000_12fd:
  sra b                                           ; $12fd: $cb $28
  rr c                                            ; $12ff: $cb $19
  sra b                                           ; $1301: $cb $28
  rr c                                            ; $1303: $cb $19
  sra b                                           ; $1305: $cb $28
  rr c                                            ; $1307: $cb $19
  sra b                                           ; $1309: $cb $28
  rr c                                            ; $130b: $cb $19
  ld hl, $ffb9                                    ; $130d: $21 $b9 $ff
  ld a, [hl+]                                     ; $1310: $2a
  ld h, [hl]                                      ; $1311: $66
  ld l, a                                         ; $1312: $6f
  ld e, l                                         ; $1313: $5d
  ld d, h                                         ; $1314: $54
  add hl, bc                                      ; $1315: $09
  ld a, l                                         ; $1316: $7d
  ldh [$ffb9], a                                  ; $1317: $e0 $b9
  ld a, h                                         ; $1319: $7c
  ldh [$ffba], a                                  ; $131a: $e0 $ba
  ret                                             ; $131c: $c9


Call_000_131d:
  push hl                                         ; $131d: $e5
  ld l, d                                         ; $131e: $6a
  ld h, $00                                       ; $131f: $26 $00
  call Call_000_01f5                              ; $1321: $cd $f5 $01
  ld a, e                                         ; $1324: $7b
  rst $08                                         ; $1325: $cf
  ld de, $d000                                    ; $1326: $11 $00 $d0
  add hl, de                                      ; $1329: $19
  ld d, h                                         ; $132a: $54
  ld e, l                                         ; $132b: $5d
  pop hl                                          ; $132c: $e1
  ret                                             ; $132d: $c9


Call_000_132e:
  ld b, $00                                       ; $132e: $06 $00

Call_000_1330:
  ld a, b                                         ; $1330: $78
  ldh [$fff9], a                                  ; $1331: $e0 $f9
  push de                                         ; $1333: $d5
  call Call_000_134b                              ; $1334: $cd $4b $13
  pop de                                          ; $1337: $d1
  push hl                                         ; $1338: $e5
  ld hl, $0500                                    ; $1339: $21 $00 $05
  add hl, de                                      ; $133c: $19
  ld e, l                                         ; $133d: $5d
  ld d, h                                         ; $133e: $54
  pop hl                                          ; $133f: $e1
  ldh a, [$fff9]                                  ; $1340: $f0 $f9
  ld c, a                                         ; $1342: $4f
  call Call_000_134b                              ; $1343: $cd $4b $13
  ld a, $01                                       ; $1346: $3e $01
  ldh [$ffa9], a                                  ; $1348: $e0 $a9
  ret                                             ; $134a: $c9


Call_000_134b:
  ldh a, [rSVBK]                                  ; $134b: $f0 $70
  push af                                         ; $134d: $f5
  ld a, $01                                       ; $134e: $3e $01
  ldh [rSVBK], a                                  ; $1350: $e0 $70
  ld a, [$cd39]                                   ; $1352: $fa $39 $cd

jr_000_1355:
  push af                                         ; $1355: $f5
  push de                                         ; $1356: $d5
  ld a, [$cd37]                                   ; $1357: $fa $37 $cd
  ld b, a                                         ; $135a: $47

jr_000_135b:
  ld a, [hl+]                                     ; $135b: $2a
  add c                                           ; $135c: $81
  ldh [$ffbd], a                                  ; $135d: $e0 $bd
  ldh a, [rSVBK]                                  ; $135f: $f0 $70
  push af                                         ; $1361: $f5
  ld a, $03                                       ; $1362: $3e $03
  ldh [rSVBK], a                                  ; $1364: $e0 $70
  ldh a, [$ffbd]                                  ; $1366: $f0 $bd
  ld [de], a                                      ; $1368: $12
  pop af                                          ; $1369: $f1
  ldh [rSVBK], a                                  ; $136a: $e0 $70
  inc de                                          ; $136c: $13
  dec b                                           ; $136d: $05
  jr nz, jr_000_135b                              ; $136e: $20 $eb

  pop de                                          ; $1370: $d1
  ld a, $20                                       ; $1371: $3e $20
  add e                                           ; $1373: $83
  ld e, a                                         ; $1374: $5f
  jr nc, jr_000_1378                              ; $1375: $30 $01

  inc d                                           ; $1377: $14

jr_000_1378:
  pop af                                          ; $1378: $f1
  dec a                                           ; $1379: $3d
  jr nz, jr_000_1355                              ; $137a: $20 $d9

  pop af                                          ; $137c: $f1
  ldh [rSVBK], a                                  ; $137d: $e0 $70
  ret                                             ; $137f: $c9


Call_000_1380:
Jump_000_1380:
  ldh a, [rSVBK]                                  ; $1380: $f0 $70
  push af                                         ; $1382: $f5
  ld a, $03                                       ; $1383: $3e $03
  ldh [rSVBK], a                                  ; $1385: $e0 $70
  ld a, $20                                       ; $1387: $3e $20
  ld [$cd37], a                                   ; $1389: $ea $37 $cd
  ld a, $28                                       ; $138c: $3e $28
  ld [$cd39], a                                   ; $138e: $ea $39 $cd
  ld hl, $d000                                    ; $1391: $21 $00 $d0
  call Call_000_139d                              ; $1394: $cd $9d $13
  pop af                                          ; $1397: $f1
  ldh [rSVBK], a                                  ; $1398: $e0 $70
  ret                                             ; $139a: $c9


Jump_000_139b:
  ld b, $00                                       ; $139b: $06 $00

Call_000_139d:
  ld a, b                                         ; $139d: $78
  ldh [$fff9], a                                  ; $139e: $e0 $f9
  ldh a, [$fff6]                                  ; $13a0: $f0 $f6
  or a                                            ; $13a2: $b7
  jr z, jr_000_13b2                               ; $13a3: $28 $0d

  push de                                         ; $13a5: $d5
  push hl                                         ; $13a6: $e5
  ld l, a                                         ; $13a7: $6f
  ld a, [$cd37]                                   ; $13a8: $fa $37 $cd
  ld h, a                                         ; $13ab: $67
  call Call_000_009c                              ; $13ac: $cd $9c $00
  pop de                                          ; $13af: $d1
  add hl, de                                      ; $13b0: $19
  pop de                                          ; $13b1: $d1

jr_000_13b2:
  ldh a, [$fff5]                                  ; $13b2: $f0 $f5
  rst $08                                         ; $13b4: $cf
  push hl                                         ; $13b5: $e5
  push de                                         ; $13b6: $d5
  call Call_000_13df                              ; $13b7: $cd $df $13
  pop de                                          ; $13ba: $d1
  pop hl                                          ; $13bb: $e1
  push hl                                         ; $13bc: $e5
  ld hl, $0500                                    ; $13bd: $21 $00 $05
  add hl, de                                      ; $13c0: $19
  ld e, l                                         ; $13c1: $5d
  ld d, h                                         ; $13c2: $54
  pop hl                                          ; $13c3: $e1
  push de                                         ; $13c4: $d5
  ld d, h                                         ; $13c5: $54
  ld e, l                                         ; $13c6: $5d
  ld a, [$cd37]                                   ; $13c7: $fa $37 $cd
  ld h, a                                         ; $13ca: $67
  ld a, [$cd39]                                   ; $13cb: $fa $39 $cd
  ld l, a                                         ; $13ce: $6f
  call Call_000_009c                              ; $13cf: $cd $9c $00
  add hl, de                                      ; $13d2: $19
  pop de                                          ; $13d3: $d1
  ldh a, [$fff9]                                  ; $13d4: $f0 $f9
  ld c, a                                         ; $13d6: $4f
  call Call_000_13df                              ; $13d7: $cd $df $13
  ld a, $02                                       ; $13da: $3e $02
  ldh [$ffa9], a                                  ; $13dc: $e0 $a9
  ret                                             ; $13de: $c9


Call_000_13df:
  ldh a, [$fff8]                                  ; $13df: $f0 $f8

jr_000_13e1:
  push af                                         ; $13e1: $f5
  push de                                         ; $13e2: $d5
  push hl                                         ; $13e3: $e5
  ldh a, [$fff7]                                  ; $13e4: $f0 $f7
  ld b, a                                         ; $13e6: $47

jr_000_13e7:
  ld a, [hl+]                                     ; $13e7: $2a
  add c                                           ; $13e8: $81
  ldh [$ffbd], a                                  ; $13e9: $e0 $bd
  ldh a, [rSVBK]                                  ; $13eb: $f0 $70
  push af                                         ; $13ed: $f5
  ld a, $03                                       ; $13ee: $3e $03
  ldh [rSVBK], a                                  ; $13f0: $e0 $70
  ldh a, [$ffbd]                                  ; $13f2: $f0 $bd
  ld [de], a                                      ; $13f4: $12
  pop af                                          ; $13f5: $f1
  ldh [rSVBK], a                                  ; $13f6: $e0 $70
  inc de                                          ; $13f8: $13
  dec b                                           ; $13f9: $05
  jr nz, jr_000_13e7                              ; $13fa: $20 $eb

  ld hl, $cd37                                    ; $13fc: $21 $37 $cd
  ld e, [hl]                                      ; $13ff: $5e
  inc hl                                          ; $1400: $23
  ld d, [hl]                                      ; $1401: $56
  pop hl                                          ; $1402: $e1
  add hl, de                                      ; $1403: $19
  pop de                                          ; $1404: $d1
  ld a, $20                                       ; $1405: $3e $20
  add e                                           ; $1407: $83
  ld e, a                                         ; $1408: $5f
  jr nc, jr_000_140c                              ; $1409: $30 $01

  inc d                                           ; $140b: $14

jr_000_140c:
  pop af                                          ; $140c: $f1
  dec a                                           ; $140d: $3d
  jr nz, jr_000_13e1                              ; $140e: $20 $d1

  ret                                             ; $1410: $c9


Call_000_1411:
Jump_000_1411:
  ldh a, [rSVBK]                                  ; $1411: $f0 $70
  push af                                         ; $1413: $f5
  ld a, $03                                       ; $1414: $3e $03
  ldh [rSVBK], a                                  ; $1416: $e0 $70
  ld a, $20                                       ; $1418: $3e $20
  ld [$cd37], a                                   ; $141a: $ea $37 $cd
  ld a, $28                                       ; $141d: $3e $28
  ld [$cd39], a                                   ; $141f: $ea $39 $cd
  ld hl, $d000                                    ; $1422: $21 $00 $d0
  call Call_000_142c                              ; $1425: $cd $2c $14
  pop af                                          ; $1428: $f1
  ldh [rSVBK], a                                  ; $1429: $e0 $70
  ret                                             ; $142b: $c9


Call_000_142c:
  push bc                                         ; $142c: $c5
  ld a, l                                         ; $142d: $7d
  ldh [$ffb4], a                                  ; $142e: $e0 $b4
  ld a, h                                         ; $1430: $7c
  ldh [$ffb5], a                                  ; $1431: $e0 $b5
  ld h, d                                         ; $1433: $62
  ld l, e                                         ; $1434: $6b
  ld a, [hl+]                                     ; $1435: $2a
  push af                                         ; $1436: $f5
  ld a, [hl+]                                     ; $1437: $2a
  ld b, a                                         ; $1438: $47
  ld a, [hl+]                                     ; $1439: $2a
  ld c, a                                         ; $143a: $4f
  pop af                                          ; $143b: $f1

jr_000_143c:
  push af                                         ; $143c: $f5
  push bc                                         ; $143d: $c5
  ld a, [hl+]                                     ; $143e: $2a
  ldh [$fff5], a                                  ; $143f: $e0 $f5
  ld a, [hl+]                                     ; $1441: $2a
  ldh [$fff6], a                                  ; $1442: $e0 $f6
  ld a, [hl+]                                     ; $1444: $2a
  ldh [$fff7], a                                  ; $1445: $e0 $f7
  ld a, [hl+]                                     ; $1447: $2a
  ldh [$fff8], a                                  ; $1448: $e0 $f8
  ld a, [hl+]                                     ; $144a: $2a
  ld e, a                                         ; $144b: $5f
  ld a, [hl+]                                     ; $144c: $2a
  ld d, a                                         ; $144d: $57
  call Call_000_131d                              ; $144e: $cd $1d $13
  push hl                                         ; $1451: $e5
  ld hl, $ffb4                                    ; $1452: $21 $b4 $ff
  ld a, [hl+]                                     ; $1455: $2a
  ld h, [hl]                                      ; $1456: $66
  ld l, a                                         ; $1457: $6f
  call Call_000_139d                              ; $1458: $cd $9d $13
  pop hl                                          ; $145b: $e1
  pop bc                                          ; $145c: $c1
  pop af                                          ; $145d: $f1
  dec a                                           ; $145e: $3d
  jr nz, jr_000_143c                              ; $145f: $20 $db

  pop bc                                          ; $1461: $c1
  ret                                             ; $1462: $c9


Call_000_1463:
  ldh a, [rSVBK]                                  ; $1463: $f0 $70
  push af                                         ; $1465: $f5
  ld a, $03                                       ; $1466: $3e $03
  ldh [rSVBK], a                                  ; $1468: $e0 $70
  ld a, b                                         ; $146a: $78
  cpl                                             ; $146b: $2f
  ld b, a                                         ; $146c: $47
  ld a, d                                         ; $146d: $7a

jr_000_146e:
  push hl                                         ; $146e: $e5
  push de                                         ; $146f: $d5
  push de                                         ; $1470: $d5
  dec a                                           ; $1471: $3d
  ld e, a                                         ; $1472: $5f
  ld d, $00                                       ; $1473: $16 $00
  call Call_000_313e                              ; $1475: $cd $3e $31
  add hl, de                                      ; $1478: $19
  pop de                                          ; $1479: $d1

jr_000_147a:
  ld a, [hl]                                      ; $147a: $7e
  and b                                           ; $147b: $a0
  or c                                            ; $147c: $b1
  ld [hl+], a                                     ; $147d: $22
  dec e                                           ; $147e: $1d
  xor a                                           ; $147f: $af
  cp e                                            ; $1480: $bb
  jr nz, jr_000_147a                              ; $1481: $20 $f7

  dec d                                           ; $1483: $15
  ld a, d                                         ; $1484: $7a
  pop de                                          ; $1485: $d1
  pop hl                                          ; $1486: $e1
  or a                                            ; $1487: $b7
  jr z, jr_000_148d                               ; $1488: $28 $03

  ld d, a                                         ; $148a: $57
  jr jr_000_146e                                  ; $148b: $18 $e1

jr_000_148d:
  ld a, $02                                       ; $148d: $3e $02
  ldh [$ffa9], a                                  ; $148f: $e0 $a9
  pop af                                          ; $1491: $f1
  ldh [rSVBK], a                                  ; $1492: $e0 $70
  ret                                             ; $1494: $c9


  call Call_000_149f                              ; $1495: $cd $9f $14
  ld a, $02                                       ; $1498: $3e $02
  ldh [$ffa9], a                                  ; $149a: $e0 $a9
  ret                                             ; $149c: $c9


  ld c, $00                                       ; $149d: $0e $00

Call_000_149f:
Jump_000_149f:
  ld b, $ff                                       ; $149f: $06 $ff

Call_000_14a1:
Jump_000_14a1:
  push hl                                         ; $14a1: $e5
  push de                                         ; $14a2: $d5
  ld de, $d000                                    ; $14a3: $11 $00 $d0
  add hl, de                                      ; $14a6: $19
  pop de                                          ; $14a7: $d1
  call Call_000_14b7                              ; $14a8: $cd $b7 $14
  ld a, $ff                                       ; $14ab: $3e $ff
  cp b                                            ; $14ad: $b8
  pop hl                                          ; $14ae: $e1
  ret z                                           ; $14af: $c8

  push de                                         ; $14b0: $d5
  ld de, $d500                                    ; $14b1: $11 $00 $d5
  add hl, de                                      ; $14b4: $19
  pop de                                          ; $14b5: $d1
  ld c, b                                         ; $14b6: $48

Call_000_14b7:
  ldh a, [rSVBK]                                  ; $14b7: $f0 $70
  push af                                         ; $14b9: $f5
  ld a, $03                                       ; $14ba: $3e $03
  ldh [rSVBK], a                                  ; $14bc: $e0 $70
  push bc                                         ; $14be: $c5
  push de                                         ; $14bf: $d5
  push hl                                         ; $14c0: $e5

jr_000_14c1:
  push bc                                         ; $14c1: $c5
  push de                                         ; $14c2: $d5
  push hl                                         ; $14c3: $e5
  ld a, c                                         ; $14c4: $79
  ld c, e                                         ; $14c5: $4b
  ld b, $00                                       ; $14c6: $06 $00
  call Call_000_1249                              ; $14c8: $cd $49 $12
  pop hl                                          ; $14cb: $e1
  pop de                                          ; $14cc: $d1
  ld bc, $0020                                    ; $14cd: $01 $20 $00
  add hl, bc                                      ; $14d0: $09
  pop bc                                          ; $14d1: $c1
  dec d                                           ; $14d2: $15
  jr nz, jr_000_14c1                              ; $14d3: $20 $ec

  pop hl                                          ; $14d5: $e1
  pop de                                          ; $14d6: $d1
  pop bc                                          ; $14d7: $c1
  pop af                                          ; $14d8: $f1
  ldh [rSVBK], a                                  ; $14d9: $e0 $70
  ret                                             ; $14db: $c9


Call_000_14dc:
  ld c, a                                         ; $14dc: $4f
  ld b, $00                                       ; $14dd: $06 $00
  push hl                                         ; $14df: $e5
  ld h, b                                         ; $14e0: $60
  ld l, b                                         ; $14e1: $68
  add hl, bc                                      ; $14e2: $09
  add hl, bc                                      ; $14e3: $09
  add hl, bc                                      ; $14e4: $09
  ld c, l                                         ; $14e5: $4d
  ld b, h                                         ; $14e6: $44
  pop hl                                          ; $14e7: $e1
  ret                                             ; $14e8: $c9


  ld a, $0a                                       ; $14e9: $3e $0a
  ldh [$ffc2], a                                  ; $14eb: $e0 $c2
  ld hl, $caef                                    ; $14ed: $21 $ef $ca
  xor a                                           ; $14f0: $af
  ld [hl+], a                                     ; $14f1: $22
  ld [hl+], a                                     ; $14f2: $22
  ld [hl+], a                                     ; $14f3: $22
  ld [hl], a                                      ; $14f4: $77
  ld a, $ff                                       ; $14f5: $3e $ff
  ld [$cd5b], a                                   ; $14f7: $ea $5b $cd
  ld a, $0a                                       ; $14fa: $3e $0a
  ld [$2000], a                                   ; $14fc: $ea $00 $20
  call $7e91                                      ; $14ff: $cd $91 $7e
  ld a, $03                                       ; $1502: $3e $03
  ld [$2000], a                                   ; $1504: $ea $00 $20
  ld a, [$c0a0]                                   ; $1507: $fa $a0 $c0
  cp $02                                          ; $150a: $fe $02
  ld de, $0001                                    ; $150c: $11 $01 $00
  jr z, jr_000_1512                               ; $150f: $28 $01

  inc d                                           ; $1511: $14

jr_000_1512:
  call Call_000_29b4                              ; $1512: $cd $b4 $29
  ld a, $03                                       ; $1515: $3e $03
  ld [$2000], a                                   ; $1517: $ea $00 $20
  ld hl, $7c1e                                    ; $151a: $21 $1e $7c
  call $7e88                                      ; $151d: $cd $88 $7e
  call Call_000_18d0                              ; $1520: $cd $d0 $18
  call $7046                                      ; $1523: $cd $46 $70
  ld hl, $cab7                                    ; $1526: $21 $b7 $ca
  ld bc, $0010                                    ; $1529: $01 $10 $00
  call Call_000_1248                              ; $152c: $cd $48 $12
  ld a, $01                                       ; $152f: $3e $01
  ld [$2000], a                                   ; $1531: $ea $00 $20
  call $5d42                                      ; $1534: $cd $42 $5d
  ld hl, $cd33                                    ; $1537: $21 $33 $cd
  ld c, [hl]                                      ; $153a: $4e
  inc hl                                          ; $153b: $23
  ld b, [hl]                                      ; $153c: $46
  ld hl, $5165                                    ; $153d: $21 $65 $51
  call Call_000_3330                              ; $1540: $cd $30 $33
  ld de, $cd7c                                    ; $1543: $11 $7c $cd
  call Call_000_0269                              ; $1546: $cd $69 $02
  ld a, $01                                       ; $1549: $3e $01
  ld [$2000], a                                   ; $154b: $ea $00 $20
  call $5ced                                      ; $154e: $cd $ed $5c
  ld hl, $cd33                                    ; $1551: $21 $33 $cd
  ld c, [hl]                                      ; $1554: $4e
  inc hl                                          ; $1555: $23
  ld b, [hl]                                      ; $1556: $46
  ld hl, $44bd                                    ; $1557: $21 $bd $44
  call Call_000_3330                              ; $155a: $cd $30 $33
  ldh a, [rSVBK]                                  ; $155d: $f0 $70
  push af                                         ; $155f: $f5
  ld a, $04                                       ; $1560: $3e $04
  ldh [rSVBK], a                                  ; $1562: $e0 $70
  ld de, $d000                                    ; $1564: $11 $00 $d0
  call Call_000_0e7c                              ; $1567: $cd $7c $0e
  pop af                                          ; $156a: $f1
  ldh [rSVBK], a                                  ; $156b: $e0 $70
  ld hl, $cd33                                    ; $156d: $21 $33 $cd
  ld c, [hl]                                      ; $1570: $4e
  inc hl                                          ; $1571: $23
  ld b, [hl]                                      ; $1572: $46
  ld hl, $4625                                    ; $1573: $21 $25 $46
  call Call_000_3330                              ; $1576: $cd $30 $33
  ldh a, [rSVBK]                                  ; $1579: $f0 $70
  push af                                         ; $157b: $f5
  ld a, $05                                       ; $157c: $3e $05
  ldh [rSVBK], a                                  ; $157e: $e0 $70
  ld de, $d000                                    ; $1580: $11 $00 $d0
  call Call_000_0e7c                              ; $1583: $cd $7c $0e
  pop af                                          ; $1586: $f1
  ldh [rSVBK], a                                  ; $1587: $e0 $70
  ld hl, $cd7c                                    ; $1589: $21 $7c $cd
  ld e, [hl]                                      ; $158c: $5e
  inc hl                                          ; $158d: $23
  ld d, [hl]                                      ; $158e: $56
  ld hl, $cd7e                                    ; $158f: $21 $7e $cd
  ld a, [hl+]                                     ; $1592: $2a
  ld h, [hl]                                      ; $1593: $66
  ld l, a                                         ; $1594: $6f
  call $00d3                                      ; $1595: $cd $d3 $00
  ld a, l                                         ; $1598: $7d
  ld [$cd80], a                                   ; $1599: $ea $80 $cd
  ld a, h                                         ; $159c: $7c
  ld [$cd81], a                                   ; $159d: $ea $81 $cd
  ldh a, [rSVBK]                                  ; $15a0: $f0 $70
  push af                                         ; $15a2: $f5
  ld a, $06                                       ; $15a3: $3e $06
  ldh [rSVBK], a                                  ; $15a5: $e0 $70
  ld bc, $0180                                    ; $15a7: $01 $80 $01
  ld hl, $d7f0                                    ; $15aa: $21 $f0 $d7
  call Call_000_1248                              ; $15ad: $cd $48 $12
  ld hl, $cd33                                    ; $15b0: $21 $33 $cd
  ld c, [hl]                                      ; $15b3: $4e
  inc hl                                          ; $15b4: $23
  ld b, [hl]                                      ; $15b5: $46
  ld hl, $4bc5                                    ; $15b6: $21 $c5 $4b
  call Call_000_3330                              ; $15b9: $cd $30 $33
  ld de, $d7f0                                    ; $15bc: $11 $f0 $d7
  push hl                                         ; $15bf: $e5
  push hl                                         ; $15c0: $e5

jr_000_15c1:
  ld bc, $08ff                                    ; $15c1: $01 $ff $08

jr_000_15c4:
  ld a, [hl+]                                     ; $15c4: $2a
  cp c                                            ; $15c5: $b9
  jr nz, jr_000_15c1                              ; $15c6: $20 $f9

  dec b                                           ; $15c8: $05
  jr nz, jr_000_15c4                              ; $15c9: $20 $f9

  pop bc                                          ; $15cb: $c1
  call Call_000_0085                              ; $15cc: $cd $85 $00
  add hl, bc                                      ; $15cf: $09
  ld c, l                                         ; $15d0: $4d
  ld b, h                                         ; $15d1: $44
  pop hl                                          ; $15d2: $e1
  call Call_000_129c                              ; $15d3: $cd $9c $12
  pop af                                          ; $15d6: $f1
  ldh [rSVBK], a                                  ; $15d7: $e0 $70
  ld hl, $cd33                                    ; $15d9: $21 $33 $cd
  ld c, [hl]                                      ; $15dc: $4e
  inc hl                                          ; $15dd: $23
  ld b, [hl]                                      ; $15de: $46
  ld hl, $48f5                                    ; $15df: $21 $f5 $48
  call Call_000_3330                              ; $15e2: $cd $30 $33
  ld a, [$cd2c]                                   ; $15e5: $fa $2c $cd
  ld e, a                                         ; $15e8: $5f
  ld a, [$cd2d]                                   ; $15e9: $fa $2d $cd
  ld d, a                                         ; $15ec: $57
  call Call_000_0e7c                              ; $15ed: $cd $7c $0e
  xor a                                           ; $15f0: $af
  ldh [rVBK], a                                   ; $15f1: $e0 $4f
  ld hl, $cd33                                    ; $15f3: $21 $33 $cd
  ld c, [hl]                                      ; $15f6: $4e
  inc hl                                          ; $15f7: $23
  ld b, [hl]                                      ; $15f8: $46
  ld hl, $4d2d                                    ; $15f9: $21 $2d $4d
  call Call_000_3330                              ; $15fc: $cd $30 $33
  ld [$cdae], a                                   ; $15ff: $ea $ae $cd
  ld a, l                                         ; $1602: $7d
  ld [$cdaf], a                                   ; $1603: $ea $af $cd
  ld a, h                                         ; $1606: $7c
  ld [$cdb0], a                                   ; $1607: $ea $b0 $cd
  ldh a, [rSVBK]                                  ; $160a: $f0 $70
  push af                                         ; $160c: $f5
  ld a, $02                                       ; $160d: $3e $02
  ldh [rSVBK], a                                  ; $160f: $e0 $70
  ld hl, $cd33                                    ; $1611: $21 $33 $cd
  ld c, [hl]                                      ; $1614: $4e
  inc hl                                          ; $1615: $23
  ld b, [hl]                                      ; $1616: $46
  ld hl, $4a5d                                    ; $1617: $21 $5d $4a
  call Call_000_3330                              ; $161a: $cd $30 $33
  ld de, $d000                                    ; $161d: $11 $00 $d0
  call Call_000_0212                              ; $1620: $cd $12 $02
  pop af                                          ; $1623: $f1
  ldh [rSVBK], a                                  ; $1624: $e0 $70
  ld a, [$c0a0]                                   ; $1626: $fa $a0 $c0
  cp $02                                          ; $1629: $fe $02
  jr z, jr_000_1634                               ; $162b: $28 $07

  ld a, [$c0a0]                                   ; $162d: $fa $a0 $c0
  or a                                            ; $1630: $b7
  jp nz, Jump_000_1689                            ; $1631: $c2 $89 $16

jr_000_1634:
  ld hl, $cd33                                    ; $1634: $21 $33 $cd
  ld c, [hl]                                      ; $1637: $4e
  inc hl                                          ; $1638: $23
  ld b, [hl]                                      ; $1639: $46
  ld hl, $4ffd                                    ; $163a: $21 $fd $4f
  call Call_000_3330                              ; $163d: $cd $30 $33
  ldh a, [rSVBK]                                  ; $1640: $f0 $70
  push af                                         ; $1642: $f5
  ld a, $06                                       ; $1643: $3e $06
  ldh [rSVBK], a                                  ; $1645: $e0 $70
  ld de, $d620                                    ; $1647: $11 $20 $d6
  call Call_000_0e7c                              ; $164a: $cd $7c $0e
  pop af                                          ; $164d: $f1
  ldh [rSVBK], a                                  ; $164e: $e0 $70
  ld hl, $cd33                                    ; $1650: $21 $33 $cd
  ld c, [hl]                                      ; $1653: $4e
  inc hl                                          ; $1654: $23
  ld b, [hl]                                      ; $1655: $46
  ld de, $da00                                    ; $1656: $11 $00 $da
  ld a, $03                                       ; $1659: $3e $03
  ldh [rSVBK], a                                  ; $165b: $e0 $70
  ld hl, $4e95                                    ; $165d: $21 $95 $4e
  call Call_000_3330                              ; $1660: $cd $30 $33
  call Call_000_0e7c                              ; $1663: $cd $7c $0e
  ld a, $02                                       ; $1666: $3e $02
  ldh [rSVBK], a                                  ; $1668: $e0 $70
  ld bc, $0380                                    ; $166a: $01 $80 $03
  ld hl, $dc02                                    ; $166d: $21 $02 $dc
  call Call_000_1248                              ; $1670: $cd $48 $12
  ld hl, $cd33                                    ; $1673: $21 $33 $cd
  ld c, [hl]                                      ; $1676: $4e
  inc hl                                          ; $1677: $23
  ld b, [hl]                                      ; $1678: $46
  ld de, $dc02                                    ; $1679: $11 $02 $dc
  ld hl, $478d                                    ; $167c: $21 $8d $47
  call Call_000_3330                              ; $167f: $cd $30 $33
  call Call_000_0e7c                              ; $1682: $cd $7c $0e
  ld a, $01                                       ; $1685: $3e $01
  ldh [rSVBK], a                                  ; $1687: $e0 $70

Jump_000_1689:
  xor a                                           ; $1689: $af
  ldh [$ff9a], a                                  ; $168a: $e0 $9a
  ld a, [$c0a0]                                   ; $168c: $fa $a0 $c0
  cp $02                                          ; $168f: $fe $02
  jr z, jr_000_169c                               ; $1691: $28 $09

  ld a, [$c0a0]                                   ; $1693: $fa $a0 $c0
  or a                                            ; $1696: $b7
  jp nz, Jump_000_16c5                            ; $1697: $c2 $c5 $16

  jr jr_000_16b2                                  ; $169a: $18 $16

jr_000_169c:
  ld hl, $cc31                                    ; $169c: $21 $31 $cc
  ld de, $ff9b                                    ; $169f: $11 $9b $ff
  call Call_000_0269                              ; $16a2: $cd $69 $02
  call Call_000_05e1                              ; $16a5: $cd $e1 $05
  ld a, $03                                       ; $16a8: $3e $03
  ld [$2000], a                                   ; $16aa: $ea $00 $20
  call $72c9                                      ; $16ad: $cd $c9 $72
  jr jr_000_16bd                                  ; $16b0: $18 $0b

jr_000_16b2:
  call Call_000_05e1                              ; $16b2: $cd $e1 $05
  ld a, $08                                       ; $16b5: $3e $08
  ld [$2000], a                                   ; $16b7: $ea $00 $20
  call $791c                                      ; $16ba: $cd $1c $79

jr_000_16bd:
  ld a, $03                                       ; $16bd: $3e $03
  ld [$2000], a                                   ; $16bf: $ea $00 $20
  call $7f93                                      ; $16c2: $cd $93 $7f

Jump_000_16c5:
  ld hl, $c1df                                    ; $16c5: $21 $df $c1
  ld de, $ff8f                                    ; $16c8: $11 $8f $ff
  call Call_000_0269                              ; $16cb: $cd $69 $02
  ld a, $1e                                       ; $16ce: $3e $1e
  ld [$2000], a                                   ; $16d0: $ea $00 $20
  call $4e15                                      ; $16d3: $cd $15 $4e
  call $4eef                                      ; $16d6: $cd $ef $4e
  xor a                                           ; $16d9: $af
  ldh [$ffb9], a                                  ; $16da: $e0 $b9
  ldh [$ffba], a                                  ; $16dc: $e0 $ba
  ld a, $01                                       ; $16de: $3e $01
  ld [$cda7], a                                   ; $16e0: $ea $a7 $cd
  ld a, $01                                       ; $16e3: $3e $01
  ld [$2000], a                                   ; $16e5: $ea $00 $20
  ldh a, [$ffd8]                                  ; $16e8: $f0 $d8
  ld hl, $5be3                                    ; $16ea: $21 $e3 $5b
  call ResolveIndexedPointer16                              ; $16ed: $cd $8b $31
  call Call_000_0636                              ; $16f0: $cd $36 $06
  ld a, $01                                       ; $16f3: $3e $01
  ld [$2000], a                                   ; $16f5: $ea $00 $20
  call $5f6c                                      ; $16f8: $cd $6c $5f
  ld a, $04                                       ; $16fb: $3e $04
  ld [$2000], a                                   ; $16fd: $ea $00 $20
  call $405b                                      ; $1700: $cd $5b $40
  ld a, [$c0a0]                                   ; $1703: $fa $a0 $c0
  cp $02                                          ; $1706: $fe $02
  jr z, jr_000_1710                               ; $1708: $28 $06

  ld a, [$c0a0]                                   ; $170a: $fa $a0 $c0
  or a                                            ; $170d: $b7
  jr nz, jr_000_177b                              ; $170e: $20 $6b

jr_000_1710:
  ldh a, [rSVBK]                                  ; $1710: $f0 $70
  push af                                         ; $1712: $f5
  ld a, $06                                       ; $1713: $3e $06
  ldh [rSVBK], a                                  ; $1715: $e0 $70
  ld a, [$ddc4]                                   ; $1717: $fa $c4 $dd
  ld d, a                                         ; $171a: $57
  pop af                                          ; $171b: $f1
  ldh [rSVBK], a                                  ; $171c: $e0 $70
  ld a, [$c0a0]                                   ; $171e: $fa $a0 $c0
  cp $02                                          ; $1721: $fe $02
  jr nz, jr_000_172d                              ; $1723: $20 $08

  ld a, [$cc35]                                   ; $1725: $fa $35 $cc
  ld [$cadc], a                                   ; $1728: $ea $dc $ca
  jr jr_000_1749                                  ; $172b: $18 $1c

jr_000_172d:
  ldh a, [$ffdf]                                  ; $172d: $f0 $df
  cp $ff                                          ; $172f: $fe $ff
  jr z, jr_000_173c                               ; $1731: $28 $09

  ld [$cadc], a                                   ; $1733: $ea $dc $ca
  ld a, $ff                                       ; $1736: $3e $ff
  ldh [$ffdf], a                                  ; $1738: $e0 $df
  jr jr_000_1749                                  ; $173a: $18 $0d

jr_000_173c:
  ld a, $01                                       ; $173c: $3e $01
  ld [$2000], a                                   ; $173e: $ea $00 $20
  ldh a, [$ffd7]                                  ; $1741: $f0 $d7
  call $5337                                      ; $1743: $cd $37 $53
  ld [$cadc], a                                   ; $1746: $ea $dc $ca

jr_000_1749:
  ldh a, [$ffcd]                                  ; $1749: $f0 $cd
  cp $3f                                          ; $174b: $fe $3f
  jr z, jr_000_1760                               ; $174d: $28 $11

  cp $40                                          ; $174f: $fe $40
  jr z, jr_000_1760                               ; $1751: $28 $0d

  ld a, $03                                       ; $1753: $3e $03
  ld [$cad7], a                                   ; $1755: $ea $d7 $ca
  ld hl, $cad8                                    ; $1758: $21 $d8 $ca
  ld [hl], $53                                    ; $175b: $36 $53
  inc hl                                          ; $175d: $23
  ld [hl], $40                                    ; $175e: $36 $40

jr_000_1760:
  xor a                                           ; $1760: $af
  ldh [$ff9a], a                                  ; $1761: $e0 $9a
  ld a, $01                                       ; $1763: $3e $01
  call Call_000_04e0                              ; $1765: $cd $e0 $04
  ld a, $1e                                       ; $1768: $3e $1e
  ld [$cc36], a                                   ; $176a: $ea $36 $cc
  ldh a, [$ffcd]                                  ; $176d: $f0 $cd
  cp $3f                                          ; $176f: $fe $3f
  jr nz, jr_000_177b                              ; $1771: $20 $08

  ld a, $08                                       ; $1773: $3e $08
  ld [$2000], a                                   ; $1775: $ea $00 $20
  call $6bba                                      ; $1778: $cd $ba $6b

jr_000_177b:
  ld a, $01                                       ; $177b: $3e $01
  ld [$c0a0], a                                   ; $177d: $ea $a0 $c0
  ldh a, [$ffd8]                                  ; $1780: $f0 $d8
  ldh [$ffd6], a                                  ; $1782: $e0 $d6
  ld a, $01                                       ; $1784: $3e $01
  ld [$2000], a                                   ; $1786: $ea $00 $20
  call $471f                                      ; $1789: $cd $1f $47
  ld a, $03                                       ; $178c: $3e $03
  ld [$2000], a                                   ; $178e: $ea $00 $20
  ld de, $7500                                    ; $1791: $11 $00 $75
  call $75b7                                      ; $1794: $cd $b7 $75
  ld a, $03                                       ; $1797: $3e $03
  ld [$2000], a                                   ; $1799: $ea $00 $20
  call $4161                                      ; $179c: $cd $61 $41
  call Call_000_02ae                              ; $179f: $cd $ae $02
  call Call_000_1223                              ; $17a2: $cd $23 $12
  ld a, $1e                                       ; $17a5: $3e $1e
  ld [$2000], a                                   ; $17a7: $ea $00 $20
  call $4e3a                                      ; $17aa: $cd $3a $4e
  call Call_000_37b7                              ; $17ad: $cd $b7 $37
  ld a, $67                                       ; $17b0: $3e $67
  ldh [rLCDC], a                                  ; $17b2: $e0 $40
  ld a, $87                                       ; $17b4: $3e $87
  ldh [rWX], a                                    ; $17b6: $e0 $4b
  ld a, $91                                       ; $17b8: $3e $91
  ldh [rWY], a                                    ; $17ba: $e0 $4a
  ld de, $cb33                                    ; $17bc: $11 $33 $cb
  ld hl, $cb2e                                    ; $17bf: $21 $2e $cb
  call Call_000_026c                              ; $17c2: $cd $6c $02
  ld a, [$cb2d]                                   ; $17c5: $fa $2d $cb
  cp $0a                                          ; $17c8: $fe $0a
  jr z, jr_000_17d3                               ; $17ca: $28 $07

  xor a                                           ; $17cc: $af
  ld hl, $cb33                                    ; $17cd: $21 $33 $cb
  ld [hl+], a                                     ; $17d0: $22
  ld [hl+], a                                     ; $17d1: $22
  ld [hl+], a                                     ; $17d2: $22

jr_000_17d3:
  xor a                                           ; $17d3: $af
  ld [$cb2d], a                                   ; $17d4: $ea $2d $cb
  ld e, a                                         ; $17d7: $5f
  push af                                         ; $17d8: $f5
  ld a, $05                                       ; $17d9: $3e $05
  ld [$2000], a                                   ; $17db: $ea $00 $20
  pop af                                          ; $17de: $f1
  call $5d65                                      ; $17df: $cd $65 $5d
  ld hl, $598b                                    ; $17e2: $21 $8b $59
  ldh a, [$ffd6]                                  ; $17e5: $f0 $d6
  ld hl, $cd67                                    ; $17e7: $21 $67 $cd
  ld a, [hl+]                                     ; $17ea: $2a
  ld h, [hl]                                      ; $17eb: $66
  ld l, a                                         ; $17ec: $6f
  ld a, h                                         ; $17ed: $7c
  or l                                            ; $17ee: $b5
  jr z, jr_000_1809                               ; $17ef: $28 $18

  ld a, [$cd69]                                   ; $17f1: $fa $69 $cd
  or a                                            ; $17f4: $b7
  jr z, jr_000_17fa                               ; $17f5: $28 $03

  ld [$2000], a                                   ; $17f7: $ea $00 $20

jr_000_17fa:
  xor a                                           ; $17fa: $af
  ld [$cd67], a                                   ; $17fb: $ea $67 $cd
  ld [$cd68], a                                   ; $17fe: $ea $68 $cd
  ld [$cd69], a                                   ; $1801: $ea $69 $cd
  ld de, $181f                                    ; $1804: $11 $1f $18
  push de                                         ; $1807: $d5
  jp hl                                           ; $1808: $e9


jr_000_1809:
  ld a, [$cb2d]                                   ; $1809: $fa $2d $cb
  cp $0a                                          ; $180c: $fe $0a
  jr nz, jr_000_181f                              ; $180e: $20 $0f

  ld a, $01                                       ; $1810: $3e $01
  ld [$cb2d], a                                   ; $1812: $ea $2d $cb
  xor a                                           ; $1815: $af
  ld [$cb33], a                                   ; $1816: $ea $33 $cb
  ld [$cb34], a                                   ; $1819: $ea $34 $cb
  ld [$cb35], a                                   ; $181c: $ea $35 $cb

jr_000_181f:
  ld a, $01                                       ; $181f: $3e $01
  ld [$2000], a                                   ; $1821: $ea $00 $20
  call Call_000_1232                              ; $1824: $cd $32 $12
  ld a, $01                                       ; $1827: $3e $01
  ld e, $01                                       ; $1829: $1e $01
  push af                                         ; $182b: $f5
  ld a, $05                                       ; $182c: $3e $05
  ld [$2000], a                                   ; $182e: $ea $00 $20
  pop af                                          ; $1831: $f1
  jp $7227                                        ; $1832: $c3 $27 $72


  ld hl, $ff8f                                    ; $1835: $21 $8f $ff
  ld de, $c1df                                    ; $1838: $11 $df $c1
  jp Jump_000_0269                                ; $183b: $c3 $69 $02


  call Call_000_184e                              ; $183e: $cd $4e $18
  ld a, $01                                       ; $1841: $3e $01
  ld [$2000], a                                   ; $1843: $ea $00 $20
  ld a, [$c0a6]                                   ; $1846: $fa $a6 $c0
  or a                                            ; $1849: $b7
  jp nz, $5d2c                                    ; $184a: $c2 $2c $5d

  ret                                             ; $184d: $c9


Call_000_184e:
  call Call_000_18ba                              ; $184e: $cd $ba $18
  ld a, $1e                                       ; $1851: $3e $1e
  ld [$2000], a                                   ; $1853: $ea $00 $20
  call $4e3a                                      ; $1856: $cd $3a $4e
  jp Jump_000_030f                                ; $1859: $c3 $0f $03


  ld a, [$4000]                                   ; $185c: $fa $00 $40
  push af                                         ; $185f: $f5
  ld a, $03                                       ; $1860: $3e $03
  ld [$2000], a                                   ; $1862: $ea $00 $20
  call $41b0                                      ; $1865: $cd $b0 $41
  ld l, a                                         ; $1868: $6f
  pop af                                          ; $1869: $f1
  ld [$2000], a                                   ; $186a: $ea $00 $20
  ld a, l                                         ; $186d: $7d
  or a                                            ; $186e: $b7
  ret z                                           ; $186f: $c8

  ld a, [$cb2d]                                   ; $1870: $fa $2d $cb
  or a                                            ; $1873: $b7
  ret nz                                          ; $1874: $c0

  ldh a, [$ffa5]                                  ; $1875: $f0 $a5
  and $f0                                         ; $1877: $e6 $f0
  ret nz                                          ; $1879: $c0

  ldh a, [$ffa6]                                  ; $187a: $f0 $a6
  bit 2, a                                        ; $187c: $cb $57
  jr z, jr_000_189e                               ; $187e: $28 $1e

  ldh a, [$ffe1]                                  ; $1880: $f0 $e1
  cp $00                                          ; $1882: $fe $00
  ret z                                           ; $1884: $c8

  ld a, [$4000]                                   ; $1885: $fa $00 $40
  push af                                         ; $1888: $f5
  ld a, $04                                       ; $1889: $3e $04
  ld [$2000], a                                   ; $188b: $ea $00 $20
  ldh a, [$ffd6]                                  ; $188e: $f0 $d6
  ld hl, $1de9                                    ; $1890: $21 $e9 $1d
  call Call_000_3173                              ; $1893: $cd $73 $31
  xor a                                           ; $1896: $af
  call $42e9                                      ; $1897: $cd $e9 $42
  pop af                                          ; $189a: $f1
  ld [$2000], a                                   ; $189b: $ea $00 $20

jr_000_189e:
  ldh a, [$ffa6]                                  ; $189e: $f0 $a6
  and $08                                         ; $18a0: $e6 $08
  ret z                                           ; $18a2: $c8

  ldh a, [$ffe1]                                  ; $18a3: $f0 $e1
  cp $00                                          ; $18a5: $fe $00
  ret z                                           ; $18a7: $c8

  xor a                                           ; $18a8: $af
  ldh [$ffa6], a                                  ; $18a9: $e0 $a6
  push af                                         ; $18ab: $f5
  ld a, $05                                       ; $18ac: $3e $05
  ld [$2000], a                                   ; $18ae: $ea $00 $20
  pop af                                          ; $18b1: $f1
  call $7167                                      ; $18b2: $cd $67 $71
  ld a, $0e                                       ; $18b5: $3e $0e
  jp Jump_000_261e                                ; $18b7: $c3 $1e $26


Call_000_18ba:
Jump_000_18ba:
  ld a, $01                                       ; $18ba: $3e $01
  ld [$2000], a                                   ; $18bc: $ea $00 $20
  call $6940                                      ; $18bf: $cd $40 $69
  ld a, $03                                       ; $18c2: $3e $03
  ld [$2000], a                                   ; $18c4: $ea $00 $20
  call $7508                                      ; $18c7: $cd $08 $75
  call $7a8d                                      ; $18ca: $cd $8d $7a
  jp Jump_000_02a6                                ; $18cd: $c3 $a6 $02


Call_000_18d0:
  xor a                                           ; $18d0: $af
  ldh [$ffda], a                                  ; $18d1: $e0 $da
  ld [$c1da], a                                   ; $18d3: $ea $da $c1
  ret                                             ; $18d6: $c9


Call_000_18d7:
  ld hl, $004b                                    ; $18d7: $21 $4b $00
  ld de, $c000                                    ; $18da: $11 $00 $c0
  call Call_000_026c                              ; $18dd: $cd $6c $02
  xor a                                           ; $18e0: $af
  ld [$c046], a                                   ; $18e1: $ea $46 $c0
  ld [$c047], a                                   ; $18e4: $ea $47 $c0
  ret                                             ; $18e7: $c9


Call_000_18e8:
  ld hl, $c005                                    ; $18e8: $21 $05 $c0
  call ResolveIndexedPointer8Stride4                              ; $18eb: $cd $06 $00
  ld [hl], $00                                    ; $18ee: $36 $00
  ret                                             ; $18f0: $c9


  ld hl, $c005                                    ; $18f1: $21 $05 $c0
  call ResolveIndexedPointer8Stride4                              ; $18f4: $cd $06 $00
  ld [hl], $01                                    ; $18f7: $36 $01
  ret                                             ; $18f9: $c9


  push af                                         ; $18fa: $f5
  ld a, [$c084]                                   ; $18fb: $fa $84 $c0

Call_000_18fe:
  cp $02                                          ; $18fe: $fe $02
  jr z, jr_000_1908                               ; $1900: $28 $06

  ld a, [$c04a]                                   ; $1902: $fa $4a $c0
  or a                                            ; $1905: $b7
  jr nz, jr_000_190c                              ; $1906: $20 $04

jr_000_1908:
  pop af                                          ; $1908: $f1
  jp Jump_000_1c38                                ; $1909: $c3 $38 $1c


jr_000_190c:
  ld a, [$c084]                                   ; $190c: $fa $84 $c0
  inc a                                           ; $190f: $3c
  ld [$c084], a                                   ; $1910: $ea $84 $c0
  pop af                                          ; $1913: $f1
  jr jr_000_1916                                  ; $1914: $18 $00

jr_000_1916:
  push af                                         ; $1916: $f5
  push hl                                         ; $1917: $e5
  ld a, [$c04a]                                   ; $1918: $fa $4a $c0
  or a                                            ; $191b: $b7
  jr z, jr_000_1931                               ; $191c: $28 $13

  push bc                                         ; $191e: $c5
  push de                                         ; $191f: $d5
  xor a                                           ; $1920: $af
  ld [$c04a], a                                   ; $1921: $ea $4a $c0
  ld hl, $192f                                    ; $1924: $21 $2f $19
  push hl                                         ; $1927: $e5
  ld hl, $c04b                                    ; $1928: $21 $4b $c0
  ld a, [hl+]                                     ; $192b: $2a
  ld h, [hl]                                      ; $192c: $66
  ld l, a                                         ; $192d: $6f
  jp hl                                           ; $192e: $e9


  pop de                                          ; $192f: $d1
  pop bc                                          ; $1930: $c1

jr_000_1931:
  call Call_000_193f                              ; $1931: $cd $3f $19
  pop hl                                          ; $1934: $e1
  pop af                                          ; $1935: $f1
  reti                                            ; $1936: $d9


  push af                                         ; $1937: $f5
  push hl                                         ; $1938: $e5
  call Call_000_193f                              ; $1939: $cd $3f $19
  pop hl                                          ; $193c: $e1
  pop af                                          ; $193d: $f1
  reti                                            ; $193e: $d9


Call_000_193f:
jr_000_193f:
  ld a, [$c003]                                   ; $193f: $fa $03 $c0
  inc a                                           ; $1942: $3c
  ld hl, $c004                                    ; $1943: $21 $04 $c0
  cp [hl]                                         ; $1946: $be
  jr c, jr_000_194a                               ; $1947: $38 $01

  xor a                                           ; $1949: $af

jr_000_194a:
  ld [$c003], a                                   ; $194a: $ea $03 $c0
  ld hl, $c005                                    ; $194d: $21 $05 $c0
  call nz, ResolveIndexedPointer8Stride4                          ; $1950: $c4 $06 $00
  ld a, [hl+]                                     ; $1953: $2a
  or a                                            ; $1954: $b7
  jr z, jr_000_193f                               ; $1955: $28 $e8

  ld a, [hl+]                                     ; $1957: $2a
  ldh [rLYC], a                                   ; $1958: $e0 $45
  ld a, [hl+]                                     ; $195a: $2a
  ld h, [hl]                                      ; $195b: $66
  ld l, a                                         ; $195c: $6f
  ld a, l                                         ; $195d: $7d
  ld [$c001], a                                   ; $195e: $ea $01 $c0
  ld a, h                                         ; $1961: $7c
  ld [$c002], a                                   ; $1962: $ea $02 $c0
  ld a, $40                                       ; $1965: $3e $40
  ldh [rSTAT], a                                  ; $1967: $e0 $41
  ld hl, $ff0f                                    ; $1969: $21 $0f $ff
  res 1, [hl]                                     ; $196c: $cb $8e
  ret                                             ; $196e: $c9


  push af                                         ; $196f: $f5
  push hl                                         ; $1970: $e5
  ldh a, [$ffa9]                                  ; $1971: $f0 $a9
  dec a                                           ; $1973: $3d
  jp nz, Jump_000_19e4                            ; $1974: $c2 $e4 $19

  ldh [$ffa9], a                                  ; $1977: $e0 $a9
  push bc                                         ; $1979: $c5
  push de                                         ; $197a: $d5
  ldh a, [rSVBK]                                  ; $197b: $f0 $70
  push af                                         ; $197d: $f5
  ld a, $03                                       ; $197e: $3e $03
  ldh [rSVBK], a                                  ; $1980: $e0 $70
  xor a                                           ; $1982: $af
  ldh [rSTAT], a                                  ; $1983: $e0 $41
  ld bc, $0a05                                    ; $1985: $01 $05 $0a
  ldh a, [$ffaa]                                  ; $1988: $f0 $aa
  or a                                            ; $198a: $b7
  jr z, jr_000_1990                               ; $198b: $28 $03

  ld bc, $1805                                    ; $198d: $01 $05 $18

jr_000_1990:
  ld hl, $d100                                    ; $1990: $21 $00 $d1
  ld de, $9900                                    ; $1993: $11 $00 $99
  ld a, [$c0aa]                                   ; $1996: $fa $aa $c0
  bit 2, a                                        ; $1999: $cb $57
  jr z, jr_000_19a0                               ; $199b: $28 $03

  ld de, $9d00                                    ; $199d: $11 $00 $9d

jr_000_19a0:
  ld a, b                                         ; $19a0: $78
  ldh [rVBK], a                                   ; $19a1: $e0 $4f
  ld a, h                                         ; $19a3: $7c
  ldh [rHDMA1], a                                 ; $19a4: $e0 $51
  ld a, l                                         ; $19a6: $7d
  ldh [rHDMA2], a                                 ; $19a7: $e0 $52
  ld a, d                                         ; $19a9: $7a
  ldh [rHDMA3], a                                 ; $19aa: $e0 $53
  ld a, e                                         ; $19ac: $7b
  ldh [rHDMA4], a                                 ; $19ad: $e0 $54

jr_000_19af:
  ldh a, [rSTAT]                                  ; $19af: $f0 $41
  and $03                                         ; $19b1: $e6 $03
  jr z, jr_000_19af                               ; $19b3: $28 $fa

jr_000_19b5:
  ldh a, [rSTAT]                                  ; $19b5: $f0 $41
  and $03                                         ; $19b7: $e6 $03
  jr nz, jr_000_19b5                              ; $19b9: $20 $fa

  ld a, $03                                       ; $19bb: $3e $03
  ldh [rHDMA5], a                                 ; $19bd: $e0 $55
  ld a, b                                         ; $19bf: $78
  and $01                                         ; $19c0: $e6 $01
  jr nz, jr_000_19cd                              ; $19c2: $20 $09

  push bc                                         ; $19c4: $c5
  ld bc, $0500                                    ; $19c5: $01 $00 $05
  add hl, bc                                      ; $19c8: $09
  pop bc                                          ; $19c9: $c1
  dec b                                           ; $19ca: $05
  jr jr_000_19a0                                  ; $19cb: $18 $d3

jr_000_19cd:
  push hl                                         ; $19cd: $e5
  ld hl, $0040                                    ; $19ce: $21 $40 $00
  add hl, de                                      ; $19d1: $19
  pop de                                          ; $19d2: $d1
  push hl                                         ; $19d3: $e5
  ld hl, $fb40                                    ; $19d4: $21 $40 $fb
  add hl, de                                      ; $19d7: $19
  pop de                                          ; $19d8: $d1
  dec b                                           ; $19d9: $05
  jr nz, jr_000_19a0                              ; $19da: $20 $c4

  xor a                                           ; $19dc: $af
  ldh [rVBK], a                                   ; $19dd: $e0 $4f
  pop af                                          ; $19df: $f1
  ldh [rSVBK], a                                  ; $19e0: $e0 $70
  pop de                                          ; $19e2: $d1
  pop bc                                          ; $19e3: $c1

Jump_000_19e4:
  call Call_000_193f                              ; $19e4: $cd $3f $19
  pop hl                                          ; $19e7: $e1
  pop af                                          ; $19e8: $f1
  reti                                            ; $19e9: $d9


  push af                                         ; $19ea: $f5
  push hl                                         ; $19eb: $e5
  ld a, [$cd6a]                                   ; $19ec: $fa $6a $cd
  cp $01                                          ; $19ef: $fe $01
  jp nz, Jump_000_1a4d                            ; $19f1: $c2 $4d $1a

  push bc                                         ; $19f4: $c5
  push de                                         ; $19f5: $d5
  ldh a, [rSVBK]                                  ; $19f6: $f0 $70
  push af                                         ; $19f8: $f5
  ld a, $03                                       ; $19f9: $3e $03
  ldh [rSVBK], a                                  ; $19fb: $e0 $70
  xor a                                           ; $19fd: $af
  ld [$cd6a], a                                   ; $19fe: $ea $6a $cd
  ldh [rSTAT], a                                  ; $1a01: $e0 $41
  ld bc, $2005                                    ; $1a03: $01 $05 $20
  ld hl, $d000                                    ; $1a06: $21 $00 $d0
  ld de, $9800                                    ; $1a09: $11 $00 $98

jr_000_1a0c:
  ld a, b                                         ; $1a0c: $78
  ldh [rVBK], a                                   ; $1a0d: $e0 $4f
  ld a, h                                         ; $1a0f: $7c
  ldh [rHDMA1], a                                 ; $1a10: $e0 $51
  ld a, l                                         ; $1a12: $7d
  ldh [rHDMA2], a                                 ; $1a13: $e0 $52
  ld a, d                                         ; $1a15: $7a
  ldh [rHDMA3], a                                 ; $1a16: $e0 $53
  ld a, e                                         ; $1a18: $7b
  ldh [rHDMA4], a                                 ; $1a19: $e0 $54

jr_000_1a1b:
  ldh a, [rSTAT]                                  ; $1a1b: $f0 $41
  and $03                                         ; $1a1d: $e6 $03
  jr z, jr_000_1a1b                               ; $1a1f: $28 $fa

jr_000_1a21:
  ldh a, [rSTAT]                                  ; $1a21: $f0 $41
  and $03                                         ; $1a23: $e6 $03
  jr nz, jr_000_1a21                              ; $1a25: $20 $fa

  ld a, $03                                       ; $1a27: $3e $03
  ldh [rHDMA5], a                                 ; $1a29: $e0 $55
  ld a, b                                         ; $1a2b: $78
  and $01                                         ; $1a2c: $e6 $01
  jr nz, jr_000_1a36                              ; $1a2e: $20 $06

  ld a, h                                         ; $1a30: $7c
  add c                                           ; $1a31: $81
  ld h, a                                         ; $1a32: $67
  dec b                                           ; $1a33: $05
  jr jr_000_1a0c                                  ; $1a34: $18 $d6

jr_000_1a36:
  push hl                                         ; $1a36: $e5
  ld hl, $0040                                    ; $1a37: $21 $40 $00
  add hl, de                                      ; $1a3a: $19
  pop de                                          ; $1a3b: $d1
  push hl                                         ; $1a3c: $e5
  ld hl, $fb40                                    ; $1a3d: $21 $40 $fb
  add hl, de                                      ; $1a40: $19
  pop de                                          ; $1a41: $d1
  dec b                                           ; $1a42: $05
  jr nz, jr_000_1a0c                              ; $1a43: $20 $c7

  xor a                                           ; $1a45: $af
  ldh [rVBK], a                                   ; $1a46: $e0 $4f
  pop af                                          ; $1a48: $f1
  ldh [rSVBK], a                                  ; $1a49: $e0 $70
  pop de                                          ; $1a4b: $d1
  pop bc                                          ; $1a4c: $c1

Jump_000_1a4d:
  call Call_000_193f                              ; $1a4d: $cd $3f $19
  pop hl                                          ; $1a50: $e1
  pop af                                          ; $1a51: $f1
  reti                                            ; $1a52: $d9


Call_000_1a53:
  ld hl, $c05e                                    ; $1a53: $21 $5e $c0
  ld bc, $0018                                    ; $1a56: $01 $18 $00
  jp Jump_000_1248                                ; $1a59: $c3 $48 $12


Call_000_1a5c:
Jump_000_1a5c:
  push hl                                         ; $1a5c: $e5
  call Call_000_1a53                              ; $1a5d: $cd $53 $1a
  pop hl                                          ; $1a60: $e1

Call_000_1a61:
Jump_000_1a61:
  ld a, [$4000]                                   ; $1a61: $fa $00 $40
  push af                                         ; $1a64: $f5
  ld a, [hl+]                                     ; $1a65: $2a
  ld e, a                                         ; $1a66: $5f
  ld a, [hl+]                                     ; $1a67: $2a
  ld d, a                                         ; $1a68: $57
  call Call_000_026c                              ; $1a69: $cd $6c $02
  ld a, [hl+]                                     ; $1a6c: $2a
  ld c, a                                         ; $1a6d: $4f
  ld a, [hl+]                                     ; $1a6e: $2a
  ld h, [hl]                                      ; $1a6f: $66
  ld l, a                                         ; $1a70: $6f
  ld a, c                                         ; $1a71: $79
  call Call_000_332b                              ; $1a72: $cd $2b $33
  ld a, [$4000]                                   ; $1a75: $fa $00 $40
  ld [de], a                                      ; $1a78: $12
  inc de                                          ; $1a79: $13
  ld a, l                                         ; $1a7a: $7d
  ld [de], a                                      ; $1a7b: $12
  inc de                                          ; $1a7c: $13
  ld a, h                                         ; $1a7d: $7c
  ld [de], a                                      ; $1a7e: $12
  pop af                                          ; $1a7f: $f1
  ld [$2000], a                                   ; $1a80: $ea $00 $20
  ret                                             ; $1a83: $c9


Call_000_1a84:
  push hl                                         ; $1a84: $e5
  call Call_000_1a53                              ; $1a85: $cd $53 $1a
  pop hl                                          ; $1a88: $e1

Jump_000_1a89:
  ld a, [$4000]                                   ; $1a89: $fa $00 $40
  push af                                         ; $1a8c: $f5
  ld a, [hl+]                                     ; $1a8d: $2a
  ld e, a                                         ; $1a8e: $5f
  ld a, [hl+]                                     ; $1a8f: $2a
  ld d, a                                         ; $1a90: $57
  call Call_000_026c                              ; $1a91: $cd $6c $02
  ld a, [hl+]                                     ; $1a94: $2a
  ld c, a                                         ; $1a95: $4f
  ld a, [hl+]                                     ; $1a96: $2a
  ld h, [hl]                                      ; $1a97: $66
  ld l, a                                         ; $1a98: $6f
  ld a, c                                         ; $1a99: $79
  ld a, [$4000]                                   ; $1a9a: $fa $00 $40
  ld [de], a                                      ; $1a9d: $12
  inc de                                          ; $1a9e: $13
  ld a, l                                         ; $1a9f: $7d
  ld [de], a                                      ; $1aa0: $12
  inc de                                          ; $1aa1: $13
  ld a, h                                         ; $1aa2: $7c
  ld [de], a                                      ; $1aa3: $12
  pop af                                          ; $1aa4: $f1
  ld [$2000], a                                   ; $1aa5: $ea $00 $20
  ret                                             ; $1aa8: $c9


  push af                                         ; $1aa9: $f5
  push bc                                         ; $1aaa: $c5
  push de                                         ; $1aab: $d5
  push hl                                         ; $1aac: $e5
  ldh a, [$ff8b]                                  ; $1aad: $f0 $8b
  or a                                            ; $1aaf: $b7
  ld a, [$4000]                                   ; $1ab0: $fa $00 $40
  jr z, jr_000_1ab7                               ; $1ab3: $28 $02

  ldh a, [$ff8a]                                  ; $1ab5: $f0 $8a

jr_000_1ab7:
  push af                                         ; $1ab7: $f5
  ld a, [$cc09]                                   ; $1ab8: $fa $09 $cc
  ld [$2000], a                                   ; $1abb: $ea $00 $20
  ld hl, $1ac9                                    ; $1abe: $21 $c9 $1a
  push hl                                         ; $1ac1: $e5
  ld hl, $cc07                                    ; $1ac2: $21 $07 $cc
  ld a, [hl+]                                     ; $1ac5: $2a
  ld h, [hl]                                      ; $1ac6: $66
  ld l, a                                         ; $1ac7: $6f
  jp hl                                           ; $1ac8: $e9


  call Call_000_193f                              ; $1ac9: $cd $3f $19
  pop af                                          ; $1acc: $f1
  ld [$2000], a                                   ; $1acd: $ea $00 $20
  pop hl                                          ; $1ad0: $e1
  pop de                                          ; $1ad1: $d1
  pop bc                                          ; $1ad2: $c1
  pop af                                          ; $1ad3: $f1
  reti                                            ; $1ad4: $d9


  push af                                         ; $1ad5: $f5
  push hl                                         ; $1ad6: $e5
  ld a, [$cb4f]                                   ; $1ad7: $fa $4f $cb
  ld hl, $cb60                                    ; $1ada: $21 $60 $cb
  sub [hl]                                        ; $1add: $96
  sub $40                                         ; $1ade: $d6 $40
  jr c, jr_000_1af5                               ; $1ae0: $38 $13

  ld a, [hl]                                      ; $1ae2: $7e
  add $40                                         ; $1ae3: $c6 $40
  ld [hl], a                                      ; $1ae5: $77
  ld hl, $cbf9                                    ; $1ae6: $21 $f9 $cb
  ld a, [$cbf6]                                   ; $1ae9: $fa $f6 $cb
  add $08                                         ; $1aec: $c6 $08
  cp [hl]                                         ; $1aee: $be
  jr c, jr_000_1af2                               ; $1aef: $38 $01

  xor a                                           ; $1af1: $af

jr_000_1af2:
  ld [$cbf6], a                                   ; $1af2: $ea $f6 $cb

jr_000_1af5:
  ld a, [$cb4f]                                   ; $1af5: $fa $4f $cb
  ld hl, $ff8f                                    ; $1af8: $21 $8f $ff
  cp [hl]                                         ; $1afb: $be
  jr z, jr_000_1b02                               ; $1afc: $28 $04

  ld [hl+], a                                     ; $1afe: $22
  jr nc, jr_000_1b02                              ; $1aff: $30 $01

  inc [hl]                                        ; $1b01: $34

jr_000_1b02:
  call Call_000_193f                              ; $1b02: $cd $3f $19
  pop hl                                          ; $1b05: $e1
  pop af                                          ; $1b06: $f1
  reti                                            ; $1b07: $d9


  push af                                         ; $1b08: $f5
  push hl                                         ; $1b09: $e5
  ld hl, $cbf7                                    ; $1b0a: $21 $f7 $cb
  inc [hl]                                        ; $1b0d: $34
  ld a, $3f                                       ; $1b0e: $3e $3f
  and [hl]                                        ; $1b10: $a6
  jr nz, jr_000_1b22                              ; $1b11: $20 $0f

  ld hl, $cbf9                                    ; $1b13: $21 $f9 $cb
  ld a, [$cbf6]                                   ; $1b16: $fa $f6 $cb
  add $08                                         ; $1b19: $c6 $08
  cp [hl]                                         ; $1b1b: $be
  jr c, jr_000_1b1f                               ; $1b1c: $38 $01

  xor a                                           ; $1b1e: $af

jr_000_1b1f:
  ld [$cbf6], a                                   ; $1b1f: $ea $f6 $cb

jr_000_1b22:
  call Call_000_193f                              ; $1b22: $cd $3f $19
  pop hl                                          ; $1b25: $e1
  pop af                                          ; $1b26: $f1
  reti                                            ; $1b27: $d9


  push af                                         ; $1b28: $f5

Call_000_1b29:
  push bc                                         ; $1b29: $c5
  push de                                         ; $1b2a: $d5
  push hl                                         ; $1b2b: $e5
  ldh a, [rSVBK]                                  ; $1b2c: $f0 $70
  push af                                         ; $1b2e: $f5
  ld a, $07                                       ; $1b2f: $3e $07
  ldh [rSVBK], a                                  ; $1b31: $e0 $70
  ld a, [$c083]                                   ; $1b33: $fa $83 $c0
  add $a0                                         ; $1b36: $c6 $a0
  ld l, a                                         ; $1b38: $6f
  ldh a, [$fffb]                                  ; $1b39: $f0 $fb
  ld h, a                                         ; $1b3b: $67
  ld de, $fe7c                                    ; $1b3c: $11 $7c $fe
  ldh a, [rLY]                                    ; $1b3f: $f0 $44
  ld b, a                                         ; $1b41: $47
  ld a, [hl]                                      ; $1b42: $7e
  sub b                                           ; $1b43: $90
  cp $28                                          ; $1b44: $fe $28
  jr nc, jr_000_1b73                              ; $1b46: $30 $2b

  ld b, $06                                       ; $1b48: $06 $06

jr_000_1b4a:
  ldh a, [rSTAT]                                  ; $1b4a: $f0 $41
  and $03                                         ; $1b4c: $e6 $03
  jr z, jr_000_1b4a                               ; $1b4e: $28 $fa

jr_000_1b50:
  ldh a, [rSTAT]                                  ; $1b50: $f0 $41
  and $03                                         ; $1b52: $e6 $03
  jr nz, jr_000_1b50                              ; $1b54: $20 $fa

  ld a, [hl+]                                     ; $1b56: $2a
  ld [de], a                                      ; $1b57: $12
  inc e                                           ; $1b58: $1c
  ld a, [hl+]                                     ; $1b59: $2a
  ld [de], a                                      ; $1b5a: $12
  inc e                                           ; $1b5b: $1c
  ld a, [hl+]                                     ; $1b5c: $2a
  ld [de], a                                      ; $1b5d: $12
  inc e                                           ; $1b5e: $1c
  ld a, [hl+]                                     ; $1b5f: $2a
  ld [de], a                                      ; $1b60: $12
  inc e                                           ; $1b61: $1c
  ld a, [hl+]                                     ; $1b62: $2a
  ld [de], a                                      ; $1b63: $12
  inc e                                           ; $1b64: $1c
  ld a, [hl+]                                     ; $1b65: $2a
  ld [de], a                                      ; $1b66: $12
  inc e                                           ; $1b67: $1c
  dec b                                           ; $1b68: $05
  jr nz, jr_000_1b4a                              ; $1b69: $20 $df

  ld a, [$c083]                                   ; $1b6b: $fa $83 $c0
  xor $24                                         ; $1b6e: $ee $24
  ld [$c083], a                                   ; $1b70: $ea $83 $c0

jr_000_1b73:
  ld hl, $c0aa                                    ; $1b73: $21 $aa $c0
  set 0, [hl]                                     ; $1b76: $cb $c6
  call Call_000_193f                              ; $1b78: $cd $3f $19
  pop af                                          ; $1b7b: $f1
  ldh [rSVBK], a                                  ; $1b7c: $e0 $70
  pop hl                                          ; $1b7e: $e1
  pop de                                          ; $1b7f: $d1
  pop bc                                          ; $1b80: $c1
  pop af                                          ; $1b81: $f1
  reti                                            ; $1b82: $d9


  push af                                         ; $1b83: $f5
  push hl                                         ; $1b84: $e5

jr_000_1b85:
  ldh a, [rSTAT]                                  ; $1b85: $f0 $41
  and $03                                         ; $1b87: $e6 $03
  jr nz, jr_000_1b85                              ; $1b89: $20 $fa

  ldh a, [rLCDC]                                  ; $1b8b: $f0 $40
  and $dd                                         ; $1b8d: $e6 $dd
  set 3, a                                        ; $1b8f: $cb $df
  ldh [rLCDC], a                                  ; $1b91: $e0 $40
  ld a, $78                                       ; $1b93: $3e $78
  ldh [rSCY], a                                   ; $1b95: $e0 $42
  xor a                                           ; $1b97: $af
  ldh [rSCX], a                                   ; $1b98: $e0 $43
  call Call_000_193f                              ; $1b9a: $cd $3f $19
  pop hl                                          ; $1b9d: $e1
  pop af                                          ; $1b9e: $f1
  reti                                            ; $1b9f: $d9


  push af                                         ; $1ba0: $f5
  push bc                                         ; $1ba1: $c5
  push de                                         ; $1ba2: $d5
  push hl                                         ; $1ba3: $e5
  ldh a, [$ff8b]                                  ; $1ba4: $f0 $8b
  or a                                            ; $1ba6: $b7
  ld a, [$4000]                                   ; $1ba7: $fa $00 $40
  jr z, jr_000_1bae                               ; $1baa: $28 $02

  ldh a, [$ff8a]                                  ; $1bac: $f0 $8a

jr_000_1bae:
  push af                                         ; $1bae: $f5
  ld hl, $c06a                                    ; $1baf: $21 $6a $c0
  ld a, [hl+]                                     ; $1bb2: $2a
  jp Jump_000_1c67                                ; $1bb3: $c3 $67 $1c


  push af                                         ; $1bb6: $f5
  push bc                                         ; $1bb7: $c5
  push de                                         ; $1bb8: $d5
  push hl                                         ; $1bb9: $e5
  ld c, $41                                       ; $1bba: $0e $41
  ld de, $0003                                    ; $1bbc: $11 $03 $00
  ld hl, $fe14                                    ; $1bbf: $21 $14 $fe
  ldh a, [rLCDC]                                  ; $1bc2: $f0 $40
  and $dd                                         ; $1bc4: $e6 $dd
  set 3, a                                        ; $1bc6: $cb $df
  ld b, a                                         ; $1bc8: $47

jr_000_1bc9:
  ldh a, [c]                                      ; $1bc9: $f2
  and e                                           ; $1bca: $a3
  jr nz, jr_000_1bc9                              ; $1bcb: $20 $fc

  ld a, b                                         ; $1bcd: $78
  ldh [rLCDC], a                                  ; $1bce: $e0 $40
  ld a, $88                                       ; $1bd0: $3e $88
  ldh [rSCY], a                                   ; $1bd2: $e0 $42
  xor a                                           ; $1bd4: $af
  ldh [rSCX], a                                   ; $1bd5: $e0 $43
  ld b, $03                                       ; $1bd7: $06 $03
  jr jr_000_1be5                                  ; $1bd9: $18 $0a

jr_000_1bdb:
  ldh a, [c]                                      ; $1bdb: $f2
  and e                                           ; $1bdc: $a3
  jr z, jr_000_1bdb                               ; $1bdd: $28 $fc

jr_000_1bdf:
  ldh a, [c]                                      ; $1bdf: $f2
  and e                                           ; $1be0: $a3
  jr nz, jr_000_1bdf                              ; $1be1: $20 $fc

  ld [hl+], a                                     ; $1be3: $22
  add hl, de                                      ; $1be4: $19

jr_000_1be5:
  ld [hl+], a                                     ; $1be5: $22
  add hl, de                                      ; $1be6: $19
  ld [hl+], a                                     ; $1be7: $22
  add hl, de                                      ; $1be8: $19
  ld [hl+], a                                     ; $1be9: $22
  add hl, de                                      ; $1bea: $19
  ld [hl+], a                                     ; $1beb: $22
  add hl, de                                      ; $1bec: $19
  ld [hl+], a                                     ; $1bed: $22
  add hl, de                                      ; $1bee: $19
  ld [hl+], a                                     ; $1bef: $22
  add hl, de                                      ; $1bf0: $19
  ld [hl+], a                                     ; $1bf1: $22
  add hl, de                                      ; $1bf2: $19
  ld [hl+], a                                     ; $1bf3: $22
  add hl, de                                      ; $1bf4: $19
  ld [hl+], a                                     ; $1bf5: $22
  add hl, de                                      ; $1bf6: $19
  ld [hl+], a                                     ; $1bf7: $22
  add hl, de                                      ; $1bf8: $19
  ld [hl+], a                                     ; $1bf9: $22
  add hl, de                                      ; $1bfa: $19
  dec b                                           ; $1bfb: $05
  jr nz, jr_000_1bdb                              ; $1bfc: $20 $dd

  ld hl, $c0aa                                    ; $1bfe: $21 $aa $c0
  set 0, [hl]                                     ; $1c01: $cb $c6
  ld hl, $ff40                                    ; $1c03: $21 $40 $ff
  set 1, [hl]                                     ; $1c06: $cb $ce
  jr jr_000_1c3c                                  ; $1c08: $18 $32

  push af                                         ; $1c0a: $f5
  push bc                                         ; $1c0b: $c5
  push de                                         ; $1c0c: $d5
  push hl                                         ; $1c0d: $e5
  ld b, $04                                       ; $1c0e: $06 $04
  ld de, $fe98                                    ; $1c10: $11 $98 $fe
  ld hl, $cd5c                                    ; $1c13: $21 $5c $cd
  ldh a, [rLCDC]                                  ; $1c16: $f0 $40
  and $d9                                         ; $1c18: $e6 $d9
  set 3, a                                        ; $1c1a: $cb $df
  ld c, a                                         ; $1c1c: $4f

jr_000_1c1d:
  ldh a, [rSTAT]                                  ; $1c1d: $f0 $41
  and $03                                         ; $1c1f: $e6 $03
  jr nz, jr_000_1c1d                              ; $1c21: $20 $fa

  ld a, c                                         ; $1c23: $79
  ldh [rLCDC], a                                  ; $1c24: $e0 $40
  ld a, $98                                       ; $1c26: $3e $98
  ldh [rSCY], a                                   ; $1c28: $e0 $42
  xor a                                           ; $1c2a: $af
  ldh [rSCX], a                                   ; $1c2b: $e0 $43

jr_000_1c2d:
  ld a, [hl+]                                     ; $1c2d: $2a
  ld [de], a                                      ; $1c2e: $12
  inc e                                           ; $1c2f: $1c
  ld a, [hl+]                                     ; $1c30: $2a
  ld [de], a                                      ; $1c31: $12
  inc e                                           ; $1c32: $1c
  dec b                                           ; $1c33: $05
  jr nz, jr_000_1c2d                              ; $1c34: $20 $f7

  jr jr_000_1c3c                                  ; $1c36: $18 $04

Jump_000_1c38:
  push af                                         ; $1c38: $f5
  push bc                                         ; $1c39: $c5
  push de                                         ; $1c3a: $d5
  push hl                                         ; $1c3b: $e5

jr_000_1c3c:
  ld a, $01                                       ; $1c3c: $3e $01
  ldh [$fffa], a                                  ; $1c3e: $e0 $fa
  ldh a, [rSVBK]                                  ; $1c40: $f0 $70
  push af                                         ; $1c42: $f5
  ld a, $02                                       ; $1c43: $3e $02
  ldh [rSVBK], a                                  ; $1c45: $e0 $70
  ldh a, [$ff8b]                                  ; $1c47: $f0 $8b
  or a                                            ; $1c49: $b7
  ld a, [$4000]                                   ; $1c4a: $fa $00 $40
  jr z, jr_000_1c51                               ; $1c4d: $28 $02

  ldh a, [$ff8a]                                  ; $1c4f: $f0 $8a

jr_000_1c51:
  push af                                         ; $1c51: $f5
  ld a, [$c076]                                   ; $1c52: $fa $76 $c0

Jump_000_1c55:
  ld e, a                                         ; $1c55: $5f
  ld d, $00                                       ; $1c56: $16 $00
  ld hl, $c05e                                    ; $1c58: $21 $5e $c0
  add hl, de                                      ; $1c5b: $19
  ld a, [hl+]                                     ; $1c5c: $2a
  or a                                            ; $1c5d: $b7
  jr nz, jr_000_1c67                              ; $1c5e: $20 $07

  xor a                                           ; $1c60: $af
  ld [$c076], a                                   ; $1c61: $ea $76 $c0
  jp Jump_000_1ce5                                ; $1c64: $c3 $e5 $1c


Jump_000_1c67:
jr_000_1c67:
  ld c, a                                         ; $1c67: $4f
  ld a, $04                                       ; $1c68: $3e $04
  sub c                                           ; $1c6a: $91
  ld e, a                                         ; $1c6b: $5f
  ld a, [hl+]                                     ; $1c6c: $2a
  ldh [rBCPS], a                                  ; $1c6d: $e0 $68
  ld a, [hl+]                                     ; $1c6f: $2a
  ld d, a                                         ; $1c70: $57
  ld a, [hl+]                                     ; $1c71: $2a
  ld [$2000], a                                   ; $1c72: $ea $00 $20
  ld a, [hl+]                                     ; $1c75: $2a
  ld h, [hl]                                      ; $1c76: $66
  ld l, a                                         ; $1c77: $6f
  ld a, d                                         ; $1c78: $7a
  add l                                           ; $1c79: $85
  ld l, a                                         ; $1c7a: $6f
  jr nc, jr_000_1c7e                              ; $1c7b: $30 $01

  inc h                                           ; $1c7d: $24

jr_000_1c7e:
  ld c, e                                         ; $1c7e: $4b
  ld [$c09a], sp                                  ; $1c7f: $08 $9a $c0
  ld sp, hl                                       ; $1c82: $f9
  pop de                                          ; $1c83: $d1
  ld hl, $ff69                                    ; $1c84: $21 $69 $ff

jr_000_1c87:
  ldh a, [rSTAT]                                  ; $1c87: $f0 $41
  and $03                                         ; $1c89: $e6 $03
  jr z, jr_000_1c87                               ; $1c8b: $28 $fa

jr_000_1c8d:
  ldh a, [rSTAT]                                  ; $1c8d: $f0 $41
  and $03                                         ; $1c8f: $e6 $03
  jr nz, jr_000_1c8d                              ; $1c91: $20 $fa

  ld a, c                                         ; $1c93: $79
  or a                                            ; $1c94: $b7
  jr z, jr_000_1c9f                               ; $1c95: $28 $08

  dec a                                           ; $1c97: $3d
  jr z, jr_000_1cab                               ; $1c98: $28 $11

  dec a                                           ; $1c9a: $3d
  jr z, jr_000_1cb7                               ; $1c9b: $28 $1a

  jr jr_000_1cc3                                  ; $1c9d: $18 $24

jr_000_1c9f:
  ld [hl], e                                      ; $1c9f: $73
  ld [hl], d                                      ; $1ca0: $72
  pop de                                          ; $1ca1: $d1
  ld [hl], e                                      ; $1ca2: $73
  ld [hl], d                                      ; $1ca3: $72
  pop de                                          ; $1ca4: $d1
  ld [hl], e                                      ; $1ca5: $73
  ld [hl], d                                      ; $1ca6: $72
  pop de                                          ; $1ca7: $d1
  ld [hl], e                                      ; $1ca8: $73
  ld [hl], d                                      ; $1ca9: $72
  pop de                                          ; $1caa: $d1

jr_000_1cab:
  ld [hl], e                                      ; $1cab: $73
  ld [hl], d                                      ; $1cac: $72
  pop de                                          ; $1cad: $d1
  ld [hl], e                                      ; $1cae: $73
  ld [hl], d                                      ; $1caf: $72
  pop de                                          ; $1cb0: $d1
  ld [hl], e                                      ; $1cb1: $73
  ld [hl], d                                      ; $1cb2: $72
  pop de                                          ; $1cb3: $d1
  ld [hl], e                                      ; $1cb4: $73
  ld [hl], d                                      ; $1cb5: $72
  pop de                                          ; $1cb6: $d1

jr_000_1cb7:
  ld [hl], e                                      ; $1cb7: $73
  ld [hl], d                                      ; $1cb8: $72
  pop de                                          ; $1cb9: $d1
  ld [hl], e                                      ; $1cba: $73
  ld [hl], d                                      ; $1cbb: $72
  pop de                                          ; $1cbc: $d1
  ld [hl], e                                      ; $1cbd: $73
  ld [hl], d                                      ; $1cbe: $72
  pop de                                          ; $1cbf: $d1
  ld [hl], e                                      ; $1cc0: $73
  ld [hl], d                                      ; $1cc1: $72
  pop de                                          ; $1cc2: $d1

jr_000_1cc3:
  ld [hl], e                                      ; $1cc3: $73
  ld [hl], d                                      ; $1cc4: $72
  pop de                                          ; $1cc5: $d1
  ld [hl], e                                      ; $1cc6: $73
  ld [hl], d                                      ; $1cc7: $72
  pop de                                          ; $1cc8: $d1
  ld [hl], e                                      ; $1cc9: $73
  ld [hl], d                                      ; $1cca: $72
  pop de                                          ; $1ccb: $d1
  ld [hl], e                                      ; $1ccc: $73
  ld [hl], d                                      ; $1ccd: $72
  ld hl, $c09a                                    ; $1cce: $21 $9a $c0
  ld a, [hl+]                                     ; $1cd1: $2a
  ld h, [hl]                                      ; $1cd2: $66
  ld l, a                                         ; $1cd3: $6f
  ld sp, hl                                       ; $1cd4: $f9
  ld a, [$c076]                                   ; $1cd5: $fa $76 $c0
  add $06                                         ; $1cd8: $c6 $06
  cp $18                                          ; $1cda: $fe $18
  jr nz, jr_000_1cdf                              ; $1cdc: $20 $01

  xor a                                           ; $1cde: $af

jr_000_1cdf:
  ld [$c076], a                                   ; $1cdf: $ea $76 $c0
  jp nz, Jump_000_1c55                            ; $1ce2: $c2 $55 $1c

Jump_000_1ce5:
jr_000_1ce5:
  call Call_000_193f                              ; $1ce5: $cd $3f $19
  pop af                                          ; $1ce8: $f1
  ld [$2000], a                                   ; $1ce9: $ea $00 $20
  pop af                                          ; $1cec: $f1
  ldh [rSVBK], a                                  ; $1ced: $e0 $70
  pop hl                                          ; $1cef: $e1
  pop de                                          ; $1cf0: $d1
  pop bc                                          ; $1cf1: $c1
  pop af                                          ; $1cf2: $f1
  reti                                            ; $1cf3: $d9


  push af                                         ; $1cf4: $f5
  push bc                                         ; $1cf5: $c5
  push de                                         ; $1cf6: $d5
  push hl                                         ; $1cf7: $e5
  ldh a, [$ff8b]                                  ; $1cf8: $f0 $8b
  or a                                            ; $1cfa: $b7
  ld a, [$4000]                                   ; $1cfb: $fa $00 $40
  jr z, jr_000_1d02                               ; $1cfe: $28 $02

  ldh a, [$ff8a]                                  ; $1d00: $f0 $8a

jr_000_1d02:
  push af                                         ; $1d02: $f5
  ld a, [$c076]                                   ; $1d03: $fa $76 $c0
  ld e, a                                         ; $1d06: $5f
  ld d, $00                                       ; $1d07: $16 $00
  ld hl, $c061                                    ; $1d09: $21 $61 $c0
  add hl, de                                      ; $1d0c: $19
  ld a, $80                                       ; $1d0d: $3e $80
  ldh [rBCPS], a                                  ; $1d0f: $e0 $68
  ld a, [hl+]                                     ; $1d11: $2a
  ld [$2000], a                                   ; $1d12: $ea $00 $20
  ld a, [hl+]                                     ; $1d15: $2a
  ld h, [hl]                                      ; $1d16: $66
  ld l, a                                         ; $1d17: $6f

jr_000_1d18:
  ldh a, [rSTAT]                                  ; $1d18: $f0 $41
  and $03                                         ; $1d1a: $e6 $03
  jr z, jr_000_1d18                               ; $1d1c: $28 $fa

jr_000_1d1e:
  ldh a, [rSTAT]                                  ; $1d1e: $f0 $41
  and $03                                         ; $1d20: $e6 $03
  jr nz, jr_000_1d1e                              ; $1d22: $20 $fa

  ld [$c09a], sp                                  ; $1d24: $08 $9a $c0
  ld sp, hl                                       ; $1d27: $f9
  ld c, $04                                       ; $1d28: $0e $04
  ld hl, $ff69                                    ; $1d2a: $21 $69 $ff

jr_000_1d2d:
  pop de                                          ; $1d2d: $d1
  ld [hl], e                                      ; $1d2e: $73
  ld [hl], d                                      ; $1d2f: $72
  dec c                                           ; $1d30: $0d
  jr nz, jr_000_1d2d                              ; $1d31: $20 $fa

  ld hl, $c09a                                    ; $1d33: $21 $9a $c0
  ld a, [hl+]                                     ; $1d36: $2a
  ld h, [hl]                                      ; $1d37: $66
  ld l, a                                         ; $1d38: $6f
  ld sp, hl                                       ; $1d39: $f9
  ld a, [$c076]                                   ; $1d3a: $fa $76 $c0
  inc a                                           ; $1d3d: $3c
  ld [$c076], a                                   ; $1d3e: $ea $76 $c0
  cp $03                                          ; $1d41: $fe $03
  jr nz, jr_000_1ce5                              ; $1d43: $20 $a0

  xor a                                           ; $1d45: $af
  ld [$c076], a                                   ; $1d46: $ea $76 $c0
  jr jr_000_1ce5                                  ; $1d49: $18 $9a

  push af                                         ; $1d4b: $f5
  push bc                                         ; $1d4c: $c5
  push de                                         ; $1d4d: $d5
  push hl                                         ; $1d4e: $e5
  ldh a, [rSVBK]                                  ; $1d4f: $f0 $70
  push af                                         ; $1d51: $f5
  ld a, $06                                       ; $1d52: $3e $06
  ldh [rSVBK], a                                  ; $1d54: $e0 $70
  ld hl, $c081                                    ; $1d56: $21 $81 $c0
  ld a, [hl+]                                     ; $1d59: $2a
  ld h, [hl]                                      ; $1d5a: $66
  ld l, a                                         ; $1d5b: $6f
  ld [$c09a], sp                                  ; $1d5c: $08 $9a $c0
  ld sp, hl                                       ; $1d5f: $f9
  ld hl, $ff69                                    ; $1d60: $21 $69 $ff
  ld a, [$c07f]                                   ; $1d63: $fa $7f $c0
  srl a                                           ; $1d66: $cb $3f
  ld b, a                                         ; $1d68: $47

jr_000_1d69:
  ld a, $a0                                       ; $1d69: $3e $a0
  ldh [rBCPS], a                                  ; $1d6b: $e0 $68

jr_000_1d6d:
  ldh a, [rSTAT]                                  ; $1d6d: $f0 $41
  and $03                                         ; $1d6f: $e6 $03
  jr z, jr_000_1d6d                               ; $1d71: $28 $fa

jr_000_1d73:
  ldh a, [rSTAT]                                  ; $1d73: $f0 $41
  and $03                                         ; $1d75: $e6 $03
  jr nz, jr_000_1d73                              ; $1d77: $20 $fa

  pop de                                          ; $1d79: $d1
  ld [hl], e                                      ; $1d7a: $73
  ld [hl], d                                      ; $1d7b: $72
  pop de                                          ; $1d7c: $d1
  ld [hl], e                                      ; $1d7d: $73
  ld [hl], d                                      ; $1d7e: $72
  pop de                                          ; $1d7f: $d1
  ld [hl], e                                      ; $1d80: $73
  ld [hl], d                                      ; $1d81: $72
  pop de                                          ; $1d82: $d1
  ld [hl], e                                      ; $1d83: $73
  ld [hl], d                                      ; $1d84: $72
  pop de                                          ; $1d85: $d1
  ld [hl], e                                      ; $1d86: $73
  ld [hl], d                                      ; $1d87: $72
  pop de                                          ; $1d88: $d1
  ld [hl], e                                      ; $1d89: $73
  ld [hl], d                                      ; $1d8a: $72
  pop de                                          ; $1d8b: $d1
  ld [hl], e                                      ; $1d8c: $73
  ld [hl], d                                      ; $1d8d: $72
  pop de                                          ; $1d8e: $d1
  ld [hl], e                                      ; $1d8f: $73
  ld [hl], d                                      ; $1d90: $72
  pop de                                          ; $1d91: $d1
  ld [hl], e                                      ; $1d92: $73
  ld [hl], d                                      ; $1d93: $72
  pop de                                          ; $1d94: $d1
  ld [hl], e                                      ; $1d95: $73
  ld [hl], d                                      ; $1d96: $72
  pop de                                          ; $1d97: $d1
  ld [hl], e                                      ; $1d98: $73
  ld [hl], d                                      ; $1d99: $72
  pop de                                          ; $1d9a: $d1
  ld [hl], e                                      ; $1d9b: $73
  ld [hl], d                                      ; $1d9c: $72
  pop de                                          ; $1d9d: $d1
  ld [hl], e                                      ; $1d9e: $73
  ld [hl], d                                      ; $1d9f: $72
  pop de                                          ; $1da0: $d1
  ld [hl], e                                      ; $1da1: $73
  ld [hl], d                                      ; $1da2: $72
  pop de                                          ; $1da3: $d1
  ld [hl], e                                      ; $1da4: $73
  ld [hl], d                                      ; $1da5: $72
  pop de                                          ; $1da6: $d1
  ld [hl], e                                      ; $1da7: $73
  ld [hl], d                                      ; $1da8: $72
  ldh a, [$ffcd]                                  ; $1da9: $f0 $cd
  cp $0b                                          ; $1dab: $fe $0b
  jr c, jr_000_1dd8                               ; $1dad: $38 $29

  cp $0e                                          ; $1daf: $fe $0e
  jr nc, jr_000_1dd8                              ; $1db1: $30 $25

  ld a, b                                         ; $1db3: $78
  cp $0d                                          ; $1db4: $fe $0d
  jr nz, jr_000_1dd8                              ; $1db6: $20 $20

  ld a, $80                                       ; $1db8: $3e $80
  ldh [rOCPS], a                                  ; $1dba: $e0 $6a
  ld c, $08                                       ; $1dbc: $0e $08
  ld de, $c056                                    ; $1dbe: $11 $56 $c0

jr_000_1dc1:
  ldh a, [rSTAT]                                  ; $1dc1: $f0 $41
  and $03                                         ; $1dc3: $e6 $03
  jr nz, jr_000_1dc1                              ; $1dc5: $20 $fa

jr_000_1dc7:
  ld a, [de]                                      ; $1dc7: $1a
  ldh [rOCPD], a                                  ; $1dc8: $e0 $6b
  inc de                                          ; $1dca: $13
  dec c                                           ; $1dcb: $0d
  jr nz, jr_000_1dc7                              ; $1dcc: $20 $f9

  ldh a, [rLCDC]                                  ; $1dce: $f0 $40
  set 1, a                                        ; $1dd0: $cb $cf
  set 2, a                                        ; $1dd2: $cb $d7
  ldh [rLCDC], a                                  ; $1dd4: $e0 $40
  jr jr_000_1de4                                  ; $1dd6: $18 $0c

jr_000_1dd8:
  ldh a, [rSTAT]                                  ; $1dd8: $f0 $41
  and $03                                         ; $1dda: $e6 $03
  jr z, jr_000_1dd8                               ; $1ddc: $28 $fa

jr_000_1dde:
  ldh a, [rSTAT]                                  ; $1dde: $f0 $41
  and $03                                         ; $1de0: $e6 $03
  jr nz, jr_000_1dde                              ; $1de2: $20 $fa

jr_000_1de4:
  dec b                                           ; $1de4: $05
  jr nz, jr_000_1d69                              ; $1de5: $20 $82

  ld hl, $c09a                                    ; $1de7: $21 $9a $c0
  ld a, [hl+]                                     ; $1dea: $2a
  ld h, [hl]                                      ; $1deb: $66
  ld l, a                                         ; $1dec: $6f
  ld sp, hl                                       ; $1ded: $f9
  ld a, $01                                       ; $1dee: $3e $01
  ldh [$fffa], a                                  ; $1df0: $e0 $fa
  call Call_000_193f                              ; $1df2: $cd $3f $19
  pop af                                          ; $1df5: $f1
  ldh [rSVBK], a                                  ; $1df6: $e0 $70
  pop hl                                          ; $1df8: $e1
  pop de                                          ; $1df9: $d1
  pop bc                                          ; $1dfa: $c1
  pop af                                          ; $1dfb: $f1
  reti                                            ; $1dfc: $d9


  push af                                         ; $1dfd: $f5
  push bc                                         ; $1dfe: $c5
  push de                                         ; $1dff: $d5
  push hl                                         ; $1e00: $e5
  ldh a, [rSVBK]                                  ; $1e01: $f0 $70
  push af                                         ; $1e03: $f5
  ld a, $06                                       ; $1e04: $3e $06
  ldh [rSVBK], a                                  ; $1e06: $e0 $70
  ld hl, $c081                                    ; $1e08: $21 $81 $c0
  ld a, [hl+]                                     ; $1e0b: $2a
  ld h, [hl]                                      ; $1e0c: $66
  ld l, a                                         ; $1e0d: $6f
  ld [$c09a], sp                                  ; $1e0e: $08 $9a $c0
  ld sp, hl                                       ; $1e11: $f9
  ld hl, $ff69                                    ; $1e12: $21 $69 $ff
  ld b, $0c                                       ; $1e15: $06 $0c
  jr jr_000_1e25                                  ; $1e17: $18 $0c

jr_000_1e19:
  ldh a, [rSTAT]                                  ; $1e19: $f0 $41
  and $03                                         ; $1e1b: $e6 $03
  jr z, jr_000_1e19                               ; $1e1d: $28 $fa

jr_000_1e1f:
  ldh a, [rSTAT]                                  ; $1e1f: $f0 $41
  and $03                                         ; $1e21: $e6 $03
  jr nz, jr_000_1e1f                              ; $1e23: $20 $fa

jr_000_1e25:
  ld c, $03                                       ; $1e25: $0e $03
  ld a, $a8                                       ; $1e27: $3e $a8
  ldh [rBCPS], a                                  ; $1e29: $e0 $68

jr_000_1e2b:
  ldh a, [rSTAT]                                  ; $1e2b: $f0 $41
  and $03                                         ; $1e2d: $e6 $03
  jr z, jr_000_1e2b                               ; $1e2f: $28 $fa

jr_000_1e31:
  ldh a, [rSTAT]                                  ; $1e31: $f0 $41
  and $03                                         ; $1e33: $e6 $03
  jr nz, jr_000_1e31                              ; $1e35: $20 $fa

jr_000_1e37:
  pop de                                          ; $1e37: $d1
  ld [hl], e                                      ; $1e38: $73
  ld [hl], d                                      ; $1e39: $72
  pop de                                          ; $1e3a: $d1
  ld [hl], e                                      ; $1e3b: $73
  ld [hl], d                                      ; $1e3c: $72
  pop de                                          ; $1e3d: $d1
  ld [hl], e                                      ; $1e3e: $73
  ld [hl], d                                      ; $1e3f: $72
  pop de                                          ; $1e40: $d1
  ld [hl], e                                      ; $1e41: $73
  ld [hl], d                                      ; $1e42: $72
  dec c                                           ; $1e43: $0d
  jr nz, jr_000_1e37                              ; $1e44: $20 $f1

  dec b                                           ; $1e46: $05
  jr nz, jr_000_1e19                              ; $1e47: $20 $d0

  ld hl, $c09a                                    ; $1e49: $21 $9a $c0
  ld a, [hl+]                                     ; $1e4c: $2a
  ld h, [hl]                                      ; $1e4d: $66
  ld l, a                                         ; $1e4e: $6f
  ld sp, hl                                       ; $1e4f: $f9
  ld a, $01                                       ; $1e50: $3e $01
  ldh [$fffa], a                                  ; $1e52: $e0 $fa
  call Call_000_193f                              ; $1e54: $cd $3f $19
  pop af                                          ; $1e57: $f1
  ldh [rSVBK], a                                  ; $1e58: $e0 $70
  pop hl                                          ; $1e5a: $e1
  pop de                                          ; $1e5b: $d1
  pop bc                                          ; $1e5c: $c1
  pop af                                          ; $1e5d: $f1
  reti                                            ; $1e5e: $d9


  push af                                         ; $1e5f: $f5
  push hl                                         ; $1e60: $e5

jr_000_1e61:
  ldh a, [rSTAT]                                  ; $1e61: $f0 $41
  and $03                                         ; $1e63: $e6 $03
  jr z, jr_000_1e61                               ; $1e65: $28 $fa

jr_000_1e67:
  ldh a, [rSTAT]                                  ; $1e67: $f0 $41
  and $03                                         ; $1e69: $e6 $03
  jr nz, jr_000_1e67                              ; $1e6b: $20 $fa

  ld hl, $ff40                                    ; $1e6d: $21 $40 $ff
  set 1, [hl]                                     ; $1e70: $cb $ce
  set 2, [hl]                                     ; $1e72: $cb $d6
  call Call_000_193f                              ; $1e74: $cd $3f $19
  pop hl                                          ; $1e77: $e1
  pop af                                          ; $1e78: $f1
  reti                                            ; $1e79: $d9


  push af                                         ; $1e7a: $f5
  push bc                                         ; $1e7b: $c5
  push hl                                         ; $1e7c: $e5
  ld c, $6a                                       ; $1e7d: $0e $6a
  ld a, $80                                       ; $1e7f: $3e $80
  ldh [c], a                                      ; $1e81: $e2
  inc c                                           ; $1e82: $0c
  ld b, $08                                       ; $1e83: $06 $08
  ld hl, $c056                                    ; $1e85: $21 $56 $c0

jr_000_1e88:
  ldh a, [rSTAT]                                  ; $1e88: $f0 $41
  and $03                                         ; $1e8a: $e6 $03
  jr z, jr_000_1e88                               ; $1e8c: $28 $fa

jr_000_1e8e:
  ldh a, [rSTAT]                                  ; $1e8e: $f0 $41
  and $03                                         ; $1e90: $e6 $03
  jr nz, jr_000_1e8e                              ; $1e92: $20 $fa

jr_000_1e94:
  ld a, [hl+]                                     ; $1e94: $2a
  ldh [c], a                                      ; $1e95: $e2
  dec b                                           ; $1e96: $05
  jr nz, jr_000_1e94                              ; $1e97: $20 $fb

  ld a, $01                                       ; $1e99: $3e $01
  ldh [$fffa], a                                  ; $1e9b: $e0 $fa
  call Call_000_193f                              ; $1e9d: $cd $3f $19
  pop hl                                          ; $1ea0: $e1
  pop bc                                          ; $1ea1: $c1
  pop af                                          ; $1ea2: $f1
  reti                                            ; $1ea3: $d9


  push af                                         ; $1ea4: $f5
  push bc                                         ; $1ea5: $c5
  push de                                         ; $1ea6: $d5
  push hl                                         ; $1ea7: $e5
  ldh a, [rSVBK]                                  ; $1ea8: $f0 $70
  push af                                         ; $1eaa: $f5
  ld a, $06                                       ; $1eab: $3e $06
  ldh [rSVBK], a                                  ; $1ead: $e0 $70
  ld hl, $c081                                    ; $1eaf: $21 $81 $c0
  ld a, [hl+]                                     ; $1eb2: $2a
  ld h, [hl]                                      ; $1eb3: $66
  ld l, a                                         ; $1eb4: $6f
  ld [$c09a], sp                                  ; $1eb5: $08 $9a $c0
  ld sp, hl                                       ; $1eb8: $f9
  ld hl, $ff69                                    ; $1eb9: $21 $69 $ff
  ld a, [$c07f]                                   ; $1ebc: $fa $7f $c0
  ld b, a                                         ; $1ebf: $47

jr_000_1ec0:
  ld c, $04                                       ; $1ec0: $0e $04
  ld a, b                                         ; $1ec2: $78
  and $01                                         ; $1ec3: $e6 $01
  jr nz, jr_000_1ecc                              ; $1ec5: $20 $05

  dec c                                           ; $1ec7: $0d
  ld a, $88                                       ; $1ec8: $3e $88
  ldh [rBCPS], a                                  ; $1eca: $e0 $68

jr_000_1ecc:
  ldh a, [rSTAT]                                  ; $1ecc: $f0 $41
  and $03                                         ; $1ece: $e6 $03
  jr z, jr_000_1ecc                               ; $1ed0: $28 $fa

jr_000_1ed2:
  ldh a, [rSTAT]                                  ; $1ed2: $f0 $41
  and $03                                         ; $1ed4: $e6 $03
  jr nz, jr_000_1ed2                              ; $1ed6: $20 $fa

jr_000_1ed8:
  pop de                                          ; $1ed8: $d1
  ld [hl], e                                      ; $1ed9: $73
  ld [hl], d                                      ; $1eda: $72
  pop de                                          ; $1edb: $d1
  ld [hl], e                                      ; $1edc: $73
  ld [hl], d                                      ; $1edd: $72
  pop de                                          ; $1ede: $d1
  ld [hl], e                                      ; $1edf: $73
  ld [hl], d                                      ; $1ee0: $72
  pop de                                          ; $1ee1: $d1
  ld [hl], e                                      ; $1ee2: $73
  ld [hl], d                                      ; $1ee3: $72
  dec c                                           ; $1ee4: $0d
  jr nz, jr_000_1ed8                              ; $1ee5: $20 $f1

  dec b                                           ; $1ee7: $05
  jr nz, jr_000_1ec0                              ; $1ee8: $20 $d6

  ld hl, $c09a                                    ; $1eea: $21 $9a $c0
  ld a, [hl+]                                     ; $1eed: $2a
  ld h, [hl]                                      ; $1eee: $66
  ld l, a                                         ; $1eef: $6f
  ld sp, hl                                       ; $1ef0: $f9
  ld a, $01                                       ; $1ef1: $3e $01
  ldh [$fffa], a                                  ; $1ef3: $e0 $fa
  call Call_000_193f                              ; $1ef5: $cd $3f $19
  pop af                                          ; $1ef8: $f1
  ldh [rSVBK], a                                  ; $1ef9: $e0 $70
  pop hl                                          ; $1efb: $e1
  pop de                                          ; $1efc: $d1
  pop bc                                          ; $1efd: $c1
  pop af                                          ; $1efe: $f1
  reti                                            ; $1eff: $d9


  ld hl, $c04f                                    ; $1f00: $21 $4f $c0
  ld e, [hl]                                      ; $1f03: $5e
  inc hl                                          ; $1f04: $23
  ld d, [hl]                                      ; $1f05: $56
  ld hl, $c04d                                    ; $1f06: $21 $4d $c0
  ld a, [hl+]                                     ; $1f09: $2a
  ld h, [hl]                                      ; $1f0a: $66
  ld l, a                                         ; $1f0b: $6f

jr_000_1f0c:
  ldh a, [rSTAT]                                  ; $1f0c: $f0 $41
  and $03                                         ; $1f0e: $e6 $03
  jr z, jr_000_1f0c                               ; $1f10: $28 $fa

jr_000_1f12:
  ldh a, [rSTAT]                                  ; $1f12: $f0 $41
  and $03                                         ; $1f14: $e6 $03
  jr nz, jr_000_1f12                              ; $1f16: $20 $fa

  jp Jump_000_0245                                ; $1f18: $c3 $45 $02


  ldh a, [rSVBK]                                  ; $1f1b: $f0 $70
  push af                                         ; $1f1d: $f5
  ld a, $03                                       ; $1f1e: $3e $03
  ldh [rSVBK], a                                  ; $1f20: $e0 $70
  ld a, $01                                       ; $1f22: $3e $01
  ldh [rVBK], a                                   ; $1f24: $e0 $4f
  ld c, $0a                                       ; $1f26: $0e $0a
  ld de, $9c00                                    ; $1f28: $11 $00 $9c
  ld hl, $d900                                    ; $1f2b: $21 $00 $d9
  call Call_000_1f84                              ; $1f2e: $cd $84 $1f
  xor a                                           ; $1f31: $af
  ldh [rVBK], a                                   ; $1f32: $e0 $4f
  ld c, $0a                                       ; $1f34: $0e $0a
  ld de, $9c00                                    ; $1f36: $11 $00 $9c
  ld hl, $d400                                    ; $1f39: $21 $00 $d4
  call Call_000_1f84                              ; $1f3c: $cd $84 $1f
  pop af                                          ; $1f3f: $f1
  ldh [rSVBK], a                                  ; $1f40: $e0 $70
  ret                                             ; $1f42: $c9


  ld a, [$c051]                                   ; $1f43: $fa $51 $c0
  or a                                            ; $1f46: $b7
  ret z                                           ; $1f47: $c8

  ld c, a                                         ; $1f48: $4f
  ld hl, $c054                                    ; $1f49: $21 $54 $c0
  ld e, [hl]                                      ; $1f4c: $5e
  inc hl                                          ; $1f4d: $23
  ld d, [hl]                                      ; $1f4e: $56
  ld hl, $c052                                    ; $1f4f: $21 $52 $c0
  ld a, [hl+]                                     ; $1f52: $2a
  ld h, [hl]                                      ; $1f53: $66
  ld l, a                                         ; $1f54: $6f
  jr jr_000_1f84                                  ; $1f55: $18 $2d

  ldh a, [rSVBK]                                  ; $1f57: $f0 $70
  push af                                         ; $1f59: $f5
  ld a, $02                                       ; $1f5a: $3e $02
  ldh [rSVBK], a                                  ; $1f5c: $e0 $70
  ld hl, $c0d5                                    ; $1f5e: $21 $d5 $c0
  call Call_000_1f74                              ; $1f61: $cd $74 $1f
  call nz, Call_000_1f84                          ; $1f64: $c4 $84 $1f
  ld hl, $c0de                                    ; $1f67: $21 $de $c0
  call Call_000_1f74                              ; $1f6a: $cd $74 $1f
  call nz, Call_000_1f84                          ; $1f6d: $c4 $84 $1f
  pop af                                          ; $1f70: $f1
  ldh [rSVBK], a                                  ; $1f71: $e0 $70
  ret                                             ; $1f73: $c9


Call_000_1f74:
  ld a, [hl]                                      ; $1f74: $7e
  or a                                            ; $1f75: $b7
  ret z                                           ; $1f76: $c8

  ld [hl], $00                                    ; $1f77: $36 $00
  inc hl                                          ; $1f79: $23
  add a                                           ; $1f7a: $87
  ld c, a                                         ; $1f7b: $4f
  ld a, [hl+]                                     ; $1f7c: $2a
  ld e, a                                         ; $1f7d: $5f
  ld a, [hl+]                                     ; $1f7e: $2a
  ld d, a                                         ; $1f7f: $57
  ld a, [hl+]                                     ; $1f80: $2a
  ld h, [hl]                                      ; $1f81: $66
  ld l, a                                         ; $1f82: $6f
  ret                                             ; $1f83: $c9


Call_000_1f84:
jr_000_1f84:
  ld a, e                                         ; $1f84: $7b
  ldh [rHDMA4], a                                 ; $1f85: $e0 $54
  ld a, d                                         ; $1f87: $7a
  ldh [rHDMA3], a                                 ; $1f88: $e0 $53
  ld a, l                                         ; $1f8a: $7d
  ldh [rHDMA2], a                                 ; $1f8b: $e0 $52
  ld a, h                                         ; $1f8d: $7c
  ldh [rHDMA1], a                                 ; $1f8e: $e0 $51
  ld a, c                                         ; $1f90: $79
  srl a                                           ; $1f91: $cb $3f
  srl a                                           ; $1f93: $cb $3f
  jr z, jr_000_1fac                               ; $1f95: $28 $15

  ld b, a                                         ; $1f97: $47
  ld d, $03                                       ; $1f98: $16 $03

jr_000_1f9a:
  ldh a, [rSTAT]                                  ; $1f9a: $f0 $41
  and $03                                         ; $1f9c: $e6 $03
  jr z, jr_000_1f9a                               ; $1f9e: $28 $fa

jr_000_1fa0:
  ldh a, [rSTAT]                                  ; $1fa0: $f0 $41
  and $03                                         ; $1fa2: $e6 $03
  jr nz, jr_000_1fa0                              ; $1fa4: $20 $fa

  ld a, d                                         ; $1fa6: $7a
  ldh [rHDMA5], a                                 ; $1fa7: $e0 $55
  dec b                                           ; $1fa9: $05
  jr nz, jr_000_1f9a                              ; $1faa: $20 $ee

jr_000_1fac:
  ld a, c                                         ; $1fac: $79
  and $03                                         ; $1fad: $e6 $03
  ret z                                           ; $1faf: $c8

  dec a                                           ; $1fb0: $3d
  ld b, a                                         ; $1fb1: $47

jr_000_1fb2:
  ldh a, [rSTAT]                                  ; $1fb2: $f0 $41
  and $03                                         ; $1fb4: $e6 $03
  jr z, jr_000_1fb2                               ; $1fb6: $28 $fa

jr_000_1fb8:
  ldh a, [rSTAT]                                  ; $1fb8: $f0 $41
  and $03                                         ; $1fba: $e6 $03
  jr nz, jr_000_1fb8                              ; $1fbc: $20 $fa

  ld a, b                                         ; $1fbe: $78
  ldh [rHDMA5], a                                 ; $1fbf: $e0 $55
  ret                                             ; $1fc1: $c9


  push af                                         ; $1fc2: $f5
  push hl                                         ; $1fc3: $e5
  ld hl, $ff40                                    ; $1fc4: $21 $40 $ff
  res 1, [hl]                                     ; $1fc7: $cb $8e
  ldh a, [rSCY]                                   ; $1fc9: $f0 $42
  dec a                                           ; $1fcb: $3d
  ldh [rSCY], a                                   ; $1fcc: $e0 $42
  ldh a, [$ff8b]                                  ; $1fce: $f0 $8b
  or a                                            ; $1fd0: $b7
  ld a, [$4000]                                   ; $1fd1: $fa $00 $40
  jr z, jr_000_1fd8                               ; $1fd4: $28 $02

  ldh a, [$ff8a]                                  ; $1fd6: $f0 $8a

jr_000_1fd8:
  push af                                         ; $1fd8: $f5
  ld a, $08                                       ; $1fd9: $3e $08
  ld [$2000], a                                   ; $1fdb: $ea $00 $20
  ld a, [$cc1a]                                   ; $1fde: $fa $1a $cc
  ld l, $06                                       ; $1fe1: $2e $06
  add l                                           ; $1fe3: $85
  ld [$cc1a], a                                   ; $1fe4: $ea $1a $cc
  sub l                                           ; $1fe7: $95
  ld l, a                                         ; $1fe8: $6f
  ld a, [$cc1b]                                   ; $1fe9: $fa $1b $cc
  add l                                           ; $1fec: $85
  ld l, a                                         ; $1fed: $6f
  ld h, $41                                       ; $1fee: $26 $41
  ld a, [hl]                                      ; $1ff0: $7e
  sra a                                           ; $1ff1: $cb $2f
  sra a                                           ; $1ff3: $cb $2f
  ld l, a                                         ; $1ff5: $6f
  ld a, [$cc1c]                                   ; $1ff6: $fa $1c $cc
  add l                                           ; $1ff9: $85
  ldh [rSCX], a                                   ; $1ffa: $e0 $43
  pop af                                          ; $1ffc: $f1
  ld [$2000], a                                   ; $1ffd: $ea $00 $20
  ld a, [$c006]                                   ; $2000: $fa $06 $c0
  inc a                                           ; $2003: $3c
  ld [$c006], a                                   ; $2004: $ea $06 $c0
  ld l, a                                         ; $2007: $6f
  ld a, [$c00a]                                   ; $2008: $fa $0a $c0
  cp l                                            ; $200b: $bd
  jr z, jr_000_2015                               ; $200c: $28 $07

  ld a, [$c003]                                   ; $200e: $fa $03 $c0
  dec a                                           ; $2011: $3d
  ld [$c003], a                                   ; $2012: $ea $03 $c0

jr_000_2015:
  call Call_000_193f                              ; $2015: $cd $3f $19
  pop hl                                          ; $2018: $e1
  pop af                                          ; $2019: $f1
  reti                                            ; $201a: $d9


  push af                                         ; $201b: $f5
  push hl                                         ; $201c: $e5
  ld hl, $ff40                                    ; $201d: $21 $40 $ff
  res 1, [hl]                                     ; $2020: $cb $8e
  ld hl, $ff42                                    ; $2022: $21 $42 $ff
  dec [hl]                                        ; $2025: $35
  dec [hl]                                        ; $2026: $35
  ld hl, $cc1a                                    ; $2027: $21 $1a $cc
  ldh a, [$ff8b]                                  ; $202a: $f0 $8b
  or a                                            ; $202c: $b7
  ld a, [$4000]                                   ; $202d: $fa $00 $40
  jr z, jr_000_2034                               ; $2030: $28 $02

  ldh a, [$ff8a]                                  ; $2032: $f0 $8a

jr_000_2034:
  push af                                         ; $2034: $f5
  ld a, $08                                       ; $2035: $3e $08
  ld [$2000], a                                   ; $2037: $ea $00 $20
  ld a, [hl]                                      ; $203a: $7e
  add $06                                         ; $203b: $c6 $06
  ld [hl+], a                                     ; $203d: $22
  sub $06                                         ; $203e: $d6 $06
  add [hl]                                        ; $2040: $86
  ld l, a                                         ; $2041: $6f
  ld h, $41                                       ; $2042: $26 $41
  ld a, [hl]                                      ; $2044: $7e
  sra a                                           ; $2045: $cb $2f
  sra a                                           ; $2047: $cb $2f
  ld l, a                                         ; $2049: $6f
  ld a, [$cc1c]                                   ; $204a: $fa $1c $cc
  add l                                           ; $204d: $85
  ldh [rSCX], a                                   ; $204e: $e0 $43
  pop af                                          ; $2050: $f1
  ld [$2000], a                                   ; $2051: $ea $00 $20
  ld hl, $c006                                    ; $2054: $21 $06 $c0
  inc [hl]                                        ; $2057: $34
  ld l, [hl]                                      ; $2058: $6e
  ld a, [$c00a]                                   ; $2059: $fa $0a $c0
  cp l                                            ; $205c: $bd
  jr z, jr_000_2064                               ; $205d: $28 $05

  ld a, l                                         ; $205f: $7d
  ld hl, $c003                                    ; $2060: $21 $03 $c0
  dec [hl]                                        ; $2063: $35

jr_000_2064:
  call Call_000_193f                              ; $2064: $cd $3f $19
  pop hl                                          ; $2067: $e1
  pop af                                          ; $2068: $f1
  reti                                            ; $2069: $d9


  push af                                         ; $206a: $f5
  push hl                                         ; $206b: $e5
  ld hl, $ff40                                    ; $206c: $21 $40 $ff
  set 1, [hl]                                     ; $206f: $cb $ce
  ld a, [$cc12]                                   ; $2071: $fa $12 $cc
  ldh [rSCY], a                                   ; $2074: $e0 $42
  ld a, [$cc1c]                                   ; $2076: $fa $1c $cc
  ldh [rSCX], a                                   ; $2079: $e0 $43
  xor a                                           ; $207b: $af
  ld [$c006], a                                   ; $207c: $ea $06 $c0
  ld a, [$cc14]                                   ; $207f: $fa $14 $cc
  or a                                            ; $2082: $b7
  jr nz, jr_000_208c                              ; $2083: $20 $07

  ld a, [$c00a]                                   ; $2085: $fa $0a $c0
  dec a                                           ; $2088: $3d
  ld [$c00a], a                                   ; $2089: $ea $0a $c0

jr_000_208c:
  call Call_000_193f                              ; $208c: $cd $3f $19
  pop hl                                          ; $208f: $e1
  pop af                                          ; $2090: $f1
  reti                                            ; $2091: $d9


  push af                                         ; $2092: $f5
  push hl                                         ; $2093: $e5
  ld hl, $ff40                                    ; $2094: $21 $40 $ff
  set 1, [hl]                                     ; $2097: $cb $ce
  ld a, [$cc13]                                   ; $2099: $fa $13 $cc
  or a                                            ; $209c: $b7
  jr z, jr_000_20b4                               ; $209d: $28 $15

  ld a, [$cc14]                                   ; $209f: $fa $14 $cc
  or a                                            ; $20a2: $b7
  jr z, jr_000_20ae                               ; $20a3: $28 $09

  dec a                                           ; $20a5: $3d
  ld [$cc14], a                                   ; $20a6: $ea $14 $cc
  ld a, [$cc11]                                   ; $20a9: $fa $11 $cc
  jr jr_000_20c1                                  ; $20ac: $18 $13

jr_000_20ae:
  ld a, [$cc13]                                   ; $20ae: $fa $13 $cc
  ld [$cc14], a                                   ; $20b1: $ea $14 $cc

jr_000_20b4:
  ld a, [$c00a]                                   ; $20b4: $fa $0a $c0
  or a                                            ; $20b7: $b7
  jr z, jr_000_20d9                               ; $20b8: $28 $1f

  ld a, [$cc11]                                   ; $20ba: $fa $11 $cc
  dec a                                           ; $20bd: $3d
  ld [$cc11], a                                   ; $20be: $ea $11 $cc

jr_000_20c1:
  ldh [$ffc9], a                                  ; $20c1: $e0 $c9
  ld a, [$cc1c]                                   ; $20c3: $fa $1c $cc
  ldh [$ffc8], a                                  ; $20c6: $e0 $c8
  ld a, [$cc1b]                                   ; $20c8: $fa $1b $cc
  inc a                                           ; $20cb: $3c
  ld [$cc1b], a                                   ; $20cc: $ea $1b $cc
  xor a                                           ; $20cf: $af
  ld [$cc1a], a                                   ; $20d0: $ea $1a $cc
  call Call_000_193f                              ; $20d3: $cd $3f $19
  pop hl                                          ; $20d6: $e1
  pop af                                          ; $20d7: $f1
  reti                                            ; $20d8: $d9


jr_000_20d9:
  ld a, [$cc12]                                   ; $20d9: $fa $12 $cc
  ldh [$ffc9], a                                  ; $20dc: $e0 $c9
  pop hl                                          ; $20de: $e1
  jp Jump_000_2311                                ; $20df: $c3 $11 $23


  push af                                         ; $20e2: $f5
  push hl                                         ; $20e3: $e5
  ld a, [$cc12]                                   ; $20e4: $fa $12 $cc
  ldh [rSCY], a                                   ; $20e7: $e0 $42
  xor a                                           ; $20e9: $af
  ld [$c006], a                                   ; $20ea: $ea $06 $c0
  ld a, [$cc14]                                   ; $20ed: $fa $14 $cc
  or a                                            ; $20f0: $b7
  jr nz, jr_000_20fa                              ; $20f1: $20 $07

  ld a, [$c00a]                                   ; $20f3: $fa $0a $c0
  inc a                                           ; $20f6: $3c
  ld [$c00a], a                                   ; $20f7: $ea $0a $c0

jr_000_20fa:
  call Call_000_193f                              ; $20fa: $cd $3f $19
  pop hl                                          ; $20fd: $e1
  pop af                                          ; $20fe: $f1
  reti                                            ; $20ff: $d9


  push af                                         ; $2100: $f5
  push hl                                         ; $2101: $e5
  ld a, [$cc13]                                   ; $2102: $fa $13 $cc
  or a                                            ; $2105: $b7
  jr z, jr_000_211d                               ; $2106: $28 $15

  ld a, [$cc14]                                   ; $2108: $fa $14 $cc
  or a                                            ; $210b: $b7
  jr z, jr_000_2117                               ; $210c: $28 $09

  dec a                                           ; $210e: $3d
  ld [$cc14], a                                   ; $210f: $ea $14 $cc
  ld a, [$cc11]                                   ; $2112: $fa $11 $cc
  jr jr_000_2124                                  ; $2115: $18 $0d

jr_000_2117:
  ld a, [$cc13]                                   ; $2117: $fa $13 $cc
  ld [$cc14], a                                   ; $211a: $ea $14 $cc

jr_000_211d:
  ld a, [$cc11]                                   ; $211d: $fa $11 $cc
  inc a                                           ; $2120: $3c
  ld [$cc11], a                                   ; $2121: $ea $11 $cc

jr_000_2124:
  ldh [$ffc9], a                                  ; $2124: $e0 $c9
  ld a, [$c00a]                                   ; $2126: $fa $0a $c0
  cp $8f                                          ; $2129: $fe $8f
  jp z, Jump_000_2300                             ; $212b: $ca $00 $23

  call Call_000_193f                              ; $212e: $cd $3f $19
  pop hl                                          ; $2131: $e1
  pop af                                          ; $2132: $f1
  reti                                            ; $2133: $d9


  push af                                         ; $2134: $f5
  push hl                                         ; $2135: $e5
  ld hl, $ff42                                    ; $2136: $21 $42 $ff
  dec [hl]                                        ; $2139: $35
  ldh a, [$ff8b]                                  ; $213a: $f0 $8b
  or a                                            ; $213c: $b7
  ld a, [$4000]                                   ; $213d: $fa $00 $40
  jr z, jr_000_2144                               ; $2140: $28 $02

  ldh a, [$ff8a]                                  ; $2142: $f0 $8a

jr_000_2144:
  push af                                         ; $2144: $f5
  ld a, $08                                       ; $2145: $3e $08
  ld [$2000], a                                   ; $2147: $ea $00 $20
  ld a, [$cc1a]                                   ; $214a: $fa $1a $cc
  ld l, $06                                       ; $214d: $2e $06
  add l                                           ; $214f: $85
  ld [$cc1a], a                                   ; $2150: $ea $1a $cc
  sub l                                           ; $2153: $95
  ld l, a                                         ; $2154: $6f
  ld a, [$cc1b]                                   ; $2155: $fa $1b $cc
  add l                                           ; $2158: $85
  ld l, a                                         ; $2159: $6f
  ld h, $41                                       ; $215a: $26 $41
  ld a, [hl]                                      ; $215c: $7e
  sra a                                           ; $215d: $cb $2f
  sra a                                           ; $215f: $cb $2f
  ld l, a                                         ; $2161: $6f
  ld a, [$cc1c]                                   ; $2162: $fa $1c $cc
  add l                                           ; $2165: $85
  ldh [rSCX], a                                   ; $2166: $e0 $43
  pop af                                          ; $2168: $f1
  ld [$2000], a                                   ; $2169: $ea $00 $20
  ld a, [$c006]                                   ; $216c: $fa $06 $c0
  inc a                                           ; $216f: $3c
  ld [$c006], a                                   ; $2170: $ea $06 $c0
  ld l, a                                         ; $2173: $6f
  ld a, [$c00a]                                   ; $2174: $fa $0a $c0
  cp l                                            ; $2177: $bd
  jr z, jr_000_2186                               ; $2178: $28 $0c

  ld a, [$c003]                                   ; $217a: $fa $03 $c0
  dec a                                           ; $217d: $3d
  ld [$c003], a                                   ; $217e: $ea $03 $c0
  ld hl, $ff40                                    ; $2181: $21 $40 $ff
  res 1, [hl]                                     ; $2184: $cb $8e

jr_000_2186:
  call Call_000_193f                              ; $2186: $cd $3f $19
  pop hl                                          ; $2189: $e1
  pop af                                          ; $218a: $f1
  reti                                            ; $218b: $d9


  push af                                         ; $218c: $f5
  push hl                                         ; $218d: $e5
  ld a, [$cc12]                                   ; $218e: $fa $12 $cc
  ldh [rSCY], a                                   ; $2191: $e0 $42
  xor a                                           ; $2193: $af
  ld [$c006], a                                   ; $2194: $ea $06 $c0
  ld a, [$cc14]                                   ; $2197: $fa $14 $cc
  or a                                            ; $219a: $b7
  jr nz, jr_000_21a4                              ; $219b: $20 $07

  ld a, [$c00a]                                   ; $219d: $fa $0a $c0
  dec a                                           ; $21a0: $3d
  ld [$c00a], a                                   ; $21a1: $ea $0a $c0

jr_000_21a4:
  call Call_000_193f                              ; $21a4: $cd $3f $19
  pop hl                                          ; $21a7: $e1
  pop af                                          ; $21a8: $f1
  reti                                            ; $21a9: $d9


  push af                                         ; $21aa: $f5
  push hl                                         ; $21ab: $e5
  ld a, [$cc14]                                   ; $21ac: $fa $14 $cc
  or a                                            ; $21af: $b7
  jr nz, jr_000_21b9                              ; $21b0: $20 $07

  ld a, [$cc1d]                                   ; $21b2: $fa $1d $cc
  inc a                                           ; $21b5: $3c
  ld [$cc1d], a                                   ; $21b6: $ea $1d $cc

jr_000_21b9:
  call Call_000_193f                              ; $21b9: $cd $3f $19
  pop hl                                          ; $21bc: $e1
  pop af                                          ; $21bd: $f1
  reti                                            ; $21be: $d9


  push af                                         ; $21bf: $f5
  push hl                                         ; $21c0: $e5
  ldh a, [rSCY]                                   ; $21c1: $f0 $42
  dec a                                           ; $21c3: $3d
  ldh [rSCY], a                                   ; $21c4: $e0 $42
  ld a, [$c012]                                   ; $21c6: $fa $12 $c0
  inc a                                           ; $21c9: $3c
  ld [$c012], a                                   ; $21ca: $ea $12 $c0
  ld l, a                                         ; $21cd: $6f
  ld a, [$c016]                                   ; $21ce: $fa $16 $c0
  cp l                                            ; $21d1: $bd
  jr z, jr_000_21db                               ; $21d2: $28 $07

  ld a, [$c003]                                   ; $21d4: $fa $03 $c0
  dec a                                           ; $21d7: $3d
  ld [$c003], a                                   ; $21d8: $ea $03 $c0

jr_000_21db:
  call Call_000_193f                              ; $21db: $cd $3f $19
  pop hl                                          ; $21de: $e1
  pop af                                          ; $21df: $f1
  reti                                            ; $21e0: $d9


  push af                                         ; $21e1: $f5
  push hl                                         ; $21e2: $e5
  ld a, [$cc13]                                   ; $21e3: $fa $13 $cc
  or a                                            ; $21e6: $b7
  jr z, jr_000_21fe                               ; $21e7: $28 $15

  ld a, [$cc14]                                   ; $21e9: $fa $14 $cc
  or a                                            ; $21ec: $b7
  jr z, jr_000_21f8                               ; $21ed: $28 $09

  dec a                                           ; $21ef: $3d
  ld [$cc14], a                                   ; $21f0: $ea $14 $cc
  ld a, [$cc11]                                   ; $21f3: $fa $11 $cc
  jr jr_000_2205                                  ; $21f6: $18 $0d

jr_000_21f8:
  ld a, [$cc13]                                   ; $21f8: $fa $13 $cc
  ld [$cc14], a                                   ; $21fb: $ea $14 $cc

jr_000_21fe:
  ld a, [$cc11]                                   ; $21fe: $fa $11 $cc
  dec a                                           ; $2201: $3d
  ld [$cc11], a                                   ; $2202: $ea $11 $cc

jr_000_2205:
  ldh [$ffc9], a                                  ; $2205: $e0 $c9
  ld a, [$cc1d]                                   ; $2207: $fa $1d $cc
  cp $8e                                          ; $220a: $fe $8e
  jr z, jr_000_221e                               ; $220c: $28 $10

  ld [$c012], a                                   ; $220e: $ea $12 $c0
  ld a, [$c00a]                                   ; $2211: $fa $0a $c0
  cp $01                                          ; $2214: $fe $01
  jr z, jr_000_221e                               ; $2216: $28 $06

  call Call_000_193f                              ; $2218: $cd $3f $19
  pop hl                                          ; $221b: $e1
  pop af                                          ; $221c: $f1
  reti                                            ; $221d: $d9


jr_000_221e:
  pop hl                                          ; $221e: $e1
  jp Jump_000_2311                                ; $221f: $c3 $11 $23


  push af                                         ; $2222: $f5
  push hl                                         ; $2223: $e5
  ld hl, $ff42                                    ; $2224: $21 $42 $ff
  dec [hl]                                        ; $2227: $35
  ldh a, [$ff8b]                                  ; $2228: $f0 $8b
  or a                                            ; $222a: $b7
  ld a, [$4000]                                   ; $222b: $fa $00 $40
  jr z, jr_000_2232                               ; $222e: $28 $02

  ldh a, [$ff8a]                                  ; $2230: $f0 $8a

jr_000_2232:
  push af                                         ; $2232: $f5
  ld a, $08                                       ; $2233: $3e $08
  ld [$2000], a                                   ; $2235: $ea $00 $20
  ld a, [$cc1a]                                   ; $2238: $fa $1a $cc
  ld l, $06                                       ; $223b: $2e $06
  add l                                           ; $223d: $85
  ld [$cc1a], a                                   ; $223e: $ea $1a $cc
  sub l                                           ; $2241: $95
  ld l, a                                         ; $2242: $6f
  ld a, [$cc1b]                                   ; $2243: $fa $1b $cc
  add l                                           ; $2246: $85
  ld l, a                                         ; $2247: $6f
  ld h, $41                                       ; $2248: $26 $41
  ld a, [hl]                                      ; $224a: $7e
  sra a                                           ; $224b: $cb $2f
  sra a                                           ; $224d: $cb $2f
  ld l, a                                         ; $224f: $6f
  ld a, [$cc1c]                                   ; $2250: $fa $1c $cc
  add l                                           ; $2253: $85
  ldh [rSCX], a                                   ; $2254: $e0 $43
  pop af                                          ; $2256: $f1
  ld [$2000], a                                   ; $2257: $ea $00 $20
  ld a, [$c012]                                   ; $225a: $fa $12 $c0
  inc a                                           ; $225d: $3c
  ld [$c012], a                                   ; $225e: $ea $12 $c0
  ld l, a                                         ; $2261: $6f
  ld a, [$c016]                                   ; $2262: $fa $16 $c0
  cp l                                            ; $2265: $bd
  jr z, jr_000_2271                               ; $2266: $28 $09

  ld hl, $c003                                    ; $2268: $21 $03 $c0
  dec [hl]                                        ; $226b: $35
  ld hl, $ff40                                    ; $226c: $21 $40 $ff
  res 1, [hl]                                     ; $226f: $cb $8e

jr_000_2271:
  call Call_000_193f                              ; $2271: $cd $3f $19
  pop hl                                          ; $2274: $e1
  pop af                                          ; $2275: $f1
  reti                                            ; $2276: $d9


  push af                                         ; $2277: $f5
  push hl                                         ; $2278: $e5
  ld a, [$cc12]                                   ; $2279: $fa $12 $cc
  ldh [rSCY], a                                   ; $227c: $e0 $42
  ld a, [$cc1c]                                   ; $227e: $fa $1c $cc
  ldh [rSCX], a                                   ; $2281: $e0 $43
  xor a                                           ; $2283: $af
  ld [$c006], a                                   ; $2284: $ea $06 $c0
  ld hl, $ff40                                    ; $2287: $21 $40 $ff
  set 1, [hl]                                     ; $228a: $cb $ce
  ld a, [$cc14]                                   ; $228c: $fa $14 $cc
  or a                                            ; $228f: $b7
  jr nz, jr_000_2296                              ; $2290: $20 $04

  ld hl, $c00a                                    ; $2292: $21 $0a $c0
  inc [hl]                                        ; $2295: $34

jr_000_2296:
  call Call_000_193f                              ; $2296: $cd $3f $19
  pop hl                                          ; $2299: $e1
  pop af                                          ; $229a: $f1
  reti                                            ; $229b: $d9


  push af                                         ; $229c: $f5
  push hl                                         ; $229d: $e5
  ld a, [$cc14]                                   ; $229e: $fa $14 $cc
  or a                                            ; $22a1: $b7
  jr nz, jr_000_22a8                              ; $22a2: $20 $04

  ld hl, $cc1d                                    ; $22a4: $21 $1d $cc
  dec [hl]                                        ; $22a7: $35

jr_000_22a8:
  call Call_000_193f                              ; $22a8: $cd $3f $19
  pop hl                                          ; $22ab: $e1
  pop af                                          ; $22ac: $f1
  reti                                            ; $22ad: $d9


  push af                                         ; $22ae: $f5
  push hl                                         ; $22af: $e5
  ld hl, $ff40                                    ; $22b0: $21 $40 $ff
  set 1, [hl]                                     ; $22b3: $cb $ce
  ld a, [$cc13]                                   ; $22b5: $fa $13 $cc
  or a                                            ; $22b8: $b7
  jr z, jr_000_22d0                               ; $22b9: $28 $15

  ld a, [$cc14]                                   ; $22bb: $fa $14 $cc
  or a                                            ; $22be: $b7
  jr z, jr_000_22ca                               ; $22bf: $28 $09

  dec a                                           ; $22c1: $3d
  ld [$cc14], a                                   ; $22c2: $ea $14 $cc
  ld a, [$cc11]                                   ; $22c5: $fa $11 $cc
  jr jr_000_22d7                                  ; $22c8: $18 $0d

jr_000_22ca:
  ld a, [$cc13]                                   ; $22ca: $fa $13 $cc
  ld [$cc14], a                                   ; $22cd: $ea $14 $cc

jr_000_22d0:
  ld a, [$cc11]                                   ; $22d0: $fa $11 $cc
  inc a                                           ; $22d3: $3c
  ld [$cc11], a                                   ; $22d4: $ea $11 $cc

jr_000_22d7:
  ldh [$ffc9], a                                  ; $22d7: $e0 $c9
  ld a, [$cc1c]                                   ; $22d9: $fa $1c $cc
  ldh [$ffc8], a                                  ; $22dc: $e0 $c8
  ld a, [$cc1b]                                   ; $22de: $fa $1b $cc
  inc a                                           ; $22e1: $3c
  ld [$cc1b], a                                   ; $22e2: $ea $1b $cc
  xor a                                           ; $22e5: $af
  ld [$cc1a], a                                   ; $22e6: $ea $1a $cc
  ld a, [$cc1d]                                   ; $22e9: $fa $1d $cc
  cp $40                                          ; $22ec: $fe $40
  jr z, jr_000_2300                               ; $22ee: $28 $10

  ld [$c012], a                                   ; $22f0: $ea $12 $c0
  ld a, [$c00a]                                   ; $22f3: $fa $0a $c0
  cp $4a                                          ; $22f6: $fe $4a
  jr z, jr_000_2300                               ; $22f8: $28 $06

  call Call_000_193f                              ; $22fa: $cd $3f $19
  pop hl                                          ; $22fd: $e1
  pop af                                          ; $22fe: $f1
  reti                                            ; $22ff: $d9


Jump_000_2300:
jr_000_2300:
  ld a, [$cb2d]                                   ; $2300: $fa $2d $cb
  cp $08                                          ; $2303: $fe $08
  jr nz, jr_000_230c                              ; $2305: $20 $05

  ld a, $01                                       ; $2307: $3e $01
  ld [$cb2d], a                                   ; $2309: $ea $2d $cb

jr_000_230c:
  pop hl                                          ; $230c: $e1
  jp Jump_000_2311                                ; $230d: $c3 $11 $23


  push af                                         ; $2310: $f5

Jump_000_2311:
  ld a, [$cb2d]                                   ; $2311: $fa $2d $cb
  cp $08                                          ; $2314: $fe $08
  jr nz, jr_000_231d                              ; $2316: $20 $05

  ld a, $01                                       ; $2318: $3e $01
  ld [$cb2d], a                                   ; $231a: $ea $2d $cb

jr_000_231d:
  push hl                                         ; $231d: $e5
  xor a                                           ; $231e: $af
  ldh [$ffda], a                                  ; $231f: $e0 $da
  ld [$cd8f], a                                   ; $2321: $ea $8f $cd
  ldh [$ffaa], a                                  ; $2324: $e0 $aa
  ld hl, $cc15                                    ; $2326: $21 $15 $cc
  ld a, [hl+]                                     ; $2329: $2a
  ld h, [hl]                                      ; $232a: $66
  ld l, a                                         ; $232b: $6f
  ldh a, [$ff8b]                                  ; $232c: $f0 $8b
  or a                                            ; $232e: $b7
  ld a, [$4000]                                   ; $232f: $fa $00 $40
  jr z, jr_000_2336                               ; $2332: $28 $02

  ldh a, [$ff8a]                                  ; $2334: $f0 $8a

jr_000_2336:
  push af                                         ; $2336: $f5
  ld a, $03                                       ; $2337: $3e $03
  ld [$2000], a                                   ; $2339: $ea $00 $20
  call $7e88                                      ; $233c: $cd $88 $7e
  pop af                                          ; $233f: $f1
  ld [$2000], a                                   ; $2340: $ea $00 $20
  xor a                                           ; $2343: $af
  call Call_000_18e8                              ; $2344: $cd $e8 $18
  ld a, $01                                       ; $2347: $3e $01
  call Call_000_18e8                              ; $2349: $cd $e8 $18
  call Call_000_193f                              ; $234c: $cd $3f $19
  pop hl                                          ; $234f: $e1
  pop af                                          ; $2350: $f1
  reti                                            ; $2351: $d9


  push af                                         ; $2352: $f5
  push bc                                         ; $2353: $c5
  push de                                         ; $2354: $d5
  push hl                                         ; $2355: $e5
  ldh a, [$ff8b]                                  ; $2356: $f0 $8b
  or a                                            ; $2358: $b7
  ld a, [$4000]                                   ; $2359: $fa $00 $40
  jr z, jr_000_2360                               ; $235c: $28 $02

  ldh a, [$ff8a]                                  ; $235e: $f0 $8a

jr_000_2360:
  push af                                         ; $2360: $f5
  ld a, [$c0b2]                                   ; $2361: $fa $b2 $c0
  or a                                            ; $2364: $b7
  jr nz, jr_000_2373                              ; $2365: $20 $0c

  ld a, [$cda5]                                   ; $2367: $fa $a5 $cd
  cp $ff                                          ; $236a: $fe $ff
  jr z, jr_000_239a                               ; $236c: $28 $2c

  ld hl, $5fb1                                    ; $236e: $21 $b1 $5f
  jr jr_000_2378                                  ; $2371: $18 $05

jr_000_2373:
  ld hl, $d000                                    ; $2373: $21 $00 $d0
  jr jr_000_237b                                  ; $2376: $18 $03

jr_000_2378:
  call Call_000_332b                              ; $2378: $cd $2b $33

jr_000_237b:
  ldh a, [rSVBK]                                  ; $237b: $f0 $70
  push af                                         ; $237d: $f5
  ld a, $02                                       ; $237e: $3e $02
  ldh [rSVBK], a                                  ; $2380: $e0 $70
  ld de, $d080                                    ; $2382: $11 $80 $d0
  call Call_000_0212                              ; $2385: $cd $12 $02
  pop af                                          ; $2388: $f1
  ldh [rSVBK], a                                  ; $2389: $e0 $70
  call Call_000_28b5                              ; $238b: $cd $b5 $28
  call Call_000_193f                              ; $238e: $cd $3f $19
  pop af                                          ; $2391: $f1
  ld [$2000], a                                   ; $2392: $ea $00 $20
  pop hl                                          ; $2395: $e1
  pop de                                          ; $2396: $d1
  pop bc                                          ; $2397: $c1
  pop af                                          ; $2398: $f1
  reti                                            ; $2399: $d9


jr_000_239a:
  ld a, $fe                                       ; $239a: $3e $fe
  ld [$cda5], a                                   ; $239c: $ea $a5 $cd
  call Call_000_193f                              ; $239f: $cd $3f $19
  pop af                                          ; $23a2: $f1
  ld [$2000], a                                   ; $23a3: $ea $00 $20
  pop hl                                          ; $23a6: $e1
  pop de                                          ; $23a7: $d1
  pop bc                                          ; $23a8: $c1
  pop af                                          ; $23a9: $f1
  reti                                            ; $23aa: $d9


  push af                                         ; $23ab: $f5
  push de                                         ; $23ac: $d5
  push hl                                         ; $23ad: $e5
  jr jr_000_23ba                                  ; $23ae: $18 $0a

  push af                                         ; $23b0: $f5
  push de                                         ; $23b1: $d5
  push hl                                         ; $23b2: $e5
  ld a, [$c0b2]                                   ; $23b3: $fa $b2 $c0
  or a                                            ; $23b6: $b7
  jp nz, Jump_000_2461                            ; $23b7: $c2 $61 $24

jr_000_23ba:
  ldh a, [$ff8b]                                  ; $23ba: $f0 $8b
  or a                                            ; $23bc: $b7
  ld a, [$4000]                                   ; $23bd: $fa $00 $40
  jr z, jr_000_23c4                               ; $23c0: $28 $02

  ldh a, [$ff8a]                                  ; $23c2: $f0 $8a

jr_000_23c4:
  push af                                         ; $23c4: $f5
  ldh a, [rSVBK]                                  ; $23c5: $f0 $70
  push af                                         ; $23c7: $f5
  ld a, $05                                       ; $23c8: $3e $05
  ldh [rSVBK], a                                  ; $23ca: $e0 $70
  ld a, [$d098]                                   ; $23cc: $fa $98 $d0
  or a                                            ; $23cf: $b7
  jp z, Jump_000_244e                             ; $23d0: $ca $4e $24

  dec a                                           ; $23d3: $3d
  ld [$d098], a                                   ; $23d4: $ea $98 $d0
  jp nz, Jump_000_244e                            ; $23d7: $c2 $4e $24

  ld hl, $4323                                    ; $23da: $21 $23 $43
  ld a, [$cda5]                                   ; $23dd: $fa $a5 $cd
  ld d, a                                         ; $23e0: $57
  ld e, $05                                       ; $23e1: $1e $05
  call Call_000_24cd                              ; $23e3: $cd $cd $24
  ld a, l                                         ; $23e6: $7d
  or a                                            ; $23e7: $b7
  jr z, jr_000_243d                               ; $23e8: $28 $53

  cp $01                                          ; $23ea: $fe $01
  jr z, jr_000_243d                               ; $23ec: $28 $4f

  cp $04                                          ; $23ee: $fe $04
  jr z, jr_000_243d                               ; $23f0: $28 $4b

  cp $03                                          ; $23f2: $fe $03
  jr z, jr_000_241c                               ; $23f4: $28 $26

  push hl                                         ; $23f6: $e5
  ld a, $08                                       ; $23f7: $3e $08
  ld [$2000], a                                   ; $23f9: $ea $00 $20
  ld hl, $d096                                    ; $23fc: $21 $96 $d0
  ld a, [$d099]                                   ; $23ff: $fa $99 $d0
  add [hl]                                        ; $2402: $86
  ld [hl+], a                                     ; $2403: $22
  ld a, [$d09a]                                   ; $2404: $fa $9a $d0
  add $18                                         ; $2407: $c6 $18
  ld [$d09a], a                                   ; $2409: $ea $9a $d0
  call $405c                                      ; $240c: $cd $5c $40
  pop hl                                          ; $240f: $e1

jr_000_2410:
  sra a                                           ; $2410: $cb $2f
  dec h                                           ; $2412: $25
  jr nz, jr_000_2410                              ; $2413: $20 $fb

  ld hl, $d097                                    ; $2415: $21 $97 $d0
  add [hl]                                        ; $2418: $86
  ld [hl+], a                                     ; $2419: $22
  jr jr_000_244a                                  ; $241a: $18 $2e

jr_000_241c:
  push hl                                         ; $241c: $e5
  ld a, $08                                       ; $241d: $3e $08
  ld [$2000], a                                   ; $241f: $ea $00 $20
  ld a, [$d099]                                   ; $2422: $fa $99 $d0
  add $18                                         ; $2425: $c6 $18
  ld [$d099], a                                   ; $2427: $ea $99 $d0
  call $405c                                      ; $242a: $cd $5c $40
  pop hl                                          ; $242d: $e1

jr_000_242e:
  sra a                                           ; $242e: $cb $2f
  dec h                                           ; $2430: $25
  jr nz, jr_000_242e                              ; $2431: $20 $fb

  ld hl, $d096                                    ; $2433: $21 $96 $d0
  add [hl]                                        ; $2436: $86
  ld [hl], a                                      ; $2437: $77
  ld hl, $d097                                    ; $2438: $21 $97 $d0
  jr jr_000_2445                                  ; $243b: $18 $08

jr_000_243d:
  ld hl, $d096                                    ; $243d: $21 $96 $d0
  ld a, [$d099]                                   ; $2440: $fa $99 $d0
  add [hl]                                        ; $2443: $86
  ld [hl+], a                                     ; $2444: $22

jr_000_2445:
  ld a, [$d09a]                                   ; $2445: $fa $9a $d0
  add [hl]                                        ; $2448: $86
  ld [hl+], a                                     ; $2449: $22

jr_000_244a:
  ld a, [$d09b]                                   ; $244a: $fa $9b $d0
  ld [hl], a                                      ; $244d: $77

Jump_000_244e:
  ld a, [$d096]                                   ; $244e: $fa $96 $d0
  ldh [$ffc8], a                                  ; $2451: $e0 $c8
  ld a, [$d097]                                   ; $2453: $fa $97 $d0
  ldh [$ffc9], a                                  ; $2456: $e0 $c9
  pop af                                          ; $2458: $f1
  ldh [rSVBK], a                                  ; $2459: $e0 $70
  pop af                                          ; $245b: $f1
  ld [$2000], a                                   ; $245c: $ea $00 $20
  jr jr_000_2466                                  ; $245f: $18 $05

Jump_000_2461:
  xor a                                           ; $2461: $af
  ldh [$ffc8], a                                  ; $2462: $e0 $c8
  ldh [$ffc9], a                                  ; $2464: $e0 $c9

jr_000_2466:
  call Call_000_193f                              ; $2466: $cd $3f $19
  pop hl                                          ; $2469: $e1
  pop de                                          ; $246a: $d1
  pop af                                          ; $246b: $f1
  reti                                            ; $246c: $d9


  push af                                         ; $246d: $f5
  push de                                         ; $246e: $d5
  push hl                                         ; $246f: $e5
  ldh a, [$ff8b]                                  ; $2470: $f0 $8b
  or a                                            ; $2472: $b7
  ld a, [$4000]                                   ; $2473: $fa $00 $40
  jr z, jr_000_247a                               ; $2476: $28 $02

  ldh a, [$ff8a]                                  ; $2478: $f0 $8a

jr_000_247a:
  push af                                         ; $247a: $f5
  ldh a, [rSVBK]                                  ; $247b: $f0 $70
  push af                                         ; $247d: $f5
  ld a, $05                                       ; $247e: $3e $05
  ldh [rSVBK], a                                  ; $2480: $e0 $70
  ld a, $08                                       ; $2482: $3e $08
  ld [$2000], a                                   ; $2484: $ea $00 $20
  ld hl, $d096                                    ; $2487: $21 $96 $d0
  ld a, [$d099]                                   ; $248a: $fa $99 $d0
  add [hl]                                        ; $248d: $86
  ld [hl+], a                                     ; $248e: $22
  sla a                                           ; $248f: $cb $27
  sla a                                           ; $2491: $cb $27
  call $405c                                      ; $2493: $cd $5c $40
  sra a                                           ; $2496: $cb $2f
  sra a                                           ; $2498: $cb $2f
  sra a                                           ; $249a: $cb $2f
  sra a                                           ; $249c: $cb $2f
  sra a                                           ; $249e: $cb $2f
  push af                                         ; $24a0: $f5
  ld a, [$d09a]                                   ; $24a1: $fa $9a $d0
  add [hl]                                        ; $24a4: $86
  pop de                                          ; $24a5: $d1
  add d                                           ; $24a6: $82
  ld [hl], a                                      ; $24a7: $77
  ld a, [$d096]                                   ; $24a8: $fa $96 $d0
  ldh [$ffc8], a                                  ; $24ab: $e0 $c8
  ld a, [$d097]                                   ; $24ad: $fa $97 $d0
  ldh [$ffc9], a                                  ; $24b0: $e0 $c9
  pop af                                          ; $24b2: $f1
  ldh [rSVBK], a                                  ; $24b3: $e0 $70
  pop af                                          ; $24b5: $f1
  ld [$2000], a                                   ; $24b6: $ea $00 $20
  call Call_000_193f                              ; $24b9: $cd $3f $19
  pop hl                                          ; $24bc: $e1
  pop de                                          ; $24bd: $d1
  pop af                                          ; $24be: $f1
  reti                                            ; $24bf: $d9


  push af                                         ; $24c0: $f5
  push hl                                         ; $24c1: $e5
  xor a                                           ; $24c2: $af
  ldh [rSCX], a                                   ; $24c3: $e0 $43
  ldh [rSCY], a                                   ; $24c5: $e0 $42
  call Call_000_193f                              ; $24c7: $cd $3f $19
  pop hl                                          ; $24ca: $e1
  pop af                                          ; $24cb: $f1
  reti                                            ; $24cc: $d9


Call_000_24cd:
  ldh a, [$ff8b]                                  ; $24cd: $f0 $8b
  or a                                            ; $24cf: $b7
  ld a, [$4000]                                   ; $24d0: $fa $00 $40
  jr z, jr_000_24d7                               ; $24d3: $28 $02

  ldh a, [$ff8a]                                  ; $24d5: $f0 $8a

jr_000_24d7:
  push af                                         ; $24d7: $f5
  ld a, e                                         ; $24d8: $7b
  ld [$2000], a                                   ; $24d9: $ea $00 $20
  ld a, d                                         ; $24dc: $7a
  call ResolveIndexedPointer16                              ; $24dd: $cd $8b $31
  pop af                                          ; $24e0: $f1
  ld [$2000], a                                   ; $24e1: $ea $00 $20
  ret                                             ; $24e4: $c9


  push af                                         ; $24e5: $f5
  push hl                                         ; $24e6: $e5
  xor a                                           ; $24e7: $af
  ldh [rSCX], a                                   ; $24e8: $e0 $43
  ldh [rSCY], a                                   ; $24ea: $e0 $42
  ld hl, $ff40                                    ; $24ec: $21 $40 $ff
  res 3, [hl]                                     ; $24ef: $cb $9e
  call Call_000_193f                              ; $24f1: $cd $3f $19
  pop hl                                          ; $24f4: $e1
  pop af                                          ; $24f5: $f1
  reti                                            ; $24f6: $d9


  push af                                         ; $24f7: $f5
  push bc                                         ; $24f8: $c5
  push de                                         ; $24f9: $d5
  push hl                                         ; $24fa: $e5
  ldh a, [$ff8b]                                  ; $24fb: $f0 $8b
  or a                                            ; $24fd: $b7
  ld a, [$4000]                                   ; $24fe: $fa $00 $40
  jr z, jr_000_2505                               ; $2501: $28 $02

  ldh a, [$ff8a]                                  ; $2503: $f0 $8a

jr_000_2505:
  push af                                         ; $2505: $f5
  ld a, [$cda5]                                   ; $2506: $fa $a5 $cd
  cp $ff                                          ; $2509: $fe $ff
  jr nz, jr_000_255e                              ; $250b: $20 $51

  ld hl, $c0aa                                    ; $250d: $21 $aa $c0
  res 3, [hl]                                     ; $2510: $cb $9e
  ld a, [$cc49]                                   ; $2512: $fa $49 $cc
  cp $05                                          ; $2515: $fe $05
  jr z, jr_000_2527                               ; $2517: $28 $0e

  ld a, [$cc49]                                   ; $2519: $fa $49 $cc
  cp $06                                          ; $251c: $fe $06
  jr nz, jr_000_252e                              ; $251e: $20 $0e

  ld a, $05                                       ; $2520: $3e $05
  ld hl, $5eac                                    ; $2522: $21 $ac $5e
  jr jr_000_2533                                  ; $2525: $18 $0c

jr_000_2527:
  ld a, $04                                       ; $2527: $3e $04
  ld hl, $5eac                                    ; $2529: $21 $ac $5e
  jr jr_000_2533                                  ; $252c: $18 $05

jr_000_252e:
  ldh a, [$ffd6]                                  ; $252e: $f0 $d6
  ld hl, $5d1a                                    ; $2530: $21 $1a $5d

jr_000_2533:
  call Call_000_14dc                              ; $2533: $cd $dc $14
  call Call_000_3330                              ; $2536: $cd $30 $33
  ldh a, [rSVBK]                                  ; $2539: $f0 $70
  push af                                         ; $253b: $f5
  ld a, $02                                       ; $253c: $3e $02
  ldh [rSVBK], a                                  ; $253e: $e0 $70
  ld de, $d000                                    ; $2540: $11 $00 $d0
  call Call_000_0212                              ; $2543: $cd $12 $02
  pop af                                          ; $2546: $f1
  ldh [rSVBK], a                                  ; $2547: $e0 $70
  xor a                                           ; $2549: $af
  ldh [$ffc8], a                                  ; $254a: $e0 $c8
  ldh [$ffc9], a                                  ; $254c: $e0 $c9
  xor a                                           ; $254e: $af
  push af                                         ; $254f: $f5
  ld a, $05                                       ; $2550: $3e $05
  ld [$2000], a                                   ; $2552: $ea $00 $20
  pop af                                          ; $2555: $f1
  call $7227                                      ; $2556: $cd $27 $72
  ld a, $fe                                       ; $2559: $3e $fe
  ld [$cda5], a                                   ; $255b: $ea $a5 $cd

jr_000_255e:
  call Call_000_193f                              ; $255e: $cd $3f $19
  pop af                                          ; $2561: $f1
  ld [$2000], a                                   ; $2562: $ea $00 $20
  pop hl                                          ; $2565: $e1
  pop de                                          ; $2566: $d1
  pop bc                                          ; $2567: $c1
  pop af                                          ; $2568: $f1
  reti                                            ; $2569: $d9


  push af                                         ; $256a: $f5
  push hl                                         ; $256b: $e5
  ld hl, $ff40                                    ; $256c: $21 $40 $ff
  res 3, [hl]                                     ; $256f: $cb $9e
  call Call_000_193f                              ; $2571: $cd $3f $19
  pop hl                                          ; $2574: $e1
  pop af                                          ; $2575: $f1
  reti                                            ; $2576: $d9


  reti                                            ; $2577: $d9


Call_000_2578:
  ld a, $ff                                       ; $2578: $3e $ff
  ld de, $0000                                    ; $257a: $11 $00 $00
  call Call_000_2609                              ; $257d: $cd $09 $26
  ld a, [$cdcd]                                   ; $2580: $fa $cd $cd
  cp $ff                                          ; $2583: $fe $ff
  ld a, $00                                       ; $2585: $3e $00
  jp nz, Jump_000_2621                            ; $2587: $c2 $21 $26

  ld a, $09                                       ; $258a: $3e $09
  jp Jump_000_2621                                ; $258c: $c3 $21 $26


Call_000_258f:
  push de                                         ; $258f: $d5
  ld hl, $c0a9                                    ; $2590: $21 $a9 $c0
  inc [hl]                                        ; $2593: $34
  call Call_000_2674                              ; $2594: $cd $74 $26
  jr z, jr_000_25b6                               ; $2597: $28 $1d

  ldh a, [$ffd0]                                  ; $2599: $f0 $d0
  and $7f                                         ; $259b: $e6 $7f
  ldh [$ffd0], a                                  ; $259d: $e0 $d0
  call Call_000_25f0                              ; $259f: $cd $f0 $25
  call Call_000_2609                              ; $25a2: $cd $09 $26
  ld a, $04                                       ; $25a5: $3e $04
  ld [$2000], a                                   ; $25a7: $ea $00 $20
  ldh a, [$ffcd]                                  ; $25aa: $f0 $cd
  cp $ff                                          ; $25ac: $fe $ff
  jr z, jr_000_25b6                               ; $25ae: $28 $06

  call Call_000_25ca                              ; $25b0: $cd $ca $25
  call Call_000_2691                              ; $25b3: $cd $91 $26

jr_000_25b6:
  call Call_000_37d9                              ; $25b6: $cd $d9 $37
  call Call_000_26a9                              ; $25b9: $cd $a9 $26
  call Call_000_26a1                              ; $25bc: $cd $a1 $26
  pop de                                          ; $25bf: $d1
  ret                                             ; $25c0: $c9


  ldh [$ffd0], a                                  ; $25c1: $e0 $d0
  ldh [$ffcd], a                                  ; $25c3: $e0 $cd
  push af                                         ; $25c5: $f5
  call Call_000_25f9                              ; $25c6: $cd $f9 $25
  pop af                                          ; $25c9: $f1

Call_000_25ca:
  ld l, a                                         ; $25ca: $6f
  ld h, $00                                       ; $25cb: $26 $00
  ld de, $0009                                    ; $25cd: $11 $09 $00
  call Call_000_00d3                                      ; $25d0: $cd $d3 $00
  ld de, $5a9e                                    ; $25d3: $11 $9e $5a
  add hl, de                                      ; $25d6: $19
  ld de, $cd3d                                    ; $25d7: $11 $3d $cd
  ld a, $04                                       ; $25da: $3e $04
  ld [$2000], a                                   ; $25dc: $ea $00 $20
  ld c, $09                                       ; $25df: $0e $09
  jp Jump_000_12a6                                ; $25e1: $c3 $a6 $12


  ldh a, [$ffcd]                                  ; $25e4: $f0 $cd
  ret                                             ; $25e6: $c9


  ldh a, [$ffcf]                                  ; $25e7: $f0 $cf
  ld e, a                                         ; $25e9: $5f
  ldh a, [$ffce]                                  ; $25ea: $f0 $ce
  ld d, a                                         ; $25ec: $57
  ldh a, [$ffcd]                                  ; $25ed: $f0 $cd
  ret                                             ; $25ef: $c9


Call_000_25f0:
  ldh a, [$ffd2]                                  ; $25f0: $f0 $d2
  ld e, a                                         ; $25f2: $5f
  ldh a, [$ffd1]                                  ; $25f3: $f0 $d1
  ld d, a                                         ; $25f5: $57
  ldh a, [$ffd0]                                  ; $25f6: $f0 $d0
  ret                                             ; $25f8: $c9


Call_000_25f9:
  push af                                         ; $25f9: $f5
  push de                                         ; $25fa: $d5
  push hl                                         ; $25fb: $e5
  ld de, $ffca                                    ; $25fc: $11 $ca $ff
  ld hl, $ffcd                                    ; $25ff: $21 $cd $ff
  call Call_000_026c                              ; $2602: $cd $6c $02
  pop hl                                          ; $2605: $e1
  pop de                                          ; $2606: $d1
  pop af                                          ; $2607: $f1
  ret                                             ; $2608: $c9


Call_000_2609:
  push af                                         ; $2609: $f5
  call Call_000_25f9                              ; $260a: $cd $f9 $25
  ldh [$ffcd], a                                  ; $260d: $e0 $cd
  ld a, d                                         ; $260f: $7a
  ldh [$ffce], a                                  ; $2610: $e0 $ce
  ld a, e                                         ; $2612: $7b
  ldh [$ffcf], a                                  ; $2613: $e0 $cf
  pop af                                          ; $2615: $f1
  ret                                             ; $2616: $c9


Call_000_2617:
  push af                                         ; $2617: $f5
  or $80                                          ; $2618: $f6 $80
  ldh [$ffd0], a                                  ; $261a: $e0 $d0
  pop af                                          ; $261c: $f1
  ret                                             ; $261d: $c9


Call_000_261e:
Jump_000_261e:
  ld de, $0000                                    ; $261e: $11 $00 $00

Call_000_2621:
Jump_000_2621:
  push af                                         ; $2621: $f5
  or $80                                          ; $2622: $f6 $80
  ldh [$ffd0], a                                  ; $2624: $e0 $d0
  ld a, d                                         ; $2626: $7a
  ldh [$ffd1], a                                  ; $2627: $e0 $d1
  ld a, e                                         ; $2629: $7b
  ldh [$ffd2], a                                  ; $262a: $e0 $d2
  pop af                                          ; $262c: $f1
  ret                                             ; $262d: $c9


  push af                                         ; $262e: $f5
  push bc                                         ; $262f: $c5
  call Call_000_2656                              ; $2630: $cd $56 $26
  ld hl, $56d8                                    ; $2633: $21 $d8 $56
  call Call_000_2ab5                              ; $2636: $cd $b5 $2a
  ld de, $cb3f                                    ; $2639: $11 $3f $cb
  call Call_000_142c                              ; $263c: $cd $2c $14
  pop bc                                          ; $263f: $c1
  pop af                                          ; $2640: $f1
  ret                                             ; $2641: $c9


  push af                                         ; $2642: $f5
  push bc                                         ; $2643: $c5
  call Call_000_2656                              ; $2644: $cd $56 $26
  ld hl, $56d8                                    ; $2647: $21 $d8 $56
  call Call_000_2ac4                              ; $264a: $cd $c4 $2a
  ld de, $cb3f                                    ; $264d: $11 $3f $cb
  call Call_000_142c                              ; $2650: $cd $2c $14
  pop bc                                          ; $2653: $c1
  pop af                                          ; $2654: $f1
  ret                                             ; $2655: $c9


Call_000_2656:
  push af                                         ; $2656: $f5
  push bc                                         ; $2657: $c5
  push hl                                         ; $2658: $e5
  ld a, [de]                                      ; $2659: $1a
  ld c, a                                         ; $265a: $4f
  add a                                           ; $265b: $87
  add c                                           ; $265c: $81
  add a                                           ; $265d: $87
  add $03                                         ; $265e: $c6 $03
  ld c, a                                         ; $2660: $4f
  ld b, $00                                       ; $2661: $06 $00
  cp $96                                          ; $2663: $fe $96
  call nc, Call_000_0a6c                          ; $2665: $d4 $6c $0a
  ld h, d                                         ; $2668: $62
  ld l, e                                         ; $2669: $6b
  ld de, $cb3f                                    ; $266a: $11 $3f $cb
  call Call_000_12a6                              ; $266d: $cd $a6 $12
  pop hl                                          ; $2670: $e1
  pop bc                                          ; $2671: $c1
  pop af                                          ; $2672: $f1
  ret                                             ; $2673: $c9


Call_000_2674:
  push hl                                         ; $2674: $e5
  ld hl, $ffcd                                    ; $2675: $21 $cd $ff
  ldh a, [$ffd0]                                  ; $2678: $f0 $d0
  cp [hl]                                         ; $267a: $be
  jr nz, jr_000_2681                              ; $267b: $20 $04

  ldh a, [$ffce]                                  ; $267d: $f0 $ce
  inc hl                                          ; $267f: $23
  cp [hl]                                         ; $2680: $be

jr_000_2681:
  pop hl                                          ; $2681: $e1
  ret                                             ; $2682: $c9


jr_000_2683:
  ld a, [$cd3d]                                   ; $2683: $fa $3d $cd
  or a                                            ; $2686: $b7
  jr z, jr_000_268c                               ; $2687: $28 $03

  ld [$2000], a                                   ; $2689: $ea $00 $20

jr_000_268c:
  ld a, d                                         ; $268c: $7a
  or e                                            ; $268d: $b3
  ret z                                           ; $268e: $c8

  push de                                         ; $268f: $d5
  ret                                             ; $2690: $c9


Call_000_2691:
  ld hl, $cd3e                                    ; $2691: $21 $3e $cd
  ld e, [hl]                                      ; $2694: $5e
  inc hl                                          ; $2695: $23
  ld d, [hl]                                      ; $2696: $56
  jr jr_000_2683                                  ; $2697: $18 $ea

  ld hl, $cd40                                    ; $2699: $21 $40 $cd
  ld e, [hl]                                      ; $269c: $5e
  inc hl                                          ; $269d: $23
  ld d, [hl]                                      ; $269e: $56
  jr jr_000_2683                                  ; $269f: $18 $e2

Call_000_26a1:
  ld hl, $cd42                                    ; $26a1: $21 $42 $cd
  ld e, [hl]                                      ; $26a4: $5e
  inc hl                                          ; $26a5: $23
  ld d, [hl]                                      ; $26a6: $56
  jr jr_000_2683                                  ; $26a7: $18 $da

Call_000_26a9:
  call Call_000_11e2                              ; $26a9: $cd $e2 $11
  ld hl, $cd44                                    ; $26ac: $21 $44 $cd
  ld e, [hl]                                      ; $26af: $5e
  inc hl                                          ; $26b0: $23
  ld d, [hl]                                      ; $26b1: $56
  jr jr_000_2683                                  ; $26b2: $18 $cf

  call Call_000_030f                              ; $26b4: $cd $0f $03
  jp Jump_000_18ba                                ; $26b7: $c3 $ba $18


  ld a, $03                                       ; $26ba: $3e $03
  ld [$2000], a                                   ; $26bc: $ea $00 $20
  call $4989                                      ; $26bf: $cd $89 $49
  ld a, $01                                       ; $26c2: $3e $01
  ld [$2000], a                                   ; $26c4: $ea $00 $20
  call Call_000_030f                              ; $26c7: $cd $0f $03
  jp Jump_000_18ba                                ; $26ca: $c3 $ba $18


  call Call_000_030f                              ; $26cd: $cd $0f $03
  jp Jump_000_18ba                                ; $26d0: $c3 $ba $18


  push af                                         ; $26d3: $f5
  push bc                                         ; $26d4: $c5
  call Call_000_2656                              ; $26d5: $cd $56 $26
  ld hl, $65f9                                    ; $26d8: $21 $f9 $65
  call Call_000_2ab5                              ; $26db: $cd $b5 $2a
  ld de, $cb3f                                    ; $26de: $11 $3f $cb
  call Call_000_142c                              ; $26e1: $cd $2c $14
  pop bc                                          ; $26e4: $c1
  pop af                                          ; $26e5: $f1
  ret                                             ; $26e6: $c9


  push af                                         ; $26e7: $f5
  push bc                                         ; $26e8: $c5
  ldh [$ffbd], a                                  ; $26e9: $e0 $bd
  ldh a, [rSVBK]                                  ; $26eb: $f0 $70
  push af                                         ; $26ed: $f5
  ld a, $01                                       ; $26ee: $3e $01
  ldh [rSVBK], a                                  ; $26f0: $e0 $70
  ldh a, [$ffbd]                                  ; $26f2: $f0 $bd
  call Call_000_2656                              ; $26f4: $cd $56 $26
  ld hl, $59a8                                    ; $26f7: $21 $a8 $59
  call Call_000_2ac4                              ; $26fa: $cd $c4 $2a
  ld de, $cb3f                                    ; $26fd: $11 $3f $cb
  call Call_000_142c                              ; $2700: $cd $2c $14
  pop af                                          ; $2703: $f1
  ldh [rSVBK], a                                  ; $2704: $e0 $70
  pop bc                                          ; $2706: $c1
  pop af                                          ; $2707: $f1
  ret                                             ; $2708: $c9


Call_000_2709:
  ldh a, [rSVBK]                                  ; $2709: $f0 $70
  push af                                         ; $270b: $f5
  ld a, $02                                       ; $270c: $3e $02
  ldh [rSVBK], a                                  ; $270e: $e0 $70
  ld b, $00                                       ; $2710: $06 $00
  ld hl, $ced0                                    ; $2712: $21 $d0 $ce

jr_000_2715:
  bit 0, [hl]                                     ; $2715: $cb $46
  jr z, jr_000_2743                               ; $2717: $28 $2a

  bit 1, [hl]                                     ; $2719: $cb $4e
  jr nz, jr_000_2743                              ; $271b: $20 $26

  push hl                                         ; $271d: $e5
  push bc                                         ; $271e: $c5
  dec hl                                          ; $271f: $2b
  dec hl                                          ; $2720: $2b
  ld a, [hl-]                                     ; $2721: $3a
  ld e, [hl]                                      ; $2722: $5e
  ld d, a                                         ; $2723: $57
  ld hl, $65ff                                    ; $2724: $21 $ff $65
  call Call_000_3331                              ; $2727: $cd $31 $33
  add hl, de                                      ; $272a: $19
  pop bc                                          ; $272b: $c1
  pop de                                          ; $272c: $d1
  push de                                         ; $272d: $d5
  ld a, [de]                                      ; $272e: $1a
  bit 2, a                                        ; $272f: $cb $57
  jr z, jr_000_2738                               ; $2731: $28 $05

  ld a, $01                                       ; $2733: $3e $01
  ld [$cafc], a                                   ; $2735: $ea $fc $ca

jr_000_2738:
  ld d, b                                         ; $2738: $50
  ld e, $01                                       ; $2739: $1e $01
  push bc                                         ; $273b: $c5
  call Call_000_279c                              ; $273c: $cd $9c $27
  pop bc                                          ; $273f: $c1
  pop hl                                          ; $2740: $e1
  set 1, [hl]                                     ; $2741: $cb $ce

jr_000_2743:
  ld de, $0004                                    ; $2743: $11 $04 $00
  add hl, de                                      ; $2746: $19
  inc b                                           ; $2747: $04
  ld a, b                                         ; $2748: $78
  cp $08                                          ; $2749: $fe $08
  jr nz, jr_000_2715                              ; $274b: $20 $c8

  pop af                                          ; $274d: $f1
  ldh [rSVBK], a                                  ; $274e: $e0 $70
  ret                                             ; $2750: $c9


  call Call_000_14dc                              ; $2751: $cd $dc $14

Call_000_2754:
  call Call_000_3330                              ; $2754: $cd $30 $33
  ldh a, [rSVBK]                                  ; $2757: $f0 $70
  push af                                         ; $2759: $f5
  ld a, $02                                       ; $275a: $3e $02
  ldh [rSVBK], a                                  ; $275c: $e0 $70
  ld de, $d000                                    ; $275e: $11 $00 $d0
  call Call_000_0212                              ; $2761: $cd $12 $02
  pop af                                          ; $2764: $f1
  ldh [rSVBK], a                                  ; $2765: $e0 $70
  ret                                             ; $2767: $c9


  call Call_000_14dc                              ; $2768: $cd $dc $14
  ld hl, $65ff                                    ; $276b: $21 $ff $65
  ldh a, [rSVBK]                                  ; $276e: $f0 $70
  push af                                         ; $2770: $f5
  ld a, $02                                       ; $2771: $3e $02
  ldh [rSVBK], a                                  ; $2773: $e0 $70
  call Call_000_3330                              ; $2775: $cd $30 $33
  ld de, $d040                                    ; $2778: $11 $40 $d0
  call Call_000_0212                              ; $277b: $cd $12 $02
  pop af                                          ; $277e: $f1
  ldh [rSVBK], a                                  ; $277f: $e0 $70
  ret                                             ; $2781: $c9


  call Call_000_14dc                              ; $2782: $cd $dc $14
  call Call_000_3330                              ; $2785: $cd $30 $33
  ld a, e                                         ; $2788: $7b
  call $0005                                      ; $2789: $cd $05 $00
  ld bc, $0008                                    ; $278c: $01 $08 $00
  ldh a, [rLCDC]                                  ; $278f: $f0 $40
  bit 7, a                                        ; $2791: $cb $7f
  ld a, d                                         ; $2793: $7a
  jr jr_000_279f                                  ; $2794: $18 $09

  call Call_000_14dc                              ; $2796: $cd $dc $14
  call Call_000_3330                              ; $2799: $cd $30 $33

Call_000_279c:
  call Call_000_28a8                              ; $279c: $cd $a8 $28

jr_000_279f:
  ld de, $d0c0                                    ; $279f: $11 $c0 $d0
  jr nz, jr_000_27a9                              ; $27a2: $20 $05

  ld de, $d040                                    ; $27a4: $11 $40 $d0
  jr jr_000_27b6                                  ; $27a7: $18 $0d

jr_000_27a9:
  push hl                                         ; $27a9: $e5
  ld l, a                                         ; $27aa: $6f
  ld a, [$cd9a]                                   ; $27ab: $fa $9a $cd
  or a                                            ; $27ae: $b7
  ld a, l                                         ; $27af: $7d
  pop hl                                          ; $27b0: $e1
  jr z, jr_000_27b6                               ; $27b1: $28 $03

  ld de, $d040                                    ; $27b3: $11 $40 $d0

jr_000_27b6:
  jr jr_000_27cb                                  ; $27b6: $18 $13

  call Call_000_14dc                              ; $27b8: $cd $dc $14
  call Call_000_3330                              ; $27bb: $cd $30 $33
  call Call_000_28a8                              ; $27be: $cd $a8 $28
  ld de, $d080                                    ; $27c1: $11 $80 $d0
  jr nz, jr_000_27c9                              ; $27c4: $20 $03

  ld de, $d000                                    ; $27c6: $11 $00 $d0

jr_000_27c9:
  jr jr_000_27cb                                  ; $27c9: $18 $00

jr_000_27cb:
  add a                                           ; $27cb: $87
  add a                                           ; $27cc: $87
  add a                                           ; $27cd: $87
  add e                                           ; $27ce: $83
  ld e, a                                         ; $27cf: $5f
  jr nc, jr_000_27d3                              ; $27d0: $30 $01

  inc d                                           ; $27d2: $14

jr_000_27d3:
  ldh a, [rSVBK]                                  ; $27d3: $f0 $70
  push af                                         ; $27d5: $f5
  ld a, $02                                       ; $27d6: $3e $02
  ldh [rSVBK], a                                  ; $27d8: $e0 $70
  ldh a, [rSVBK]                                  ; $27da: $f0 $70
  push af                                         ; $27dc: $f5
  ld a, $06                                       ; $27dd: $3e $06
  ldh [rSVBK], a                                  ; $27df: $e0 $70
  ld a, [$ddc0]                                   ; $27e1: $fa $c0 $dd
  ldh [$ffbd], a                                  ; $27e4: $e0 $bd
  pop af                                          ; $27e6: $f1
  ldh [rSVBK], a                                  ; $27e7: $e0 $70
  ldh a, [$ffbd]                                  ; $27e9: $f0 $bd
  cp $01                                          ; $27eb: $fe $01
  jr nz, jr_000_280c                              ; $27ed: $20 $1d

  ld a, [$4000]                                   ; $27ef: $fa $00 $40
  push af                                         ; $27f2: $f5
  push af                                         ; $27f3: $f5
  ld a, $1e                                       ; $27f4: $3e $1e
  ld [$2000], a                                   ; $27f6: $ea $00 $20
  pop af                                          ; $27f9: $f1
  call $5ce1                                      ; $27fa: $cd $e1 $5c
  jr nz, jr_000_2808                              ; $27fd: $20 $09

  pop af                                          ; $27ff: $f1

Call_000_2800:
  ld [$2000], a                                   ; $2800: $ea $00 $20
  call Call_000_2833                              ; $2803: $cd $33 $28
  jr jr_000_281a                                  ; $2806: $18 $12

jr_000_2808:
  pop af                                          ; $2808: $f1
  ld [$2000], a                                   ; $2809: $ea $00 $20

jr_000_280c:
  ld a, [$cafa]                                   ; $280c: $fa $fa $ca
  or a                                            ; $280f: $b7
  jr z, jr_000_2817                               ; $2810: $28 $05

  call Call_000_2862                              ; $2812: $cd $62 $28
  jr jr_000_281a                                  ; $2815: $18 $03

jr_000_2817:
  call Call_000_129c                              ; $2817: $cd $9c $12

jr_000_281a:
  call Call_000_28b5                              ; $281a: $cd $b5 $28
  pop af                                          ; $281d: $f1
  ldh [rSVBK], a                                  ; $281e: $e0 $70
  ld a, [$4000]                                   ; $2820: $fa $00 $40
  push af                                         ; $2823: $f5
  push af                                         ; $2824: $f5
  ld a, $1e                                       ; $2825: $3e $1e
  ld [$2000], a                                   ; $2827: $ea $00 $20
  pop af                                          ; $282a: $f1
  call $61fc                                      ; $282b: $cd $fc $61
  pop af                                          ; $282e: $f1
  ld [$2000], a                                   ; $282f: $ea $00 $20
  ret                                             ; $2832: $c9


Call_000_2833:
jr_000_2833:
  push bc                                         ; $2833: $c5
  ld a, [hl+]                                     ; $2834: $2a
  ld b, [hl]                                      ; $2835: $46
  ld c, a                                         ; $2836: $4f
  ld a, [$4000]                                   ; $2837: $fa $00 $40
  push af                                         ; $283a: $f5
  push af                                         ; $283b: $f5
  ld a, $1e                                       ; $283c: $3e $1e
  ld [$2000], a                                   ; $283e: $ea $00 $20
  pop af                                          ; $2841: $f1
  call $5d10                                      ; $2842: $cd $10 $5d
  pop af                                          ; $2845: $f1
  ld [$2000], a                                   ; $2846: $ea $00 $20
  pop bc                                          ; $2849: $c1
  dec bc                                          ; $284a: $0b
  dec bc                                          ; $284b: $0b
  ld a, b                                         ; $284c: $78
  or c                                            ; $284d: $b1
  jr nz, jr_000_2833                              ; $284e: $20 $e3

  ret                                             ; $2850: $c9


Call_000_2851:
  ld a, [$4000]                                   ; $2851: $fa $00 $40
  push af                                         ; $2854: $f5
  push bc                                         ; $2855: $c5
  call Call_000_3331                              ; $2856: $cd $31 $33
  pop bc                                          ; $2859: $c1
  call Call_000_2862                              ; $285a: $cd $62 $28
  pop af                                          ; $285d: $f1
  ld [$2000], a                                   ; $285e: $ea $00 $20
  ret                                             ; $2861: $c9


Call_000_2862:
  ldh a, [rSVBK]                                  ; $2862: $f0 $70
  push af                                         ; $2864: $f5
  ld a, $02                                       ; $2865: $3e $02
  ldh [rSVBK], a                                  ; $2867: $e0 $70

jr_000_2869:
  push hl                                         ; $2869: $e5
  ld a, [hl+]                                     ; $286a: $2a
  ld h, [hl]                                      ; $286b: $66
  ld l, a                                         ; $286c: $6f
  ld a, [$4000]                                   ; $286d: $fa $00 $40
  push af                                         ; $2870: $f5
  push af                                         ; $2871: $f5
  ld a, $1e                                       ; $2872: $3e $1e
  ld [$2000], a                                   ; $2874: $ea $00 $20
  pop af                                          ; $2877: $f1
  call $5d32                                      ; $2878: $cd $32 $5d
  pop af                                          ; $287b: $f1
  ld [$2000], a                                   ; $287c: $ea $00 $20
  pop hl                                          ; $287f: $e1
  inc hl                                          ; $2880: $23
  inc hl                                          ; $2881: $23
  ld a, b                                         ; $2882: $78
  or c                                            ; $2883: $b1
  jr nz, jr_000_2869                              ; $2884: $20 $e3

  pop af                                          ; $2886: $f1
  ldh [rSVBK], a                                  ; $2887: $e0 $70
  ret                                             ; $2889: $c9


Call_000_288a:
jr_000_288a:
  push hl                                         ; $288a: $e5
  ld a, [hl+]                                     ; $288b: $2a
  ld h, [hl]                                      ; $288c: $66
  ld l, a                                         ; $288d: $6f
  ld a, [$4000]                                   ; $288e: $fa $00 $40
  push af                                         ; $2891: $f5
  push af                                         ; $2892: $f5
  ld a, $1e                                       ; $2893: $3e $1e
  ld [$2000], a                                   ; $2895: $ea $00 $20
  pop af                                          ; $2898: $f1
  call $5d32                                      ; $2899: $cd $32 $5d
  pop af                                          ; $289c: $f1
  ld [$2000], a                                   ; $289d: $ea $00 $20
  pop hl                                          ; $28a0: $e1
  inc hl                                          ; $28a1: $23
  inc hl                                          ; $28a2: $23
  ld a, b                                         ; $28a3: $78
  or c                                            ; $28a4: $b1
  jr nz, jr_000_288a                              ; $28a5: $20 $e3

  ret                                             ; $28a7: $c9


Call_000_28a8:
  ld a, e                                         ; $28a8: $7b
  add a                                           ; $28a9: $87
  add a                                           ; $28aa: $87
  add a                                           ; $28ab: $87
  ld c, a                                         ; $28ac: $4f
  ld b, $00                                       ; $28ad: $06 $00
  ldh a, [rLCDC]                                  ; $28af: $f0 $40
  bit 7, a                                        ; $28b1: $cb $7f
  ld a, d                                         ; $28b3: $7a
  ret                                             ; $28b4: $c9


Call_000_28b5:
  push bc                                         ; $28b5: $c5
  push de                                         ; $28b6: $d5
  push hl                                         ; $28b7: $e5
  ldh a, [rSVBK]                                  ; $28b8: $f0 $70
  push af                                         ; $28ba: $f5
  ld a, $02                                       ; $28bb: $3e $02
  ldh [rSVBK], a                                  ; $28bd: $e0 $70
  xor a                                           ; $28bf: $af
  ldh [$fffa], a                                  ; $28c0: $e0 $fa
  ld c, $02                                       ; $28c2: $0e $02
  ld hl, $d080                                    ; $28c4: $21 $80 $d0
  ld de, $db01                                    ; $28c7: $11 $01 $db

jr_000_28ca:
  ld b, $20                                       ; $28ca: $06 $20

jr_000_28cc:
  ld a, [hl+]                                     ; $28cc: $2a
  ld [de], a                                      ; $28cd: $12
  inc de                                          ; $28ce: $13
  inc de                                          ; $28cf: $13
  ld a, [hl+]                                     ; $28d0: $2a
  ld [de], a                                      ; $28d1: $12
  inc de                                          ; $28d2: $13
  inc de                                          ; $28d3: $13
  dec b                                           ; $28d4: $05
  jr nz, jr_000_28cc                              ; $28d5: $20 $f5

  inc de                                          ; $28d7: $13
  dec c                                           ; $28d8: $0d
  jr nz, jr_000_28ca                              ; $28d9: $20 $ef

  ld a, $01                                       ; $28db: $3e $01
  ldh [$fffa], a                                  ; $28dd: $e0 $fa
  pop af                                          ; $28df: $f1
  ldh [rSVBK], a                                  ; $28e0: $e0 $70
  pop hl                                          ; $28e2: $e1
  pop de                                          ; $28e3: $d1
  pop bc                                          ; $28e4: $c1
  ret                                             ; $28e5: $c9


Call_000_28e6:
  cp $02                                          ; $28e6: $fe $02
  jr nc, jr_000_28ec                              ; $28e8: $30 $02

  ld a, $02                                       ; $28ea: $3e $02

jr_000_28ec:
  push de                                         ; $28ec: $d5
  push hl                                         ; $28ed: $e5
  ld e, a                                         ; $28ee: $5f
  ld a, [$4000]                                   ; $28ef: $fa $00 $40
  push af                                         ; $28f2: $f5
  ld a, $01                                       ; $28f3: $3e $01
  ld [$2000], a                                   ; $28f5: $ea $00 $20
  ld hl, $ce3e                                    ; $28f8: $21 $3e $ce
  ld a, [hl]                                      ; $28fb: $7e
  inc [hl]                                        ; $28fc: $34
  ld hl, $6353                                    ; $28fd: $21 $53 $63
  rst $08                                         ; $2900: $cf

jr_000_2901:
  ld d, e                                         ; $2901: $53
  cp d                                            ; $2902: $ba
  jr c, jr_000_2915                               ; $2903: $38 $10

jr_000_2905:
  sla d                                           ; $2905: $cb $22
  jr c, jr_000_2911                               ; $2907: $38 $08

  cp d                                            ; $2909: $ba
  jr nc, jr_000_2905                              ; $290a: $30 $f9

  srl d                                           ; $290c: $cb $3a

jr_000_290e:
  sub d                                           ; $290e: $92
  jr jr_000_2901                                  ; $290f: $18 $f0

jr_000_2911:
  rr d                                            ; $2911: $cb $1a
  jr jr_000_290e                                  ; $2913: $18 $f9

jr_000_2915:
  ld e, a                                         ; $2915: $5f
  pop af                                          ; $2916: $f1
  ld [$2000], a                                   ; $2917: $ea $00 $20
  ld a, e                                         ; $291a: $7b
  pop hl                                          ; $291b: $e1
  pop de                                          ; $291c: $d1
  ret                                             ; $291d: $c9


Call_000_291e:
  ld a, $01                                       ; $291e: $3e $01
  ld [$2000], a                                   ; $2920: $ea $00 $20
  call $4728                                      ; $2923: $cd $28 $47
  ld a, $e4                                       ; $2926: $3e $e4
  ldh [rBGP], a                                   ; $2928: $e0 $47
  xor a                                           ; $292a: $af
  ldh [rSTAT], a                                  ; $292b: $e0 $41
  inc a                                           ; $292d: $3c
  ldh [rLCDC], a                                  ; $292e: $e0 $40
  inc a                                           ; $2930: $3c
  ldh [$ffa8], a                                  ; $2931: $e0 $a8
  ld a, $03                                       ; $2933: $3e $03
  ld [$2000], a                                   ; $2935: $ea $00 $20
  ld a, $6e                                       ; $2938: $3e $6e
  ld de, $0080                                    ; $293a: $11 $80 $00
  call Call_000_2a0a                              ; $293d: $cd $0a $2a
  ld hl, $ffc8                                    ; $2940: $21 $c8 $ff
  ld [hl], $00                                    ; $2943: $36 $00
  inc hl                                          ; $2945: $23
  ld [hl], $00                                    ; $2946: $36 $00
  call Call_000_1223                              ; $2948: $cd $23 $12
  call Call_000_1232                              ; $294b: $cd $32 $12

jr_000_294e:
  halt                                            ; $294e: $76
  nop                                             ; $294f: $00
  jr jr_000_294e                                  ; $2950: $18 $fc

Jump_000_2952:
  ld de, $cd48                                    ; $2952: $11 $48 $cd
  call Call_000_0251                              ; $2955: $cd $51 $02
  ld hl, $cd48                                    ; $2958: $21 $48 $cd
  push hl                                         ; $295b: $e5
  ld a, [$cd50]                                   ; $295c: $fa $50 $cd
  ld d, a                                         ; $295f: $57
  ld a, [$cd51]                                   ; $2960: $fa $51 $cd
  ld e, a                                         ; $2963: $5f
  call Call_000_29b4                              ; $2964: $cd $b4 $29
  pop hl                                          ; $2967: $e1
  ld a, [hl+]                                     ; $2968: $2a
  ldh [$ffa8], a                                  ; $2969: $e0 $a8
  ld a, [hl+]                                     ; $296b: $2a
  ld e, [hl]                                      ; $296c: $5e
  inc hl                                          ; $296d: $23
  ld d, [hl]                                      ; $296e: $56
  inc hl                                          ; $296f: $23
  push hl                                         ; $2970: $e5
  call Call_000_2a0a                              ; $2971: $cd $0a $2a
  pop hl                                          ; $2974: $e1
  ld e, [hl]                                      ; $2975: $5e
  inc hl                                          ; $2976: $23
  ld d, [hl]                                      ; $2977: $56
  inc hl                                          ; $2978: $23
  ld a, [hl+]                                     ; $2979: $2a
  ld h, [hl]                                      ; $297a: $66
  ld l, a                                         ; $297b: $6f
  ld de, $2981                                    ; $297c: $11 $81 $29
  push de                                         ; $297f: $d5
  jp hl                                           ; $2980: $e9


  ld hl, $ffc8                                    ; $2981: $21 $c8 $ff
  ld [hl], $00                                    ; $2984: $36 $00
  inc hl                                          ; $2986: $23
  ld [hl], $00                                    ; $2987: $36 $00
  call Call_000_1223                              ; $2989: $cd $23 $12
  ldh a, [$ffa8]                                  ; $298c: $f0 $a8
  bit 0, a                                        ; $298e: $cb $47
  jr z, jr_000_2999                               ; $2990: $28 $07

  ldh a, [$ffa9]                                  ; $2992: $f0 $a9
  cp $03                                          ; $2994: $fe $03
  call c, RST_20                                  ; $2996: $dc $20 $00

jr_000_2999:
  call Call_000_02a6                              ; $2999: $cd $a6 $02
  call Call_000_030f                              ; $299c: $cd $0f $03
  call Call_000_1232                              ; $299f: $cd $32 $12
  ld a, [$cd53]                                   ; $29a2: $fa $53 $cd
  ld e, a                                         ; $29a5: $5f
  ld a, [$cd52]                                   ; $29a6: $fa $52 $cd
  push af                                         ; $29a9: $f5
  ld a, $05                                       ; $29aa: $3e $05
  ld [$2000], a                                   ; $29ac: $ea $00 $20
  pop af                                          ; $29af: $f1
  call $7227                                      ; $29b0: $cd $27 $72
  ret                                             ; $29b3: $c9


Call_000_29b4:
  ld a, d                                         ; $29b4: $7a
  push af                                         ; $29b5: $f5
  ld a, $05                                       ; $29b6: $3e $05
  ld [$2000], a                                   ; $29b8: $ea $00 $20
  pop af                                          ; $29bb: $f1
  call $71ef                                      ; $29bc: $cd $ef $71
  ld a, $01                                       ; $29bf: $3e $01
  ld [$2000], a                                   ; $29c1: $ea $00 $20
  call $4728                                      ; $29c4: $cd $28 $47
  ld a, $03                                       ; $29c7: $3e $03
  ld [$2000], a                                   ; $29c9: $ea $00 $20
  call $784f                                      ; $29cc: $cd $4f $78
  ld a, $01                                       ; $29cf: $3e $01
  ld [$2000], a                                   ; $29d1: $ea $00 $20
  call $5513                                      ; $29d4: $cd $13 $55
  xor a                                           ; $29d7: $af
  ld hl, $ff8f                                    ; $29d8: $21 $8f $ff
  ld [hl+], a                                     ; $29db: $22
  ld [hl+], a                                     ; $29dc: $22
  ld [hl+], a                                     ; $29dd: $22
  ld [hl+], a                                     ; $29de: $22
  ld [$c2b9], a                                   ; $29df: $ea $b9 $c2
  ld [$c0a7], a                                   ; $29e2: $ea $a7 $c0
  ld [$c0a6], a                                   ; $29e5: $ea $a6 $c0
  ldh [$ffd9], a                                  ; $29e8: $e0 $d9
  ld [$c2ae], a                                   ; $29ea: $ea $ae $c2
  ld [$cd6a], a                                   ; $29ed: $ea $6a $cd
  inc a                                           ; $29f0: $3c
  ld [$c0ab], a                                   ; $29f1: $ea $ab $c0
  call Call_000_18d0                              ; $29f4: $cd $d0 $18
  ld a, $03                                       ; $29f7: $3e $03
  ld [$2000], a                                   ; $29f9: $ea $00 $20
  call $6fda                                      ; $29fc: $cd $da $6f
  ld a, $01                                       ; $29ff: $3e $01
  ld [$2000], a                                   ; $2a01: $ea $00 $20
  call Call_000_0646                              ; $2a04: $cd $46 $06
  jp Jump_000_05fb                                ; $2a07: $c3 $fb $05


Call_000_2a0a:
  call Call_000_2a3f                              ; $2a0a: $cd $3f $2a
  ld hl, $cd35                                    ; $2a0d: $21 $35 $cd
  ld c, [hl]                                      ; $2a10: $4e
  inc hl                                          ; $2a11: $23
  ld b, [hl]                                      ; $2a12: $46
  ld hl, $5825                                    ; $2a13: $21 $25 $58
  call Call_000_2754                              ; $2a16: $cd $54 $27
  ld hl, $cd35                                    ; $2a19: $21 $35 $cd
  ld c, [hl]                                      ; $2a1c: $4e
  inc hl                                          ; $2a1d: $23
  ld b, [hl]                                      ; $2a1e: $46
  ld hl, $56d8                                    ; $2a1f: $21 $d8 $56
  call Call_000_2ac7                              ; $2a22: $cd $c7 $2a
  ld bc, $0000                                    ; $2a25: $01 $00 $00
  ldh a, [$ffa8]                                  ; $2a28: $f0 $a8
  bit 0, a                                        ; $2a2a: $cb $47
  ld de, $d000                                    ; $2a2c: $11 $00 $d0
  push hl                                         ; $2a2f: $e5
  call nz, Call_000_132e                          ; $2a30: $c4 $2e $13
  pop hl                                          ; $2a33: $e1
  ldh a, [$ffa8]                                  ; $2a34: $f0 $a8
  bit 1, a                                        ; $2a36: $cb $4f
  ld de, $9800                                    ; $2a38: $11 $00 $98
  call nz, Call_000_11a2                          ; $2a3b: $c4 $a2 $11
  ret                                             ; $2a3e: $c9


Call_000_2a3f:
  call Call_000_14dc                              ; $2a3f: $cd $dc $14
  ld hl, $cd35                                    ; $2a42: $21 $35 $cd
  ld [hl], c                                      ; $2a45: $71
  inc hl                                          ; $2a46: $23
  ld [hl], b                                      ; $2a47: $70
  ld hl, $ffb9                                    ; $2a48: $21 $b9 $ff
  ld [hl], e                                      ; $2a4b: $73
  inc hl                                          ; $2a4c: $23
  ld [hl], d                                      ; $2a4d: $72
  ld hl, $558b                                    ; $2a4e: $21 $8b $55
  jr jr_000_2a63                                  ; $2a51: $18 $10

Jump_000_2a53:
  call Call_000_14dc                              ; $2a53: $cd $dc $14
  call Call_000_3330                              ; $2a56: $cd $30 $33
  ld a, [hl+]                                     ; $2a59: $2a
  ld c, a                                         ; $2a5a: $4f
  ld a, [hl+]                                     ; $2a5b: $2a
  ld b, a                                         ; $2a5c: $47
  add hl, bc                                      ; $2a5d: $09
  jr jr_000_2a66                                  ; $2a5e: $18 $06

  call Call_000_14dc                              ; $2a60: $cd $dc $14

jr_000_2a63:
  call Call_000_3330                              ; $2a63: $cd $30 $33

jr_000_2a66:
  ldh a, [rLCDC]                                  ; $2a66: $f0 $40
  bit 7, a                                        ; $2a68: $cb $7f
  jr nz, jr_000_2a89                              ; $2a6a: $20 $1d

jr_000_2a6c:
  call Call_000_12d2                              ; $2a6c: $cd $d2 $12
  call Call_000_0e7c                              ; $2a6f: $cd $7c $0e
  call Call_000_12fd                              ; $2a72: $cd $fd $12
  ret                                             ; $2a75: $c9


Call_000_2a76:
  call Call_000_14dc                              ; $2a76: $cd $dc $14
  ld a, $01                                       ; $2a79: $3e $01
  ld [$2000], a                                   ; $2a7b: $ea $00 $20
  call $4153                                      ; $2a7e: $cd $53 $41
  call Call_000_3330                              ; $2a81: $cd $30 $33
  ldh a, [rLCDC]                                  ; $2a84: $f0 $40
  rla                                             ; $2a86: $17
  jr nc, jr_000_2a6c                              ; $2a87: $30 $e3

jr_000_2a89:
  ldh a, [rSVBK]                                  ; $2a89: $f0 $70
  push af                                         ; $2a8b: $f5
  ld a, $01                                       ; $2a8c: $3e $01
  ldh [rSVBK], a                                  ; $2a8e: $e0 $70
  call Call_000_12d2                              ; $2a90: $cd $d2 $12
  ld a, e                                         ; $2a93: $7b
  ld [$c2c0], a                                   ; $2a94: $ea $c0 $c2
  ld a, d                                         ; $2a97: $7a
  ld [$c2c1], a                                   ; $2a98: $ea $c1 $c2
  ld de, $d000                                    ; $2a9b: $11 $00 $d0
  ld a, e                                         ; $2a9e: $7b
  ld [$c2c2], a                                   ; $2a9f: $ea $c2 $c2
  ld a, d                                         ; $2aa2: $7a
  ld [$c2c3], a                                   ; $2aa3: $ea $c3 $c2
  call Call_000_0e7c                              ; $2aa6: $cd $7c $0e
  call Call_000_12fd                              ; $2aa9: $cd $fd $12
  ld a, c                                         ; $2aac: $79
  dec a                                           ; $2aad: $3d
  ld [$c2bf], a                                   ; $2aae: $ea $bf $c2
  pop af                                          ; $2ab1: $f1
  ldh [rSVBK], a                                  ; $2ab2: $e0 $70
  ret                                             ; $2ab4: $c9


Call_000_2ab5:
  call Call_000_14dc                              ; $2ab5: $cd $dc $14
  push de                                         ; $2ab8: $d5
  call Call_000_3330                              ; $2ab9: $cd $30 $33
  ld de, $cd37                                    ; $2abc: $11 $37 $cd
  call Call_000_0269                              ; $2abf: $cd $69 $02
  pop de                                          ; $2ac2: $d1
  ret                                             ; $2ac3: $c9


Call_000_2ac4:
  call Call_000_14dc                              ; $2ac4: $cd $dc $14

Call_000_2ac7:
  ldh a, [rSVBK]                                  ; $2ac7: $f0 $70
  push af                                         ; $2ac9: $f5
  ld a, $01                                       ; $2aca: $3e $01
  ldh [rSVBK], a                                  ; $2acc: $e0 $70
  push de                                         ; $2ace: $d5
  call Call_000_3330                              ; $2acf: $cd $30 $33
  ld de, $cd37                                    ; $2ad2: $11 $37 $cd
  call Call_000_0269                              ; $2ad5: $cd $69 $02
  ld de, $d000                                    ; $2ad8: $11 $00 $d0
  call Call_000_0e7c                              ; $2adb: $cd $7c $0e
  ld hl, $d000                                    ; $2ade: $21 $00 $d0
  pop de                                          ; $2ae1: $d1
  pop af                                          ; $2ae2: $f1
  ldh [rSVBK], a                                  ; $2ae3: $e0 $70
  ret                                             ; $2ae5: $c9


Call_000_2ae6:
  ld a, $02                                       ; $2ae6: $3e $02
  ld [$2000], a                                   ; $2ae8: $ea $00 $20
  ld a, [bc]                                      ; $2aeb: $0a
  ld hl, $4001                                    ; $2aec: $21 $01 $40
  jp Jump_000_3182                                ; $2aef: $c3 $82 $31


Call_000_2af2:
Jump_000_2af2:
  ld hl, $001c                                    ; $2af2: $21 $1c $00
  add hl, bc                                      ; $2af5: $09
  ld a, [hl+]                                     ; $2af6: $2a
  ld d, [hl]                                      ; $2af7: $56
  ld e, a                                         ; $2af8: $5f
  dec de                                          ; $2af9: $1b
  bit 7, d                                        ; $2afa: $cb $7a
  ret nz                                          ; $2afc: $c0

  ld [hl], d                                      ; $2afd: $72
  dec hl                                          ; $2afe: $2b
  ld [hl], e                                      ; $2aff: $73
  ld a, d                                         ; $2b00: $7a
  or e                                            ; $2b01: $b3
  ret nz                                          ; $2b02: $c0

  ld hl, $001a                                    ; $2b03: $21 $1a $00
  add hl, bc                                      ; $2b06: $09
  ld e, [hl]                                      ; $2b07: $5e
  inc hl                                          ; $2b08: $23
  ld d, [hl]                                      ; $2b09: $56

Jump_000_2b0a:
  ld hl, $ff97                                    ; $2b0a: $21 $97 $ff
  ld [hl], e                                      ; $2b0d: $73
  inc hl                                          ; $2b0e: $23
  ld [hl], d                                      ; $2b0f: $72

Jump_000_2b10:
  ld a, $02                                       ; $2b10: $3e $02
  ld [$2000], a                                   ; $2b12: $ea $00 $20
  call Call_000_2b3d                              ; $2b15: $cd $3d $2b
  jp hl                                           ; $2b18: $e9


Call_000_2b19:
  push de                                         ; $2b19: $d5
  push hl                                         ; $2b1a: $e5
  ld hl, $ff97                                    ; $2b1b: $21 $97 $ff
  ld a, [hl+]                                     ; $2b1e: $2a
  ld d, [hl]                                      ; $2b1f: $56
  ld e, a                                         ; $2b20: $5f
  push hl                                         ; $2b21: $e5
  ld hl, $0053                                    ; $2b22: $21 $53 $00
  add hl, bc                                      ; $2b25: $09
  ld a, [hl]                                      ; $2b26: $7e
  or a                                            ; $2b27: $b7
  jr z, jr_000_2b2f                               ; $2b28: $28 $05

  ld [$2000], a                                   ; $2b2a: $ea $00 $20
  jr jr_000_2b34                                  ; $2b2d: $18 $05

jr_000_2b2f:
  ld a, $02                                       ; $2b2f: $3e $02
  ld [$2000], a                                   ; $2b31: $ea $00 $20

jr_000_2b34:
  pop hl                                          ; $2b34: $e1
  ld a, [de]                                      ; $2b35: $1a
  inc de                                          ; $2b36: $13
  ld [hl], d                                      ; $2b37: $72
  dec hl                                          ; $2b38: $2b
  ld [hl], e                                      ; $2b39: $73
  pop hl                                          ; $2b3a: $e1
  pop de                                          ; $2b3b: $d1
  ret                                             ; $2b3c: $c9


Call_000_2b3d:
  call Call_000_2b19                              ; $2b3d: $cd $19 $2b
  ld e, a                                         ; $2b40: $5f
  ld a, $02                                       ; $2b41: $3e $02
  ld [$2000], a                                   ; $2b43: $ea $00 $20
  ld a, e                                         ; $2b46: $7b
  ld hl, $7efe                                    ; $2b47: $21 $fe $7e
  rst $08                                         ; $2b4a: $cf
  ret                                             ; $2b4b: $c9


Jump_000_2b4c:
  ld hl, $0023                                    ; $2b4c: $21 $23 $00
  add hl, bc                                      ; $2b4f: $09
  ld [hl], $00                                    ; $2b50: $36 $00
  call Call_000_2b19                              ; $2b52: $cd $19 $2b
  call Call_000_0864                              ; $2b55: $cd $64 $08
  jp Jump_000_2b10                                ; $2b58: $c3 $10 $2b


Jump_000_2b5b:
  call Call_000_2b19                              ; $2b5b: $cd $19 $2b
  ld hl, $002c                                    ; $2b5e: $21 $2c $00
  add hl, bc                                      ; $2b61: $09
  ld [hl], a                                      ; $2b62: $77
  jp Jump_000_2b10                                ; $2b63: $c3 $10 $2b


Jump_000_2b66:
  ld hl, $0023                                    ; $2b66: $21 $23 $00

Jump_000_2b69:
  add hl, bc                                      ; $2b69: $09
  jr jr_000_2b71                                  ; $2b6a: $18 $05

Jump_000_2b6c:
jr_000_2b6c:
  add hl, bc                                      ; $2b6c: $09
  call Call_000_2b19                              ; $2b6d: $cd $19 $2b
  ld [hl+], a                                     ; $2b70: $22

jr_000_2b71:
  call Call_000_2b19                              ; $2b71: $cd $19 $2b
  ld [hl], a                                      ; $2b74: $77
  jp Jump_000_2b10                                ; $2b75: $c3 $10 $2b


Jump_000_2b78:
  ld a, [$cdac]                                   ; $2b78: $fa $ac $cd
  jr jr_000_2b80                                  ; $2b7b: $18 $03

Jump_000_2b7d:
  call Call_000_2b19                              ; $2b7d: $cd $19 $2b

jr_000_2b80:
  ld hl, $001c                                    ; $2b80: $21 $1c $00
  add hl, bc                                      ; $2b83: $09
  ld [hl], a                                      ; $2b84: $77

Jump_000_2b85:
  ld hl, $ff97                                    ; $2b85: $21 $97 $ff
  ld e, [hl]                                      ; $2b88: $5e
  inc hl                                          ; $2b89: $23
  ld d, [hl]                                      ; $2b8a: $56
  ld hl, $001a                                    ; $2b8b: $21 $1a $00
  add hl, bc                                      ; $2b8e: $09
  ld [hl], e                                      ; $2b8f: $73
  inc hl                                          ; $2b90: $23
  ld [hl], d                                      ; $2b91: $72
  ret                                             ; $2b92: $c9


Jump_000_2b93:
  call Call_000_2f0c                              ; $2b93: $cd $0c $2f
  ld hl, $001e                                    ; $2b96: $21 $1e $00
  add hl, bc                                      ; $2b99: $09
  ld a, [hl]                                      ; $2b9a: $7e
  cp $01                                          ; $2b9b: $fe $01
  call nc, Call_000_0a6c                          ; $2b9d: $d4 $6c $0a
  inc [hl]                                        ; $2ba0: $34
  inc hl                                          ; $2ba1: $23
  call Call_000_317a                              ; $2ba2: $cd $7a $31
  ldh a, [$ff97]                                  ; $2ba5: $f0 $97
  ld [hl+], a                                     ; $2ba7: $22
  ldh a, [$ff98]                                  ; $2ba8: $f0 $98
  ld [hl], a                                      ; $2baa: $77
  ld hl, $ff97                                    ; $2bab: $21 $97 $ff
  ld [hl], e                                      ; $2bae: $73
  inc hl                                          ; $2baf: $23
  ld [hl], d                                      ; $2bb0: $72
  jp Jump_000_2b10                                ; $2bb1: $c3 $10 $2b


Jump_000_2bb4:
  ld hl, $001e                                    ; $2bb4: $21 $1e $00
  add hl, bc                                      ; $2bb7: $09
  dec [hl]                                        ; $2bb8: $35
  ld a, [hl+]                                     ; $2bb9: $2a
  cp $ff                                          ; $2bba: $fe $ff
  call z, Call_000_0a6c                           ; $2bbc: $cc $6c $0a
  call Call_000_3182                              ; $2bbf: $cd $82 $31
  ld hl, $ff97                                    ; $2bc2: $21 $97 $ff
  ld [hl], e                                      ; $2bc5: $73
  inc hl                                          ; $2bc6: $23
  ld [hl], d                                      ; $2bc7: $72
  jp Jump_000_2b10                                ; $2bc8: $c3 $10 $2b


Jump_000_2bcb:
  ld hl, $000f                                    ; $2bcb: $21 $0f $00
  jr jr_000_2b6c                                  ; $2bce: $18 $9c

Jump_000_2bd0:
  ld hl, $0011                                    ; $2bd0: $21 $11 $00
  jr jr_000_2b6c                                  ; $2bd3: $18 $97

Jump_000_2bd5:
  call Call_000_2b19                              ; $2bd5: $cd $19 $2b
  ld hl, $002a                                    ; $2bd8: $21 $2a $00
  add hl, bc                                      ; $2bdb: $09
  ld [hl], a                                      ; $2bdc: $77
  jp Jump_000_2b10                                ; $2bdd: $c3 $10 $2b


Jump_000_2be0:
  call Call_000_2b19                              ; $2be0: $cd $19 $2b
  call Call_000_392b                              ; $2be3: $cd $2b $39
  jp Jump_000_2b10                                ; $2be6: $c3 $10 $2b


Jump_000_2be9:
  call Call_000_2f0c                              ; $2be9: $cd $0c $2f

Jump_000_2bec:
  ld hl, $ff97                                    ; $2bec: $21 $97 $ff
  ld [hl], e                                      ; $2bef: $73
  inc hl                                          ; $2bf0: $23
  ld [hl], d                                      ; $2bf1: $72
  jp Jump_000_2b10                                ; $2bf2: $c3 $10 $2b


Jump_000_2bf5:
  call Call_000_2f0c                              ; $2bf5: $cd $0c $2f
  ld hl, $0030                                    ; $2bf8: $21 $30 $00
  add hl, bc                                      ; $2bfb: $09
  push de                                         ; $2bfc: $d5
  ld d, h                                         ; $2bfd: $54
  ld e, l                                         ; $2bfe: $5d
  pop hl                                          ; $2bff: $e1

Call_000_2c00:
  call Call_000_0257                              ; $2c00: $cd $57 $02
  jp Jump_000_2b10                                ; $2c03: $c3 $10 $2b


Jump_000_2c06:
  call Call_000_2f25                              ; $2c06: $cd $25 $2f
  jp Jump_000_2b10                                ; $2c09: $c3 $10 $2b


Jump_000_2c0c:
  ld de, $2b10                                    ; $2c0c: $11 $10 $2b
  push de                                         ; $2c0f: $d5
  call Call_000_2f0c                              ; $2c10: $cd $0c $2f
  ld l, e                                         ; $2c13: $6b
  ld h, d                                         ; $2c14: $62
  jp hl                                           ; $2c15: $e9


Jump_000_2c16:
  call Call_000_2b19                              ; $2c16: $cd $19 $2b
  push af                                         ; $2c19: $f5
  call Call_000_2f0c                              ; $2c1a: $cd $0c $2f
  ld l, e                                         ; $2c1d: $6b
  ld h, d                                         ; $2c1e: $62
  pop af                                          ; $2c1f: $f1
  call Call_000_346d                              ; $2c20: $cd $6d $34
  jp Jump_000_2b10                                ; $2c23: $c3 $10 $2b


Jump_000_2c26:
  call Call_000_2f0c                              ; $2c26: $cd $0c $2f
  ld a, [$cdab]                                   ; $2c29: $fa $ab $cd
  ld l, a                                         ; $2c2c: $6f
  push hl                                         ; $2c2d: $e5
  pop af                                          ; $2c2e: $f1
  jp z, Jump_000_2bec                             ; $2c2f: $ca $ec $2b

  jp Jump_000_2b10                                ; $2c32: $c3 $10 $2b


Jump_000_2c35:
  call Call_000_2f0c                              ; $2c35: $cd $0c $2f
  ld a, [$cdab]                                   ; $2c38: $fa $ab $cd
  ld l, a                                         ; $2c3b: $6f
  push hl                                         ; $2c3c: $e5
  pop af                                          ; $2c3d: $f1
  jp nz, Jump_000_2bec                            ; $2c3e: $c2 $ec $2b

  jp Jump_000_2b10                                ; $2c41: $c3 $10 $2b


Jump_000_2c44:
  call Call_000_2f0c                              ; $2c44: $cd $0c $2f
  ld a, [$cdab]                                   ; $2c47: $fa $ab $cd
  ld l, a                                         ; $2c4a: $6f
  push hl                                         ; $2c4b: $e5
  pop af                                          ; $2c4c: $f1
  jp c, Jump_000_2bec                             ; $2c4d: $da $ec $2b

  jp Jump_000_2b10                                ; $2c50: $c3 $10 $2b


Jump_000_2c53:
  call Call_000_2f0c                              ; $2c53: $cd $0c $2f
  ld a, [$cdab]                                   ; $2c56: $fa $ab $cd
  ld l, a                                         ; $2c59: $6f
  push hl                                         ; $2c5a: $e5
  pop af                                          ; $2c5b: $f1
  jp nc, Jump_000_2bec                            ; $2c5c: $d2 $ec $2b

  jp Jump_000_2b10                                ; $2c5f: $c3 $10 $2b


Jump_000_2c62:
  ld a, [$c1de]                                   ; $2c62: $fa $de $c1
  push af                                         ; $2c65: $f5
  call Call_000_2b19                              ; $2c66: $cd $19 $2b
  call Call_000_04e0                              ; $2c69: $cd $e0 $04
  pop af                                          ; $2c6c: $f1
  ld [$c1de], a                                   ; $2c6d: $ea $de $c1
  jp Jump_000_2b10                                ; $2c70: $c3 $10 $2b


Jump_000_2c73:
  ld hl, $002d                                    ; $2c73: $21 $2d $00
  add hl, bc                                      ; $2c76: $09
  res 3, [hl]                                     ; $2c77: $cb $9e
  res 4, [hl]                                     ; $2c79: $cb $a6
  res 5, [hl]                                     ; $2c7b: $cb $ae
  jp Jump_000_2b10                                ; $2c7d: $c3 $10 $2b


Jump_000_2c80:
  ld hl, $002d                                    ; $2c80: $21 $2d $00
  add hl, bc                                      ; $2c83: $09
  set 3, [hl]                                     ; $2c84: $cb $de
  jp Jump_000_2b10                                ; $2c86: $c3 $10 $2b


Jump_000_2c89:
  ld hl, $002d                                    ; $2c89: $21 $2d $00
  add hl, bc                                      ; $2c8c: $09
  set 4, [hl]                                     ; $2c8d: $cb $e6
  jp Jump_000_2b10                                ; $2c8f: $c3 $10 $2b


Jump_000_2c92:
  ld hl, $002b                                    ; $2c92: $21 $2b $00
  add hl, bc                                      ; $2c95: $09
  set 3, [hl]                                     ; $2c96: $cb $de
  jp Jump_000_2b10                                ; $2c98: $c3 $10 $2b


Jump_000_2c9b:
  call Call_000_2b19                              ; $2c9b: $cd $19 $2b
  ld hl, $002b                                    ; $2c9e: $21 $2b $00
  add hl, bc                                      ; $2ca1: $09
  bit 5, [hl]                                     ; $2ca2: $cb $6e
  jr z, jr_000_2ca8                               ; $2ca4: $28 $02

  cpl                                             ; $2ca6: $2f
  inc a                                           ; $2ca7: $3c

jr_000_2ca8:
  ld hl, $000b                                    ; $2ca8: $21 $0b $00
  call Call_000_2f00                              ; $2cab: $cd $00 $2f
  ld hl, $ff9b                                    ; $2cae: $21 $9b $ff
  ld [hl], e                                      ; $2cb1: $73
  inc hl                                          ; $2cb2: $23
  ld [hl], d                                      ; $2cb3: $72
  jp Jump_000_2b10                                ; $2cb4: $c3 $10 $2b


Jump_000_2cb7:
  call Call_000_2b19                              ; $2cb7: $cd $19 $2b
  ld hl, $000d                                    ; $2cba: $21 $0d $00
  call Call_000_2f00                              ; $2cbd: $cd $00 $2f
  ld hl, $ff9d                                    ; $2cc0: $21 $9d $ff
  ld [hl], e                                      ; $2cc3: $73
  inc hl                                          ; $2cc4: $23
  ld [hl], d                                      ; $2cc5: $72
  jp Jump_000_2b10                                ; $2cc6: $c3 $10 $2b


Jump_000_2cc9:
  call Call_000_2b19                              ; $2cc9: $cd $19 $2b
  ldh [$ff9a], a                                  ; $2ccc: $e0 $9a
  jp Jump_000_2b10                                ; $2cce: $c3 $10 $2b


Jump_000_2cd1:
  call Call_000_2b19                              ; $2cd1: $cd $19 $2b
  ldh [$ff9f], a                                  ; $2cd4: $e0 $9f
  jp Jump_000_2b10                                ; $2cd6: $c3 $10 $2b


Jump_000_2cd9:
  call Call_000_2f0c                              ; $2cd9: $cd $0c $2f
  ld hl, $002b                                    ; $2cdc: $21 $2b $00
  add hl, bc                                      ; $2cdf: $09
  bit 5, [hl]                                     ; $2ce0: $cb $6e
  call nz, Call_000_0092                          ; $2ce2: $c4 $92 $00
  ld hl, $000f                                    ; $2ce5: $21 $0f $00
  add hl, bc                                      ; $2ce8: $09
  ld [hl], e                                      ; $2ce9: $73
  inc hl                                          ; $2cea: $23
  ld [hl], d                                      ; $2ceb: $72
  jp Jump_000_2b10                                ; $2cec: $c3 $10 $2b


Jump_000_2cef:
  call Call_000_2f0c                              ; $2cef: $cd $0c $2f
  call Call_000_09f4                              ; $2cf2: $cd $f4 $09
  jp Jump_000_2b10                                ; $2cf5: $c3 $10 $2b


Jump_000_2cf8:
  call Call_000_0dbb                              ; $2cf8: $cd $bb $0d
  jp Jump_000_2b10                                ; $2cfb: $c3 $10 $2b


Jump_000_2cfe:
  call Call_000_0d92                              ; $2cfe: $cd $92 $0d
  jp Jump_000_2b10                                ; $2d01: $c3 $10 $2b


Jump_000_2d04:
  ld hl, $002c                                    ; $2d04: $21 $2c $00
  add hl, bc                                      ; $2d07: $09
  set 5, [hl]                                     ; $2d08: $cb $ee
  jp Jump_000_2b10                                ; $2d0a: $c3 $10 $2b


Jump_000_2d0d:
  ld hl, $002c                                    ; $2d0d: $21 $2c $00
  add hl, bc                                      ; $2d10: $09
  res 5, [hl]                                     ; $2d11: $cb $ae
  jp Jump_000_2b10                                ; $2d13: $c3 $10 $2b


Jump_000_2d16:
  ld hl, $002a                                    ; $2d16: $21 $2a $00
  add hl, bc                                      ; $2d19: $09
  set 0, [hl]                                     ; $2d1a: $cb $c6
  jp Jump_000_2b10                                ; $2d1c: $c3 $10 $2b


Jump_000_2d1f:
  ld hl, $002a                                    ; $2d1f: $21 $2a $00
  add hl, bc                                      ; $2d22: $09
  res 0, [hl]                                     ; $2d23: $cb $86
  jp Jump_000_2b10                                ; $2d25: $c3 $10 $2b


Jump_000_2d28:
  ld a, $20                                       ; $2d28: $3e $20
  call Call_000_0806                              ; $2d2a: $cd $06 $08
  jp Jump_000_2b10                                ; $2d2d: $c3 $10 $2b


Jump_000_2d30:
  xor a                                           ; $2d30: $af
  call Call_000_0806                              ; $2d31: $cd $06 $08
  jp Jump_000_2b10                                ; $2d34: $c3 $10 $2b


Jump_000_2d37:
  call Call_000_2b19                              ; $2d37: $cd $19 $2b
  ld e, a                                         ; $2d3a: $5f
  ld a, [$cc57]                                   ; $2d3b: $fa $57 $cc
  cp e                                            ; $2d3e: $bb
  call StoreCPUFlags                              ; $2d3f: $cd $39 $00
  jp Jump_000_2b10                                ; $2d42: $c3 $10 $2b


Jump_000_2d45:
  call Call_000_2b19                              ; $2d45: $cd $19 $2b
  ld e, a                                         ; $2d48: $5f
  ld a, [$cc5b]                                   ; $2d49: $fa $5b $cc
  cp e                                            ; $2d4c: $bb
  call StoreCPUFlags                              ; $2d4d: $cd $39 $00
  jp Jump_000_2b10                                ; $2d50: $c3 $10 $2b


Jump_000_2d53:
  ld hl, $0006                                    ; $2d53: $21 $06 $00
  jp Jump_000_2b6c                                ; $2d56: $c3 $6c $2b


Jump_000_2d59:
  call Call_000_2b19                              ; $2d59: $cd $19 $2b
  ld hl, $000b                                    ; $2d5c: $21 $0b $00
  call Call_000_2f00                              ; $2d5f: $cd $00 $2f
  ld [hl], d                                      ; $2d62: $72
  dec hl                                          ; $2d63: $2b
  ld [hl], e                                      ; $2d64: $73
  ld hl, $0006                                    ; $2d65: $21 $06 $00
  add hl, bc                                      ; $2d68: $09
  ld [hl], e                                      ; $2d69: $73
  inc hl                                          ; $2d6a: $23
  ld [hl], d                                      ; $2d6b: $72
  jp Jump_000_2b10                                ; $2d6c: $c3 $10 $2b


Jump_000_2d6f:
  ld hl, $0009                                    ; $2d6f: $21 $09 $00
  jp Jump_000_2b6c                                ; $2d72: $c3 $6c $2b


Jump_000_2d75:
  call Call_000_2b19                              ; $2d75: $cd $19 $2b
  push af                                         ; $2d78: $f5
  ld hl, $000d                                    ; $2d79: $21 $0d $00
  call Call_000_2f00                              ; $2d7c: $cd $00 $2f
  ld [hl], d                                      ; $2d7f: $72
  dec hl                                          ; $2d80: $2b
  ld [hl], e                                      ; $2d81: $73
  pop af                                          ; $2d82: $f1
  ld hl, $0009                                    ; $2d83: $21 $09 $00
  call Call_000_2f00                              ; $2d86: $cd $00 $2f
  ld [hl], d                                      ; $2d89: $72
  dec hl                                          ; $2d8a: $2b
  ld [hl], e                                      ; $2d8b: $73
  jp Jump_000_2b10                                ; $2d8c: $c3 $10 $2b


Jump_000_2d8f:
  ld hl, $ff97                                    ; $2d8f: $21 $97 $ff
  ld e, [hl]                                      ; $2d92: $5e
  inc hl                                          ; $2d93: $23
  ld d, [hl]                                      ; $2d94: $56
  ld hl, $0001                                    ; $2d95: $21 $01 $00
  add hl, bc                                      ; $2d98: $09
  ld l, [hl]                                      ; $2d99: $6e
  ld h, $00                                       ; $2d9a: $26 $00
  add hl, hl                                      ; $2d9c: $29
  add hl, de                                      ; $2d9d: $19
  ld a, l                                         ; $2d9e: $7d
  ldh [$ff97], a                                  ; $2d9f: $e0 $97
  ld a, h                                         ; $2da1: $7c
  ldh [$ff98], a                                  ; $2da2: $e0 $98
  jp Jump_000_2be9                                ; $2da4: $c3 $e9 $2b


Jump_000_2da7:
  ld hl, $ff97                                    ; $2da7: $21 $97 $ff
  ld e, [hl]                                      ; $2daa: $5e
  inc hl                                          ; $2dab: $23
  ld d, [hl]                                      ; $2dac: $56
  ld hl, $0002                                    ; $2dad: $21 $02 $00
  add hl, bc                                      ; $2db0: $09
  ld l, [hl]                                      ; $2db1: $6e
  ld h, $00                                       ; $2db2: $26 $00
  add hl, hl                                      ; $2db4: $29
  add hl, de                                      ; $2db5: $19
  ld a, l                                         ; $2db6: $7d
  ldh [$ff97], a                                  ; $2db7: $e0 $97
  ld a, h                                         ; $2db9: $7c
  ldh [$ff98], a                                  ; $2dba: $e0 $98
  jp Jump_000_2be9                                ; $2dbc: $c3 $e9 $2b


Jump_000_2dbf:
  ld hl, $0004                                    ; $2dbf: $21 $04 $00
  add hl, bc                                      ; $2dc2: $09
  ld a, [hl]                                      ; $2dc3: $7e
  ld hl, $001c                                    ; $2dc4: $21 $1c $00
  add hl, bc                                      ; $2dc7: $09
  ld [hl+], a                                     ; $2dc8: $22
  jp Jump_000_2b85                                ; $2dc9: $c3 $85 $2b


Jump_000_2dcc:
  ld hl, $0001                                    ; $2dcc: $21 $01 $00
  jp Jump_000_2b69                                ; $2dcf: $c3 $69 $2b


Jump_000_2dd2:
  ld hl, $0001                                    ; $2dd2: $21 $01 $00
  add hl, bc                                      ; $2dd5: $09
  dec [hl]                                        ; $2dd6: $35
  call StoreCPUFlags                              ; $2dd7: $cd $39 $00
  jp Jump_000_2b10                                ; $2dda: $c3 $10 $2b


Jump_000_2ddd:
  ld hl, $0002                                    ; $2ddd: $21 $02 $00
  jp Jump_000_2b69                                ; $2de0: $c3 $69 $2b


Jump_000_2de3:
  ld hl, $0002                                    ; $2de3: $21 $02 $00
  add hl, bc                                      ; $2de6: $09
  dec [hl]                                        ; $2de7: $35
  call StoreCPUFlags                              ; $2de8: $cd $39 $00
  jp Jump_000_2b10                                ; $2deb: $c3 $10 $2b


Jump_000_2dee:
  ld hl, $0003                                    ; $2dee: $21 $03 $00
  jp Jump_000_2b6c                                ; $2df1: $c3 $6c $2b


Jump_000_2df4:
  ld hl, $0003                                    ; $2df4: $21 $03 $00
  add hl, bc                                      ; $2df7: $09
  ld a, [hl+]                                     ; $2df8: $2a
  ld d, [hl]                                      ; $2df9: $56
  ld e, a                                         ; $2dfa: $5f
  dec de                                          ; $2dfb: $1b
  ld [hl], d                                      ; $2dfc: $72
  inc hl                                          ; $2dfd: $23
  ld [hl], e                                      ; $2dfe: $73
  ld a, e                                         ; $2dff: $7b
  or d                                            ; $2e00: $b2
  call StoreCPUFlags                              ; $2e01: $cd $39 $00
  jp Jump_000_2b10                                ; $2e04: $c3 $10 $2b


Jump_000_2e07:
  jp Jump_000_2b10                                ; $2e07: $c3 $10 $2b


Jump_000_2e0a:
  call Call_000_07fd                              ; $2e0a: $cd $fd $07
  jp Jump_000_2b10                                ; $2e0d: $c3 $10 $2b


Jump_000_2e10:
  call Call_000_2f0c                              ; $2e10: $cd $0c $2f
  ld a, e                                         ; $2e13: $7b
  call Call_000_28e6                              ; $2e14: $cd $e6 $28
  cp d                                            ; $2e17: $ba
  call StoreCPUFlags                              ; $2e18: $cd $39 $00
  jp Jump_000_2b10                                ; $2e1b: $c3 $10 $2b


Jump_000_2e1e:
  call Call_000_2b19                              ; $2e1e: $cd $19 $2b
  call Call_000_28e6                              ; $2e21: $cd $e6 $28
  call Call_000_2fd9                              ; $2e24: $cd $d9 $2f
  jp Jump_000_2b10                                ; $2e27: $c3 $10 $2b


Jump_000_2e2a:
  call Call_000_2b19                              ; $2e2a: $cd $19 $2b
  call Call_000_28e6                              ; $2e2d: $cd $e6 $28
  call Call_000_2fdd                              ; $2e30: $cd $dd $2f
  jp Jump_000_2b10                                ; $2e33: $c3 $10 $2b


  jp Jump_000_2b10                                ; $2e36: $c3 $10 $2b


Jump_000_2e39:
  call Call_000_2f0c                              ; $2e39: $cd $0c $2f
  ld hl, $002a                                    ; $2e3c: $21 $2a $00
  add hl, bc                                      ; $2e3f: $09
  bit 6, [hl]                                     ; $2e40: $cb $76
  jr nz, jr_000_2e4c                              ; $2e42: $20 $08

  ld l, e                                         ; $2e44: $6b
  ld h, d                                         ; $2e45: $62
  call Call_000_079c                              ; $2e46: $cd $9c $07
  jp Jump_000_2b10                                ; $2e49: $c3 $10 $2b


jr_000_2e4c:
  ld l, e                                         ; $2e4c: $6b
  ld h, d                                         ; $2e4d: $62
  call Call_000_0786                              ; $2e4e: $cd $86 $07
  jp Jump_000_2b10                                ; $2e51: $c3 $10 $2b


Jump_000_2e54:
  call Call_000_2f0c                              ; $2e54: $cd $0c $2f
  ld a, $03                                       ; $2e57: $3e $03
  ld [$2000], a                                   ; $2e59: $ea $00 $20
  call $7863                                      ; $2e5c: $cd $63 $78
  ld a, $02                                       ; $2e5f: $3e $02
  ld [$2000], a                                   ; $2e61: $ea $00 $20
  jp Jump_000_2b10                                ; $2e64: $c3 $10 $2b


Jump_000_2e67:
  call Call_000_2f0c                              ; $2e67: $cd $0c $2f
  ld a, $03                                       ; $2e6a: $3e $03
  ld [$2000], a                                   ; $2e6c: $ea $00 $20
  call $7873                                      ; $2e6f: $cd $73 $78
  ld a, $02                                       ; $2e72: $3e $02
  ld [$2000], a                                   ; $2e74: $ea $00 $20
  jp Jump_000_2b10                                ; $2e77: $c3 $10 $2b


Jump_000_2e7a:
  ld hl, $002b                                    ; $2e7a: $21 $2b $00
  add hl, bc                                      ; $2e7d: $09
  set 7, [hl]                                     ; $2e7e: $cb $fe
  jp Jump_000_2b10                                ; $2e80: $c3 $10 $2b


Jump_000_2e83:
  ld hl, $002b                                    ; $2e83: $21 $2b $00
  add hl, bc                                      ; $2e86: $09
  res 7, [hl]                                     ; $2e87: $cb $be
  jp Jump_000_2b10                                ; $2e89: $c3 $10 $2b


Jump_000_2e8c:
  call Call_000_2b19                              ; $2e8c: $cd $19 $2b
  call Call_000_394b                              ; $2e8f: $cd $4b $39
  jp Jump_000_2b10                                ; $2e92: $c3 $10 $2b


Jump_000_2e95:
  call Call_000_2b19                              ; $2e95: $cd $19 $2b
  call Call_000_0818                              ; $2e98: $cd $18 $08
  jp Jump_000_2b10                                ; $2e9b: $c3 $10 $2b


Jump_000_2e9e:
  call Call_000_089e                              ; $2e9e: $cd $9e $08
  call Call_000_2f0c                              ; $2ea1: $cd $0c $2f
  push de                                         ; $2ea4: $d5
  ld d, h                                         ; $2ea5: $54
  ld e, l                                         ; $2ea6: $5d
  pop hl                                          ; $2ea7: $e1
  rst $10                                         ; $2ea8: $d7
  call StoreCPUFlags                              ; $2ea9: $cd $39 $00
  jp Jump_000_2b10                                ; $2eac: $c3 $10 $2b


Jump_000_2eaf:
  call Call_000_2fc1                              ; $2eaf: $cd $c1 $2f
  jr jr_000_2eb7                                  ; $2eb2: $18 $03

Jump_000_2eb4:
  call Call_000_2fc9                              ; $2eb4: $cd $c9 $2f

jr_000_2eb7:
  ld e, a                                         ; $2eb7: $5f
  call Call_000_2b19                              ; $2eb8: $cd $19 $2b
  cp e                                            ; $2ebb: $bb
  call Call_000_2f0c                              ; $2ebc: $cd $0c $2f
  jp z, Jump_000_2bec                             ; $2ebf: $ca $ec $2b

  jp Jump_000_2b10                                ; $2ec2: $c3 $10 $2b


Jump_000_2ec5:
  call Call_000_2b19                              ; $2ec5: $cd $19 $2b
  ld hl, $0019                                    ; $2ec8: $21 $19 $00
  add hl, bc                                      ; $2ecb: $09
  ld [hl], a                                      ; $2ecc: $77
  jp Jump_000_2b10                                ; $2ecd: $c3 $10 $2b


Jump_000_2ed0:
  call Call_000_2f0c                              ; $2ed0: $cd $0c $2f
  ld hl, $ff9b                                    ; $2ed3: $21 $9b $ff
  ld [hl], e                                      ; $2ed6: $73
  inc hl                                          ; $2ed7: $23
  ld [hl], d                                      ; $2ed8: $72
  jp Jump_000_2b10                                ; $2ed9: $c3 $10 $2b


Jump_000_2edc:
  call Call_000_2f0c                              ; $2edc: $cd $0c $2f
  ld hl, $ff9d                                    ; $2edf: $21 $9d $ff
  ld [hl], e                                      ; $2ee2: $73
  inc hl                                          ; $2ee3: $23
  ld [hl], d                                      ; $2ee4: $72
  jp Jump_000_2b10                                ; $2ee5: $c3 $10 $2b


Jump_000_2ee8:
  call Call_000_2f0c                              ; $2ee8: $cd $0c $2f
  ld hl, $ffa1                                    ; $2eeb: $21 $a1 $ff
  ld [hl], e                                      ; $2eee: $73
  inc hl                                          ; $2eef: $23
  ld [hl], d                                      ; $2ef0: $72
  jp Jump_000_2b10                                ; $2ef1: $c3 $10 $2b


Jump_000_2ef4:
  call Call_000_2f0c                              ; $2ef4: $cd $0c $2f
  ld hl, $ffa3                                    ; $2ef7: $21 $a3 $ff
  ld [hl], e                                      ; $2efa: $73
  inc hl                                          ; $2efb: $23
  ld [hl], d                                      ; $2efc: $72
  jp Jump_000_2b10                                ; $2efd: $c3 $10 $2b


Call_000_2f00:
  ld e, a                                         ; $2f00: $5f
  rla                                             ; $2f01: $17
  sbc a                                           ; $2f02: $9f
  ld d, a                                         ; $2f03: $57
  add hl, bc                                      ; $2f04: $09
  ld a, [hl+]                                     ; $2f05: $2a
  add e                                           ; $2f06: $83
  ld e, a                                         ; $2f07: $5f
  ld a, [hl]                                      ; $2f08: $7e
  adc d                                           ; $2f09: $8a
  ld d, a                                         ; $2f0a: $57
  ret                                             ; $2f0b: $c9


Call_000_2f0c:
  push af                                         ; $2f0c: $f5
  call Call_000_2b19                              ; $2f0d: $cd $19 $2b
  ld e, a                                         ; $2f10: $5f
  call Call_000_2b19                              ; $2f11: $cd $19 $2b
  ld d, a                                         ; $2f14: $57
  pop af                                          ; $2f15: $f1
  ret                                             ; $2f16: $c9


  ld hl, $001a                                    ; $2f17: $21 $1a $00
  add hl, bc                                      ; $2f1a: $09
  ld [hl], e                                      ; $2f1b: $73
  inc hl                                          ; $2f1c: $23
  ld [hl], d                                      ; $2f1d: $72
  ld hl, $001c                                    ; $2f1e: $21 $1c $00
  add hl, bc                                      ; $2f21: $09
  ld [hl], $01                                    ; $2f22: $36 $01
  ret                                             ; $2f24: $c9


Call_000_2f25:
  ld hl, $000b                                    ; $2f25: $21 $0b $00
  add hl, bc                                      ; $2f28: $09
  ld e, [hl]                                      ; $2f29: $5e
  inc hl                                          ; $2f2a: $23
  ld d, [hl]                                      ; $2f2b: $56
  ld hl, $c2da                                    ; $2f2c: $21 $da $c2
  ld a, [hl+]                                     ; $2f2f: $2a
  ld h, [hl]                                      ; $2f30: $66
  ld l, a                                         ; $2f31: $6f
  rst $10                                         ; $2f32: $d7
  ld a, $00                                       ; $2f33: $3e $00
  jp nc, Jump_000_0806                            ; $2f35: $d2 $06 $08

  ld a, $20                                       ; $2f38: $3e $20
  jp Jump_000_0806                                ; $2f3a: $c3 $06 $08


Call_000_2f3d:
Jump_000_2f3d:
  ld hl, $0023                                    ; $2f3d: $21 $23 $00
  add hl, bc                                      ; $2f40: $09
  ld a, [hl]                                      ; $2f41: $7e
  sub $01                                         ; $2f42: $d6 $01
  ret c                                           ; $2f44: $d8

  ld [hl], a                                      ; $2f45: $77
  ret nz                                          ; $2f46: $c0

  ld a, $02                                       ; $2f47: $3e $02
  ld [$2000], a                                   ; $2f49: $ea $00 $20
  ld hl, $0021                                    ; $2f4c: $21 $21 $00
  add hl, bc                                      ; $2f4f: $09
  ld e, [hl]                                      ; $2f50: $5e
  inc hl                                          ; $2f51: $23
  ld d, [hl]                                      ; $2f52: $56
  inc hl                                          ; $2f53: $23
  inc hl                                          ; $2f54: $23
  ld a, [hl]                                      ; $2f55: $7e
  or a                                            ; $2f56: $b7
  jr z, jr_000_2f65                               ; $2f57: $28 $0c

  ld [$2000], a                                   ; $2f59: $ea $00 $20
  call Call_000_2f65                              ; $2f5c: $cd $65 $2f
  ld a, $02                                       ; $2f5f: $3e $02
  ld [$2000], a                                   ; $2f61: $ea $00 $20
  ret                                             ; $2f64: $c9


Call_000_2f65:
jr_000_2f65:
  ld a, [de]                                      ; $2f65: $1a
  inc de                                          ; $2f66: $13
  cp $f9                                          ; $2f67: $fe $f9
  jr c, jr_000_2f7c                               ; $2f69: $38 $11

  sub $f9                                         ; $2f6b: $d6 $f9
  rst $00                                         ; $2f6d: $c7

  db $98, $2f, $92, $2f, $8b, $2f, $9e, $2f, $a5, $2f, $ac, $2f, $b5, $2f

jr_000_2f7c:
  push af                                         ; $2f7c: $f5
  ld a, [de]                                      ; $2f7d: $1a
  inc de                                          ; $2f7e: $13
  ld hl, $0023                                    ; $2f7f: $21 $23 $00
  add hl, bc                                      ; $2f82: $09
  ld [hl-], a                                     ; $2f83: $32
  ld [hl], d                                      ; $2f84: $72
  dec hl                                          ; $2f85: $2b
  ld [hl], e                                      ; $2f86: $73
  pop af                                          ; $2f87: $f1
  jp Jump_000_0864                                ; $2f88: $c3 $64 $08


  ld a, $40                                       ; $2f8b: $3e $40
  call Call_000_082f                              ; $2f8d: $cd $2f $08
  jr jr_000_2f65                                  ; $2f90: $18 $d3

  xor a                                           ; $2f92: $af
  call Call_000_0806                              ; $2f93: $cd $06 $08
  jr jr_000_2f65                                  ; $2f96: $18 $cd

  xor a                                           ; $2f98: $af
  call Call_000_082f                              ; $2f99: $cd $2f $08
  jr jr_000_2f65                                  ; $2f9c: $18 $c7

  ld a, $20                                       ; $2f9e: $3e $20
  call Call_000_0806                              ; $2fa0: $cd $06 $08
  jr jr_000_2f65                                  ; $2fa3: $18 $c0

  ld a, [de]                                      ; $2fa5: $1a
  inc de                                          ; $2fa6: $13
  call Call_000_392b                              ; $2fa7: $cd $2b $39
  jr jr_000_2f65                                  ; $2faa: $18 $b9

  ld a, [de]                                      ; $2fac: $1a
  ld l, a                                         ; $2fad: $6f
  inc de                                          ; $2fae: $13
  ld a, [de]                                      ; $2faf: $1a
  ld h, a                                         ; $2fb0: $67
  ld e, l                                         ; $2fb1: $5d
  ld d, h                                         ; $2fb2: $54
  jr jr_000_2f65                                  ; $2fb3: $18 $b0

  ld a, [de]                                      ; $2fb5: $1a
  inc a                                           ; $2fb6: $3c
  ld l, a                                         ; $2fb7: $6f
  ld a, e                                         ; $2fb8: $7b
  sub l                                           ; $2fb9: $95
  ld e, a                                         ; $2fba: $5f
  ld a, d                                         ; $2fbb: $7a
  sbc $00                                         ; $2fbc: $de $00
  ld d, a                                         ; $2fbe: $57
  jr jr_000_2f65                                  ; $2fbf: $18 $a4

Call_000_2fc1:
  push hl                                         ; $2fc1: $e5
  ld hl, $0001                                    ; $2fc2: $21 $01 $00
  add hl, bc                                      ; $2fc5: $09
  ld a, [hl]                                      ; $2fc6: $7e
  pop hl                                          ; $2fc7: $e1
  ret                                             ; $2fc8: $c9


Call_000_2fc9:
  push hl                                         ; $2fc9: $e5
  ld hl, $0002                                    ; $2fca: $21 $02 $00
  add hl, bc                                      ; $2fcd: $09
  ld a, [hl]                                      ; $2fce: $7e
  pop hl                                          ; $2fcf: $e1
  ret                                             ; $2fd0: $c9


Call_000_2fd1:
  ld hl, $0003                                    ; $2fd1: $21 $03 $00
  add hl, bc                                      ; $2fd4: $09
  ld a, [hl+]                                     ; $2fd5: $2a
  ld h, [hl]                                      ; $2fd6: $66
  ld l, a                                         ; $2fd7: $6f
  ret                                             ; $2fd8: $c9


Call_000_2fd9:
  inc bc                                          ; $2fd9: $03
  ld [bc], a                                      ; $2fda: $02
  dec bc                                          ; $2fdb: $0b
  ret                                             ; $2fdc: $c9


Call_000_2fdd:
Jump_000_2fdd:
  ld hl, $0002                                    ; $2fdd: $21 $02 $00
  add hl, bc                                      ; $2fe0: $09
  ld [hl], a                                      ; $2fe1: $77
  ret                                             ; $2fe2: $c9


Call_000_2fe3:
Jump_000_2fe3:
  push hl                                         ; $2fe3: $e5
  ld hl, $0003                                    ; $2fe4: $21 $03 $00
  add hl, bc                                      ; $2fe7: $09
  ld [hl], e                                      ; $2fe8: $73
  inc hl                                          ; $2fe9: $23
  ld [hl], d                                      ; $2fea: $72
  pop hl                                          ; $2feb: $e1
  ret                                             ; $2fec: $c9


  ld hl, $0001                                    ; $2fed: $21 $01 $00
  add hl, bc                                      ; $2ff0: $09
  dec [hl]                                        ; $2ff1: $35
  jp StoreCPUFlags                                ; $2ff2: $c3 $39 $00


Call_000_2ff5:
  ld a, $c0                                       ; $2ff5: $3e $c0
  and h                                           ; $2ff7: $a4
  cp $c0                                          ; $2ff8: $fe $c0
  ret z                                           ; $2ffa: $c8

  cp $d0                                          ; $2ffb: $fe $d0
  ret z                                           ; $2ffd: $c8

Call_000_2ffe:
  ld a, [$cdcc]                                   ; $2ffe: $fa $cc $cd

Call_000_3001:
  ld [$2000], a                                   ; $3001: $ea $00 $20
  set 6, h                                        ; $3004: $cb $f4
  add [hl]                                        ; $3006: $86
  push af                                         ; $3007: $f5
  inc hl                                          ; $3008: $23
  ld a, [hl+]                                     ; $3009: $2a
  ld h, [hl]                                      ; $300a: $66
  ld l, a                                         ; $300b: $6f
  set 6, h                                        ; $300c: $cb $f4
  pop af                                          ; $300e: $f1
  ld [$2000], a                                   ; $300f: $ea $00 $20
  ret                                             ; $3012: $c9


Call_000_3013:
  push af                                         ; $3013: $f5
  push bc                                         ; $3014: $c5
  push de                                         ; $3015: $d5
  ld de, $c15a                                    ; $3016: $11 $5a $c1
  ld bc, $0007                                    ; $3019: $01 $07 $00
  call Call_000_12a6                              ; $301c: $cd $a6 $12
  ld hl, $c15e                                    ; $301f: $21 $5e $c1
  ld a, [hl+]                                     ; $3022: $2a
  ld h, [hl]                                      ; $3023: $66
  ld l, a                                         ; $3024: $6f
  ldh [$ffb9], a                                  ; $3025: $e0 $b9
  ld a, h                                         ; $3027: $7c
  ldh [$ffba], a                                  ; $3028: $e0 $ba
  ld hl, $c15c                                    ; $302a: $21 $5c $c1
  ld a, [hl+]                                     ; $302d: $2a
  ld h, [hl]                                      ; $302e: $66
  ld l, a                                         ; $302f: $6f
  call Call_000_303a                              ; $3030: $cd $3a $30
  call Call_000_30e8                              ; $3033: $cd $e8 $30
  pop de                                          ; $3036: $d1
  pop bc                                          ; $3037: $c1
  pop af                                          ; $3038: $f1
  ret                                             ; $3039: $c9


Call_000_303a:
  push af                                         ; $303a: $f5
  push bc                                         ; $303b: $c5
  push de                                         ; $303c: $d5
  bit 7, h                                        ; $303d: $cb $7c
  jr nz, jr_000_304d                              ; $303f: $20 $0c

  ld de, $c161                                    ; $3041: $11 $61 $c1
  ld bc, $0040                                    ; $3044: $01 $40 $00
  call Call_000_12a6                              ; $3047: $cd $a6 $12
  ld hl, $c161                                    ; $304a: $21 $61 $c1

jr_000_304d:
  ld a, l                                         ; $304d: $7d
  ld [$c15c], a                                   ; $304e: $ea $5c $c1
  ld a, h                                         ; $3051: $7c
  ld [$c15d], a                                   ; $3052: $ea $5d $c1
  pop de                                          ; $3055: $d1
  pop bc                                          ; $3056: $c1
  pop af                                          ; $3057: $f1
  ret                                             ; $3058: $c9


Call_000_3059:
jr_000_3059:
  ld a, [de]                                      ; $3059: $1a
  bit 7, a                                        ; $305a: $cb $7f
  ret nz                                          ; $305c: $c0

  inc de                                          ; $305d: $13
  jr jr_000_3059                                  ; $305e: $18 $f9

Call_000_3060:
jr_000_3060:
  ld a, [hl+]                                     ; $3060: $2a
  ld [de], a                                      ; $3061: $12
  bit 7, a                                        ; $3062: $cb $7f
  ret nz                                          ; $3064: $c0

  inc de                                          ; $3065: $13
  jr jr_000_3060                                  ; $3066: $18 $f8

  ld a, [$4000]                                   ; $3068: $fa $00 $40
  push af                                         ; $306b: $f5
  ldh a, [rSVBK]                                  ; $306c: $f0 $70
  push af                                         ; $306e: $f5
  ld a, $07                                       ; $306f: $3e $07
  ldh [rSVBK], a                                  ; $3071: $e0 $70
  ld a, l                                         ; $3073: $7d
  ld [$cecb], a                                   ; $3074: $ea $cb $ce
  ld a, h                                         ; $3077: $7c
  ld [$cecc], a                                   ; $3078: $ea $cc $ce
  call Call_000_2ff5                              ; $307b: $cd $f5 $2f
  ld de, $d800                                    ; $307e: $11 $00 $d8
  call Call_000_3585                              ; $3081: $cd $85 $35
  ld de, $d600                                    ; $3084: $11 $00 $d6
  ld hl, $d800                                    ; $3087: $21 $00 $d8

jr_000_308a:
  ld a, [hl+]                                     ; $308a: $2a
  cp $40                                          ; $308b: $fe $40
  jr z, jr_000_30a1                               ; $308d: $28 $12

  ld [de], a                                      ; $308f: $12
  rla                                             ; $3090: $17
  jr c, jr_000_3096                               ; $3091: $38 $03

  inc de                                          ; $3093: $13
  jr jr_000_308a                                  ; $3094: $18 $f4

jr_000_3096:
  ld hl, $d600                                    ; $3096: $21 $00 $d6
  pop af                                          ; $3099: $f1
  ldh [rSVBK], a                                  ; $309a: $e0 $70
  pop af                                          ; $309c: $f1
  ld [$2000], a                                   ; $309d: $ea $00 $20
  ret                                             ; $30a0: $c9


jr_000_30a1:
  ld a, [hl]                                      ; $30a1: $7e
  res 7, a                                        ; $30a2: $cb $bf
  sub $31                                         ; $30a4: $d6 $31
  push hl                                         ; $30a6: $e5
  swap a                                          ; $30a7: $cb $37
  ld hl, $c1a8                                    ; $30a9: $21 $a8 $c1
  rst $08                                         ; $30ac: $cf
  call Call_000_3060                              ; $30ad: $cd $60 $30
  and $7f                                         ; $30b0: $e6 $7f
  ld [de], a                                      ; $30b2: $12
  inc de                                          ; $30b3: $13
  pop hl                                          ; $30b4: $e1
  ld a, [hl+]                                     ; $30b5: $2a
  rla                                             ; $30b6: $17
  jr nc, jr_000_308a                              ; $30b7: $30 $d1

  dec de                                          ; $30b9: $1b
  ld a, [de]                                      ; $30ba: $1a
  set 7, a                                        ; $30bb: $cb $ff
  ld [de], a                                      ; $30bd: $12
  inc de                                          ; $30be: $13
  jr jr_000_3096                                  ; $30bf: $18 $d5

Call_000_30c1:
  ld a, [$4000]                                   ; $30c1: $fa $00 $40
  push af                                         ; $30c4: $f5
  ldh a, [rSVBK]                                  ; $30c5: $f0 $70
  push af                                         ; $30c7: $f5
  ld a, $07                                       ; $30c8: $3e $07
  ldh [rSVBK], a                                  ; $30ca: $e0 $70
  ld a, l                                         ; $30cc: $7d
  ld [$cecb], a                                   ; $30cd: $ea $cb $ce
  ld a, h                                         ; $30d0: $7c
  ld [$cecc], a                                   ; $30d1: $ea $cc $ce
  call Call_000_2ffe                              ; $30d4: $cd $fe $2f
  push de                                         ; $30d7: $d5
  ld de, $d600                                    ; $30d8: $11 $00 $d6
  call Call_000_3585                              ; $30db: $cd $85 $35
  pop hl                                          ; $30de: $e1
  add hl, de                                      ; $30df: $19
  pop af                                          ; $30e0: $f1
  ldh [rSVBK], a                                  ; $30e1: $e0 $70
  pop af                                          ; $30e3: $f1
  ld [$2000], a                                   ; $30e4: $ea $00 $20
  ret                                             ; $30e7: $c9


Call_000_30e8:
Jump_000_30e8:
  ld a, [$c160]                                   ; $30e8: $fa $60 $c1
  bit 3, a                                        ; $30eb: $cb $5f
  ld de, $0101                                    ; $30ed: $11 $01 $01
  jr z, jr_000_30f5                               ; $30f0: $28 $03

  ld de, $0202                                    ; $30f2: $11 $02 $02

jr_000_30f5:
  ld a, d                                         ; $30f5: $7a
  ld [$c157], a                                   ; $30f6: $ea $57 $c1
  ldh a, [rSVBK]                                  ; $30f9: $f0 $70
  push af                                         ; $30fb: $f5
  ld a, $07                                       ; $30fc: $3e $07
  ldh [rSVBK], a                                  ; $30fe: $e0 $70
  ld a, e                                         ; $3100: $7b
  ld [$db20], a                                   ; $3101: $ea $20 $db
  pop af                                          ; $3104: $f1
  ldh [rSVBK], a                                  ; $3105: $e0 $70
  ret                                             ; $3107: $c9


Call_000_3108:
  push de                                         ; $3108: $d5
  ld a, [hl+]                                     ; $3109: $2a
  ld e, a                                         ; $310a: $5f
  ld d, [hl]                                      ; $310b: $56
  or d                                            ; $310c: $b2
  jr z, jr_000_3119                               ; $310d: $28 $0a

  ld a, e                                         ; $310f: $7b
  sub $01                                         ; $3110: $d6 $01
  ld e, a                                         ; $3112: $5f
  ld a, d                                         ; $3113: $7a
  sbc $00                                         ; $3114: $de $00
  ld [hl-], a                                     ; $3116: $32
  ld [hl], e                                      ; $3117: $73
  or e                                            ; $3118: $b3

jr_000_3119:
  pop de                                          ; $3119: $d1
  ret                                             ; $311a: $c9


Call_000_311b:
  ld a, b                                         ; $311b: $78
  cp h                                            ; $311c: $bc
  ret nz                                          ; $311d: $c0

  ld a, c                                         ; $311e: $79
  cp l                                            ; $311f: $bd
  ret                                             ; $3120: $c9


Jump_000_3121:
  call Call_000_38d0                              ; $3121: $cd $d0 $38
  call Call_000_1232                              ; $3124: $cd $32 $12
  call Call_000_3800                              ; $3127: $cd $00 $38
  jp Jump_000_016c                                ; $312a: $c3 $6c $01


Call_000_312d:
  push bc                                         ; $312d: $c5
  ld a, e                                         ; $312e: $7b
  sub l                                           ; $312f: $95
  ld c, a                                         ; $3130: $4f
  ld a, d                                         ; $3131: $7a
  sbc h                                           ; $3132: $9c
  ld b, a                                         ; $3133: $47
  bit 7, b                                        ; $3134: $cb $78
  jr nz, jr_000_313b                              ; $3136: $20 $03

  or c                                            ; $3138: $b1

jr_000_3139:
  pop bc                                          ; $3139: $c1
  ret                                             ; $313a: $c9


jr_000_313b:
  scf                                             ; $313b: $37
  jr jr_000_3139                                  ; $313c: $18 $fb

Call_000_313e:
  sla e                                           ; $313e: $cb $23
  rl d                                            ; $3140: $cb $12

Call_000_3142:
  sla e                                           ; $3142: $cb $23
  rl d                                            ; $3144: $cb $12
  sla e                                           ; $3146: $cb $23
  rl d                                            ; $3148: $cb $12
  sla e                                           ; $314a: $cb $23
  rl d                                            ; $314c: $cb $12
  sla e                                           ; $314e: $cb $23
  rl d                                            ; $3150: $cb $12
  ret                                             ; $3152: $c9


Call_000_3153:
Jump_000_3153:
  push de                                         ; $3153: $d5
  push hl                                         ; $3154: $e5
  ld l, a                                         ; $3155: $6f
  ld h, $00                                       ; $3156: $26 $00
  add hl, hl                                      ; $3158: $29
  add hl, hl                                      ; $3159: $29
  add hl, hl                                      ; $315a: $29
  pop de                                          ; $315b: $d1
  add hl, de                                      ; $315c: $19
  pop de                                          ; $315d: $d1
  ret                                             ; $315e: $c9


Call_000_315f:
  push de                                         ; $315f: $d5
  push hl                                         ; $3160: $e5
  ld l, a                                         ; $3161: $6f
  ld h, $00                                       ; $3162: $26 $00
  add hl, hl                                      ; $3164: $29
  ld e, l                                         ; $3165: $5d
  ld d, h                                         ; $3166: $54
  pop hl                                          ; $3167: $e1
  add hl, de                                      ; $3168: $19
  jr jr_000_317e                                  ; $3169: $18 $13

Call_000_316b:
Jump_000_316b:
  push de                                         ; $316b: $d5
  ld e, a                                         ; $316c: $5f
  ld d, $00                                       ; $316d: $16 $00
  add hl, de                                      ; $316f: $19
  add hl, de                                      ; $3170: $19
  jr jr_000_317e                                  ; $3171: $18 $0b

Call_000_3173:
  push de                                         ; $3173: $d5
  ld e, a                                         ; $3174: $5f
  ld d, $00                                       ; $3175: $16 $00
  add hl, de                                      ; $3177: $19
  jr jr_000_317e                                  ; $3178: $18 $04

Call_000_317a:
  push de                                         ; $317a: $d5
  ld e, a                                         ; $317b: $5f
  ld d, $00                                       ; $317c: $16 $00

jr_000_317e:
  add hl, de                                      ; $317e: $19
  add hl, de                                      ; $317f: $19
  pop de                                          ; $3180: $d1
  ret                                             ; $3181: $c9


Call_000_3182:
Jump_000_3182:
  ld e, a                                         ; $3182: $5f
  ld d, $00                                       ; $3183: $16 $00
  add hl, de                                      ; $3185: $19
  add hl, de                                      ; $3186: $19
  ld a, [hl+]                                     ; $3187: $2a
  ld d, [hl]                                      ; $3188: $56
  ld e, a                                         ; $3189: $5f
  ret                                             ; $318a: $c9


; ─────────────────────────────────────────────
;* Resolves 16bit pointer with offset A from HL into HL
; Flags: 🟦HL (base address) | 🟥A (index) | 🟩DE
; Output: (HL, A) => HL = [HL + (A * 2)]

ResolveIndexedPointer16:
  push de     ; store DE register                 ; $318b: $d5
  ld e, a     ; ─┐                                ; $318c: $5f
  ld d, $00   ; ─┴ loads $00(aa) into DE          ; $318d: $16 $00
  add hl, de  ; ─┐                                ; $318f: $19
  add hl, de  ; ─┴ HL address += (accumulator *2) ; $3190: $19
  ld a, [hl+] ; ─┐                                ; $3191: $2a
  ld h, [hl]  ;  ├ store value at address HL into HL ; $3192: $66
  ld l, a     ; ─┘                                ; $3193: $6f
  pop de      ; restore DE register               ; $3194: $d1
  ret                                             ; $3195: $c9
; ─────────────────────────────────────────────


Call_000_3196:
Jump_000_3196:
  bit 7, a                                        ; $3196: $cb $7f
  jp z, ResolveIndexedPointer8                                    ; $3198: $ca $08 $00

  add l                                           ; $319b: $85
  ld l, a                                         ; $319c: $6f
  ld a, $ff                                       ; $319d: $3e $ff
  adc h                                           ; $319f: $8c
  ld h, a                                         ; $31a0: $67
  ret                                             ; $31a1: $c9


Call_000_31a2:
  push bc                                         ; $31a2: $c5
  ld a, h                                         ; $31a3: $7c
  and $80                                         ; $31a4: $e6 $80
  ld b, a                                         ; $31a6: $47
  ld a, d                                         ; $31a7: $7a
  and $80                                         ; $31a8: $e6 $80
  xor b                                           ; $31aa: $a8
  push af                                         ; $31ab: $f5
  call Call_000_008f                              ; $31ac: $cd $8f $00
  call Call_000_0078                              ; $31af: $cd $78 $00
  call Call_000_31cd                              ; $31b2: $cd $cd $31
  pop af                                          ; $31b5: $f1
  jr z, jr_000_31cb                               ; $31b6: $28 $13

  ld c, $00                                       ; $31b8: $0e $00
  ld a, e                                         ; $31ba: $7b
  cpl                                             ; $31bb: $2f
  add $01                                         ; $31bc: $c6 $01
  ld e, a                                         ; $31be: $5f
  ld a, d                                         ; $31bf: $7a
  cpl                                             ; $31c0: $2f
  adc c                                           ; $31c1: $89
  ld d, a                                         ; $31c2: $57
  ld a, l                                         ; $31c3: $7d
  cpl                                             ; $31c4: $2f
  adc c                                           ; $31c5: $89
  ld l, a                                         ; $31c6: $6f
  ld a, h                                         ; $31c7: $7c
  cpl                                             ; $31c8: $2f
  adc c                                           ; $31c9: $89
  ld h, a                                         ; $31ca: $67

jr_000_31cb:
  pop bc                                          ; $31cb: $c1
  ret                                             ; $31cc: $c9


Call_000_31cd:
  ld a, d                                         ; $31cd: $7a
  or e                                            ; $31ce: $b3
  jr z, jr_000_31e3                               ; $31cf: $28 $12

  ld a, h                                         ; $31d1: $7c
  or l                                            ; $31d2: $b5
  jr z, jr_000_31e3                               ; $31d3: $28 $0e

  ld a, h                                         ; $31d5: $7c
  or d                                            ; $31d6: $b2
  jr nz, jr_000_31e9                              ; $31d7: $20 $10

  ld h, e                                         ; $31d9: $63
  call Call_000_009c                              ; $31da: $cd $9c $00
  ld e, l                                         ; $31dd: $5d
  ld d, h                                         ; $31de: $54
  xor a                                           ; $31df: $af
  ld h, a                                         ; $31e0: $67
  ld l, a                                         ; $31e1: $6f
  ret                                             ; $31e2: $c9


jr_000_31e3:
  xor a                                           ; $31e3: $af
  ld e, a                                         ; $31e4: $5f
  ld d, a                                         ; $31e5: $57
  ld l, a                                         ; $31e6: $6f
  ld h, a                                         ; $31e7: $67
  ret                                             ; $31e8: $c9


jr_000_31e9:
  push bc                                         ; $31e9: $c5
  ld c, l                                         ; $31ea: $4d
  ld b, h                                         ; $31eb: $44
  ld l, d                                         ; $31ec: $6a
  call Call_000_009c                              ; $31ed: $cd $9c $00
  push hl                                         ; $31f0: $e5
  ld l, c                                         ; $31f1: $69
  ld h, d                                         ; $31f2: $62
  call Call_000_009c                              ; $31f3: $cd $9c $00
  ld a, l                                         ; $31f6: $7d
  ld [$cc01], a                                   ; $31f7: $ea $01 $cc
  ld a, h                                         ; $31fa: $7c
  ld [$cc02], a                                   ; $31fb: $ea $02 $cc
  ld h, b                                         ; $31fe: $60
  ld l, e                                         ; $31ff: $6b

Call_000_3200:
  call Call_000_009c                              ; $3200: $cd $9c $00
  push hl                                         ; $3203: $e5
  ld l, c                                         ; $3204: $69
  ld h, e                                         ; $3205: $63
  pop bc                                          ; $3206: $c1
  call Call_000_009c                              ; $3207: $cd $9c $00
  ld e, l                                         ; $320a: $5d
  ld d, h                                         ; $320b: $54
  pop hl                                          ; $320c: $e1
  ld a, c                                         ; $320d: $79
  add d                                           ; $320e: $82
  ld d, a                                         ; $320f: $57
  ld a, $00                                       ; $3210: $3e $00
  adc b                                           ; $3212: $88
  ld b, a                                         ; $3213: $47
  ld a, [$cc01]                                   ; $3214: $fa $01 $cc
  add d                                           ; $3217: $82
  ld d, a                                         ; $3218: $57
  ld a, $00                                       ; $3219: $3e $00
  adc b                                           ; $321b: $88
  ld b, a                                         ; $321c: $47
  ld a, [$cc02]                                   ; $321d: $fa $02 $cc
  add b                                           ; $3220: $80
  ld b, a                                         ; $3221: $47
  ld a, $00                                       ; $3222: $3e $00
  adc h                                           ; $3224: $8c
  ld h, a                                         ; $3225: $67
  ld a, l                                         ; $3226: $7d
  add b                                           ; $3227: $80
  ld l, a                                         ; $3228: $6f
  ld a, $00                                       ; $3229: $3e $00
  adc h                                           ; $322b: $8c
  ld h, a                                         ; $322c: $67
  pop bc                                          ; $322d: $c1
  ret                                             ; $322e: $c9


Call_000_322f:
  ld a, e                                         ; $322f: $7b
  or d                                            ; $3230: $b2
  jr nz, jr_000_323a                              ; $3231: $20 $07

  ld hl, $0000                                    ; $3233: $21 $00 $00
  ld d, h                                         ; $3236: $54
  ld e, l                                         ; $3237: $5d
  scf                                             ; $3238: $37
  ret                                             ; $3239: $c9


jr_000_323a:
  push bc                                         ; $323a: $c5
  ld c, l                                         ; $323b: $4d
  ld a, h                                         ; $323c: $7c
  ld hl, $0000                                    ; $323d: $21 $00 $00
  ld b, $10                                       ; $3240: $06 $10
  or a                                            ; $3242: $b7

jr_000_3243:
  rl c                                            ; $3243: $cb $11
  rla                                             ; $3245: $17
  rl l                                            ; $3246: $cb $15
  rl h                                            ; $3248: $cb $14
  push de                                         ; $324a: $d5
  push hl                                         ; $324b: $e5
  ldh [$ffb8], a                                  ; $324c: $e0 $b8
  ld a, l                                         ; $324e: $7d
  sub e                                           ; $324f: $93
  ld l, a                                         ; $3250: $6f
  ld a, h                                         ; $3251: $7c
  sbc d                                           ; $3252: $9a
  ld h, a                                         ; $3253: $67
  ccf                                             ; $3254: $3f
  jr c, jr_000_325b                               ; $3255: $38 $04

  pop de                                          ; $3257: $d1
  push hl                                         ; $3258: $e5
  ld l, e                                         ; $3259: $6b
  ld h, d                                         ; $325a: $62

jr_000_325b:
  inc sp                                          ; $325b: $33
  inc sp                                          ; $325c: $33

Jump_000_325d:
  pop de                                          ; $325d: $d1
  ldh a, [$ffb8]                                  ; $325e: $f0 $b8
  dec b                                           ; $3260: $05
  jr nz, jr_000_3243                              ; $3261: $20 $e0

  push de                                         ; $3263: $d5
  ld d, h                                         ; $3264: $54
  ld e, l                                         ; $3265: $5d
  pop hl                                          ; $3266: $e1
  rl c                                            ; $3267: $cb $11
  ld l, c                                         ; $3269: $69
  rla                                             ; $326a: $17
  ld h, a                                         ; $326b: $67
  or a                                            ; $326c: $b7
  pop bc                                          ; $326d: $c1
  ret                                             ; $326e: $c9


Call_000_326f:
Jump_000_326f:
  ld [$c11a], a                                   ; $326f: $ea $1a $c1
  ld a, e                                         ; $3272: $7b
  or d                                            ; $3273: $b2
  jr nz, jr_000_327d                              ; $3274: $20 $07

  ld hl, $0000                                    ; $3276: $21 $00 $00
  ld d, h                                         ; $3279: $54
  ld e, l                                         ; $327a: $5d
  scf                                             ; $327b: $37
  ret                                             ; $327c: $c9


jr_000_327d:
  push bc                                         ; $327d: $c5
  ld a, [$c11a]                                   ; $327e: $fa $1a $c1
  ld b, a                                         ; $3281: $47
  ld c, l                                         ; $3282: $4d
  ld a, h                                         ; $3283: $7c
  ld l, b                                         ; $3284: $68
  ld h, $00                                       ; $3285: $26 $00
  ld b, $10                                       ; $3287: $06 $10
  or a                                            ; $3289: $b7

jr_000_328a:
  rl c                                            ; $328a: $cb $11
  rla                                             ; $328c: $17
  rl l                                            ; $328d: $cb $15
  rl h                                            ; $328f: $cb $14
  push de                                         ; $3291: $d5
  push hl                                         ; $3292: $e5
  ldh [$ffb8], a                                  ; $3293: $e0 $b8
  ld a, l                                         ; $3295: $7d
  sub e                                           ; $3296: $93
  ld l, a                                         ; $3297: $6f
  ld a, h                                         ; $3298: $7c
  sbc d                                           ; $3299: $9a
  ld h, a                                         ; $329a: $67
  ccf                                             ; $329b: $3f
  jr c, jr_000_32a2                               ; $329c: $38 $04

  pop de                                          ; $329e: $d1
  push hl                                         ; $329f: $e5
  ld l, e                                         ; $32a0: $6b
  ld h, d                                         ; $32a1: $62

jr_000_32a2:
  inc sp                                          ; $32a2: $33
  inc sp                                          ; $32a3: $33
  pop de                                          ; $32a4: $d1
  ldh a, [$ffb8]                                  ; $32a5: $f0 $b8
  dec b                                           ; $32a7: $05
  jr nz, jr_000_328a                              ; $32a8: $20 $e0

  push de                                         ; $32aa: $d5
  ld d, h                                         ; $32ab: $54
  ld e, l                                         ; $32ac: $5d
  pop hl                                          ; $32ad: $e1
  rl c                                            ; $32ae: $cb $11
  ld l, c                                         ; $32b0: $69
  rla                                             ; $32b1: $17
  ld h, a                                         ; $32b2: $67
  or a                                            ; $32b3: $b7
  pop bc                                          ; $32b4: $c1
  ret                                             ; $32b5: $c9


Call_000_32b6:
  rst $10                                         ; $32b6: $d7
  ret nc                                          ; $32b7: $d0

  ld l, e                                         ; $32b8: $6b
  ld h, d                                         ; $32b9: $62
  ret                                             ; $32ba: $c9


Call_000_32bb:
  rst $10                                         ; $32bb: $d7
  ret c                                           ; $32bc: $d8

  ld l, e                                         ; $32bd: $6b
  ld h, d                                         ; $32be: $62
  ret                                             ; $32bf: $c9


Call_000_32c0:
  push hl                                         ; $32c0: $e5
  call Call_000_32db                              ; $32c1: $cd $db $32
  or [hl]                                         ; $32c4: $b6
  ld [hl], a                                      ; $32c5: $77
  pop hl                                          ; $32c6: $e1
  ret                                             ; $32c7: $c9


Call_000_32c8:
Jump_000_32c8:
  push hl                                         ; $32c8: $e5
  ldh [$ffb3], a                                  ; $32c9: $e0 $b3
  call Call_000_32db                              ; $32cb: $cd $db $32
  and [hl]                                        ; $32ce: $a6
  pop hl                                          ; $32cf: $e1
  ldh a, [$ffb3]                                  ; $32d0: $f0 $b3
  ret                                             ; $32d2: $c9


  db $01, $02, $04, $08, $10, $20, $40, $80

Call_000_32db:
  push af                                         ; $32db: $f5
  and $f8                                         ; $32dc: $e6 $f8
  rra                                             ; $32de: $1f
  rra                                             ; $32df: $1f
  rra                                             ; $32e0: $1f
  rst $08                                         ; $32e1: $cf
  pop af                                          ; $32e2: $f1
  and $07                                         ; $32e3: $e6 $07

Call_000_32e5:
  push hl                                         ; $32e5: $e5
  ld hl, $32d3                                    ; $32e6: $21 $d3 $32
  rst $08                                         ; $32e9: $cf
  pop hl                                          ; $32ea: $e1
  ret                                             ; $32eb: $c9


Call_000_32ec:
Jump_000_32ec:
  push bc                                         ; $32ec: $c5
  ld b, $00                                       ; $32ed: $06 $00
  bit 7, h                                        ; $32ef: $cb $7c
  jr z, jr_000_32f8                               ; $32f1: $28 $05

  call Call_000_007b                              ; $32f3: $cd $7b $00
  set 0, b                                        ; $32f6: $cb $c0

jr_000_32f8:
  bit 7, d                                        ; $32f8: $cb $7a
  jr z, jr_000_3301                               ; $32fa: $28 $05

  call Call_000_0092                              ; $32fc: $cd $92 $00
  set 1, b                                        ; $32ff: $cb $c8

jr_000_3301:
  sla e                                           ; $3301: $cb $23
  rl d                                            ; $3303: $cb $12
  rst $10                                         ; $3305: $d7
  jr nc, jr_000_330a                              ; $3306: $30 $02

  set 2, b                                        ; $3308: $cb $d0

jr_000_330a:
  sra d                                           ; $330a: $cb $2a
  rr e                                            ; $330c: $cb $1b
  add hl, hl                                      ; $330e: $29
  rst $10                                         ; $330f: $d7
  jr c, jr_000_3314                               ; $3310: $38 $02

  set 3, b                                        ; $3312: $cb $d8

jr_000_3314:
  ld a, b                                         ; $3314: $78
  ld hl, $331b                                    ; $3315: $21 $1b $33
  rst $08                                         ; $3318: $cf
  pop bc                                          ; $3319: $c1
  ret                                             ; $331a: $c9


  db $03, $05, $01, $07, $02, $06, $02, $06, $04, $04, $00, $00

  inc bc                                          ; $3327: $03
  dec b                                           ; $3328: $05
  db $01                                          ; $3329: $01
  rlca                                            ; $332a: $07

Call_000_332b:
  ld c, a                                         ; $332b: $4f
  ld b, $00                                       ; $332c: $06 $00
  add hl, bc                                      ; $332e: $09
  add hl, bc                                      ; $332f: $09

Call_000_3330:
  add hl, bc                                      ; $3330: $09

Call_000_3331:
  ld a, $09                                       ; $3331: $3e $09

Call_000_3333:
  ld [$2000], a                                   ; $3333: $ea $00 $20
  ld a, [hl+]                                     ; $3336: $2a
  ld c, [hl]                                      ; $3337: $4e
  inc hl                                          ; $3338: $23
  ld h, [hl]                                      ; $3339: $66
  ld l, c                                         ; $333a: $69
  ld [$2000], a                                   ; $333b: $ea $00 $20
  ret                                             ; $333e: $c9


Call_000_333f:
  ldh a, [rSVBK]                                  ; $333f: $f0 $70
  push af                                         ; $3341: $f5
  ld a, $07                                       ; $3342: $3e $07
  ldh [rSVBK], a                                  ; $3344: $e0 $70
  call Call_000_33eb                              ; $3346: $cd $eb $33
  call Call_000_14dc                              ; $3349: $cd $dc $14
  call Call_000_3330                              ; $334c: $cd $30 $33
  push de                                         ; $334f: $d5
  ld de, $d200                                    ; $3350: $11 $00 $d2
  call Call_000_0e7c                              ; $3353: $cd $7c $0e
  pop de                                          ; $3356: $d1
  ld hl, $d000                                    ; $3357: $21 $00 $d0
  pop af                                          ; $335a: $f1
  ldh [rSVBK], a                                  ; $335b: $e0 $70
  ld a, $01                                       ; $335d: $3e $01
  ld [$2000], a                                   ; $335f: $ea $00 $20
  ret                                             ; $3362: $c9


Call_000_3363:
Jump_000_3363:
  ldh a, [$ffa7]                                  ; $3363: $f0 $a7
  or a                                            ; $3365: $b7
  call nz, Call_000_0a6c                          ; $3366: $c4 $6c $0a
  ldh a, [rLCDC]                                  ; $3369: $f0 $40
  bit 7, a                                        ; $336b: $cb $7f
  ret z                                           ; $336d: $c8

jr_000_336e:
  ldh a, [$ffa9]                                  ; $336e: $f0 $a9
  or a                                            ; $3370: $b7
  jr nz, jr_000_336e                              ; $3371: $20 $fb

  ret                                             ; $3373: $c9


Call_000_3374:
Jump_000_3374:
  ld a, $03                                       ; $3374: $3e $03
  ldh [$ffa9], a                                  ; $3376: $e0 $a9
  xor a                                           ; $3378: $af
  ldh [$ffa7], a                                  ; $3379: $e0 $a7
  ret                                             ; $337b: $c9


  push bc                                         ; $337c: $c5
  call Call_000_2ab5                              ; $337d: $cd $b5 $2a
  pop bc                                          ; $3380: $c1
  jp Jump_000_139b                                ; $3381: $c3 $9b $13


  push bc                                         ; $3384: $c5
  call Call_000_2ac4                              ; $3385: $cd $c4 $2a
  pop bc                                          ; $3388: $c1
  jp Jump_000_139b                                ; $3389: $c3 $9b $13


Call_000_338c:
  ldh [$ffbd], a                                  ; $338c: $e0 $bd
  ldh a, [rSVBK]                                  ; $338e: $f0 $70
  push af                                         ; $3390: $f5
  ld a, $06                                       ; $3391: $3e $06
  ldh [rSVBK], a                                  ; $3393: $e0 $70
  ldh a, [$ffbd]                                  ; $3395: $f0 $bd
  call Call_000_332b                              ; $3397: $cd $2b $33
  ld de, $d000                                    ; $339a: $11 $00 $d0
  call Call_000_0e7c                              ; $339d: $cd $7c $0e
  pop af                                          ; $33a0: $f1
  ldh [rSVBK], a                                  ; $33a1: $e0 $70
  ld a, [$cafa]                                   ; $33a3: $fa $fa $ca
  or a                                            ; $33a6: $b7
  ret z                                           ; $33a7: $c8

  ldh a, [rSVBK]                                  ; $33a8: $f0 $70
  push af                                         ; $33aa: $f5
  ld a, $06                                       ; $33ab: $3e $06
  ldh [rSVBK], a                                  ; $33ad: $e0 $70
  push bc                                         ; $33af: $c5
  ld hl, $d000                                    ; $33b0: $21 $00 $d0
  ld de, $d000                                    ; $33b3: $11 $00 $d0
  call Call_000_288a                              ; $33b6: $cd $8a $28
  pop bc                                          ; $33b9: $c1
  pop af                                          ; $33ba: $f1
  ldh [rSVBK], a                                  ; $33bb: $e0 $70
  ret                                             ; $33bd: $c9


  push bc                                         ; $33be: $c5
  call Call_000_2ac4                              ; $33bf: $cd $c4 $2a
  pop bc                                          ; $33c2: $c1
  ld a, [$cd37]                                   ; $33c3: $fa $37 $cd
  ldh [$fff7], a                                  ; $33c6: $e0 $f7
  ld a, [$cd39]                                   ; $33c8: $fa $39 $cd
  ldh [$fff8], a                                  ; $33cb: $e0 $f8
  jp Jump_000_139b                                ; $33cd: $c3 $9b $13


  push bc                                         ; $33d0: $c5
  call Call_000_2ac4                              ; $33d1: $cd $c4 $2a
  pop bc                                          ; $33d4: $c1
  ld a, [$cd37]                                   ; $33d5: $fa $37 $cd
  ldh [$fff7], a                                  ; $33d8: $e0 $f7
  ld a, $0e                                       ; $33da: $3e $0e
  ldh [$fff8], a                                  ; $33dc: $e0 $f8
  jp Jump_000_139b                                ; $33de: $c3 $9b $13


  push hl                                         ; $33e1: $e5
  call Call_000_3182                              ; $33e2: $cd $82 $31
  pop hl                                          ; $33e5: $e1
  ld a, e                                         ; $33e6: $7b
  or d                                            ; $33e7: $b2
  ret z                                           ; $33e8: $c8

  push de                                         ; $33e9: $d5
  ret                                             ; $33ea: $c9


Call_000_33eb:
  ld a, [$cdcd]                                   ; $33eb: $fa $cd $cd
  cp $ff                                          ; $33ee: $fe $ff
  ret nz                                          ; $33f0: $c0

  xor a                                           ; $33f1: $af
  ret                                             ; $33f2: $c9


Call_000_33f3:
  ldh [$ffc0], a                                  ; $33f3: $e0 $c0
  ld a, l                                         ; $33f5: $7d
  ldh [$ffbe], a                                  ; $33f6: $e0 $be
  ld a, h                                         ; $33f8: $7c
  ldh [$ffbf], a                                  ; $33f9: $e0 $bf
  pop hl                                          ; $33fb: $e1
  ld a, [hl+]                                     ; $33fc: $2a
  ldh [$ffc1], a                                  ; $33fd: $e0 $c1
  inc hl                                          ; $33ff: $23
  inc hl                                          ; $3400: $23
  push hl                                         ; $3401: $e5
  dec hl                                          ; $3402: $2b
  ld a, [hl-]                                     ; $3403: $3a
  ld l, [hl]                                      ; $3404: $6e
  ld h, a                                         ; $3405: $67
  add sp, -$04                                    ; $3406: $e8 $fc
  push hl                                         ; $3408: $e5
  ld hl, sp+$05                                   ; $3409: $f8 $05
  ld a, [$4000]                                   ; $340b: $fa $00 $40
  ld [hl-], a                                     ; $340e: $32
  ld [hl-], a                                     ; $340f: $32
  ld a, $34                                       ; $3410: $3e $34
  ld [hl-], a                                     ; $3412: $32
  ld a, $57                                       ; $3413: $3e $57
  ld [hl], a                                      ; $3415: $77
  ldh a, [$ffc1]                                  ; $3416: $f0 $c1
  or a                                            ; $3418: $b7
  jr z, jr_000_341e                               ; $3419: $28 $03

  ld [$2000], a                                   ; $341b: $ea $00 $20

jr_000_341e:
  ld hl, $ffbe                                    ; $341e: $21 $be $ff
  ld a, [hl+]                                     ; $3421: $2a
  ld h, [hl]                                      ; $3422: $66
  ld l, a                                         ; $3423: $6f
  ldh a, [$ffc0]                                  ; $3424: $f0 $c0
  ret                                             ; $3426: $c9


Call_000_3427:
  ldh [$ffc0], a                                  ; $3427: $e0 $c0
  ld a, l                                         ; $3429: $7d
  ldh [$ffbe], a                                  ; $342a: $e0 $be
  ld a, h                                         ; $342c: $7c
  ldh [$ffbf], a                                  ; $342d: $e0 $bf
  pop hl                                          ; $342f: $e1
  ld a, [hl+]                                     ; $3430: $2a
  ldh [$ffc1], a                                  ; $3431: $e0 $c1
  ld a, [hl+]                                     ; $3433: $2a
  ld h, [hl]                                      ; $3434: $66
  ld l, a                                         ; $3435: $6f
  add sp, -$04                                    ; $3436: $e8 $fc
  push hl                                         ; $3438: $e5
  ld hl, sp+$05                                   ; $3439: $f8 $05
  ld a, [$4000]                                   ; $343b: $fa $00 $40
  ld [hl-], a                                     ; $343e: $32
  ld [hl-], a                                     ; $343f: $32
  ld a, $34                                       ; $3440: $3e $34
  ld [hl-], a                                     ; $3442: $32
  ld a, $57                                       ; $3443: $3e $57
  ld [hl], a                                      ; $3445: $77
  ldh a, [$ffc1]                                  ; $3446: $f0 $c1
  or a                                            ; $3448: $b7
  jr z, jr_000_344e                               ; $3449: $28 $03

  ld [$2000], a                                   ; $344b: $ea $00 $20

jr_000_344e:
  ld hl, $ffbe                                    ; $344e: $21 $be $ff
  ld a, [hl+]                                     ; $3451: $2a
  ld h, [hl]                                      ; $3452: $66
  ld l, a                                         ; $3453: $6f
  ldh a, [$ffc0]                                  ; $3454: $f0 $c0
  ret                                             ; $3456: $c9


  ldh [$ffc0], a                                  ; $3457: $e0 $c0
  ld a, l                                         ; $3459: $7d
  ldh [$ffbe], a                                  ; $345a: $e0 $be
  ld a, h                                         ; $345c: $7c
  ldh [$ffbf], a                                  ; $345d: $e0 $bf
  pop hl                                          ; $345f: $e1
  ld a, h                                         ; $3460: $7c
  ld [$2000], a                                   ; $3461: $ea $00 $20
  ld hl, $ffbe                                    ; $3464: $21 $be $ff
  ld a, [hl+]                                     ; $3467: $2a
  ld h, [hl]                                      ; $3468: $66
  ld l, a                                         ; $3469: $6f
  ldh a, [$ffc0]                                  ; $346a: $f0 $c0
  ret                                             ; $346c: $c9


Call_000_346d:
  ld [$2000], a                                   ; $346d: $ea $00 $20
  ld de, $3475                                    ; $3470: $11 $75 $34
  push de                                         ; $3473: $d5
  jp hl                                           ; $3474: $e9


  ld a, $02                                       ; $3475: $3e $02
  ld [$2000], a                                   ; $3477: $ea $00 $20
  ret                                             ; $347a: $c9


Call_000_347b:
  push de                                         ; $347b: $d5
  ld hl, $4001                                    ; $347c: $21 $01 $40
  call Call_000_3173                              ; $347f: $cd $73 $31
  ld a, $0c                                       ; $3482: $3e $0c
  ld [$2000], a                                   ; $3484: $ea $00 $20
  ld a, [hl+]                                     ; $3487: $2a
  push af                                         ; $3488: $f5
  ld a, [hl+]                                     ; $3489: $2a
  ld h, [hl]                                      ; $348a: $66
  ld l, a                                         ; $348b: $6f
  set 6, h                                        ; $348c: $cb $f4
  pop af                                          ; $348e: $f1
  ld [$2000], a                                   ; $348f: $ea $00 $20
  pop de                                          ; $3492: $d1
  ret                                             ; $3493: $c9


  push af                                         ; $3494: $f5
  call Call_000_347b                              ; $3495: $cd $7b $34
  inc hl                                          ; $3498: $23
  ld d, $00                                       ; $3499: $16 $00
  sla e                                           ; $349b: $cb $23
  rl d                                            ; $349d: $cb $12
  ld [$2000], a                                   ; $349f: $ea $00 $20
  add hl, de                                      ; $34a2: $19
  ld a, [hl+]                                     ; $34a3: $2a
  ld h, [hl]                                      ; $34a4: $66
  ld l, a                                         ; $34a5: $6f
  ld d, l                                         ; $34a6: $55
  ld e, h                                         ; $34a7: $5c
  pop af                                          ; $34a8: $f1
  call Call_000_34ae                              ; $34a9: $cd $ae $34
  add hl, de                                      ; $34ac: $19
  ret                                             ; $34ad: $c9


Call_000_34ae:
  call Call_000_347b                              ; $34ae: $cd $7b $34
  ld l, [hl]                                      ; $34b1: $6e
  ld h, $00                                       ; $34b2: $26 $00
  add hl, hl                                      ; $34b4: $29
  inc hl                                          ; $34b5: $23
  ret                                             ; $34b6: $c9


Call_000_34b7:
  ld a, [$4000]                                   ; $34b7: $fa $00 $40
  push af                                         ; $34ba: $f5
  ld a, c                                         ; $34bb: $79
  call Call_000_347b                              ; $34bc: $cd $7b $34
  ld de, $cb2e                                    ; $34bf: $11 $2e $cb
  ld a, [de]                                      ; $34c2: $1a
  ld c, a                                         ; $34c3: $4f
  inc de                                          ; $34c4: $13
  ld a, [de]                                      ; $34c5: $1a
  ld b, a                                         ; $34c6: $47
  add hl, bc                                      ; $34c7: $09
  dec de                                          ; $34c8: $1b
  inc bc                                          ; $34c9: $03
  inc bc                                          ; $34ca: $03
  inc bc                                          ; $34cb: $03
  ld a, c                                         ; $34cc: $79
  ld [de], a                                      ; $34cd: $12
  inc de                                          ; $34ce: $13
  ld a, b                                         ; $34cf: $78
  ld [de], a                                      ; $34d0: $12
  ld a, [hl+]                                     ; $34d1: $2a
  ld c, a                                         ; $34d2: $4f
  ld d, [hl]                                      ; $34d3: $56
  inc hl                                          ; $34d4: $23
  ld e, [hl]                                      ; $34d5: $5e
  pop af                                          ; $34d6: $f1
  ld [$2000], a                                   ; $34d7: $ea $00 $20
  ld a, c                                         ; $34da: $79
  ret                                             ; $34db: $c9


Call_000_34dc:
  ld a, [$4000]                                   ; $34dc: $fa $00 $40
  push af                                         ; $34df: $f5
  ld a, e                                         ; $34e0: $7b
  ld [$2000], a                                   ; $34e1: $ea $00 $20
  ld a, d                                         ; $34e4: $7a
  call ResolveIndexedPointer16                              ; $34e5: $cd $8b $31
  pop af                                          ; $34e8: $f1
  ld [$2000], a                                   ; $34e9: $ea $00 $20
  ret                                             ; $34ec: $c9


Call_000_34ed:
  ld a, [$4000]                                   ; $34ed: $fa $00 $40
  push af                                         ; $34f0: $f5
  ld a, e                                         ; $34f1: $7b
  ld [$2000], a                                   ; $34f2: $ea $00 $20
  ld a, d                                         ; $34f5: $7a
  rst $08                                         ; $34f6: $cf
  ld d, a                                         ; $34f7: $57
  pop af                                          ; $34f8: $f1
  ld [$2000], a                                   ; $34f9: $ea $00 $20
  ld a, d                                         ; $34fc: $7a
  ret                                             ; $34fd: $c9


jr_000_34fe:
  ld a, [$c2bd]                                   ; $34fe: $fa $bd $c2
  or a                                            ; $3501: $b7
  jr nz, jr_000_34fe                              ; $3502: $20 $fa

  ld hl, $c2b1                                    ; $3504: $21 $b1 $c2
  ld a, [hl+]                                     ; $3507: $2a
  ld h, [hl]                                      ; $3508: $66
  ld l, a                                         ; $3509: $6f
  ld a, [$c2b7]                                   ; $350a: $fa $b7 $c2
  call Call_000_332b                              ; $350d: $cd $2b $33
  ldh a, [rSVBK]                                  ; $3510: $f0 $70
  push af                                         ; $3512: $f5
  ld a, $01                                       ; $3513: $3e $01
  ldh [rSVBK], a                                  ; $3515: $e0 $70
  ld de, $db00                                    ; $3517: $11 $00 $db
  call Call_000_0e7c                              ; $351a: $cd $7c $0e
  pop af                                          ; $351d: $f1
  ldh [rSVBK], a                                  ; $351e: $e0 $70
  ld a, [$c2b6]                                   ; $3520: $fa $b6 $c2
  srl a                                           ; $3523: $cb $3f
  ld [$c2ba], a                                   ; $3525: $ea $ba $c2
  ld a, [$c2b5]                                   ; $3528: $fa $b5 $c2
  ld [$c2bd], a                                   ; $352b: $ea $bd $c2
  ret                                             ; $352e: $c9


  call Call_000_332b                              ; $352f: $cd $2b $33
  ldh a, [rSVBK]                                  ; $3532: $f0 $70
  push af                                         ; $3534: $f5
  ld a, $02                                       ; $3535: $3e $02
  ldh [rSVBK], a                                  ; $3537: $e0 $70
  ld de, $d000                                    ; $3539: $11 $00 $d0
  call Call_000_020c                              ; $353c: $cd $0c $02
  pop af                                          ; $353f: $f1
  ldh [rSVBK], a                                  ; $3540: $e0 $70
  ret                                             ; $3542: $c9


  call Call_000_332b                              ; $3543: $cd $2b $33
  ldh a, [rSVBK]                                  ; $3546: $f0 $70
  push af                                         ; $3548: $f5
  ld a, $02                                       ; $3549: $3e $02
  ldh [rSVBK], a                                  ; $354b: $e0 $70
  ld de, $d000                                    ; $354d: $11 $00 $d0
  call Call_000_0212                              ; $3550: $cd $12 $02
  pop af                                          ; $3553: $f1
  ldh [rSVBK], a                                  ; $3554: $e0 $70
  ret                                             ; $3556: $c9


Call_000_3557:
  ld a, [$cdcc]                                   ; $3557: $fa $cc $cd

Call_000_355a:
  push bc                                         ; $355a: $c5
  push de                                         ; $355b: $d5
  push hl                                         ; $355c: $e5
  ldh [$ffbd], a                                  ; $355d: $e0 $bd
  ldh a, [rSVBK]                                  ; $355f: $f0 $70
  push af                                         ; $3561: $f5
  ld a, $07                                       ; $3562: $3e $07
  ldh [rSVBK], a                                  ; $3564: $e0 $70
  ldh a, [$ffbd]                                  ; $3566: $f0 $bd
  ld [$2000], a                                   ; $3568: $ea $00 $20
  ld hl, $6c7d                                    ; $356b: $21 $7d $6c
  ld a, [hl+]                                     ; $356e: $2a
  add a                                           ; $356f: $87
  ld c, a                                         ; $3570: $4f
  ld b, $00                                       ; $3571: $06 $00
  rl b                                            ; $3573: $cb $10
  ld de, $da00                                    ; $3575: $11 $00 $da
  call Call_000_129c                              ; $3578: $cd $9c $12
  pop af                                          ; $357b: $f1
  ldh [rSVBK], a                                  ; $357c: $e0 $70
  pop hl                                          ; $357e: $e1
  pop de                                          ; $357f: $d1
  pop bc                                          ; $3580: $c1
  ret                                             ; $3581: $c9


  call Call_000_2ffe                              ; $3582: $cd $fe $2f

Call_000_3585:
  push bc                                         ; $3585: $c5
  push de                                         ; $3586: $d5
  push hl                                         ; $3587: $e5
  push de                                         ; $3588: $d5
  ld e, l                                         ; $3589: $5d
  ld d, h                                         ; $358a: $54
  ld c, $01                                       ; $358b: $0e $01

jr_000_358d:
  ld b, $00                                       ; $358d: $06 $00
  ld h, $da                                       ; $358f: $26 $da

jr_000_3591:
  ld a, [de]                                      ; $3591: $1a
  and c                                           ; $3592: $a1
  add $ff                                         ; $3593: $c6 $ff
  ld a, b                                         ; $3595: $78
  adc a                                           ; $3596: $8f
  ld l, a                                         ; $3597: $6f
  ld b, [hl]                                      ; $3598: $46
  rlc c                                           ; $3599: $cb $01
  jr nc, jr_000_359e                              ; $359b: $30 $01

  inc de                                          ; $359d: $13

jr_000_359e:
  ld a, b                                         ; $359e: $78
  rlca                                            ; $359f: $07
  jr nc, jr_000_3591                              ; $35a0: $30 $ef

  or a                                            ; $35a2: $b7
  rra                                             ; $35a3: $1f
  pop hl                                          ; $35a4: $e1
  cp $7f                                          ; $35a5: $fe $7f
  jr z, jr_000_35ad                               ; $35a7: $28 $04

  ld [hl+], a                                     ; $35a9: $22
  push hl                                         ; $35aa: $e5
  jr jr_000_358d                                  ; $35ab: $18 $e0

jr_000_35ad:
  dec hl                                          ; $35ad: $2b
  set 7, [hl]                                     ; $35ae: $cb $fe
  pop hl                                          ; $35b0: $e1
  pop de                                          ; $35b1: $d1
  pop bc                                          ; $35b2: $c1
  ld a, [de]                                      ; $35b3: $1a
  res 7, a                                        ; $35b4: $cb $bf
  cp $26                                          ; $35b6: $fe $26
  ret nz                                          ; $35b8: $c0

  ld a, $1f                                       ; $35b9: $3e $1f
  call Call_000_355a                              ; $35bb: $cd $5a $35
  ld hl, $cecb                                    ; $35be: $21 $cb $ce
  ld a, [hl+]                                     ; $35c1: $2a
  ld h, [hl]                                      ; $35c2: $66
  ld l, a                                         ; $35c3: $6f
  ld a, $1f                                       ; $35c4: $3e $1f
  call Call_000_3001                              ; $35c6: $cd $01 $30
  call Call_000_3585                              ; $35c9: $cd $85 $35
  call Call_000_3557                              ; $35cc: $cd $57 $35
  ret                                             ; $35cf: $c9


  push hl                                         ; $35d0: $e5
  ld hl, $65ff                                    ; $35d1: $21 $ff $65
  call Call_000_3330                              ; $35d4: $cd $30 $33
  ld a, e                                         ; $35d7: $7b
  call $0005                                      ; $35d8: $cd $05 $00
  inc hl                                          ; $35db: $23
  inc hl                                          ; $35dc: $23
  pop de                                          ; $35dd: $d1
  jp Jump_000_0263                                ; $35de: $c3 $63 $02


Call_000_35e1:
  pop hl                                          ; $35e1: $e1
  ld b, $04                                       ; $35e2: $06 $04
  ld c, $f5                                       ; $35e4: $0e $f5

jr_000_35e6:
  ld a, [hl+]                                     ; $35e6: $2a
  ldh [c], a                                      ; $35e7: $e2
  inc c                                           ; $35e8: $0c
  dec b                                           ; $35e9: $05
  jr nz, jr_000_35e6                              ; $35ea: $20 $fa

  jp hl                                           ; $35ec: $e9


Call_000_35ed:
  ldh a, [rSVBK]                                  ; $35ed: $f0 $70
  push af                                         ; $35ef: $f5
  ld a, $02                                       ; $35f0: $3e $02
  ldh [rSVBK], a                                  ; $35f2: $e0 $70
  ld hl, $002a                                    ; $35f4: $21 $2a $00
  add hl, bc                                      ; $35f7: $09
  ld a, [hl]                                      ; $35f8: $7e
  ld h, $00                                       ; $35f9: $26 $00
  bit 3, a                                        ; $35fb: $cb $5f
  jr z, jr_000_3600                               ; $35fd: $28 $01

  inc h                                           ; $35ff: $24

jr_000_3600:
  push hl                                         ; $3600: $e5
  push de                                         ; $3601: $d5
  call Call_000_07b4                              ; $3602: $cd $b4 $07
  ld hl, $4001                                    ; $3605: $21 $01 $40
  add hl, de                                      ; $3608: $19
  add hl, de                                      ; $3609: $19
  add hl, de                                      ; $360a: $19
  pop de                                          ; $360b: $d1
  ldh a, [$ffc2]                                  ; $360c: $f0 $c2
  call Call_000_3333                              ; $360e: $cd $33 $33
  ld a, [hl+]                                     ; $3611: $2a
  rst $08                                         ; $3612: $cf
  call Call_000_0e7c                              ; $3613: $cd $7c $0e
  pop af                                          ; $3616: $f1
  or a                                            ; $3617: $b7
  jr z, jr_000_3622                               ; $3618: $28 $08

  push bc                                         ; $361a: $c5
  call Call_000_0e7c                              ; $361b: $cd $7c $0e
  pop hl                                          ; $361e: $e1
  add hl, bc                                      ; $361f: $09
  ld c, l                                         ; $3620: $4d
  ld b, h                                         ; $3621: $44

jr_000_3622:
  ld a, $01                                       ; $3622: $3e $01
  ld [$2000], a                                   ; $3624: $ea $00 $20
  pop af                                          ; $3627: $f1
  ldh [rSVBK], a                                  ; $3628: $e0 $70
  ret                                             ; $362a: $c9


  push bc                                         ; $362b: $c5
  push de                                         ; $362c: $d5
  push hl                                         ; $362d: $e5
  call Call_000_332b                              ; $362e: $cd $2b $33
  add hl, de                                      ; $3631: $19
  push hl                                         ; $3632: $e5
  ld hl, $cb9f                                    ; $3633: $21 $9f $cb
  add hl, de                                      ; $3636: $19
  ld e, l                                         ; $3637: $5d
  ld d, h                                         ; $3638: $54
  pop hl                                          ; $3639: $e1
  call Call_000_025d                              ; $363a: $cd $5d $02
  pop hl                                          ; $363d: $e1
  pop de                                          ; $363e: $d1
  pop bc                                          ; $363f: $c1
  ret                                             ; $3640: $c9


Call_000_3641:
  ld a, $0e                                       ; $3641: $3e $0e
  rst $08                                         ; $3643: $cf
  ld a, $03                                       ; $3644: $3e $03
  ld [$2000], a                                   ; $3646: $ea $00 $20
  ld e, [hl]                                      ; $3649: $5e
  ld a, $64                                       ; $364a: $3e $64
  call Call_000_28e6                              ; $364c: $cd $e6 $28
  cp e                                            ; $364f: $bb
  jr c, jr_000_3659                               ; $3650: $38 $07

  ld a, $09                                       ; $3652: $3e $09
  ld [$2000], a                                   ; $3654: $ea $00 $20
  xor a                                           ; $3657: $af
  ret                                             ; $3658: $c9


jr_000_3659:
  dec hl                                          ; $3659: $2b
  ld a, [hl]                                      ; $365a: $7e
  push af                                         ; $365b: $f5
  ld a, $09                                       ; $365c: $3e $09
  ld [$2000], a                                   ; $365e: $ea $00 $20
  pop af                                          ; $3661: $f1
  ret                                             ; $3662: $c9


Call_000_3663:
  ld hl, $cb3f                                    ; $3663: $21 $3f $cb
  ld bc, $0096                                    ; $3666: $01 $96 $00
  jp Jump_000_1248                                ; $3669: $c3 $48 $12


Jump_000_366c:
  push af                                         ; $366c: $f5
  push bc                                         ; $366d: $c5
  push de                                         ; $366e: $d5
  push hl                                         ; $366f: $e5
  ldh a, [rSVBK]                                  ; $3670: $f0 $70
  push af                                         ; $3672: $f5
  ld a, $01                                       ; $3673: $3e $01
  ldh [rSVBK], a                                  ; $3675: $e0 $70
  ldh a, [$ff8b]                                  ; $3677: $f0 $8b
  or a                                            ; $3679: $b7
  ld a, [$4000]                                   ; $367a: $fa $00 $40
  jr z, jr_000_3681                               ; $367d: $28 $02

  ldh a, [$ff8a]                                  ; $367f: $f0 $8a

jr_000_3681:
  push af                                         ; $3681: $f5
  ld a, [$c045]                                   ; $3682: $fa $45 $c0
  cp $02                                          ; $3685: $fe $02
  jr nz, jr_000_3697                              ; $3687: $20 $0e

  ld hl, $c046                                    ; $3689: $21 $46 $c0
  ld a, [hl+]                                     ; $368c: $2a
  ld h, [hl]                                      ; $368d: $66
  ld l, a                                         ; $368e: $6f
  ld a, $03                                       ; $368f: $3e $03
  ld [$2000], a                                   ; $3691: $ea $00 $20
  call $7ea5                                      ; $3694: $cd $a5 $7e

jr_000_3697:
  ld hl, $c0aa                                    ; $3697: $21 $aa $c0
  bit 3, [hl]                                     ; $369a: $cb $5e
  jr nz, jr_000_36b3                              ; $369c: $20 $15

  bit 1, [hl]                                     ; $369e: $cb $4e
  ld hl, $ff40                                    ; $36a0: $21 $40 $ff
  jr z, jr_000_36ba                               ; $36a3: $28 $15

  ld a, [$c0b2]                                   ; $36a5: $fa $b2 $c0
  xor $01                                         ; $36a8: $ee $01
  ld [$c0b2], a                                   ; $36aa: $ea $b2 $c0
  jr z, jr_000_36ba                               ; $36ad: $28 $0b

  set 3, [hl]                                     ; $36af: $cb $de
  jr jr_000_36bc                                  ; $36b1: $18 $09

jr_000_36b3:
  ld hl, $ff40                                    ; $36b3: $21 $40 $ff
  set 3, [hl]                                     ; $36b6: $cb $de
  jr jr_000_36bc                                  ; $36b8: $18 $02

jr_000_36ba:
  res 3, [hl]                                     ; $36ba: $cb $9e

jr_000_36bc:
  ld a, [$cd6a]                                   ; $36bc: $fa $6a $cd
  cp $02                                          ; $36bf: $fe $02
  jr nz, jr_000_36d7                              ; $36c1: $20 $14

  ldh a, [$ffcd]                                  ; $36c3: $f0 $cd
  sub $3f                                         ; $36c5: $d6 $3f
  jr z, jr_000_36d1                               ; $36c7: $28 $08

  dec a                                           ; $36c9: $3d
  jr z, jr_000_36d1                               ; $36ca: $28 $05

  ldh a, [$fffa]                                  ; $36cc: $f0 $fa
  or a                                            ; $36ce: $b7
  jr nz, jr_000_36d7                              ; $36cf: $20 $06

jr_000_36d1:
  call Call_000_37b7                              ; $36d1: $cd $b7 $37
  jp Jump_000_3781                                ; $36d4: $c3 $81 $37


jr_000_36d7:
  ld hl, $c0aa                                    ; $36d7: $21 $aa $c0
  bit 0, [hl]                                     ; $36da: $cb $46
  jr z, jr_000_36fd                               ; $36dc: $28 $1f

  res 0, [hl]                                     ; $36de: $cb $86
  ld hl, $ff40                                    ; $36e0: $21 $40 $ff
  ldh a, [$ffbb]                                  ; $36e3: $f0 $bb
  dec a                                           ; $36e5: $3d
  jr nz, jr_000_36ec                              ; $36e6: $20 $04

  res 2, [hl]                                     ; $36e8: $cb $96
  jr jr_000_36ee                                  ; $36ea: $18 $02

jr_000_36ec:
  set 2, [hl]                                     ; $36ec: $cb $d6

jr_000_36ee:
  ld a, $07                                       ; $36ee: $3e $07
  ldh [rSVBK], a                                  ; $36f0: $e0 $70
  ld a, [$cd5b]                                   ; $36f2: $fa $5b $cd
  cp $ff                                          ; $36f5: $fe $ff
  call nz, Call_000_10bd                          ; $36f7: $c4 $bd $10
  call $ff80                                      ; $36fa: $cd $80 $ff

jr_000_36fd:
  ld hl, $c0aa                                    ; $36fd: $21 $aa $c0
  bit 4, [hl]                                     ; $3700: $cb $66
  jr z, jr_000_370e                               ; $3702: $28 $0a

  res 4, [hl]                                     ; $3704: $cb $a6
  ld a, $01                                       ; $3706: $3e $01
  ld [$2000], a                                   ; $3708: $ea $00 $20
  call $580b                                      ; $370b: $cd $0b $58

jr_000_370e:
  xor a                                           ; $370e: $af
  ld [$c083], a                                   ; $370f: $ea $83 $c0
  call Call_000_1223                              ; $3712: $cd $23 $12
  ldh a, [$fffa]                                  ; $3715: $f0 $fa
  or a                                            ; $3717: $b7
  jr z, jr_000_3725                               ; $3718: $28 $0b

  xor a                                           ; $371a: $af
  ldh [$fffa], a                                  ; $371b: $e0 $fa
  ld a, $03                                       ; $371d: $3e $03
  ld [$2000], a                                   ; $371f: $ea $00 $20
  call $7a30                                      ; $3722: $cd $30 $7a

jr_000_3725:
  ld a, [$c2bf]                                   ; $3725: $fa $bf $c2
  inc a                                           ; $3728: $3c
  jr z, jr_000_3744                               ; $3729: $28 $19

  swap a                                          ; $372b: $cb $37
  and $0f                                         ; $372d: $e6 $0f
  sub $97                                         ; $372f: $d6 $97
  cpl                                             ; $3731: $2f
  inc a                                           ; $3732: $3c
  ld c, a                                         ; $3733: $4f
  ldh a, [rLY]                                    ; $3734: $f0 $44
  jr nc, jr_000_3744                              ; $3736: $30 $0c

  cp $90                                          ; $3738: $fe $90
  jr c, jr_000_3744                               ; $373a: $38 $08

  ld a, $01                                       ; $373c: $3e $01
  ld [$2000], a                                   ; $373e: $ea $00 $20
  call $415e                                      ; $3741: $cd $5e $41

jr_000_3744:
  ld a, [$c2c5]                                   ; $3744: $fa $c5 $c2
  or a                                            ; $3747: $b7
  jr z, jr_000_3752                               ; $3748: $28 $08

  ld a, $01                                       ; $374a: $3e $01
  ld [$2000], a                                   ; $374c: $ea $00 $20
  call $40d5                                      ; $374f: $cd $d5 $40

jr_000_3752:
  ld a, [$c2bd]                                   ; $3752: $fa $bd $c2
  or a                                            ; $3755: $b7
  jr z, jr_000_3772                               ; $3756: $28 $1a

  ld c, a                                         ; $3758: $4f
  ld a, $01                                       ; $3759: $3e $01
  ldh [rSVBK], a                                  ; $375b: $e0 $70
  ld hl, $c2b3                                    ; $375d: $21 $b3 $c2
  ld e, [hl]                                      ; $3760: $5e
  inc hl                                          ; $3761: $23
  ld d, [hl]                                      ; $3762: $56
  ld hl, $db00                                    ; $3763: $21 $00 $db
  ld a, [$c2ba]                                   ; $3766: $fa $ba $c2
  ldh [rVBK], a                                   ; $3769: $e0 $4f
  rst $28                                         ; $376b: $ef
  xor a                                           ; $376c: $af
  ld [$c2bd], a                                   ; $376d: $ea $bd $c2
  ldh [rVBK], a                                   ; $3770: $e0 $4f

jr_000_3772:
  ld a, $05                                       ; $3772: $3e $05
  ld [$2000], a                                   ; $3774: $ea $00 $20
  ld a, $03                                       ; $3777: $3e $03
  ldh [rSVBK], a                                  ; $3779: $e0 $70
  ldh a, [$ffa7]                                  ; $377b: $f0 $a7
  or a                                            ; $377d: $b7
  call z, $7b21                                   ; $377e: $cc $21 $7b

Jump_000_3781:
  ld hl, $ff40                                    ; $3781: $21 $40 $ff
  set 1, [hl]                                     ; $3784: $cb $ce
  set 5, [hl]                                     ; $3786: $cb $ee
  ld hl, $c0ac                                    ; $3788: $21 $ac $c0
  inc [hl]                                        ; $378b: $34
  ld hl, $ffc3                                    ; $378c: $21 $c3 $ff
  dec [hl]                                        ; $378f: $35
  jr nz, jr_000_37ab                              ; $3790: $20 $19

  ld a, $3c                                       ; $3792: $3e $3c
  ld [hl], a                                      ; $3794: $77
  inc hl                                          ; $3795: $23
  inc [hl]                                        ; $3796: $34
  cp [hl]                                         ; $3797: $be
  jr nz, jr_000_37ab                              ; $3798: $20 $11

  ld [hl], $00                                    ; $379a: $36 $00
  inc hl                                          ; $379c: $23
  inc [hl]                                        ; $379d: $34
  cp [hl]                                         ; $379e: $be
  jr nz, jr_000_37ab                              ; $379f: $20 $0a

  ld [hl], $00                                    ; $37a1: $36 $00
  inc hl                                          ; $37a3: $23
  inc [hl]                                        ; $37a4: $34
  jr nz, jr_000_37ab                              ; $37a5: $20 $04

  ld [hl], $00                                    ; $37a7: $36 $00
  inc hl                                          ; $37a9: $23
  inc [hl]                                        ; $37aa: $34

jr_000_37ab:
  pop af                                          ; $37ab: $f1
  ld [$2000], a                                   ; $37ac: $ea $00 $20
  pop af                                          ; $37af: $f1
  ldh [rSVBK], a                                  ; $37b0: $e0 $70
  pop hl                                          ; $37b2: $e1
  pop de                                          ; $37b3: $d1
  pop bc                                          ; $37b4: $c1
  pop af                                          ; $37b5: $f1
  reti                                            ; $37b6: $d9


Call_000_37b7:
Jump_000_37b7:
  ldh a, [rSVBK]                                  ; $37b7: $f0 $70
  push af                                         ; $37b9: $f5
  ld a, $03                                       ; $37ba: $3e $03
  ldh [rSVBK], a                                  ; $37bc: $e0 $70
  ld de, $9800                                    ; $37be: $11 $00 $98
  ld hl, $d000                                    ; $37c1: $21 $00 $d0
  ld c, $3f                                       ; $37c4: $0e $3f
  rst $28                                         ; $37c6: $ef
  ld a, $01                                       ; $37c7: $3e $01
  ldh [rVBK], a                                   ; $37c9: $e0 $4f
  ld hl, $d500                                    ; $37cb: $21 $00 $d5
  rst $28                                         ; $37ce: $ef
  xor a                                           ; $37cf: $af
  ldh [rVBK], a                                   ; $37d0: $e0 $4f
  ld [$cd6a], a                                   ; $37d2: $ea $6a $cd
  pop af                                          ; $37d5: $f1
  ldh [rSVBK], a                                  ; $37d6: $e0 $70
  ret                                             ; $37d8: $c9


Call_000_37d9:
Jump_000_37d9:
  push hl                                         ; $37d9: $e5

jr_000_37da:
  ld hl, $c0ab                                    ; $37da: $21 $ab $c0
  ld a, [$c0ac]                                   ; $37dd: $fa $ac $c0
  cp [hl]                                         ; $37e0: $be
  jr nc, jr_000_37f4                              ; $37e1: $30 $11

  ld hl, $c0ae                                    ; $37e3: $21 $ae $c0
  ld a, [hl+]                                     ; $37e6: $2a
  ld h, [hl]                                      ; $37e7: $66
  ld l, a                                         ; $37e8: $6f
  inc hl                                          ; $37e9: $23
  ld a, l                                         ; $37ea: $7d
  ld [$c0ae], a                                   ; $37eb: $ea $ae $c0
  ld a, h                                         ; $37ee: $7c
  ld [$c0af], a                                   ; $37ef: $ea $af $c0
  jr jr_000_37da                                  ; $37f2: $18 $e6

jr_000_37f4:
  xor a                                           ; $37f4: $af
  ld [$c0ac], a                                   ; $37f5: $ea $ac $c0
  ld [$c0ae], a                                   ; $37f8: $ea $ae $c0
  ld [$c0af], a                                   ; $37fb: $ea $af $c0
  pop hl                                          ; $37fe: $e1
  ret                                             ; $37ff: $c9


Call_000_3800:
  ld a, [$4000]                                   ; $3800: $fa $00 $40
  push af                                         ; $3803: $f5
  ld a, $05                                       ; $3804: $3e $05
  ld [$2000], a                                   ; $3806: $ea $00 $20
  call $71b4                                      ; $3809: $cd $b4 $71
  pop af                                          ; $380c: $f1
  ld [$2000], a                                   ; $380d: $ea $00 $20
  pop hl                                          ; $3810: $e1
  ld a, l                                         ; $3811: $7d
  ld [$cd9b], a                                   ; $3812: $ea $9b $cd
  ld a, h                                         ; $3815: $7c
  ld [$cd9c], a                                   ; $3816: $ea $9c $cd

Jump_000_3819:
jr_000_3819:
  ld a, [$4000]                                   ; $3819: $fa $00 $40
  push af                                         ; $381c: $f5
  ld hl, $c0a9                                    ; $381d: $21 $a9 $c0
  inc [hl]                                        ; $3820: $34
  call Call_000_37d9                              ; $3821: $cd $d9 $37
  call Call_000_3838                              ; $3824: $cd $38 $38
  pop af                                          ; $3827: $f1
  ld [$2000], a                                   ; $3828: $ea $00 $20
  ld a, [$cd99]                                   ; $382b: $fa $99 $cd
  or a                                            ; $382e: $b7
  jr nz, jr_000_3819                              ; $382f: $20 $e8

  ld hl, $cd9b                                    ; $3831: $21 $9b $cd
  ld a, [hl+]                                     ; $3834: $2a
  ld h, [hl]                                      ; $3835: $66
  ld l, a                                         ; $3836: $6f
  jp hl                                           ; $3837: $e9


Call_000_3838:
  ld hl, $cd99                                    ; $3838: $21 $99 $cd
  ld a, [hl]                                      ; $383b: $7e
  or a                                            ; $383c: $b7
  ret z                                           ; $383d: $c8

  dec [hl]                                        ; $383e: $35
  ret nz                                          ; $383f: $c0

  ld a, [$4000]                                   ; $3840: $fa $00 $40
  push af                                         ; $3843: $f5
  ld a, [$cd98]                                   ; $3844: $fa $98 $cd
  ld [hl], a                                      ; $3847: $77
  ld a, [$cc1e]                                   ; $3848: $fa $1e $cc
  or a                                            ; $384b: $b7
  jr z, jr_000_3859                               ; $384c: $28 $0b

  cp $05                                          ; $384e: $fe $05
  jr z, jr_000_3859                               ; $3850: $28 $07

  ld a, $05                                       ; $3852: $3e $05
  ld [$2000], a                                   ; $3854: $ea $00 $20
  jr jr_000_3862                                  ; $3857: $18 $09

jr_000_3859:
  ld a, $03                                       ; $3859: $3e $03
  ld [$2000], a                                   ; $385b: $ea $00 $20
  xor a                                           ; $385e: $af
  call $79bd                                      ; $385f: $cd $bd $79

jr_000_3862:
  pop af                                          ; $3862: $f1
  ld [$2000], a                                   ; $3863: $ea $00 $20
  ld hl, $cd9a                                    ; $3866: $21 $9a $cd
  dec [hl]                                        ; $3869: $35
  ret nz                                          ; $386a: $c0

  xor a                                           ; $386b: $af
  ld [$cd99], a                                   ; $386c: $ea $99 $cd
  ld a, [$cb2d]                                   ; $386f: $fa $2d $cb
  cp $08                                          ; $3872: $fe $08

Call_000_3874:
  ret nz                                          ; $3874: $c0

  ld a, $01                                       ; $3875: $3e $01
  ld [$cb2d], a                                   ; $3877: $ea $2d $cb
  ret                                             ; $387a: $c9


Call_000_387b:
  ld a, [$c097]                                   ; $387b: $fa $97 $c0
  or a                                            ; $387e: $b7
  ret z                                           ; $387f: $c8

  ld a, [$c095]                                   ; $3880: $fa $95 $c0
  cp $01                                          ; $3883: $fe $01
  ret z                                           ; $3885: $c8

  ld a, $81                                       ; $3886: $3e $81
  ldh [rSC], a                                    ; $3888: $e0 $02
  ret                                             ; $388a: $c9


Jump_000_388b:
  push af                                         ; $388b: $f5
  push bc                                         ; $388c: $c5
  push de                                         ; $388d: $d5
  push hl                                         ; $388e: $e5
  ldh a, [$ff8b]                                  ; $388f: $f0 $8b
  or a                                            ; $3891: $b7
  ld a, [$4000]                                   ; $3892: $fa $00 $40
  jr z, jr_000_3899                               ; $3895: $28 $02

  ldh a, [$ff8a]                                  ; $3897: $f0 $8a

jr_000_3899:
  push af                                         ; $3899: $f5
  ld a, $06                                       ; $389a: $3e $06
  ld [$2000], a                                   ; $389c: $ea $00 $20
  call $7f6b                                      ; $389f: $cd $6b $7f
  pop af                                          ; $38a2: $f1
  ld [$2000], a                                   ; $38a3: $ea $00 $20
  pop hl                                          ; $38a6: $e1
  pop de                                          ; $38a7: $d1
  pop bc                                          ; $38a8: $c1
  pop af                                          ; $38a9: $f1
  reti                                            ; $38aa: $d9


Call_000_38ab:
  push bc                                         ; $38ab: $c5
  push de                                         ; $38ac: $d5
  push hl                                         ; $38ad: $e5
  ld a, [$4000]                                   ; $38ae: $fa $00 $40
  push af                                         ; $38b1: $f5
  ld a, $10                                       ; $38b2: $3e $10
  ld [$2000], a                                   ; $38b4: $ea $00 $20
  ldh a, [rSVBK]                                  ; $38b7: $f0 $70
  push af                                         ; $38b9: $f5
  ld a, $07                                       ; $38ba: $3e $07
  ldh [rSVBK], a                                  ; $38bc: $e0 $70
  ld a, $81                                       ; $38be: $3e $81
  ld c, $8a                                       ; $38c0: $0e $8a
  call $44f1                                      ; $38c2: $cd $f1 $44
  pop af                                          ; $38c5: $f1
  ldh [rSVBK], a                                  ; $38c6: $e0 $70
  pop af                                          ; $38c8: $f1
  ld [$2000], a                                   ; $38c9: $ea $00 $20
  pop hl                                          ; $38cc: $e1
  pop de                                          ; $38cd: $d1
  pop bc                                          ; $38ce: $c1
  ret                                             ; $38cf: $c9


Call_000_38d0:
  ld hl, $4212                                    ; $38d0: $21 $12 $42
  jp callBankedFunction                                ; $38d3: $c3 $18 $3a


Call_000_38d6:
  push bc                                         ; $38d6: $c5
  push de                                         ; $38d7: $d5
  push hl                                         ; $38d8: $e5
  ld hl, $41e8                                    ; $38d9: $21 $e8 $41
  call callBankedFunction                              ; $38dc: $cd $18 $3a
  ld a, $ff                                       ; $38df: $3e $ff
  ld [$cc5c], a                                   ; $38e1: $ea $5c $cc
  pop hl                                          ; $38e4: $e1
  pop de                                          ; $38e5: $d1
  pop bc                                          ; $38e6: $c1
  ret                                             ; $38e7: $c9


Call_000_38e8:
  ld a, [$cdca]                                   ; $38e8: $fa $ca $cd
  or a                                            ; $38eb: $b7
  ret z                                           ; $38ec: $c8

  ldh a, [rSVBK]                                  ; $38ed: $f0 $70
  push af                                         ; $38ef: $f5
  ld a, $07                                       ; $38f0: $3e $07
  ldh [rSVBK], a                                  ; $38f2: $e0 $70
  ld hl, $dfaa                                    ; $38f4: $21 $aa $df
  ld a, [hl+]                                     ; $38f7: $2a
  ld h, [hl]                                      ; $38f8: $66
  ld l, a                                         ; $38f9: $6f
  pop af                                          ; $38fa: $f1
  ldh [rSVBK], a                                  ; $38fb: $e0 $70
  ret                                             ; $38fd: $c9


Call_000_38fe:
  ld a, [$cdca]                                   ; $38fe: $fa $ca $cd
  or a                                            ; $3901: $b7
  ret z                                           ; $3902: $c8

  ldh a, [rSVBK]                                  ; $3903: $f0 $70
  push af                                         ; $3905: $f5
  ld a, $07                                       ; $3906: $3e $07
  ldh [rSVBK], a                                  ; $3908: $e0 $70
  ld a, l                                         ; $390a: $7d
  ld [$dfaa], a                                   ; $390b: $ea $aa $df
  ld a, h                                         ; $390e: $7c
  ld [$dfab], a                                   ; $390f: $ea $ab $df
  pop af                                          ; $3912: $f1
  ldh [rSVBK], a                                  ; $3913: $e0 $70
  ret                                             ; $3915: $c9


Call_000_3916:
Jump_000_3916:
  push bc                                         ; $3916: $c5
  push de                                         ; $3917: $d5
  push hl                                         ; $3918: $e5
  ld a, [$cdca]                                   ; $3919: $fa $ca $cd
  or a                                            ; $391c: $b7
  jr z, jr_000_3927                               ; $391d: $28 $08

  ld c, l                                         ; $391f: $4d
  ld b, h                                         ; $3920: $44
  ld hl, $5779                                    ; $3921: $21 $79 $57
  call callBankedFunction                              ; $3924: $cd $18 $3a

jr_000_3927:
  pop hl                                          ; $3927: $e1
  pop de                                          ; $3928: $d1
  pop bc                                          ; $3929: $c1
  ret                                             ; $392a: $c9


Call_000_392b:
Jump_000_392b:
  push bc                                         ; $392b: $c5
  push de                                         ; $392c: $d5
  push hl                                         ; $392d: $e5
  ld hl, $4f42                                    ; $392e: $21 $42 $4f
  ld e, a                                         ; $3931: $5f
  ld a, [$cdcb]                                   ; $3932: $fa $cb $cd
  or a                                            ; $3935: $b7
  jr z, jr_000_3947                               ; $3936: $28 $0f

  ld bc, $ff01                                    ; $3938: $01 $01 $ff
  call callBankedFunction                              ; $393b: $cd $18 $3a
  ldh a, [rIE]                                    ; $393e: $f0 $ff
  and $04                                         ; $3940: $e6 $04
  jr nz, jr_000_3947                              ; $3942: $20 $03

  call Call_000_3a55                              ; $3944: $cd $55 $3a

jr_000_3947:
  pop hl                                          ; $3947: $e1
  pop de                                          ; $3948: $d1
  pop bc                                          ; $3949: $c1
  ret                                             ; $394a: $c9


Call_000_394b:
Jump_000_394b:
  push bc                                         ; $394b: $c5
  push de                                         ; $394c: $d5
  push hl                                         ; $394d: $e5
  ld e, a                                         ; $394e: $5f
  ld a, [$cdca]                                   ; $394f: $fa $ca $cd
  or a                                            ; $3952: $b7
  jr z, jr_000_3974                               ; $3953: $28 $1f

  ld hl, $5767                                    ; $3955: $21 $67 $57
  call callBankedFunction                              ; $3958: $cd $18 $3a
  or a                                            ; $395b: $b7
  jr z, jr_000_396a                               ; $395c: $28 $0c

  ld a, [$cc5c]                                   ; $395e: $fa $5c $cc
  cp e                                            ; $3961: $bb
  jr z, jr_000_3974                               ; $3962: $28 $10

  ld hl, $57ae                                    ; $3964: $21 $ae $57
  call callBankedFunction                              ; $3967: $cd $18 $3a

jr_000_396a:
  ld a, e                                         ; $396a: $7b
  ld [$cc5c], a                                   ; $396b: $ea $5c $cc
  ld hl, $5710                                    ; $396e: $21 $10 $57
  call callBankedFunction                              ; $3971: $cd $18 $3a

jr_000_3974:
  pop hl                                          ; $3974: $e1
  pop de                                          ; $3975: $d1
  pop bc                                          ; $3976: $c1
  ret                                             ; $3977: $c9


Call_000_3978:
Jump_000_3978:
  push bc                                         ; $3978: $c5
  push de                                         ; $3979: $d5
  push hl                                         ; $397a: $e5
  ld a, [$cdca]                                   ; $397b: $fa $ca $cd
  or a                                            ; $397e: $b7
  jr z, jr_000_3995                               ; $397f: $28 $14

  ld hl, $5767                                    ; $3981: $21 $67 $57
  call callBankedFunction                              ; $3984: $cd $18 $3a
  or a                                            ; $3987: $b7
  jr z, jr_000_3995                               ; $3988: $28 $0b

  ld a, $ff                                       ; $398a: $3e $ff
  ld [$cc5c], a                                   ; $398c: $ea $5c $cc
  ld hl, $57ae                                    ; $398f: $21 $ae $57
  call callBankedFunction                              ; $3992: $cd $18 $3a

jr_000_3995:
  pop hl                                          ; $3995: $e1
  pop de                                          ; $3996: $d1
  pop bc                                          ; $3997: $c1
  ret                                             ; $3998: $c9



; ─────────────────────────────────────────────
;* Timer Interrupt Handle
; Flags: 
; Memory: WRAM7:ff8d

TimerInterruptHandle:
  push af         ; save af                       ; $3999: $f5
  push hl         ; save hl                       ; $399a: $e5
  ldh a, [rSVBK]  ; ─┐                            ; $399b: $f0 $70
  push af         ; ─┴ save WRAM bank             ; $399d: $f5
  ld a, $07       ; ─┐                            ; $399e: $3e $07
  ldh [rSVBK], a  ; ─┴ load WRAM bank 7           ; $39a0: $e0 $70
  
  ld hl, $ff8d  ; ─┐                              ; $39a2: $21 $8d $ff
  dec [hl]      ; ─┴ decrement byte in WRAM7:ff8d ; $39a5: $35
  jr nz, jr_000_39b6                              ; $39a6: $20 $0e
  
  ld a, [$df74] ; ─┐                                  ; $39a8: $fa $74 $df
  bit 6, a      ; ─┴ checks if [df74] bit 6 is 0                                 ; $39ab: $cb $77
  jr z, jr_000_39b2 ; if true skip call 3a09                              ; $39ad: $28 $03
  
  call call_10_3ad0                              ; $39af: $cd $09 $3a
  
jr_000_39b2:
  ld a, $03                                       ; $39b2: $3e $03
  ldh [$ff8d], a                                  ; $39b4: $e0 $8d
  
jr_000_39b6:
  ld hl, $ff8e                                    ; $39b6: $21 $8e $ff
  dec [hl]                                        ; $39b9: $35
  jr nz, jr_000_39e8                              ; $39ba: $20 $2c
  
  ld a, [$df74]                                   ; $39bc: $fa $74 $df
  bit 6, a                                        ; $39bf: $cb $77
  jr z, jr_000_39c8                               ; $39c1: $28 $05
  
  call Call_000_3a0f                              ; $39c3: $cd $0f $3a
  jr jr_000_39db                                  ; $39c6: $18 $13
  
jr_000_39c8:
  ld hl, $ffff                                    ; $39c8: $21 $ff $ff
  res 2, [hl]                                     ; $39cb: $cb $96
  call Call_000_3a0f                              ; $39cd: $cd $0f $3a
  ld a, [$df74]                                   ; $39d0: $fa $74 $df
  bit 6, a                                        ; $39d3: $cb $77
  jr z, jr_000_39db                               ; $39d5: $28 $04
  
  ld a, $03                                       ; $39d7: $3e $03
  ldh [$ff8d], a                                  ; $39d9: $e0 $8d
  
jr_000_39db:
  ld hl, $ff8e                                    ; $39db: $21 $8e $ff
  ld a, $0d                                       ; $39de: $3e $0d
  add [hl]                                        ; $39e0: $86
  cp $0e                                          ; $39e1: $fe $0e
  jr c, jr_000_39e7                               ; $39e3: $38 $02
  
  ld a, $01                                       ; $39e5: $3e $01
  
jr_000_39e7:
  ld [hl], a                                      ; $39e7: $77
  
jr_000_39e8:
  ld hl, $ffff                                    ; $39e8: $21 $ff $ff
  set 2, [hl]                                     ; $39eb: $cb $d6
  
  ldh a, [rTIMA]                                  ; $39ed: $f0 $05
  cp $d6                                          ; $39ef: $fe $d6
  
  jr nc, jr_000_39fb   ; a < d6 ?                           ; $39f1: $30 $08
  add $52                                         ; $39f3: $c6 $52
  
  jr nc, jr_000_39f9   ; a <  ff-52 ?                          ; $39f5: $30 $02
  ld a, $fe                                       ; $39f7: $3e $fe
  
jr_000_39f9:
  ldh [rTIMA], a                                  ; $39f9: $e0 $05
  
jr_000_39fb:
  ld a, $d6                                       ; $39fb: $3e $d6
  ldh [rTMA], a                                   ; $39fd: $e0 $06
  ld a, $ff                                       ; $39ff: $3e $ff
  ldh [rTAC], a                                   ; $3a01: $e0 $07
  pop af                                          ; $3a03: $f1
  ldh [rSVBK], a                                  ; $3a04: $e0 $70
  pop hl                                          ; $3a06: $e1
  pop af                                          ; $3a07: $f1
  reti                                            ; $3a08: $d9
; ─────────────────────────────────────────────




;* The function is unbanked, but it pulls data from bank 10
call_10_3ad0:
  ld hl, lb_3ad0 ; $3ad0                                    ; $3a09: $21 $d0 $3a
  jp callBankedFunction                                ; $3a0c: $c3 $18 $3a


Call_000_3a0f:
  call Call_000_387b                              ; $3a0f: $cd $7b $38
  ld hl, $4356                                    ; $3a12: $21 $56 $43
  jp callBankedFunction                                ; $3a15: $c3 $18 $3a

; ─────────────────────────────────────────────
;* Calls function HL in bank 10 safely - accounting for interrupts
;* Is called by the timer interrupt vector (atleast)
; inputs:
;   - HL: function address
; flags:
;   - all flags retained
; memeory:
;   - ff8a: Rom bank
;   - ff8b: Boolean - banked call in progress
;   - ff8c: Return value from function in HL

callBankedFunction:
  ldh a, [$ff8b]  ; ─┐ checks boolean at ff8b that   ; $3a18: $f0 $8b
  or a            ;  ├ stores if this function is    ; $3a1a: $b7
  ret nz          ; ─┘ already running & returns if true ; $3a1b: $c0
  
  ldh a, [rSVBK]  ; ─┐                            ; $3a1c: $f0 $70
  push af         ;  │                            ; $3a1e: $f5
  ld a, $07       ;  │ save current WRAM bank &   ; $3a1f: $3e $07
  ldh [rSVBK], a  ; ─┴ load WRAM bank 7           ; $3a21: $e0 $70
  
  push bc         ; ─┐                            ; $3a23: $c5
  push de         ;  │                            ; $3a24: $d5
  push hl         ;  │                            ; $3a25: $e5
  ld a, [$4000]   ;  │ save register state &      ; $3a26: $fa $00 $40
  push af         ; ─┴ save current ROM bank      ; $3a29: $f5
  
  push hl                                         ; $3a2a: $e5
  ld hl, $ff8a   ; ─┬ Stores bank (0x10 in ff8a)    ; $3a2b: $21 $8a $ff
  ld a, $10      ;  │                               ; $3a2e: $3e $10
  di             ;  ├ Sets boolean at ff8b to true  ; $3a30: $f3
  ld [hl+], a    ;  │ to block this function from   ; $3a31: $22
  inc [hl]       ;  │ running from an interrupt     ; $3a32: $34
  ei             ; ─┘ while the preivous isnt done  ; $3a33: $fb
  pop hl                                          ; $3a34: $e1
  
  ld a, $10     ; ─┐                              ; $3a35: $3e $10
  ld [$2000], a ; ─┴ swtich to ROM bank 0x10      ; $3a37: $ea $00 $20
  ld a, e                                         ; $3a3a: $7b
  
  ld de, .3a40return ; ─┐ set return address      ; $3a3b: $11 $40 $3a
  push de            ;  ├ and jump to parameter   ; $3a3e: $d5
  jp hl              ; ─┘ function in HL          ; $3a3f: $e9
  ; │
  ; ↓ returns here
.3a40return ;* -- retore input state -- *;
  
  ldh [$ff8c], a   ; store return value?          ; $3a40: $e0 $8c
  
  pop af           ; ─┐ stores original ROM bank  ; $3a42: $f1
  ldh [$ff8a], a   ;  ├ in ff8a, then switch to   ; $3a43: $e0 $8a
  ld [$2000], a    ; ─┘ original ROM bank         ; $3a45: $ea $00 $20
  
  ld hl, $ff8b     ; ─┐                           ; $3a48: $21 $8b $ff
  dec [hl]         ; ─┴ resets blocking bool to 0 ; $3a4b: $35
  pop hl           ; ─┐                           ; $3a4c: $e1
  pop de           ;  │                           ; $3a4d: $d1
  pop bc           ;  │                           ; $3a4e: $c1
  pop af           ;  │ restores register state & ; $3a4f: $f1
  ldh [rSVBK], a   ; ─┴ loads original WRAM bank  ; $3a50: $e0 $70
  
  ldh a, [$ff8c]   ; load return value?           ; $3a52: $f0 $8c
  ret                                             ; $3a54: $c9
; ─────────────────────────────────────────────



Call_000_3a55:
  ld c, $05                                       ; $3a55: $0e $05
  ld a, $d6                                       ; $3a57: $3e $d6
  ldh [c], a                                      ; $3a59: $e2
  inc c                                           ; $3a5a: $0c
  ldh [c], a                                      ; $3a5b: $e2
  inc c                                           ; $3a5c: $0c
  ld a, $ff                                       ; $3a5d: $3e $ff
  ldh [c], a                                      ; $3a5f: $e2
  ldh a, [rIE]                                    ; $3a60: $f0 $ff
  or $04                                          ; $3a62: $f6 $04
  ldh [rIE], a                                    ; $3a64: $e0 $ff
  ret                                             ; $3a66: $c9


  rst $38                                         ; $3a67: $ff
  rst $38                                         ; $3a68: $ff
  rst $38                                         ; $3a69: $ff
  rst $38                                         ; $3a6a: $ff
  rst $38                                         ; $3a6b: $ff
  rst $38                                         ; $3a6c: $ff
  rst $38                                         ; $3a6d: $ff
  rst $38                                         ; $3a6e: $ff
  rst $38                                         ; $3a6f: $ff
  rst $38                                         ; $3a70: $ff
  rst $38                                         ; $3a71: $ff
  rst $38                                         ; $3a72: $ff
  rst $38                                         ; $3a73: $ff
  rst $38                                         ; $3a74: $ff
  rst $38                                         ; $3a75: $ff
  rst $38                                         ; $3a76: $ff
  rst $38                                         ; $3a77: $ff
  rst $38                                         ; $3a78: $ff
  rst $38                                         ; $3a79: $ff
  rst $38                                         ; $3a7a: $ff
  rst $38                                         ; $3a7b: $ff
  rst $38                                         ; $3a7c: $ff
  rst $38                                         ; $3a7d: $ff
  rst $38                                         ; $3a7e: $ff
  rst $38                                         ; $3a7f: $ff
  rst $38                                         ; $3a80: $ff
  rst $38                                         ; $3a81: $ff
  rst $38                                         ; $3a82: $ff
  rst $38                                         ; $3a83: $ff
  rst $38                                         ; $3a84: $ff
  rst $38                                         ; $3a85: $ff
  rst $38                                         ; $3a86: $ff
  rst $38                                         ; $3a87: $ff
  rst $38                                         ; $3a88: $ff
  rst $38                                         ; $3a89: $ff
  rst $38                                         ; $3a8a: $ff
  rst $38                                         ; $3a8b: $ff
  rst $38                                         ; $3a8c: $ff
  rst $38                                         ; $3a8d: $ff
  rst $38                                         ; $3a8e: $ff
  rst $38                                         ; $3a8f: $ff
  rst $38                                         ; $3a90: $ff
  rst $38                                         ; $3a91: $ff
  rst $38                                         ; $3a92: $ff
  rst $38                                         ; $3a93: $ff
  rst $38                                         ; $3a94: $ff
  rst $38                                         ; $3a95: $ff
  rst $38                                         ; $3a96: $ff
  rst $38                                         ; $3a97: $ff
  rst $38                                         ; $3a98: $ff
  rst $38                                         ; $3a99: $ff
  rst $38                                         ; $3a9a: $ff
  rst $38                                         ; $3a9b: $ff
  rst $38                                         ; $3a9c: $ff
  rst $38                                         ; $3a9d: $ff
  rst $38                                         ; $3a9e: $ff
  rst $38                                         ; $3a9f: $ff
  rst $38                                         ; $3aa0: $ff
  rst $38                                         ; $3aa1: $ff
  rst $38                                         ; $3aa2: $ff
  rst $38                                         ; $3aa3: $ff
  rst $38                                         ; $3aa4: $ff
  rst $38                                         ; $3aa5: $ff
  rst $38                                         ; $3aa6: $ff
  rst $38                                         ; $3aa7: $ff
  rst $38                                         ; $3aa8: $ff
  rst $38                                         ; $3aa9: $ff
  rst $38                                         ; $3aaa: $ff
  rst $38                                         ; $3aab: $ff
  rst $38                                         ; $3aac: $ff
  rst $38                                         ; $3aad: $ff
  rst $38                                         ; $3aae: $ff
  rst $38                                         ; $3aaf: $ff

Call_000_3ab0:
Jump_000_3ab0:
  push af                                         ; $3ab0: $f5
  ld a, [$df01]                                   ; $3ab1: $fa $01 $df
  ld c, a                                         ; $3ab4: $4f
  pop af                                          ; $3ab5: $f1
  ldh [c], a                                      ; $3ab6: $e2
  ld [$2100], a                                   ; $3ab7: $ea $00 $21
  ret                                             ; $3aba: $c9


Call_000_3abb:
  ldh a, [rNR51]                                  ; $3abb: $f0 $25
  and $bb                                         ; $3abd: $e6 $bb
  ldh [rNR51], a                                  ; $3abf: $e0 $25
  xor a                                           ; $3ac1: $af
  ldh [rNR30], a                                  ; $3ac2: $e0 $1a
  ret                                             ; $3ac4: $c9


Call_000_3ac5:
Jump_000_3ac5:
  ld a, [$df11]                                   ; $3ac5: $fa $11 $df
  ldh [rNR51], a                                  ; $3ac8: $e0 $25
  ret                                             ; $3aca: $c9


jr_000_3acb:
  dec a                                           ; $3acb: $3d
  ld [$df7d], a                                   ; $3acc: $ea $7d $df
  ret                                             ; $3acf: $c9




; ─────────────────────────────────────────────
; a wave function?

lb_3ad0:
  ld a, [$df74]                                   ; $3ad0: $fa $74 $df
  bit 6, a                                        ; $3ad3: $cb $77
  ret z                                           ; $3ad5: $c8

  ld a, [$df08]                                   ; $3ad6: $fa $08 $df
  ldh [rTIMA], a                                  ; $3ad9: $e0 $05
  ldh [rTMA], a                                   ; $3adb: $e0 $06
  ld a, [$df7d]                                   ; $3add: $fa $7d $df
  and a                                           ; $3ae0: $a7
  jr nz, jr_000_3acb                              ; $3ae1: $20 $e8

  ld hl, $df78                                    ; $3ae3: $21 $78 $df
  ld a, [hl]                                      ; $3ae6: $7e
  sub $01                                         ; $3ae7: $d6 $01
  ld [hl+], a                                     ; $3ae9: $22
  ld c, a                                         ; $3aea: $4f
  ld a, [hl]                                      ; $3aeb: $7e
  sbc $00                                         ; $3aec: $de $00
  ld [hl], a                                      ; $3aee: $77
  or c                                            ; $3aef: $b1
  jr z, jr_000_3b5e                               ; $3af0: $28 $6c

  ld a, [$df75]                                   ; $3af2: $fa $75 $df
  call Call_000_3ab0                              ; $3af5: $cd $b0 $3a
  ld hl, $df76                                    ; $3af8: $21 $76 $df
  ld a, [hl+]                                     ; $3afb: $2a
  ld h, [hl]                                      ; $3afc: $66
  ld l, a                                         ; $3afd: $6f
  ld c, $30                                       ; $3afe: $0e $30
  call Call_000_3abb                              ; $3b00: $cd $bb $3a
  ld a, [hl+]                                     ; $3b03: $2a
  ld b, a                                         ; $3b04: $47
  and $f0                                         ; $3b05: $e6 $f0
  cp $70                                          ; $3b07: $fe $70
  jr z, jr_000_3b6c                               ; $3b09: $28 $61

  ld a, b                                         ; $3b0b: $78
  ldh [c], a   ; copying 32 bytes                                   ; $3b0c: $e2
  inc c                                           ; $3b0d: $0c
  ld a, [hl+]                                     ; $3b0e: $2a
  ldh [c], a                                      ; $3b0f: $e2
  inc c                                           ; $3b10: $0c
  ld a, [hl+]                                     ; $3b11: $2a
  ldh [c], a                                      ; $3b12: $e2
  inc c                                           ; $3b13: $0c
  ld a, [hl+]                                     ; $3b14: $2a
  ldh [c], a                                      ; $3b15: $e2
  inc c                                           ; $3b16: $0c
  ld a, [hl+]                                     ; $3b17: $2a
  ldh [c], a                                      ; $3b18: $e2
  inc c                                           ; $3b19: $0c
  ld a, [hl+]                                     ; $3b1a: $2a
  ldh [c], a                                      ; $3b1b: $e2
  inc c                                           ; $3b1c: $0c
  ld a, [hl+]                                     ; $3b1d: $2a
  ldh [c], a                                      ; $3b1e: $e2
  inc c                                           ; $3b1f: $0c
  ld a, [hl+]                                     ; $3b20: $2a
  ldh [c], a                                      ; $3b21: $e2
  inc c                                           ; $3b22: $0c
  ld a, [hl+]                                     ; $3b23: $2a
  ldh [c], a                                      ; $3b24: $e2
  inc c                                           ; $3b25: $0c
  ld a, [hl+]                                     ; $3b26: $2a
  ldh [c], a                                      ; $3b27: $e2
  inc c                                           ; $3b28: $0c
  ld a, [hl+]                                     ; $3b29: $2a
  ldh [c], a                                      ; $3b2a: $e2
  inc c                                           ; $3b2b: $0c
  ld a, [hl+]                                     ; $3b2c: $2a
  ldh [c], a                                      ; $3b2d: $e2
  inc c                                           ; $3b2e: $0c
  ld a, [hl+]                                     ; $3b2f: $2a
  ldh [c], a                                      ; $3b30: $e2
  inc c                                           ; $3b31: $0c
  ld a, [hl+]                                     ; $3b32: $2a
  ldh [c], a                                      ; $3b33: $e2
  inc c                                           ; $3b34: $0c
  ld a, [hl+]                                     ; $3b35: $2a
  ldh [c], a                                      ; $3b36: $e2
  inc c                                           ; $3b37: $0c
  ld a, [hl+]                                     ; $3b38: $2a
  ldh [c], a                                      ; $3b39: $e2

jr_000_3b3a:
  ld a, $80                                       ; $3b3a: $3e $80
  ldh [rNR30], a                                  ; $3b3c: $e0 $1a
  ld a, [$df14]                                   ; $3b3e: $fa $14 $df
  or $80                                          ; $3b41: $f6 $80
  ldh [rNR34], a                                  ; $3b43: $e0 $1e
  and $7f                                         ; $3b45: $e6 $7f
  ldh [rNR34], a                                  ; $3b47: $e0 $1e
  call Call_000_3ac5                              ; $3b49: $cd $c5 $3a
  ld a, l                                         ; $3b4c: $7d
  ld b, h                                         ; $3b4d: $44
  ld hl, $df76                                    ; $3b4e: $21 $76 $df
  ld [hl+], a                                     ; $3b51: $22
  ld [hl], b                                      ; $3b52: $70
  bit 7, b                                        ; $3b53: $cb $78
  jr z, jr_000_3b5d                               ; $3b55: $28 $06

  ld [hl], $40                                    ; $3b57: $36 $40
  ld hl, $df75                                    ; $3b59: $21 $75 $df
  inc [hl]                                        ; $3b5c: $34

jr_000_3b5d:
  ret                                             ; $3b5d: $c9
; ─────────────────────────────────────────────





jr_000_3b5e:
  call Call_000_3b8f                              ; $3b5e: $cd $8f $3b
  ld a, [$df7b]                                   ; $3b61: $fa $7b $df
  ld l, a                                         ; $3b64: $6f
  ld a, [$df7c]                                   ; $3b65: $fa $7c $df
  ld h, a                                         ; $3b68: $67
  or l                                            ; $3b69: $b5
  ret z                                           ; $3b6a: $c8

  jp hl                                           ; $3b6b: $e9


jr_000_3b6c:
  ld a, [hl+]                                     ; $3b6c: $2a
  ld [$df7d], a                                   ; $3b6d: $ea $7d $df
  ld bc, $000e                                    ; $3b70: $01 $0e $00
  add hl, bc                                      ; $3b73: $09
  ld c, l                                         ; $3b74: $4d
  ld b, h                                         ; $3b75: $44
  ld hl, $ff30                                    ; $3b76: $21 $30 $ff
  ld a, $88                                       ; $3b79: $3e $88
  ld [hl+], a                                     ; $3b7b: $22
  ld [hl+], a                                     ; $3b7c: $22
  ld [hl+], a                                     ; $3b7d: $22
  ld [hl+], a                                     ; $3b7e: $22
  ld [hl+], a                                     ; $3b7f: $22
  ld [hl+], a                                     ; $3b80: $22
  ld [hl+], a                                     ; $3b81: $22
  ld [hl+], a                                     ; $3b82: $22
  ld [hl+], a                                     ; $3b83: $22
  ld [hl+], a                                     ; $3b84: $22
  ld [hl+], a                                     ; $3b85: $22
  ld [hl+], a                                     ; $3b86: $22
  ld [hl+], a                                     ; $3b87: $22
  ld [hl+], a                                     ; $3b88: $22
  ld [hl+], a                                     ; $3b89: $22
  ld [hl], a                                      ; $3b8a: $77
  ld l, c                                         ; $3b8b: $69
  ld h, b                                         ; $3b8c: $60
  jr jr_000_3b3a                                  ; $3b8d: $18 $ab

Call_000_3b8f:
Jump_000_3b8f:
  ld hl, $df74                                    ; $3b8f: $21 $74 $df
  res 6, [hl]                                     ; $3b92: $cb $b6
  xor a                                           ; $3b94: $af
  ld [$df9f], a                                   ; $3b95: $ea $9f $df
  ldh a, [rIE]                                    ; $3b98: $f0 $ff
  and $1b                                         ; $3b9a: $e6 $1b
  ldh [rIE], a                                    ; $3b9c: $e0 $ff
  ldh a, [rIF]                                    ; $3b9e: $f0 $0f
  and $1b                                         ; $3ba0: $e6 $1b
  ldh [rIF], a                                    ; $3ba2: $e0 $0f
  call Call_000_3abb                              ; $3ba4: $cd $bb $3a
  ldh [rTAC], a                                   ; $3ba7: $e0 $07
  ret                                             ; $3ba9: $c9


Call_000_3baa:
  push bc                                         ; $3baa: $c5
  ld a, [$df75]                                   ; $3bab: $fa $75 $df
  call Call_000_3ab0                              ; $3bae: $cd $b0 $3a
  call Call_000_3c3a                              ; $3bb1: $cd $3a $3c
  ld a, [$df00]                                   ; $3bb4: $fa $00 $df
  call Call_000_3ab0                              ; $3bb7: $cd $b0 $3a
  pop bc                                          ; $3bba: $c1
  ret                                             ; $3bbb: $c9


Call_000_3bbc:
  push bc                                         ; $3bbc: $c5
  ld a, [$df75]                                   ; $3bbd: $fa $75 $df
  call Call_000_3ab0                              ; $3bc0: $cd $b0 $3a
  ld a, [hl]                                      ; $3bc3: $7e
  and $f0                                         ; $3bc4: $e6 $f0
  cp $70                                          ; $3bc6: $fe $70
  jr nz, jr_000_3be5                              ; $3bc8: $20 $1b

  inc hl                                          ; $3bca: $23
  ld a, [hl+]                                     ; $3bcb: $2a
  ld [$df7d], a                                   ; $3bcc: $ea $7d $df
  call Call_000_3abb                              ; $3bcf: $cd $bb $3a
  ld a, $88                                       ; $3bd2: $3e $88
  ld c, $10                                       ; $3bd4: $0e $10
  push hl                                         ; $3bd6: $e5
  ld hl, $ff30                                    ; $3bd7: $21 $30 $ff

jr_000_3bda:
  ld [hl+], a                                     ; $3bda: $22
  dec c                                           ; $3bdb: $0d
  jr nz, jr_000_3bda                              ; $3bdc: $20 $fc

  ld bc, $000e                                    ; $3bde: $01 $0e $00
  pop hl                                          ; $3be1: $e1
  add hl, bc                                      ; $3be2: $09
  jr jr_000_3bec                                  ; $3be3: $18 $07

jr_000_3be5:
  xor a                                           ; $3be5: $af
  ld [$df7d], a                                   ; $3be6: $ea $7d $df
  call Call_000_3c3a                              ; $3be9: $cd $3a $3c

jr_000_3bec:
  ld a, [$df00]                                   ; $3bec: $fa $00 $df
  call Call_000_3ab0                              ; $3bef: $cd $b0 $3a
  pop bc                                          ; $3bf2: $c1
  ret                                             ; $3bf3: $c9


Call_000_3bf4:
  push bc                                         ; $3bf4: $c5
  ld a, [$df75]                                   ; $3bf5: $fa $75 $df
  call Call_000_3ab0                              ; $3bf8: $cd $b0 $3a
  ld a, [hl]                                      ; $3bfb: $7e
  and $f0                                         ; $3bfc: $e6 $f0
  cp $70                                          ; $3bfe: $fe $70

Call_000_3c00:
  jr nz, jr_000_3c21                              ; $3c00: $20 $1f

  inc hl                                          ; $3c02: $23
  ld a, [hl+]                                     ; $3c03: $2a
  ld [$df7d], a                                   ; $3c04: $ea $7d $df
  call Call_000_3abb                              ; $3c07: $cd $bb $3a

Jump_000_3c0a:
  ld a, $88                                       ; $3c0a: $3e $88
  ld c, $10                                       ; $3c0c: $0e $10
  push hl                                         ; $3c0e: $e5
  ld hl, $ff30                                    ; $3c0f: $21 $30 $ff

jr_000_3c12:
  ld [hl+], a                                     ; $3c12: $22
  dec c                                           ; $3c13: $0d
  jr nz, jr_000_3c12                              ; $3c14: $20 $fc

  ld a, $80                                       ; $3c16: $3e $80
  ldh [rNR30], a                                  ; $3c18: $e0 $1a
  ld bc, $000e                                    ; $3c1a: $01 $0e $00
  pop hl                                          ; $3c1d: $e1
  add hl, bc                                      ; $3c1e: $09
  jr jr_000_3c24                                  ; $3c1f: $18 $03

jr_000_3c21:
  call Call_000_3c3a                              ; $3c21: $cd $3a $3c

jr_000_3c24:
  ld a, [$df14]                                   ; $3c24: $fa $14 $df
  or $80                                          ; $3c27: $f6 $80
  ldh [rNR34], a                                  ; $3c29: $e0 $1e
  and $7f                                         ; $3c2b: $e6 $7f
  ldh [rNR34], a                                  ; $3c2d: $e0 $1e
  call Call_000_3ac5                              ; $3c2f: $cd $c5 $3a
  ld a, [$df00]                                   ; $3c32: $fa $00 $df
  call Call_000_3ab0                              ; $3c35: $cd $b0 $3a
  pop bc                                          ; $3c38: $c1
  ret                                             ; $3c39: $c9


Call_000_3c3a:
  ld c, $30                                       ; $3c3a: $0e $30
  call Call_000_3abb                              ; $3c3c: $cd $bb $3a
  ld a, [hl+]                                     ; $3c3f: $2a
  ldh [c], a                                      ; $3c40: $e2
  inc c                                           ; $3c41: $0c
  ld a, [hl+]                                     ; $3c42: $2a
  ldh [c], a                                      ; $3c43: $e2
  inc c                                           ; $3c44: $0c
  ld a, [hl+]                                     ; $3c45: $2a
  ldh [c], a                                      ; $3c46: $e2
  inc c                                           ; $3c47: $0c
  ld a, [hl+]                                     ; $3c48: $2a
  ldh [c], a                                      ; $3c49: $e2
  inc c                                           ; $3c4a: $0c
  ld a, [hl+]                                     ; $3c4b: $2a
  ldh [c], a                                      ; $3c4c: $e2
  inc c                                           ; $3c4d: $0c
  ld a, [hl+]                                     ; $3c4e: $2a
  ldh [c], a                                      ; $3c4f: $e2
  inc c                                           ; $3c50: $0c
  ld a, [hl+]                                     ; $3c51: $2a
  ldh [c], a                                      ; $3c52: $e2
  inc c                                           ; $3c53: $0c
  ld a, [hl+]                                     ; $3c54: $2a
  ldh [c], a                                      ; $3c55: $e2
  inc c                                           ; $3c56: $0c
  ld a, [hl+]                                     ; $3c57: $2a
  ldh [c], a                                      ; $3c58: $e2
  inc c                                           ; $3c59: $0c
  ld a, [hl+]                                     ; $3c5a: $2a
  ldh [c], a                                      ; $3c5b: $e2
  inc c                                           ; $3c5c: $0c
  ld a, [hl+]                                     ; $3c5d: $2a
  ldh [c], a                                      ; $3c5e: $e2
  inc c                                           ; $3c5f: $0c
  ld a, [hl+]                                     ; $3c60: $2a
  ldh [c], a                                      ; $3c61: $e2
  inc c                                           ; $3c62: $0c
  ld a, [hl+]                                     ; $3c63: $2a
  ldh [c], a                                      ; $3c64: $e2
  inc c                                           ; $3c65: $0c
  ld a, [hl+]                                     ; $3c66: $2a
  ldh [c], a                                      ; $3c67: $e2
  inc c                                           ; $3c68: $0c
  ld a, [hl+]                                     ; $3c69: $2a
  ldh [c], a                                      ; $3c6a: $e2
  inc c                                           ; $3c6b: $0c
  ld a, [hl+]                                     ; $3c6c: $2a
  ldh [c], a                                      ; $3c6d: $e2
  ld a, $80                                       ; $3c6e: $3e $80
  ldh [rNR30], a                                  ; $3c70: $e0 $1a
  ret                                             ; $3c72: $c9


Call_000_3c73:
  call Call_000_3c7d                              ; $3c73: $cd $7d $3c
  ld a, [$df00]                                   ; $3c76: $fa $00 $df
  ld [$2100], a                                   ; $3c79: $ea $00 $21
  ret                                             ; $3c7c: $c9


Call_000_3c7d:
  ld a, [$df75]                                   ; $3c7d: $fa $75 $df
  ld [$2100], a                                   ; $3c80: $ea $00 $21
  ld e, $00                                       ; $3c83: $1e $00
  ld hl, $df76                                    ; $3c85: $21 $76 $df
  ld a, [hl+]                                     ; $3c88: $2a
  ld h, [hl]                                      ; $3c89: $66
  ld l, a                                         ; $3c8a: $6f

jr_000_3c8b:
  ld a, [hl]                                      ; $3c8b: $7e
  ld d, a                                         ; $3c8c: $57
  and $f0                                         ; $3c8d: $e6 $f0
  cp $70                                          ; $3c8f: $fe $70
  ld a, d                                         ; $3c91: $7a
  jr z, jr_000_3ce8                               ; $3c92: $28 $54

  ld d, $20                                       ; $3c94: $16 $20

jr_000_3c96:
  bit 0, d                                        ; $3c96: $cb $42
  jr nz, jr_000_3c9e                              ; $3c98: $20 $04

  nop                                             ; $3c9a: $00
  nop                                             ; $3c9b: $00
  jr jr_000_3ca1                                  ; $3c9c: $18 $03

jr_000_3c9e:
  inc hl                                          ; $3c9e: $23
  swap a                                          ; $3c9f: $cb $37

jr_000_3ca1:
  and $f0                                         ; $3ca1: $e6 $f0
  cp e                                            ; $3ca3: $bb
  ld e, a                                         ; $3ca4: $5f
  jr z, jr_000_3cb3                               ; $3ca5: $28 $0c

  ldh [rNR12], a                                  ; $3ca7: $e0 $12
  ldh [rNR22], a                                  ; $3ca9: $e0 $17
  ld a, $87                                       ; $3cab: $3e $87
  ldh [rNR14], a                                  ; $3cad: $e0 $14
  ldh [rNR24], a                                  ; $3caf: $e0 $19
  jr jr_000_3cbf                                  ; $3cb1: $18 $0c

jr_000_3cb3:
  nop                                             ; $3cb3: $00
  nop                                             ; $3cb4: $00
  nop                                             ; $3cb5: $00
  nop                                             ; $3cb6: $00
  nop                                             ; $3cb7: $00
  nop                                             ; $3cb8: $00
  nop                                             ; $3cb9: $00
  nop                                             ; $3cba: $00
  nop                                             ; $3cbb: $00
  nop                                             ; $3cbc: $00
  nop                                             ; $3cbd: $00
  nop                                             ; $3cbe: $00

jr_000_3cbf:
  ld a, $14                                       ; $3cbf: $3e $14

jr_000_3cc1:
  dec a                                           ; $3cc1: $3d
  jr nz, jr_000_3cc1                              ; $3cc2: $20 $fd

  dec d                                           ; $3cc4: $15
  ld a, [hl]                                      ; $3cc5: $7e
  jr nz, jr_000_3c96                              ; $3cc6: $20 $ce

jr_000_3cc8:
  bit 7, h                                        ; $3cc8: $cb $7c
  jr z, jr_000_3cd8                               ; $3cca: $28 $0c

  ld h, $40                                       ; $3ccc: $26 $40
  ld a, [$df75]                                   ; $3cce: $fa $75 $df
  inc a                                           ; $3cd1: $3c
  ld [$df75], a                                   ; $3cd2: $ea $75 $df
  ld [$2100], a                                   ; $3cd5: $ea $00 $21

jr_000_3cd8:
  push bc                                         ; $3cd8: $c5
  call Call_000_3d32                              ; $3cd9: $cd $32 $3d
  ld a, [$dffe]                                   ; $3cdc: $fa $fe $df
  and b                                           ; $3cdf: $a0
  pop bc                                          ; $3ce0: $c1
  ret nz                                          ; $3ce1: $c0

  dec bc                                          ; $3ce2: $0b
  ld a, b                                         ; $3ce3: $78
  or c                                            ; $3ce4: $b1
  jr nz, jr_000_3c8b                              ; $3ce5: $20 $a4

  ret                                             ; $3ce7: $c9


jr_000_3ce8:
  inc hl                                          ; $3ce8: $23
  ld a, [hl+]                                     ; $3ce9: $2a
  ld [$df7d], a                                   ; $3cea: $ea $7d $df
  push bc                                         ; $3ced: $c5
  ld bc, $000e                                    ; $3cee: $01 $0e $00
  add hl, bc                                      ; $3cf1: $09
  pop bc                                          ; $3cf2: $c1

jr_000_3cf3:
  ld a, $77                                       ; $3cf3: $3e $77
  ld d, $20                                       ; $3cf5: $16 $20

jr_000_3cf7:
  bit 0, d                                        ; $3cf7: $cb $42
  jr nz, jr_000_3cfd                              ; $3cf9: $20 $02

  jr jr_000_3cff                                  ; $3cfb: $18 $02

jr_000_3cfd:
  swap a                                          ; $3cfd: $cb $37

jr_000_3cff:
  and $f0                                         ; $3cff: $e6 $f0
  cp e                                            ; $3d01: $bb
  ld e, a                                         ; $3d02: $5f
  jr z, jr_000_3d11                               ; $3d03: $28 $0c

  ldh [rNR12], a                                  ; $3d05: $e0 $12
  ldh [rNR22], a                                  ; $3d07: $e0 $17
  ld a, $87                                       ; $3d09: $3e $87
  ldh [rNR14], a                                  ; $3d0b: $e0 $14
  ldh [rNR24], a                                  ; $3d0d: $e0 $19
  jr jr_000_3d1d                                  ; $3d0f: $18 $0c

jr_000_3d11:
  nop                                             ; $3d11: $00
  nop                                             ; $3d12: $00
  nop                                             ; $3d13: $00
  nop                                             ; $3d14: $00
  nop                                             ; $3d15: $00
  nop                                             ; $3d16: $00
  nop                                             ; $3d17: $00
  nop                                             ; $3d18: $00
  nop                                             ; $3d19: $00
  nop                                             ; $3d1a: $00
  nop                                             ; $3d1b: $00
  nop                                             ; $3d1c: $00

jr_000_3d1d:
  ld a, $14                                       ; $3d1d: $3e $14

jr_000_3d1f:
  dec a                                           ; $3d1f: $3d
  jr nz, jr_000_3d1f                              ; $3d20: $20 $fd

  dec d                                           ; $3d22: $15
  ld a, $77                                       ; $3d23: $3e $77
  jr nz, jr_000_3cf7                              ; $3d25: $20 $d0

  ld a, [$df7d]                                   ; $3d27: $fa $7d $df
  dec a                                           ; $3d2a: $3d
  ld [$df7d], a                                   ; $3d2b: $ea $7d $df
  jr nz, jr_000_3cf3                              ; $3d2e: $20 $c3

  jr jr_000_3cc8                                  ; $3d30: $18 $96

Call_000_3d32:
  ld c, $00                                       ; $3d32: $0e $00
  ld a, $10                                       ; $3d34: $3e $10
  ldh [c], a                                      ; $3d36: $e2
  nop                                             ; $3d37: $00
  nop                                             ; $3d38: $00
  nop                                             ; $3d39: $00
  nop                                             ; $3d3a: $00
  nop                                             ; $3d3b: $00
  ldh a, [c]                                      ; $3d3c: $f2
  ldh a, [c]                                      ; $3d3d: $f2
  ldh a, [c]                                      ; $3d3e: $f2
  ldh a, [c]                                      ; $3d3f: $f2
  ldh a, [c]                                      ; $3d40: $f2
  ldh a, [c]                                      ; $3d41: $f2
  ldh a, [c]                                      ; $3d42: $f2
  ldh a, [c]                                      ; $3d43: $f2
  ldh a, [c]                                      ; $3d44: $f2
  ldh a, [c]                                      ; $3d45: $f2
  ldh a, [c]                                      ; $3d46: $f2
  ldh a, [c]                                      ; $3d47: $f2
  ldh a, [c]                                      ; $3d48: $f2
  ldh a, [c]                                      ; $3d49: $f2
  and $0f                                         ; $3d4a: $e6 $0f
  cpl                                             ; $3d4c: $2f
  ld b, a                                         ; $3d4d: $47
  ld a, $30                                       ; $3d4e: $3e $30
  ldh [c], a                                      ; $3d50: $e2
  ret                                             ; $3d51: $c9


Call_000_3d52:
  ld a, [$dfa9]                                   ; $3d52: $fa $a9 $df
  call Call_000_3ab0                              ; $3d55: $cd $b0 $3a
  ld a, [$dfa7]                                   ; $3d58: $fa $a7 $df
  ld l, a                                         ; $3d5b: $6f
  ld a, [$dfa8]                                   ; $3d5c: $fa $a8 $df
  ld h, a                                         ; $3d5f: $67
  ld bc, $0004                                    ; $3d60: $01 $04 $00
  add hl, bc                                      ; $3d63: $09
  ld a, [hl+]                                     ; $3d64: $2a
  ld l, [hl]                                      ; $3d65: $6e
  ld h, a                                         ; $3d66: $67
  ld a, [$df00]                                   ; $3d67: $fa $00 $df
  jp Jump_000_3ab0                                ; $3d6a: $c3 $b0 $3a


Call_000_3d6d:
  ld a, [$dfa9]                                   ; $3d6d: $fa $a9 $df
  call Call_000_3ab0                              ; $3d70: $cd $b0 $3a
  ld a, [$dfa7]                                   ; $3d73: $fa $a7 $df
  ld l, a                                         ; $3d76: $6f
  ld a, [$dfa8]                                   ; $3d77: $fa $a8 $df
  ld h, a                                         ; $3d7a: $67
  push hl                                         ; $3d7b: $e5
  ld bc, $ff7c                                    ; $3d7c: $01 $7c $ff
  add hl, bc                                      ; $3d7f: $09
  ld a, [hl+]                                     ; $3d80: $2a
  ld [$dfad], a                                   ; $3d81: $ea $ad $df
  ld a, [hl+]                                     ; $3d84: $2a
  ld [$dfae], a                                   ; $3d85: $ea $ae $df
  ld a, [hl+]                                     ; $3d88: $2a
  ld [$dfaf], a                                   ; $3d89: $ea $af $df
  ld a, [hl+]                                     ; $3d8c: $2a
  ld [$dfb0], a                                   ; $3d8d: $ea $b0 $df
  ld a, l                                         ; $3d90: $7d
  ld [$dfb1], a                                   ; $3d91: $ea $b1 $df
  ld a, h                                         ; $3d94: $7c
  ld [$dfb2], a                                   ; $3d95: $ea $b2 $df
  pop hl                                          ; $3d98: $e1
  ld a, [hl+]                                     ; $3d99: $2a
  ld b, a                                         ; $3d9a: $47
  ld a, [hl-]                                     ; $3d9b: $3a
  ld c, a                                         ; $3d9c: $4f
  ld e, l                                         ; $3d9d: $5d
  ld d, h                                         ; $3d9e: $54
  add hl, bc                                      ; $3d9f: $09
  ld a, [hl+]                                     ; $3da0: $2a
  ld b, a                                         ; $3da1: $47
  ld a, [hl+]                                     ; $3da2: $2a
  ld c, a                                         ; $3da3: $4f
  or b                                            ; $3da4: $b0
  jr z, jr_000_3db9                               ; $3da5: $28 $12

  push hl                                         ; $3da7: $e5
  ld l, e                                         ; $3da8: $6b
  ld h, d                                         ; $3da9: $62
  add hl, bc                                      ; $3daa: $09
  ld a, l                                         ; $3dab: $7d
  ld [$dfb3], a                                   ; $3dac: $ea $b3 $df
  ld a, h                                         ; $3daf: $7c
  ld [$dfb4], a                                   ; $3db0: $ea $b4 $df
  ld hl, $dfa6                                    ; $3db3: $21 $a6 $df
  set 0, [hl]                                     ; $3db6: $cb $c6
  pop hl                                          ; $3db8: $e1

jr_000_3db9:
  ld a, [hl+]                                     ; $3db9: $2a
  ld b, a                                         ; $3dba: $47
  ld a, [hl+]                                     ; $3dbb: $2a
  ld c, a                                         ; $3dbc: $4f
  or b                                            ; $3dbd: $b0
  jr z, jr_000_3dd2                               ; $3dbe: $28 $12

  push hl                                         ; $3dc0: $e5
  ld l, e                                         ; $3dc1: $6b
  ld h, d                                         ; $3dc2: $62
  add hl, bc                                      ; $3dc3: $09
  ld a, l                                         ; $3dc4: $7d
  ld [$dfb5], a                                   ; $3dc5: $ea $b5 $df
  ld a, h                                         ; $3dc8: $7c
  ld [$dfb6], a                                   ; $3dc9: $ea $b6 $df
  ld hl, $dfa6                                    ; $3dcc: $21 $a6 $df
  set 1, [hl]                                     ; $3dcf: $cb $ce
  pop hl                                          ; $3dd1: $e1

jr_000_3dd2:
  ld a, [hl+]                                     ; $3dd2: $2a
  ld b, a                                         ; $3dd3: $47
  ld a, [hl+]                                     ; $3dd4: $2a
  ld c, a                                         ; $3dd5: $4f
  or b                                            ; $3dd6: $b0
  jr z, jr_000_3deb                               ; $3dd7: $28 $12

  push hl                                         ; $3dd9: $e5
  ld l, e                                         ; $3dda: $6b
  ld h, d                                         ; $3ddb: $62
  add hl, bc                                      ; $3ddc: $09
  ld a, l                                         ; $3ddd: $7d
  ld [$dfb7], a                                   ; $3dde: $ea $b7 $df
  ld a, h                                         ; $3de1: $7c
  ld [$dfb8], a                                   ; $3de2: $ea $b8 $df
  ld hl, $dfa6                                    ; $3de5: $21 $a6 $df
  set 2, [hl]                                     ; $3de8: $cb $d6
  pop hl                                          ; $3dea: $e1

jr_000_3deb:
  ld a, [hl+]                                     ; $3deb: $2a
  ld b, a                                         ; $3dec: $47
  ld a, [hl+]                                     ; $3ded: $2a
  ld c, a                                         ; $3dee: $4f
  or b                                            ; $3def: $b0
  jr z, jr_000_3e04                               ; $3df0: $28 $12

  push hl                                         ; $3df2: $e5
  ld l, e                                         ; $3df3: $6b
  ld h, d                                         ; $3df4: $62
  add hl, bc                                      ; $3df5: $09
  ld a, l                                         ; $3df6: $7d
  ld [$dfb9], a                                   ; $3df7: $ea $b9 $df
  ld a, h                                         ; $3dfa: $7c
  ld [$dfba], a                                   ; $3dfb: $ea $ba $df
  pop hl                                          ; $3dfe: $e1
  ld hl, $dfa6                                    ; $3dff: $21 $a6 $df
  set 3, [hl]                                     ; $3e02: $cb $de

jr_000_3e04:
  ld hl, $dfb3                                    ; $3e04: $21 $b3 $df
  ld de, $dfc1                                    ; $3e07: $11 $c1 $df
  xor a                                           ; $3e0a: $af

jr_000_3e0b:
  ld [$dff9], a                                   ; $3e0b: $ea $f9 $df
  ld a, [hl+]                                     ; $3e0e: $2a
  ld c, a                                         ; $3e0f: $4f
  ld a, [hl+]                                     ; $3e10: $2a
  ld b, a                                         ; $3e11: $47
  or c                                            ; $3e12: $b1
  jr z, jr_000_3e31                               ; $3e13: $28 $1c

  ld a, [bc]                                      ; $3e15: $0a
  inc bc                                          ; $3e16: $03
  ld [de], a                                      ; $3e17: $12
  dec de                                          ; $3e18: $1b
  ld a, [bc]                                      ; $3e19: $0a
  ld [de], a                                      ; $3e1a: $12
  inc de                                          ; $3e1b: $13
  inc bc                                          ; $3e1c: $03
  ld a, [bc]                                      ; $3e1d: $0a
  ld [$dffa], a                                   ; $3e1e: $ea $fa $df
  ld bc, $dfbb                                    ; $3e21: $01 $bb $df
  ld a, [$dff9]                                   ; $3e24: $fa $f9 $df
  add c                                           ; $3e27: $81
  ld c, a                                         ; $3e28: $4f
  ld a, b                                         ; $3e29: $78
  adc $00                                         ; $3e2a: $ce $00
  ld b, a                                         ; $3e2c: $47
  ld a, [$dffa]                                   ; $3e2d: $fa $fa $df
  ld [bc], a                                      ; $3e30: $02

jr_000_3e31:
  inc de                                          ; $3e31: $13
  inc de                                          ; $3e32: $13
  inc de                                          ; $3e33: $13
  ld a, [$dff9]                                   ; $3e34: $fa $f9 $df
  inc a                                           ; $3e37: $3c
  cp $04                                          ; $3e38: $fe $04
  jr nz, jr_000_3e0b                              ; $3e3a: $20 $cf

  ld a, [$df00]                                   ; $3e3c: $fa $00 $df
  jp Jump_000_3ab0                                ; $3e3f: $c3 $b0 $3a


Call_000_3e42:
  sla a                                           ; $3e42: $cb $27
  ld e, a                                         ; $3e44: $5f
  ld d, $00                                       ; $3e45: $16 $00
  ld a, [$dfa9]                                   ; $3e47: $fa $a9 $df
  call Call_000_3ab0                              ; $3e4a: $cd $b0 $3a
  ld hl, $dfb3                                    ; $3e4d: $21 $b3 $df
  add hl, de                                      ; $3e50: $19
  push hl                                         ; $3e51: $e5
  ld a, [hl+]                                     ; $3e52: $2a
  ld h, [hl]                                      ; $3e53: $66
  ld l, a                                         ; $3e54: $6f
  ld bc, $0003                                    ; $3e55: $01 $03 $00
  add hl, bc                                      ; $3e58: $09
  pop bc                                          ; $3e59: $c1
  ld a, l                                         ; $3e5a: $7d
  ld [bc], a                                      ; $3e5b: $02
  inc bc                                          ; $3e5c: $03
  ld a, h                                         ; $3e5d: $7c
  ld [bc], a                                      ; $3e5e: $02
  ld a, [hl+]                                     ; $3e5f: $2a
  ld b, a                                         ; $3e60: $47
  ld a, [hl+]                                     ; $3e61: $2a
  ld c, a                                         ; $3e62: $4f
  ld a, [hl]                                      ; $3e63: $7e
  ld hl, $dfbb                                    ; $3e64: $21 $bb $df
  srl e                                           ; $3e67: $cb $3b
  add hl, de                                      ; $3e69: $19
  ld [hl], a                                      ; $3e6a: $77
  ld a, e                                         ; $3e6b: $7b
  sla e                                           ; $3e6c: $cb $23
  add e                                           ; $3e6e: $83
  ld e, a                                         ; $3e6f: $5f
  ld hl, $dfc0                                    ; $3e70: $21 $c0 $df
  add hl, de                                      ; $3e73: $19
  ld a, [hl]                                      ; $3e74: $7e
  add c                                           ; $3e75: $81
  ld [hl+], a                                     ; $3e76: $22
  ld a, [hl]                                      ; $3e77: $7e
  adc b                                           ; $3e78: $88
  ld [hl], a                                      ; $3e79: $77
  ld a, [$df00]                                   ; $3e7a: $fa $00 $df
  jp Jump_000_3ab0                                ; $3e7d: $c3 $b0 $3a


Call_000_3e80:
  sla a                                           ; $3e80: $cb $27
  ld e, a                                         ; $3e82: $5f
  ld d, $00                                       ; $3e83: $16 $00
  ld a, [$dfa9]                                   ; $3e85: $fa $a9 $df
  call Call_000_3ab0                              ; $3e88: $cd $b0 $3a
  ld hl, $dfb3                                    ; $3e8b: $21 $b3 $df
  add hl, de                                      ; $3e8e: $19
  push hl                                         ; $3e8f: $e5
  ld a, [hl+]                                     ; $3e90: $2a
  ld h, [hl]                                      ; $3e91: $66
  ld l, a                                         ; $3e92: $6f
  ld bc, $0003                                    ; $3e93: $01 $03 $00
  add hl, bc                                      ; $3e96: $09
  ld a, [hl+]                                     ; $3e97: $2a
  ld b, a                                         ; $3e98: $47
  ld a, [hl+]                                     ; $3e99: $2a
  ld c, a                                         ; $3e9a: $4f
  push bc                                         ; $3e9b: $c5
  ld a, [hl+]                                     ; $3e9c: $2a
  ld b, a                                         ; $3e9d: $47
  ld c, [hl]                                      ; $3e9e: $4e
  push de                                         ; $3e9f: $d5
  ld a, e                                         ; $3ea0: $7b
  srl a                                           ; $3ea1: $cb $3f
  add e                                           ; $3ea3: $83
  ld e, a                                         ; $3ea4: $5f
  ld hl, $dfc0                                    ; $3ea5: $21 $c0 $df
  add hl, de                                      ; $3ea8: $19
  ld a, [hl]                                      ; $3ea9: $7e
  add c                                           ; $3eaa: $81
  ld [hl+], a                                     ; $3eab: $22
  ld a, [hl]                                      ; $3eac: $7e
  adc b                                           ; $3ead: $88
  ld [hl], a                                      ; $3eae: $77
  pop de                                          ; $3eaf: $d1
  ld a, [$dfa7]                                   ; $3eb0: $fa $a7 $df
  ld l, a                                         ; $3eb3: $6f
  ld a, [$dfa8]                                   ; $3eb4: $fa $a8 $df
  ld h, a                                         ; $3eb7: $67
  ld a, [hl+]                                     ; $3eb8: $2a
  ld b, a                                         ; $3eb9: $47
  ld a, [hl-]                                     ; $3eba: $3a
  ld c, a                                         ; $3ebb: $4f
  push hl                                         ; $3ebc: $e5
  add hl, bc                                      ; $3ebd: $09
  add hl, de                                      ; $3ebe: $19
  ld a, [hl+]                                     ; $3ebf: $2a
  ld b, a                                         ; $3ec0: $47
  ld c, [hl]                                      ; $3ec1: $4e
  pop hl                                          ; $3ec2: $e1
  add hl, bc                                      ; $3ec3: $09
  pop bc                                          ; $3ec4: $c1
  add hl, bc                                      ; $3ec5: $09
  pop bc                                          ; $3ec6: $c1
  ld a, l                                         ; $3ec7: $7d
  ld [bc], a                                      ; $3ec8: $02
  inc bc                                          ; $3ec9: $03
  ld a, h                                         ; $3eca: $7c
  ld [bc], a                                      ; $3ecb: $02
  inc hl                                          ; $3ecc: $23
  inc hl                                          ; $3ecd: $23
  ld a, [hl]                                      ; $3ece: $7e
  ld hl, $dfbb                                    ; $3ecf: $21 $bb $df
  srl e                                           ; $3ed2: $cb $3b
  add hl, de                                      ; $3ed4: $19
  ld [hl], a                                      ; $3ed5: $77
  ld a, [$df00]                                   ; $3ed6: $fa $00 $df
  jp Jump_000_3ab0                                ; $3ed9: $c3 $b0 $3a


Call_000_3edc:
  sla a                                           ; $3edc: $cb $27
  ld e, a                                         ; $3ede: $5f
  ld d, $00                                       ; $3edf: $16 $00
  push de                                         ; $3ee1: $d5
  ld b, $00                                       ; $3ee2: $06 $00
  sla c                                           ; $3ee4: $cb $21
  ld a, [$dfa9]                                   ; $3ee6: $fa $a9 $df
  push bc                                         ; $3ee9: $c5
  call Call_000_3ab0                              ; $3eea: $cd $b0 $3a
  pop bc                                          ; $3eed: $c1
  ld a, [$dfa7]                                   ; $3eee: $fa $a7 $df
  ld l, a                                         ; $3ef1: $6f
  ld a, [$dfa8]                                   ; $3ef2: $fa $a8 $df
  ld h, a                                         ; $3ef5: $67
  inc hl                                          ; $3ef6: $23
  inc hl                                          ; $3ef7: $23
  ld a, [hl+]                                     ; $3ef8: $2a
  ld d, a                                         ; $3ef9: $57
  ld a, [hl-]                                     ; $3efa: $3a
  ld e, a                                         ; $3efb: $5f
  dec hl                                          ; $3efc: $2b
  dec hl                                          ; $3efd: $2b
  push hl                                         ; $3efe: $e5
  add hl, de                                      ; $3eff: $19
  add hl, bc                                      ; $3f00: $09
  ld a, [hl+]                                     ; $3f01: $2a
  ld l, [hl]                                      ; $3f02: $6e
  ld h, a                                         ; $3f03: $67
  pop bc                                          ; $3f04: $c1
  add hl, bc                                      ; $3f05: $09
  ld c, l                                         ; $3f06: $4d
  ld b, h                                         ; $3f07: $44
  pop de                                          ; $3f08: $d1
  ld hl, $dfcb                                    ; $3f09: $21 $cb $df
  add hl, de                                      ; $3f0c: $19
  ld a, c                                         ; $3f0d: $79
  ld [hl+], a                                     ; $3f0e: $22
  ld [hl], b                                      ; $3f0f: $70
  ld a, [$df00]                                   ; $3f10: $fa $00 $df
  jp Jump_000_3ab0                                ; $3f13: $c3 $b0 $3a


Call_000_3f16:
  sla a                                           ; $3f16: $cb $27
  ld e, a                                         ; $3f18: $5f
  ld d, $00                                       ; $3f19: $16 $00
  ld a, [$dfa9]                                   ; $3f1b: $fa $a9 $df
  call Call_000_3ab0                              ; $3f1e: $cd $b0 $3a
  xor a                                           ; $3f21: $af
  ld [$dffa], a                                   ; $3f22: $ea $fa $df
  ld hl, $dfcb                                    ; $3f25: $21 $cb $df
  add hl, de                                      ; $3f28: $19
  push hl                                         ; $3f29: $e5
  ld a, [hl+]                                     ; $3f2a: $2a
  ld h, [hl]                                      ; $3f2b: $66
  ld l, a                                         ; $3f2c: $6f
  ld a, [hl+]                                     ; $3f2d: $2a
  inc hl                                          ; $3f2e: $23
  swap a                                          ; $3f2f: $cb $37
  and $0f                                         ; $3f31: $e6 $0f
  ld e, a                                         ; $3f33: $5f
  ld a, [hl+]                                     ; $3f34: $2a
  ld d, a                                         ; $3f35: $57
  bit 7, a                                        ; $3f36: $cb $7f
  jr z, jr_000_3f5f                               ; $3f38: $28 $25

  cp $ff                                          ; $3f3a: $fe $ff
  jr z, jr_000_3f4d                               ; $3f3c: $28 $0f

jr_000_3f3e:
  and $7f                                         ; $3f3e: $e6 $7f
  ld d, a                                         ; $3f40: $57
  ld a, e                                         ; $3f41: $7b
  and a                                           ; $3f42: $a7
  jr z, jr_000_3f56                               ; $3f43: $28 $11

  ld a, [hl+]                                     ; $3f45: $2a
  or $80                                          ; $3f46: $f6 $80
  ld [$dffa], a                                   ; $3f48: $ea $fa $df
  jr jr_000_3f5f                                  ; $3f4b: $18 $12

jr_000_3f4d:
  ld d, a                                         ; $3f4d: $57
  ld a, e                                         ; $3f4e: $7b
  cp $0f                                          ; $3f4f: $fe $0f
  ld a, d                                         ; $3f51: $7a
  jr nz, jr_000_3f3e                              ; $3f52: $20 $ea

  jr jr_000_3f6e                                  ; $3f54: $18 $18

jr_000_3f56:
  ld a, d                                         ; $3f56: $7a
  or $80                                          ; $3f57: $f6 $80
  ld d, a                                         ; $3f59: $57
  ld [$dffa], a                                   ; $3f5a: $ea $fa $df
  jr jr_000_3f6e                                  ; $3f5d: $18 $0f

jr_000_3f5f:
  ld a, [hl+]                                     ; $3f5f: $2a
  bit 7, a                                        ; $3f60: $cb $7f
  jr z, jr_000_3f6b                               ; $3f62: $28 $07

  and $7f                                         ; $3f64: $e6 $7f
  ld b, a                                         ; $3f66: $47
  ld a, [hl+]                                     ; $3f67: $2a
  ld c, a                                         ; $3f68: $4f
  jr jr_000_3f6e                                  ; $3f69: $18 $03

jr_000_3f6b:
  ld c, a                                         ; $3f6b: $4f
  ld b, $00                                       ; $3f6c: $06 $00

jr_000_3f6e:
  ld a, h                                         ; $3f6e: $7c
  ld [$dffc], a                                   ; $3f6f: $ea $fc $df
  ld a, l                                         ; $3f72: $7d
  pop hl                                          ; $3f73: $e1
  ld [hl+], a                                     ; $3f74: $22
  ld a, [$dffc]                                   ; $3f75: $fa $fc $df
  ld [hl], a                                      ; $3f78: $77
  ld a, [$df00]                                   ; $3f79: $fa $00 $df
  push bc                                         ; $3f7c: $c5
  call Call_000_3ab0                              ; $3f7d: $cd $b0 $3a
  pop bc                                          ; $3f80: $c1
  ld a, [$dffa]                                   ; $3f81: $fa $fa $df
  ret                                             ; $3f84: $c9


Call_000_3f85:
  sla a                                           ; $3f85: $cb $27
  ld e, a                                         ; $3f87: $5f
  ld d, $00                                       ; $3f88: $16 $00
  ld a, [$dfa9]                                   ; $3f8a: $fa $a9 $df
  call Call_000_3ab0                              ; $3f8d: $cd $b0 $3a
  ld hl, $dfcb                                    ; $3f90: $21 $cb $df
  add hl, de                                      ; $3f93: $19
  ld a, [hl+]                                     ; $3f94: $2a
  ld h, [hl]                                      ; $3f95: $66
  ld l, a                                         ; $3f96: $6f
  ld a, [hl+]                                     ; $3f97: $2a
  ld b, a                                         ; $3f98: $47
  ld a, [hl+]                                     ; $3f99: $2a
  ld c, a                                         ; $3f9a: $4f
  ld hl, $dfd5                                    ; $3f9b: $21 $d5 $df
  push de                                         ; $3f9e: $d5
  ld a, e                                         ; $3f9f: $7b
  srl a                                           ; $3fa0: $cb $3f
  add e                                           ; $3fa2: $83
  ld e, a                                         ; $3fa3: $5f
  add hl, de                                      ; $3fa4: $19
  pop de                                          ; $3fa5: $d1
  ld a, [hl]                                      ; $3fa6: $7e
  add c                                           ; $3fa7: $81
  ld [hl+], a                                     ; $3fa8: $22
  push af                                         ; $3fa9: $f5
  ld a, b                                         ; $3faa: $78
  and $0f                                         ; $3fab: $e6 $0f
  ld c, a                                         ; $3fad: $4f
  pop af                                          ; $3fae: $f1
  ld a, [hl]                                      ; $3faf: $7e
  adc c                                           ; $3fb0: $89
  ld [hl], a                                      ; $3fb1: $77
  ld a, [$df00]                                   ; $3fb2: $fa $00 $df
  jp Jump_000_3ab0                                ; $3fb5: $c3 $b0 $3a


Call_000_3fb8:
  push de                                         ; $3fb8: $d5
  push hl                                         ; $3fb9: $e5
  push bc                                         ; $3fba: $c5
  ld e, a                                         ; $3fbb: $5f
  ld d, $00                                       ; $3fbc: $16 $00
  ld hl, $dfb1                                    ; $3fbe: $21 $b1 $df
  ld a, [hl+]                                     ; $3fc1: $2a
  ld h, [hl]                                      ; $3fc2: $66
  ld l, a                                         ; $3fc3: $6f
  add hl, de                                      ; $3fc4: $19
  ld a, [$dfa9]                                   ; $3fc5: $fa $a9 $df
  call Call_000_3ab0                              ; $3fc8: $cd $b0 $3a
  ld e, [hl]                                      ; $3fcb: $5e
  ld a, [$df00]                                   ; $3fcc: $fa $00 $df
  call Call_000_3ab0                              ; $3fcf: $cd $b0 $3a
  ld a, e                                         ; $3fd2: $7b
  pop bc                                          ; $3fd3: $c1
  pop hl                                          ; $3fd4: $e1
  pop de                                          ; $3fd5: $d1
  ret                                             ; $3fd6: $c9


  rst $38                                         ; $3fd7: $ff
  rst $38                                         ; $3fd8: $ff
  rst $38                                         ; $3fd9: $ff
  rst $38                                         ; $3fda: $ff
  rst $38                                         ; $3fdb: $ff
  rst $38                                         ; $3fdc: $ff
  rst $38                                         ; $3fdd: $ff
  rst $38                                         ; $3fde: $ff
  rst $38                                         ; $3fdf: $ff
  rst $38                                         ; $3fe0: $ff
  rst $38                                         ; $3fe1: $ff
  rst $38                                         ; $3fe2: $ff
  rst $38                                         ; $3fe3: $ff
  rst $38                                         ; $3fe4: $ff
  rst $38                                         ; $3fe5: $ff
  rst $38                                         ; $3fe6: $ff
  rst $38                                         ; $3fe7: $ff
  rst $38                                         ; $3fe8: $ff
  rst $38                                         ; $3fe9: $ff
  rst $38                                         ; $3fea: $ff
  rst $38                                         ; $3feb: $ff
  rst $38                                         ; $3fec: $ff
  rst $38                                         ; $3fed: $ff
  rst $38                                         ; $3fee: $ff
  rst $38                                         ; $3fef: $ff
  rst $38                                         ; $3ff0: $ff
  rst $38                                         ; $3ff1: $ff
  rst $38                                         ; $3ff2: $ff
  rst $38                                         ; $3ff3: $ff
  rst $38                                         ; $3ff4: $ff
  rst $38                                         ; $3ff5: $ff
  rst $38                                         ; $3ff6: $ff
  rst $38                                         ; $3ff7: $ff
  rst $38                                         ; $3ff8: $ff
  rst $38                                         ; $3ff9: $ff
  rst $38                                         ; $3ffa: $ff
  rst $38                                         ; $3ffb: $ff
  rst $38                                         ; $3ffc: $ff
  rst $38                                         ; $3ffd: $ff
  rst $38                                         ; $3ffe: $ff
  rst $38                                         ; $3fff: $ff
