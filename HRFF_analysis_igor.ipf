#pragma rtGlobals=1		// Use modern global access method.
// ver.1.00

// case.outputt
// case.trace
Macro HRFF_panel()

NewPanel/W=(0, 0, 600, 150)
// case.outputt
SetDrawEnv fillfgc= (48896,65280,48896)
DrawRect 5,5,165,85

//DOS_VEC
SetDrawEnv fsize= 12
DrawText 15,20,"case.outputt"
Button button0 proc=ButtonProc
Button button0 title="DOS_VEC",proc=ButtonProc
SetDrawEnv fsize= 14
Button button0 size={66,20}
Button button0 pos={15,20}

//PDOS and coloring
//PDOS
SetDrawEnv fsize= 12
Button button1 proc=ButtonProc_1
DrawText 95,20,"case.dos1eV"
Button button1 title="Partial_DOS",proc=ButtonProc_1
SetDrawEnv fsize= 14
Button button1 size={66,20}
Button button1 pos={95,20}
// coloring
SetDrawEnv fsize= 12
Button button2 proc=ButtonProc_2
Button button2 title="Coloring",proc=ButtonProc_2
SetDrawEnv fsize= 14
Button button2 size={66,20}
Button button2 pos={95,50}

//HR
SetDrawEnv fillfgc= (48896,65280,65280)
DrawRect 165,5,405,140
SetDrawEnv fsize= 12
DrawText 175,20,"TH_HR_DATA.txt, NFE_HR_L1_DATA.txt,"
//HR_SIGMA_Cubic
SetDrawEnv fsize= 12
Button button4 proc=ButtonProc_4
Button button4 title="Cubic",proc=ButtonProc_4
SetDrawEnv fsize= 14
Button button4 size={66,20}
Button button4 pos={175,20}
//HR_SIGMA_Othorhombic
SetDrawEnv fsize= 12
Button button5 proc=ButtonProc_5
Button button5 title="Othorhombic",proc=ButtonProc_5
SetDrawEnv fsize= 14
Button button5 size={70,20}
Button button5 pos={175,50}
//HR_SIGMA_Tetragonal
SetDrawEnv fsize= 12
Button button6 proc=ButtonProc_6
Button button6 title="Tetragonal",proc=ButtonProc_6
SetDrawEnv fsize= 14
Button button6 size={66,20}
Button button6 pos={175,80}
//HR_SIGMA_Hexagonal
SetDrawEnv fsize= 12
Button button7 proc=ButtonProc_7
Button button7 title="Hexagonal",proc=ButtonProc_7
SetDrawEnv fsize= 14
Button button7 size={66,20}
Button button7 pos={175,110}

//C2
SetDrawEnv fsize= 12
Button button8 proc=ButtonProc_8
Button button8 title="C2",proc=ButtonProc_8
SetDrawEnv fsize= 14
Button button8 size={66,20}
Button button8 pos={255,20}
SetDrawEnv fsize= 12
DrawText 245,90,"C2_005_DATA.txt"
DrawText 245,105,"C2_020_DATA.txt"
DrawText 245,120,"C2_050_DATA.txt"

//HR_DOS No.14
SetDrawEnv fsize= 12
Button button14 proc=ButtonProc_14
Button button14 title="DOS",proc=ButtonProc_14
SetDrawEnv fsize= 14
Button button14 size={66,20}
Button button14 pos={255,50}

//HR_FF
SetDrawEnv fillfgc= (65280,48896,62208)
DrawRect 405,5,580,140
//FF_SIGMA_Cubic
SetDrawEnv fsize= 12
Button button9 proc=ButtonProc_9
Button button9 title="Cubic",proc=ButtonProc_9
SetDrawEnv fsize= 14
Button button9 size={66,20}
Button button9 pos={335,20}
//FF_SIGMA_Othorhombic
SetDrawEnv fsize= 12
Button button10 proc=ButtonProc_10
Button button10 title="Othorhombic",proc=ButtonProc_10
SetDrawEnv fsize= 14
Button button10 size={70,20}
Button button10 pos={335,50}
//FF_SIGMA_Tetragonal
SetDrawEnv fsize= 12
Button button11 proc=ButtonProc_11
Button button11 title="Tetragonal",proc=ButtonProc_11
SetDrawEnv fsize= 14
Button button11 size={66,20}
Button button11 pos={335,80}
//FF_SIGMA_Hexagonal
SetDrawEnv fsize= 12
Button button12 proc=ButtonProc12
Button button12 title="Hexagonal",proc=ButtonProc_12
SetDrawEnv fsize= 14
Button button12 size={66,20}
Button button12 pos={335,110}

//spa No.3
SetDrawEnv fsize= 12
DrawText 415,20,"case.spagetti_ene"
SetDrawEnv fsize= 12
Button button3 proc=ButtonProc_3
Button button3 title="Spa.",proc=ButtonProc_3
SetDrawEnv fsize= 14
Button button3 size={66,20}
Button button3 pos={415,20}

//FF_DOS
SetDrawEnv fsize= 12
Button button13 proc=ButtonProc_13
Button button13 title="FF_DOS",proc=ButtonProc_13
SetDrawEnv fsize= 14
Button button13 size={66,20}
Button button13 pos={495,20}

End 

//DOS
function show_graph_DOS()
  Display DOS vs ENERGY; AppendToGraph/R VEC vs ENERGY
  TextBox/C/N=text0/A=MB/X=-2.64/Y=-9.28
end

//HR
function show_graph_HR()
			Display X2K_2 vs ENERGY; AppendToGraph/R F_E vs ENERGY
			SetAxis/A left
			SetAxis bottom *,30
			//
			// C2 > XX
			//AppendToGraph C2005 vs EC2005
			AppendToGraph C2020 vs EC2020
			//AppendToGraph C2050 vs EC2050
			ModifyGraph mode(C2020)=2,lsize(C2020)=2,rgb(C2020)=(16384,65280,16384)
			//
			//NFE
			AppendToGraph NFE vs ENERGY
			ModifyGraph lsize(NFE)=2,rgb(NFE)=(65280,0,0) 
			//
			// CG2 > XX
			//AppendToGraph C2cg005 vs EC2cg005
			AppendToGraph C2cg020 vs EC2cg020
			// AppendToGraph C2cg050 vs EC2cg050
			ModifyGraph mode(C2cg020)=2,lsize(C2cg020)=2,rgb(C2cg020)=(65280,48896,62208)
			//
			ReorderTraces X2K_2,{C2020};DelayUpdate
			ReorderTraces NFE,{C2cg020}
			// left label
			ModifyGraph lblMargin(left)=20
			// right label
			ModifyGraph lblMargin(right)=35
			// bottom label
			ModifyGraph lblMargin(bottom)=15
			//
			TextBox/C/N=text0/A=MB/X=-2.64/Y=-9.28
end

//spa
function show_graph_spa()
  //Display wave1 vs wave0
  Display wavevector vs Energy
  // EF position
  TextBox/C/N=text0/A=MB/X=0.00/Y=0.00
  // Gamma position
  TextBox/C/N=text1/F=0/A=MC "\\F'Symbol'\\Z16G"
  TextBox/C/N=text1/A=MB/X=-41.25/Y=-9.55
  // K position
  TextBox/C/N=text2/F=0/A=MC "\\F'Symbol'\\Z16K"
  TextBox/C/N=text2/A=RB/X=88.78/Y=-9.55
end

// prog
Function ButtonProc(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// DOS_VEC
			// graph
			show_graph_DOS()
			//
			ModifyGraph width=283.465,height=226.772
                   ModifyGraph tick(left)=2,fSize(left)=16,standoff(left)=0,font(left)="Arial";DelayUpdate
                   SetAxis left 0,2
                   Label left "DOS [states/eV.atom]"
                   ModifyGraph tick(right)=2,fSize(right)=16,lblRot(right)=180,standoff(right)=0;DelayUpdate
                   ModifyGraph font(right)="Arial";DelayUpdate
                   SetAxis right 0,25
                   Label right "\\F'Arial'\\Z16\\f01VEC\\f00"
                   ModifyGraph mirror(bottom)=1,fSize=16,standoff=0,font="Arial";DelayUpdate
                   Label bottom "Energy [eV]";DelayUpdate
                   SetAxis bottom -12,30
                   ModifyGraph zero(bottom)=1
                   ModifyGraph rgb(DOS1)=(0,0,0),rgb(DOS1_INT)=(30583,30583,30583)
                   ModifyGraph tick=2
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   ModifyGraph nticks(bottom)=20
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_1(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// Partial_DOS
		       ModifyGraph width=283,height=227
                    SetAxis bottom -10,24
                    SetAxis left 0,1
                    ModifyGraph mirror(bottom)=1,fSize=16,standoff=0,font="Arial";DelayUpdate
                    Label bottom "Energy [eV]";DelayUpdate
                    SetAxis bottom -12,30
                    ModifyGraph zero(bottom)=1
                    ModifyGraph tick(bottom)=2
                    ModifyGraph tick=2
                    ModifyGraph mirror=1
                    Label left "DOS [states/eV.atom]"
                    TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                    ModifyGraph nticks(bottom)=20
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_2(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// Coloring
		      ModifyGraph rgb(Ag_s)=(65535,43690,0),rgb(Ag_p)=(0,65535,0);DelayUpdate
                   ModifyGraph rgb(Ag_d)=(1,16019,65535),rgb(Ag_f)=(65535,16385,55749)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_4(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// HR_cubic
			show_graph_HR()
			//
		      ModifyGraph width=567,height=567
                   ModifyGraph tick=2,fSize=16,standoff=0,font="Arial"
                   SetAxis left 0,*
                   SetAxis bottom *,30
                   Label bottom "Energy [eV]"
                   ModifyGraph zero(bottom)=1
                   ModifyGraph mode(X2K_2)=2,lsize(X2K_2)=2,rgb(X2K_2)=(0,0,0)
                   Label left "\\F'Arial'\\Z16<{2|\\f01k\\f00+\\f01G\\f00|}\\S2\\M\\Z16> [x(2\\F'Symbol'p\\F'Arial'/a)\\S2\\M\\Z16]"
                   ModifyGraph log(right)=1,tick=2,fSize=16,standoff=0;DelayUpdate
                   ModifyGraph font="Arial"
                   ModifyGraph rgb(F_E)=(43690,43690,43690)
                   SetAxis right 0.001,100
                   ReorderTraces X2K_2,{F_E}
                   Label right "\\F'Arial'\\Z16F(E)"
                   ModifyGraph lblRot(right)=180
                   ModifyGraph mirror(bottom)=1
                   ModifyGraph nticks(bottom)=20
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   TextBox/C/N=text1/M/H=18/A=MC "\\F'Arial'\\Z14ZnLa (N=2) (Nk=1000)\r(2k\\BF\\M\\Z14)\\S2\\M\\Z14=3.2\\f04+\\f000.2\\K(0,0,0)";DelayUpdate
                   AppendText "(e/a)\\Blocal\\K(0,0,0)\\M\\Z14=\\F'Symbol'p\\F'Arial'{(2k\\BF\\M\\Z14)\\S2\\M\\Z14}\\S3/2\\M\\Z14/3N=\\F'Symbol'p\\F'Arial'{3.2}\\S3/2\\M\\Z14/6=3.0\\K(0,0,0)"
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_5(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// HR_otho
			show_graph_HR()
			//
		      ModifyGraph width=567,height=567
                   ModifyGraph tick=2,mirror=1,fSize=16,standoff=0,font="Arial"
                   SetAxis left 0,*
                   SetAxis bottom *,30
                   Label bottom "Energy [eV]"
                   ModifyGraph zero(bottom)=1
                   ModifyGraph mode(X2K_2)=2,lsize(X2K_2)=2,rgb(X2K_2)=(0,0,0)
                   Label left "\\F'Arial'\\Z16<{2|\\f01k\\f00+\\f01G\\f00|}\\S2\\M\\Z16> [x{2\F'Symbol'p\F'Arial'/(abc)\S1/3\M\Z16}\S2\M\Z16]"
                   ModifyGraph log(right)=1,tick=2,fSize=16,standoff=0;DelayUpdate
                   ModifyGraph font="Arial"
                   ModifyGraph rgb(F_E)=(43690,43690,43690)
                   SetAxis right 0.001,100
                   ReorderTraces X2K_2,{F_E}
                   Label right "\\F'Arial'\\Z16F(E)"
                   ModifyGraph lblRot(right)=180
                   ModifyGraph mirror(bottom)=1
                   ModifyGraph nticks(bottom)=20
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   TextBox/C/N=text1/M/H=18/A=MC "\\F'Arial'\\Z14ZnLa (N=2) (Nk=1000)\r(2k\\BF\\M\\Z14)\\S2\\M\\Z14=3.2\\f04+\\f000.2\\K(0,0,0)";DelayUpdate
                   AppendText "(e/a)\\Blocal\\K(0,0,0)\\M\\Z14=\\F'Symbol'p\\F'Arial'{(2k\\BF\\M\\Z14)\\S2\\M\\Z14}\\S3/2\\M\\Z14/3N=\\F'Symbol'p\\F'Arial'{3.2}\\S3/2\\M\\Z14/6=3.0\\K(0,0,0)"
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_6(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// HR_tetra
			show_graph_HR()
			//
		      ModifyGraph width=567,height=567
                   ModifyGraph tick=2,mirror=1,fSize=16,standoff=0,font="Arial"
                   SetAxis left 0,*
                   SetAxis bottom *,30
                   Label bottom "Energy [eV]"
                   ModifyGraph zero(bottom)=1
                   ModifyGraph mode(X2K_2)=2,lsize(X2K_2)=2,rgb(X2K_2)=(0,0,0)
                   Label left "\\F'Arial'\\Z16<{2|\\f01k\\f00+\\f01G\\f00|}\\S2\\M\\Z16> [x{2\F'Symbol'p\F'Arial'/(a\S2\M\Z16b)\S1/3\M\Z16}\S2\M\Z16]"
                   ModifyGraph log(right)=1,tick=2,fSize=16,standoff=0;DelayUpdate
                   ModifyGraph font="Arial"
                   ModifyGraph rgb(F_E)=(43690,43690,43690)
                   SetAxis right 0.001,100
                   ReorderTraces X2K_2,{F_E}
                   Label right "\\F'Arial'\\Z16F(E)"
                   ModifyGraph lblRot(right)=180
                   ModifyGraph mirror(bottom)=1
                   ModifyGraph nticks(bottom)=20
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   TextBox/C/N=text1/M/H=18/A=MC "\\F'Arial'\\Z14ZnLa (N=2) (Nk=1000)\r(2k\\BF\\M\\Z14)\\S2\\M\\Z14=3.2\\f04+\\f000.2\\K(0,0,0)";DelayUpdate
                   AppendText "(e/a)\\Blocal\\K(0,0,0)\\M\\Z14=\\F'Symbol'p\\F'Arial'{(2k\\BF\\M\\Z14)\\S2\\M\\Z14}\\S3/2\\M\\Z14/3N=\\F'Symbol'p\\F'Arial'{3.2}\\S3/2\\M\\Z14/6=3.0\\K(0,0,0)"
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_7(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// HR_hex
			show_graph_HR()
			//
		      ModifyGraph width=567,height=567
                   ModifyGraph tick=2,mirror=1,fSize=16,standoff=0,font="Arial"
                   SetAxis left 0,*
                   SetAxis bottom *,30
                   Label bottom "Energy [eV]"
                   ModifyGraph zero(bottom)=1
                   ModifyGraph mode(X2K_2)=2,lsize(X2K_2)=2,rgb(X2K_2)=(0,0,0)
                   Label left "\\F'Arial'\\Z16<{2|\\f01k\\f00+\\f01G\\f00|}\\S2\\M\\Z16> [x{2\F'Symbol'p\F'Arial'/(a\S2\M\Z16c√3/4)\S1/3\M\Z16}\S2\M\Z16]"
                   ModifyGraph log(right)=1,tick=2,fSize=16,standoff=0;DelayUpdate
                   ModifyGraph font="Arial"
                   ModifyGraph rgb(F_E)=(43690,43690,43690)
                   SetAxis right 0.001,100
                   ReorderTraces X2K_2,{F_E}
                   Label right "\\F'Arial'\\Z16F(E)"
                   ModifyGraph lblRot(right)=180
                   ModifyGraph mirror(bottom)=1
                   ModifyGraph nticks(bottom)=20
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   TextBox/C/N=text1/M/H=18/A=MC "\\F'Arial'\\Z14ZnLa (N=2) (Nk=1000)\r(2k\\BF\\M\\Z14)\\S2\\M\\Z14=3.2\\f04+\\f000.2\\K(0,0,0)";DelayUpdate
                   AppendText "(e/a)\\Blocal\\K(0,0,0)\\M\\Z14=\\F'Symbol'p\\F'Arial'{(2k\\BF\\M\\Z14)\\S2\\M\\Z14}\\S3/2\\M\\Z14/3N=\\F'Symbol'p\\F'Arial'{3.2}\\S3/2\\M\\Z14/6=3.0\\K(0,0,0)"
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_8(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// C2
			//
		      ModifyGraph tick=2,mirror=1,fSize=16,standoff=0,font="Arial"
                   ModifyGraph zero(bottom)=1
                   SetAxis left 0,1.1;DelayUpdate
                   SetAxis bottom -10,30
                   Label bottom "Energy [eV]"
                   ModifyGraph width=226.772,height=170.079
                   ModifyGraph mode=2,lsize=2,rgb=(0,0,0)
                   Label left "\\F'Arial'\\Z16<|C|\\S2\\M\\Bmax\\M>"
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   TextBox/C/N=text1/M/H=18/A=MC "\\F'Arial'\\Z14<|C|\\S2\\M\\Z14\\Bmax\\M\\Z14>\\BE\\BF\\M\\Z14=0.37"
                   ModifyGraph nticks(bottom)=20
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_9(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// FF_cubic
			// C2
			Display G_C2 vs G_E; AppendToGraph DEL_C2 vs DEL_E; AppendToGraph N_C2 vs N_E
                    AppendToGraph P_C2 vs P_E; AppendToGraph H_C2 vs H_E
                    // BG
                    AppendToGraph G_C2_BG vs G_E_BG; AppendToGraph DEL_C2_BG vs DEL_E_BG; AppendToGraph N_C2_BG vs N_E_BG
                    AppendToGraph P_C2_BG vs P_E_BG; AppendToGraph H_C2_BG vs H_E_BG
                    // CG
                    AppendToGraph CG_G_C2 vs  CG_G_E; AppendToGraph  CG_DEL_C2 vs  CG_DEL_E; AppendToGraph  CG_N_C2 vs  CG_N_E
                    AppendToGraph  CG_P_C2 vs  CG_P_E; AppendToGraph  CG_H_C2 vs CG_H_E
                    // color
                    ModifyGraph rgb=(0,0,0)
                    // G point
                    ModifyGraph mode(CG_G_C2)=3,marker(CG_G_C2)=19,msize(CG_G_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_G_C2)=(65280,0,0)
                    // DEL point
                    ModifyGraph mode(CG_DEL_C2)=3,marker(CG_DEL_C2)=19,msize(CG_DEL_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_DEL_C2)=(65280,43520,0)
                    // N point
                    ModifyGraph mode(CG_N_C2)=3,marker(CG_N_C2)=19,msize(CG_N_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_N_C2)=(0,65280,0)
                    // P point
                    ModifyGraph mode(CG_P_C2)=3,marker(CG_P_C2)=19,msize(CG_P_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_P_C2)=(0,43520,65280)
                    // H point
                    ModifyGraph mode(CG_H_C2)=3,marker(CG_H_C2)=19,msize(CG_H_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_H_C2)=(0,0,65280)
                    //
                   ModifyGraph width=567,height=567
                   ModifyGraph tick=2,fSize=16,standoff=0,font="Arial"
                   SetAxis left 0,*
                   SetAxis bottom *,30
                   Label bottom "Energy [eV]"
                   ModifyGraph zero(bottom)=1
                   //ModifyGraph mode(X2K_2)=2,lsize(X2K_2)=2,rgb(X2K_2)=(0,0,0)
                   Label left "\\F'Arial'\\Z16<{2|\\f01k\\f00+\\f01G\\f00|}\\S2\\M\\Z16> [x(2\\F'Symbol'p\\F'Arial'/a)\\S2\\M\\Z16] + |C|\S2"
                   ModifyGraph log(right)=1,tick=2,fSize=16,standoff=0;DelayUpdate
                   ModifyGraph font="Arial"
                   ModifyGraph rgb(F_E)=(43690,43690,43690)
                   SetAxis right 0.001,100
                   //ReorderTraces X2K_2,{F_E}
                   Label right "\\F'Arial'\\Z16F(E)"
                   ModifyGraph lblRot(right)=180
                   ModifyGraph mirror(bottom)=1
                   ModifyGraph nticks(bottom)=20
                   //
                   ModifyGraph mirror=1
                   ModifyGraph lblMargin(left)=25
                   ModifyGraph lblMargin(bottom)=15
                   	break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_10(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// FF_otho
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_11(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// FF_tetra
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_12(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// FF_hex
			Display G_C2 vs G_E; AppendToGraph A_C2 vs A_E; AppendToGraph LAM_C2 vs LAM_E
                    AppendToGraph M_C2 vs M_E; AppendToGraph L_C2 vs L_E
                    // BG
                    AppendToGraph G_C2_BG vs G_E_BG; AppendToGraph A_C2_BG vs A_E_BG; AppendToGraph LAM_C2_BG vs LAM_E_BG
                    AppendToGraph M_C2_BG vs M_E_BG; AppendToGraph L_C2_BG vs L_E_BG
                    // CG
                    AppendToGraph CG_G_C2 vs  CG_G_E; AppendToGraph  CG_A_C2 vs  CG_A_E; AppendToGraph  CG_LAM_C2 vs  CG_LAM_E
                    AppendToGraph  CG_M_C2 vs  CG_M_E; AppendToGraph  CG_L_C2 vs CG_L_E
                    // color
                    ModifyGraph rgb=(0,0,0)
                    // G point
                    ModifyGraph mode(CG_G_C2)=3,marker(CG_G_C2)=19,msize(CG_G_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_G_C2)=(65280,0,0)
                    // A point
                    ModifyGraph mode(CG_A_C2)=3,marker(CG_A_C2)=19,msize(CG_A_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_A_C2)=(65280,43520,0)
                    // LAM
                    ModifyGraph mode(CG_LAM_C2)=3,marker(CG_LAM_C2)=19,msize(CG_LAM_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_LAM_C2)=(0,65280,0)
                    // M
                    ModifyGraph mode(CG_M_C2)=3,marker(CG_M_C2)=19,msize(CG_M_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_M_C2)=(0,43520,65280)
                    // L
                    ModifyGraph mode(CG_L_C2)=3,marker(CG_L_C2)=19,msize(CG_L_C2)=5;DelayUpdate
                    ModifyGraph rgb(CG_L_C2)=(0,0,65280)
                    //
		      ModifyGraph width=567,height=567
                   ModifyGraph tick=2,mirror=1,fSize=16,standoff=0,font="Arial"
                   SetAxis left 0,*
                   SetAxis bottom *,30
                   Label bottom "Energy [eV]"
                   ModifyGraph zero(bottom)=1
                   //ModifyGraph mode(X2K_2)=2,lsize(X2K_2)=2,rgb(X2K_2)=(0,0,0)
                   Label left "\\F'Arial'\\Z16<{2|\\f01k\\f00+\\f01G\\f00|}\\S2\\M\\Z16> [x{2\F'Symbol'p\F'Arial'/(a\S2\M\Z16c√3/4)\S1/3\M\Z16}\S2\M\Z16] + |C|\S2"
                   ModifyGraph log(right)=1,tick=2,fSize=16,standoff=0;DelayUpdate
                   ModifyGraph font="Arial"
                   ModifyGraph rgb(F_E)=(43690,43690,43690)
                   SetAxis right 0.001,100
                   //ReorderTraces X2K_2,{F_E}
                   Label right "\\F'Arial'\\Z16F(E)"
                   ModifyGraph lblRot(right)=180
                   ModifyGraph mirror(bottom)=1
                   ModifyGraph nticks(bottom)=20
                   //
                   ModifyGraph mirror=1
                   ModifyGraph lblMargin(left)=25
                   ModifyGraph lblMargin(bottom)=15
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_3(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// spa.
			show_graph_spa()
			//
			Rename wave0,Energy; Rename wave1,wavevector;
                   ModifyGraph tick=2,mirror=1,fSize=16,standoff=0,font="Arial"
                   ModifyGraph zero(left)=1,nticks(bottom)=0,noLabel(bottom)=2;DelayUpdate
                   Label left "Energy [eV]";DelayUpdate
                   SetAxis left -10,8
                   ModifyGraph width=227,height=283
                   ModifyGraph rgb=(0,0,0)
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_13(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// FF_DOS
			ModifyGraph width=269,height=213
			Label left "\\F'Arial'\\Z16∑|C\\B\\f01k+G\\f00\\M\\Z16|\\S2\\M\\Z16"
			Label right "DOS [states/eV.atom]";DelayUpdate
			SetAxis right 0,4
			ModifyGraph mode(DOS1)=0
			ModifyGraph lsize(DOS1)=1,rgb(DOS1)=(65535,65535,65535)
			ModifyGraph offset(DOS1)={0,2.5}
			SetAxis bottom -10,10
			SetAxis left 0,2
			ModifyGraph mirror(bottom)=1,fSize(bottom)=16,standoff(bottom)=0;DelayUpdate
			ModifyGraph font(bottom)="Arial";DelayUpdate
			Label bottom "Energy [eV]"
			ModifyGraph tick(bottom)=2
			ModifyGraph zero(bottom)=1
			ModifyGraph tick(left)=2,fSize(left)=16,standoff(left)=0,font(left)="Arial"
			ModifyGraph tick=2,fSize=16,lblRot(right)=180,standoff=0,font="Arial"
			ModifyGraph height=396.85
			SetAxis left 0,5
			ModifyGraph offset(G_2____6_0000)={0,0.5},offset(G_2___10_0000)={0,1};DelayUpdate
			ModifyGraph offset(G_2___14_0000)={0,1.5},offset(G_2___18_0000)={0,2};DelayUpdate
			ModifyGraph offset(G_2___22_0000)={0,2.5},offset(G_2___26_0000)={0,3}
			ModifyGraph mode(G_2____2_0000)=1,lsize(G_2____2_0000)=2;DelayUpdate
			ModifyGraph rgb(G_2____2_0000)=(0,0,0),mode(G_2____6_0000)=1;DelayUpdate
			ModifyGraph lsize(G_2____6_0000)=2,rgb(G_2____6_0000)=(0,0,0);DelayUpdate
			ModifyGraph mode(G_2___10_0000)=1,lsize(G_2___10_0000)=2;DelayUpdate
			ModifyGraph rgb(G_2___10_0000)=(0,0,0),mode(G_2___14_0000)=1;DelayUpdate
			ModifyGraph lsize(G_2___14_0000)=2,rgb(G_2___14_0000)=(0,0,0);DelayUpdate
			ModifyGraph mode(G_2___18_0000)=1,lsize(G_2___18_0000)=2;DelayUpdate
			ModifyGraph rgb(G_2___18_0000)=(0,0,0),mode(G_2___22_0000)=1;DelayUpdate
			ModifyGraph lsize(G_2___22_0000)=2,rgb(G_2___22_0000)=(0,0,0);DelayUpdate
			ModifyGraph mode(G_2___26_0000)=1,lsize(G_2___26_0000)=2;DelayUpdate
			ModifyGraph rgb(G_2___26_0000)=(0,0,0)
			ModifyGraph rgb(DOS1)=(43690,43690,43690)
			ReorderTraces G_2____2_0000,{DOS1}
			ModifyGraph noLabel(right)=2,noLabel(left)=2
			TextBox/C/N=text0/O=90/F=0/M/H=18/A=MC "\\F'Arial'\\Z16DOS [states/eV.atom]"
			TextBox/C/N=text1/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=26"
			TextBox/C/N=text2/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=22"
			TextBox/C/N=text3/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=18"
			TextBox/C/N=text4/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=14"
			TextBox/C/N=text5/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=10"
			TextBox/C/N=text6/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=6"
			TextBox/C/N=text7/F=0/M/H=18/A=MC "\\F'Arial'\\Z14|\\f01G\\f00|\\S2\\M\\Z14=2"
			TextBox/C/N=text8/O=90/F=0/M/H=18/A=MC "\\F'Arial'\\Z16∑|C\\B\\f01k+G\\f00\\M\\Z16|\\S2\\M\\Z16"
			TextBox/C/N=text9/F=0/M/H=18/A=MC "\\F'Arial'\\Z14(a) Zn\\B12\\M\\Z14Y at symmetry points N"
			TextBox/C/N=text10/F=0/M/H=18/A=MC "\\F'Arial'\\Z14(b) Zn\\B12\\M\\Z14Y at symmetry point \\F'Symbol'G"
			TextBox/C/N=text11/F=0/M/H=18/A=MC "\\F'Arial'\\Z14(c) Zn\\B12\\M\\Z14Y at symmetry points H"
			TextBox/C/N=text12/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc_14(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			// HR_DOS
			show_graph_DOS()
			//Display DOS vs ENERGY; AppendToGraph/R VEC vs ENERGY
			//
		      ModifyGraph width=283.465,height=226.772
                   ModifyGraph tick(left)=2,fSize(left)=16,standoff(left)=0,font(left)="Arial";DelayUpdate
                   SetAxis left 0,2
                   Label left "DOS [states/eV.atom]"
                   ModifyGraph tick(right)=2,fSize(right)=16,lblRot(right)=180,standoff(right)=0;DelayUpdate
                   ModifyGraph font(right)="Arial";DelayUpdate
                   SetAxis right 0,25
                   Label right "\\F'Arial'\\Z16\\f01VEC\\f00"
                   ModifyGraph mirror(bottom)=1,fSize=16,standoff=0,font="Arial";DelayUpdate
                   Label bottom "Energy [eV]";DelayUpdate
                   SetAxis bottom -12,30
                   ModifyGraph zero(bottom)=1
                   ModifyGraph rgb(DOS1)=(0,0,0),rgb(DOS1_INT)=(30583,30583,30583)
                   ModifyGraph tick=2
                   TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                   ModifyGraph nticks(bottom)=20
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End
