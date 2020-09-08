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
  boolean[] cambiodeimagen=new boolean[50]; 
  boolean[] bienomal=new boolean[50];
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
      cambiodeimagen[numburbujas]=false;
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

    musicamenu=false;
    if (dianoche==true) {
      negro=#D3D3D3;
      colorfondo=color(#E0F9FF);
      burbujanormal=burbujanormald;
      if (counterburbujas>=0 && counterburbujas<40) {
        burbujamala=burbujamalad2;
        burbujabuena=burbujabuenad2;
      } else if (counterburbujas>=40 && counterburbujas<=80) {
        burbujamala=burbujamalad3;
        burbujabuena=burbujabuenad3;
      }
      counterburbujas++;
      if (counterburbujas==80) {
        counterburbujas=0;
      }
    } else if (dianoche==false) {
      colorfondo=color(#0B2F76);
      burbujanormal=burbujanormalN;
      if (counterburbujas>=0 && counterburbujas<30) {
        burbujamala=burbujamalaN2;
        burbujabuena=burbujabuenaN2;
      } else if (counterburbujas>=30 && counterburbujas<=60) {
        burbujamala=burbujamalaN3;
        burbujabuena=burbujabuenaN3;
      }
      counterburbujas++;
      if (counterburbujas==60) {
        counterburbujas=0;
      }
    }



    if (tutorialburbujas==true) {
      textSize(30);
      movy=100;
      if (enes==true) {
        if (dianoche==true) {
          fill(#F2D1FF);
        } else if (dianoche==false) {
          fill(#851CAD);
        }
        text("Clickea las burbujas que contengan operaciones correctas", 500, 450);
        text("Las burbujas buenas suman 2 puntos, las malas te quitan 1", 500, 490);
        text("Con 30 puntos pasas el nivel :)", 500, 530);
      }
      if (enes==false) {
        if (dianoche==true) {
          fill(#F2D1FF);
        } else if (dianoche==false) {
          fill(#851CAD);
        }
        text("Click bubbles that contain correct operations", 500, 450);
        text("Good bubbles add 2 points, bad bubbles take 1", 500, 490);
        text("With 30 points you complete level :)", 500, 530);
      }
      noFill();
      if (dianoche) {
        stroke(#C5B2FF);
      } else if (dianoche==false) {
        stroke(#560076);
      }
      rect(430, 550, 140, 60);
      if (dianoche) {
        fill(#C5B2FF);
      } else if (dianoche==false) {
        fill(#560076);
      }
      text("ok", 500, 590);
    }


    if (tutorialburbujas==false) {
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

    if (reset) {

      puntos=0;
      for (int numburbujas=0; numburbujas<50; numburbujas++) {
        explotarburbujas[numburbujas]=false; 
        cambiodeimagen[numburbujas]=false;
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
      
      reset=false;
     
    }

    textAlign(CENTER, CENTER);
    textSize(20);
    fill(negro);
    if (enes==true) {
      text("Puntos", 950, 300);
      textSize(17);
      text("30 para ganar", 950, 360);
    }
    if (enes==false) {
      textSize(20);
      text("Points", 950, 300);
      text("30 to win", 950, 360);
    }
    textSize(20);
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
      if (cambiodeimagen[num]) {
        if (bienomal[num]==true) {

          burbuja[num]=burbujabuena;
        } else if (bienomal[num]==false) {
          burbuja[num]=burbujamala;
        }
      } else if (cambiodeimagen[num]==false) {
        burbuja[num]=burbujanormal;
      }

      imageMode(CENTER);       
      image(burbuja[num], xburbujas[num], yburbujas[num]+movy, wburbuja[num], wburbuja[num]);
      textSize(25);
      if (dianoche==true) {
        fill(#CECECE);
      } else if (dianoche==false) {
        fill(#FFFFFF);
      }

      if (aleatorio[num]<=0.5) {
        respuestasburbujas[num]=burbujascorrectass[num+op];
      } else if (aleatorio[num]>0.5) {
        respuestasburbujas[num]=burbujasincorrectass[num+op];
      }
      text(respuestasburbujas[num], xburbujas[num], yburbujas[num]+movy);
    }


    if (yburbujas[numburbujas]+movy>=3100) {
      if (puntos>=30) {
        if(musicaa){
levelcompleted.play();}
        todosjuegos[nivelll]=true;
        textSize(50);
        if (enes==false) {
          text("LEVEL COMPLETED", 500, 300);
        } else if (enes==true) {
          text("NIVEL COMPLETO", 500, 300);
        }
      } else {
        if(musicaa){
        gameover.play();}
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
        cambiodeimagen[num]=true;
        if (musicaa) {
          bubbles.rewind();
          bubbles.play();
        }
        if (respuestasburbujas[num]==burbujascorrectass[num+op]) {
          puntos+=2;
          bienomal[num]=true;
        } else if (respuestasburbujas[num]==burbujasincorrectass[num+op]) {
          puntos-=1;
          bienomal[num]=false;
        }


        explotarburbujas[num]=true;
      }
    }
  }
}
