#pragma rtGlobals=1  // Use modern global access method.
   silent 0

String/G K0

Macro plot_Ass_panel()

NewPanel/W=(0, 0, 240, 406)

SetDrawEnv fillfgc= (48896,65280,48896)
     DrawRect 5,2,236,60

DrawText 16,17,"Plot Ass. Panel (ZEM-3, LF, Excel)"
     SetDrawEnv fsize= 14

//Table
     Button button0 title="Table",proc=ButtonProc
     SetDrawEnv fsize= 14
     Button button0 size={80,20}
     Button button0 pos={16,20}
  
     //Rename
     Button button90 title="Rename",proc=ButtonProc_90
     SetDrawEnv fsize= 14
     Button button90 size={80,20}
     Button button90 pos={16,40}
  
      //All Graph
     Button button91 title="All Graph",proc=ButtonProc_91
     SetDrawEnv fsize= 14
     Button button91 size={80,20}
     Button button91 pos={126,20}
  
       //All +
     Button button92 title="All +",proc=ButtonProc_92
     SetDrawEnv fsize= 14
     Button button92 size={40,20}
     Button button92 pos={126,40}

   //Del
     Button button93 title="All -",proc=ButtonProc_93
     SetDrawEnv fsize= 14
     Button button93 size={40,20}
     Button button93 pos={166,40}
  
       //All Del
     Button button94 title="Del",proc=ButtonProc_94
     SetDrawEnv fsize= 14
     Button button94 size={30,20}
     Button button94 pos={206,20}

//
     SetDrawEnv fillfgc= (48896,65280,48896)
     DrawRect 5,63,236,185

DrawText 24,79,"Graph Arial"

//Graph S vs T
     Button button1 title="S vs T",proc=ButtonProc_1
     SetDrawEnv fsize= 14
     Button button1 size={80,20}
     Button button1 pos={16,80}

//Graph R vs T
     Button button2 title="R vs T",proc=ButtonProc_2
     SetDrawEnv fsize= 14
     Button button2 size={80,20}
     Button button2 pos={16,100}

//Graph P vs T
     Button button3 title="P vs T",proc=ButtonProc_3
     SetDrawEnv fsize= 14
     Button button3 size={80,20}
     Button button3 pos={16,120}

//Graph k vs T
     Button button4 title="k vs T",proc=ButtonProc_4
     SetDrawEnv fsize= 14
     Button button4 size={80,20}
     Button button4 pos={16,140}

//Graph ZT vs T
     Button button5 title="ZT vs T",proc=ButtonProc_5
     SetDrawEnv fsize= 14
     Button button5 size={80,20}
     Button button5 pos={16,160}
  
     //
     //Graph S +
     Button button51 title="+",proc=ButtonProc_51
     SetDrawEnv fsize= 14
     Button button51 size={20,20}
     Button button51 pos={101,80}

//Graph R +
     Button button52 title="+",proc=ButtonProc_52
     SetDrawEnv fsize= 14
     Button button52 size={20,20}
     Button button52 pos={101,100}

//Graph P +
     Button button53 title="+",proc=ButtonProc_53
     SetDrawEnv fsize= 14
     Button button53 size={20,20}
     Button button53 pos={101,120}

//Graph k +
     Button button54 title="+",proc=ButtonProc_54
     SetDrawEnv fsize= 14
     Button button54 size={20,20}
     Button button54 pos={101,140}

//Graph ZT +
     Button button55 title="+",proc=ButtonProc_55
     SetDrawEnv fsize= 14
     Button button55 size={20,20}
     Button button55 pos={101,160}


     //
     DrawText 114,79,"Times New Roman"

//Graph S vs T
     Button button11 title="S vs T",proc=ButtonProc_11
     SetDrawEnv fsize= 14
     Button button11 size={80,20}
     Button button11 pos={126,80}

//Graph R vs T
     Button button12 title="R vs T",proc=ButtonProc_12
     SetDrawEnv fsize= 14
     Button button12 size={80,20}
     Button button12 pos={126,100}

//Graph P vs T
     Button button13 title="P vs T",proc=ButtonProc_13
     SetDrawEnv fsize= 14
     Button button13 size={80,20}
     Button button13 pos={126,120}

//Graph k vs T
     Button button14 title="k vs T",proc=ButtonProc_14
     SetDrawEnv fsize= 14
     Button button14 size={80,20}
     Button button14 pos={126,140}

//Graph ZT vs T
     Button button15 title="ZT vs T",proc=ButtonProc_15
     SetDrawEnv fsize= 14
     Button button15 size={80,20}
     Button button15 pos={126,160}

//
     SetDrawEnv fillfgc= (48896,65280,48896)
     DrawRect 5,187,236,400

DrawText 40,200,"Option"

//Graph XRD vs T
     Button button21 title="XRD",proc=ButtonProc_21
     SetDrawEnv fsize= 14
     Button button21 size={80,20}
     Button button21 pos={16,200}

//Graph DOS vs T
     Button button22 title="DOS",proc=ButtonProc_22
     SetDrawEnv fsize= 14
     Button button22 size={80,20}
     Button button22 pos={16,220}

//Graph Arial
     Button button25 title="Arial",proc=ButtonProc_25
     SetDrawEnv fsize= 14
     Button button25 size={80,20}
     Button button25 pos={126,200}

//Graph Times New Roman
     Button button26 title="Times New Roman",proc=ButtonProc_26
     SetDrawEnv fsize= 14
     Button button26 size={120,20}
     Button button26 pos={106,220}

//Graph Latt. const. vs comp
     Button button31 title="Latt. const. vs comp.",proc=ButtonProc_31
     SetDrawEnv fsize= 14
     Button button31 size={120,20}
     Button button31 pos={16,240}

//Graph S
     Button button32 title="S",proc=ButtonProc_32
     SetDrawEnv fsize= 14
     Button button32 size={80,20}
     Button button32 pos={16,260}

//Graph R
     Button button33 title="R",proc=ButtonProc_33
     SetDrawEnv fsize= 14
     Button button33 size={80,20}
     Button button33 pos={16,280}

//Graph P
     Button button34 title="P",proc=ButtonProc_34
     SetDrawEnv fsize= 14
     Button button34 size={80,20}
     Button button34 pos={16,300}

//Graph k
     Button button35 title="k",proc=ButtonProc_35
     SetDrawEnv fsize= 14
     Button button35 size={80,20}
     Button button35 pos={16,320}

//Graph ZT
     Button button36 title="ZT",proc=ButtonProc_36
     SetDrawEnv fsize= 14
     Button button36 size={80,20}
     Button button36 pos={16,340}
  
     //Graph intensity
     Button button37 title="Intensity",proc=ButtonProc_37
     SetDrawEnv fsize= 14
     Button button37 size={80,20}
     Button button37 pos={16,360}

//Graph certain vs comp
     Button button41 title="comp.",proc=ButtonProc_41
     SetDrawEnv fsize= 14
     Button button41 size={80,20}
     Button button41 pos={126,260}

//Graph certain vs K
     Button button42 title="Temp. K",proc=ButtonProc_42
     SetDrawEnv fsize= 14
     Button button42 size={80,20}
     Button button42 pos={126,280}

//Graph certain vs C
     Button button43 title="Temp. C",proc=ButtonProc_43
     SetDrawEnv fsize= 14
     Button button43 size={80,20}
     Button button43 pos={126,300}
  
     //Graph eV
     Button button44 title="eV",proc=ButtonProc_44
     SetDrawEnv fsize= 14
     Button button44 size={80,20}
     Button button44 pos={126,320}
  
     //Graph Binding Energy
     Button button45 title="B. E",proc=ButtonProc_45
     SetDrawEnv fsize= 14
     Button button45 size={80,20}
     Button button45 pos={126,340}
  
      //Graph Kinetic Energy
     Button button46 title="K. E",proc=ButtonProc_46
     SetDrawEnv fsize= 14
     Button button46 size={80,20}
     Button button46 pos={126,360}
  
     // Composition
    String/G sample_name
    sample_name = "0"
    SetVariable setvar0 proc=SetVarProc
    SetVariable setvar0 pos={18,380},limits={0,1000,0},live=1
    SetVariable setvar0 value=sample_name
    SetVariable setvar0 title="Offset"
    SetVariable setvar0 size={100,20}

End


     //Table
     Function ButtonProc(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        Edit
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
      //Table
     Function ButtonProc_90(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        degC_name = sample_name + "_DegC"
        Rename wave0, $degC_name
        TempK_name = sample_name + "_TempK"
        Rename wave1, $TempK_name
        Res_name = sample_name + "_Res"
        Rename wave2, $Res_name
        See_name = sample_name + "_See"
        Rename wave3, $See_name
        k_name = sample_name + "_k"
        Rename wave4, $k_name
        ZT_name = sample_name + "_ZT"
        Rename wave5, $ZT_name
        Z_name = sample_name + "_Z"
        Rename wave6, $Z_name
        P_name = sample_name + "_P"
        Rename wave7, $P_name
        kel_name = sample_name + "_kel"
        Rename wave8, $kel_name
        kph_name = sample_name + "_kph"
        Rename wave9, $kph_name
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Seebeck vs T
     Function ButtonProc_1(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        TempK_name = sample_name + "_TempK"
        Display $See_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Seebeck Coefficient, \\f02S\\f00 (\\F'Symbol'm\\M\\F'Arial'V/K\\M\\F'Arial')"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Resistivity vs T
     Function ButtonProc_2(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        Res_name = sample_name + "_Res"
        TempK_name = sample_name + "_TempK"
        Display $See_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Electrical Resistivity, \\F'Symbol'\\f02r\\f00\\M\\F'Arial' (\\F'Symbol'm\\MW\\F'Arial'cm\\M\\F'Arial')"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,600
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Power factor vs T
     Function ButtonProc_3(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        Variable i
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        P = See * See / Res / 10
        Display P vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Power factor, \\f02P\\f00 ( 10\\S-3\\M\\F'Arial' W / m\\M\\F'Arial' K\\S2\\M\\F'Arial')"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,5
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph kappa vs T
     Function ButtonProc_4(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        k_name   = sample_name +  "_k"
        kel_name = sample_name + "_kel"
        kph_name = sample_name +  "_kph"
        TempK_name = sample_name + "_TempK"
        Display $k_name vs $TempK_name
        AppendToGraph $kel_name, $kph_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Thermal Conductivity, \\f02\\F'Symbol'k\\F'Arial'\\f00 (W/mK)"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=55
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,12
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        Legend/C/N=text0/F=0/M/H=18/A=MC
        //
        TextBox/C/N=text3/F=0/M/H=18/A=MC "\\M\\F'Arial'\\Z18\\F'Symbol'\\f02k\\B\\F'Arial'\\M\\F'Arial'\\Z18"
        TextBox/C/N=text2/F=0/M/H=18/A=MC "\\M\\F'Arial'\\Z18\\F'Symbol'\\f02k\\B\\F'Arial'el\\M\\F'Arial'\\Z18"
        TextBox/C/N=text1/F=0/M/H=18/A=MC "\\M\\F'Arial'\\Z18\\F'Symbol'\\f02k\\B\\F'Arial'ph\\M\\F'Arial'\\Z18"
        //
        ModifyGraph marker($kel_name)=18, msize($kel_name)=6.5
        ModifyGraph marker($kph_name)=16
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph ZT vs T
     Function ButtonProc_5(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        Variable i
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        k_name     = sample_name + "_k"
        Z_name     =  sample_name + "_Z"
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        Wave k = $k_name
        Wave T = $TempK_name
        Wave Z = $Z_name
        Wave ZT = $ZT_name
        Z    = See * See / Res / 10 / 1000 / k
                         ZT = See * See / Res / 10 / 1000 / k * T
        Display ZT vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Dimensionless Figure of Merit, \\f02ZT\\f00"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,0.3
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End

//
     //Graph Seebeck vs T
     Function ButtonProc_11(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        TempK_name = sample_name + "_TempK"
        Display $See_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Seebeck Coefficient, \\f02S /\\f00 \\F'Symbol'm\\M\\F'Times New Roman'VK\\S-1\\M\\F'Times New Roman'"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Times New Roman"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        Label bottom "Temperature, \\f02T\\f00 / K"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Resistivity vs T
     Function ButtonProc_12(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        Res_name = sample_name + "_Res"
        TempK_name = sample_name + "_TempK"
        Display $See_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        //Label left "Electrical Resistivity, \\F'Symbol'\\f02r\\f00\\M\\F'Times New Roman' (\\F'Symbol'm\\MW\\F'Times New Roman'cm\\M\\F'Times New Roman')"
        Label left "Electrical Resistivity, \\F'Symbol'\\f02r\\f00\\M\\F'Times New Roman' / \\F'Symbol'm\\MW\\F'Times New Roman'cm\\M\\F'Times New Roman'"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,600
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Times New Roman"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        Label bottom "Temperature, \\f02T\\f00 / K"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Power factor vs T
     Function ButtonProc_13(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        Variable i
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
                        P = See * See / Res / 10
        Display P vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        //Label left "Power factor, \\f02P\\f00 ( 10\\S-3\\M\\F'Times New Roman' W / m\\M\\F'Times New Roman' K\\S2\\M\\F'Times New Roman')"
        Label left "Power factor, \\f02P\\f00 / 10\\S-3\\M\\F'Times New Roman' Wm\\S-1\\M\\MK\\S-2\\M"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,5
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Times New Roman"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        Label bottom "Temperature, \\f02T\\f00 / K"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph kappa vs T
     Function ButtonProc_14(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        k_name   = sample_name + "_k"
        kel_name = sample_name +  "_kel"
        kph_name = sample_name + "_kph"
        TempK_name = sample_name + "_TempK"
        Display $k_name vs $TempK_name
        AppendToGraph $kel_name, $kph_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        //Label left "Thermal Conductivity, \\f02\\F'Symbol'k\\F'Times New Roman'\\f00 (W/mK)"
        Label left "Thermal Conductivity, \\f02\\F'Symbol'k\\F'Times New Roman'\\f00 / Wm\\S-1\\MK\\S-1\\M"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=55
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,12
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Times New Roman"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        Label bottom "Temperature, \\f02T\\f00 / K"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        Legend/C/N=text0/F=0/M/H=18/A=MC
        //
        TextBox/C/N=text3/F=0/M/H=18/A=MC "\\M\\F'Times New Roman'\\Z18\\F'Symbol'\\f02k\\B\\F'Times New Roman'\\M\\F'Times New Roman'\\Z18"
        TextBox/C/N=text2/F=0/M/H=18/A=MC "\\M\\F'Times New Roman'\\Z18\\F'Symbol'\\f02k\\B\\F'Times New Roman'el\\M\\F'Times New Roman'\\Z18"
        TextBox/C/N=text1/F=0/M/H=18/A=MC "\\M\\F'Times New Roman'\\Z18\\F'Symbol'\\f02k\\B\\F'Times New Roman'ph\\M\\F'Times New Roman'\\Z18"
        //
        ModifyGraph rgb($k_name)=(0,0,0)
        ModifyGraph marker($kel_name)=18, msize($kel_name)=6.5, rgb($kel_name)=(0,0,0)
        ModifyGraph marker($kph_name)=16, rgb($kph_name)=(0,0,0)
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph ZT vs T
     Function ButtonProc_15(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        k_name     = sample_name + "_k"
        Z_name     =  sample_name + "_Z"
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        Wave k = $k_name
        Wave T = $TempK_name
        Wave Z = $Z_name
        Wave ZT = $ZT_name
        Z    = See * See / Res / 10 / 1000 / k
                         ZT = See * See / Res / 10 / 1000 / k * T
        Display ZT vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Dimensionless Figure of Merit, \\f02ZT\\f00"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,0.3
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Times New Roman"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        Label bottom "Temperature, \\f02T\\f00 / K"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph XRD
     Function ButtonProc_21(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        //
        ModifyGraph width=0,height=0
        Label left "Intensity, \\f02I\\f00 (arb. units)"
        Label bottom "2\\F'Symbol'\\f02q\\f00\\F'Arial' (degree)"
        ModifyGraph mode=0
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph DOS
     Function ButtonProc_22(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        //
        ModifyGraph width=0,height=0
        Label left "Density of States / eV"
        Label bottom "Energy / eV"
        ModifyGraph mode=0
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph XRD
     Function ButtonProc_25(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph font(left)="Arial"
        ModifyGraph font(bottom)="Arial"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph XRD
     Function ButtonProc_26(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph font(bottom)="Times New Roman"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Lattice constnt vs comp.
     Function ButtonProc_31(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Times New Roman"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Times New Roman"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        ModifyGraph rgb=(0,0,0)
        //
        ModifyGraph width=0,height=0
        Label left "Lattice Constant, \\f02a\\f00 (nm)"
        Label bottom "Composition, \\f02x\\f00"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph S
     Function ButtonProc_32(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label left "Seebeck Coefficient, \\f02S\\f00 (\\F'Symbol'm\\M\\F'Arial'V/K\\M\\F'Arial')"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph R
     Function ButtonProc_33(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label left "Electrical Resistivity, \\F'Symbol'\\f02r\\f00\\M\\F'Arial' (\\F'Symbol'm\\MW\\F'Arial'cm\\M\\F'Arial')"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph P
     Function ButtonProc_34(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label left "Power factor, \\f02P\\f00 ( 10\\S-3\\M\\F'Arial' W / m\\M\\F'Arial' K\\S2\\M\\F'Arial')"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph k
     Function ButtonProc_35(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label left "Thermal Conductivity, \\f02\\F'Symbol'k\\F'Arial'\\f00 (W/mK)"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph ZT
     Function ButtonProc_36(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label left "Dimensionless Figure of Merit, \\f02ZT\\f00"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Intensity
     Function ButtonProc_37(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label left "Intensity / arb. units"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  

 //Graph Comp.
     Function ButtonProc_41(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label bottom "Composition, \\f02x\\f00"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Temperature K
     Function ButtonProc_42(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label bottom "Temperature, \\f02T\\f00 (K)"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


     //Graph Temperature C
     Function ButtonProc_43(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label bottom "Temperature (°C)"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
      //Graph eV
     Function ButtonProc_44(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label bottom "Energy / eV"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
      //Graph binding energy
     Function ButtonProc_45(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label bottom "Binding Energy / eV"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


      //Graph Kinetic energy
     Function ButtonProc_46(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        //SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        //Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        //SetAxis bottom 300,750
        //
        ModifyGraph width=0,height=0
        Label bottom "Kinetic Energy / eV"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
       //Graph S +
     Function ButtonProc_51(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        String/G sample_name= GetDataFolder(0)
        String/G degC_name, TempK_name, Res_name, See_name, k_name
        String/G ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        TempK_name = sample_name + "_TempK"
        AppendToGraph $See_name vs $TempK_name
             //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


       //Graph R+
     Function ButtonProc_52(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        String/G sample_name= GetDataFolder(0)
        String/G degC_name, TempK_name, Res_name, See_name, k_name
        String/G ZT_name, Z_name, P_name, kel_name, kph_name
        Res_name = sample_name + "_Res"
        TempK_name = sample_name + "_TempK"
        AppendToGraph $Res_name vs $TempK_name
             //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
        //Graph P+
     Function ButtonProc_53(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        String/G sample_name= GetDataFolder(0)
        String/G degC_name, TempK_name, Res_name, See_name, k_name
        String/G ZT_name, Z_name, P_name, kel_name, kph_name
        P_name    =  sample_name + "_P"
        TempK_name = sample_name + "_TempK"
        AppendToGraph $P_name vs $TempK_name
             //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


        //Graph k+
     Function ButtonProc_54(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        String/G sample_name= GetDataFolder(0)
        String/G degC_name, TempK_name, Res_name, See_name, k_name
        String/G ZT_name, Z_name, P_name, kel_name, kph_name
        k_name   = sample_name + "_k"
        kel_name = sample_name +  "_kel"
        kph_name = sample_name + "_kph"
        TempK_name = sample_name + "_TempK"
        AppendToGraph $k_name, $kel_name, $kph_name vs $TempK_name
             //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
         //Graph ZT+
     Function ButtonProc_55(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        String/G sample_name= GetDataFolder(0)
        String/G degC_name, TempK_name, Res_name, See_name, k_name
        String/G ZT_name, Z_name, P_name, kel_name, kph_name
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        AppendToGraph $ZT_name vs $TempK_name
             //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
    //All Gaphe
     Function ButtonProc_91(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        SVAR K0
        K0 = GetDataFolder(0)
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        k_name     = sample_name + "_k"
        kel_name = sample_name +  "_kel"
        kph_name = sample_name + "_kph"
        Z_name     =  sample_name + "_Z"
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        Wave k = $k_name
        Wave T = $TempK_name
        Wave Z = $Z_name
        Wave ZT = $ZT_name
    //
        Display/N=$(See_name) $See_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Seebeck Coefficient, \\f02S\\f00 (\\F'Symbol'm\\M\\F'Arial'V/K\\M\\F'Arial')"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,100
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
    //
        Display/N=$(Res_name)  $Res_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Electrical Resistivity, \\F'Symbol'\\f02r\\f00\\M\\F'Arial' (\\F'Symbol'm\\MW\\F'Arial'cm\\M\\F'Arial')"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,600
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
    //
        P = See * See / Res / 10
        Display/N=$(P_name)  P vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Power factor, \\f02P\\f00 ( 10\\S-3\\M\\F'Arial' W / m\\M\\F'Arial' K\\S2\\M\\F'Arial')"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,5
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
    //
        Display/N=$(k_name)  $k_name vs $TempK_name
        AppendToGraph $kel_name, $kph_name vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Thermal Conductivity, \\f02\\F'Symbol'k\\F'Arial'\\f00 (W/mK)"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=55
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,12
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
        Legend/C/N=text0/F=0/M/H=18/A=MC
        //
        TextBox/C/N=text3/F=0/M/H=18/A=MC "\\M\\F'Arial'\\Z18\\F'Symbol'\\f02k\\B\\F'Arial'\\M\\F'Arial'\\Z18"
        TextBox/C/N=text2/F=0/M/H=18/A=MC "\\M\\F'Arial'\\Z18\\F'Symbol'\\f02k\\B\\F'Arial'el\\M\\F'Arial'\\Z18"
        TextBox/C/N=text1/F=0/M/H=18/A=MC "\\M\\F'Arial'\\Z18\\F'Symbol'\\f02k\\B\\F'Arial'ph\\M\\F'Arial'\\Z18"
        //
        ModifyGraph marker($kel_name)=18, msize($kel_name)=6.5
        ModifyGraph marker($kph_name)=16
    //
        Z    = See * See / Res / 10 / 1000 / k
                         ZT = See * See / Res / 10 / 1000 / k * T
        Display/N=$(ZT_name)  ZT vs $TempK_name
        //
        ModifyGraph standoff(left)=0
        ModifyGraph mirror(left)=1
        ModifyGraph tick(left)=2
        ModifyGraph font(left)="Arial"
        ModifyGraph fSize(left)=20
        ModifyGraph width=283.465
        Label left "Dimensionless Figure of Merit, \\f02ZT\\f00"
        ModifyGraph lblPosMode(left)=3,lblPos(left)=65
        ModifyGraph margin(left)=71
        ModifyGraph margin(right)=21
        SetAxis left 0,0.3
        //
        ModifyGraph standoff=0
        ModifyGraph mirror(bottom)=1
        ModifyGraph tick(bottom)=2
        ModifyGraph font(bottom)="Arial"
        ModifyGraph fSize(bottom)=20
        ModifyGraph height=283.465
        Label bottom "Temperature, \\f02T\\f00 (K)"
        ModifyGraph lblPosMode(bottom)=3,lblPos(bottom)=50
        ModifyGraph margin(bottom)=57
        ModifyGraph margin(top)=21
        SetAxis bottom 300,750
        //
        ModifyGraph mode=4,marker=19,msize=7
        ModifyGraph lsize=2
    //
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End


         //Graph All+
     Function ButtonProc_92(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        SVAR K0
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        k_name     = sample_name + "_k"
        kel_name = sample_name +  "_kel"
        kph_name = sample_name + "_kph"
        Z_name     =  sample_name + "_Z"
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        Wave k = $k_name
        Wave T = $TempK_name
        Wave Z = $Z_name
        Wave ZT = $ZT_name
        AppendToGraph/W=$(K0)+"_See0" $See_name vs $TempK_name
        AppendToGraph/W=$(K0)+"_Res0" $Res_name vs $TempK_name
        AppendToGraph/W=$(K0)+"_P0" $P_name vs $TempK_name
        AppendToGraph/W=$(K0)+"_k0" $k_name, $kel_name, $kph_name vs $TempK_name
        AppendToGraph/W=$(K0)+"_ZT0" $ZT_name vs $TempK_name
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
          //Graph All-
     Function ButtonProc_93(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        SVAR K0
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        k_name     = sample_name + "_k"
        kel_name = sample_name +  "_kel"
        kph_name = sample_name + "_kph"
        Z_name     =  sample_name + "_Z"
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        Wave k = $k_name
        Wave T = $TempK_name
        Wave Z = $Z_name
        Wave ZT = $ZT_name
        RemoveFromGraph/W=$(K0)+"_See0"  $See_name
        RemoveFromGraph/W=$(K0)+"_Res0" $Res_name
        RemoveFromGraph/W=$(K0)+"_P0" $P_name
        RemoveFromGraph/W=$(K0)+"_k0" $k_name, $kel_name, $kph_name
        RemoveFromGraph/W=$(K0)+"_ZT0" $ZT_name
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
  
           //Del
     Function ButtonProc_94(ba) : ButtonControl
      STRUCT WMButtonAction &ba

 switch( ba.eventCode )
       case 2: // mouse up
        // click code here
        //
        String sample_name= GetDataFolder(0)
        String degC_name, TempK_name, Res_name, See_name, k_name
        String ZT_name, Z_name, P_name, kel_name, kph_name
        See_name = sample_name + "_See"
        Res_name = sample_name + "_Res"
        P_name    =  sample_name + "_P"
        k_name     = sample_name + "_k"
        kel_name = sample_name +  "_kel"
        kph_name = sample_name + "_kph"
        Z_name     =  sample_name + "_Z"
        ZT_name   =  sample_name + "_ZT"
        TempK_name = sample_name + "_TempK"
        Wave See = $See_name
        Wave Res = $Res_name
        Wave P = $P_name
        Wave k = $k_name
        Wave T = $TempK_name
        Wave Z = $Z_name
        Wave ZT = $ZT_name
        Killwindow $(See_name)+"0"
        Killwindow $(Res_name)+"0"
        Killwindow $(P_name)+"0"
        Killwindow $(k_name)+"0"
        Killwindow $(ZT_name)+"0"
        break
       case -1: // control being killed
        break
      endswitch

 return 0
     End
  
     //offset
    Function SetVarProc(sva) : SetVariableControl
     STRUCT WMSetVariableAction &sva

 switch( sva.eventCode )
      case 1: // mouse up
      case 2: // Enter key
      case 3: // Live update
       Variable dval = sva.dval
       //String sval = sva.sval
       String Top_Graph = WinName(0,1)
       //GetWindow $(Top_Graph), wavelist
       //Edit W_WaveList
       String traces= TraceNameList("",";",1)   // Traces in top graph
       String traceName
       Variable i=0
       //for(i=0; i<=DimSize(W_WaveList,0)-1; i+=1)
       do
         traceName= StringFromList(i,traces)
         if( strlen(traceName) == 0 )
           break
         endif
         ModifyGraph/W=$(Top_Graph) offset($traceName)={0, dval * i}
         i += 1
        while (1) // exit is via break statement
       //endfor
       break
      case -1: // control being killed
       break
     endswitch

 return 0
    End
