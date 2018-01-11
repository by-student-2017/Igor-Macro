#pragma rtGlobals=1		// Use modern global access method.

#pragma rtGlobals=1  // Use modern global access method.
 // ver. 0.70

Macro Akai_KKR_panel()

NewPanel/W=(0, 0, 290, 110)

SetDrawEnv fillfgc= (48896,65280,48896)
 DrawRect 5,2,286,108

DrawText 20,17,"Akai-KKR Panel"
 SetDrawEnv fsize= 14

Button button0 title="dos",proc=ButtonProc_1
 SetDrawEnv fsize= 14
 Button button0 size={80,20}
 Button button0 pos={108,20}

Button button2 title="spc",proc=ButtonProc_2
 SetDrawEnv fsize= 14
 Button button2 size={80,20}
 Button button2 pos={23,45}

Button button4 title="mcd", proc=ButtonProc_4
 SetDrawEnv fsize= 14
 Button button4 size={80,20}
 Button button4 pos={23,70}

Button button5 title="dos for spc",proc=ButtonProc_5
 SetDrawEnv fsize= 14
 Button button5 size={80,20}
 Button button5 pos={193,20}

Button button6 title="comp table",proc=ButtonProc_6
 SetDrawEnv fsize= 14
 Button button6 size={80,20}
 Button button6 pos={23,20}
 
Button button9 title="add_dos",proc=ButtonProc_9
 SetDrawEnv fsize= 14
 Button button9 size={80,20}
 Button button9 pos={108,45}
 
Button button10 title="dos_shift",proc=ButtonProc_10
 SetDrawEnv fsize= 14
 Button button10 size={80,20}
 Button button10 pos={108,70}
 
Button button11 title="-",proc=ButtonProc_11
 SetDrawEnv fsize= 14
 Button button11 size={17,20}
 Button button11 pos={193,70}
 
Button button12 title="+",proc=ButtonProc_12
 SetDrawEnv fsize= 14
 Button button12 size={17,20}
 Button button12 pos={213,70}
 
Button button13 title="new_tdos",proc=ButtonProc_13
 SetDrawEnv fsize= 14
 Button button13 size={55,20}
 Button button13 pos={193,45}

Button button14 title="add_tdos",proc=ButtonProc_14
 SetDrawEnv fsize= 14
 Button button14 size={55,20}
 Button button14 pos={249,45}
 

End

// dos
Function ButtonProc_1(ctrlName) : ButtonControl
	String ctrlName
	   // click code here
       Wave/t component, orbit
       Variable n
       String dos_wave_name
       do
         dos_wave_name = "wave" + num2str(n)
         //print dos_wave_name, WaveList("wave"+num2str(n) ,";","")
         //print "exists ", dos_wave_name
         n = n + 1
       while ( WaveExists($dos_wave_name) != 0 )
       n = n - 2
       // Total DOS up
       Wave TDOS_up, total_up
       Make/O/N=(DimSize(total_up,0)) TDOS_up_eV
       TDOS_up_eV = TDOS_up
       //Wave TDOS_up_eV = TDOS_up
       //TDOS_up /= 13.602
       //integrated_up *= 13.602
       Variable start_e, delta_e
       start_e =  total_up[0] * 13.602
                       delta_e = ( total_up[1] - total_up[0] ) * 13.602
                       TDOS_up_eV = TDOS_up / 13.602
                       SetScale/P x start_e,delta_e,"", TDOS_up_eV
       //Display TDOS_up
       Display TDOS_up_eV
       // Integrated DOS
       Wave IDOS_up, integrated_up
       Make/O/N=(DimSize(total_up,0)) IDOS_up_eV
       IDOS_up_eV = IDOS_up
       start_e =  integrated_up[0] * 13.602
                       delta_e = ( integrated_up[1] - integrated_up[0] ) * 13.602
       SetScale/P x start_e,delta_e,"", IDOS_up_eV
       AppendToGraph/R IDOS_up_eV
       // Partial DOS up
       Variable x, size
       String dos_wave_name_x
       String dos_wave_name_s
       String dos_wave_name_px, dos_wave_name_pz, dos_wave_name_py
       String dos_wave_name_dxy, dos_wave_name_dyz, dos_wave_name_dz2, dos_wave_name_dxz, dos_wave_name_dx2y2
       String new_wave_name
                       for(x=0;x<((n+1)/2);x+=10)
                         print x, n, ((n+1)/2)
                         // energy
                         dos_wave_name_x = "wave" + num2str(x)
                         Wave read_wave_x = $dos_wave_name_x
                         //read_wave_x /= 13.602
                         // PDOS
                         // s orbital
                         dos_wave_name_s = "wave" + num2str(x+1)
                         Wave read_wave_s = $dos_wave_name_s
                         SetScale/P x start_e,delta_e,"", read_wave_s
                         //read_wave_s /= 13.602
                         // px orbital
                         dos_wave_name_px = "wave" + num2str(x+2)
                         Wave read_wave_px = $dos_wave_name_px
                         SetScale/P x start_e,delta_e,"", read_wave_px
                         //read_wave_px /= 13.602
                         // pz orbital
                         dos_wave_name_pz = "wave" + num2str(x+3)
                         Wave read_wave_pz = $dos_wave_name_pz
                         SetScale/P x start_e,delta_e,"", read_wave_pz
                         //read_wave_pz /= 13.602
                         // py orbital
                         dos_wave_name_py = "wave" + num2str(x+4)
                         Wave read_wave_py = $dos_wave_name_py
                         SetScale/P x start_e,delta_e,"", read_wave_py
                         //read_wave_py /= 13.602
                         // dxy orbital
                         dos_wave_name_dxy = "wave" + num2str(x+5)
                         Wave read_wave_dxy = $dos_wave_name_dxy
                         SetScale/P x start_e,delta_e,"", read_wave_dxy
                         //read_wave_dxy /= 13.602
                         // dyz orbital
                         dos_wave_name_dyz = "wave" + num2str(x+6)
                         Wave read_wave_dyz = $dos_wave_name_dyz
                         SetScale/P x start_e,delta_e,"", read_wave_dyz
                         //read_wave_dyz /= 13.602
                         // dz^2 orbital
                         dos_wave_name_dz2= "wave" + num2str(x+7)
                         Wave read_wave_dz2 = $dos_wave_name_dz2
                         SetScale/P x start_e,delta_e,"", read_wave_dz2
                         //read_wave_dz2 /= 13.602
                         // dxz orbital
                         dos_wave_name_dxz = "wave" + num2str(x+8)
                         Wave read_wave_dxz = $dos_wave_name_dxz
                         SetScale/P x start_e,delta_e,"", read_wave_dxz
                         //read_wave_dxz /= 13.602
                         // dx^2-y^2 orbital
                         dos_wave_name_dx2y2 = "wave" + num2str(x+9)
                         Wave read_wave_dx2y2 = $dos_wave_name_dx2y2
                         SetScale/P x start_e,delta_e,"", read_wave_dx2y2
                         //read_wave_dx2y2 /= 13.602
                         //read_wave_d *= 13.602
                         //
                         //new_wave_name = "component" + num2str(x/4 +1)  + "_up"
                         //new_wave_name = component[x/4] + "_" +  orbit[x/4] + "_up"
                         //Make/O/N=(DimSize(total_up,0)) $new_wave_name
                         //Wave read_wave_t = $new_wave_name
                         if( CmpStr(orbit[x/10], "s") == 0 || CmpStr(orbit[x/10], "S") == 0 ||  str2num(orbit[x/10]) == str2num("0"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_s
                           //print "dos_s"
                         // p
                         elseif( CmpStr(orbit[x/10], "px") == 0 || CmpStr(orbit[x/10], "PX") == 0 ||  str2num(orbit[x/10]) == str2num("1"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_px
                           //print "dos_px"
                         elseif( CmpStr(orbit[x/10], "pz") == 0 || CmpStr(orbit[x/10], "PZ") == 0 ||  str2num(orbit[x/10]) == str2num("2"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_pz
                           //print "dos_pz"
                         elseif( CmpStr(orbit[x/10], "py") == 0 || CmpStr(orbit[x/10], "PY") == 0 ||  str2num(orbit[x/10]) == str2num("3"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_py
                           //print "dos_py"
                         elseif( CmpStr(orbit[x/10], "p") == 0 || CmpStr(orbit[x/10], "P") == 0 )
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_px + read_wave_pz + read_wave_py
                           //
                         // d
                         elseif( CmpStr(orbit[x/10], "dxy") == 0 || CmpStr(orbit[x/10], "DXY") == 0 ||  str2num(orbit[x/10]) == str2num("4"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dxy
                           //print "dos_dxy"
                         elseif( CmpStr(orbit[x/10], "dyz") == 0 || CmpStr(orbit[x/10], "DYZ") == 0 ||  str2num(orbit[x/10]) == str2num("5"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dyz
                           //print "dos_dyz"
                         elseif( CmpStr(orbit[x/10], "dz2") == 0 || CmpStr(orbit[x/10], "DZ2") == 0 ||  str2num(orbit[x/10]) == str2num("6"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dz2
                           //print "dos_dz2"
                         elseif( CmpStr(orbit[x/10], "dxz") == 0 || CmpStr(orbit[x/10], "DXZ") == 0 ||  str2num(orbit[x/10]) == str2num("7"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dxz
                           //print "dos_dxz"
                         elseif( CmpStr(orbit[x/10], "dx2y2") == 0 || CmpStr(orbit[x/10], "DX2Y2") == 0 ||  str2num(orbit[x/10]) == str2num("8"))
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dx2y2
                           //print "dos_dx2y2"
                         // d total
                         elseif( CmpStr(orbit[x/10], "d") == 0 || CmpStr(orbit[x/10], "D") == 0 )
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dxy + read_wave_dyz + read_wave_dz2 + read_wave_dxz + read_wave_dx2y2
                         // t2g
                         elseif( CmpStr(orbit[x/10], "t2g") == 0 || CmpStr(orbit[x/10], "T2G") == 0 )
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dxy + read_wave_dyz + read_wave_dxz
                         // eg
                         elseif( CmpStr(orbit[x/10], "eg") == 0 || CmpStr(orbit[x/10], "EG") == 0 )
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dz2 + read_wave_dx2y2
                         // total
                         else
                           new_wave_name = component[x/10] + "_" +  orbit[x/10] + "_up"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_s + read_wave_px + read_wave_pz + read_wave_py + read_wave_dxy + read_wave_dyz + read_wave_dz2 + read_wave_dxz + read_wave_dx2y2
                           //print "dos_total"
                         endif
                         //read_wave_t = read_wave_s + read_wave_p + read_wave_d
                         SetScale/P x start_e,delta_e,"", read_wave_t
                         //
                         read_wave_t /= 13.602
                         AppendToGraph read_wave_t
                       endfor
                       //
       // Total DOS down
       Wave TDOS_dn, total_dn
       Make/O/N=(DimSize(total_up,0)) TDOS_dn_eV
       TDOS_dn_eV = TDOS_dn
       //Wave TDOS_dn_eV = TDOS_dn
       //TDOS_dn /= 13.602
       //integrated_dn *= 13.602
       start_e =  total_dn[0] * 13.602
                       delta_e = ( total_dn[1] - total_dn[0] ) * 13.602
                       TDOS_dn_eV = TDOS_dn / 13.602
                       //SetScale/P x start_e,delta_e,"", TDOS_dn
       //AppendToGraph TDOS_dn
       SetScale/P x start_e,delta_e,"", TDOS_dn_eV
       TDOS_dn_eV *= -1
       AppendToGraph TDOS_dn_eV
       // Integrated DOS
       Wave IDOS_dn, integrated_dn
       Make/O/N=(DimSize(total_up,0)) IDOS_dn_eV
        IDOS_dn_eV =  IDOS_dn
       start_e =  integrated_dn[0] * 13.602
                       delta_e = ( integrated_dn[1] - integrated_dn[0] ) * 13.602
                       //SetScale/P x start_e,delta_e,"", IDOS_dn
       //AppendToGraph/R IDOS_dn
       SetScale/P x start_e,delta_e,"", IDOS_dn_eV
       IDOS_dn_eV *= -1
       AppendToGraph/R IDOS_dn_eV
      // Total DOS down
                       for(x=((n+1)/2);x<n;x+=10)
                         // energy
                         dos_wave_name_x = "wave" + num2str(x)
                         Wave read_wave_x = $dos_wave_name_x
                         //read_wave_x /= 13.602
                         // PDOS
                         // s orbital
                         dos_wave_name_s = "wave" + num2str(x+1)
                         Wave read_wave_s = $dos_wave_name_s
                         SetScale/P x start_e,delta_e,"", read_wave_s
                         //read_wave_s /= 13.602
                         // px orbital
                         dos_wave_name_px = "wave" + num2str(x+2)
                         Wave read_wave_px = $dos_wave_name_px
                         SetScale/P x start_e,delta_e,"", read_wave_px
                         //read_wave_px /= 13.602
                         // pz orbital
                         dos_wave_name_pz = "wave" + num2str(x+3)
                         Wave read_wave_pz = $dos_wave_name_pz
                         SetScale/P x start_e,delta_e,"", read_wave_pz
                         //read_wave_pz /= 13.602
                         // py orbital
                         dos_wave_name_py = "wave" + num2str(x+4)
                         Wave read_wave_py = $dos_wave_name_py
                         SetScale/P x start_e,delta_e,"", read_wave_py
                         //read_wave_py /= 13.602
                         // dxy orbital
                         dos_wave_name_dxy = "wave" + num2str(x+5)
                         Wave read_wave_dxy = $dos_wave_name_dxy
                         SetScale/P x start_e,delta_e,"", read_wave_dxy
                         //read_wave_dxy /= 13.602
                         // dyz orbital
                         dos_wave_name_dyz = "wave" + num2str(x+6)
                         Wave read_wave_dyz = $dos_wave_name_dyz
                         SetScale/P x start_e,delta_e,"", read_wave_dyz
                         //read_wave_dyz /= 13.602
                         // dz^2 orbital
                         dos_wave_name_dz2= "wave" + num2str(x+7)
                         Wave read_wave_dz2 = $dos_wave_name_dz2
                         SetScale/P x start_e,delta_e,"", read_wave_dz2
                         //read_wave_dz2 /= 13.602
                         // dxz orbital
                         dos_wave_name_dxz = "wave" + num2str(x+8)
                         Wave read_wave_dxz = $dos_wave_name_dxz
                         SetScale/P x start_e,delta_e,"", read_wave_dxz
                         //read_wave_dxz /= 13.602
                         // dx^2-y^2 orbital
                         dos_wave_name_dx2y2 = "wave" + num2str(x+9)
                         Wave read_wave_dx2y2 = $dos_wave_name_dx2y2
                         SetScale/P x start_e,delta_e,"", read_wave_dx2y2
                         //read_wave_dx2y2  /= 13.602
                         //
                         //new_wave_name = "component" + num2str(x/4 +1 - ((n+1)/4)/2 ) + "_dn"
                         //new_wave_name = component[x/4 - ((n+1)/4)/2] + "_down"
                         //Make/O/N=(DimSize(total_up,0)) $new_wave_name
                         //Wave read_wave_t = $new_wave_name
                         if( CmpStr(orbit[x/10- ((n+1)/10)/2], "s") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "S") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("0"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_s * -1
                           //print "dos_s"
                         // p
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "px") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "PX") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("1"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_px * -1
                           //print "dos_px"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "pz") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "PZ") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("2"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_pz * -1
                           //print "dos_pz"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "py") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "PY") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("3"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_py * -1
                           //print "dos_py"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "p") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "P") == 0 )
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = (read_wave_px + read_wave_pz + read_wave_py)  * -1
                           //
                         // d
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "dxy") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "DXY") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("4"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dxy * -1
                           //print "dos_dxy"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "dyz") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "DYZ") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("5"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dyz * -1
                           //print "dos_dyz"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "dz2") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "DZ2") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("6"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dz2 * -1
                           //print "dos_dz2"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "dxz") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "DXZ") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("7"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dxz * -1
                           //print "dos_dxz"
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "dx2y2") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "DX2Y2") == 0 ||  str2num(orbit[x/10- ((n+1)/10)/2]) == str2num("8"))
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = read_wave_dx2y2 * -1
                           //print "dos_dx2y2"
                         // d total
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "d") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "D") == 0 )
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = (read_wave_dxy + read_wave_dyz + read_wave_dz2 + read_wave_dxz + read_wave_dx2y2) * -1
                           //
                         // t2g
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "t2g") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "T2G") == 0 )
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = (read_wave_dxy + read_wave_dyz + read_wave_dxz) * -1
                         // eg
                         elseif( CmpStr(orbit[x/10- ((n+1)/10)/2], "eg") == 0 || CmpStr(orbit[x/10- ((n+1)/10)/2], "EG") == 0 )
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = (read_wave_dz2 + read_wave_dx2y2) * -1
                         // total
                         else
                           new_wave_name = component[x/10- ((n+1)/10)/2] + "_" +  orbit[x/10- ((n+1)/10)/2] + "_down"
                           Make/O/N=(DimSize(total_up,0)) $new_wave_name
                           Wave read_wave_t = $new_wave_name
                           read_wave_t = (read_wave_s + read_wave_px + read_wave_pz + read_wave_py + read_wave_dxy + read_wave_dyz + read_wave_dz2 + read_wave_dxz + read_wave_dx2y2) * -1
                           //print "dos_total"
                         endif
                         SetScale/P x start_e,delta_e,"", read_wave_t
                         //
                         read_wave_t /= 13.602
                         AppendToGraph read_wave_t
                       endfor
            ModifyGraph width=283,height=227
                       ModifyGraph mirror(bottom)=1,fSize=16,standoff=0,font="Arial";DelayUpdate
                       //ModifyGraph zero(bottom)=1
                       ModifyGraph zero(bottom)=4
                       ModifyGraph tick(bottom)=2
                       ModifyGraph tick=2
                       ModifyGraph nticks(bottom)=20
                       //ModifyGraph mirror=1
                       ModifyGraph minor(right)=1
                       // bottom side
                       Label bottom "Energy [eV]";DelayUpdate
                       SetAxis bottom -10,5
                       //ModifyGraph manTick(bottom)={0,4,0,0},manMinor(bottom)={0,0}
                       // left side
                       Label left "DOS [states/eV]"
                       // right side
                       ModifyGraph lblRot(right)=180;DelayUpdate
                       Label right "VEC"
                       // room
                       ModifyGraph margin(left)=45,margin(bottom)=40,margin(top)=28,margin(right)=45
                       // legend Ef
                       TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                       TextBox/C/N=text0/A=MB/X=17.24/Y=-9.90
                       // legend
                       Legend/C/N=text1/F=0/M/H=18/A=MB
                       Legend/C/N=text1/J/A=LT/X=7.16/Y=5.61
                       // color
                       ModifyGraph rgb=(0,0,0)
                       String component_name
                       // up
                       ModifyGraph rgb(IDOS_up)=(30464,30464,30464)
                       // PDOS up
                       component_name = component[0] + "_" + orbit[0] +  "_up"
                       ModifyGraph rgb($component_name)=(65280,0,0)
                       //
                       component_name = component[1] + "_" + orbit[1] +  "_up"
                       ModifyGraph rgb($component_name)=(0,39168,0)
                       //
                       component_name = component[2] + "_" + orbit[2] +  "_up"
                       ModifyGraph rgb($component_name)=(0,0,65280)
                       //
                       component_name = component[3] + "_" + orbit[3] +  "_up"
                       ModifyGraph rgb($component_name)=(39168,0,39168)
                       //
                       // down
                       ModifyGraph rgb(IDOS_dn)=(30464,30464,30464)
                       //ModifyGraph lstyle(TDOS_dn_eV)=3
                       //ModifyGraph lstyle(IDOS_dn)=3
                       // PDOS down
                       component_name = component[0] + "_" + orbit[0] + "_down"
                       ModifyGraph rgb($component_name)=(65280,0,0)
                       //ModifyGraph lstyle($component_name)=3
                       //
                       component_name = component[1] + "_" + orbit[1] + "_down"
                       ModifyGraph rgb($component_name)=(0,39168,0)
                       //ModifyGraph lstyle($component_name)=3
                       //
                       component_name = component[2] + "_" + orbit[2] + "_down"
                       ModifyGraph rgb($component_name)=(0,0,65280)
                       //ModifyGraph lstyle($component_name)=3
                       //
                       component_name = component[3] + "_" + orbit[3] + "_down"
                       ModifyGraph rgb($component_name)=(39168,0,39168)
                       //ModifyGraph lstyle($component_name)=3
                       // font
                       ModifyGraph gFont="Arial",gfSize=12,gmSize=12
                       //
                       String graph_path
                       graph_path = GetDataFolder(1)
                       TextBox/C/N=text2/F=0/M/H=18/A=MC graph_path
                       TextBox/C/N=text2/A=MT/X=2.12/Y=-7.59
                       //print graph_path
                       ModifyGraph zero(left)=1
End

// spc
Function ButtonProc_2(ctrlName) : ButtonControl
	String ctrlName
    // click code here
      Variable n
      String wave_name
      // check existing wave
      n=0
      do
        wave_name = "wave" + num2str(n)
        //print wave_name, WaveList("wave"+num2str(n) ,";","")
        //print "exists ", wave_name
                         n = n + 1
                       while ( WaveExists($wave_name) != 0 )
                       n = n - 2
                       print n
                       //
                       // check x data
                       Variable num_x_axis
                       num_x_axis = ( n + 1 ) / 3
                       print "x axis data", num_x_axis
                       // check y data
                       Variable num_y_axis
                       num_y_axis = DimSize(wave1,0)
                       print "y axis data", num_y_axis
                       //
                       // make image
                       Variable x, y
                       Make/O/N=(num_x_axis, num_y_axis) spc
                       for(x=0;x<num_x_axis;x+=1)
                         wave_name = "wave" + num2str(x*3+2)
                         Wave read_wave = $wave_name
                         for(y=0;y<num_y_axis;y+=1)
                           spc[x][y] = read_wave[num_y_axis-y]
                         endfor
                       endfor
                       NewImage spc
                       // change wave scaling (left side)
                       Variable start_e, delta_e
                       Wave wave1
                       start_e = wave1[num_y_axis] * 13.602
                       delta_e = -(wave1[1]-wave1[0]) * 13.602
                       SetScale/P y start_e,delta_e,"", spc
                       // graph setting
                       ModifyGraph fSize(left)=16,font(left)="Arial"
                       // left side
                       ModifyGraph tick(left)=2
                       SetAxis/A left
                       SetAxis left -12,4; ModifyGraph minor(left)=0
                       ModifyGraph tkLblRot=0
                       ModifyGraph tlOffset(left)=3
                       // Ef line
                       ModifyGraph zero(left)=4,zeroThick(left)=1
                       // Legend Ef
                       TextBox/C/N=text4/F=0/M/H=18/A=MB "\\F'Arial'\\Z16E\\BF"
                       TextBox/C/N=text4/A=LT/X=-7.95/Y=22.47
                       // modified Image
                       ModifyGraph tick(top)=3,noLabel(top)=1
                       Label left "Energy [eV]"
                       ModifyGraph margin(left)=40
                       // bottom
                       ModifyGraph width=226.772,height=340.157
                       ModifyGraph margin(bottom)=28
                       // Gamma symbol
                       TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Symbol'\\Z16G"
                       TextBox/C/N=text0/A=LB/X=-1.66/Y=-6.95
                       // Lambda symbol
                       TextBox/C/N=text1/F=0/M/H=18/A=MC "\\F'Symbol'\\Z16L"
                       TextBox/C/N=text1/A=MB/X=0.33/Y=-6.95
                       // Lambda symbol
                       TextBox/C/N=text2/F=0/M/H=18/A=MC "\\F'Arial'\\Z16X"
                       TextBox/C/N=text2/A=RB/X=-1.66/Y=-6.95
                       // color scale (right side)
                       ModifyGraph margin(right)=68
                       ColorScale/C/N=text3/F=0/M/H=18/A=RB image=spc
                       ColorScale/C/N=text3/A=RC/X=-25.17/Y=-1.10
                       ColorScale/C/N=text3 font="Arial"
                       //ModifyImage spc ctabAutoscale=3,lookup= $""
                       ModifyImage spc ctab= {0,*,Grays,1}
                       // font
                       ModifyGraph gFont="Arial",gfSize=12,gmSize=12
                       String graph_path
                       graph_path = GetDataFolder(1)
                       TextBox/C/N=text4/F=0/M/H=18/A=MC graph_path
                       TextBox/C/N=text4/A=MT/X=-0.99/Y=-3.96
                       //print graph_path
                       //
End

//mcd
Function ButtonProc_4(ctrlName) : ButtonControl
	String ctrlName
	print "Sorry, under construction"
End

//dos for cps
Function ButtonProc_5(ctrlName) : ButtonControl
	String ctrlName
    // click code here
    ModifyGraph swapXY=1
    ModifyGraph width=226.772,height=340.157
    // scale
    SetAxis left -12,4
    // VEC label
    ModifyGraph lblRot=0
    // legend
    Legend/C/N=text1/J/A=RB/X=13.58/Y=9.91
    // legend Ef
    TextBox/C/N=text0/A=LT/X=-7.95/Y=22.25
    // legend path
    TextBox/C/N=text2/A=LT/X=-15.23/Y=-12.56
End

//comp table
Function ButtonProc_6(ctrlName) : ButtonControl
	String ctrlName
    // click code here
    Variable n, i
    String dos_wave_name
    do
      dos_wave_name = "wave" + num2str(n)
      //print dos_wave_name, WaveList("wave"+num2str(n) ,";","")
      //print "exists ", dos_wave_name
      n = n + 1
    while ( WaveExists($dos_wave_name) != 0 )
    n = n - 2
    print "components", (n+1)/2/10
    Make/O/t/N=((n+1)/2/10) component
    i=0
    do
      component[i] = WaveName("",i,4)
      i+=1
    while(i < (n+1)/2/10)
    //
    Make/O/t/N=((n+1)/2/10) orbit
    i=0
    do
      orbit[i] = "T"
      i+=1
    while(i < (n+1)/2/10)
    //
    //Edit/N=dos_component component, orbit
    Edit component, orbit
End


// add_dos
Function ButtonProc_9(ctrlName) : ButtonControl
	String ctrlName
    Wave/t component, orbit
    Variable n, i
    String dos_wave_name
    String new_wave_name
    do
      dos_wave_name = "wave" + num2str(n)
      //print dos_wave_name, WaveList("wave"+num2str(n) ,";","")
      //print "exists ", dos_wave_name
      n = n + 1
    while ( WaveExists($dos_wave_name) != 0 )
    n = n - 2
    AppendToGraph TDOS_up_eV
    AppendToGraph TDOS_dn_eV
    i=0
    do
      new_wave_name = component[i] + "_" +  orbit[i] + "_up"
      Wave read_wave_t = $new_wave_name
      AppendToGraph read_wave_t
      //
      new_wave_name = component[i] + "_" +  orbit[i] + "_down"
      Wave read_wave_t = $new_wave_name
      AppendToGraph read_wave_t
      //
      i+=1
    while(i < (n+1)/2/10)
End


// dos_shift
Function ButtonProc_10(ctrlName) : ButtonControl
	String ctrlName
	Make/O eshift
	//
	Variable start_e, delta_e
	Wave TDOS_up_eV, total_up
	Wave TDOS_dn_eV, total_up
	//
	Wave/t component, orbit
    Variable n, i
    String dos_wave_name
    String new_wave_name
	//
	showinfo
	eshift[0] = pcsr(A)-pcsr(B)
    delta_e = ( total_up[1] - total_up[0] ) * 13.602
    start_e =  total_up[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", TDOS_up_eV
	SetScale/P x start_e,delta_e,"", TDOS_dn_eV
    do
      dos_wave_name = "wave" + num2str(n)
      //print dos_wave_name, WaveList("wave"+num2str(n) ,";","")
      //print "exists ", dos_wave_name
      n = n + 1
    while ( WaveExists($dos_wave_name) != 0 )
    n = n - 2
    i=0
    do
      new_wave_name = component[i] + "_" +  orbit[i] + "_up"
      Wave read_wave_t = $new_wave_name
      SetScale/P x start_e,delta_e,"", read_wave_t
      //
      new_wave_name = component[i] + "_" +  orbit[i] + "_down"
      Wave read_wave_t = $new_wave_name
      SetScale/P x start_e,delta_e,"", read_wave_t
      //
      i+=1
    while(i < (n+1)/2/10)
End


// -
Function ButtonProc_11(ctrlName) : ButtonControl
	String ctrlName
	Wave eshift
	//
	Variable start_e, delta_e
	Wave TDOS_up_eV, total_up
	Wave TDOS_dn_eV, total_up
	//
	Wave/t component, orbit
    Variable n, i
    String dos_wave_name
    String new_wave_name
	//
	showinfo
    delta_e = ( total_up[1] - total_up[0] ) * 13.602
    eshift[0] -= delta_e / 10
    start_e =  total_up[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", TDOS_up_eV
	SetScale/P x start_e,delta_e,"", TDOS_dn_eV
    do
      dos_wave_name = "wave" + num2str(n)
      //print dos_wave_name, WaveList("wave"+num2str(n) ,";","")
      //print "exists ", dos_wave_name
      n = n + 1
    while ( WaveExists($dos_wave_name) != 0 )
    n = n - 2
    i=0
    do
      new_wave_name = component[i] + "_" +  orbit[i] + "_up"
      Wave read_wave_t = $new_wave_name
      SetScale/P x start_e,delta_e,"", read_wave_t
      //
      new_wave_name = component[i] + "_" +  orbit[i] + "_down"
      Wave read_wave_t = $new_wave_name
      SetScale/P x start_e,delta_e,"", read_wave_t
      //
      i+=1
    while(i < (n+1)/2/10)
End


// +
Function ButtonProc_12(ctrlName) : ButtonControl
	String ctrlName
	Wave eshift
	//
	Variable start_e, delta_e
	Wave TDOS_up_eV, total_up
	Wave TDOS_dn_eV, total_dn
	//
	Wave/t component, orbit
    Variable n, i
    String dos_wave_name
    String new_wave_name
	//
	showinfo
    delta_e = ( total_up[1] - total_up[0] ) * 13.602
    eshift[0] += delta_e / 10
    start_e =  total_up[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", TDOS_up_eV
	SetScale/P x start_e,delta_e,"", TDOS_dn_eV
    do
      dos_wave_name = "wave" + num2str(n)
      //print dos_wave_name, WaveList("wave"+num2str(n) ,";","")
      //print "exists ", dos_wave_name
      n = n + 1
    while ( WaveExists($dos_wave_name) != 0 )
    n = n - 2
    i=0
    do
      new_wave_name = component[i] + "_" +  orbit[i] + "_up"
      Wave read_wave_t = $new_wave_name
      SetScale/P x start_e,delta_e,"", read_wave_t
      //
      new_wave_name = component[i] + "_" +  orbit[i] + "_down"
      Wave read_wave_t = $new_wave_name
      SetScale/P x start_e,delta_e,"", read_wave_t
      //
      i+=1
    while(i < (n+1)/2/10)
End


// new_tdos
Function ButtonProc_13(ctrlName) : ButtonControl
	String ctrlName
	String new_wave_name
	//
	Wave eshift
	//
	Variable start_e, delta_e
	Wave TDOS_up_eV, total_up
	Wave TDOS_dn_eV, total_dn
	//
	new_wave_name = "TDOS_up_" + GetDataFolder(0)[1] + GetDataFolder(0)[2]
	Make/O/N=(DimSize(total_up,0)) $new_wave_name
    Wave read_wave_t = $new_wave_name
    read_wave_t = TDOS_up_eV
    delta_e = ( total_up[1] - total_up[0] ) * 13.602
    start_e =  total_up[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", read_wave_t
    Display read_wave_t
    //
	new_wave_name = "TDOS_dn_" + GetDataFolder(0)[1] + GetDataFolder(0)[2]
	Make/O/N=(DimSize(total_dn,0)) $new_wave_name
    Wave read_wave_t = $new_wave_name
    read_wave_t = TDOS_dn_eV
    delta_e = ( total_dn[1] - total_dn[0] ) * 13.602
    start_e =  total_dn[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", read_wave_t
    AppendToGraph read_wave_t
    //
               ModifyGraph width=283,height=227
                       ModifyGraph mirror(bottom)=1,fSize=16,standoff=0,font="Arial";DelayUpdate
                       //ModifyGraph zero(bottom)=1
                       ModifyGraph zero(bottom)=4
                       ModifyGraph tick(bottom)=2
                       ModifyGraph tick=2
                       ModifyGraph nticks(bottom)=20
                       ModifyGraph mirror=1
                       ModifyGraph minor(right)=1
                       // bottom side
                       Label bottom "Energy [eV]";DelayUpdate
                       SetAxis bottom -10,5
                       //ModifyGraph manTick(bottom)={0,4,0,0},manMinor(bottom)={0,0}
                       // left side
                       Label left "DOS [states/eV]"
                       // right side
                       //ModifyGraph lblRot(right)=180;DelayUpdate
                       //Label right "VEC"
                       // room
                       ModifyGraph margin(left)=45,margin(bottom)=40,margin(top)=28,margin(right)=45
                       // legend Ef
                       TextBox/C/N=text0/F=0/M/H=18/A=MC "\\F'Arial'\\Z16E\\BF"
                       TextBox/C/N=text0/A=MB/X=17.24/Y=-9.90
                       // legend
                       Legend/C/N=text1/F=0/M/H=18/A=MB
                       Legend/C/N=text1/J/A=LT/X=7.16/Y=5.61
                       // color
                       ModifyGraph rgb=(0,0,0)
                       ModifyGraph zero(left)=1
End


// add_tdos
Function ButtonProc_14(ctrlName) : ButtonControl
	String ctrlName
	String new_wave_name
	//
	Wave eshift
	//
	Variable start_e, delta_e
	Wave TDOS_up_eV, total_up
	Wave TDOS_dn_eV, total_dn
	//
	new_wave_name = "TDOS_up_" + GetDataFolder(0)[1] + GetDataFolder(0)[2]
	Make/O/N=(DimSize(total_up,0)) $new_wave_name
    Wave read_wave_t = $new_wave_name
    read_wave_t = TDOS_up_eV
    delta_e = ( total_up[1] - total_up[0] ) * 13.602
    start_e =  total_up[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", read_wave_t
    AppendToGraph read_wave_t
    //
	new_wave_name = "TDOS_dn_" + GetDataFolder(0)[1] + GetDataFolder(0)[2]
	Make/O/N=(DimSize(total_dn,0)) $new_wave_name
    Wave read_wave_t = $new_wave_name
    read_wave_t = TDOS_dn_eV
    delta_e = ( total_dn[1] - total_dn[0] ) * 13.602
    start_e =  total_dn[0] * 13.602 - eshift[0] * delta_e
	SetScale/P x start_e,delta_e,"", read_wave_t
    AppendToGraph read_wave_t
    ModifyGraph rgb=(0,0,0)
End