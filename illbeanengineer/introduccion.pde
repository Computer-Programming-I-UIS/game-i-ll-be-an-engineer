void introduccion(){



if(next<4){
  w+=20;
 h=8*w/5;
  x+=5;
y+=5;
if(x>=200){
x=200;
}
if(y>=140){
y=140;
}
yn1=40;
yn2=40;
ysol=0;
ypasto=550;
yflor1=490;
yflor2=500;
yflor3=470;
yflor4=520;
yflor5=480;
ynext=0;
xnext=0;
}
if(next>=4){
  
  w=1000;
  h=8*w/5;
  y-=5;
     x-=5;
     yp1=yimg+720;
yp2=yimg+150;
yn1=yimg+40;
yn2=yimg+40;
ysol=yimg;
yluna=yimg;
ypasto+=5;
yflor1+=5;
yflor2+=5;
yflor3+=5;
yflor4+=5;
yflor5+=5;
ynext=50;
xnext=-70;
if(y<=yimg){
     y=yimg;
     ypasto=1500+yimg;
yflor1=1475+yimg;
yflor2=1475+yimg;
yflor3=1475+yimg;
yflor4=1475+yimg;
yflor5=1475+yimg;
     ypasto=1515+yimg;}
     if(x<=0){
     x=0;}}
 if(next>=5){
   y=yimg; 
  }

 if(w>=1000){
   w=1000;
   
   if(next==0){
     if(idioma==false){
   ingles1.escribir();}
   else if(idioma==true){
   espanol1.escribir();}
   }
   
   if(next==1){
   if(idioma==false){
   ingles2.escribir();}
   else if(idioma==true){
   espanol2.escribir();}
   }
   
   if(next==2){
   if(idioma==false){
   ingles3.escribir();
   ingles4.escribir();
   }
   else if(idioma==true){
   espanol3.escribir();
   espanol4.escribir();
 }
   }
   if(next==3){
   if(idioma==false){
   ingles5.escribir();}
   else if(idioma==true){
   espanol5.escribir();}
   }
   
   if(next==4 && y==yimg){
   if(idioma==false){
     ingles6.escribir();
     ingles7.escribir();
     }
   else if(idioma==true){
     espanol6.escribir();
     espanol7.escribir();
     }
   }
   
   if(next==5){
     
     if(minijuegos==true){
       next=6;
      
     }
     if(yimg>-950){
       fill(negro);
       rect(235,270,15,50);
       triangle(220,320,265,320,242,335);}
     if(yimg<=-950 && minijuegos==false){
       strokeWeight(15);
       stroke(countercolor,99,99);
       line(460,380,560,yimg+1380);
       fill(countercolor,99,99);
       noStroke();
       triangle(562,yimg+1360,550,yimg+1395,590,yimg+1390);
       
     nivel1.niveles();}  
       
   if(idioma==false){
     ingles8.escribir();
     if(yimg<=-950){
       ingles9.escribir();
     }
     }
   else if(idioma==true){
     espanol8.escribir();
     if(yimg<=-950){
     espanol9.escribir();
       
     }
     }
     
   }
   if(next==6){
      nubeee1=false; nubeee2=false; solsol=false; pastoo=false; flores=false; estrellitas=false; gusanitoo=false; cohetesss=false; planetas=false;shipss=false;
rayoo=false; thinkerr=false;lunaaa=false;
       burbujasnivel1.dibujar();
       xnext=-150;
       ynext=300;
   }
   
   
   
   if(next!=5){
   strokeJoin(ROUND);
   fill(negro);
   stroke(negro);
   textSize(27);
   rect(272+xnext,300+ynext,80,30);
   strokeJoin(SQUARE);
   fill(blanco);
   textAlign(CENTER);
   if(idioma==false){
   text("next",313+xnext,325+ynext);}
   else if(idioma==true){
    text("sig.",316+xnext,325+ynext);
   }}
   
   if(next>=1){
     stroke(negro);
     strokeJoin(ROUND);
   fill(negro);
   rect(272+xnext,340+ynext,80,30);
   strokeJoin(SQUARE);
   fill(blanco);
   textSize(27);
   textAlign(CENTER);
   if(idioma==false){
   text("back",313+xnext,367+ynext);}
   else if(idioma==true){
   text("volver",313+xnext,367+ynext);}
   
   
   }
 }}
 
 class textos{
  
     String texttt[]; int inicial; ; int numletras; int finall;  int ytexto;  int tamanotext; int u=0; int countertexto;
  textos(String texttt2[], int inicial2, int numletrass, int finall2, int ytexto2,  int tamanotext2, int u2, int countertexto2){
    texttt=texttt2;
    finall=finall2;
    ytexto=ytexto2;
    tamanotext=tamanotext2;
    inicial=inicial2;
    numletras=numletrass;
    countertexto=countertexto2;
    u=u2;
    
  }
  void escribir(){
    noFill();
   stroke(negro);
   strokeWeight(5);
   if(next<4){
   arc(305,190,270,160,1.10,TWO_PI +0.31);
   line(455,265,434,216);
   line(455,265,366,261);}
   textSize(tamanotext);
   fill(negro);
   textAlign(CENTER);

   if(countertexto>=u*2 && countertexto<(u+1)*2){
   text(texttt[inicial],300+xnext,ytexto+ynext);
   ;}
   countertexto++;
   if(countertexto==(u+1)*2){
  u++;
inicial++;}
 
 
   
    if(countertexto<numletras*2){
   if(counter>=0 && counter<5){
     gusanito = bocaabierta;
   }
   else if(counter>=5 && counter<10){
     gusanito = normal;
   }
   counter++;
   if(counter==10){
     counter=0;
   }}
   
   
   
   
   
   
if (u==numletras){
u=numletras;
countertexto=u*2;
gusanito=normal;
inicial=finall;}


}}
