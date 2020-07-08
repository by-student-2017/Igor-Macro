Igor macro (.ipf)


Available in Igor 5. I remember that Igor 6 was available and Igor 7 was unavailable. (Igorのヴァージョン5で利用可能です。ヴァージョン6は利用可能で、ヴァージョン7は利用が不可能であった記憶があります)


□ Usage (inumacro.ipf or inumacro-igor8.ipf)


1. ZEM3_inumacro_Eng.xls or ZEM3_inumacro_JP.xls


  (copy from "平均Temp" (=avg. Temp) to "格子熱伝導率" (= phonon [W/mK]) [ on Excel (ZEM3_inumacro_Eng.xls or ZEM3_inumacro_JP.xls))


  平均Temp (= average Celsius temperature)	温度 [K] (= temperature)	平均μΩ㎝ (=average μΩ㎝)	補正後ゼーベック [μV/K] (=seebeck) 	熱伝導率 W/mK (=thermal conducivity)	ZT	Z	P(*10^-4)	キャリア熱伝導率 (=W/mK of electron part)	格子熱伝導率 (=W/mK of phonon part)


2. inumacro.ipf (Igor 5 or 6) or inumacro-igor8.ipf (Igor 8)


3. Macro > plot_Ass_panel (マクロ > plot_Ass_panel)


4. Table


  (paste from "平均Temp" to "格子熱伝導率")


5. Rename


6. All Graph


Note: Use "Arial" for briefings and conferences, and "Times New Roman" for papers (報告会や学会では"Arial"、論文では"Times New Roman"を用いる)




◇ offset (e.g., many XRD data)


1. Offset []


  (input number to [])




"akaikkr.ipf" is an automatic drawing for "Akai KKR". However, it needs to be rewritten to draw the details of the p and d orbitals. The rewriting method is in "Introduction to First Principles Calculation", so please try it. ("akaikkr.ipf"は"AkaiKKR"用の自動描画です。ただし、pとd軌道の詳細を描くように書き換える必要があります。書き換え方は"第一原理計算入門"にありますので試してみてください)


"gausian_brodening.ipf" will load the Gaussian broad l08 data of "DVXa". ("gausian_brodening.ipf"は"DVXa"のl08データをガウシアンブロードします)


In Igor 8, an error has occurred because it can be written without specifying the symbol font. I have created "inumacro-igor8.ipf" for Igo r8. Igor 8 was about 100,000 yen but it was not backward compatible, so I made it angry, so I am sorry if there is a mistake
.(Igor 8ではシンボルフォントの指定なしに記述できるようになったためエラーが生じている。Igo r8用に"inumacro-igor8.ipf"を作りました。Igor 8が約10万円するのに下位互換がなかったため、怒りながら作成したので誤りの部分があったらごめんなさい)


The size of the graph can be fixed by clicking Graph> Save Graph Settings after setting the Width and Height modes by clicking the empty part of the graph. (グラフの大きさは、グラフの何もない部分をクリックして幅モードと高さモードを設定した後、グラフ＞グラフ設定を保存 で固定することが可能です)


□ Ipf used in peer-reviewed paper (査読付き論文で用いたipf)
・inumacro.ipf
・ternary_plot_asso.ipf
・HRFF_analysis_igor.ipf
