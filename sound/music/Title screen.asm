Title_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Title_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       Title_DAC
	smpsHeaderFM        Title_FM1,	$00, $08
	smpsHeaderFM        Title_FM2,	$00, $08
	smpsHeaderFM        Title_FM3,	$00, $09
	smpsHeaderFM        Title_FM4,	$00, $08
	smpsHeaderFM        Title_FM5,	$00, $08
	smpsHeaderFM        Title_FM6,	$00, $08
	smpsHeaderPSG       Title_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Title_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Title_PSG3,	$00, $00, $00, fTone_02

; DAC Data
Title_DAC:
	dc.b	dKick, $0A, dKick, $02, dSnare, $06, dKick, $04, dKick, $06, dKick, $06
	dc.b	dKick, $02, dSnare, $06, dKick, $06, dKick, $0A, dKick, $02, dSnare, $06
	dc.b	dKick, $04, dKick, $06, dKick, $06, dKick, $02, dSnare, $06, dKick, $06
	dc.b	dKick, $0A, dKick, $02, dSnare, $06, dKick, $04, dKick, $06, dKick, $06
	dc.b	dKick, $02, dSnare, $06, dKick, $06, dKick, $06, $85, $06, $85, $06
	dc.b	$85, $1B
	smpsStop

; FM1 Data
Title_FM1:
	smpsSetvoice        $00
	dc.b	nBb4, $03, nRst, $3F, nAb5, $03, nRst, $01, nAb4, $03, nRst, $03
	dc.b	nAb4, $02, nAb5, $01, nRst, $05, nAb5, $03, nRst, $03, nA4, $03
	dc.b	nRst, $03, nBb4, $03
	smpsStop

; FM2 Data
Title_FM2:
	smpsSetvoice        $01
	smpsModSet          $00, $01, $06, $04
	dc.b	nBb2, $03, nRst, $01, nBb2, $02, nAb2, $06, nBb2, $06, nAb2, $03
	dc.b	nRst, $01, nBb2, $03, nRst, $03, nBb2, $02, nAb2, $03, nRst, $01
	dc.b	nBb2, $03, nRst, $03, nBb3, $02, nAb2, $03, nRst, $03, nBb1, $03
	dc.b	nRst, $01, nBb3, $02, nAb3, $06, nBb3, $06, nAb3, $03, nRst, $01
	dc.b	nBb3, $03, nRst, $03, nBb3, $02, nAb3, $03, nRst, $03, nBb3, $06
	dc.b	nCs4, $03
	smpsModOff
	dc.b	smpsNoAttack, $03
	smpsModSet          $00, $01, $07, $04
	dc.b	nBb2, $03, nRst, $01, nBb2, $02, nAb2, $06, nBb2, $06, nAb2, $03
	dc.b	nRst, $01, nBb2, $03, nRst, $03, nBb2, $02, nAb2, $03, nRst, $01
	dc.b	nBb2, $03, nRst, $03, nBb3, $02, nAb2, $03, nRst, $03, nBb1, $03
	dc.b	nRst, $03
	smpsModOff
	smpsStop

; FM3 Data
Title_FM3:
	smpsSetvoice        $02
	smpsAlterNote       $02
	dc.b	nBb3, $02, smpsNoAttack, $01, nRst, $02, $01, nBb4, $02, smpsNoAttack, $01, nRst
	dc.b	$02, $01
	smpsAlterNote       $F7
	dc.b	nBb3, $02
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1C
	dc.b	smpsNoAttack, nA3, $02
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb3, $01, nBb3, $02, smpsNoAttack, $01, nRst, $02, $01, nBb4, $02
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nA4, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb4, $01, nBb3, $02, smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $1C
	dc.b	smpsNoAttack, nA3, $01
	smpsAlterNote       $FF
	dc.b	nRst, $02
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02, $01, $33, nBb3, $02, smpsNoAttack, $01, nRst, $02, $01, nBb4, $02
	dc.b	smpsNoAttack, $01, nRst, $02, $01
	smpsAlterNote       $F7
	dc.b	nBb3, $02
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1C
	dc.b	smpsNoAttack, nA3, $02
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb3, $01, nBb3, $02, smpsNoAttack, $01, nRst, $02, $01, nBb4, $02
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E6
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nA4, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb4, $01, nBb3, $02, smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $1C
	dc.b	smpsNoAttack, nA3, $01
	smpsAlterNote       $00
	dc.b	nRst, $02, $01, $02, $01
	smpsStop

; FM4 Data
Title_FM4:
	smpsSetvoice        $03
	dc.b	nC0, $03, nRst, $06, nC0, $03, nRst, $06, nC0, $03, nRst, $06
	dc.b	nC0, $03, nRst, $06, nC0, $03, nRst, $39, nC0, $03, nRst, $06
	dc.b	nC0, $03, nRst, $06, nC0, $03, nRst, $06, nC0, $03, nRst, $06
	dc.b	nC0, $03
	smpsStop

; FM5 Data
Title_FM5:
	smpsSetvoice        $04
	smpsModSet          $00, $01, $07, $04
	dc.b	nBb1, $09, nRst, $3F
	smpsModOff
	dc.b	$18
	smpsModOn
	dc.b	nBb1, $09, nRst, $3F
	smpsModOff
	smpsStop

; FM6 Data
Title_FM6:
	smpsSetvoice        $03
	dc.b	nRst, $60
	smpsModSet          $00, $01, $07, $04
	dc.b	nBb7, $01, nRst, $01, nBb7, $01, nBb7, $01, nRst, $01, nBb7, $01
	dc.b	nBb7, $01, nRst, $01, nBb7, $01, nBb7, $01, nRst, $01, nBb7, $01
	dc.b	nBb7, $01, nRst, $01, nBb7, $01, nBb7, $01, nRst, $01, nBb7, $01
	dc.b	nBb7, $01, nRst, $01, nBb7, $01, nBb7, $01, nRst, $01, nBb7, $01
	dc.b	nBb7, $01, nRst, $01, nBb7, $01, nBb7, $01, nRst, $01, nBb7, $01
	dc.b	nBb7, $01, nRst, $01, nBb7, $01, nBb7, $01, nRst, $01, nBb7, $01
	dc.b	nBb7, $01, nRst, $01, nA7, $01, nAb7, $01, nRst, $01, nG7, $01
	dc.b	nFs7, $01, nRst, $01, nF7, $01, nE7, $01, nRst, $01, nEb7, $01
	dc.b	nD7, $01, nRst, $01, nCs7, $01, nC7, $01, nRst, $01, nB6, $01
	dc.b	nBb6, $01, nRst, $01, nA6, $01, nAb6, $01, nRst, $01, nG6, $01
	dc.b	nFs6, $01, nRst, $01, nF6, $01, nE6, $01, nRst, $01, nEb6, $01
	dc.b	nD6, $01, nRst, $01, nCs6, $01, nC6, $01, nRst, $01, nB5, $01
	dc.b	nBb5, $01, nRst, $01, nA5, $01, nAb5, $01, nRst, $01, nG5, $01
	dc.b	nFs5, $01, nRst, $01, nF5, $01, nE5, $01, nRst, $01, nEb5, $01
	dc.b	nRst, $09
	smpsModOff
	smpsStop

; PSG1 Data
Title_PSG1:
	dc.b	nRst, $7F, $11, nC1, $06
	smpsPSGAlterVol     $02
	dc.b	nC1, $03, nRst, $03
	smpsPSGAlterVol     $04
	dc.b	nC1, $03, nRst, $03
	smpsPSGAlterVol     $05
	dc.b	nC1, $03
	smpsStop

; PSG3 Data
Title_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $02, nMaxPSG, $04, nMaxPSG, $02
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $04
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $2F
	smpsStop

; PSG2 Data
Title_PSG2:
	smpsStop

Title_Voices:
;	Voice $00
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

;	Voice $01
;	$28
;	$39, $35, $30, $31, 	$1F, $1F, $1F, $1F, 	$0C, $0A, $07, $0A
;	$07, $07, $07, $09, 	$26, $16, $16, $F6, 	$17, $32, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $07, $0A, $0C
	smpsVcDecayRate2    $09, $07, $07, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $02
;	$3C
;	$31, $72, $70, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $00, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

;	Voice $03
;	$3B
;	$00, $71, $71, $01, 	$1F, $16, $0F, $12, 	$00, $00, $00, $08
;	$00, $00, $00, $00, 	$00, $01, $01, $16, 	$19, $17, $19, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $07, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $06, $01, $01, $00
	smpsVcTotalLevel    $00, $19, $17, $19

;	Voice $04
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $00, $29, $07
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $29, $00, $23

