#pragma rtGlobals=1		// Use modern global access method.
// ver. 0.65

Macro ternary_plot_asso_panel()

NewPanel/W=(0, 0, 270, 90)

SetDrawEnv fillfgc= (48896,65280,48896)
DrawRect 5,2,266,88

DrawText 20,17,"Ternary Plot Asso. Panel"
SetDrawEnv fsize= 14

// x_name
String/G x_name
x_name = "Average_Temp_K"
SetVariable setvar0 proc=SetVarProc
SetVariable setvar0 pos={16,21},limits={0,1000,0},live=1
SetVariable setvar0 value=x_name
SetVariable setvar0 title="x name"
SetVariable setvar0 size={200,25}

// name
String/G name
name = "Average_uOhm_No"
SetVariable setvar1 proc=SetVarProc
SetVariable setvar1 pos={16,41},limits={0,1000,0},live=1
SetVariable setvar1 value=name
SetVariable setvar1 title="y name"
SetVariable setvar1 size={200,40}

// temp
Variable/G temp
temp = 300
SetVariable setvar2 proc=SetVarProc_1
SetVariable setvar2 pos={16,61},limits={0,2073,0},live=1
SetVariable setvar2 value=temp
SetVariable setvar2 title="temp."
SetVariable setvar2 size={60,60}

SetDrawEnv fname= "Arial",fsize= 14
DrawText 80,77,"K"

Button button4 title="do",proc=ButtonProc_1
SetDrawEnv fsize= 14
Button button4 size={80,20}
Button button4 pos={100,60}

End 

// comp table
Function ButtonProc_1(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			SVAR name, x_name
			NVAR temp
			Variable i, j, n
			Variable data_size
			String wave_name
			Make/O/N=(2000) No_temp
			//Wave name
			n = 0
			for(i=0;i<1000;i+=1)
			  wave_name = x_name + num2str(i) 
			  //print wave_name
                     if ( WaveExists($wave_name) != 0)
                       No_temp[n] = i
                       print i, No_temp[n] 
                       n = n + 1
                     endif
                   endfor
                   //
                   Make/O/N=(n) No
                   Make/O/N=(n) intensity
                   //Make/O/N=(n) $name
                   No = No_temp
                   //
                   i = 0; j = 0
                   for(i=0;i<=n;i+=1)
                     Wave wave_data_x = $x_name + num2str(No[i])
                     Wave wave_data_y = $name + num2str(No[i])
                     for(j=0;j<DimSize(wave_data_x,0);j+=1)
                       if( temp < wave_data_x[0]  )
                         intensity[i] = wave_data_y[0] + (wave_data_y[1] - wave_data_y[0])/(wave_data_x[1] - wave_data_x[0])*(temp - wave_data_x[0])
                         //print intensity[j]
                       endif 
                       if( (wave_data_x[j] <= temp) && (temp <= wave_data_x[j+1]) )
                         intensity[i] = wave_data_y[j] + (wave_data_y[j+1] - wave_data_y[j])/(wave_data_x[j+1] - wave_data_x[j])*(temp - wave_data_x[j])
                         //print intensity[j]
                       endif
                     endfor
                   endfor
                   //Wave wave_data_z = $name + "_data"
                   //wave_data_z = intensity
                   Make/O No_data
                   Make/O/N=(DimSize(No_data,0)) $name + "_" + num2str(temp) + "K"
                   Wave wave_data_z = $name + "_" + num2str(temp) + "K"
                   for(i=0;i<=DimSize(No_data,0);i+=1)
                     No_data[i] = i
                     wave_data_z[i] = 0
                     for(j=0;j<=n;j+=1)
                       if ( i == No[j] )
                         wave_data_z[i] = intensity[j]
                       endif
                     endfor
                   endfor
                   //
                   //Edit No_data, wave_data_z
                   //
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function SetVarProc(sva) : SetVariableControl
	STRUCT WMSetVariableAction &sva

	switch( sva.eventCode )
		case 1: // mouse up
		case 2: // Enter key
		case 3: // Live update
			Variable dval = sva.dval
			String sval = sva.sval
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End