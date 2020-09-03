class lolaboa{
  int op; float vel; int yroll; color lolaboa=#FFFFFF; int i=0; PImage candys1[] = new PImage[45];PImage candys2[] = new PImage[15]; int nivel; int puntos;
  PImage candys3[] = new PImage[15]; float aleatoriocandys[]=new float[15]; float aleatorioy1[] =new float[15]; float aleatorioy2[] =new float[15]; 
  float aleatorioy3[]=new float[15]; int xcandys=1000; float aleatoriortas[]=new float[15]; String rtas1[]=new String[15]; String rtas2[]=new String[15];
  String rtas3[]=new String[15]; boolean[] comer = new boolean[15]; float wcandys=120;
  lolaboa(int _op, float _vel, int _nivel){
    for(int j=0;j<15;j++){
      aleatoriocandys[j]=random(0,4);
      aleatorioy1[j]=random(150,250);
      aleatorioy2[j]=random(300,400);
      aleatorioy3[j]=random(450,550);
      aleatoriortas[j]=random(0,3);
      comer[j]=false;
        
    }
    
    op=_op;
    vel=_vel;
    gusanito=normal;
    nivel=_nivel;
  }


void dibujar(){
  salir=false;
  musicamenu=false;
  for(int i=0;i<15;i++){
      if(aleatoriocandys[i]<=1){
      candys1[i]=candy1;
      candys2[i]=candy2;
      candys3[i]=candy3;}
      if(aleatoriocandys[i]>1 && aleatoriocandys[i]<=2 ){
      candys1[i]=candy4;
      candys2[i]=candy1;
      candys3[i]=candy2;}
      if(aleatoriocandys[i]>2 && aleatoriocandys[i]<=3 ){
      candys1[i]=candy3;
      candys2[i]=candy4;
      candys3[i]=candy1;}
      if(aleatoriocandys[i]>3 && aleatoriocandys[i]<=4 ){
      candys1[i]=candy2;
      candys2[i]=candy3;
      candys3[i]=candy4;}
      
     }
  
  if(dianoche==true){ 
    imageMode(CORNER);
    ysol=0;
    ypasto=550;
yflor1=500;
yflor2=500;
yflor3=500;
yflor4=500;
yflor5=500;
    pastoo=true;
    flores=true;
    solsol=true;
    
  }
  else if(dianoche==false){
    imageMode(CORNER);
    lunaaa=true;
    estrellitas=true;
  }
  fill(blanco);
  strokeJoin(ROUND);
  stroke(countercolor,99,99);
  strokeWeight(20);
  rect(350,20,300,100);
  
  
 
  if(xcandys<=500){
      wcandys-=vel/6;
    }
  
  //imageMode(CENTER);
  textAlign(CENTER,CENTER);
 fill(negro);
 textSize(30);
 text(lolaboapreguntass[i+op],500,60);
 imageMode(CENTER);
 image(candys1[i],xcandys,aleatorioy1[i],wcandys,wcandys);
 image(candys2[i],xcandys,aleatorioy2[i],wcandys,wcandys);
 image(candys3[i],xcandys,aleatorioy3[i],wcandys,wcandys);
 imageMode(CORNER);
 if(aleatoriortas[i]>=0 && aleatoriortas[i]<1){
  rtas1[i]=lolaboacorrectass[i+op];
  rtas2[i]=lolaboaincorrectass1[i+op];
  rtas3[i]=lolaboaincorrectass2[i+op];
}
if(aleatoriortas[i]>=1 && aleatoriortas[i]<2){
  rtas2[i]=lolaboacorrectass[i+op];
  rtas3[i]=lolaboaincorrectass1[i+op];
  rtas1[i]=lolaboaincorrectass2[i+op];
}
if(aleatoriortas[i]>=2 && aleatoriortas[i]<=3){
  rtas3[i]=lolaboacorrectass[i+op];
  rtas1[i]=lolaboaincorrectass1[i+op];
  rtas2[i]=lolaboaincorrectass2[i+op];
}
fill(#C90083);
 text(rtas1[i],xcandys,aleatorioy1[i]);
 text(rtas2[i],xcandys,aleatorioy2[i]);
 text(rtas3[i],xcandys,aleatorioy3[i]);
 
 
 
 if(tutoriallolaboa==true){
   xcandys=900;
        textSize(30);

        if(enes==true){
        fill(#FF58EC);
       text("Hola! ayudame a comer los dulces buenos",500,300);
       text("Dulces toxicos = respuestas incorrectas",500,340);
       text("Dulces buenos = respuestas correctas",500,380);
       text("Con 10 puntos o más pasas el nivel",500,420);
      }
      if(enes==false){
        fill(#FF58EC);
       text("Hi! help me eat good candys",500,300);
       text("Toxic candys = wrong answers",500,340);
       text("Good candys = correct answers",500,380);
       text("With 10 points or more you complete level :)",500,420);

      }
      noFill();
      stroke(#C5B2FF);
      strokeWeight(7);
      rect(430,460,140,60);
      fill(#C5B2FF);
      text("ok",500,480);
      }
 
 
 
 
 
 
 
 
 if(tutoriallolaboa==false){
 xcandys-=vel;}
pushMatrix();
  imageMode(CORNER);
 scale(-1.0, 1.0);
 copy(gusanito,300,80,250,250,-220,yroll,300,300);
 popMatrix();
  
  if(keyPressed == true){
    if(keyCode==UP){
      yroll-=5;
    }
    if(keyCode==DOWN){
      yroll+=5;
    }}
    
    if(dist(200,yroll+90,xcandys,aleatorioy1[i])<=60 || dist(200,yroll+90,xcandys,aleatorioy2[i])<=60 || dist(200,yroll+90,xcandys,aleatorioy3[i])<=60){
      gusanito=bocaabierta;
    }
    if(dist(200,yroll+90,xcandys,aleatorioy1[i])<=20 && comer[i]==false){
     comer[i]=true;
      if(rtas1[i]==lolaboacorrectass[i+op]){
        candybueno.rewind();
        candybueno.play();
        puntos++;
      }
      else{
        candymalo.rewind();
        candymalo.play();
        puntos+=0;
      }
      
    }
    else if(dist(200,yroll+90,xcandys,aleatorioy2[i])<=20 && comer[i]==false){
    comer[i]=true;
      if(rtas2[i]==lolaboacorrectass[i+op]){
        candybueno.rewind();
        candybueno.play();
        puntos++;
      }
      else{
        candymalo.rewind();
        candymalo.play();
        puntos+=0;
      }
      
    }
    else if(dist(200,yroll+90,xcandys,aleatorioy3[i])<=20 && comer[i]==false){
     comer[i]=true;
      if(rtas3[i]==lolaboacorrectass[i+op]){
        candybueno.rewind();
        candybueno.play();
        puntos++;
      }
      else{
        candymalo.rewind();
        candymalo.play();
        puntos+=0;
      }
      
    }
    else if(xcandys<=10&&comer[i]==false){
      comer[i]=true;
    }
    
if(comer[i]==true){
  if(i<14){
  gusanito=normal;
  i++;
  xcandys=1000;
  wcandys=120;
  }  
}
    textSize(20);
fill(negro);
if(enes==true){
text("Puntos",950,300);
}
if(enes==false){
text("Points",950,300);
}
text(puntos,950,330);
    
    
   if(comer[14]==true){ 
if(puntos>=10){
//  levelcompleted.play();
      todosjuegos[nivel]=true;
      fill(#FF00A6);
    textSize(50);
    if(enes==false){
    text("LEVEL COMPLETED", 500,300);
    }
    else if(enes==true){
    text("NIVEL COMPLETO", 500,300);
    }
    }
    else{
      gameover.play();
      fill(#FF00A6);
      textSize(50);
    if(enes==false){
    text("TRY AGAIN", 500,300);
    }
    else if(enes==true){
    text("INTENTALO DE NUEVO", 500,300);
    }
    }
  
   }
   
 fill(blanco);
stroke(#E5E5E5);
strokeWeight(7);
ellipse(950,630,70,70);
fill(#E5E5E5);
textSize(20);
if(enes==true){
text("salir",950,620);}
if(enes==false){
text("exit",950,620);}  
   
}


void mousePressed(){
  
  if(mouseX>=915 && mouseX<=985 && mouseY>=595 && mouseY<=665){
  minijuegos=false;
  puntos=0;
  xcandys=1000;
  i=0;
  for(int j=0;j<15;j++){
      aleatoriocandys[j]=random(0,4);
      aleatorioy1[j]=random(150,250);
      aleatorioy2[j]=random(300,400);
      aleatorioy3[j]=random(450,550);
      aleatoriortas[j]=random(0,3);
      comer[j]=false;
    }
}
  }





}
