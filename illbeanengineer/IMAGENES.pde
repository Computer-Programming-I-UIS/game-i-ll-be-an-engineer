void IMAGENES(){
  ////////////////////////////////////////////////////////////
  ////////////////////      NUBE      1 //////////////////////
  ////////////////////////////////////////////////////////////
  
  if(nubeee1==true){
image(nube1,xn1,yn1+yimg,wn1,hn1);
image(nube1,xn2,yn1+yimg,wn1,hn1);//nube1
if(xn1>=0 && xn1<=1000){
 xn1+=1;///ANIMACION NUBE1
if(xn1>0 && xn1<130){yn1+=0.5;}
if(xn1>=130 && xn1<240){yn1-=0.5;}
if(xn1>=240 && xn1<370){yn1+=0.5;}
if(xn1>=370 && xn1<506){yn1-=0.5;}
if(xn1>=506 && xn1<660){yn1+=0.5;}
if(xn1>=660 && xn1<802){yn1-=0.5;}
if(xn1>=802 && xn1<900){yn1+=0.5;}
if(xn1>=900 && xn1<1000){yn1-=0.5;}}

if(xn1<0 && xn2>=0 || xn1>=1000-300) 
{ xn2+=1;}
if(xn1==1000){xn1=0; xn2=-300;}


}

////////////////////////////////////////////////////////////
  ////////////////////      NUBE      2 //////////////////////
  ////////////////////////////////////////////////////////////
  
  if(nubeee2==true){
image(nube2,xn3,yn2,wn2,hn2);//nube2
image(nube2,xn4,yn2,wn2,hn2);//nube2
if(xn3>=0 && xn3<=1000){
 xn3+=1;///ANIMACION NUBE2
if(xn3>0 && xn3<124){yn2-=0.5;}
if(xn3>=124 && xn3<230){yn2+=0.5;}
if(xn3>=230 && xn3<366){yn2-=0.5;}
if(xn3>=366 && xn3<516){yn2+=0.5;}
if(xn3>=516 && xn3<650){yn2-=0.5;}
if(xn3>=650 && xn3<820){yn2+=0.5;}
if(xn3>=820 && xn3<904){yn2-=0.5;}
if(xn3>=904 && xn3<1000){yn2+=0.5;}}
if(xn3<0 && xn4>=0 || xn3>=1000-330) { xn4+=1;}
if(xn3==1000){xn3=0; xn4=-330;}
}


////////////////////////////////////////////////////////////
  ////////////////////     SOL        //////////////////////
  ////////////////////////////////////////////////////////////
  if(solsol==true){
image(sol,xsol,ysol,wsol,hsol);//sol
if (countersol>=1 && countersol<20){ sol=sol1;  }///ANIMACION SOL
else if (countersol>=20 && countersol<40){ sol=sol2; }
else if (countersol>=40 && countersol<=60){ sol=sol3;  }
countersol++;
if(countersol==60){ countersol=1; }
  }
  
  
  ////////////////////////////////////////////////////////////
  ////////////////////      PASTO       //////////////////////
  ////////////////////////////////////////////////////////////
  
  if(pastoo==true){
image(grass,-10,ypasto,wpasto,hpasto);//pasto
image(grass,325,ypasto,wpasto,hpasto);//pasto
image(grass,660,ypasto,wpasto,hpasto);//pasto

  }
  
  ////////////////////////////////////////////////////////////
  ////////////////////      FLORES      //////////////////////
  ////////////////////////////////////////////////////////////
  if(flores==true){
image(f1,xflor1,yflor1,wflor1,wflor1);//flor5
image(f2,xflor2,yflor2,wflor2,wflor2);//flor4
image(f3,xflor3,yflor3,wflor3,wflor3);//flor3
image(f4,xflor4,yflor4,wflor4,wflor4);//flor2
image(f2,xflor5,yflor5,wflor5,wflor5);//flor1
if(counterflor>=0 && counterflor<15){
  f1=flor1; f2=flor2; f3=flor3; f4=flor4; f5=flor1;
  }
else if(counterflor>=15 && counterflor<30){
  f1=flor2; f2=flor3; f3=flor4; f4=flor1; f5=flor2;
}
else if(counterflor>=30 && counterflor<45){
  f1=flor3; f2=flor4; f3=flor1; f4=flor2; f5=flor3;
  }
else if(counterflor>=45 && counterflor<60){
  f1=flor4; f2=flor1; f3=flor2; f4=flor3; f5=flor4;
  }
counterflor++;
if(counterflor==60){
  counterflor=0;}
  }
  
  ////////////////////////////////////////////////////////////
  ////////////////////     ESTRELLAS    //////////////////////
  ////////////////////////////////////////////////////////////
  if(estrellitas==true){
imageMode(CENTER);
for(int estrellas=1; estrellas<40;estrellas++){
image(stars,xstars[estrellas], ystars[estrellas], weighttt,weighttt);} //estrellas
if(counterstars>=0 && counterstars<30){
   weighttt++;
   } 
  if(counterstars>=30 && counterstars<60){
     weighttt--;
   }
   counterstars++;
   if(counterstars==60){
    counterstars=0; 
   }
   imageMode(CORNER);
  }



////////////////////////////////////////////////////////////
  ////////////////////      PLANETAS  //////////////////////
  ////////////////////////////////////////////////////////////
if(planetas==true){
image(p1,xp1,yp1,wp1,hp1);//planeta1
image(p2,xpp2,ypp2,wp2,hp2);//planeta2
if(next>=4){
image(p2,140,1300+yimg,wp2,hp2);//planeta2
}
if(counterstars>=0 && counterstars<30){
  wp1+=0.5;
   wp2-=0.5;
   p1=planeta1;
   p2=planeta3;
   } 
  if(counterstars>=30 && counterstars<60){
    wp2+=0.5;
   wp1-=0.5;
    p1=planeta2;
   p2=planeta4; 
   }
   counterstars++;
   if(counterstars==60){
    counterstars=0; 
   } 
}


  
  
  
  
////////////////////////////////////////////////////////////
  ////////////////////     COHETES  //////////////////////
  ////////////////////////////////////////////////////////////  
  if(cohetesss==true){
image(cohete1,xship1,yship1,wship1,wship1);//cohete1
image(cohete2,xship2,yship2,wship2,wship2);//cohete2
if(countercohete>=0 && countercohete<15){
  cohete2=cohete21;
  cohete1=cohete11;}
else if(countercohete>=15 && countercohete<30){
  cohete2=cohete22;
  cohete1=cohete12;}
else if(countercohete>=30 && countercohete<45){
  cohete2=cohete21;
  cohete1=cohete11;}
else if(countercohete>=45 && countercohete<60){
  cohete2=cohete22;
  cohete1=cohete12;}
countercohete++;
if(countercohete==60){
  countercohete=0;}
  ycohete = random(0,1);

xship1++;
xship2--;

yship1-=ycohete;
yship2-=ycohete;


if(xship1>=1000){
xship1=-150;
yship1=550+y;
}
if(xship2<=0){
xship2=1150;
yship2=550+y;
}
}



////////////////////////////////////////////////////////////
  ////////////////////      RAYO  //////////////////////
  ////////////////////////////////////////////////////////////
if(rayoo==true){
  image(rayo,100,500+yimg,wrayo,wrayo);
  image(rayo,100,300+yimg,wrayo,wrayo);
  image(rayo,700,500+yimg,wrayo,wrayo);
  image(rayo,700,360+yimg,wrayo,wrayo);
  image(rayo,50,900+yimg,wrayo,wrayo);
  image(rayo,150,1200+yimg,wrayo,wrayo);
  image(rayo,100,1100+yimg,wrayo,wrayo);
  image(rayo,900,500+yimg,wrayo,wrayo);
  image(rayo,800,1300+yimg,wrayo,wrayo);
  image(rayo,100,1400+yimg,wrayo,wrayo);
  image(rayo,50,300+yimg,wthinker,wthinker);
  image(rayo,100,1200+yimg,wthinker,wthinker);
  image(rayo,860,420+yimg,wthinker,wthinker);
  image(rayo,340,590+yimg,wthinker,wthinker);
  image(rayo,124,670+yimg,wthinker,wthinker);
  image(rayo,20,700+yimg,wthinker,wthinker);
  image(rayo,400,900+yimg,wthinker,wthinker);
  
}



if(counterrayo>=0 &&  counterrayo<10){
  wrayo++;
  wthinker--;}
else if(counterrayo>=10 &&  counterrayo<20){
  wrayo--;
  wthinker++;}
  counterrayo++;
  if(counterrayo==20){
    counterrayo=0;}

 ////////////////////////////////////////////////////////////
  ////////////////////       LUNA   //////////////////////
  //////////////////////////////////////////////////////////// 
  if(lunaaa==true){
    noStroke();
 fill(#B9B9B9);
  ellipse(110,110+yluna,220,220);
  fill(#D6D6D6);
  ellipse(70,100+yluna,20,20);
  ellipse(40,58+yluna,30,30);
  ellipse(120,90+yluna,40,40);
  ellipse(120,30+yluna,20,20);
  ellipse(130,175+yluna,60,60);
  fill(#D3D3D3);
  ellipse(170,60+yluna,30,30);
  ellipse(40,120+yluna,40,40);
  ellipse(70,180+yluna,20,20);
  ellipse(180,160+yluna,30,30); }
 
  
  
  
  ////////////////////////////////////////////////////////////
  ////////////////////     GUSANITO   //////////////////////
  ////////////////////////////////////////////////////////////
if(gusanitoo==true){
  image(gusanito,x,y,w,h);}
  
  ////////////////////////////////////////////////////////////
  ///////////////////////// SETTINGS//////////////////////////
  ////////////////////////////////////////////////////////////
 
    
    fill(blanco);
strokeWeight(strokewc);
stroke(strokeconfiguracion);
ellipse(xsettings,ysettings,70,70);
noFill();
stroke(configuracion);
strokeWeight(10);
ellipse(xsettings,ysettings,24,24);
strokeWeight(0);
fill(configuracion);
quad(xsettings+12,ysettings-8,xsettings+12,ysettings+8,xsettings+24,ysettings+3,xsettings+24,ysettings-3);//derecha
quad(xsettings-12,ysettings-8,xsettings-12,ysettings+8,xsettings-24,ysettings+3,xsettings-24,ysettings-3);//derecha
quad(xsettings-8,ysettings-12,xsettings+8,ysettings-12,xsettings+3,ysettings-24,xsettings-3,ysettings-24);//derecha
quad(xsettings+8,ysettings+12,xsettings-8,ysettings+12,xsettings-3,ysettings+24,xsettings+3,ysettings+24);//derecha

quad(xsettings+14,ysettings-4,xsettings+6,ysettings-14,xsettings+15,ysettings-19,xsettings+20,ysettings-14);//derecha
quad(xsettings-10,ysettings-4,xsettings,ysettings-14,xsettings-15,ysettings-19,xsettings-19,ysettings-14);//derecha

quad(xsettings+14,ysettings+6,xsettings+6,ysettings+14,xsettings+15,ysettings+19,xsettings+20,ysettings+14);//derecha
quad(xsettings-10,ysettings+4,xsettings,ysettings+14,xsettings-15,ysettings+19,xsettings-19,ysettings+14);//derecha

    
if(mouseX>=xsettings-35 && mouseX<=xsettings+35 && mouseY>=ysettings-35 && mouseY<=ysettings+35){
colorMode(HSB, 100);
configuracion = color(countercolor,99,99);
strokeconfiguracion = color(countercolor+10,99,99);}
else{
configuracion= color(negro);
strokeconfiguracion = color(negro);  
strokewc=7;
}

if(settings==true){
  fill(blanco);
strokeWeight(strokewm);
stroke(strokemusic);
ellipse(xmusic,ymusic,60,60);
strokeWeight(strokewi);
stroke(strokeidioma);
ellipse(xidioma,yidioma,60,60);


  ///////////////////////// MUSICA //////////////////////////

  if(musicaa==true){
fill(music);
noStroke();
rect(xmusic-10,ymusic-15,20,7);
strokeWeight(5);
rect(xmusic-10,ymusic-15,2,30);
rect(xmusic+10,ymusic-15,2,30);
ellipse(xmusic+8,ymusic+14,8,8);
ellipse(xmusic-12,ymusic+14,8,8);
}
else if(musicaa==false){
  
  
  
fill(#D8D8D8);
noStroke();
rect(xmusic-10,ymusic-15,20,7);

strokeWeight(5);
rect(xmusic-10,ymusic-15,2,30);
rect(xmusic+10,ymusic-15,2,30);
ellipse(xmusic+8,ymusic+14,8,8);
ellipse(xmusic-12,ymusic+14,8,8);

line(xmusic-20,ymusic-20,xmusic+20,ymusic+20);
}

if(mouseX>=xmusic-30 && mouseX<=xmusic+30 && mouseY>=ymusic-30 && mouseY<=ymusic+30){
colorMode(HSB, 100);
music = color(countercolor,99,99);
strokemusic = color(countercolor+10,99,99);}
else{
music= color(negro);
strokemusic = color(negro);  
strokewm=7;
}
  ///////////////////////// IDIOMA //////////////////////////

 if(enes==true){
fill(idiomaa);
stroke(strokeidioma);
strokeWeight(5);
textAlign(CENTER, CENTER);
textSize(30);
text("EN",xidioma,yidioma-5);
}
else if(enes==false){
fill(idiomaa);
stroke(strokeidioma);
strokeWeight(5);
textAlign(CENTER, CENTER);
textSize(30);
text("ES",xidioma,yidioma-5);
  }
  if(mouseX>=xidioma-30 && mouseX<=xidioma+30 && mouseY>=yidioma-30 && mouseY<=yidioma+30){
colorMode(HSB, 100);
idiomaa = color(countercolor,99,99);
strokeidioma = color(countercolor+10,99,99);}
else{
idiomaa= color(negro);
strokeidioma = color(negro);  
strokewi=7;
}
}
   
  
  
      
 
 fill(blanco);
strokeWeight(strokewn);
stroke(strokenightshift);
ellipse(650+xdianoche,430+ydianoche,70,70);
if(mouseX>=650+xdianoche-35 && mouseX<=650+xdianoche+35 && mouseY>=430+ydianoche-35 && mouseY<=430+ydianoche+35){
colorMode(HSB, 100);
nightshift = color(countercolor,99,99);
strokenightshift = color(countercolor+10,99,99);}
else{
nightshift= color(negro);
strokenightshift = color(negro);  
strokewn=7;
}
if(dianoche==true){
noStroke();
fill(nightshift);
ellipse(650+xdianoche,430+ydianoche,40,40);
fill(blanco);
ellipse(642+xdianoche,426+ydianoche,35,43);}

else if(dianoche==false){
noStroke();
fill(nightshift);
ellipse(650+xdianoche,430+ydianoche,32,32);
triangle(644+xdianoche,447+ydianoche,656+xdianoche,447+ydianoche,650+xdianoche,453+ydianoche);//abajo
triangle(644+xdianoche,413+ydianoche,656+xdianoche,413+ydianoche,650+xdianoche,407+ydianoche);//arriba
triangle(667+xdianoche,424+ydianoche,667+xdianoche,436+ydianoche,673+xdianoche,430+ydianoche);//derecha
triangle(633+xdianoche,424+ydianoche,633+xdianoche,436+ydianoche,626+xdianoche,430+ydianoche);//izquierda
triangle(657+xdianoche,413+ydianoche,667+xdianoche,423+ydianoche,666+xdianoche,414+ydianoche);//esquinasuperior derecha
triangle(643+xdianoche,413+ydianoche,633+xdianoche,423+ydianoche,633+xdianoche,414+ydianoche);//esquinasuperior izquierda
triangle(633+xdianoche,437+ydianoche,643+xdianoche,447+ydianoche,633+xdianoche,446+ydianoche);
triangle(657+xdianoche,447+ydianoche,667+xdianoche,437+ydianoche,666+xdianoche,446+ydianoche);
}
  


////////////////////////////////////////////////////////////
  ///////////////////////// SETTINGS//////////////////////////
  ////////////////////////////////////////////////////////////
  
  

    
    

 countercolor++;
if(countercolor ==100){
  countercolor=0;
} 
}
