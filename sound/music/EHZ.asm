EHZ_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     EHZ_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       EHZ_DAC
	smpsHeaderFM        EHZ_FM1,	$00, $11
	smpsHeaderFM        EHZ_FM2,	$00, $0E
	smpsHeaderFM        EHZ_FM3,	$00, $0E
	smpsHeaderFM        EHZ_FM4,	$00, $0E
	smpsHeaderFM        EHZ_FM5,	$00, $0E
	smpsHeaderFM        EHZ_FM6,	$00, $0E
	smpsHeaderPSG       EHZ_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       EHZ_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       EHZ_PSG3,	$00, $05, $00, fTone_02

; DAC Data
EHZ_DAC:
	smpsPan             panCenter, $00
	dc.b	$85, $0C, dSnare, $06, $03, $09, dKick, $06, $06, dSnare, $03, dKick
	dc.b	dSnare, dKick, dSnare, dSnare, $85, $06, dKick, $03, $03, dSnare, $06, $03
	dc.b	$09, dKick, $06, $03, dSnare, dSnare, dKick

EHZ_Loop00:
	dc.b	dSnare, dKick, dSnare, dSnare, $85, $0C, dSnare, $06, $03, $09, dKick, $06
	dc.b	$06, dSnare, $03, dKick, dSnare, dKick, dSnare, dSnare, $85, $06, dKick, $03
	dc.b	$03, dSnare, $06, $03, $09, dKick, $06, dSnare, $03, $03, $03, $03
	smpsLoop            $00, $02, EHZ_Loop00
	dc.b	$03, dKick, dSnare, dSnare, $85, $0C, dSnare, $06, $03, $09, dKick, $06
	dc.b	$06, dSnare, $03, dKick, dSnare, dKick, dSnare, dSnare, dSnare, dSnare, dSnare, dKick
	dc.b	dSnare, $06, $03, $03, dVLowTimpani, $85, dKick, dSnare, $85, $08, $08, dKick
	dc.b	$03, dVLowTimpani, $02, dSnare, $03, $85, $0C, dKick, dKick, $06, dSnare, dKick
	dc.b	dSnare, dKick, $0C, $06, dSnare, dKick, $0C, $06, dSnare, dKick, $0C, $0C
	dc.b	$06, dSnare, $03, $03, dKick, $06, dSnare, dKick, dSnare, $03, $03, dKick
	dc.b	dSnare, dSnare, dSnare, dKick, dSnare, dSnare, $06, $03, $03, $03, $03, $85
	dc.b	$0C, dSnare, dKick, $06, dSnare, dSnare, dSnare, dKick, $0C, dSnare, $06, $06
	dc.b	dKick, $0C, dSnare, $06, $06, dKick, $0C, dSnare, dKick, $06, dSnare, $03
	dc.b	$03, $06, $06, dKick, dSnare, $03, $03, dKick, dSnare, dSnare, dSnare, dKick
	dc.b	dSnare, dSnare, $06, dKick, $03, dSnare, dSnare, dSnare

EHZ_Loop01:
	dc.b	dKick, $0C, $0C, $0C, $0C, $0C, $0C, $06, dSnare, dKick, $03, dSnare
	dc.b	$06, $03
	smpsLoop            $00, $07, EHZ_Loop01
	dc.b	dKick, $0C, $0C, $0C, $0C, $06, dSnare, $03, $03, $06, $03, $03
	dc.b	dKick, dSnare, dSnare, $06, $03, $03, $03, $03, $85, $60, $30, $30
	dc.b	$12, dKick, $03, $03, $85, $18, dKick, $12, $03, $03, $18, $12
	dc.b	$03, $03, $18, $85, $12, dKick, $03, $03, $85, $0C, dSnare, $03
	dc.b	$03, $03, $03, $85, $0C, dKick, $85, dKick, $85, dKick, $85, $06
	dc.b	dSnare, dKick, $03, dSnare, $06, $03, $85, $0C, dKick, $85, dKick, $85
	dc.b	$06, dSnare, $03, $03, $06, $03, $03, $09, $03, dKick, $06, dSnare
	dc.b	dKick, $0C, $0C, $06, dSnare, dKick, dSnare, dKick, $0C, $06, dSnare, dKick
	dc.b	$0C, $06, dSnare, dKick, $0C, $0C, $06, dSnare, $03, $03, dKick, $06
	dc.b	dSnare, dKick, dSnare, $03, $03, dKick, dSnare, dSnare, dSnare, dKick, dSnare, dSnare
	dc.b	$06, dKick, $03, dSnare, dSnare, dSnare, $85, $0C, dSnare, dKick, $06, dSnare
	dc.b	dSnare, dSnare, dKick, $0C, dSnare, $06, $06, dKick, $0C, dSnare, $06, $06
	dc.b	dKick, $0C, dSnare, dKick, $06, dSnare, $03, $03, $06, $06, dKick, dSnare
	dc.b	$03, $03, dKick, dSnare, dSnare, dSnare, dKick, dSnare, dSnare, $06, dKick, $03
	dc.b	dSnare, dSnare, dSnare, $85, $06, dLowTimpani, dSnare, $09, dLowTimpani, $03, dKick, $06
	dc.b	dSnare, $03, dVLowTimpani, dSnare

EHZ_Loop02:
	dc.b	$06, dVLowTimpani, dKick, dLowTimpani, dSnare, dSnare, $03, dLowTimpani, dKick, $06, dVLowTimpani, dSnare
	dc.b	dLowTimpani, dKick, dLowTimpani, dSnare, $03, dVLowTimpani, $06, dHiTimpani, $03, dKick, $06, dSnare
	dc.b	$03, $03
	smpsLoop            $00, $02, EHZ_Loop02
	dc.b	dHiTimpani, $06, dVLowTimpani, dKick, dLowTimpani, dSnare, dSnare, $03, dLowTimpani, dKick, $06, dVLowTimpani
	dc.b	dSnare, dSnare, dKick, dLowTimpani, dSnare, $03, dVLowTimpani, $06, dHiTimpani, $03, dKick, $06
	dc.b	dSnare, $03, $03, dHiTimpani, $06, dSnare, dKick, dLowTimpani, dSnare, dSnare, $03, dLowTimpani
	dc.b	dKick, $06, dVLowTimpani, dSnare, dLowTimpani, $1E, dKick, $18, $18, $0C, $0C, $06
	dc.b	dSnare, $03, $03, dKick

EHZ_Loop03:
	dc.b	dSnare, $06, $03, dKick, $0C, $0C, $0C, $0C, $0C, $0C, $06, dSnare
	dc.b	dKick, $03
	smpsLoop            $00, $06, EHZ_Loop03
	dc.b	dSnare, $06, $03, dKick, $0C, $0C, dSnare

EHZ_Loop04:
	dc.b	$02, $01
	smpsLoop            $00, $04, EHZ_Loop04
	dc.b	dKick

EHZ_Loop05:
	dc.b	$02, dSnare, $01
	smpsLoop            $00, $13, EHZ_Loop05
	dc.b	$02, $19
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
EHZ_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $06

EHZ_Loop24:
	dc.b	nCs4, $24, nC4, $18, nCs4, $24, nEb4, $18
	smpsLoop            $00, $02, EHZ_Loop24
	dc.b	nCs4, $24, nC4, $18, nCs4, $24, nA3, $18, nBb3, $24, nC4, $18
	dc.b	nF3, $24

EHZ_Loop25:
	dc.b	nEb4, $18, nF3, nC4, nE4
	smpsLoop            $00, $03, EHZ_Loop25
	dc.b	nEb4, nBb3, nA3, nG3, nFs3, nBb3, nC4, nCs4, nEb4, nBb3, nC4, nCs4
	dc.b	$30, nBb3, $18, nC4, nCs4, nEb4, nBb3, nC4, nBb3, $30, $18, nC4
	dc.b	nCs4, nEb4, nBb3, nC4, nCs4, $30, nBb3, $18, nC4, nCs4, nEb4, nBb3
	dc.b	nC4, nF3, $30, nBb3, nBb3, nD4

EHZ_Loop26:
	dc.b	nD4, nBb3, $18, nG3, nD4, $30, nBb3, $18, nG3, nCs4
	smpsLoop            $00, $02, EHZ_Loop26
	dc.b	nRst, nBb3, nA3, nG3, nFs3, nBb3, nA3, nG3, nFs3, nF3, nA3, nE4
	dc.b	nFs3, nBb3, nC4, nE4, nEb4, nF3, nA3, nE4, nFs3, nBb3, nC4, nG3
	dc.b	nEb4, nBb3, nA3, nG3, nFs3, nBb3, nC4, nE4, nFs3, nRst, nCs3, nEb3
	dc.b	nF3, nG3, nCs3, nEb3, nF3, $30, nCs3, $18, nEb3, nF3, nG3, nCs3
	dc.b	nEb3, nCs3, $30, $18, nEb3, nF3, nG3, nCs3, nEb3, nF3, $30, nCs3
	dc.b	$18, nEb3, nF3, nG3, nCs3, nEb3, nBb3, $30, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsStop

; FM2 Data
EHZ_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsAlterVol        $03

EHZ_Loop1A:
	dc.b	nCs5, $03, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop1A
	dc.b	nC5, nRst, $06, nC5, $03, nRst, $06, nC5, $03, nRst

EHZ_Loop1B:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop1B
	dc.b	nEb5, nRst, $06, nEb5, $03, nRst, $06, nEb5, $03, nRst

EHZ_Loop1C:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop1C
	dc.b	nAb4, nRst, $06, nAb4, $03, nRst, $06, nAb4, $03, nRst

EHZ_Loop1D:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop1D
	dc.b	nC5, nRst, $06, nEb5, $03, nRst, $06, nEb5, $03, nRst

EHZ_Loop1E:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop1E
	dc.b	nAb4, nRst, $06, nAb4, $03, nRst, $06, nAb4, $03, nRst

EHZ_Loop1F:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop1F
	dc.b	nEb5, nRst, $06, nC5, $03, nRst, $06, nEb5, $03, nRst

EHZ_Loop20:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop20
	dc.b	nAb4, nRst, $06, nAb4, $03, nRst, $06, nAb4, $03, nRst

EHZ_Loop21:
	dc.b	nCs5, nBb4, nF4
	smpsLoop            $00, $04, EHZ_Loop21
	dc.b	nC5, nRst, $06, nEb5, $03, nRst, $06, nC5, $03, nRst, nF4, $06
	dc.b	nRst, nCs4, nRst, nE4, nRst, nC4, nRst, nG4, nRst, nE4, nRst, nEb4
	dc.b	nRst, nFs4, nRst, nF4, nBb4, $03, nRst, nCs4, $06, nBb4, $03, nRst
	dc.b	nE4, $06, nA4, $03, nRst, nC4, $06, nA4, $03, nRst, nG4, $06
	dc.b	nC5, $03, nRst, nE4, $06, nC5, $03, nRst, nEb4, $06, nB4, $03
	dc.b	nRst, $09, nB4, $03, nRst, nF4, $06, nBb4, $03, nRst, nCs4, $06
	dc.b	nBb4, $03, nRst, nE4, $06, nA4, $03, nRst, nC4, $06, nA4, $03
	dc.b	nRst, nG4, $06, nC5, $03, nRst, nE4, $06, nC5, $03, nRst, nEb4
	dc.b	$06, nB4, $03, nRst, nFs4, $06, nB4, $03, nRst, nF4, $06, nBb4
	dc.b	$03, nRst, nCs4, $06, nBb4, $03, nRst, nE4, $06, nA4, $03, nRst
	dc.b	nC4, $06, nA4, $03, nRst, nG5, $06, nC5, $03, nRst, nE5, $06
	dc.b	nC5, $03, nRst, nEb5, $06, nB4, $03, nRst, $09, nB4, $03, nRst

EHZ_Loop22:
	dc.b	nBb4, $06, nRst, nF5, nRst, nC5, nRst, nF5, nRst, nCs5, nRst, nEb5
	dc.b	nF5, nEb5, nRst, nG5, nRst, nBb5, nF5, nC6, nCs6, $03, nRst, nC6
	dc.b	$06, nCs6, $03, nC6, nBb5, $06, nAb5, $03, nRst, nF5, $06, nAb5
	dc.b	$03, nRst, nEb5, $06, nF5, $03, nRst, nCs5, $18, nBb4, $06, nRst
	dc.b	nF5, nRst, nC5, nRst, nF5, nRst, nCs5, nRst, nEb5, nF5, nEb5, nRst
	dc.b	nG5, nRst, nBb5, nF5, nC6, nCs6, $03, nRst, nC6, $06, nCs6, $03
	dc.b	nC6, nBb5, $06, nAb5, $03, nRst, nBb5, $30
	smpsLoop            $00, $02, EHZ_Loop22
	dc.b	nRst

EHZ_Loop23:
	dc.b	$78
	smpsLoop            $00, $08, EHZ_Loop23
	dc.b	nF4, $06, nRst, nCs4, nRst, nE4, nRst, nC4, nRst, nG4, nRst, nE4
	dc.b	nRst, nEb4, nRst, nFs4, nRst, nF4, nCs5, $03, nRst, nCs4, $06, nCs5
	dc.b	$03, nRst, nE4, $06, nA4, $03, nRst, nC4, $06, nC5, $03, nRst
	dc.b	nG4, $06, nC5, $03, nRst, nE4, $06, nC5, $03, nRst, nEb4, $06
	dc.b	nB4, $03, nRst, $09, nB4, $03, nRst, nF4, $06, nBb4, $03, nRst
	dc.b	nCs4, $06, nCs5, $03, nRst, nE4, $06, nC5, $03, nRst, nC4, $06
	dc.b	nC5, $03, nRst, nG4, $06, nC5, $03, nRst, nE4, $06, nE5, $03
	dc.b	nRst, nEb4, $06, nB4, $03, nRst, nFs4, $06, nB4, $03, nRst, nF4
	dc.b	$06, nBb4, $03, nRst, nCs4, $06, nBb4, $03, nRst, nE4, $06, nC5
	dc.b	$03, nRst, nC4, $06, nA4, $03, nRst, nG5, $06, nE5, $03, nRst
	dc.b	nE5, $06, $03, nRst, nEb5, $06, $03, nRst, $09, nEb5, $03, nRst
	dc.b	$1B, nBb4, $06, nRst, nF5, nRst, nC5, nRst, nF5, nRst, nCs5, nRst
	dc.b	nC5, nCs5, nC5, nRst, nEb5, nRst, nBb5, nF5, nC6, nCs6, $03, nRst
	dc.b	nC6, $06, nCs6, $03, nC6, nBb5, $06, nAb5, $03, nRst, nF5, $06
	dc.b	nAb5, $03, nRst, nEb5, $06, nF5, $03, nRst, nBb4, $18, $06, nRst
	dc.b	nF5, nRst, nC5, nRst, nF5, nRst, nCs5, nRst, nEb5, nF5, nC5, nRst
	dc.b	nEb5, nRst, nBb5, nF5, nC6, nCs6, $03, nRst, nC6, $06, nCs6, $03
	dc.b	nC6, nBb5, $06, nAb5, $03, nRst, nBb5, $30, nBb4, $06, nRst, nF5
	dc.b	nRst, nC5, nRst, nF5, nRst, nCs5, nRst, nEb5, nF5, nC5, nRst, nEb5
	dc.b	nRst, nBb5, nF5, nC6, nCs6, $03, nRst, nC6, $06, nCs6, $03, nC6
	dc.b	nBb5, $06, nAb5, $03, nRst, nF5, $06, nAb5, $03, nRst, nEb5, $06
	dc.b	nF5, $03, nRst, nBb4, $18, $06, nRst, nF5, nRst, nC5, nRst, nF5
	dc.b	nRst, nCs5, nRst, nEb5, nF5, nC5, nRst, nEb5, nRst, nBb5, nF5, nAb5
	dc.b	nBb5, $03, nRst, nC6, $06, nCs6, $03, nC6, nBb5, $06, nAb5, $03
	dc.b	nRst, nBb5, $30, nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsStop

; FM3 Data
EHZ_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $04

EHZ_Loop13:
	dc.b	nBb2, $12, nF3, $0C, nBb3, $06, nC3, $0C, $0C, nBb2, $12, nF3
	dc.b	$0C, nBb3, $06, nEb3, $0C, $0C
	smpsLoop            $00, $02, EHZ_Loop13
	dc.b	nFs2, $12, nCs3, $0C, nFs3, $06, nC3, $0C, $0C, nFs2, $12, nCs3
	dc.b	$0C, nFs3, $06, nA3, $0C, $0C, nBb2, $12, nF3, $0C, nBb3, $06
	dc.b	nC3, $0C, $0C, nBb2, $12, nF3, $0C, nBb3, $06, nEb3, $0C, $0C

EHZ_Loop14:
	dc.b	nBb2, $06, nF3, nBb2, nF3, nA2, nE3, nA2, nE3, nC3, nG3, nC3
	dc.b	nG3, nB2, nFs3, nB2, nFs3
	smpsLoop            $00, $04, EHZ_Loop14

EHZ_Loop16:
	dc.b	nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3, nF4
	dc.b	nG3, nEb4, nG3, nEb4, nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4
	dc.b	nBb3, nF4, nBb3, nF4, nBb3, nF4, nAb3, nEb4, nFs3, nCs4, nFs3, nCs4
	dc.b	nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3, nF4, nG3, nEb4, nG3, nEb4
	dc.b	nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4

EHZ_Loop15:
	dc.b	nBb3, nF4
	smpsLoop            $00, $04, EHZ_Loop15
	smpsLoop            $01, $02, EHZ_Loop16
	dc.b	nBb2, $30, $30, nD3, nD3, nBb2, $06, nF3, nBb2, nF3, nC3, nG3
	dc.b	nC3, nG3, nD3, nA3, nD3, nA3, nD3, nA3, nC3, nG3, nBb2, nF3
	dc.b	nBb2, nF3, nC3, nG3, nC3, nG3, nCs3, nG3, nCs3, nG3, nD3, nA3
	dc.b	nD3, nA3, nBb2, nF3, nBb2, nF3, nC3, nG3, nC3, nG3, nD3, nA3
	dc.b	nD3, nA3, nD3, nA3, nC3, nG3, nBb2, nF3, nBb2, nF3, nC3, nG3
	dc.b	nC3, nG3, nCs3, nG3, nCs3, nG3, nD3, nRst, $03, nD3, $06, nRst
	dc.b	$03, nD3, $06

EHZ_Loop17:
	dc.b	nBb2, nF3, nBb2, nF3, nA2, nE3, nA2, nE3, nC3, nG3, nC3, nG3
	dc.b	nB2, nFs3, nB2, nFs3
	smpsLoop            $00, $08, EHZ_Loop17
	dc.b	nRst, $18

EHZ_Loop19:
	dc.b	nFs3, $06, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3
	dc.b	nF4, nG3, nEb4, nG3, nEb4, nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3
	dc.b	nEb4, nBb3, nF4, nBb3, nF4, nBb3, nF4, nAb3, nEb4, nFs3, nCs4, nFs3
	dc.b	nCs4, nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3, nF4, nG3, nEb4, nG3
	dc.b	nEb4, nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4

EHZ_Loop18:
	dc.b	nBb3, nF4
	smpsLoop            $00, $04, EHZ_Loop18
	smpsLoop            $01, $02, EHZ_Loop19
	dc.b	nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $04
	smpsStop

; FM4 Data
EHZ_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $05

EHZ_Loop0C:
	dc.b	nBb2, $12, nF3, $0C, nBb3, $06, nC3, $0C, $0C, nBb2, $12, nF3
	dc.b	$0C, nBb3, $06, nEb3, $0C, $0C
	smpsLoop            $00, $02, EHZ_Loop0C
	dc.b	nFs2, $12, nCs3, $0C, nFs3, $06, nC3, $0C, $0C, nFs2, $12, nCs3
	dc.b	$0C, nFs3, $06, nA3, $0C, $0C, nBb2, $12, nF3, $0C, nBb3, $06
	dc.b	nC3, $0C, $0C, nBb2, $12, nF3, $0C, nBb3, $06, nEb3, $0C, $0C

EHZ_Loop0D:
	dc.b	nBb2, $06, nF3, nBb2, nF3, nA2, nE3, nA2, nE3, nC3, nG3, nC3
	dc.b	nG3, nB2, nFs3, nB2, nFs3
	smpsLoop            $00, $04, EHZ_Loop0D

EHZ_Loop0F:
	dc.b	nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3, nF4
	dc.b	nG3, nEb4, nG3, nEb4, nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4
	dc.b	nBb3, nF4, nBb3, nF4, nBb3, nF4, nAb3, nEb4, nFs3, nCs4, nFs3, nCs4
	dc.b	nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3, nF4, nG3, nEb4, nG3, nEb4
	dc.b	nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4

EHZ_Loop0E:
	dc.b	nBb3, nF4
	smpsLoop            $00, $04, EHZ_Loop0E
	smpsLoop            $01, $02, EHZ_Loop0F
	dc.b	nBb2, $30, $30, nD3, nD3, nBb2, $06, nF3, nBb2, nF3, nC3, nG3
	dc.b	nC3, nG3, nD3, nA3, nD3, nA3, nD3, nA3, nC3, nG3, nBb2, nF3
	dc.b	nBb2, nF3, nC3, nG3, nC3, nG3, nCs3, nG3, nCs3, nG3, nD3, nA3
	dc.b	nD3, nA3, nBb2, nF3, nBb2, nF3, nC3, nG3, nC3, nG3, nD3, nA3
	dc.b	nD3, nA3, nD3, nA3, nC3, nG3, nBb2, nF3, nBb2, nF3, nC3, nG3
	dc.b	nC3, nG3, nCs3, nG3, nCs3, nG3, nD3, nRst, $03, nD3, $06, nRst
	dc.b	$03, nD3, $06

EHZ_Loop10:
	dc.b	nBb2, nF3, nBb2, nF3, nA2, nE3, nA2, nE3, nC3, nG3, nC3, nG3
	dc.b	nB2, nFs3, nB2, nFs3
	smpsLoop            $00, $08, EHZ_Loop10
	dc.b	nRst, $18

EHZ_Loop12:
	dc.b	nFs3, $06, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3
	dc.b	nF4, nG3, nEb4, nG3, nEb4, nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3
	dc.b	nEb4, nBb3, nF4, nBb3, nF4, nBb3, nF4, nAb3, nEb4, nFs3, nCs4, nFs3
	dc.b	nCs4, nAb3, nEb4, nAb3, nEb4, nBb3, nF4, nBb3, nF4, nG3, nEb4, nG3
	dc.b	nEb4, nFs3, nCs4, nFs3, nCs4, nAb3, nEb4, nAb3, nEb4

EHZ_Loop11:
	dc.b	nBb3, nF4
	smpsLoop            $00, $04, EHZ_Loop11
	smpsLoop            $01, $02, EHZ_Loop12
	dc.b	nRst, $18
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	smpsStop

; FM5 Data
EHZ_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $70, $70, $70, $70, $70, $70, nF4, $06, nRst, nCs4, nRst
	dc.b	nE4, nRst, nC4, nRst, nG4, nRst, nE4, nRst, nEb4, nRst, nFs4, nRst
	dc.b	nF4, nRst, nCs4, nRst, nE4, nRst, nC4, nRst, nG5, nRst, nE5, nRst
	dc.b	nEb5, $18, nRst

EHZ_Loop0A:
	dc.b	$78
	smpsLoop            $00, $10, EHZ_Loop0A
	dc.b	nF4, $06, nRst, nCs4, nRst, nE4, nRst, nC4, nRst, nG4, nRst, nE4
	dc.b	nRst, nEb4, nRst, nFs4, nRst, nF4, nRst, nCs4, nRst, nE4, nRst, nC4
	dc.b	nRst, nG5, nRst, nE5, nRst, nEb5, $18, nRst

EHZ_Loop0B:
	dc.b	$66
	smpsLoop            $00, $08, EHZ_Loop0B
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsStop

; FM6 Data
EHZ_FM6:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $7F, $7F, $7F, $63, nF5, $06, nRst, nCs5, nRst, nE5, nRst
	dc.b	nC5, nRst, nG5, nRst, nE5, nRst, nEb5, nRst, nFs5, nRst, nF5, nRst
	dc.b	nCs5, nRst, nE5, nRst, nC5, nRst, nG5, nRst, nE5, nRst, nEb5, $18
	dc.b	nF5, $06, nRst, nCs5, nRst, nE5, nRst, nC5, nRst, nG5, nRst, nE5
	dc.b	nRst, nEb5, nRst, nFs5, nRst, nF5, nRst, nCs5, nRst, nE5, nRst, nC5
	dc.b	nRst, nG6, nRst, nE6, nRst, nEb6, $18, nRst

EHZ_Loop06:
	dc.b	$60
	smpsLoop            $00, $08, EHZ_Loop06

EHZ_Loop07:
	dc.b	nBb6, $04, nF6, nEb6
	smpsLoop            $00, $08, EHZ_Loop07

EHZ_Loop08:
	dc.b	nA6, nF6, nD6
	smpsLoop            $00, $0A, EHZ_Loop08
	dc.b	nG6, nE6, nC6, nG6, nE6, nC6, nF6, nD6, nA5, nE6, nF6, nG6
	dc.b	nA5, nRst, $0C, nA5, $04, nC6, nD6, nBb5, nF5, nD6, nBb5, nF5
	dc.b	nE6, nC6, nG5, nE6, nC6, nG5, nE6, nCs6, nA5, nE6, nF6, nG6
	dc.b	nA6, nRst, $14, nA6, $04, nF6, nD6, nA6, nF6, nD6, nG6, nE6
	dc.b	nC6, nG6, nE6, nC6, nF6, nD6, nA5, nE6, nF6, nG6, nD6, nRst
	dc.b	$0C, nA5, $04, nC6, nD6, nBb5, nF5, nD6, nBb5, nF5, nE6, nC6
	dc.b	nG5, nE6, nC6, nG5, nE6, nCs6, nA5, nE6, nCs6, nA5, nA6, nRst
	dc.b	$05, nA6, $04, nRst, $05, nA6, $04, nRst, $7F, $7F, $7F, $05
	dc.b	nF5, $06, nRst, nCs5, nRst, nE5, nRst, nC5, nRst, nG5, nRst, nE5
	dc.b	nRst, nEb5, nRst, nFs5, nRst, nF5, nRst, nCs5, nRst, nE5, nRst, nC5
	dc.b	nRst, nG5, nRst, nE5, nRst, nEb5, $18, nF5, $06, nRst, nCs5, nRst
	dc.b	nE5, nRst, nC5, nRst, nG5, nRst, nE5, nRst, nEb5, nRst, nFs5, nRst
	dc.b	nF5, nRst, nCs5, nRst, nE5, nRst, nC5, nRst, nG6, nRst, nE6, nRst
	dc.b	nEb6, $18, nRst

EHZ_Loop09:
	dc.b	$66
	smpsLoop            $00, $08, EHZ_Loop09
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsStop

; PSG3 Data
EHZ_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $06, nMaxPSG, $03, $09
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	nEb5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	nEb5, $09
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	dc.b	$03, $09
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_02
	dc.b	$09
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $00
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$03, $09
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_02
	dc.b	$09
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	nEb5

EHZ_Loop27:
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, $03, $09
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	nEb5, $06
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	nEb5, $09
	smpsPSGAlterVol     $00
	smpsLoop            $00, $04, EHZ_Loop27
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, $03, $09
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FD
	dc.b	$08
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $03
	dc.b	$08
	smpsPSGvoice        fTone_01
	dc.b	$08
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FD

EHZ_Loop28:
	smpsPSGvoice        fTone_01
	dc.b	nEb5, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsLoop            $00, $06, EHZ_Loop28

EHZ_Loop29:
	smpsPSGvoice        fTone_01
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsLoop            $00, $02, EHZ_Loop29
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5, $06
	smpsPSGAlterVol     $01

EHZ_Loop2A:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop2A
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop2B:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop2B
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop2C:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop2C
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop2D:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop2D
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop2E:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop2E
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop2F:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop2F
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop30:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop30
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop31:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop31
	dc.b	$7F, smpsNoAttack, $59
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $07

EHZ_Loop32:
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$2D
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, EHZ_Loop32
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$1B
	smpsPSGAlterVol     $FB

EHZ_Loop33:
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $0D, EHZ_Loop33
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb5, $09, $06
	smpsPSGAlterVol     $01
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG

EHZ_Loop34:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsLoop            $00, $03, EHZ_Loop34
	dc.b	$06

EHZ_Loop35:
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	nEb5, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG
	smpsLoop            $00, $02, EHZ_Loop35
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGvoice        fTone_02
	dc.b	$06, $06

EHZ_Loop36:
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	nEb5, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG
	smpsLoop            $00, $03, EHZ_Loop36

EHZ_Loop37:
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGvoice        fTone_02
	dc.b	$06, $06
	smpsLoop            $00, $05, EHZ_Loop37
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	nEb5, $06
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$1B
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5, $18
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_01
	dc.b	$12
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $00
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsPSGAlterVol     $01
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF

EHZ_Loop38:
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $02, EHZ_Loop38
	dc.b	$06
	smpsPSGAlterVol     $00

EHZ_Loop39:
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsLoop            $00, $08, EHZ_Loop39
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop3A:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop3A
	dc.b	$06
	smpsPSGAlterVol     $00

EHZ_Loop3B:
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsLoop            $00, $08, EHZ_Loop3B
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop3C:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop3C
	dc.b	$06
	smpsPSGAlterVol     $00

EHZ_Loop3D:
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsLoop            $00, $08, EHZ_Loop3D
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop3E:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop3E
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FF
	dc.b	nEb5
	smpsPSGAlterVol     $01

EHZ_Loop3F:
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsLoop            $00, $07, EHZ_Loop3F
	dc.b	$1E
	smpsStop

; PSG1 Data
EHZ_PSG1:
; PSG2 Data
EHZ_PSG2:
	smpsStop

EHZ_Voices:
;	Voice $00
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

;	Voice $01
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
;	$38
;	$72, $13, $71, $11, 	$D1, $52, $14, $14, 	$01, $07, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $02
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $04
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $05
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $08, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $10, $08
	smpsVcDecayRate2    $05, $06, $03, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $08, $09, $00, $00
	smpsVcTotalLevel    $00, $2A, $14, $22

;	Voice $06
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

