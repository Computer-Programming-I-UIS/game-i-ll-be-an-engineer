class lolaboa{
  int op; float vel; int yroll;  int i=0; PImage candys1[] = new PImage[30];PImage candys2[] = new PImage[10]; int nivel; int puntos;
  PImage candys3[] = new PImage[10]; float aleatoriocandys[]=new float[10]; float aleatorioy1[] =new float[10]; float aleatorioy2[] =new float[10]; 
  float aleatorioy3[]=new float[10]; int xcandys=1000; float aleatoriortas[]=new float[10]; String rtas1[]=new String[10]; String rtas2[]=new String[10];
  String rtas3[]=new String[10]; boolean[] comer = new boolean[10]; float wcandys=120; PImage nivel7[] = new PImage[3];PImage nivel8[] = new PImage[5]; PImage nivel9[] = new PImage[5];PImage nivel10[] = new PImage[3];
  lolaboa(int _op, float _vel, int _nivel){
    for(int j=0;j<10;j++){
      aleatoriocandys[j]=random(0,4);
      aleatorioy1[j]=random(150,250);
      aleatorioy2[j]=random(300,400);
      aleatorioy3[j]=random(450,550);
      aleatoriortas[j]=random(0,3);
      comer[j]=false;
        
    }
    nivel7[0]=loadImage("lolaboa/lola14.png");
    nivel7[1]=loadImage("lolaboa/lola15.png");
    nivel7[2]=loadImage("lolaboa/lola16.png");
    nivel8[0]=loadImage("lolaboa/lola1.png");
    nivel8[1]=loadImage("lolaboa/lola2.png");
    nivel8[2]=loadImage("lolaboa/lola3.png");
    nivel8[3]=loadImage("lolaboa/lola4.png");
    nivel8[4]=loadImage("lolaboa/lola5.png");
    nivel9[0]=loadImage("lolaboa/lola6.png");
    nivel9[1]=loadImage("lolaboa/lola7.png");
    nivel9[2]=loadImage("lolaboa/lola8.png");
    nivel9[3]=loadImage("lolaboa/lola9.png");
    nivel9[4]=loadImage("lolaboa/lola10.png");
    nivel10[0]=loadImage("lolaboa/lola11.png");
    nivel10[1]=loadImage("lolaboa/lola12.png");
    nivel10[2]=loadImage("lolaboa/lola13.png");
    op=_op;
    vel=_vel;
    
    nivel=_nivel;
  }


void dibujar(){

  if(dianoche==true){
  lolabocaabierta=loladiabocaabierta;
  lolabocacerrada=loladiabocacerrada;
}
else if(dianoche==false){
  lolabocaabierta=lolanochebocaabierta;
  lolabocacerrada=lolanochebocacerrada;
}


  musicamenu=false;
  for(int i=0;i<10;i++){
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
  if(dianoche){
  stroke(countercolor,99,99);}
  else if(dianoche==false){
   stroke(#EAEAEA); 
  }
  strokeWeight(20);
  rect(350,20,300,100);
  
  
 
  if(xcandys<=500){
      wcandys-=vel/6;
    }
  
  //imageMode(CENTER);
  textAlign(CENTER,CENTER);
 fill(negro);
 textSize(30);

 if(nivel==7){
    imageMode(CENTER);
   image(nivel7[i],500,40,400,200);
   imageMode(CORNER);
 }
 if(nivel==8){
    imageMode(CENTER);
   image(nivel8[i],500,40,400,200);
   imageMode(CORNER);
 }
 if(nivel==9){
    imageMode(CENTER);
   image(nivel9[i],500,40,400,200);
   imageMode(CORNER);
 }
 if(nivel==10){
    imageMode(CENTER);
   image(nivel10[i],500,80,400,200);
   imageMode(CORNER);
 }
 else{
 text(lolaboapreguntass[i+op],500,60);}
 imageMode(CENTER);
 image(candys1[i],xcandys,aleatorioy1[i],wcandys,wcandys);
 image(candys2[i],xcandys,aleatorioy2[i],wcandys,wcandys);
 image(candys3[i],xcandys,aleatorioy3[i],wcandys,wcandys);
 imageMode(CORNER);
 
 if(nivel!=4){
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
 text(rtas3[i],xcandys,aleatorioy3[i]);}
 if(nivel==4){
   if(enes){
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
 text(rtas3[i],xcandys,aleatorioy3[i]);}
     
    else if(enes==false){
       if(aleatoriortas[i]>=0 && aleatoriortas[i]<1){
  rtas1[i]=lolaboacorrectassI[i+op];
  rtas2[i]=lolaboaincorrectass1I[i+op];
  rtas3[i]=lolaboaincorrectass2I[i+op];
}
if(aleatoriortas[i]>=1 && aleatoriortas[i]<2){
  rtas2[i]=lolaboacorrectassI[i+op];
  rtas3[i]=lolaboaincorrectass1I[i+op];
  rtas1[i]=lolaboaincorrectass2I[i+op];
}
if(aleatoriortas[i]>=2 && aleatoriortas[i]<=3){
  rtas3[i]=lolaboacorrectassI[i+op];
  rtas1[i]=lolaboaincorrectass1I[i+op];
  rtas2[i]=lolaboaincorrectass2I[i+op];
}
fill(#C90083);
 text(rtas1[i],xcandys,aleatorioy1[i]);
 text(rtas2[i],xcandys,aleatorioy2[i]);
 text(rtas3[i],xcandys,aleatorioy3[i]);}
       
     }
   
   
 
 
 
 
 if(tutoriallolaboa==true){
   xcandys=900;
        textSize(30);

        if(enes==true){
        fill(#FF58EC);
       text("Hola! ayudame a comer los dulces buenos",500,300);
       text("Dulces tóxicos = respuestas incorrectas",500,340);
       text("Dulces buenos = respuestas correctas",500,380);
       text("Con 6 puntos o más pasas el nivel",500,420);
      }
      if(enes==false){
        fill(#FF58EC);
       text("Hi! help me eat good candys",500,300);
       text("Toxic candys = wrong answers",500,340);
       text("Good candys = correct answers",500,380);
       text("With 6 points or more you complete level :)",500,420);

      }
      noFill();
      stroke(#C5B2FF);
      strokeWeight(7);
      rect(430,460,140,60);
      fill(#C5B2FF);
      text("ok",500,480);
      }
 
 if(tutoriallolaboa==false){
 xcandys-=vel*3;}
pushMatrix();
  imageMode(CORNER);
 scale(-1.0, 1.0);
 copy(lolaboa,300,80,250,250,-220,yroll,300,300);
 popMatrix();
  
  if(keyPressed == true){
    if(keyCode==UP){
      yroll-=5;
     
    }
    if(keyCode==DOWN){
      yroll+=5;
    }}
    
    if(dist(200,yroll+90,xcandys,aleatorioy1[i])<=60 || dist(200,yroll+90,xcandys,aleatorioy2[i])<=60 || dist(200,yroll+90,xcandys,aleatorioy3[i])<=75){
      lolaboa = lolabocaabierta;
    }
    else{lolaboa=lolabocacerrada;}
    if(dist(200,yroll+90,xcandys,aleatorioy1[i])<=20 && comer[i]==false){
     comer[i]=true;
      if(rtas1[i]==lolaboacorrectass[i+op]){
        if(musicaa){
        candybueno.rewind();
        candybueno.play();}
        puntos++;
      }
      else{
        if(musicaa){
        candymalo.rewind();
        candymalo.play();}
        puntos+=0;
      }
      
    }
    else if(dist(200,yroll+90,xcandys,aleatorioy2[i])<=20 && comer[i]==false){
    comer[i]=true;
      if(rtas2[i]==lolaboacorrectass[i+op]){
        if(musicaa){
        candybueno.rewind();
        candybueno.play();}
        puntos++;
      }
      else{
        if(musicaa){
        candymalo.rewind();
        candymalo.play();}
        puntos+=0;
      }
      
    }
    else if(dist(200,yroll+90,xcandys,aleatorioy3[i])<=20 && comer[i]==false){
     comer[i]=true;
      if(rtas3[i]==lolaboacorrectass[i+op]){
        if(musicaa){
        candybueno.rewind();
        candybueno.play();}
        puntos++;
      }
      else{
        if(musicaa){
        candymalo.rewind();
        candymalo.play();}
        puntos+=0;
      }
      
    }
    else if(xcandys<=10&&comer[i]==false){
      comer[i]=true;
    }
     
    if (yroll > 450) {
      yroll=450 ;
    }
    if (yroll < 0) {
      yroll=0 ;
    }
    
if(comer[i]==true){
  
  if(nivel==7 || nivel==3){
    if(i<3){
  lolaboa = lolabocacerrada;
  i++;
  xcandys=1000;
  wcandys=120;
  }
  }
  
  if(nivel==11 || nivel==8 || nivel==9){
    if(i<5){
  lolaboa = lolabocacerrada;
  i++;
  xcandys=1000;
  wcandys=120;
  }
  }
  if(nivel==12){
    if(i<7){
  lolaboa = lolabocacerrada;
  i++;
  xcandys=1000;
  wcandys=120;
  }
  }
  else{
  if(i<10){
  lolaboa = lolabocacerrada;
  i++;
  xcandys=1000;
  wcandys=120;
  } } 
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
    
    
   if(comer[9]==true){ 
if(puntos>=6){
  if(musicaa){
levelcompleted.play();}
      todosjuegos[nivel]=true;
      if(dianoche){
      fill(#FF00A6);}
      else if(dianoche==false){
        fill(#FFFFFF);
      }
    textSize(50);
    if(enes==false){
    text("LEVEL COMPLETED", 500,300);
    }
    else if(enes==true){
    text("NIVEL COMPLETO", 500,300);
    }
    }
    else{
      if(musicaa){
      gameover.play();}
      if(dianoche){
      fill(#FF00A6);}
      else if(dianoche==false){
        fill(#FFFFFF);
      }
      textSize(50);
    if(enes==false){
    text("TRY AGAIN", 500,300);
    }
    else if(enes==true){
    text("INTENTALO DE NUEVO", 500,300);
    }
    }
  
   }
if(reset){
puntos=0;
  xcandys=1000;
  i=0;
  wcandys=120;
  for(int j=0;j<10;j++){
      aleatoriocandys[j]=random(0,4);
      aleatorioy1[j]=random(150,250);
      aleatorioy2[j]=random(300,400);
      aleatorioy3[j]=random(450,550);
      aleatoriortas[j]=random(0,3);
      comer[j]=false;
    }

 reset=false;

   
}
}
}
