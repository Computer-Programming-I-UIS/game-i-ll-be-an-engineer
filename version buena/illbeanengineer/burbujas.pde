class burbujas {
  float i; 
  int op; 
  int numburbujas; 
  int u; 
  int counterburbuja; 
  int puntos;  
  float animburbujas2; 
  int nivelll;
  float mov; 
  float movy; 
  boolean[] explotarburbujas=new boolean[50]; 
  float[] xburbujas=new float[50];
  float[] yburbujas=new float[50];
  float[] xburbujasrandom=new float[50];
  float[] yburbujasrandom=new float[50];
  float[] aleatorio =new float[50];
  float[] animburbuja = new float[50];
  float[] wburbuja =new float[50];
  String [] respuestasburbujas = new String[100];   

  burbujas(int _opbuenas, float _mov, int _nivelll) {
    op=_opbuenas;
    mov=_mov;
    nivelll=_nivelll;
     

    for (int numburbujas=0; numburbujas<50; numburbujas++) {
      explotarburbujas[numburbujas]=false;
    }
    for (int i=0; i<50; i++) {
      xburbujasrandom[i]=random(-50, 50);
      yburbujasrandom[i]=random(-50, 50);
      aleatorio[i]=random(0, 1);
      animburbuja[i]=random(-1, 1);

      if (animburbuja[i]<=0) {
        animburbuja[i]=-1;
      } else if (animburbuja[i]>0) {
        animburbuja[i]=1;
      }
      u=0;
    }
  }


  void dibujar() {
   salir=false;
 musicamenu=false;
 
    if (dianoche==true) {
      colorfondo=color(#E0F9FF);
    }
    if (dianoche==false) {
      colorfondo=color(#7386AA);
    }
    
   
      
      
      
      
      if(tutorialburbujas==true){
        textSize(30);
        movy=100;
        if(enes==true){
        fill(#EEB2FF);
       text("Clickea las burbujas que contengan operaciones correctas",500,450);
       fill(#FFB2F5);
       text("Las burbujas buenas suman 2 puntos, las malas te quitan 1",500,490);
       fill(#FFB2C1);
       text("Con 20 puntos pasas el nivel :)",500,530);
      }
      if(enes==false){
        fill(#EEB2FF);
       text("Click bubbles that contain correct operations",500,450);
       fill(#FFB2F5);
       text("Good bubbles add 2 points, bad bubbles take 1",500,490);
       fill(#FFB2C1);
       text("With 20 points you complete level :)",500,530);
      }
      noFill();
      stroke(#C5B2FF);
      rect(430,550,140,60);
      fill(#C5B2FF);
      text("ok",500,590);
        
        
      }
      

    if(tutorialburbujas==false){
      movy+=mov;
    }
    
    

 
      numburbujas=30;
      for (int j=0; j<50; j++) {

        wburbuja[j]=200+animburbujas2*animburbuja[j];
      }

      for (int i=0; i<numburbujas; i++) {
        if (i<10) {
          xburbujas[i]= 150+xburbujasrandom[i];
        } else if (i>=10 && i<20) {
          xburbujas[i]= 450+xburbujasrandom[i];
        } else if (i>=20 && i<30) {
          xburbujas[i]=750+xburbujasrandom[i];
        }
      }

      for (int i=0; i<numburbujas; i++) {

        yburbujas[i]=150-u*300+yburbujasrandom[i];
        u++;
        if (u>=10) {
          u=0;
        }
      
      
    } 
    
 



    
    fill(blanco);
    stroke(#E5E5E5);
    strokeWeight(7);
    ellipse(950, 630, 70, 70);
    fill(#E5E5E5);
    textSize(20);
    if (enes==true) {
      text("salir", 950, 620);
    }
    if (enes==false) {
      text("exit", 950, 620);
    }

    textAlign(CENTER, CENTER);
    textSize(20);
    fill(negro);
    if (enes==true) {
      text("Puntos", 950, 300);
    }
    if (enes==false) {
      text("Points", 950, 300);
    }
    text(puntos, 950, 330);

    if (counterburbuja>=0 && counterburbuja<15) {
      animburbujas2+=0.5;
    } else if (counterburbuja>=15 && counterburbuja<=30) {
      animburbujas2-=0.5;
    }
    counterburbuja++;
    if (counterburbuja==30) {
      counterburbuja=0;
    }


    for (int num=0; num<numburbujas; num++) {


      imageMode(CENTER);       
      image(burbuja[num], xburbujas[num], yburbujas[num]+movy, wburbuja[num], wburbuja[num]);
      textSize(25);
      fill(#CECECE);

      if (aleatorio[num]<=0.5) {
        respuestasburbujas[num]=burbujascorrectass[num+op];
      } else if (aleatorio[num]>0.5) {
        respuestasburbujas[num]=burbujasincorrectass[num+op];
      }
      text(respuestasburbujas[num], xburbujas[num], yburbujas[num]+movy);
    }

    if (yburbujas[numburbujas]+movy>=3100) {
      if (puntos>=20) {
        //levelcompleted.play();
        todosjuegos[nivelll]=true;
        textSize(50);
        if (enes==false) {
          text("LEVEL COMPLETED", 500, 300);
        } else if (enes==true) {
          text("NIVEL COMPLETO", 500, 300);
        }
      } else {
        gameover.play();
        textSize(50);
        if (enes==false) {
          text("TRY AGAIN", 500, 300);
        } else if (enes==true) {
          text("INTENTALO DE NUEVO", 500, 300);
        }
      }
    }
  }


  void mousePressed() {

    for (int num=0; num<numburbujas; num++) {
      if (mouseX>xburbujas[num]-wburbuja[num]/2 && mouseX<xburbujas[num]+wburbuja[num]/2 && mouseY>yburbujas[num]+movy-wburbuja[num]/2 && mouseY<yburbujas[num]+movy+wburbuja[num]/2 && explotarburbujas[num]==false) {
        bubbles.rewind();
        bubbles.play();
        if (respuestasburbujas[num]==burbujascorrectass[num+op]) {
          puntos+=2;
          burbuja[num]=burbujabuena3;
        } else if (respuestasburbujas[num]==burbujasincorrectass[num+op]) {
          puntos-=1;
          burbuja[num]=burbujamala3;
        }


        explotarburbujas[num]=true;
      }
    }
    if (mouseX>=915 && mouseX<=985 && mouseY>=595 && mouseY<=665) {
      minijuegos=false;
      puntos=0;
      for (int numburbujas=0; numburbujas<50; numburbujas++) {
        explotarburbujas[numburbujas]=false; 
        burbuja[numburbujas]=burbujanormal;
        xburbujasrandom[numburbujas]=random(-50, 50);
        yburbujasrandom[numburbujas]=random(-50, 50);
        aleatorio[numburbujas]=random(0, 1);
        animburbuja[numburbujas]=random(-1, 1);
        if (animburbuja[numburbujas]<=0) {
          animburbuja[numburbujas]=-1;
        } else if (animburbuja[numburbujas]>0) {
          animburbuja[numburbujas]=1;
        }
      }  
      u=0; 
      movy=0;
    }
  }
}