EHZ_2p_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     EHZ_2p_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       EHZ_2p_DAC
	smpsHeaderFM        EHZ_2p_FM1,	$00, $00
	smpsHeaderFM        EHZ_2p_FM2,	$00, $00
	smpsHeaderFM        EHZ_2p_FM3,	$00, $08
	smpsHeaderFM        EHZ_2p_FM4,	$00, $10
	smpsHeaderFM        EHZ_2p_FM5,	$00, $16
	smpsHeaderFM        EHZ_2p_FM6,	$00, $0C
	smpsHeaderPSG       EHZ_2p_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       EHZ_2p_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       EHZ_2p_PSG3,	$00, $00, $00, fTone_02

; DAC Data
EHZ_2p_DAC:
	dc.b	nRst, $30, $85, $54, $0C, $54, $0C, $24, $0C, $24, $0C, $18
	dc.b	$18, $0C, $0C, $18, $54, $0C, $54, $0C, $24, $0C, $24, $0C
	dc.b	$18, $18, $0C, $0C, $0C, $0C, $7F, nRst, $41, $85, $60, $18
	dc.b	$18, $0C, $0C, $18, $7F, nRst, $41, $85, $30, $30, $18, $18
	dc.b	$0C, $0C, $0C, $0C, $7F, nRst, nRst, $22, $85, $18, $18, $0C
	dc.b	$0C, $18, $7F, nRst, $41, $85, $30, $24, $0C, $18, $18, $0C
	dc.b	$0C, $0C, $0C, $7F, nRst, nRst, $22, $85, $18, $18, $0C, $0C
	dc.b	$18, $7F, nRst, $41, $85, $30, $30, $18, $12, $12, $0C, $0C
	dc.b	$0C, $7F, nRst, $41, $85, $60, $18, $18, $0C, $0C, $18, $7F
	dc.b	nRst, $41, $85, $30, $30, $18, $18, $0C, $0C, $0C, $0C, $54
	dc.b	$0C, $54, $0C, $54, $0C, $48, $0C, $0C, $54, $0C, $54, $0C
	dc.b	$24, $0C, $24, $0C, $18, $18, $0C, $0C, $0C, $0C, $7F, nRst
	dc.b	$41, $85, $60, $18, $18, $0C, $0C, $18, $7F, nRst, $41, $85
	dc.b	$30, $30, $18, $12, $12, $0C, $18, $7F, nRst, $41, $85, $60
	dc.b	$18, $18, $0C, $0C, $18, $7F, nRst, $41, $85, $30, $30, $18
	dc.b	$18, $0C, $0C, $0C, $0C, $7F, nRst, $41, $85, $60, $18, $18
	dc.b	$0C, $0C, $18, $7F, nRst, $41, $85, $37
	smpsStop

; FM1 Data
EHZ_2p_FM1:
	dc.b	nRst, $30
	smpsSetvoice        $00

EHZ_2p_Loop77:
	dc.b	nD4, $03, nRst, $03, nA4, nRst, nG4, nA4, nRst, nE4, nRst, nF4
	dc.b	nRst, nA4, nG4, nF4, nE4, nD4, nRst, nD4, nA4, nRst, nG4, nA4
	dc.b	nRst, nE4, nRst, nF4, nRst, nA4, nC4, nRst, nCs4, nRst
	smpsLoop            $00, $03, EHZ_2p_Loop77
	dc.b	nD4, nRst, nA4, nRst, nG4, nA4, nRst, nE4, nRst, nF4, nRst, nA4
	dc.b	nG4, nF4, nE4, nD4, nRst, nD4, nA4, nRst, nG4, nA4, nRst, nC5
	dc.b	nRst, nC5, nA4, nA5, nE5, nE6, nC5, nCs6

EHZ_2p_Loop78:
	dc.b	nA3, nRst, nF4, nRst, nE4, nF4, nRst, nC4, nRst, nD4, nRst, nF4
	dc.b	nE4, nD4, nC4, nA3, nRst, nA3, nF4, nRst, nE4, nF4, nRst, nC4
	dc.b	nRst, nD4, nRst, nF4, nA3, nRst, nA3, nRst
	smpsLoop            $00, $03, EHZ_2p_Loop78
	dc.b	nA3, nRst, nF4, nRst, nE4, nF4, nRst, nC4, nRst, nD4, nRst, nF4
	dc.b	nE4, nD4, nC4, nA3, nRst, nA3, nF4, nRst, nE4, nF4, nRst, nG5
	dc.b	nRst, nA5, nRst, nC6, nC6, nA5, nG5, nG5, $02, nRst, $01
	smpsModOff
	smpsSetvoice        $02
	smpsAlterVol        $03
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop79:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop79
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop7A:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop7A
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nB6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nCs7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop7B:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop7B
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $06
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nF6

EHZ_2p_Loop7C:
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_Loop7C
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $03, nRst
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $03, nRst
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6, smpsNoAttack, $02

EHZ_2p_Loop7D:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop7D
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $03, nRst
	smpsAlterVol        $00
	dc.b	nFs6, nRst
	smpsModSet          $00, $01, $07, $04
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nF6, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nG6, smpsNoAttack, $13, nRst, $02
	smpsModOff
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, smpsNoAttack, $03, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop7E:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop7E
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop7F:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop7F
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nB6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nCs7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop80:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop80
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $06
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nF6

EHZ_2p_Loop81:
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_Loop81
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $03, nRst
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $FD
	smpsAlterNote       $FE
	dc.b	nEb4
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF4, smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	nE6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nG6
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsModOff
	smpsModOn
	smpsAlterVol        $FD
	smpsAlterNote       $FD
	dc.b	nG3
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote       $00
	smpsModOn
	dc.b	smpsNoAttack, nA3, smpsNoAttack, $2D
	smpsSetvoice        $00
	smpsModOff
	dc.b	$05, nRst, $01, nF4, $05, nRst, $01, nE4, $02, nRst, $01, nF4
	dc.b	$02, nRst, $01, nE4, $05, nRst, $01, nG4, $05, nRst, $01, nF4
	dc.b	$05, nRst, $01, nE4, $02, nRst, $01, nF4, $02, nRst, $01, nE4
	dc.b	$02, nRst, $01, nC4, $02, nRst, $01, nD4, $05, nRst, $01, nA4
	dc.b	$05

EHZ_2p_Loop82:
	dc.b	nRst, $01, nG4, $02, nRst, $01, nA4, $02
	smpsLoop            $00, $02, EHZ_2p_Loop82
	dc.b	nRst, $01, nC5, $05, nRst, $01, nA4, $05, nRst, $01, nG4, $05
	dc.b	nRst, $01, nA4, $05, nRst, $01, nA3, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nE4, $02, nRst, $01, nF4, $02, nRst, $01, nE4, $05
	dc.b	nRst, $01, nG4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $02
	dc.b	nRst, $01, nF4, $02, nRst, $01, nE4, $02, nRst, $01, nC4, $02
	dc.b	nRst, $01, nD4, $05, nRst, $01, nA4, $05

EHZ_2p_Loop83:
	dc.b	nRst, $01, nG4, $02, nRst, $01, nA4, $02
	smpsLoop            $00, $02, EHZ_2p_Loop83
	dc.b	nRst, $01, nC5, $05, nRst, $01, nA4, $02, nC5, nA4, nG4, $05
	dc.b	nRst, $01, nE4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $02
	dc.b	nRst, $01, nF4, $02, nRst, $01, nE4, $05, nRst, $01, nC4, $05
	dc.b	nRst, $01, nD4, $02, nRst, $01, nA3, $02, nRst, $01, nC4, $05
	dc.b	nRst, $01, nG3, $05, nRst, $01, nE3, $05, nRst, $01, nD3, $05
	dc.b	nRst, $01, nE3, $05, nRst, $01, nF3, $05, nRst, $01, nG3, $05
	dc.b	nRst, $01, nA3, $05, nRst, $01, nCs4, $05, nRst, $01, nD4, $05
	dc.b	nRst, $01, nE4, $05, nRst, $01, nCs4, $05, nRst, $01, nA4, $05
	dc.b	nRst, $01, nG4, $02, nRst, $01, nA4, $02, nRst, $01, nG4, $05
	dc.b	nRst, $01, nCs5, $05, nRst, $01, nA4, $05, nRst, $01, nG4, $02
	dc.b	nRst, $01, nA4, $02, nRst, $01, nG4, $02, nRst, $01, nE4, $02
	dc.b	nRst, $01, nCs4, $05, nRst, $01, nCs5, $05

EHZ_2p_Loop84:
	dc.b	nRst, $01, nA4, $02, nRst, $01, nCs5, $02
	smpsLoop            $00, $02, EHZ_2p_Loop84
	dc.b	nRst, $01, nE5, $05, nRst, $01, nCs5, $02, nE5, nCs5, nF4, $05
	dc.b	nRst, $01, nE4, $05, nRst, $01, nF3, $05, nRst, $01, nD4, $05
	dc.b	nRst, $01, nC4, $02, nRst, $01, nD4, $02, nRst, $01, nC4, $05
	dc.b	nRst, $01, nE4, $05, nRst, $01, nD4, $05, nRst, $01, nC4, $02
	dc.b	nRst, $01, nD4, $02, nRst, $01, nC4, $02, nRst, $01, nG3, $02
	dc.b	nRst, $01, nA3, $05, nRst, $01, nF4, $05

EHZ_2p_Loop85:
	dc.b	nRst, $01, nE4, $02, nRst, $01, nF4, $02
	smpsLoop            $00, $02, EHZ_2p_Loop85
	dc.b	nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $05
	dc.b	nRst, $01, nF4, $05, nRst, $01, nF3, $05, nRst, $01, nD4, $05
	dc.b	nRst, $01, nC4, $02, nRst, $01, nD4, $02, nRst, $01, nC4, $05
	dc.b	nRst, $01, nE4, $05, nRst, $01, nD4, $05, nRst, $01, nC4, $02
	dc.b	nRst, $01, nD4, $02, nRst, $01, nC4, $02, nRst, $01, nG3, $02
	dc.b	nRst, $01, nA3, $05, nRst, $01, nF4, $05

EHZ_2p_Loop86:
	dc.b	nRst, $01, nE4, $02, nRst, $01, nF4, $02
	smpsLoop            $00, $02, EHZ_2p_Loop86
	dc.b	nRst, $01, nA4, $05, nRst, $01, nF4, $02, nA4, nF4, nE4, $05
	dc.b	nRst, $01, nC4, $05, nRst, $01, nD4, $05, nRst, $01, nC4, $02
	dc.b	nRst, $01, nD4, $02, nRst, $01, nC4, $05, nRst, $01, nG3, $05
	dc.b	nRst, $01, nA3, $02, nRst, $01, nE3, $02, nRst, $01, nG3, $05
	dc.b	nRst, $01, nE3, $05, nRst, $01, nC3, $05, nRst, $01, nA3, $05
	dc.b	nRst, $01, nB2, $05, nRst, $01, nCs3, $05, nRst, $01, nE3, $05
	dc.b	nRst, $01, nE3, $05, nRst, $01, nG3, $05, nRst, $01, nA3, $05
	dc.b	nRst, $01, nAb3, $05, nRst, $01, nA3, $05, nRst, $01, nCs4, $05
	dc.b	nRst, $01, nA3, $02, nRst, $01, nCs4, $02, nRst, $01, nA3, $05
	dc.b	nRst, $01, nA4, $05, nRst, $01, nCs4, $05

EHZ_2p_Loop87:
	dc.b	nRst, $01, nA3, $02, nRst, $01, nCs4, $02
	smpsLoop            $00, $02, EHZ_2p_Loop87
	dc.b	nRst, $01, nA3, $05, nRst, $01, nA4, $05

EHZ_2p_Loop88:
	dc.b	nRst, $01, nE4, $02, nRst, $01, nA4, $02
	smpsLoop            $00, $02, EHZ_2p_Loop88
	dc.b	nRst, $01, nCs6, $05, nRst, $01, nA4, $05, nRst, $01
	smpsAlterNote       $15
	dc.b	nG4, $03
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, nA4, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $14, nRst, $7D, $7D, $7D, $7D, $7D, $04
	smpsModOff
	smpsSetvoice        $02
	smpsAlterVol        $03
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop89:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop89
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop8A:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop8A
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nB6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nCs7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop8B:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop8B
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $06
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nF6

EHZ_2p_Loop8C:
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_Loop8C
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $03, nRst
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $03, nRst
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6, smpsNoAttack, $02

EHZ_2p_Loop8D:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop8D
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $03, nRst
	smpsAlterVol        $00
	dc.b	nFs6, nRst
	smpsModOn
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nF6, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nG6, smpsNoAttack, $13, nRst, $02
	smpsModOff
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, smpsNoAttack, $03, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop8E:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop8E
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop8F:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop8F
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nB6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nCs7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop90:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop90
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $06
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nF6

EHZ_2p_Loop91:
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_Loop91
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $03, nRst
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $FD
	smpsAlterNote       $FE
	dc.b	nEb4
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF4, smpsNoAttack, $03
	smpsAlterVol        $03
	dc.b	nE6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nG6
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsModOff
	smpsModOn
	smpsAlterVol        $FD
	smpsAlterNote       $FD
	dc.b	nG3
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, nAb3
	smpsAlterNote       $00
	smpsModOn
	dc.b	smpsNoAttack, nA3, smpsNoAttack, $2D
	smpsSetvoice        $00
	dc.b	nRst, $06

EHZ_2p_Loop92:
	dc.b	nA4, $03, nRst, nG4, nA4, nRst, nE4, nRst, nF4, nRst, nA4, nG4
	dc.b	nF4, nE4, nD4, nRst, nD4, nA4, nRst, nG4, nA4, nRst, nE4, nRst
	dc.b	nF4, nRst, nA4, nC4, nRst, nCs4, nRst, nD4, nRst
	smpsLoop            $00, $03, EHZ_2p_Loop92
	dc.b	nA4, nRst, nG4, nA4, nRst, nE4, nRst, nF4, nRst, nA4, nG4, nF4
	dc.b	nE4, nD4, nRst, nD4, nA4, nRst, nG4, nA4, nRst, nC5, nRst, nC5
	dc.b	nA4, nA5, nE5, nE6, nC5, nCs6

EHZ_2p_Loop93:
	dc.b	nA3, nRst, nF4, nRst, nE4, nF4, nRst, nC4, nRst, nD4, nRst, nF4
	dc.b	nE4, nD4, nC4, nA3, nRst, nA3, nF4, nRst, nE4, nF4, nRst, nC4
	dc.b	nRst, nD4, nRst, nF4, nA3, nRst, nA3, nRst
	smpsLoop            $00, $03, EHZ_2p_Loop93
	dc.b	nA3, nRst, nF4, nRst, nE4, nF4, nRst, nC4, nRst, nD4, nRst, nF4
	dc.b	nE4, nD4, nC4, nA3, nRst, nA3, nF4, nRst, nE4, nF4, nRst, nG5
	dc.b	nRst, nA5, nRst, nC6, nC6, nA5, nG5, nG5, $02, nRst, $01
	smpsModOff
	smpsSetvoice        $02
	smpsAlterVol        $03
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop94:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop94
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop95:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop95
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nB6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nCs7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop96:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop96
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $06
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nF6

EHZ_2p_Loop97:
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_Loop97
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $03, nRst
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $03, nRst
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6, smpsNoAttack, $02

EHZ_2p_Loop98:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop98
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $03, nRst
	smpsAlterVol        $00
	dc.b	nFs6, nRst
	smpsModOn
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nF6, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nG6, smpsNoAttack, $13, nRst, $02
	smpsModOff
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, smpsNoAttack, $03, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop99:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop99
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop9A:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop9A
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nB6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nCs7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nF5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nC6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop9B:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop9B
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nA6, $06
	smpsAlterVol        $00
	dc.b	nF6, $02
	smpsAlterVol        $00
	dc.b	nA6
	smpsAlterVol        $00
	dc.b	nF6

EHZ_2p_Loop9C:
	smpsAlterVol        $00
	dc.b	nC6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_Loop9C
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC6
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nD6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nG5, $03, nRst
	smpsAlterVol        $00
	dc.b	nD6, $05, nRst, $01
	smpsAlterNote       $FD
	smpsAlterVol        $00
	dc.b	nD6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nE6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nE6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nA5, $03, nRst
	smpsAlterVol        $00
	dc.b	nE6, $05, nRst, $01
	smpsModOff
	smpsModOn
	smpsAlterNote       $FD
	smpsAlterVol        $00
	dc.b	nAb6
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nA6
	smpsAlterNote       $00
	smpsModOn
	dc.b	smpsNoAttack, nBb6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $FD

EHZ_2p_Loop9D:
	dc.b	nF5, $02, nRst, $01
	smpsAlterVol        $00
	smpsLoop            $00, $02, EHZ_2p_Loop9D
	dc.b	nC5, $03, nRst
	smpsAlterVol        $00
	dc.b	nBb4, nRst
	smpsModOn
	smpsAlterNote       $FE
	smpsAlterVol        $00
	dc.b	nBb4, $01
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nC5, smpsNoAttack, $13, nRst, $02
	smpsModOff
	smpsAlterVol        $03
	dc.b	nFs5, smpsNoAttack, $03, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nE6
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop9E:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop9E
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nE6
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_Loop9F:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsLoop            $00, $02, EHZ_2p_Loop9F
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC7
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD7
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsModOff
	smpsAlterVol        $00
	dc.b	nFs5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nE6
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs6
	smpsModOff
	smpsModOff
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, $02

EHZ_2p_LoopA0:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsLoop            $00, $02, EHZ_2p_LoopA0
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $06
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsAlterVol        $00
	dc.b	nBb6
	smpsAlterVol        $00
	dc.b	nFs6

EHZ_2p_LoopA1:
	smpsAlterVol        $00
	dc.b	nCs6, $05, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_LoopA1
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nCs6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nD6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nEb6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $03, nRst
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $03, nRst
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nE6
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs6, smpsNoAttack, $02

EHZ_2p_LoopA2:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsLoop            $00, $02, EHZ_2p_LoopA2
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $03, nRst
	smpsAlterVol        $00
	dc.b	nG6, nRst
	smpsModOn
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nFs6, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nG6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nAb6, smpsNoAttack, $13, nRst, $02
	smpsAlterVol        $00
	dc.b	nFs5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6, $03, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nE6
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs6, smpsNoAttack, $02

EHZ_2p_LoopA3:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsLoop            $00, $02, EHZ_2p_LoopA3
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs5, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nEb6
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nE6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb5, $05, nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nE6
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs6, smpsNoAttack, $02

EHZ_2p_LoopA4:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nF6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02
	smpsLoop            $00, $02, EHZ_2p_LoopA4
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nC7
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nCs7
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nD7, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nD7, $05, nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $0F, nRst, $03

EHZ_2p_LoopA5:
	smpsAlterVol        $00
	dc.b	nBb6, $02, nRst, $01
	smpsLoop            $00, $02, EHZ_2p_LoopA5
	smpsAlterVol        $00
	dc.b	nBb6, $05, nRst, $01

EHZ_2p_LoopA6:
	smpsAlterVol        $00
	dc.b	nAb6, $02, nRst, $04
	smpsLoop            $00, $02, EHZ_2p_LoopA6
	smpsAlterVol        $00
	smpsAlterNote       $FD
	dc.b	nAb6, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nA6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nBb6, $09

EHZ_2p_LoopA7:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $02
	smpsLoop            $00, $02, EHZ_2p_LoopA7
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nAb6, $05

EHZ_2p_LoopA8:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nBb6, $02
	smpsLoop            $00, $03, EHZ_2p_LoopA8

EHZ_2p_LoopA9:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nAb6, $02
	smpsLoop            $00, $02, EHZ_2p_LoopA9
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nFs6, $02

EHZ_2p_LoopAA:
	dc.b	nRst, $01
	smpsAlterVol        $00
	dc.b	nCs6, $05
	smpsLoop            $00, $02, EHZ_2p_LoopAA
	dc.b	nRst, $01
	smpsAlterVol        $00
	smpsAlterNote       $FE
	dc.b	nCs6
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nD6
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nEb6, smpsNoAttack, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nEb6, $02, nRst, $01
	smpsAlterVol        $00
	dc.b	nAb5, $03, nRst
	smpsAlterVol        $00
	dc.b	nEb6, $05, nRst, $01
	smpsAlterVol        $FD
	smpsAlterNote       $FE
	dc.b	nE4
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nF4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nFs4, smpsNoAttack, $03
	smpsAlterVol        $03

EHZ_2p_LoopAB:
	dc.b	nEb7, $02, nRst, $01
	smpsAlterVol        $00
	smpsLoop            $00, $02, EHZ_2p_LoopAB
	dc.b	nCs7, $02, nRst, $04
	smpsAlterVol        $00
	dc.b	nAb6, $02, nRst, $04
	smpsAlterNote       $FE
	smpsAlterVol        $FD
	dc.b	nAb4, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nA4
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nBb4, smpsNoAttack, $7F, smpsNoAttack, $0E
	smpsStop

; FM2 Data
EHZ_2p_FM2:
	dc.b	nRst

EHZ_2p_Loop75:
	dc.b	$5C
	smpsLoop            $00, $0C, EHZ_2p_Loop75
	smpsModOff
	smpsSetvoice        $05
	dc.b	$08
	smpsModOff
	dc.b	$0D
	smpsModSet          $00, $01, $03, $04
	dc.b	$02
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	$01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	nF5
	smpsPan             panRight, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nBb5
	smpsPan             panRight, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $20
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nEb6
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nE6
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nEb7
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE7
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF7
	smpsPan             panLeft, $00
	dc.b	nRst, $05
	smpsModOff
	dc.b	$48

EHZ_2p_Loop76:
	dc.b	$43
	smpsLoop            $00, $10, EHZ_2p_Loop76
	dc.b	$02
	smpsModOff
	dc.b	$01
	smpsModOff
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsAlterVol        $0B
	dc.b	nD5, $06, nA4, nF5, nA4, nE5, nA4, nD5, nC5, $0C, nA4, $06
	dc.b	nA5, nA4, nE5, nA4, nC5, nA4, nD5, nA4, nF5, nA4, nE5, nA4
	dc.b	nD5, nC5, $0C, nA4, $06, nA5, nA4, nE5, nA4, nC5, nCs5, nD5
	dc.b	nA4, nF5, nA4, nE5, nA4, nD5, nC5, $0C, nA4, $06, nA5, nA4
	dc.b	nE5, nA4, nC5, nA4, nD5, nA4, nF5, nA4, nE5, nA4, nF5, nG5
	dc.b	$0C, nA4, $06, nF5, nA4, nE5, nA4
	smpsAlterVol        $03
	dc.b	nE5, nE5, nF5, nA4, nA5, nA4, nG5, nA4, nF5, nE5, $0C, nA4
	dc.b	$06, nC6, nA4, nG5, nA4, nE5, nE5, nF5, nA4, nA5, nA4, nG5
	dc.b	nA5, nA4, nBb5, $0C, nA4, $06, nA5, nA4, nG5, nA4, nE5, nA4
	dc.b	nBb4, nA4, nD5, nA4, nC5, nA4, nBb4, nBb4, $0C, $06, nF5, nBb4
	dc.b	nE5, nBb4, nD5, nD5, nCs5, nE5, nE5, nCs5, nD5, nD5, nD5, nE5
	dc.b	$0C, $06, nA5, nB5, nCs6, $16, nRst, $7F, $7F, $24
	smpsModOff
	smpsSetvoice        $05
	dc.b	$08
	smpsModOff
	dc.b	$0D
	smpsModOn
	dc.b	$02
	smpsPan             panLeft, $00
	smpsAlterNote       $0B
	dc.b	$01
	smpsPan             panRight, $00
	smpsAlterVol        $F2
	smpsAlterNote       $16
	dc.b	nF5
	smpsPan             panRight, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nBb5
	smpsPan             panRight, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $20
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nEb6
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nE6
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nEb7
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE7
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF7
	smpsPan             panLeft, $00
	dc.b	nRst, $05
	smpsModOff
	dc.b	$48, $7F, $7F, $7F, $16
	smpsModOff
	dc.b	$08
	smpsModOff
	dc.b	$0D
	smpsModOn
	dc.b	$02
	smpsPan             panLeft, $00
	smpsAlterNote       $0B
	dc.b	$01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	nF5
	smpsPan             panRight, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nBb5
	smpsPan             panRight, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $20
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nEb6
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nE6
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nEb7
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE7
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF7
	smpsPan             panLeft, $00
	dc.b	nRst, $78
	smpsPan             panLeft, $00
	smpsAlterNote       $ED
	dc.b	nE7, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nE6
	smpsPan             panLeft, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsModOn
	smpsAlterNote       $11
	dc.b	smpsNoAttack, nEb6
	smpsPan             panLeft, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $1E
	dc.b	smpsNoAttack, nBb5
	smpsPan             panCenter, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nF5
	smpsPan             panRight, $00
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	nRst
	smpsPan             panRight, $00
	dc.b	$2F
	smpsModOff
	dc.b	$08
	smpsModOff
	dc.b	$0D
	smpsModOn
	dc.b	$02
	smpsPan             panLeft, $00
	smpsAlterNote       $0B
	dc.b	$01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	nF5
	smpsPan             panRight, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nBb5
	smpsPan             panRight, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $20
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nEb6
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nE6
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nEb7
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE7
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF7
	smpsPan             panLeft, $00
	dc.b	nRst, $78
	smpsPan             panLeft, $00
	smpsAlterNote       $ED
	dc.b	nE7, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nE6
	smpsPan             panLeft, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsModOn
	smpsAlterNote       $11
	dc.b	smpsNoAttack, nEb6
	smpsPan             panLeft, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $1E
	dc.b	smpsNoAttack, nBb5
	smpsPan             panCenter, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $13
	dc.b	smpsNoAttack, nF5
	smpsPan             panRight, $00
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $06
	dc.b	nRst, $7F, $7F, $52
	smpsModOff
	dc.b	$08
	smpsModOff
	dc.b	$0D
	smpsModOn
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$01
	smpsPan             panLeft, $00
	smpsAlterNote       $0B
	dc.b	$01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	nF5
	smpsPan             panRight, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nBb5
	smpsPan             panRight, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $20
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nEb6
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nE6
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nEb7
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE7
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF7
	smpsPan             panLeft, $00
	dc.b	nRst, $05
	smpsModOff
	dc.b	$6F, $6F, $6F, $6F, $6F, $6F, $01
	smpsModOff
	dc.b	$08
	smpsModOff
	dc.b	$0D
	smpsModOn
	dc.b	$02
	smpsPan             panLeft, $00
	smpsAlterNote       $0B
	dc.b	$01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	nF5
	smpsPan             panRight, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nFs5
	smpsPan             panRight, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsPan             panRight, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA5
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nBb5
	smpsPan             panRight, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panRight, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $20
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nB5
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nC6
	smpsPan             panCenter, $00
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nCs6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nD6
	smpsPan             panCenter, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, nEb6
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, nE6
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nF6
	smpsPan             panLeft, $00
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nFs6
	smpsPan             panLeft, $00
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nG6
	smpsPan             panLeft, $00
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nAb6
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, nA6
	smpsPan             panLeft, $00
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, nBb6
	smpsPan             panLeft, $00
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nB6
	smpsPan             panLeft, $00
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC7
	smpsPan             panLeft, $00
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nCs7
	smpsPan             panLeft, $00
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, nD7
	smpsPan             panLeft, $00
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nEb7
	smpsPan             panLeft, $00
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nE7
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nF7
	smpsPan             panLeft, $00
	dc.b	nRst, $7F, $7F, $7F, $03
	smpsPan             panCenter, $00
	smpsModOff
	smpsSetvoice        $09
	smpsAlterVol        $0B
	dc.b	nBb4, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $06
	smpsAlterNote       $FF
	dc.b	nF5, $02
	smpsAlterNote       $00
	smpsModOff
	dc.b	smpsNoAttack, nFs5, $0A, nF5, $06, nFs5, nRst
	smpsAlterNote       $FE
	dc.b	nFs5, $02, smpsNoAttack, nG5, $01
	smpsAlterNote       $00
	smpsModOff
	dc.b	smpsNoAttack, nAb5, $0F, nFs5, $0C, nF5, $07
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nCs5
	smpsModOff
	dc.b	smpsNoAttack, $05, nD5, $06, nEb5, $0C
	smpsAlterNote       $FD
	dc.b	nAb5, $02
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, nA5, $01
	smpsAlterNote       $00
	smpsModOff
	dc.b	smpsNoAttack, nBb5, $09, nAb5, $06, nBb5, nRst
	smpsAlterNote       $FE
	dc.b	nB5, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nC6, $01
	smpsAlterNote       $00
	smpsModOff
	dc.b	smpsNoAttack, nCs6, $0F, nB5, $0C
	smpsAlterNote       $FD
	dc.b	nAb5, $02
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, nA5, $01
	smpsAlterNote       $00
	smpsModOff
	dc.b	smpsNoAttack, nBb5, $09, nAb5, $07
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	$01
	smpsModOff
	dc.b	smpsNoAttack, $17, nF5, $06, nFs5, nRst
	smpsAlterNote       $FE
	dc.b	nFs5, $02, smpsNoAttack, nG5, $01
	smpsAlterNote       $00
	smpsModOff
	dc.b	smpsNoAttack, nAb5, $0F, nFs5, $0C, nF5, $07
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	smpsAlterVol        $03
	dc.b	nAb4
	smpsModOff
	dc.b	smpsNoAttack, $05, nA4, $06, nBb4, nAb4, nCs5
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nD5, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nEb5, $09, nBb4, $06, nF5
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nFs5, $0A, nAb5, $06, nBb5, nEb6
	smpsAlterNote       $FE
	dc.b	nB5, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nC6, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nCs6, $03, nBb5, $06, nAb5, $0C
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, nA5, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nBb5, $09, nEb6, $0C
	smpsAlterNote       $FE
	dc.b	nB5, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nC6, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nCs6, $03, nBb5, $06, nRst, nBb5, $2B, nRst, $05, nBb5, $12
	smpsAlterNote       $FE
	dc.b	nE6, $02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nF6, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nFs6, $09, nF6, $06, nEb6, nCs6
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nD6, $01
	smpsAlterNote       $00
	smpsModOff
	smpsModOff
	dc.b	smpsNoAttack, nEb6, $1C, nRst, $05, nEb6, $06, nCs6, nBb5, $05, nRst, $01
	dc.b	nFs5, $0B
	smpsStop

; FM3 Data
EHZ_2p_FM3:
	dc.b	nRst, $30
	smpsPan             panRight, $00
	smpsSetvoice        $01

EHZ_2p_Loop65:
	dc.b	nD4, $0B, nRst, $01
	smpsLoop            $00, $04, EHZ_2p_Loop65
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nE4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01
	smpsLoop            $01, $04, EHZ_2p_Loop65

EHZ_2p_Loop66:
	dc.b	nD4, $0B, nRst, $01
	smpsLoop            $00, $04, EHZ_2p_Loop66
	dc.b	nA4, $0B, nRst, $01, nD4, $06, nA4, $05, nRst, $01, nD4, $06
	dc.b	nD5, $05, nRst, $01, nD4, $06, nA4, $05, nRst, $01
	smpsLoop            $01, $02, EHZ_2p_Loop66

EHZ_2p_Loop67:
	dc.b	nA4, $0B, nRst, $01, nD4, $06, nA4, $05, nRst, $01, nD4, $06
	dc.b	nD5, $05, nRst, $01, nD4, $06, nA4, $05, nRst, $01
	smpsLoop            $00, $03, EHZ_2p_Loop67
	dc.b	nD4, $05, nRst, $01, nD4, $05, nRst, $01, nE4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nG4, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC5, $05, nRst, $01, nD4, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nC5, $05, nRst, $01, nA4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nF4, $0B, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nA4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nD4, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nC5, $05, nRst, $01, nA4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nD4, $05, nRst, $01, nD4, $05, nRst, $01
	dc.b	nE4, $05, nRst, $01, nF4, $0B, nRst, $01, nG4, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC5, $05, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nC5, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nC4, $05, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nE4, $05, nRst, $01, nF4, $05, nRst, $01, nD5, $0B, nRst, $01
	dc.b	nD5, $0B, nRst, $01, nE5, $0B, nRst, $01, nE5, $0B, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nA4, $05, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nD5, $05, nRst, $01, nC5, $05, nRst, $01, nG4, $10, nRst, $02
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nD5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nD5, $05, nRst, $01, nD5, $05, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nD4, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nG4, $0B, nRst, $01, nG4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nG4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $05

EHZ_2p_Loop68:
	dc.b	nRst, $01, nF4, $0B
	smpsLoop            $00, $05, EHZ_2p_Loop68
	dc.b	nRst, $01, nD4, $0B, nRst, $01, nA3, $0B, nRst, $01, nA3, $0B
	dc.b	nRst, $01, nF4, $0B, nRst, $01, nD4, $0B, nRst, $01, nD4, $0B
	dc.b	nRst, $01, nA4, $0B

EHZ_2p_Loop69:
	dc.b	nRst, $01, nA4, $05, nRst, $01, nD4, $05
	smpsLoop            $00, $02, EHZ_2p_Loop69
	dc.b	nRst, $01, nD4, $05, nRst, $01, nG4, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nF3, $05, nRst, $01, nF3, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nF4, $05, nRst, $01, nF3, $05, nRst, $01, nA3, $05
	dc.b	nRst, $01, nA3, $05, nRst, $01, nD4, $05, nRst, $01, nD4, $05
	dc.b	nRst, $01
	smpsAlterVol        $04
	dc.b	nD3, $0B, nRst, $01
	smpsAlterVol        $00
	dc.b	nD3, $0B, nRst, $01
	smpsAlterVol        $FC

EHZ_2p_Loop6A:
	dc.b	nG3, $0B, nRst, $01
	smpsLoop            $00, $06, EHZ_2p_Loop6A
	dc.b	nE5, $05, nRst, $01, nCs5, $05, nRst, $01, nA4, $03, nCs5, nE5
	dc.b	$05, nRst, $01, nA4, $03, nE4, nA4, nE4, nRst, nA4, $08, nRst
	dc.b	$01, nCs6, $03, nCs5, nA4, $05, nRst, $01, nA4, $03, nCs5, nE5
	dc.b	$05, nRst, $01, nE5, $03, nCs6, nCs6, $05, nRst, $01, nD5, $05
	dc.b	nRst, $01, nC5, $05, nRst, $01, nF4, $0B, nRst, $01, nD4, $0B
	dc.b	nRst, $01, nA3, $0B, nRst, $01, nA3, $0B, nRst, $01, nF4, $0B
	dc.b	nRst, $01, nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nA4, $0B

EHZ_2p_Loop6B:
	dc.b	nRst, $01, nA4, $05, nRst, $01, nD4, $05
	smpsLoop            $00, $02, EHZ_2p_Loop6B
	dc.b	nRst, $01, nD4, $05, nRst, $01, nG4, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nF3, $05, nRst, $01, nF3, $05, nRst, $01, nF4, $05
	dc.b	nRst, $01, nF4, $05, nRst, $01, nF3, $05, nRst, $01, nA3, $05
	dc.b	nRst, $01, nA3, $05, nRst, $01, nD4, $05, nRst, $01, nD4, $05
	dc.b	nRst, $01
	smpsAlterVol        $04
	dc.b	nD3, $0B, nRst, $01
	smpsAlterVol        $00
	dc.b	nD3, $0B, nRst, $01
	smpsAlterVol        $FC
	dc.b	nG3, $0B, nRst, $01, nG3, $0B

EHZ_2p_Loop6C:
	dc.b	nRst, $01, nAb3, $0B
	smpsLoop            $00, $04, EHZ_2p_Loop6C
	dc.b	nRst, $01, nE5, $05, nRst, $01, nCs5, $05, nRst, $01, nA4, $03
	dc.b	nCs5, nE5, $05, nRst, $01, nA4, $03, nE4, nA4, nE4, nRst, nA4
	dc.b	$08, nRst, $01, nE5, $05, nRst, $01, nCs5, $05, nRst, $01, nE4
	dc.b	$03, nA4, nE4, nA4, nE5, $05, nRst, $01, nCs5, $05, nRst, $01
	dc.b	nE5, $03, nCs6, nCs6, $05, nRst, $01, nBb3, $06, nA4, nBb3, nA4
	dc.b	nBb3, nA4, nBb3, nBb3, nC4, nC5, nA5, nA4, nE5, nC4, nC4, nG3
	dc.b	nA3, nA4, nA3, nA4, nA3, nA3, nA3, nA3, nA4, nA3, nE5, $03
	dc.b	nA3, nE5, nF5, nA3, $06, nF5, nE3

EHZ_2p_Loop6D:
	dc.b	nA4, nBb3
	smpsLoop            $00, $04, EHZ_2p_Loop6D
	dc.b	nBb3, nC4, nC5, nA5, nA4, nE5, nC4, nC4, nG3, nA3, nA4, nF5
	dc.b	nA4, nA3, nE4, nF4, nG5, nA3, nA4, nD4, nE5, nD4, nG5, nD4
	dc.b	nC6
	smpsAlterVol        $02
	dc.b	nBb5, nA5
	smpsAlterVol        $00
	dc.b	nD6, nA5
	smpsAlterVol        $00
	dc.b	nC6, nBb5
	smpsAlterVol        $FE
	dc.b	nBb3
	smpsAlterVol        $02
	dc.b	nG5
	smpsAlterVol        $FE
	dc.b	nC4
	smpsAlterVol        $02
	dc.b	nA5, nC6, nA5, nG5
	smpsAlterVol        $00
	dc.b	nA5
	smpsAlterVol        $00
	dc.b	nE5
	smpsAlterVol        $00
	dc.b	nG5
	smpsAlterVol        $00
	dc.b	nD5, $03, nEb5, nE5, nF5
	smpsAlterVol        $00
	dc.b	$03, nA5, $09
	smpsAlterVol        $00
	dc.b	nE5, $06
	smpsAlterVol        $00
	dc.b	nF5
	smpsAlterVol        $00
	dc.b	nD5
	smpsAlterVol        $00
	dc.b	nG5, $0C
	smpsAlterVol        $00
	dc.b	nD5, $06, nF5, $03
	smpsAlterVol        $FE
	dc.b	nA3
	smpsAlterVol        $02
	dc.b	nD5, $06
	smpsAlterVol        $00
	dc.b	nE5, nD5
	smpsAlterVol        $00
	dc.b	nE5, nD5
	smpsAlterVol        $00
	dc.b	nBb4, nA4
	smpsAlterVol        $00
	dc.b	nD5, nA4
	smpsAlterVol        $00
	dc.b	nC5, nA4
	smpsAlterVol        $00
	dc.b	nBb4
	smpsAlterVol        $00
	dc.b	$06
	smpsAlterVol        $FE
	dc.b	nBb3
	smpsAlterVol        $02
	dc.b	nBb4
	smpsAlterVol        $00
	dc.b	nF5, nBb4
	smpsAlterVol        $00
	dc.b	nE5, nBb4
	smpsAlterVol        $00
	dc.b	nD5
	smpsAlterVol        $00
	dc.b	$06
	smpsAlterVol        $00
	dc.b	nCs5
	smpsAlterVol        $00
	dc.b	nE5
	smpsAlterVol        $00
	dc.b	$06, nCs5
	smpsAlterVol        $00
	dc.b	nD5
	smpsAlterVol        $00
	dc.b	nE5
	smpsAlterVol        $00
	dc.b	nD5
	smpsAlterVol        $00
	dc.b	nE5, $0C, $06
	smpsAlterVol        $00
	dc.b	nA5, nD6
	smpsAlterVol        $00
	dc.b	nE5, nAb5, nCs6, $0C
	smpsAlterVol        $FE
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nD4, $05, nRst, $01, nD4, $05, nRst, $01, nE4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nG4, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC5, $05, nRst, $01, nD4, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nC5, $05, nRst, $01, nA4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nF4, $0B, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nA4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nD5, $0B, nRst, $01, nD5, $0B, nRst, $01
	dc.b	nE5, $0B, nRst, $01, nE5, $0B, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nBb4, $05, nRst, $01, nD5, $05, nRst, $01
	dc.b	nC5, $05, nRst, $01, nG4, $10, nRst, $02, nD4, $0B, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nC5, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nC4, $05, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nE4, $05, nRst, $01, nF4, $05, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nC5, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nC4, $05, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nD5, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nD5, $05, nRst, $01, nD5, $05, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nC5, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nC4, $05, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nD4, $05, nRst, $01, nA4, $05, nRst, $01, nG4, $0B, nRst, $01
	dc.b	nG4, $0B, nRst, $01, nA4, $05, nRst, $01, nG4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nE4, $05

EHZ_2p_Loop6E:
	dc.b	nRst, $01, nF4, $0B
	smpsLoop            $00, $04, EHZ_2p_Loop6E
	dc.b	nRst, $01
	smpsPan             panRight, $00

EHZ_2p_Loop6F:
	dc.b	nD4, $0B, nRst, $01
	smpsLoop            $00, $04, EHZ_2p_Loop6F
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nE4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01
	smpsLoop            $01, $04, EHZ_2p_Loop6F

EHZ_2p_Loop70:
	dc.b	nD4, $0B, nRst, $01
	smpsLoop            $00, $04, EHZ_2p_Loop70
	dc.b	nA4, $0B, nRst, $01, nD4, $06, nA4, $05, nRst, $01, nD4, $06
	dc.b	nD5, $05, nRst, $01, nD4, $06, nA4, $05, nRst, $01
	smpsLoop            $01, $02, EHZ_2p_Loop70

EHZ_2p_Loop71:
	dc.b	nA4, $0B, nRst, $01, nD4, $06, nA4, $05, nRst, $01, nD4, $06
	dc.b	nD5, $05, nRst, $01, nD4, $06, nA4, $05, nRst, $01
	smpsLoop            $00, $03, EHZ_2p_Loop71
	dc.b	nD4, $05, nRst, $01, nD4, $05, nRst, $01, nE4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nG4, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC5, $05, nRst, $01, nD4, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nC5, $05, nRst, $01, nA4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nF4, $0B, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nA4, $05, nRst, $01, nF4, $05, nRst, $01, nE4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nD4, $0B, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nC5, $05, nRst, $01, nA4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nD4, $05, nRst, $01, nD4, $05, nRst, $01
	dc.b	nE4, $05, nRst, $01, nF4, $0B, nRst, $01, nG4, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC5, $05, nRst, $01, nD4, $0B, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nC5, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nC4, $05, nRst, $01, nC4, $05, nRst, $01, nF4, $0B, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nA4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nE4, $05, nRst, $01, nF4, $05, nRst, $01, nD5, $0B, nRst, $01
	dc.b	nD5, $0B, nRst, $01, nE5, $0B, nRst, $01, nE5, $0B, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nA4, $05, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nD5, $05, nRst, $01, nC5, $05, nRst, $01, nG4, $10, nRst, $02
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nE4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nD5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nD5, $05, nRst, $01, nD5, $05, nRst, $01
	dc.b	nD4, $0B, nRst, $01, nD4, $0B, nRst, $01, nC5, $05, nRst, $01
	dc.b	nA4, $05, nRst, $01, nC4, $05, nRst, $01, nC4, $05, nRst, $01
	dc.b	nF4, $0B, nRst, $01, nF4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nD4, $05, nRst, $01, nA4, $05, nRst, $01
	dc.b	nG4, $0B, nRst, $01, nG4, $0B, nRst, $01, nA4, $05, nRst, $01
	dc.b	nE5, $05, nRst, $01, nA4, $05, nRst, $01, nBb4, $0B, nRst, $01
	dc.b	nBb5, $05

EHZ_2p_Loop72:
	dc.b	nRst, $01, nG5, $05
	smpsLoop            $00, $03, EHZ_2p_Loop72
	dc.b	nRst, $07, nC6, $0C, nEb4, $0B, nRst, $01, nEb4, $0B, nRst, $01
	dc.b	nCs5, $05, nRst, $01, nBb4, $05, nRst, $01, nCs4, $05, nRst, $01
	dc.b	nCs4, $05, nRst, $01, nFs4, $0B, nRst, $01, nFs4, $0B, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nFs4, $05, nRst, $01, nF4, $05, nRst, $01
	dc.b	nFs4, $05, nRst, $01, nEb4, $0B, nRst, $01, nEb4, $0B, nRst, $01
	dc.b	nCs5, $05, nRst, $01, nBb4, $05, nRst, $01, nCs4, $05, nRst, $01
	dc.b	nCs4, $05, nRst, $01, nEb4, $05, nRst, $01, nEb4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nFs4, $0B, nRst, $01, nAb4, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nCs5, $05, nRst, $01, nEb4, $0B, nRst, $01
	dc.b	nEb4, $0B, nRst, $01, nCs5, $05, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nCs4, $05, nRst, $01, nCs4, $05, nRst, $01, nFs4, $0B, nRst, $01
	dc.b	nFs4, $0B, nRst, $01, nBb4, $05, nRst, $01, nFs4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01, nFs4, $05, nRst, $01, nEb5, $0B, nRst, $01
	dc.b	nEb5, $0B, nRst, $01, nF5, $0B, nRst, $01, nF5, $0B, nRst, $01
	dc.b	nB4, $05, nRst, $01, nBb4, $05, nRst, $01, nB4, $05, nRst, $01
	dc.b	nEb5, $05, nRst, $01, nCs5, $05, nRst, $01, nAb4, $10, nRst, $02
	dc.b	nEb4, $0B, nRst, $01, nEb4, $0B, nRst, $01, nCs5, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nCs4, $05, nRst, $01, nCs4, $05, nRst, $01
	dc.b	nFs4, $0B, nRst, $01, nFs4, $0B, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nFs4, $05, nRst, $01, nF4, $05, nRst, $01, nFs4, $05, nRst, $01
	dc.b	nEb4, $0B, nRst, $01, nEb4, $0B, nRst, $01, nCs5, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nCs4, $05, nRst, $01, nCs4, $05, nRst, $01
	dc.b	nFs4, $0B, nRst, $01, nFs4, $0B, nRst, $01, nEb5, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nEb5, $05, nRst, $01, nEb5, $05, nRst, $01
	dc.b	nEb4, $0B, nRst, $01, nEb4, $0B, nRst, $01, nCs5, $05, nRst, $01
	dc.b	nBb4, $05, nRst, $01, nCs4, $05, nRst, $01, nCs4, $05, nRst, $01
	dc.b	nFs4, $0B, nRst, $01, nFs4, $0B, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nFs4, $05, nRst, $01, nEb4, $05, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nAb4, $0B, nRst, $01, nAb4, $0B, nRst, $01, nBb4, $05, nRst, $01
	dc.b	nAb4, $05, nRst, $01, nFs4, $05, nRst, $01, nF4, $05

EHZ_2p_Loop73:
	dc.b	nRst, $01, nFs4, $0B
	smpsLoop            $00, $04, EHZ_2p_Loop73
	dc.b	nRst, $01, nB3, $06, nBb4, nB3, nBb4, nB3, nBb4, nB3, nB3, nCs4
	dc.b	nCs5, nBb5, nBb4, nF5, nCs4, nCs4, nAb3, nBb3, nBb4, nBb3, nBb4, nBb3
	dc.b	nBb3, nBb3, nBb3, nBb4, nBb3, nF5, $03, nBb3, nF5, nFs5, nBb3, $06
	dc.b	nFs5, nF3

EHZ_2p_Loop74:
	dc.b	nBb4, nB3
	smpsLoop            $00, $04, EHZ_2p_Loop74
	dc.b	nB3, nCs4, nCs5, nBb5, nBb4, nF5, nCs4, nCs4, nAb3, nBb3, nBb4, nFs5
	dc.b	nBb4, nBb3, nF4, nFs4, nAb5, nBb3, nBb4, nEb4, nF5, nEb4, nAb5, nEb4
	dc.b	nCs6
	smpsAlterVol        $02
	dc.b	nB5, nBb5
	smpsAlterVol        $00
	dc.b	nEb6, nBb5
	smpsAlterVol        $00
	dc.b	nCs6, nB5
	smpsAlterVol        $FE
	dc.b	nB3
	smpsAlterVol        $02
	dc.b	nAb5
	smpsAlterVol        $FE
	dc.b	nCs4
	smpsAlterVol        $02
	dc.b	nBb5, nCs6, nBb5, nAb5
	smpsAlterVol        $00
	dc.b	nBb5
	smpsAlterVol        $00
	dc.b	nF5
	smpsAlterVol        $00
	dc.b	nAb5
	smpsAlterVol        $00
	dc.b	nEb5, $03, nE5, nF5, nFs5
	smpsAlterVol        $00
	dc.b	$03, nBb5, $09
	smpsAlterVol        $00
	dc.b	nF5, $06
	smpsAlterVol        $00
	dc.b	nFs5
	smpsAlterVol        $00
	dc.b	nEb5
	smpsAlterVol        $00
	dc.b	nAb5, $0C
	smpsAlterVol        $00
	dc.b	nEb5, $06, nFs5, $03
	smpsAlterVol        $FE
	dc.b	nBb3
	smpsAlterVol        $02
	dc.b	nEb5, $06
	smpsAlterVol        $00
	dc.b	nF5, nEb5
	smpsAlterVol        $00
	dc.b	nF5, nEb5
	smpsAlterVol        $00
	dc.b	nB4, nBb4
	smpsAlterVol        $00
	dc.b	nEb5, nBb4
	smpsAlterVol        $00
	dc.b	nCs5, nBb4
	smpsAlterVol        $00
	dc.b	nB4
	smpsAlterVol        $00
	dc.b	$0C
	smpsStop

; FM4 Data
EHZ_2p_FM4:
	dc.b	nRst, $30
	smpsSetvoice        $02

EHZ_2p_Loop05:
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	smpsLoop            $00, $3A, EHZ_2p_Loop05

EHZ_2p_Loop06:
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	smpsLoop            $00, $02, EHZ_2p_Loop06
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nA1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nC2, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC3, $05

EHZ_2p_Loop07:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop07

EHZ_2p_Loop08:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop08

EHZ_2p_Loop09:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop09
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop0A:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop0A

EHZ_2p_Loop0B:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop0B
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop0C:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop0C

EHZ_2p_Loop0D:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop0D

EHZ_2p_Loop0E:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop0E
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop0F:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop0F

EHZ_2p_Loop10:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop10

EHZ_2p_Loop11:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop11
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05

EHZ_2p_Loop12:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop12

EHZ_2p_Loop13:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop13

EHZ_2p_Loop14:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop14
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop15:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop15

EHZ_2p_Loop16:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop16
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop17:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop17

EHZ_2p_Loop18:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop18

EHZ_2p_Loop19:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop19
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop1A:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop1A

EHZ_2p_Loop1B:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop1B
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop1C:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $08, EHZ_2p_Loop1C

EHZ_2p_Loop1D:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $08, EHZ_2p_Loop1D

EHZ_2p_Loop1E:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $08, EHZ_2p_Loop1E

EHZ_2p_Loop1F:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $07, EHZ_2p_Loop1F
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE1, $05

EHZ_2p_Loop20:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $08, EHZ_2p_Loop20

EHZ_2p_Loop21:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $08, EHZ_2p_Loop21

EHZ_2p_Loop22:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop22

EHZ_2p_Loop23:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nAb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nAb1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop23

EHZ_2p_Loop24:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $05, EHZ_2p_Loop24
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nB0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05

EHZ_2p_Loop25:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop25

EHZ_2p_Loop26:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $04, EHZ_2p_Loop26

EHZ_2p_Loop27:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $07, EHZ_2p_Loop27
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop28:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop28

EHZ_2p_Loop29:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $04, EHZ_2p_Loop29

EHZ_2p_Loop2A:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $05, EHZ_2p_Loop2A
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop2B:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop2B

EHZ_2p_Loop2C:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $04, EHZ_2p_Loop2C

EHZ_2p_Loop2D:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $07, EHZ_2p_Loop2D
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop2E:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $08, EHZ_2p_Loop2E

EHZ_2p_Loop2F:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop2F
	dc.b	nRst, $07
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02, nA1, $04, nRst, $02, nB1, $04, nRst, $02
	dc.b	nCs2, $04, nRst, $08, nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05

EHZ_2p_Loop30:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop30

EHZ_2p_Loop31:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop31

EHZ_2p_Loop32:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop32
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop33:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop33

EHZ_2p_Loop34:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop34
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop35:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop35

EHZ_2p_Loop36:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop36

EHZ_2p_Loop37:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop37
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop38:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop38

EHZ_2p_Loop39:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop39

EHZ_2p_Loop3A:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop3A
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05

EHZ_2p_Loop3B:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop3B

EHZ_2p_Loop3C:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop3C

EHZ_2p_Loop3D:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop3D
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop3E:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop3E

EHZ_2p_Loop3F:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop3F
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop40:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop40

EHZ_2p_Loop41:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop41

EHZ_2p_Loop42:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop42
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop43:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop43

EHZ_2p_Loop44:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop44
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop45:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $3A, EHZ_2p_Loop45

EHZ_2p_Loop46:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop46
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nA1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nC2, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC3, $05

EHZ_2p_Loop47:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop47

EHZ_2p_Loop48:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop48

EHZ_2p_Loop49:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop49
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop4A:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop4A

EHZ_2p_Loop4B:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop4B
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop4C:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop4C

EHZ_2p_Loop4D:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop4D

EHZ_2p_Loop4E:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop4E
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop4F:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop4F

EHZ_2p_Loop50:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop50

EHZ_2p_Loop51:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop51
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05

EHZ_2p_Loop52:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop52

EHZ_2p_Loop53:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop53

EHZ_2p_Loop54:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop54
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop55:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop55

EHZ_2p_Loop56:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop56
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nE1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nE2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG2, $05

EHZ_2p_Loop57:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop57

EHZ_2p_Loop58:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05
	smpsLoop            $00, $02, EHZ_2p_Loop58

EHZ_2p_Loop59:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nD1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nD2, $05
	smpsLoop            $00, $03, EHZ_2p_Loop59
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nC1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nC2, $05

EHZ_2p_Loop5A:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nG0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nG1, $05
	smpsLoop            $00, $02, EHZ_2p_Loop5A
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nA1, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nA0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05, nRst, $07, nBb1, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nBb0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nBb1, $05, nRst, $01, nC2, $06, nRst
	smpsAlterVol        $01
	dc.b	nB1, $0C
	smpsAlterVol        $FF
	dc.b	nB0, $06, nB1, nB0, nB1, nCs1, nCs2, nCs1, nCs2, nEb1, nEb2, nEb1
	dc.b	nEb2, nEb1, nEb2, nCs1, nCs2, nB0, nB1, nB0, nB1, nCs1, nCs2, nCs1
	dc.b	nCs2, nEb1, nEb2, nF1, nF2, nFs1, nFs2, nAb1, nAb2, nB0, nB1, nB0
	dc.b	nB1, nCs1, nCs2, nCs1, nCs2, nEb1, nEb2, nEb1, nEb2, nEb1, nEb2, nCs1
	dc.b	nCs2, nAb0, nAb1, nAb0, nAb1, nBb0, nBb1, nBb0, nBb1, nB0, nB1, nB0
	dc.b	nB1, nCs1, nCs2, nCs1, nC2, nB0, nB1, nB0, nB1, nCs1, nCs2, nCs1
	dc.b	nCs2, nEb1, nEb2, nEb1, nEb2, nEb1, nEb2, nCs1, nCs2, nB0, nB1, nB0
	dc.b	nB1, nCs1, nCs2, nCs1, nCs2, nEb1, nEb2, nF1, nF2, nFs1, nFs2, nAb1
	dc.b	nAb2, nB0, nB1, nB0, nB1, nCs1, nCs2, nCs1, nCs2, nEb1, nEb2, nEb1
	dc.b	nEb2, nEb1, nEb2, nCs1, nCs2, nAb0, nAb1, nRst, $0C, nBb0, $06, nBb1
	dc.b	nRst, $0C, nEb1, $06, nEb2, nF1, nF2, nFs1, nFs2, nAb1, nAb2

EHZ_2p_Loop5B:
	smpsAlterVol        $05
	dc.b	nB0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05, nRst, $01
	smpsLoop            $00, $04, EHZ_2p_Loop5B

EHZ_2p_Loop5C:
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05, nRst, $01
	smpsLoop            $00, $04, EHZ_2p_Loop5C

EHZ_2p_Loop5D:
	smpsAlterVol        $05
	dc.b	nEb1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nEb2, $05, nRst, $01
	smpsLoop            $00, $07, EHZ_2p_Loop5D
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05

EHZ_2p_Loop5E:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nB0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop5E

EHZ_2p_Loop5F:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05
	smpsLoop            $00, $04, EHZ_2p_Loop5F

EHZ_2p_Loop60:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nEb1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nEb2, $05
	smpsLoop            $00, $05, EHZ_2p_Loop60
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nF1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nFs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nFs2, $05, nRst, $01
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05

EHZ_2p_Loop61:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nB0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop61

EHZ_2p_Loop62:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05
	smpsLoop            $00, $04, EHZ_2p_Loop62

EHZ_2p_Loop63:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nEb1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nEb2, $05
	smpsLoop            $00, $07, EHZ_2p_Loop63
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nCs1, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nCs2, $05

EHZ_2p_Loop64:
	dc.b	nRst, $01
	smpsAlterVol        $05
	dc.b	nB0, $04, nRst, $02
	smpsAlterVol        $FB
	dc.b	nB1, $05
	smpsLoop            $00, $04, EHZ_2p_Loop64
	smpsStop

; FM5 Data
EHZ_2p_FM5:
	dc.b	nRst, $7F, $7F, $7F, $33
	smpsSetvoice        $02
	dc.b	nF3, $06, nRst, nFs3, nRst, nG3, nRst, nAb3, nRst, nA3, nRst, nBb3
	dc.b	nRst, nB3, nRst, nC4, nRst, nCs4, nRst, nD4, nRst, nEb4, nRst, nE4
	dc.b	nRst, nF4, nRst, nFs4, nRst, nG4, nRst, nAb4, nRst, nA4, nRst, nBb4
	dc.b	nRst, nB4, nRst, nC5, nRst, nCs5, nRst, nD5, nRst, nEb5, nRst, nE5
	dc.b	nRst, nF5, nRst, nFs5, nRst, nG5, nRst, nAb5, nRst, nA5, nRst, nBb5
	dc.b	nRst, nB5, nRst, nC6, nRst
	smpsSetvoice        $04
	smpsAlterVol        $EF
	dc.b	nD6, $16, nRst, $3E
	smpsAlterVol        $03
	dc.b	nC6, $06, nD6, $2B, nRst, $0B, nD6, nRst, $01, nE6, $0B, nRst
	dc.b	$01, nF6, $0B, nRst, $01, nG6, $0B, nRst, $01, nD6, $16, nRst
	dc.b	$4A, nG5, $16, nRst, $02, nA5, $16, nRst, $02, nBb5, $0B, nRst
	dc.b	$01, nB5, $0B, nRst, $01, nC6, $16, nRst, $02, nD6, $16, nRst
	dc.b	$3E, nC6, $06, nD6, $2B, nRst, $0B, nD6, nRst, $01, nE6, $0B
	dc.b	nRst, $01, nF6, $0B, nRst, $01, nG6, $0B, nRst, $01, nD6, $16
	dc.b	nRst, $4A, nG5, $16, nRst, $02, nA5, $16, nRst, $02, nD6, $16
	dc.b	nRst

EHZ_2p_Loop04:
	dc.b	$63
	smpsLoop            $00, $08, EHZ_2p_Loop04
	dc.b	$02
	smpsSetvoice        $07
	smpsAlterVol        $F8
	dc.b	nD6, $06, nA5, nF6, nA5, nE6, nA5, nD6, nC6, $0C, nA5, $06
	dc.b	nA6, nA5, nE6, nA5, nC6, nA5, nD6, nA5, nF6, nA5, nE6, nA5
	dc.b	nD6, nC6, $0C, nA5, $06, nA6, nA5, nE6, nA5, nC6, nCs6, nD6
	dc.b	nA5, nF6, nA5, nE6, nA5, nD6, nC6, $0C, nA5, $06, nA6, nA5
	dc.b	nE6, nA5, nC6, nA5, nD6, nA5, nF6, nA5, nE6, nA5, nF6, nG6
	dc.b	$0C, nA5, $06, nF6, nA5, nE6, nA5, nE6, nE6, nF5, nA4, nA5
	dc.b	nA4, nG5, nA4, nF5, nE5, $0C, nA4, $06, nC6, nA4, nG5, nA4
	dc.b	nE5, nE5, nF5, nA4, nA5, nA4, nG5, nA5, nA4, nBb5, $0C, nA4
	dc.b	$06, nA5, nA4, nG5, nA4, nE5, nA4, nBb4, nA4, nD5, nA4, nC5
	dc.b	nA4, nBb4, nBb4, $0C, $06, nF5, nBb4, nE5, nBb4, nD5, nD5, nCs5
	dc.b	nE5, nE5, nCs5, nD5, nD5, nD5, nE5, $0C, $06, nA5, nB5, nCs6
	dc.b	$16, nRst, $02
	smpsSetvoice        $04
	smpsAlterVol        $05
	dc.b	nD6, $16, nRst, $3E
	smpsAlterVol        $03
	dc.b	nC6, $06, nD6, $2B, nRst, $0B, nD6, nRst, $01, nE6, $0B, nRst
	dc.b	$01, nF6, $0B, nRst, $01, nG6, $0B, nRst, $01, nD6, $16, nRst
	dc.b	$4A, nG5, $16, nRst, $02, nA5, $16, nRst, $02, nBb5, $0B, nRst
	dc.b	$01, nB5, $0B, nRst, $01, nC6, $16, nRst, $02, nD6, $16, nRst
	dc.b	$3E, nC6, $06, nD6, $2B, nRst, $0B, nD6, nRst, $01, nE6, $0B
	dc.b	nRst, $01, nF6, $0B, nRst, $01, nG6, $0B, nRst, $01, nD6, $16
	dc.b	nRst, $4A, nG5, $16, nRst, $02, nA5, $16, nRst, $02, nD6, $16
	dc.b	nRst, $1A, nD6, $2B, nRst, $7F, $7F, $57
	smpsSetvoice        $02
	smpsAlterVol        $0E
	dc.b	nF3, $06, nRst, nFs3, nRst, nG3, nRst, nAb3, nRst, nA3, nRst, nBb3
	dc.b	nRst, nB3, nRst, nC4, nRst, nCs4, nRst, nD4, nRst, nEb4, nRst, nE4
	dc.b	nRst, nF4, nRst, nFs4, nRst, nG4, nRst, nAb4, nRst, nA4, nRst, nBb4
	dc.b	nRst, nB4, nRst, nC5, nRst, nCs5, nRst, nD5, nRst, nEb5, nRst, nE5
	dc.b	nRst, nF5, nRst, nFs5, nRst, nG5, nRst, nAb5, nRst, nA5, nRst, nBb5
	dc.b	nRst, nB5, nRst, nC6, nRst
	smpsSetvoice        $04
	smpsAlterVol        $F2
	dc.b	nD6, $16, nRst, $3E, nC6, $06, nD6, $2B, nRst, $0B, nD6, nRst
	dc.b	$01, nE6, $0B, nRst, $01, nF6, $0B, nRst, $01, nG6, $0B, nRst
	dc.b	$01, nD6, $16, nRst, $4A, nG5, $16, nRst, $02, nA5, $16, nRst
	dc.b	$02, nBb5, $0B, nRst, $01, nB5, $0B, nRst, $01, nC6, $16, nRst
	dc.b	$02, nD6, $16, nRst, $3E, nC6, $06, nD6, $2B, nRst, $0B, nD6
	dc.b	nRst, $01, nE6, $0B, nRst, $01, nF6, $0B, nRst, $01, nG6, $0B
	dc.b	nRst, $01, nD6, $16, nRst, $4A, nG5, $16, nRst, $02, nA5, $10
	dc.b	nRst, $02, nBb5, $10, nRst, $02, nB5, $0B, nRst, $01, nC6, $16
	dc.b	nRst, $02, nEb6, $16, nRst, $3E, nCs6, $06, nEb6, $2B, nRst, $0B
	dc.b	nEb6, nRst, $01, nF6, $0B, nRst, $01, nFs6, $0B, nRst, $01, nAb6
	dc.b	$0B, nRst, $01, nEb6, $16, nRst, $4A, nAb5, $16, nRst, $02, nBb5
	dc.b	$16, nRst, $02, nB5, $0B, nRst, $01, nC6, $0B, nRst, $01, nCs6
	dc.b	$16, nRst, $02, nEb6, $16, nRst, $3E, nCs6, $06, nEb6, $2B, nRst
	dc.b	$0B, nEb6, nRst, $01, nF6, $0B, nRst, $01, nFs6, $0B, nRst, $01
	dc.b	nAb6, $0B, nRst, $01, nEb6, $16, nRst, $4A, nAb5, $16, nRst, $02
	dc.b	nBb5, $16, nRst, $02, nEb6, $16
	smpsStop

; FM6 Data
EHZ_2p_FM6:
	dc.b	nRst

EHZ_2p_Loop00:
	dc.b	$70
	smpsLoop            $00, $15, EHZ_2p_Loop00
	smpsPan             panLeft, $00
	smpsSetvoice        $08

EHZ_2p_Loop01:
	dc.b	nBb3, $30, nC4, nA3, $60
	smpsLoop            $00, $03, EHZ_2p_Loop01
	dc.b	nBb3, $30, $30, nA3, $5B, nRst

EHZ_2p_Loop02:
	dc.b	$7B
	smpsLoop            $00, $19, EHZ_2p_Loop02
	dc.b	$02
	smpsPan             panLeft, $00

EHZ_2p_Loop03:
	dc.b	nB3, $30, nCs4, nBb3, $60
	smpsLoop            $00, $03, EHZ_2p_Loop03
	dc.b	nB3, $30
	smpsStop

; PSG3 Data
EHZ_2p_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $30, nMaxPSG

EHZ_2p_LoopAC:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $40, EHZ_2p_LoopAC

EHZ_2p_LoopAD:
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopAD
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopAE:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopAE
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopAF:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopAF
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02

EHZ_2p_LoopB0:
	dc.b	$06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $00, $02, EHZ_2p_LoopB0

EHZ_2p_LoopB1:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, EHZ_2p_LoopB1
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06, $03
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $03

EHZ_2p_LoopB2:
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB2
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB3:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB3
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB4:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB4
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB5:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB5
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB6:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB6
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB7:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB7
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB8:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB8
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopB9:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopB9
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopBA:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopBA
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopBB:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopBB
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopBC:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopBC
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopBD:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopBD
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopBE:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopBE
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopBF:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopBF
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC0:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC0
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC1:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC1
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC2:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC2
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC3:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC3
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC4:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC4
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC5:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC5
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$0C

EHZ_2p_LoopC6:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC6
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC7:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC7
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopC8:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopC8
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02

EHZ_2p_LoopC9:
	dc.b	$06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $00, $02, EHZ_2p_LoopC9

EHZ_2p_LoopCA:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, EHZ_2p_LoopCA
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06, $03
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $03

EHZ_2p_LoopCB:
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopCB
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopCC:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopCC
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopCD:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopCD
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopCE:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopCE
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopCF:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopCF
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD0:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD0
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD1:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD1
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD2:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD2
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD3:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $21, EHZ_2p_LoopD3

EHZ_2p_LoopD4:
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD4
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD5:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD5
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD6:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD6
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD7:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD7
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD8:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD8
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopD9:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopD9
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopDA:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopDA
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopDB:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, EHZ_2p_LoopDB
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$0C, $06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06, $18

EHZ_2p_LoopDC:
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsLoop            $00, $03, EHZ_2p_LoopDC
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopDD:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopDD
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopDE:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopDE
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopDF:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopDF
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE0:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE0
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE1:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE1
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE2:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE2
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $06
	smpsPSGvoice        fTone_01
	dc.b	$36
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE3:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE3
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE4:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE4
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE5:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE5
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE6:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE6
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE7:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE7
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE8:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, EHZ_2p_LoopE8
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

EHZ_2p_LoopE9:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, EHZ_2p_LoopE9
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$0D
	smpsStop

; PSG1 Data
EHZ_2p_PSG1:
; PSG2 Data
EHZ_2p_PSG2:
	smpsStop

EHZ_2p_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
;	$04
;	$71, $41, $31, $31, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$23, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $02
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $03
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

;	Voice $04
;	$3A
;	$64, $60, $60, $30, 	$9D, $9D, $50, $4C, 	$04, $06, $04, $05
;	$1F, $05, $01, $01, 	$A8, $25, $25, $55, 	$7F, $06, $14, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $06, $06, $06
	smpsVcCoarseFreq    $00, $00, $00, $04
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0C, $10, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $06, $04
	smpsVcDecayRate2    $01, $01, $05, $1F
	smpsVcDecayLevel    $05, $02, $02, $0A
	smpsVcReleaseRate   $05, $05, $05, $08
	smpsVcTotalLevel    $00, $14, $06, $7F

;	Voice $05
;	$27
;	$14, $30, $51, $62, 	$5C, $5C, $5C, $5C, 	$00, $00, $00, $00
;	$04, $1B, $04, $04, 	$FA, $F8, $F8, $FA, 	$10, $10, $10, $10
	smpsVcAlgorithm     $07
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $05, $03, $01
	smpsVcCoarseFreq    $02, $01, $00, $04
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1C, $1C, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $04, $04, $1B, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0A, $08, $08, $0A
	smpsVcTotalLevel    $10, $10, $10, $10

;	Voice $06
;	$02
;	$5F, $06, $12, $01, 	$9F, $91, $91, $51, 	$07, $05, $00, $00
;	$09, $06, $00, $00, 	$71, $83, $14, $05, 	$25, $28, $1E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $05
	smpsVcCoarseFreq    $01, $02, $06, $0F
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $11, $11, $11, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $05, $07
	smpsVcDecayRate2    $00, $00, $06, $09
	smpsVcDecayLevel    $00, $01, $08, $07
	smpsVcReleaseRate   $05, $04, $03, $01
	smpsVcTotalLevel    $00, $1E, $28, $25

;	Voice $07
;	$3B
;	$3A, $31, $71, $74, 	$DF, $1F, $1F, $DF, 	$00, $0A, $0A, $05
;	$00, $05, $05, $03, 	$0F, $5F, $1F, $5F, 	$32, $1E, $0F, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $04, $01, $01, $0A
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $00
	smpsVcDecayRate2    $03, $05, $05, $00
	smpsVcDecayLevel    $05, $01, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $1E, $32

;	Voice $08
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

;	Voice $09
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

