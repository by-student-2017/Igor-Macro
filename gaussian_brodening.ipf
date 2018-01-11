#pragma rtGlobals=1  // Use modern global access method.

Window Graph0() : Graph
  PauseUpdate; Silent 1  // building window...
  String fldrSav= GetDataFolder(1)
  SetDataFolder root:dvxa:'5.0Ang':
  Display /W=(189,54.5,656.25,389) :::wien2k:'total_DOSx0.5' vs :::wien2k:ENERGY
  AppendToGraph Si2_centor_lvl vs lvlshm_eV
  AppendToGraph Si_centor_dosx05 vs dos_eV
  SetDataFolder fldrSav
  ModifyGraph gFont="Arial",gfSize=18,gmSize=18,width=340,height=227
  ModifyGraph mode(Si2_centor_lvl)=1
  ModifyGraph lSize('total_DOSx0.5')=2
  ModifyGraph rgb('total_DOSx0.5')=(0,0,0),rgb(Si2_centor_lvl)=(65280,0,0),rgb(Si_centor_dosx05)=(0,0,65280)
  ModifyGraph offset('total_DOSx0.5')={0,1}
  ModifyGraph tick=2
  ModifyGraph mirror=1
  ModifyGraph font="Arial"
  ModifyGraph fSize=18
  ModifyGraph lblMargin(left)=22,lblMargin(bottom)=9
  ModifyGraph standoff=0
  ModifyGraph lblLatPos(left)=3
  Label left "DOS, \\f02N(\\F'Symbol'e\\f00\\F'Arial')"
  Label bottom "Energy, \\F'Symbol'\\f02e-e\\M\\f00\\F'Arial'\\Bf\\M\\F'Arial' / eV"
  SetAxis left 0,3
  SetAxis bottom -15,10
  ShowInfo
  Legend/N=text0/J/F=0/H=16/B=1/A=MC/X=-11.26/Y=29.14 "\\s('total_DOSx0.5') Band calc. (FLAPW-GGA)"
  AppendText "\\s(Si2_centor_lvl) Cluster calc. (DVX\\F'Symbol'\\f02a\\f00\\F'Arial')"
  AppendText "\\s(Si_centor_dosx05) Cluster calc. (DVX\\F'Symbol'\\f02a\\f00\\F'Arial')"
 EndMacro


 //Macro gaussian_borodening(x,y,FWHM)
 Macro gaussian_borodening(x,y,FWHM,xmin,xmax,estep)
 string x="eV";
 string y="Si1";
 variable FWHM=0.1;
 variable xmin=-13, xmax=10,estep=0.02720;
 silent 1; pauseupdate;
 variable ndata, nstep;
 variable i,j;
 variable sigma;
 sigma=FWHM/(2*sqrt(2*ln(2))); print "sigma=",sigma, ", sigma^2=", sigma^2;
 ndata=(DimSize($x,0));
 nstep=round((xmax-xmin)/estep); //print nstep;
 make/O/N=(nstep) xgb,ygb;
 i=0;
 i=0;
 do
   xgb[i] = xmin + estep * i;
   ygb[i] = 0.0
   i=i+1;
 while(i<=nstep)
 variable A=(1/(sqrt(2*3.1415926)*sigma))
 variable B=(2*sigma^2)
 variable four_sigma = 4*sigma
 i=0;
 do
   j=0;
   do
     if(xgb[i]+four_sigma>=$x[j] && $x[j]>=xgb[i]-four_sigma)
       ygb[i] = ygb[i] + $y[j]*A*exp(-(xgb[i]-$x[j])^2/B)
     endif
     j=j+1;
   while(j<ndata)
   i=i+1
 while(i<nstep)
 //
 Display $y vs $x
 ModifyGraph rgb=(0,0,0),mode($y)=1
 //
 string new_xw, new_yw
 new_xw = "xgb_" + y
 new_yw = "ygb_" + y
 make/O/N=(nstep) $new_xw,$new_yw;
 $new_xw=xgb;
 $new_yw=ygb;
 killwaves xgb, ygb;
 //
 AppendToGraph $new_yw vs $new_xw
 //AppendToGraph ygb vs xgb
 ModifyGraph tick=2,mirror=1,fSize=18,standoff=0,font="Arial";DelayUpdate
 Label left "DOS, \\f02N\\f00\\M(\\F'Symbol'e\\F'Arial')";DelayUpdate
 Label bottom "Energy, \\F'Symbol'\\f02e-e\\f00\\B\\F'Arial'f\\M / eV"
 ModifyGraph width=340,height=227,gFont="Arial"
 ModifyGraph rgb=(0,0,0)
 ModifyGraph lsize=2
 //Legend/C/N=text0/J/F=0/B=1/A=MC "\\s('total_DOSx0.5') Band calc. (FLPAW-GGA)"
 ModifyGraph gfSize=18,gmSize=18
 SetAxis bottom xmin,xmax
 SetAxis left 0.0,5
 EndMacro
 Window Graph4() : Graph
  PauseUpdate; Silent 1  // building window...
  String fldrSav= GetDataFolder(1)
  SetDataFolder root:SnSe_rt:'5Ang':Ni:lvlshm:
  Display /W=(5.25,43.25,453,356) Total vs eV
  AppendToGraph ygb_Total vs xgb_Total
  SetDataFolder fldrSav
  ModifyGraph gFont="Arial",gfSize=18,gmSize=18,width=340,height=227
  ModifyGraph mode(Total)=1
  ModifyGraph lSize=2
  ModifyGraph rgb=(0,0,0)
  ModifyGraph tick=2
  ModifyGraph mirror=1
  ModifyGraph font="Arial"
  ModifyGraph fSize=18
  ModifyGraph standoff=0
  Label left "DOS, \\f02N\\f00\\M(\\F'Symbol'e\\F'Arial')"
  Label bottom "Energy, \\F'Symbol'\\f02e-e\\f00\\B\\F'Arial'f\\M / eV"
  SetAxis left 0,5
  SetAxis bottom -13,10
 EndMacro

Window Table0() : Table
  PauseUpdate; Silent 1  // building window...
  String fldrSav= GetDataFolder(1)
  SetDataFolder root:Cu2Se:'7.6ang':Y:lvlshm:'shift_x-0.872':
  Edit/W=(5.25,43.25,510,235.25) ::xgb_Y1,::ygb_Y1,xgb_Y1,ygb_Y1,xgb_Y2,ygb_Y2
  SetDataFolder fldrSav
 EndMacro
