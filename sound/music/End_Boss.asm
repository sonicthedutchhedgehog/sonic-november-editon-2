end_boss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     end_boss_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       end_boss_DAC,	$00, $F2
	smpsHeaderFM        end_boss_FM1,	$00, $00
	smpsHeaderFM        end_boss_FM2,	$00, $00
	smpsHeaderFM        end_boss_FM3,	$00, $00
	smpsHeaderFM        end_boss_FM4,	$00, $00
	smpsHeaderFM        end_boss_FM5,	$00, $00
	smpsHeaderFM        end_boss_FM6,	$00, $00
	smpsHeaderPSG       end_boss_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       end_boss_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       end_boss_PSG3,	$00, $00, $00, $00

; DAC Data
end_boss_DAC:
; PSG1 Data
end_boss_PSG1:
; PSG2 Data
end_boss_PSG2:
; PSG3 Data
end_boss_PSG3:
	smpsStop

; FM1 Data
end_boss_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $16
	smpsPan             panCenter, $00
	smpsAlterNote       $0A
	dc.b	nA7, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nA7, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA7, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nAb7, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nAb7, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nAb7, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb7, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nG7, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nG7, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nG7, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nFs7, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nFs7, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs7, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nFs7, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nF7, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF7, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nF7, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nE7, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nE7, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE7, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nEb7, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nEb7, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nD7, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nD7, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nD7, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs7, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nCs7, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs7, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nCs7, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nC7, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nB6, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nB6, $01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nB6, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nB6, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nBb6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nBb6, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nBb6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nBb6, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nA6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nA6, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nA6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nA6, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG6, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs6, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nF6, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $DB
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $E1
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $DF
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $25
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $DE
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nAb3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nAb3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb3, $01
	smpsAlterVol        $69
	dc.b	nRst, $17
	smpsSetvoice        $06
	smpsAlterVol        $99
	smpsAlterNote       $0A
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0A
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0C
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	dc.b	nC4, $0C
	smpsAlterNote       $0A
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	dc.b	nD4, $0C
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0C
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	smpsAlterNote       $0A
	dc.b	nD4, $0C
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	dc.b	nC4, $0B
	smpsAlterNote       $0A
	dc.b	nD4, $0C
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0A
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	dc.b	nC4, $0B
	smpsAlterNote       $0A
	dc.b	nD4
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0A
	dc.b	nD4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $17
	smpsAlterVol        $99
	smpsAlterNote       $0D
	dc.b	nC4, $0B
	smpsAlterVol        $67
	dc.b	nRst, $16
	smpsAlterVol        $99
	dc.b	nC4, $0C
	smpsAlterNote       $0A
	dc.b	nD4, $0B
	smpsSetvoice        $0A
	smpsAlterVol        $E8
	dc.b	smpsNoAttack, nD4, $01
	smpsAlterVol        $0C
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $0B
	dc.b	nE4

end_boss_Jump05:
	smpsAlterNote       $13
	dc.b	nB4, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $11
	dc.b	nC5, $0C
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $0E
	dc.b	nD5, $0C
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $11
	dc.b	nC5, $0C
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $13
	dc.b	nB4, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $11
	dc.b	nC5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $11
	dc.b	nC5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4, nA4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $13
	dc.b	nB4, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $11
	dc.b	nC5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $11
	dc.b	nC5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $13
	dc.b	nB4, $0C
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $11
	dc.b	nC5, $0C
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $0E
	dc.b	nD5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $11
	dc.b	nC5, $0B
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05, nA4, $06
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nG5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nA5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nG5, $16
	smpsAlterNote       $0B
	dc.b	nE5, $0C
	smpsAlterNote       $0E
	dc.b	nA5, $16, nG5, $0C
	smpsAlterNote       $10
	dc.b	nFs5, $0B
	smpsAlterNote       $0B
	dc.b	nE5
	smpsAlterNote       $10
	dc.b	nFs5, $0C
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nG5, $16
	smpsAlterNote       $0B
	dc.b	nE5, $0C
	smpsAlterNote       $0E
	dc.b	nA5, $16
	smpsAlterNote       $0B
	dc.b	nE5, $0C
	smpsAlterNote       $0E
	dc.b	nG5, $16
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $13
	dc.b	nB5, $17
	smpsAlterNote       $0E
	dc.b	nA5, $0B, nG5, $0C
	smpsAlterNote       $10
	dc.b	nFs5, $0B
	smpsAlterNote       $0E
	dc.b	nD5
	smpsAlterNote       $0B
	dc.b	nE5, $0C
	smpsAlterNote       $0E
	dc.b	nG5, $16
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nA5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nG5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nA5, $17, nG5, $0B
	smpsAlterNote       $10
	dc.b	nFs5
	smpsAlterNote       $0B
	dc.b	nE5, $0C
	smpsAlterNote       $10
	dc.b	nFs5, $0B
	smpsAlterNote       $0B
	dc.b	nE5
	smpsAlterNote       $0E
	dc.b	nG5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nA5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $0E
	dc.b	nG5, $17
	smpsAlterNote       $0B
	dc.b	nE5, $0B
	smpsAlterNote       $13
	dc.b	nB5, $16
	smpsAlterNote       $0E
	dc.b	nA5, $0C, nG5, $0B
	smpsAlterNote       $10
	dc.b	nFs5
	smpsAlterNote       $0E
	dc.b	nD5, $0C
	smpsSetvoice        $06
	smpsAlterVol        $02
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterNote       $13
	dc.b	nB4
	smpsAlterNote       $0E
	dc.b	nD5, $05
	smpsAlterNote       $11
	dc.b	nC5, $06
	smpsAlterNote       $13
	dc.b	nB4
	smpsAlterNote       $0E
	dc.b	nA4, $05, nG4, $06
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterNote       $0E
	dc.b	nA4, $06
	smpsAlterNote       $13
	dc.b	nB4
	smpsAlterNote       $0E
	dc.b	nG4, $05, nA4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterNote       $11
	dc.b	nC4, $06
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $13
	dc.b	nB3, $05
	smpsAlterNote       $11
	dc.b	nC4, $06
	smpsAlterNote       $0E
	dc.b	nA3, $05
	smpsAlterNote       $13
	dc.b	nB3, $06
	smpsAlterNote       $0E
	dc.b	nG3
	smpsAlterNote       $0F
	dc.b	nBb3, $05
	smpsAlterNote       $10
	dc.b	nFs3, $06
	smpsAlterNote       $0E
	dc.b	nA3
	smpsAlterNote       $0C
	dc.b	nF3, $05
	smpsAlterNote       $0B
	dc.b	nE3, $02, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nFs3, $1D, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01
	smpsAlterNote       $0B
	dc.b	nE3, $06
	smpsAlterNote       $0E
	dc.b	nD3
	smpsAlterNote       $0B
	dc.b	nE3, $0B
	smpsAlterNote       $10
	dc.b	nFs3, $1F, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01
	smpsAlterNote       $10
	dc.b	nFs3, $1F, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01
	smpsAlterNote       $0B
	dc.b	nE3, $05
	smpsAlterNote       $0E
	dc.b	nD3, $06
	smpsAlterNote       $0B
	dc.b	nE3, $0B
	smpsAlterNote       $10
	dc.b	nFs3
	smpsAlterNote       $0E
	dc.b	nG3, $06, nA3
	smpsAlterNote       $13
	dc.b	nB3, $05
	smpsAlterNote       $11
	dc.b	nC4, $06
	smpsAlterNote       $13
	dc.b	nB3, $1F, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nB3, $01
	smpsAlterNote       $13
	dc.b	nB3, $06
	smpsAlterNote       $11
	dc.b	nC4, $05
	smpsAlterNote       $0E
	dc.b	nA3, $1F, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA3, $01
	smpsAlterNote       $0E
	dc.b	nA3, $06
	smpsAlterNote       $13
	dc.b	nB3, $05
	smpsAlterNote       $0E
	dc.b	nG3, $1F, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nG3, $01
	smpsAlterNote       $0E
	dc.b	nG3, $06, nA3
	smpsAlterNote       $10
	dc.b	nFs3, $1F, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nFs3, $01
	smpsAlterNote       $0B
	dc.b	nE3, $06
	smpsAlterNote       $0E
	dc.b	nD3
	smpsAlterNote       $0B
	dc.b	nE3, $07, nE3, $08
	smpsAlterNote       $10
	dc.b	nFs3, $07, nFs3, $08
	smpsAlterNote       $0E
	dc.b	nG3, $07, nG3, $08, nA3, $07, nA3, $08, nG3, nG3, $07
	smpsAlterNote       $10
	dc.b	nFs3, $08, nFs3, $07
	smpsSetvoice        $00
	smpsAlterVol        $FA
	smpsPan             panRight, $00
	smpsAlterNote       $0E
	dc.b	nD4, $17
	smpsPan             panCenter, $00
	dc.b	nD4, $02, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $DB
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nC4, $01
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $DB
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $21
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA3, $01
	smpsSetvoice        $06
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $0E
	dc.b	nD4, $06, nG4
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nA4, $05, nD4, $06, nG4
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterNote       $0E
	dc.b	nA4, $05, nD4, $06, nG4
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nA4, $06, nD4, nG4, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nA4, $06, nD4, nG4, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nA4, $06, nD4, nG4, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nA4, nD4, $05, nG4, $06
	smpsAlterNote       $13
	dc.b	nB4
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nA4, nD4, $05, nG4, $06
	smpsAlterNote       $13
	dc.b	nB4
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nA4
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterNote       $0E
	dc.b	nD5, $06
	smpsAlterNote       $11
	dc.b	nC5, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $0E
	dc.b	nA4
	smpsAlterNote       $11
	dc.b	nC5, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $0E
	dc.b	nA4, nG4, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $0E
	dc.b	nA4, nG4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nA4, nG4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $0B
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nFs4, $05
	smpsAlterNote       $0E
	dc.b	nG4, $11
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4, nA4, $05
	smpsAlterNote       $13
	dc.b	nB4, $0C
	smpsAlterNote       $0E
	dc.b	nA4, $05
	smpsAlterNote       $13
	dc.b	nB4, $06
	smpsAlterNote       $11
	dc.b	nC5
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nA4
	smpsAlterVol        $04
	dc.b	nD4, $05
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterVol        $04
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nA4, $05
	smpsAlterVol        $04
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterVol        $FC
	smpsAlterNote       $13
	dc.b	nB4, $05
	smpsAlterVol        $04
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nA4, $05
	smpsAlterVol        $04
	dc.b	nD4, $06
	smpsAlterNote       $10
	dc.b	nFs4
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterVol        $04
	smpsAlterNote       $11
	dc.b	nC4, $06
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nG4, $05
	smpsAlterVol        $04
	smpsAlterNote       $11
	dc.b	nC4, $06
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nA4, $06
	smpsAlterVol        $04
	smpsAlterNote       $11
	dc.b	nC4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterVol        $04
	smpsAlterNote       $11
	dc.b	nC4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nA4, $06
	smpsAlterVol        $04
	smpsAlterNote       $11
	dc.b	nC4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $0E
	dc.b	nG4, $06
	smpsAlterVol        $04
	smpsAlterNote       $11
	dc.b	nC4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nB3
	smpsAlterNote       $0E
	dc.b	nD4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nB3, $05
	smpsAlterNote       $0E
	dc.b	nD4, $06
	smpsAlterNote       $11
	dc.b	nC6, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nB5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB5
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nA5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA5
	smpsAlterVol        $FE
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $FE
	smpsAlterNote       $0C
	dc.b	nF5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $FE
	smpsAlterNote       $0B
	dc.b	nE5
	smpsAlterNote       $0E
	dc.b	nD5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nD5
	smpsAlterVol        $FE
	smpsAlterNote       $11
	dc.b	nC5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC5
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nB4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB4
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nA4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $FE
	dc.b	nG4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $FE
	smpsAlterNote       $0C
	dc.b	nF4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $FE
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $11
	dc.b	nC4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nB3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB3
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nA3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $FE
	dc.b	nG3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG3
	smpsAlterVol        $FE
	smpsAlterNote       $0C
	dc.b	nF3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nF3
	smpsAlterVol        $FE
	smpsAlterNote       $0B
	dc.b	nE3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE3
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nD3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nD3
	smpsAlterVol        $FE
	smpsAlterNote       $11
	dc.b	nC3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nB2
	smpsAlterNote       $0E
	dc.b	nA2
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $6F
	dc.b	nRst, $0C
	smpsAlterVol        $91
	dc.b	nA4, $11, nG4, $10
	smpsAlterNote       $0C
	dc.b	nF4, $11
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD4, $0C
	smpsAlterVol        $6F
	dc.b	nRst, $0B
	smpsAlterVol        $91
	dc.b	nG4, $11
	smpsAlterNote       $0C
	dc.b	nF4
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $11
	dc.b	nC4, $0B
	smpsAlterVol        $6F
	dc.b	nRst
	smpsAlterVol        $91
	smpsAlterNote       $0C
	dc.b	nF4, $11
	smpsAlterNote       $0B
	dc.b	nE4
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $11
	dc.b	nC4
	smpsAlterNote       $13
	dc.b	nB3, $0B
	smpsAlterVol        $6F
	dc.b	nRst, $0C
	smpsAlterVol        $91
	smpsAlterNote       $0B
	dc.b	nE4, $11
	smpsAlterNote       $0E
	dc.b	nD4
	smpsAlterNote       $11
	dc.b	nC4, $10
	smpsAlterNote       $13
	dc.b	nB3, $11
	smpsAlterNote       $0E
	dc.b	nA3, $0C
	smpsSetvoice        $0A
	smpsAlterVol        $F0
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nE4, $01
	smpsAlterVol        $0C
	dc.b	nE4, $04
	smpsAlterNote       $10
	dc.b	nFs4, $06
	smpsAlterNote       $0E
	dc.b	nG4
	smpsAlterNote       $0B
	dc.b	nE4, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	smpsJump            end_boss_Jump05

; FM2 Data
end_boss_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $35
	smpsSetvoice        $06
	smpsAlterVol        $97
	smpsPan             panLeft, $00
	smpsAlterNote       $0A
	dc.b	nA2, $06, nA2, $05, nA2, $06, nA2, nA3, $0B, nA2, $06, nA2
	dc.b	$05, nA2, $06, nA2, nG3, $0B, nA2, $06, nA2, $05, nA2, $06
	dc.b	nA2, nA3, $0B, nA2, $05, nA2, $06, nA2, nA2, $05, nG3, $0C
	dc.b	nA2, $05, nA2, $06, nA2, nA2, $05, nG3, $0C, nA3, $0B, nA2
	dc.b	$06, nA2, $05, nA2, $06, nA2, $05, nA3, $0C, nA2, $05, nA2
	dc.b	$06, nA2, nA2, $05, nG3, $0C, nA2, $05, nA2, $06, nA2, nA2
	dc.b	$05, nA3, $0C, nA2, $05, nA2, $06, nA2, $05, nA2, $06, nG3
	dc.b	$0B, nA2, $06, nA2, nA2, $05, nA2, $06, nG3, $0B, nA3, $0C
	dc.b	nA2, $05, nA2, $06, nA2, nA2, $05, nA3, $0B, nA2, $06, nA2
	dc.b	nA2, $05, nA2, $06, nG3, $0B, nA2, $06, nA2, nA2, $05, nA2
	dc.b	$06, nA3, $0B, nA2, $06, nA2, nA2, $05, nA2, $06, nG3, $0B
	dc.b	nA2, $06, nA2, $05, nA2, $06, nA2, nG3, $0B, nA3, nA2, $06
	dc.b	nA2, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, $05, nA2
	dc.b	$06, nA2, nG3, $0B, nA2, $06, nA2, $05, nA2, $06, nA2, nA3
	dc.b	$0B, nA2, $06, nA2, $05, nA2, $06, nA2, nG3, $0B, nA2, $05
	dc.b	nA2, $06, nA2, nA2, $05, nG3, $0C, nA3, $0B
	smpsAlterNote       $07
	dc.b	nE2, nE2, $06, nE2

end_boss_Jump04:
	dc.b	nE3, $0B, nE2, $06, nE2, $05, nE2, $06, nE2, $05, nE3, $0C
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE2, $0C, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06, nE3, $0B, nE2
	dc.b	nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06
	dc.b	nG2, nG2, $05, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nG2
	dc.b	$0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2, $06
	dc.b	nG2, nG3, $0B, nG2, nG2, $06, nG2, $05
	smpsAlterNote       $07
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, nE2, $06, nE2, nE2, $0B, nE2
	dc.b	$06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2, nE2, $05
	dc.b	nE3, $0C, nE2, $0B, nE2, $05, nE2, $06
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2
	dc.b	$06, nG2, nG3, $0B, nG2, nG2, $06, nG2, $05, nD2, $0C, nD2
	dc.b	$05, nD2, $06, nD3, $0B, nD2, $06, nD2, nD2, $05, nD2, $06
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nD2, $05, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, $06, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG2, $05, smpsNoAttack, nA2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2, $06
	dc.b	nE2, nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nG2
	dc.b	$0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06, nG2
	dc.b	nG2, $05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05
	smpsAlterNote       $07
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, $05
	dc.b	nE2, $06, nE2, nE3, $0B, nE2, nE2, $06, nE2, nE2, $0B, nE2
	dc.b	$06, nE2, $05, nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $05, nG2, $06, nG2
	dc.b	nG2, $05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05, nD2, $0C
	dc.b	nD2, $05, nD2, $06, nD3, $0B, nD2, $06, nD2, $05, nD2, $06
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nD2, $06, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nFs2, $05, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG2, $06, smpsNoAttack, nA2
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, $05, nE2, $06, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	dc.b	nE2, $0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05
	smpsAlterNote       $0A
	dc.b	nG2, $0C, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, nG2, $06, nG2, nG2, $0B, nG2
	dc.b	$06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06, nG2, nG2, $05
	dc.b	nG3, $0B, nG2, $0C, nG2, $05, nG2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, nE3, $0B, nE2, nE2, $06, nE2, $05, nE2, $0C, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06
	dc.b	nG2, nG2, $05, nG3, $0C, nG2, $0B, nG2, $05, nG2, $06, nD2
	dc.b	$0B, nD2, $06, nD2, nD3, $0B, nD2, $06, nD2, $05, nD2, $06
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nD2, $06, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nFs2, $05, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG2, $06, smpsNoAttack, nA2, $05
	smpsAlterNote       $07
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06, nE2
	dc.b	$0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2
	dc.b	nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2
	dc.b	$06, nG2, nG3, $0B, nG2, nG2, $06, nG2, nG2, $0B, nG2, $05
	dc.b	nG2, $06, nG3, $0B, nG2, $06, nG2, nG2, $05, nG2, $06, nG3
	dc.b	$0B, nG2, $0C, nG2, $05, nG2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nD2
	dc.b	$0B, nD2, $06, nD2, nD3, $0B, nD2, $05, nD2, $06, nD2, nD2
	dc.b	$05, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, $06, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nFs2, $06, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nG2, smpsNoAttack, nA2, $05
	smpsAlterVol        $69
	dc.b	nRst, $0C
	smpsAlterVol        $97
	smpsAlterNote       $08
	dc.b	nF3, $11
	smpsAlterNote       $07
	dc.b	nE3, $10
	smpsAlterNote       $0A
	dc.b	nD3, $11
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2, $0C
	smpsAlterVol        $69
	dc.b	nRst, $0B
	smpsAlterVol        $97
	smpsAlterNote       $07
	dc.b	nE3, $11
	smpsAlterNote       $0A
	dc.b	nD3
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0A
	dc.b	nA2, $0B
	smpsAlterVol        $69
	dc.b	nRst
	smpsAlterVol        $97
	dc.b	nD3, $11
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0A
	dc.b	nA2, nG2, $0B
	smpsAlterVol        $69
	dc.b	nRst, $0C
	smpsAlterVol        $97
	smpsAlterNote       $0D
	dc.b	nC3, $11
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0A
	dc.b	nA2, $10, nG2, $11
	smpsAlterNote       $08
	dc.b	nF2, $0C
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05
	smpsPan             panLeft, $00
	smpsJump            end_boss_Jump04

; FM3 Data
end_boss_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $7F, $08
	smpsSetvoice        $05
	smpsAlterVol        $91
	smpsPan             panCenter, $00
	smpsAlterNote       $07
	dc.b	nE2, $02
	smpsAlterNote       $08
	dc.b	nF2
	smpsAlterNote       $0C
	dc.b	nFs2
	smpsAlterNote       $0A
	dc.b	nG2
	smpsAlterNote       $0C
	dc.b	nAb2, $01
	smpsAlterNote       $0A
	dc.b	nA2, $02
	smpsAlterNote       $0B
	dc.b	nBb2
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $FE
	dc.b	nCs3
	smpsAlterNote       $0A
	dc.b	nD3
	smpsAlterNote       $09
	dc.b	nEb3
	smpsAlterNote       $07
	dc.b	nE3, $01
	smpsAlterNote       $09
	dc.b	nEb3, $02
	smpsAlterNote       $0A
	dc.b	nD3
	smpsAlterNote       $FE
	dc.b	nCs3
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0B
	dc.b	nBb2
	smpsAlterNote       $0A
	dc.b	nA2
	smpsAlterNote       $0C
	dc.b	nAb2
	smpsAlterNote       $0A
	dc.b	nG2, $01
	smpsAlterNote       $0C
	dc.b	nFs2, $02
	smpsAlterNote       $08
	dc.b	nF2
	smpsAlterNote       $0A
	dc.b	nA2, $0B, nA2, $06, nA2, nA3, $0B, nA2, $06, nA2, $05, nA2
	dc.b	$06, nA3, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, nA2
	dc.b	$0B, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, nA2, $05
	dc.b	nA3, $06, nA2, nA2, $05, nA3, $0C, nA2, $05, nA2, $06, nA2
	dc.b	$0B, nA2, $06, nA2, $05, nA3, $0C, nA2, $05, nA2, $06, nA2
	dc.b	nA3, $05, nA2, $06, nA2, nA3, $0B, nA2, $06, nA2, $05, nA2
	dc.b	$0C, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, $05, nA2
	dc.b	$06, nA3, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, nA2
	dc.b	$0B, nA2, $06, nA2, $05, nA3, $0B, nA2, $06, nA2, nA2, $05
	dc.b	nA3, $06, nA2, nA2, $05, nA3, $0C, nA2, $05, nA2, $06, nA2
	dc.b	$0B, nA2, $06, nA2, nA3, $0B, nA2, $05, nA2, $06, nA2, nA3
	dc.b	$05, nA2, $06, nA2, nA3, $0B, nA2, $06, nA2, $05, nA2, $0C
	dc.b	nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, $05, nA2, $06
	dc.b	nA3, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, nA2, $0B
	dc.b	nA2, $06, nA2, $05, nA3, $0C, nA2, $05, nA2, $06, nA2, $05
	dc.b	nA3, $06, nA2, nA2, $05, nA3, $0C, nA2, $05, nA2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2

end_boss_Jump03:
	dc.b	nE3, $0B, nE2, $06, nE2, $05, nE2, $06, nE2, $05, nE3, $0C
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE2, $0C, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06, nE3, $0B, nE2
	dc.b	nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06
	dc.b	nG2, nG2, $05, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nG2
	dc.b	$0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2, $06
	dc.b	nG2, nG3, $0B, nG2, nG2, $06, nG2, $05
	smpsAlterNote       $07
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, nE2, $06, nE2, nE2, $0B, nE2
	dc.b	$06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2, nE2, $05
	dc.b	nE3, $0C, nE2, $0B, nE2, $05, nE2, $06
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2
	dc.b	$06, nG2, nG3, $0B, nG2, nG2, $06, nG2, $05, nD2, $0C, nD2
	dc.b	$05, nD2, $06, nD3, $0B, nD2, $06, nD2, nD2, $05, nD2, $06
	smpsAlterNote       $07
	dc.b	nE2
	smpsAlterNote       $0A
	dc.b	nD2, $05
	smpsAlterNote       $07
	dc.b	nE2, $06
	smpsAlterNote       $0C
	dc.b	nFs2
	smpsAlterNote       $0A
	dc.b	nG2, $05, nA2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2, $06
	dc.b	nE2, nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nG2
	dc.b	$0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06, nG2
	dc.b	nG2, $05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05
	smpsAlterNote       $07
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, $05
	dc.b	nE2, $06, nE2, nE3, $0B, nE2, nE2, $06, nE2, nE2, $0B, nE2
	dc.b	$06, nE2, $05, nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $05, nG2, $06, nG2
	dc.b	nG2, $05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05, nD2, $0C
	dc.b	nD2, $05, nD2, $06, nD3, $0B, nD2, $06, nD2, $05, nD2, $06
	dc.b	nD2
	smpsAlterNote       $07
	dc.b	nE2, $05
	smpsAlterNote       $0A
	dc.b	nD2, $06
	smpsAlterNote       $07
	dc.b	nE2
	smpsAlterNote       $0C
	dc.b	nFs2, $05
	smpsAlterNote       $0A
	dc.b	nG2, $06, nA2
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, $05, nE2, $06, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	dc.b	nE2, $0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05
	smpsAlterNote       $0A
	dc.b	nG2, $0C, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, nG2, $06, nG2, nG2, $0B, nG2
	dc.b	$06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06, nG2, nG2, $05
	dc.b	nG3, $0B, nG2, $0C, nG2, $05, nG2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, nE3, $0B, nE2, nE2, $06, nE2, $05, nE2, $0C, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06
	dc.b	nG2, nG2, $05, nG3, $0C, nG2, $0B, nG2, $05, nG2, $06, nD2
	dc.b	$0B, nD2, $06, nD2, nD3, $0B, nD2, $06, nD2, $05, nD2, $06
	dc.b	nD2
	smpsAlterNote       $07
	dc.b	nE2, $05
	smpsAlterNote       $0A
	dc.b	nD2, $06
	smpsAlterNote       $07
	dc.b	nE2
	smpsAlterNote       $0C
	dc.b	nFs2, $05
	smpsAlterNote       $0A
	dc.b	nG2, $06, nA2, $05
	smpsAlterNote       $07
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06, nE2
	dc.b	$0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2
	dc.b	nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2
	dc.b	$06, nG2, nG3, $0B, nG2, nG2, $06, nG2, nG2, $0B, nG2, $05
	dc.b	nG2, $06, nG3, $0B, nG2, $06, nG2, nG2, $05, nG2, $06, nG3
	dc.b	$0B, nG2, $0C, nG2, $05, nG2, $06
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0A
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nD2
	dc.b	$0B, nD2, $06, nD2, nD3, $0B, nD2, $05, nD2, $06, nD2, nD2
	dc.b	$05
	smpsAlterNote       $07
	dc.b	nE2, $06
	smpsAlterNote       $0A
	dc.b	nD2
	smpsAlterNote       $07
	dc.b	nE2, $05
	smpsAlterNote       $0C
	dc.b	nFs2, $06
	smpsAlterNote       $0A
	dc.b	nG2, nA2, $05
	smpsAlterVol        $6F
	dc.b	nRst, $0C
	smpsAlterVol        $91
	smpsAlterNote       $08
	dc.b	nF3, $11
	smpsAlterNote       $07
	dc.b	nE3, $10
	smpsAlterNote       $0A
	dc.b	nD3, $11
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2, $0C
	smpsAlterVol        $6F
	dc.b	nRst, $0B
	smpsAlterVol        $91
	smpsAlterNote       $07
	dc.b	nE3, $11
	smpsAlterNote       $0A
	dc.b	nD3
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0A
	dc.b	nA2, $0B
	smpsAlterVol        $6F
	dc.b	nRst
	smpsAlterVol        $91
	dc.b	nD3, $11
	smpsAlterNote       $0D
	dc.b	nC3
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0A
	dc.b	nA2, nG2, $0B
	smpsAlterVol        $6F
	dc.b	nRst, $0C
	smpsAlterVol        $91
	smpsAlterNote       $0D
	dc.b	nC3, $11
	smpsAlterNote       $0F
	dc.b	nB2
	smpsAlterNote       $0A
	dc.b	nA2, $10, nG2, $11
	smpsAlterNote       $08
	dc.b	nF2, $0C
	smpsAlterNote       $07
	dc.b	nE2, $0B, nE2, $06, nE2, $05
	smpsPan             panCenter, $00
	smpsJump            end_boss_Jump03

; FM4 Data
end_boss_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $5A
	smpsSetvoice        $04
	smpsAlterVol        $81
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01
	smpsSetvoice        $07
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2

end_boss_Jump02:
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05, nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $05, nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $06
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3, $05
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $06, nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2
	smpsSetvoice        $08
	smpsAlterVol        $06
	smpsAlterNote       $0F
	dc.b	nB3, $06, nB3
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $09
	smpsAlterVol        $FA
	smpsAlterNote       $EF
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nAb2, $01
	smpsSetvoice        $04
	smpsAlterVol        $F6
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsSetvoice        $09
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nAb2
	smpsSetvoice        $04
	smpsAlterVol        $F6
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsSetvoice        $09
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nAb2
	smpsSetvoice        $04
	smpsAlterVol        $F6
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb3
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nE4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nB3
	smpsSetvoice        $09
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nAb2, $01
	smpsSetvoice        $04
	smpsAlterVol        $F6
	smpsPan             panRight, $00
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01
	smpsAlterNote       $03
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC5, $01
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4
	smpsAlterNote       $DB
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA4
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nFs4
	smpsAlterVol        $FA
	smpsPan             panLeft, $00
	smpsAlterNote       $DB
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3
	smpsAlterNote       $DB
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA3
	smpsAlterNote       $DB
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA3
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4
	smpsAlterNote       $03
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nC4, $01
	smpsAlterNote       $DB
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA3
	smpsAlterNote       $DB
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nA3
	smpsAlterNote       $DB
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb3
	smpsSetvoice        $09
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsAlterNote       $EF
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nBb2, $01
	smpsSetvoice        $07
	smpsAlterVol        $06
	smpsAlterNote       $0D
	dc.b	nC2, $05
	smpsSetvoice        $08
	smpsAlterNote       $0F
	dc.b	nB3, $06
	smpsSetvoice        $07
	smpsAlterNote       $0D
	dc.b	nC2, nC2, $05
	smpsPan             panCenter, $00
	smpsJump            end_boss_Jump02

; FM5 Data
end_boss_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0B
	smpsSetvoice        $00
	smpsAlterVol        $9D
	smpsAlterNote       $0C
	dc.b	nA7, $02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nA7, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nA7, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nAb7, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nAb7, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nAb7, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nAb7, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nG7, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nG7, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nG7, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nFs7, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nFs7, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nFs7, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nFs7, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nF7, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nF7, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nF7, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE7, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nE7, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nE7, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nEb7, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nEb7, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nEb7, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nD7, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nD7, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs7, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nCs7, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nCs7, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nCs7, $01, smpsNoAttack
	smpsAlterNote       $24
	dc.b	nC7, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nC7, $01, smpsNoAttack
	smpsAlterNote       $1F
	dc.b	nB6, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB6, $01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nB6, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB6, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb6, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nBb6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb6, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA6, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nA6, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nAb6, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nG6, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nFs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nF6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $DD
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $23
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $E1
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $DC
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nAb3, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nAb3, $01
	smpsAlterVol        $63
	dc.b	nRst, $17
	smpsSetvoice        $06
	smpsAlterVol        $9F
	smpsAlterNote       $0C
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0C
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	dc.b	nC4, $0B
	smpsAlterNote       $0C
	dc.b	nD4
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0C
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0C
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	dc.b	nC4, $0C
	smpsAlterNote       $0C
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	dc.b	nD4, $0C
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0C
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	smpsAlterNote       $0C
	dc.b	nD4, $0C
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	dc.b	nC4, $0B
	smpsAlterNote       $0C
	dc.b	nD4, $0C
	smpsAlterVol        $61
	dc.b	nRst, $16
	smpsAlterVol        $9F
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0C
	dc.b	nD4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	smpsAlterNote       $0F
	dc.b	nC4, $0B
	smpsAlterVol        $61
	dc.b	nRst, $17
	smpsAlterVol        $9F
	dc.b	nC4, $0B
	smpsAlterNote       $0C
	dc.b	nD4
	smpsSetvoice        $0A
	smpsAlterVol        $F4
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4

end_boss_Jump01:
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $15
	dc.b	nB4, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $10
	dc.b	nD5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $15
	dc.b	nB4, $0C
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nD5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06, nA4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $15
	dc.b	nB4, $0C
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nD5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $15
	dc.b	nB4, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $13
	dc.b	nC5, $0B
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $10
	dc.b	nD5, $0C
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $13
	dc.b	nC5, $0C
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4, $05, nA4, $06
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nG5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nA5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nG5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nA5, $17, nG5, $0B
	smpsAlterNote       $12
	dc.b	nFs5
	smpsAlterNote       $0D
	dc.b	nE5, $0C
	smpsAlterNote       $12
	dc.b	nFs5, $0B
	smpsAlterNote       $0D
	dc.b	nE5
	smpsAlterNote       $10
	dc.b	nG5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nA5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nG5, $16
	smpsAlterNote       $0D
	dc.b	nE5, $0C
	smpsAlterNote       $15
	dc.b	nB5, $16
	smpsAlterNote       $10
	dc.b	nA5, $0C, nG5, $0B
	smpsAlterNote       $12
	dc.b	nFs5
	smpsAlterNote       $10
	dc.b	nD5, $0C
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nG5, $16
	smpsAlterNote       $0D
	dc.b	nE5, $0C
	smpsAlterNote       $10
	dc.b	nA5, $16
	smpsAlterNote       $0D
	dc.b	nE5, $0C
	smpsAlterNote       $10
	dc.b	nG5, $16
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nA5, $17, nG5, $0B
	smpsAlterNote       $12
	dc.b	nFs5, $0C
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $12
	dc.b	nFs5
	smpsAlterNote       $0D
	dc.b	nE5, $0C
	smpsAlterNote       $10
	dc.b	nG5, $16
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nA5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $10
	dc.b	nG5, $17
	smpsAlterNote       $0D
	dc.b	nE5, $0B
	smpsAlterNote       $15
	dc.b	nB5, $17
	smpsAlterNote       $10
	dc.b	nA5, $0B, nG5
	smpsAlterNote       $12
	dc.b	nFs5, $0C
	smpsAlterNote       $10
	dc.b	nD5, $0B
	smpsSetvoice        $06
	smpsAlterVol        $02
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterNote       $15
	dc.b	nB4, $06
	smpsAlterNote       $10
	dc.b	nD5
	smpsAlterNote       $13
	dc.b	nC5, $05
	smpsAlterNote       $15
	dc.b	nB4, $06
	smpsAlterNote       $10
	dc.b	nA4, $05, nG4, $06
	smpsAlterNote       $15
	dc.b	nB4
	smpsAlterNote       $10
	dc.b	nA4, $05
	smpsAlterNote       $15
	dc.b	nB4, $06
	smpsAlterNote       $10
	dc.b	nG4, nA4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterNote       $0D
	dc.b	nE4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $13
	dc.b	nC4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $15
	dc.b	nB3, $05
	smpsAlterNote       $13
	dc.b	nC4, $06
	smpsAlterNote       $10
	dc.b	nA3
	smpsAlterNote       $15
	dc.b	nB3, $05
	smpsAlterNote       $10
	dc.b	nG3, $06
	smpsAlterNote       $11
	dc.b	nBb3
	smpsAlterNote       $12
	dc.b	nFs3, $05
	smpsAlterNote       $10
	dc.b	nA3, $06
	smpsAlterNote       $0E
	dc.b	nF3
	smpsAlterNote       $0D
	dc.b	nE3, $02, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nFs3, $1D, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01
	smpsAlterNote       $0D
	dc.b	nE3, $05
	smpsAlterNote       $10
	dc.b	nD3, $06
	smpsAlterNote       $0D
	dc.b	nE3, $0B
	smpsAlterNote       $12
	dc.b	nFs3, $1F, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01
	smpsAlterNote       $12
	dc.b	nFs3, $1F, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01
	smpsAlterNote       $0D
	dc.b	nE3, $06
	smpsAlterNote       $10
	dc.b	nD3, $05
	smpsAlterNote       $0D
	dc.b	nE3, $0B
	smpsAlterNote       $12
	dc.b	nFs3, $0C
	smpsAlterNote       $10
	dc.b	nG3, $05, nA3, $06
	smpsAlterNote       $15
	dc.b	nB3
	smpsAlterNote       $13
	dc.b	nC4, $05
	smpsAlterNote       $15
	dc.b	nB3, $1F, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB3, $01
	smpsAlterNote       $15
	dc.b	nB3, $06
	smpsAlterNote       $13
	dc.b	nC4
	smpsAlterNote       $10
	dc.b	nA3, $1F, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nA3, $01
	smpsAlterNote       $10
	dc.b	nA3, $06
	smpsAlterNote       $15
	dc.b	nB3
	smpsAlterNote       $10
	dc.b	nG3, $1F, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG3, $01
	smpsAlterNote       $10
	dc.b	nG3, $05, nA3, $06
	smpsAlterNote       $12
	dc.b	nFs3, $1F, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs3, $01
	smpsAlterNote       $0D
	dc.b	nE3, $05
	smpsAlterNote       $10
	dc.b	nD3, $06
	smpsAlterNote       $0D
	dc.b	nE3, $08, nE3, $07
	smpsAlterNote       $12
	dc.b	nFs3, $08, nFs3, $07
	smpsAlterNote       $10
	dc.b	nG3, $08, nG3, $07, nA3, $08, nA3, $07, nG3, $08, nG3, $07
	smpsAlterNote       $12
	dc.b	nFs3, $08, nFs3, $07
	smpsSetvoice        $00
	smpsAlterVol        $FA
	smpsPan             panRight, $00
	smpsAlterNote       $10
	dc.b	nD4, $17
	smpsPan             panCenter, $00
	dc.b	nD4, $02, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $DD
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $23
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nC4, $01
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $DD
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $23
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nB3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nBb3, smpsNoAttack
	smpsAlterNote       $19
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nBb3, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nA3, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nA3, $01
	smpsSetvoice        $06
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	smpsAlterNote       $10
	dc.b	nD4, $05, nG4, $06
	smpsAlterNote       $15
	dc.b	nB4
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nA4, nD4, $05, nG4, $06
	smpsAlterNote       $15
	dc.b	nB4
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterNote       $10
	dc.b	nA4, nD4, $05, nG4, $06
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nA4, $05, nD4, $06, nG4
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nA4, $05, nD4, $06, nG4
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nD4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nA4, $05, nD4, $06, nG4, $05
	smpsAlterNote       $15
	dc.b	nB4, $06
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06, nD4, nG4, $05
	smpsAlterNote       $15
	dc.b	nB4, $06
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06, nD4, nG4, $05
	smpsAlterNote       $15
	dc.b	nB4, $06
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nD5, $06
	smpsAlterNote       $13
	dc.b	nC5
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06
	smpsAlterNote       $13
	dc.b	nC5
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06, nG4
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06, nG4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nA4, $06, nG4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4
	smpsAlterNote       $10
	dc.b	nG4, $11
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterNote       $10
	dc.b	nG4, $06, nA4
	smpsAlterNote       $15
	dc.b	nB4, $0B
	smpsAlterNote       $10
	dc.b	nA4, $06
	smpsAlterNote       $15
	dc.b	nB4, $05
	smpsAlterNote       $13
	dc.b	nC5, $06
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nA4, $06
	smpsAlterVol        $04
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $15
	dc.b	nB4
	smpsAlterVol        $04
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nA4
	smpsAlterVol        $04
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $15
	dc.b	nB4
	smpsAlterVol        $04
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nA4
	smpsAlterVol        $04
	dc.b	nD4, $05
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nG4
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nC4, $05
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nC4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nA4, $05
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nC4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nC4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nA4, $05
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nC4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterVol        $FC
	smpsAlterNote       $10
	dc.b	nG4, $05
	smpsAlterVol        $04
	smpsAlterNote       $13
	dc.b	nC4, $06
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterVol        $FC
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsAlterVol        $04
	smpsAlterNote       $15
	dc.b	nB3, $06
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterVol        $FC
	smpsAlterNote       $12
	dc.b	nFs4, $06
	smpsAlterVol        $04
	smpsAlterNote       $15
	dc.b	nB3
	smpsAlterNote       $10
	dc.b	nD4, $05
	smpsAlterNote       $13
	dc.b	nC6, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $FE
	smpsAlterNote       $15
	dc.b	nB5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB5
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nA5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA5
	smpsAlterVol        $FE
	dc.b	nG5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nF5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $FE
	smpsAlterNote       $0D
	dc.b	nE5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE5
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nD5
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nD5
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nC5
	smpsAlterNote       $15
	dc.b	nB4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB4
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nA4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $FE
	dc.b	nG4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nF4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $FE
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE4
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nD4
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nC4
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FE
	smpsAlterNote       $15
	dc.b	nB3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB3
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nA3, nG3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG3
	smpsAlterVol        $FE
	smpsAlterNote       $0E
	dc.b	nF3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nF3
	smpsAlterVol        $FE
	smpsAlterNote       $0D
	dc.b	nE3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nE3
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nD3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nD3
	smpsAlterVol        $FE
	smpsAlterNote       $13
	dc.b	nC3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nC3
	smpsAlterVol        $FE
	smpsAlterNote       $15
	dc.b	nB2
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nB2
	smpsAlterVol        $FE
	smpsAlterNote       $10
	dc.b	nA2
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nA2
	smpsAlterVol        $69
	dc.b	nRst, $0B
	smpsAlterVol        $97
	dc.b	nA4, $11, nG4
	smpsAlterNote       $0E
	dc.b	nF4
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $10
	dc.b	nD4, $0B
	smpsAlterVol        $69
	dc.b	nRst
	smpsAlterVol        $97
	dc.b	nG4, $11
	smpsAlterNote       $0E
	dc.b	nF4
	smpsAlterNote       $0D
	dc.b	nE4
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $13
	dc.b	nC4, $0B
	smpsAlterVol        $69
	dc.b	nRst, $0C
	smpsAlterVol        $97
	smpsAlterNote       $0E
	dc.b	nF4, $11
	smpsAlterNote       $0D
	dc.b	nE4, $10
	smpsAlterNote       $10
	dc.b	nD4, $11
	smpsAlterNote       $13
	dc.b	nC4
	smpsAlterNote       $15
	dc.b	nB3, $0C
	smpsAlterVol        $69
	dc.b	nRst, $0B
	smpsAlterVol        $97
	smpsAlterNote       $0D
	dc.b	nE4, $11
	smpsAlterNote       $10
	dc.b	nD4
	smpsAlterNote       $13
	dc.b	nC4
	smpsAlterNote       $15
	dc.b	nB3
	smpsAlterNote       $10
	dc.b	nA3, $0B
	smpsSetvoice        $0A
	smpsAlterVol        $FC
	smpsAlterNote       $0D
	dc.b	nE4, $06
	smpsAlterNote       $12
	dc.b	nFs4, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	smpsJump            end_boss_Jump01

; FM6 Data
end_boss_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $37
	smpsSetvoice        $06
	smpsAlterVol        $99
	smpsPan             panRight, $00
	smpsAlterNote       $0C
	dc.b	nA2, $06, nA2, $05, nA2, $06, nA2, nA3, $0B, nA2, $06, nA2
	dc.b	$05, nA2, $06, nA2, nG3, $0B, nA2, $05, nA2, $06, nA2, nA2
	dc.b	$05, nA3, $0C, nA2, $05, nA2, $06, nA2, nA2, $05, nG3, $0C
	dc.b	nA2, $05, nA2, $06, nA2, nA2, $05, nG3, $0B, nA3, $0C, nA2
	dc.b	$05, nA2, $06, nA2, nA2, $05, nA3, $0C, nA2, $05, nA2, $06
	dc.b	nA2, nA2, $05, nG3, $0C, nA2, $05, nA2, $06, nA2, $05, nA2
	dc.b	$06, nA3, $0B, nA2, $06, nA2, nA2, $05, nA2, $06, nG3, $0B
	dc.b	nA2, $06, nA2, nA2, $05, nA2, $06, nG3, $0B, nA3, nA2, $06
	dc.b	nA2, nA2, $05, nA2, $06, nA3, $0B, nA2, $06, nA2, nA2, $05
	dc.b	nA2, $06, nG3, $0B, nA2, $06, nA2, nA2, $05, nA2, $06, nA3
	dc.b	$0B, nA2, $06, nA2, $05, nA2, $06, nA2, nG3, $0B, nA2, $06
	dc.b	nA2, $05, nA2, $06, nA2, nG3, $0B, nA3, nA2, $06, nA2, $05
	dc.b	nA2, $06, nA2, nA3, $0B, nA2, $06, nA2, $05, nA2, $06, nA2
	dc.b	nG3, $0B, nA2, $06, nA2, $05, nA2, $06, nA2, nA3, $0B, nA2
	dc.b	$05, nA2, $06, nA2, nA2, $05, nG3, $0C, nA2, $05, nA2, $06
	dc.b	nA2, nA2, $05, nG3, $0C, nA3, $0B
	smpsAlterNote       $09
	dc.b	nE2, nE2, $06, nE2, $04

end_boss_Jump00:
	dc.b	smpsNoAttack, nE2, $01, nE3, $0C, nE2, $05, nE2, $06, nE2, nE2, $05
	dc.b	nE3, $0C, nE2, $0B, nE2, $06, nE2, $05, nE2, $0C, nE2, $05
	dc.b	nE2, $06, nE3, $0B, nE2, $06, nE2, $05, nE2, $06, nE2, nE3
	dc.b	$0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0C
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nG2
	dc.b	$0B, nG2, $06, nG2, nG3, $0B, nG2, $05, nG2, $06, nG2, nG2
	dc.b	$05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05
	smpsAlterNote       $09
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, $05
	dc.b	nE2, $06, nE2, nE3, $0B, nE2, nE2, $06, nE2, nE2, $0B, nE2
	dc.b	$06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	smpsAlterNote       $0C
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2
	dc.b	$06, nG2, $05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05, nD2
	dc.b	$0C, nD2, $05, nD2, $06, nD3, $0B, nD2, $06, nD2, nD2, $05
	dc.b	nD2, $06, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD2, $06, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $05, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG2, $06, smpsNoAttack, nA2
	smpsAlterNote       $09
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, nE2, $05, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06, nE2
	dc.b	$0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2, $06
	dc.b	nE2, nE3, $0B, nE2, nE2, $06, nE2, $05
	smpsAlterNote       $0C
	dc.b	nG2, $0C, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, nG2, $06, nG2, nG2, $0B, nG2
	dc.b	$06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06, nG2, nG2, $05
	dc.b	nG3, $0C, nG2, $0B, nG2, $05, nG2, $06
	smpsAlterNote       $09
	dc.b	nE2, $0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2
	dc.b	$06, nE2, nE3, $0B, nE2, nE2, $06, nE2, $05, nE2, $0C, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2, $05, nE2, $06
	dc.b	nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	smpsAlterNote       $0C
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06
	dc.b	nG2, nG2, $05, nG3, $0C, nG2, $0B, nG2, $06, nG2, $05, nD2
	dc.b	$0B, nD2, $06, nD2, nD3, $0B, nD2, $06, nD2, $05, nD2, $06
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD2, $06, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $05, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG2, $06, smpsNoAttack, nA2
	smpsAlterNote       $09
	dc.b	nE2, $0B, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, $0C, nE2, $05, nE2, $06, nE2
	dc.b	$0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2
	dc.b	nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05
	smpsAlterNote       $0C
	dc.b	nG2, $0C, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, $05
	dc.b	nG2, $06, nG2, nG3, $0B, nG2, nG2, $06, nG2, nG2, $0B, nG2
	dc.b	$06, nG2, $05, nG3, $0B, nG2, $06, nG2, nG2, $05, nG2, $06
	dc.b	nG3, $0B, nG2, $0C, nG2, $05, nG2, $06
	smpsAlterNote       $09
	dc.b	nE2, $0B, nE2, $06, nE2, nE3, $0B, nE2, $05, nE2, $06, nE2
	dc.b	nE2, $05, nE3, $0C, nE2, $0B, nE2, $06, nE2, $05, nE2, $0C
	dc.b	nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, $05, nE2, $06
	dc.b	nE2, nE3, $0B, nE2, nE2, $06, nE2
	smpsAlterNote       $0C
	dc.b	nG2, $0B, nG2, $06, nG2, $05, nG3, $0C, nG2, $05, nG2, $06
	dc.b	nG2, $05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06
	dc.b	nD2, $0B, nD2, $06, nD2, nD3, $0B, nD2, $06, nD2, $05, nD2
	dc.b	$06, nD2, $05, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, $06, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $06, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG2, smpsNoAttack, nA2, $05
	smpsAlterNote       $09
	dc.b	nE2, $0C, nE2, $05, nE2, $06, nE3, $0B, nE2, $06, nE2, nE2
	dc.b	$05, nE2, $06, nE3, $0B, nE2, nE2, $06, nE2, nE2, $0B, nE2
	dc.b	$06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06, nE2, nE2, $05
	dc.b	nE3, $0B, nE2, $0C, nE2, $05, nE2, $06
	smpsAlterNote       $0C
	dc.b	nG2, $0B, nG2, $06, nG2, nG3, $0B, nG2, $06, nG2, $05, nG2
	dc.b	$06, nG2, nG3, $0B, nG2, nG2, $06, nG2, $05, nG2, $0C, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2, $05, nG2, $06
	dc.b	nG3, $0B, nG2, nG2, $06, nG2
	smpsAlterNote       $09
	dc.b	nE2, $0B, nE2, $06, nE2, $05, nE3, $0C, nE2, $05, nE2, $06
	dc.b	nE2, nE2, $05, nE3, $0C, nE2, $0B, nE2, $05, nE2, $06, nE2
	dc.b	$0B, nE2, $06, nE2, nE3, $0B, nE2, $06, nE2, $05, nE2, $06
	dc.b	nE2, nE3, $0B, nE2, nE2, $06, nE2, $05
	smpsAlterNote       $0C
	dc.b	nG2, $0C, nG2, $05, nG2, $06, nG3, $0B, nG2, $06, nG2, nG2
	dc.b	$05, nG2, $06, nG3, $0B, nG2, $0C, nG2, $05, nG2, $06, nD2
	dc.b	$0B, nD2, $06, nD2, $05, nD3, $0C, nD2, $05, nD2, $06, nD2
	dc.b	nD2, $05, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, $06, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nE2, $05, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $06, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nG2, smpsNoAttack, nA2, $05
	smpsAlterVol        $67
	dc.b	nRst, $0B
	smpsAlterVol        $99
	smpsAlterNote       $0A
	dc.b	nF3, $11
	smpsAlterNote       $09
	dc.b	nE3
	smpsAlterNote       $0C
	dc.b	nD3
	smpsAlterNote       $0F
	dc.b	nC3
	smpsAlterNote       $11
	dc.b	nB2, $0C
	smpsAlterVol        $67
	dc.b	nRst, $0B
	smpsAlterVol        $99
	smpsAlterNote       $09
	dc.b	nE3, $11
	smpsAlterNote       $0C
	dc.b	nD3
	smpsAlterNote       $0F
	dc.b	nC3
	smpsAlterNote       $11
	dc.b	nB2
	smpsAlterNote       $0C
	dc.b	nA2, $0B
	smpsAlterVol        $67
	dc.b	nRst
	smpsAlterVol        $99
	dc.b	nD3, $11
	smpsAlterNote       $0F
	dc.b	nC3
	smpsAlterNote       $11
	dc.b	nB2
	smpsAlterNote       $0C
	dc.b	nA2, nG2, $0B
	smpsAlterVol        $67
	dc.b	nRst, $0C
	smpsAlterVol        $99
	smpsAlterNote       $0F
	dc.b	nC3, $10
	smpsAlterNote       $11
	dc.b	nB2, $11
	smpsAlterNote       $0C
	dc.b	nA2, nG2
	smpsAlterNote       $0A
	dc.b	nF2, $0C
	smpsAlterNote       $09
	dc.b	nE2, $0B, nE2, $06, nE2, $03
	smpsPan             panRight, $00
	smpsJump            end_boss_Jump00

end_boss_Voices:
;	Voice $00
;	$30
;	$71, $00, $31, $32, 	$58, $5F, $5F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$03, $03, $02, $06, 	$0D, $1B, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $02, $03, $03
	smpsVcTotalLevel    $00, $14, $1B, $0D

;	Voice $01
;	$3A
;	$01, $03, $01, $01, 	$14, $10, $10, $14, 	$0A, $05, $05, $05
;	$03, $00, $00, $00, 	$26, $16, $16, $19, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $10, $10, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $03
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $09, $06, $06, $06
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $02
;	$28
;	$39, $35, $30, $31, 	$1F, $1F, $1F, $1F, 	$0C, $0A, $07, $0A
;	$07, $07, $07, $09, 	$26, $16, $16, $F6, 	$7F, $7F, $7F, $00
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
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $03
;	$3C
;	$0F, $0F, $04, $02, 	$1F, $1F, $1F, $1F, 	$00, $11, $18, $0D
;	$00, $00, $00, $00, 	$00, $FF, $F0, $FF, 	$7F, $00, $7F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $04, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $18, $11, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $00
	smpsVcReleaseRate   $0F, $00, $0F, $00
	smpsVcTotalLevel    $00, $7F, $00, $7F

;	Voice $04
;	$3B
;	$0B, $31, $00, $00, 	$5F, $5F, $5F, $5F, 	$04, $15, $1A, $0B
;	$00, $04, $00, $00, 	$01, $61, $FF, $F7, 	$00, $19, $00, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $00, $00, $01, $0B
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $1A, $15, $04
	smpsVcDecayRate2    $00, $00, $04, $00
	smpsVcDecayLevel    $0F, $0F, $06, $00
	smpsVcReleaseRate   $07, $0F, $01, $01
	smpsVcTotalLevel    $00, $00, $19, $00

;	Voice $05
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

;	Voice $06
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$34, $23, $24, $27, 	$14, $13, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $07, $04, $03, $04
	smpsVcTotalLevel    $00, $0A, $13, $14

;	Voice $07
;	$24
;	$00, $00, $00, $00, 	$DF, $1F, $1F, $1F, 	$13, $10, $11, $10
;	$0F, $01, $0F, $01, 	$76, $55, $76, $55, 	$05, $00, $0D, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $11, $10, $13
	smpsVcDecayRate2    $01, $0F, $01, $0F
	smpsVcDecayLevel    $05, $07, $05, $07
	smpsVcReleaseRate   $05, $06, $05, $06
	smpsVcTotalLevel    $00, $0D, $00, $05

;	Voice $08
;	$38
;	$7F, $7E, $05, $00, 	$1F, $1F, $1F, $1F, 	$1C, $19, $19, $19
;	$00, $00, $00, $14, 	$00, $00, $00, $0F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $07
	smpsVcCoarseFreq    $00, $05, $0E, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $19, $19, $19, $1C
	smpsVcDecayRate2    $14, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $00, $00, $00
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $09
;	$3C
;	$71, $01, $03, $01, 	$1F, $1F, $DF, $5F, 	$0C, $11, $10, $0E
;	$19, $0F, $17, $14, 	$A6, $F8, $56, $95, 	$02, $00, $0F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $07
	smpsVcCoarseFreq    $01, $03, $01, $01
	smpsVcRateScale     $01, $03, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $10, $11, $0C
	smpsVcDecayRate2    $14, $17, $0F, $19
	smpsVcDecayLevel    $09, $05, $0F, $0A
	smpsVcReleaseRate   $05, $06, $08, $06
	smpsVcTotalLevel    $00, $0F, $00, $02

;	Voice $0A
;	$3A
;	$71, $43, $21, $01, 	$95, $9F, $8E, $5A, 	$00, $00, $00, $00
;	$09, $00, $00, $00, 	$53, $8A, $13, $05, 	$18, $1E, $32, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $04, $07
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $1A, $0E, $1F, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $09
	smpsVcDecayLevel    $00, $01, $08, $05
	smpsVcReleaseRate   $05, $03, $0A, $03
	smpsVcTotalLevel    $00, $32, $1E, $18

