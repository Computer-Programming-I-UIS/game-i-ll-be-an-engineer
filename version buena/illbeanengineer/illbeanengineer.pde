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
lolaboa lolaboanivel0;
burbujas burbujasnivel0;
cohetes cohetenivel0;
lolaboa lolaboanivel1;
burbujas burbujasnivel1;
cohetes cohetenivel1;
lolaboa lolaboanivel2;
burbujas burbujasnivel2;
cohetes cohetenivel2;
lolaboa lolaboanivel15;
burbujas burbujasnivel15;
cohetes cohetenivel15;


import ddf.minim.*;//libreria para sonidos
Minim minim;
AudioPlayer bubbles;
AudioPlayer menus;
AudioPlayer gameover;
AudioPlayer cohetestiktak;
AudioPlayer levelcompleted;
AudioPlayer candybueno;
AudioPlayer candymalo;


float xp=random(0, 870);
float yp=random(0, 650);
float xp2=random(0, 870);
float yp2=random(0, 650);
String[] preguntas;
String[] correctas;
String[] incorrectas;

PImage normal; 
PImage bocaabierta; 
PImage gusanito;
PImage flor1; 
PImage flor2; 
PImage flor3; 
PImage flor4; 
PImage flor;
PImage f1; 
PImage f2; 
PImage f3; 
PImage f4; 
PImage f5;
PImage cohete11; 
PImage cohete12; 
PImage cohete21; 
PImage cohete22;
PImage cohete2; 
PImage cohete1;
PImage nube1; 
PImage nube2;
PImage sol1; 
PImage sol2; 
PImage sol3; 
PImage sol;
PImage grass;
PImage luna;
PImage stars;
PImage planeta1; 
PImage planeta2; 
PImage planeta3; 
PImage planeta4; 
PImage p1; 
PImage p2;
PImage rayo;
PImage thinker;
PImage burbujanormal;
PImage burbujabuena3;
PImage burbujamala3;
PFont myFont;
PImage candy1;
PImage candy2;
PImage candy3;
PImage candy4;
PImage earth, coheteplay1, coheteplay2, coheteplayh1, coheteplayh2, coheteplay;
PImage edad;
int i=5; 

int xn1 = 0; 
int xn2 = -300; 
int xn3 = 500; 
int xn4 = -330; 
float yn1 = 40; 
float yn2 = 40;///NUBES
int ysol=0, xsol=0, wsol=150, hsol=150;
int wpasto=400, hpasto=150;
int xflor1=70, yflor1=490, wflor1=140;
int xflor2=290, yflor2=500, wflor2=130;
int xflor3=410, yflor3=470, wflor3=140;
int xflor4=630, yflor4=520, wflor4=100;
int xflor5=740, yflor5=480, wflor5=150;
float xp1=230, yp1=520, wp1=250, hp1=140;
float xpp2=730, ypp2=50, wp2=250, hp2=140;
float xship1=0; 
float yship1=550;
float xship2=850; 
float yship2=550;
float wship1=150, wship2=150;
int wn1=300, hn1=230;
int wn2=330, hn2=200 ;
int xshipp1=0, yshipp1=0, wshipp1=0;
int xshipp2=0, yshipp2=0, wshipp2=0;
int xshipp3=0, yshipp3=0, wshipp3=0;
int xrayo=0, yrayo=0, wrayo=50;
int xthinker=0, ythinker=0, wthinker=50;


float xsettings=350; 
float ysettings=430; 
float xdianoche=0; 
float ydianoche=0; 
float xmusic=315; 
float ymusic=500; 
float xidioma=385;
float yidioma=500; 
float yluna=0; 
float ypasto=550;

boolean nubeee1=true, nubeee2=true, solsol=true, pastoo=true, flores=true, estrellitas=false, gusanitoo=false, cohetesss=false, planetas=false, ships=false, shipss=false;
boolean rayoo=false, thinkerr=false, lunaaa=false, jugar=true, nightshifttt=true, musiquita=false, configuraciones=true, enes=false;
boolean tutorialburbujas=true, tutoriallolaboa=true, tutorialcohetes=true; boolean salir =true;

boolean saludo=false; 
boolean musicaa=true; 
boolean settings=false; 
boolean idioma = false; 
boolean dianoche=true; 
boolean playy=false; 
boolean animacionplay=false;
boolean botonesniveles=false; 
boolean minijuegos=false; 
boolean entergame1=false; 
boolean entergame2=false; 
boolean entergame3=false; 
boolean menuminijuegos=false;
boolean animacionjugar=false; 
boolean musicamenu=true; 
boolean creditos=true; 
boolean seecredits=false;
PImage[] burbuja = new PImage[50];

boolean nivelesss[] = new boolean[15];
boolean todosjuegos[] = new boolean[45];
boolean jugarnivel[] = new boolean[15];
String burbujascorrectass[] = new String[100];
String burbujasincorrectass[] = new String[100];
String lolaboapreguntass[] = new String[100];
String lolaboacorrectass[] = new String[100];
String lolaboaincorrectass1[] = new String[100];
String lolaboaincorrectass2[] = new String[100];
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
int sizejugar=0;
int sizejugarrr=0;
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




int strokewp = 7;
int strokewm = 7;
int strokewn = 7;
int strokewi = 7;
int strokewc = 7;

int countertexto1 =0;
int countertextooo=10;
int movboca=0;
int t=0;


boolean jugandoCohetes = false;
void setup() {

  minim = new Minim(this);
  bubbles = minim.loadFile("bubble.wav");
  menus = minim.loadFile("menus.wav");
  gameover = minim.loadFile("gameover.wav");
  cohetestiktak = minim.loadFile("cohetestiktak.wav");
  levelcompleted = minim.loadFile("win.wav");
  candybueno=minim.loadFile("candybueno.wav");
  candymalo=minim.loadFile("candymalo.wav");


  String[] espanol = loadStrings("español.txt");
  String[] ingles = loadStrings("ingles.txt");
  String[] niveles = loadStrings("niveles.txt");
  String[] burbujascorrectas = loadStrings("burbujascorrectas.txt");
  String[] burbujasincorrectas = loadStrings("burbujasincorrectas.txt");
  String[] lolaboapreguntas = loadStrings("lolaboapreguntas.txt");
  String[] lolaboacorrectas = loadStrings("lolaboarespuestascorrectas.txt");
  String[] lolaboaincorrectas1 = loadStrings("lolaboarespuestasincorrectas1.txt");
  String[] lolaboaincorrectas2 = loadStrings("lolaboarespuestasincorrectas2.txt");


  preguntas = loadStrings("data/Preguntas.txt");

  correctas = loadStrings("data/respuestas_correctas.txt");

  incorrectas = loadStrings("data/respuestas_incorrectas.txt");



  for (int i=0; i<100; i++) {
    burbujascorrectass[i]=burbujascorrectas[i];
    burbujasincorrectass[i]=burbujasincorrectas[i];
  }
  for (int i=0; i<50; i++) {
    lolaboapreguntass[i]=lolaboapreguntas[i];
    lolaboacorrectass[i]=lolaboacorrectas[i];
    lolaboaincorrectass1[i]=lolaboaincorrectas1[i];
    lolaboaincorrectass2[i]=lolaboaincorrectas2[i];
  }




  for (int i=0; i<45; i++) {
    todosjuegos[i]=false;
  }


  burbujasnivel1= new burbujas(0, 0.8, 0);/////////////////////////////posicion de la linea
  cohetenivel1= new cohetes(0, 1);
  lolaboanivel1=new lolaboa(0, 1.5, 2);
  
  burbujasnivel2= new burbujas(30, 0.8, 3);/////////////////////////////posicion de la linea
  cohetenivel2= new cohetes(10, 4);
  lolaboanivel2=new lolaboa(15, 1.5, 5);
  

  burbujasnivel15= new burbujas(60, 0.8, 42);
  cohetenivel15= new cohetes(20, 43);
  lolaboanivel15=new lolaboa(30, 1.5, 44);


  nivel1= new botones(615, 1380, 0);
  nivel2= new botones(645, 1260, 1);
  nivel3= new botones(635, 1170, 2);
  nivel4= new botones(500, 1140, 3);
  nivel5= new botones(360, 1120, 4);
  nivel6= new botones(210, 1030, 5);
  nivel7= new botones(320, 950, 6);
  nivel8= new botones(500, 895, 7);
  nivel9= new botones(680, 820, 8);
  nivel10= new botones(610, 640, 9);
  nivel11= new botones(480, 600, 10);
  nivel12= new botones(340, 530, 11);
  nivel13= new botones(230, 440, 12);
  nivel14= new botones(450, 370, 13);
  nivel15= new botones(490, 270, 14);

  espanol1 = new textos(espanol, 0, 15, 15, 200, 27, 0, 0);
  espanol2 = new textos(espanol, 17, 17, 34, 200, 27, 0, 0);
  espanol3 = new textos(espanol, 36, 23, 58, 180, 20, 0, 0);
  espanol4 = new textos(espanol, 60, 21, 80, 210, 20, 0, -40);
  espanol5 = new textos(espanol, 82, 21, 102, 200, 23, 0, 0);
  espanol6 = new textos(espanol, 104, 26, 129, 215, 20, 0, 0);
  espanol7 = new textos(espanol, 131, 24, 154, 240, 20, 0, -40);
  espanol8 = new textos(espanol, 156, 28, 183, 200, 25, 0, 0);
  espanol9 = new textos(espanol, 185, 28, 212, 240, 25, 0, 0);


  ingles1 = new textos(ingles, 0, 14, 14, 200, 27, 0, 0);
  ingles2 = new textos(ingles, 16, 15, 30, 200, 27, 0, 0);
  ingles3 = new textos(ingles, 32, 14, 45, 180, 20, 0, 0);
  ingles4 = new textos(ingles, 47, 18, 64, 210, 20, 0, -30);
  ingles5 = new textos(ingles, 65, 22, 86, 200, 23, 0, 0);
  ingles6 = new textos(ingles, 88, 23, 110, 215, 20, 0, 0);
  ingles7 = new textos(ingles, 112, 21, 132, 240, 20, 0, -40);
  ingles8 = new textos(ingles, 134, 16, 149, 200, 25, 0, 0);
  ingles9 = new textos(ingles, 151, 28, 178, 240, 25, 0, 0);


  background(colorfondo);
  size(1000, 700);
  imageMode(CORNER);
  for (int nosee=0; nosee<35; nosee++) {
    xstars[nosee] = random(0, 1000);
    ystars[nosee] = random(0, 700);
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
  burbujanormal=loadImage("burbujanormal.png");

  burbujabuena3=loadImage("burbujabuena3.png");
  burbujamala3=loadImage("burbujamala3.png");
  candy1=loadImage("Candy1.png");
  candy2=loadImage("Candy2.png");
  candy3=loadImage("Candy3.png");
  candy4=loadImage("Candy4.png");
  earth=loadImage("earth.png");
  coheteplay1=loadImage("coheteplay.png");
  coheteplay2=loadImage("coheteplay2.png");
  coheteplayh1=loadImage("coheteplayh.png");
  coheteplayh2=loadImage("coheteplayh2.png");
  coheteplay=coheteplay1;
  edad=loadImage("e.jpeg");

  for (int j=0; j<50; j++) {
    burbuja[j]=burbujanormal;
  }
}
void draw() {
  background(colorfondo);


  if (musicamenu==true) {
    if (musicaa==false) {
      menus.pause();
    } else if (musicaa==true) {
      if ( menus.position() == menus.length() )
      {
        menus.rewind();
        menus.play();
      } else
        menus.play();
    }
  } else {
    menus.pause();
  }
  IMAGENES();


  if (playy==false) {

    menuprincipal();
  } else if (playy==true) {

    menuniveles();
  }
  if (creditos==true) {
    fill(blanco);
    stroke(negro);
    strokeWeight(7);
    ellipse(950, 550, 70, 70);
    textAlign(CENTER);
    textSize(20);
    fill(negro);

    if (enes==true) {
      text("creditos", 950, 555);
    }
    if (enes==false) {
      text("credits", 950, 555);
    }
  }
  if(salir){
  fill(blanco);
stroke(#FF46EA);
strokeWeight(7);
ellipse(950,630,70,70);
fill(#FF46EA);
textSize(20);
if(enes==true){
text("salir",950,630);}
if(enes==false){
text("exit",950,630);}}
  
  
  ////////////////////////////////////////////////////////////
  ///////////////////////// CREDITOS//////////////////////////
  ////////////////////////////////////////////////////////////
  if(seecredits==true){
fill(0);
rect(0,0,1000,700);
estrellitas=true;
fill(#FFFFFF);
textSize(80);
if(enes==true){
text("CREDITOS",500,100);}
if(enes==false){
text("CREDITS",500,100);}
textSize(20);
if(enes==true){
text("Juego creado por:",500,150);
text("Musica y sonidos:",500,350);}
if(enes==false){
text("Game created by",500,150);
text("Music and sound effects:",500,350);}
textSize(30);
fill(#BC40FF);
text("freesound.org",500,400);
fill(#FF40FC);
textSize(50);
text("Paula Arguello",500,220);
text("Gineth Muñoz",500,300);
textSize(20);
fill(#FFFFFF);
if(enes==true){
text("Agradecimientos: ",500,550);
text("a la mami y al papi de Paula,",500,580);
text("y a la mami y al papi de Gineth :)",500,610);}
if(enes==false){
text("acknowledgement: ",500,550);
text("Paula's mommy and daddy",500,580);
text("and Gineth's mommy and daddy :)",500,610);}
strokeWeight(12);
stroke(#DEDEDE);
line(10,10,50,50);
line(10,50,50,10);

}
}






void mouseWheel(MouseEvent event) {
  if (playy==true && next>=5) {
    int e = event.getCount();
    if (yimg<=0 && yimg>=-962) {
      yimg+=-e*10;
    } else if (yimg>0) {
      yimg=0;
    } else if (yimg<-962) {
      yimg=-962;
    }
  }
}
void mousePressed() {




  if (nivelesss[0]==true ) {

    nivel1.mousePressed();
    burbujasnivel1.mousePressed();
    lolaboanivel1.mousePressed();
    cohetenivel1.mousePressed();
    
  }
  
  if (nivelesss[1]==true && next>=10) {

    nivel2.mousePressed();
    burbujasnivel2.mousePressed();
    lolaboanivel2.mousePressed();
    cohetenivel2.mousePressed();
  }

  if (nivelesss[14]==true && next>=10) {

    nivel15.mousePressed();
    burbujasnivel15.mousePressed();
    lolaboanivel15.mousePressed();
    cohetenivel15.mousePressed();
  }
  if (playy==false) {

    if (mouseX>=435 && mouseX<=545 && mouseY>=385 && mouseY<=475) {
      if (playy==false) {
        animacionplay=true;
      } else {
        playy=false;
      }
    }
  }


  if (mouseX>=xsettings-35 && mouseX<=xsettings+35 && mouseY>=ysettings-35 && mouseY<=ysettings+35) {
    strokewc=12;
    if (settings==false) {
      settings=true;
    } else if (settings==true) {

      settings=false;
    }
  }

  if (mouseX>=650+xdianoche-35 && mouseX<=650+xdianoche+35 && mouseY>=430+ydianoche-35 && mouseY<=430+ydianoche+35) {
    strokewn=12;
    if (dianoche==true) {
      dianoche=false;
    } else {
      dianoche=true;
    }
  }


  if (playy==true && next<10) {

    if (mouseX>=272+xnext && mouseX<=352+xnext && mouseY>=300+ynext && mouseY<=330+ynext && next!=5) {
      next++;
    } else if (mouseX>=272+xnext && mouseX<=352+xnext && mouseY>=340+ynext && mouseY<=370+ynext) {
      next--;
    }
  }





  if (settings==true) {
    if (mouseX>=xmusic-30 && mouseX<=xmusic+30 && mouseY>=ymusic-30 && mouseY<=ymusic+30) {
      if (musicaa==true) {

        musicaa=false;
      } else {

        musicaa=true;
      }
    }
    if (mouseX>=xidioma-30 && mouseX<=xidioma+30 && mouseY>=yidioma-30 && mouseY<=yidioma+30) {
      if (enes==false) {
        enes=true;
        idioma = true;
      } else {
        enes=false;
        idioma = false;
      }
    }
  }


  if (mouseX>=100 && mouseX<=300 && mouseY>=300 && mouseY<=500 && minijuegos==true && menuminijuegos==true) {
    entergame1=true;
  }

  if (mouseX>=400 && mouseX<=600 && mouseY>=300 && mouseY<=500 && minijuegos==true && menuminijuegos==true) {
    entergame2=true;
  }
  if (mouseX>=700 && mouseX<=900 && mouseY>=300 && mouseY<=500 && minijuegos==true && menuminijuegos==true) {
    entergame3=true;
  }








  if (mouseX>=915 && mouseX<=985 && mouseY>=515 && mouseY<=585 && creditos==true) {
    seecredits=true;
  }
  if (mouseX>=0 && mouseX<=50 && mouseY>=0 && mouseY<=50 && seecredits==true) {
    seecredits=false;
  }
  
  
  if (mouseX>=430 && mouseX<=570 && mouseY>=550 && mouseY<=610 && tutorialburbujas==true && entergame1==true) {
    tutorialburbujas=false;
  }
  if (mouseX>=430 && mouseX<=570 && mouseY>=420 && mouseY<=480 && tutoriallolaboa==true && entergame3==true) {
    tutoriallolaboa=false;
  }
  if(mouseX>=915 && mouseX<=985 && mouseY>=595 && mouseY<=665 && minijuegos==false && salir==true){
     
exit();
  }
  
}
