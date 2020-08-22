void menuniveles(){
 
  
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
  colorfondo=color(counterflor*2,50,99);
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
 xp2=730; yp2=50;

  }
  
 
  
  if(next>=10){
   w=1000;
  h=8*w/5;
yp1=yimg+720;
yp2=yimg+150;
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
nivel1.niveles(); nivel2.niveles(); nivel3.niveles(); nivel4.niveles(); nivel5.niveles(); nivel6.niveles(); nivel7.niveles(); 
nivel8.niveles();nivel9.niveles(); nivel10.niveles();nivel11.niveles(); nivel12.niveles();nivel13.niveles();
nivel14.niveles();nivel15.niveles();


  }
  
   if(next<10){
    
    introduccion();
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

class botones{
      
      
       color strokeniveles; int xnivel; ; int ynivel; int nivel; boolean nivelesss;
 botones(color _strokeniveles, int _xnivel, int _ynivel, int _nivel, boolean _nivelesss){
    strokeniveles = _strokeniveles;
    xnivel=_xnivel;
    ynivel=_ynivel;
    nivel = _nivel;
    nivelesss=_nivelesss;
    
  }
  void niveles(){
    if(nivelesss==true){
if(mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60){
colorMode(HSB, 100);
strokeniveles= color(countercolor,99,99);}
else{
strokeniveles = color(negro);}
    }
    else if(nivelesss==false){
      strokeniveles=color(#CECECE);
    }
    fill(blanco);
    
    strokeWeight(7);
  stroke(strokeniveles);
  rect(xnivel,ynivel+yimg,60,60);
  fill(strokeniveles);
  textAlign(CENTER,CENTER);
  textSize(40);
  text(nivel,xnivel+30,ynivel+20+yimg);
  
  

  }
  
  
void mousePressed(){
  
  if(nivelesss==true && mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60){
   minijuegos();
    
  }
  
  
}
    
  }
      
      
