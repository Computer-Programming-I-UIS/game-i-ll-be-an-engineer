void menuniveles() {
  musicamenu=true;
  imageMode(CORNER);
  colorMode(HSB, 100);

  xsettings=950;
  ysettings=90;
  xmusic=880;
  ymusic=50;
  xidioma=880;
  yidioma=120;
  xdianoche=300;
  ydianoche=-250;

  if (dianoche==true) {
    
    blanco=color(#FFFFFF);
    negro=color(#000000);
    colorfondo=color(#E8F4FF);
    nubeee1=true; 
    nubeee2=true; 
    solsol=true; 
    pastoo=true; 
    flores=true; 
    estrellitas=false; 
    gusanitoo=true; 
    cohetesss=false; 
    planetas=false;
    shipss=false;
    rayoo=false; 
    thinkerr=false;
    lunaaa=false;
    
  }


 else if (dianoche==false) {
    colorfondo=color(#000000);
    blanco=color(#000000);
    negro=color(#FFFFFF);
    nubeee1=false; 
    nubeee2=false; 
    solsol=false; 
    pastoo=false; 
    flores=false; 
    estrellitas=true; 
    gusanitoo=true; 
    cohetesss=true; 
    planetas=true;
    shipss=false;
    rayoo=false; 
    thinkerr=false;
    lunaaa=true;

    yluna=0;
    xp1=60; 
    yp1=520;
    xpp2=730; 
    ypp2=50;
  }
  if (next<6) {

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
 if(next==5){
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

     
     if(yimg>-950){
       fill(negro);
       rect(235,270,15,50);
       triangle(220,320,265,320,242,335);}
     if(yimg<=-950 && jugarnivel[0]==false){
       strokeWeight(15);
       stroke(countercolor,99,99);
       line(460,380,560,yimg+1380);
       fill(countercolor,99,99);
       noStroke();
       triangle(562,yimg+1360,550,yimg+1395,590,yimg+1390);
       
     
 }  
       
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
   
   
   if(next<5 ){
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
   
   if(next<=5 && next>0){
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
  



  if (next>=5 && minijuegos ==false ) {
   salir=true;
    w=1000;
    h=8*w/5;
    yp1=yimg+720;
    ypp2=yimg+150;
    yn1=yimg+40;
    yn2=yimg+40;
    ysol=yimg;
    yluna=yimg;
    y=yimg;
    ypasto=1515+yimg;
    yflor1=1475+yimg;
    yflor2=1475+yimg;
    yflor3=1475+yimg;
    yflor4=1475+yimg;
    yflor5=1475+yimg;
    x=0;
    entergame1=false;
    entergame2=false;
    entergame3=false;


    nivel1.niveles(); 
    if(next>=10){
    nivel2.niveles(); 
    nivel3.niveles(); 
    nivel4.niveles(); 
    nivel5.niveles(); 
    nivel6.niveles(); 
    nivel7.niveles(); 
    nivel8.niveles();
    nivel9.niveles(); 
    nivel10.niveles();
    nivel11.niveles(); 
    nivel12.niveles();
    }
    if (animacionjugar==true) {

      if(dianoche==false){
        fill(#D3D3D3);}
        else if (dianoche){
      fill(color(sizejugarrr, 99, 99));}
      noStroke();
      ellipse(500, 430, sizejugar, sizejugar);
      sizejugarrr+=4;
      if (sizejugarrr>=120) {
        sizejugarrr=0;
      }
      sizejugar+=35;
    }
  } else if (minijuegos==true) {

salir=false;
    if (menuminijuegos==true) {
      
lunaaa=false;
nubeee1=false;
nubeee2=false;

      solsol=false; 
      pastoo=false; 
      flores=false; 
      estrellitas=true; 
      gusanitoo=false; 
      cohetesss=false; 
      planetas=false;
      shipss=false;
      rayoo=false; 
      thinkerr=false;

      if (dianoche==true) {
        colorfondo=color(#E0EEFF);
      } else if (dianoche==false) {
        colorfondo=color(blanco);
      }
      textAlign(CENTER, CENTER);  
      fill(#7EA4F0);
      if (enes==false) {
        textSize(60);
        text("Choose a game", 500, 150);
      } else if (enes==true) {
        textSize(40);
        text("Elije un juego", 500, 150);
      }
      imageMode(CENTER);
      image(burbujanormal, 200, 400, 200, 200);
      image(cohete1, 500, 400, 200, 200);
      copy(lolaboa, 300, 80, 200, 200, 700, 300, 200, 200);
    } else {

      solsol=false; 
      pastoo=false; 
      flores=false; 
      estrellitas=false; 
      gusanitoo=false; 
      cohetesss=false; 
      planetas=false;
      shipss=false;
      rayoo=false; 
      thinkerr=false;

    }

    if (jugarnivel[0]==true && nivelesss[0]==true) {
       next=10;
      
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel1.dibujar();
      }

      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel1.move();
        cohetenivel1.dibujo();
        cohetenivel1.collide();
        cohetenivel1.punto();
      }else {
        jugandoCohetes = false;
        
      }

      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel1.dibujar();
      }

    }
    
    else if (jugarnivel[1]==true && nivelesss[1]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel2.dibujar();
      }

      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel2.move();
        cohetenivel2.dibujo();
        cohetenivel2.collide();
        cohetenivel2.punto();
      }else {
        jugandoCohetes = false;
        
      }

      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel2.dibujar();
      }
    }
    
    

    else if (jugarnivel[14]==true && nivelesss[14]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel15.dibujar();
      }

      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel15.move();
        cohetenivel15.dibujo();
        cohetenivel15.collide();
        cohetenivel15.punto();
      } else {
        jugandoCohetes = false;
        
      }

      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel15.dibujar();
      }
    }
  }



  
}


class botones {


  int xnivel; 
  ; 
  int ynivel; 
  int nivel;
  color[] strokeniveles= new color[15];
  botones(int _xnivel, int _ynivel, int _nivel) {

    xnivel=_xnivel;
    ynivel=_ynivel;
    nivel = _nivel;

    for (int i=0; i<12; i++) {
      strokeniveles[i]=color(negro);
      nivelesss[i]=true;
      jugarnivel[i]=false;
    }
  }
  void niveles() {
    

    if (nivelesss[nivel]==true) {
      if (mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60) {
        if(dianoche){
        colorMode(HSB, 100);
        strokeniveles[nivel]= color(countercolor, 99, 99);}
        else if(dianoche==false){
         strokeniveles[nivel]= color(#A28BFF); 
        }
      } else {
        strokeniveles[nivel] = color(negro);
      }
    } else if (nivelesss[nivel]==false) {
      strokeniveles[nivel]=color(#E5E5E5);
    }
    fill(blanco);

    strokeWeight(7);
    stroke(strokeniveles[nivel]);
    rect(xnivel, ynivel+yimg, 60, 60);
    fill(strokeniveles[nivel]);
    textAlign(CENTER, CENTER);
    textSize(40);
    text(nivel+1, xnivel+30, ynivel+30+yimg);

    if (sizejugar>=1500) {
      minijuegos=true;
      menuminijuegos=true;
      sizejugar=0;
      animacionjugar=false;
    }
  }







  void mousePressed() {


    if (nivelesss[nivel]==true && mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60 ) {
      for(int i=0; i<nivel; i++){
        jugarnivel[i]=false;
      }
      for(int j=nivel; j<12; j++){
        jugarnivel[j]=false;
      }
      animacionjugar=true;
      jugarnivel[nivel]=true;
      
    }
    
  }
}

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
   if(counter>=0 && counter<4){
     lolaboa = lolabocaabierta;
   }
   else if(counter>=4 && counter<8){
     lolaboa = lolabocacerrada;
   }
   counter++;
   if(counter==8){
     counter=0;
   }}
   
   
   
   
   
   
if (u==numletras){
u=numletras;
countertexto=u*2;
lolaboa = lolabocacerrada;
inicial=finall;}


}}
