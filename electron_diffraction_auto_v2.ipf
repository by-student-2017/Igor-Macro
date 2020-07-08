#pragma rtGlobals=1		// Use modern global access method.
// ver.1.00

Macro electron_diffraction()

NewPanel/W=(0, 0, 220, 60)

DrawText 5,20,"This program can read *.tif or *.png file"
SetDrawEnv fname= "Arial"

DrawText 20,45,"fold:"
SetDrawEnv fname= "Arial"

PopupMenu popup0 proc=PopMenuProc
PopupMenu popup0 pos={50,28}
PopupMenu popup0 value="2;3;4;5;6;8;10;12"
PopupMenu popup0 font="Arial"

Button button0 title="area",proc=ButtonProc
Button button0 pos={94,28}
Button button0 size={50,20}

Button button1 title="plot", proc=ButtonProc_1
Button button1 pos={154,28}
Button button1 size={50,20}

//String/G origin_image=ImageNameList("Graph0",";")
Variable/G fold=2

End 

Function PopMenuProc(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa

	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
			NVAR fold
			fold = str2num(pa.popStr)
			ShowInfo
			Wave image
			Variable/G NLP, NLQ
			NLP = DimSize(image,0)
			NLQ = DimSize(image,1)
			Cursor/I/P A, image, NLP/2, NLQ/2
			Cursor/I/P B, image, 0, NLQ/2
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

Function ButtonProc(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			Variable/G A_p,A_q,B_p,B_q
			A_p=pcsr(A)
			A_q=qcsr(A)
			B_p=pcsr(B)
			B_q=qcsr(B) 
			//DoWindow/R/K 'Graph1'
			//DoWindow/R/S='Graph1' Graph0
			//NewImage $image
			//SVAR origin_image
			//origin_image=ImageNameList("Graph0",";")
			ShowInfo
			//Cursor/I/P A, $origin_image, A_p, A_q
			//Cursor/I/P B, $origin_image, B_p, B_q
			Cursor/I/P A, image, A_p, A_q
			Cursor/I/P B, image, B_p, B_q
			Make/O/N=360 xPoints, yPoints
			Variable i, r, rl
			Variable j
			NVAR fold
			Variable q, p
			Variable shi_x, shi_y, dec_x, dec_y
			Variable x, y
			Variable cir_x, cir_y
			Variable chk_x, chk_y
			Variable new_rfacter, old_rfactor
			Wave image
			NVAR NLP, NLQ
			Make/O/N=(NLP,NLQ) circle_image
			old_rfactor = 999999
			r = sqrt((xcsr(B)-xcsr(A))^2+(vcsr(B)-vcsr(A))^2)
			for(shi_x=-5; shi_x<5; shi_x+=1)
			  for(shi_y=-5; shi_y<5; shi_y+=1)
			    //
			    for(q=0;q<=NLP;q+=1)
			      for(p=0;p<=NLQ;p+=1)
			        circle_image[p][q] = 0
			      endfor
			    endfor
			    new_rfacter = 0
			    //
			    for(rl=0; rl<r; rl+=1)
			    for(i=0; i<360; i+=1)
			      xPoints[i]=r*cos(Pi/180*i)+xcsr(A)+shi_x
			      yPoints[i]=r*sin(Pi/180*i)+vcsr(A)+shi_y
			      x=(rl)*cos(Pi/180*i)+xcsr(A)+shi_x
			      y=(rl)*sin(Pi/180*i)+vcsr(A)+shi_y
			      circle_image[x][y]=0
			      for(j=0;j<fold;j+=1)
			        cir_x=(rl)*cos(Pi/180*i+360/fold*j)+xcsr(A)+shi_x
			        cir_y=(rl)*sin(Pi/180*i+360/fold*j)+vcsr(A)+shi_y
			        circle_image[x][y] = circle_image[x][y] + image[cir_x][cir_y]/fold
			      endfor
			      new_rfacter = new_rfacter + ((circle_image[x][y] - image[x][y])/image[x][y])^2
		           endfor
		           endfor
		           if(old_rfactor > new_rfacter)
		             dec_x=shi_x
		             dec_y=shi_y
		             old_rfactor=new_rfacter
		           endif
		         endfor
		       endfor
		       A_p = xcsr(A) + dec_x
		       A_q = vcsr(A) + dec_y
		       Cursor/I/P A, image, A_p, A_q
		       for(i=0; i<360; i+=1)
			   xPoints[i]=r*cos(Pi/180*i)+A_p
			   yPoints[i]=r*sin(Pi/180*i)+A_q
			endfor
			AppendToGraph/T yPoints vs xPoints
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
			NVAR fold
			//SVAR origin_image
			rotation_plot(fold)
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End

// main routine
Function rotation_plot(fold)
  Variable fold
  //String origin_image
  NVAR NLP, NLQ
  //Make/O/N=(NLP,NLQ)  rotate_origin_image
  //Wave rotate_origin_image = $origin_image
  Variable i, j
  Variable p, q, rp, rq
  NVAR  A_p,A_q,B_p,B_q
  Variable Max_p, Max_q
  Wave image
  //
  Max_p = sqrt((pcsr(B)-pcsr(A))^2+(qcsr(B)-qcsr(A))^2)
  Max_q = Max_p
  Make/O/N=(NLP,NLQ) rotate_image, ave_image
  // initialization
  for(q=-Max_q;q<=Max_q;q+=1)
    for(p=-Max_p;p<=Max_p;p+=1)
       ave_image[p+A_p][q+A_q] = 0
    endfor
  endfor
  //
  for(i=0;i<fold;i+=1)
    // add rotated image
    for(q=-Max_q;q<=Max_q;q+=1)
      for(p=-Max_p;p<=Max_p;p+=1)
          rp = p*cos(Pi/180*360/fold*i) - q*sin(Pi/180*360/fold*i)
          rq = p*sin(Pi/180*360/fold*i) + q*cos(Pi/180*360/fold*i)
          rotate_image[p+A_p][q+A_q]=image[rp+A_p][rq+A_q]
      endfor
    endfor
    // average calculation
    for(q=-Max_q;q<=Max_q;q+=1)
      for(p=-Max_p;p<=Max_p;p+=1)
         ave_image[p+A_p][q+A_q] = ave_image[p+A_p][q+A_q] + rotate_image[p+A_p][q+A_q] / fold
      endfor
    endfor
    //
  endfor
  NewImage ave_image
End