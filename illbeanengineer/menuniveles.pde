void menuniveles(){
 
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

 if(dianoche==true){
    blanco=color(#FFFFFF);
    negro=color(#000000);
  colorfondo=color(#E8F4FF);
nubeee1=true; nubeee2=true; solsol=true; pastoo=true; flores=true; estrellitas=false; gusanitoo=true; cohetesss=false; planetas=false;shipss=false;
rayoo=false; thinkerr=false;lunaaa=false;
if(next>=4){
  rayoo=true;
}

    
  }
  
  
  if(dianoche==false){
    colorfondo=color(#000000);
    blanco=color(#000000);
    negro=color(#FFFFFF);
    nubeee1=false; nubeee2=false; solsol=false; pastoo=false; flores=false; estrellitas=true; gusanitoo=true; cohetesss=true; planetas=true;shipss=false;
rayoo=false; thinkerr=false;lunaaa=true;

   yluna=0;
 xp1=60; yp1=520;
 xpp2=730; ypp2=50;

  }
  
 
  
  if(next>=10 && minijuegos ==false){
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
nivel1.niveles(); nivel2.niveles(); nivel3.niveles(); nivel4.niveles(); nivel5.niveles(); nivel6.niveles(); nivel7.niveles(); 
nivel8.niveles();nivel9.niveles(); nivel10.niveles();nivel11.niveles(); nivel12.niveles();nivel13.niveles();
nivel14.niveles();nivel15.niveles();

}
else if (minijuegos==true){


if(menuminijuegos==true){
  nubeee1=false; nubeee2=false; solsol=false; pastoo=false; flores=false; estrellitas=true; gusanitoo=false; cohetesss=false; planetas=false;shipss=false;
rayoo=false; thinkerr=false;lunaaa=false;
  if(dianoche==true){
    colorfondo=color(countercolor,40,99);
  }
  else if (dianoche==false){
    colorfondo=color(blanco);
    
  }
textAlign(CENTER,CENTER);  
fill(color(countercolor+20,99,99));
    if(enes==false){
      textSize(40);
    text("Choose a game",500,150);}
    else if(enes==true){
      textSize(40);
    text("Elije un juego",500,150);}
    imageMode(CENTER);
    image(burbujanormal,200,400,200,200);
    image(cohete1,500,400,200,200);
    copy(normal,300,80,200,200,700,300,200,200);
  }
    
    else{
      nubeee1=false; nubeee2=false; solsol=false; pastoo=false; flores=false; estrellitas=false; gusanitoo=false; cohetesss=false; planetas=false;shipss=false;
rayoo=false; thinkerr=false;lunaaa=false;
    }
    
  if(jugarnivel[0]==true && nivelesss[0]==true){
    
if(entergame1==true){
  menuminijuegos=false;
  burbujasnivel1.dibujar();}
    
if(entergame2==true){
  menuminijuegos=false;
  cohetenivel1.move();
  cohetenivel1.dibujo();
  cohetenivel1.collide();
  cohetenivel1.punto();}
    
if(entergame3==true){
   menuminijuegos=false;
   lolaboanivel1.dibujar();}
  
  
  
}}

  
  
   if(next<10){
    
    introduccion();
  }
  
      }
  

class botones{
      
      
    int xnivel; ; int ynivel; int nivel;color[] strokeniveles= new color[15];
 botones(int _xnivel, int _ynivel, int _nivel){

    xnivel=_xnivel;
    ynivel=_ynivel;
    nivel = _nivel;

    for(int i=0; i<15; i++){
  strokeniveles[i]=color(negro);
  nivelesss[i]=false;
  jugarnivel[i]=false;
  
}
    
  }
  void niveles(){
    nivelesss[0]=true;
   
    if(nivelesss[nivel]==true){
if(mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60){
colorMode(HSB, 100);
strokeniveles[nivel]= color(countercolor,99,99);}
else{
strokeniveles[nivel] = color(negro);}
    }
    else if(nivelesss[nivel]==false){
      strokeniveles[nivel]=color(#CECECE);
    }
    fill(blanco);
    
    strokeWeight(7);
  stroke(strokeniveles[nivel]);
  rect(xnivel,ynivel+yimg,60,60);
  fill(strokeniveles[nivel]);
  textAlign(CENTER,CENTER);
  textSize(40);
  text(nivel+1,xnivel+30,ynivel+20+yimg);
  
  

  }
  void mousePressed(){
    for(int j=0; j<15; j++){
    if(nivelesss[j]==true && mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60 ){
  minijuegos=true;
  menuminijuegos=true;
  jugarnivel[j]=true;
  
    }
  }
  }
  }
      
      
