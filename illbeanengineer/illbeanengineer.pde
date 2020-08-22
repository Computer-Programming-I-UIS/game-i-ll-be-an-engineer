textos espanol1;
textos espanol2;
textos espanol3;
textos espanol4;
textos espanol5;
textos espanol6;
textos espanol7;
textos espanol8;
textos espanol9;
textos ingles1;
textos ingles2;
textos ingles3;
textos ingles4;
textos ingles5;
textos ingles6;
textos ingles7;
textos ingles8;
textos ingles9;
//burbujas burbuja;
botones nivel1;
botones nivel2;
botones nivel3;
botones nivel4;
botones nivel5;
botones nivel6;
botones nivel7;
botones nivel8;
botones nivel9;
botones nivel10;
botones nivel11;
botones nivel12;
botones nivel13;
botones nivel14;
botones nivel15;



PImage normal; PImage bocaabierta; PImage gusanito;
PImage flor1; PImage flor2; PImage flor3; PImage flor4; PImage flor;
PImage f1; PImage f2; PImage f3; PImage f4; PImage f5;
PImage ship1; PImage ship2; PImage ship3; PImage s1; PImage s2; PImage s3;PImage cohete11; PImage cohete12; PImage cohete21; PImage cohete22;PImage cohete2; PImage cohete1;
PImage nube1; PImage nube2;
PImage sol1; PImage sol2; PImage sol3; PImage sol;
PImage grass;
PImage luna;
PImage stars;
PImage planeta1; PImage planeta2; PImage planeta3; PImage planeta4; PImage p1; PImage p2;
PImage rayo;
PImage thinker;
PFont myFont;

int i=5; 

int xn1 = 0; int xn2 = -300; int xn3 = 500; int xn4 = -330; float yn1 = 40; float yn2 = 40;///NUBES
int ysol=0, xsol=0, wsol=150, hsol=150;
int wpasto=400, hpasto=150;
int xflor1=70, yflor1=490, wflor1=140;
int xflor2=290, yflor2=500, wflor2=130;
int xflor3=410, yflor3=470, wflor3=140;
int xflor4=630, yflor4=520, wflor4=100;
int xflor5=740, yflor5=480, wflor5=150;
float xp1=230, yp1=520, wp1=250, hp1=140;
float xp2=730, yp2=50, wp2=250, hp2=140;
float xship1=0; float yship1=550;
float xship2=850; float yship2=550;
float wship1=150, wship2=150;
int wn1=300, hn1=230;
int wn2=330 ,hn2=200 ;
int xshipp1=0, yshipp1=0,wshipp1=0;
int xshipp2=0, yshipp2=0,wshipp2=0;
int xshipp3=0, yshipp3=0,wshipp3=0;
int xrayo=0, yrayo=0, wrayo=50;
int xthinker=0, ythinker=0, wthinker=50;


float xsettings=350; float ysettings=430; float xdianoche=0; float ydianoche=0; float xmusic=315; float ymusic=500; float xidioma=385;
float yidioma=500; float yluna=0; float ypasto=550;

boolean nubeee1=true, nubeee2=true, solsol=true, pastoo=true, flores=true, estrellitas=false, gusanitoo=false, cohetesss=false, planetas=false, ships=false, shipss=false;
boolean rayoo=false,thinkerr=false, lunaaa=false, jugar=true, nightshifttt=true, musiquita=false, configuraciones=true, enes=false;

boolean saludo=false; boolean musicaa=true; boolean settings=false; boolean idioma = false; boolean dianoche=true; boolean playy=false; boolean animacionplay=false;
boolean botonesniveles=false;

boolean nivelesss[] = new boolean[15];

float ycohete;
float y=350;
float x=500;
float xnext=0;
float ynext=0;
int yimg=0;
float w = 0;
float h = 8*w/5;

int next=10;
int weighttt=30;
int counterstars = 0;
int sizeplay=0;
int sizeplayyyy=0;
int estrellas=1;


float[] xstars = new float[40];
float[] ystars = new float[40];
int counter = 1;
int countertexto = 0;
int countersol = 0;
int counterflor;
int countercohete = 0;
int countercolor=0;
int counterrayo=0;
PImage[] fondo = new PImage[1];
color colorfondo=color(255);
color play=color(0);
color music=color(0);
color nightshift=color(0);
color idiomaa=color(0);
color configuracion=color(0);
color strokeplay=color(0);
color strokemusic=color(0);
color strokenightshift=color(0);
color strokeconfiguracion=color(0);

color strokeidioma=color(0);
color blanco=color(#FFFFFF);
color negro=color(#000000);
color illbe=color(#61B0FC);

color[] strokeniveles= new color[15];


int strokewp = 7;
int strokewm = 7;
int strokewn = 7;
int strokewi = 7;
int strokewc = 7;

int countertexto1 =0;
int countertextooo=10;
int movboca=0;
int t=0;
void setup(){
String[] espanol = loadStrings("español.txt");
String[] ingles = loadStrings("ingles.txt");
String[] niveles = loadStrings("niveles.txt");




for(int i=0; i<14; i++){
  strokeniveles[i]=color(negro);
  nivelesss[i]=false;
  
}

//burbuja= new burbujas();
// burbuja.condiciones();

nivelesss[0]=true;
nivel1= new botones(strokeniveles[0],610,1380,1,nivelesss[0]);
nivel2= new botones(strokeniveles[1],645,1320,2,nivelesss[1]);
nivel3= new botones(strokeniveles[2],635,1225,3,nivelesss[2]);
nivel4= new botones(strokeniveles[3],500,1160,4,nivelesss[3]);
nivel5= new botones(strokeniveles[4],205,1060,5,nivelesss[4]);
nivel6= new botones(strokeniveles[5],300,960,6,nivelesss[5]);
nivel7= new botones(strokeniveles[6],435,910,7,nivelesss[6]);

nivel8= new botones(strokeniveles[7],650,815,8,nivelesss[7]);
nivel9= new botones(strokeniveles[8],590,1440,9,nivelesss[8]);
nivel10= new botones(strokeniveles[9],590,1440,10,nivelesss[9]);
nivel11= new botones(strokeniveles[10],590,1440,11,nivelesss[10]);
nivel12= new botones(strokeniveles[11],590,1440,12,nivelesss[11]);
nivel13= new botones(strokeniveles[9],590,1440,13,nivelesss[12]);
nivel14= new botones(strokeniveles[10],590,1440,14,nivelesss[13]);
nivel15= new botones(strokeniveles[11],590,1440,15,nivelesss[14]);

espanol1 = new textos(espanol, 0, 15, 15,200,27,0,0);
espanol2 = new textos(espanol,17,17,34,200,27,0,0);
espanol3 = new textos(espanol,36,23,58,180,20,0,0);
espanol4 = new textos(espanol,60,21,80,210,20,0,-40);
espanol5 = new textos(espanol,82,21,102,200,23,0,0);
espanol6 = new textos(espanol,104,26,129,215,20,0,0);
espanol7 = new textos(espanol,131,24,154,240,20,0,-40);
espanol8 = new textos(espanol,156,28,183,200,25,0,0);
espanol9 = new textos(espanol,185,28,212,240,25,0,-40);


ingles1 = new textos(ingles, 0, 14, 14,200,27,0,0);
ingles2 = new textos(ingles,16,15,30,200,27,0,0);
ingles3 = new textos(ingles,32,14,45,180,20,0,0);
ingles4 = new textos(ingles,47,18,64,210,20,0,-30);
ingles5 = new textos(ingles,65,22,86,200,23,0,0);
ingles6 = new textos(ingles,88,23,110,215,20,0,0);
ingles7 = new textos(ingles,112,21,132,240,20,0,-40);
ingles8 = new textos(ingles,134,16,149,200,25,0,0);
ingles9 = new textos(ingles,151,28,178,240,25,0,-40);


background(colorfondo);
  size(1000, 700);
  imageMode(CORNER);
  for(int nosee=0; nosee<35; nosee++){
    xstars[nosee] = random(0,1000);
    ystars[nosee] = random(0,700);
  }
  
  
  
 myFont = createFont("Noteworthy-Bold", 48);
 textFont(myFont);

 normal= loadImage("gusanitonormal.png");
 gusanito=normal;
  bocaabierta= loadImage("gusanitobocaabierta.png");
 flor1 = loadImage("flor1.png");
  flor2 = loadImage("flor2.png");
   flor3 = loadImage("flor3.png");
   flor4 = loadImage("flor4.png");
   f1=flor1;
   f2=flor2;
   f3=flor3;
   f4=flor4;
   f5=flor1;
 ship1 = loadImage("ship1.png");
  ship2 = loadImage("ship2.png");
   ship3 = loadImage("ship3.png");
   s1=ship1;
   s2=ship2;
   s3=ship3;
  nube1 = loadImage("nube1.png");
  nube2 = loadImage("nube2.png");
  sol1 = loadImage("sol.png");
  sol2 = loadImage("sol2.png");
  sol3 = loadImage("sol3.png");
  sol=sol1;
  cohete11 = loadImage("cohete1.png");
  cohete12 = loadImage("cohete11.png");
  cohete21 = loadImage("cohete2.png");
  cohete22 = loadImage("cohete22.png");
  cohete1=cohete11;
  cohete2=cohete22;
  grass = loadImage("grass.png");
stars=loadImage("star.png");
planeta1 = loadImage("planeta1.png");
planeta2 = loadImage("planeta2.png");
planeta3 = loadImage("planeta3.png");
planeta4 = loadImage("planeta4.png");
p1=planeta1;
p2=planeta3;
thinker = loadImage("thinker.png");
rayo = loadImage("rayo.png");

   
}
void draw() {
  background(colorfondo);




 IMAGENES();
 
 
  if(playy==false){
    
menuprincipal();}
else if(playy==true){

menuniveles();



  
}
}

  


  

void mouseWheel(MouseEvent event){
  if(playy==true && next>=5){
  int e = event.getCount();
  if(yimg<=0 && yimg>=-962){
yimg+=e;}
else if(yimg>0){
yimg=0;
}
else if(yimg<-962){
  yimg=-962;
}}



}
void mousePressed(){
  if(playy==false){
  
  if(mouseX>=435 && mouseX<=545 && mouseY>=385 && mouseY<=475){
    if(playy==false){
      animacionplay=true;}
  else{
    playy=false;}}}


if(mouseX>=xsettings-35 && mouseX<=xsettings+35 && mouseY>=ysettings-35 && mouseY<=ysettings+35){
  strokewc=12;
    if(settings==false){
  settings=true;
}
  else if(settings==true){
    
    settings=false;
    
    
  }}
  
  if(mouseX>=650+xdianoche-35 && mouseX<=650+xdianoche+35 && mouseY>=430+ydianoche-35 && mouseY<=430+ydianoche+35){
    strokewn=12;
    if(dianoche==true){
  dianoche=false;}
  else{
    dianoche=true;
  }
  }
nivel1.mousePressed();
nivel2.mousePressed();

if(playy==true && next<10){

if(mouseX>=272+xnext && mouseX<=352+xnext && mouseY>=300+ynext && mouseY<=330+ynext){
  next++;
}
else if(mouseX>=272+xnext && mouseX<=352+xnext && mouseY>=340+ynext && mouseY<=370+ynext){
  next--;
}
}





if(settings==true){
if(mouseX>=xmusic-30 && mouseX<=xmusic+30 && mouseY>=ymusic-30 && mouseY<=ymusic+30){
      if(musicaa==true){
  musicaa=false;}
  else{
    musicaa=true;
  }
    }
    if(mouseX>=xidioma-30 && mouseX<=xidioma+30 && mouseY>=yidioma-30 && mouseY<=yidioma+30){
      if(enes==false){
  enes=true;
  idioma = true;}
  else{
    enes=false;
    idioma = false;
    }}}






}
