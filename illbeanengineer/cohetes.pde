class cohetes {
  float x1=20;
  float x2=50;
  float y1=300;
  float y2=50;
  float speedx = 5; 
  float speedy = 5; 
  float s1;
  float s2;
  float multy;
  float multx;
  int last=0;
  color a=#FFFFFF;
  color b=#FFFFFF;
  int con=0;
  int cont=0;
  int t1, t2, tiempoEsperar_ms = 10000;
  int selector = 0;
  boolean pregunta;
  boolean preguntando = false;
  boolean press1=false;
  boolean puntoContado = false;
  float j=random(0, 1);
  int nivel;
  int op;
  cohetes(int _op, int _nivel) {
    op=_op;
    nivel=_nivel;
  }

  void move() {


    musicamenu=false;
    if (keyPressed && (key == CODED)  && !preguntando) {  //condicional si se oprime una tecla
      if (keyCode==LEFT) {      //si oprime la flecha izquierda
        coheteplay=coheteplayh2;
        x1 -=speedx;
      }

      if (keyCode==RIGHT) {    //si oprime la flecha derecha
        coheteplay=coheteplayh1;
        x1+=speedx ;
      }

      if (keyCode==UP) {     //si oprime la flecha arriba
        coheteplay=coheteplay1;
        y1 -= speedy;
      }
      if (keyCode==DOWN) {   //si oprime la flecha abajo
        coheteplay=coheteplay2;
        y1 += speedy;
      }
    }
  }
  void dibujo() {
    colorfondo=#0F064B;
    estrellitas=true;
    noStroke();
    imageMode(CENTER);



    image(earth, xp, yp, 100, 100); 
    image(coheteplay, x1, y1, 200, 200);

    imageMode(CORNER);
    textSize(20);
    fill(negro);
    if (enes==true) {
      text("Puntos "+ str(cont), 950, 300);
    }
    if (enes==false) {
      text("Points "+ str(cont), 950, 300);
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
  }
  void collide() { //metodo para que pase de un lado de la pantalla a otro
    if (x1 > width + 25) {
      x1=0;
    }
    if (x1 < 0 - 25) {
      x1 = width + 25;
    }
    if (y1 > height + 25) {
      y1=0;
    }
    if (y1 < 0 - 25) {
      y1=height + 25;
    }
  }
  void punto() { 
    if (dist(x1, y1, xp, yp)<=120) { //
      if (!preguntando) {
        t1 = millis();
        preguntando = true;
      }
      t2 = millis();
      if (t2 - t1 < tiempoEsperar_ms) {
        if ( cohetestiktak.position() == cohetestiktak.length() )
        {
          cohetestiktak.rewind();
          cohetestiktak.play();
        } else
          cohetestiktak.play();
        fill(#FFFFFF);
        stroke(8);
        rect(150, 40, 680, 600);
        imageMode(CENTER);
        image(flor1, 150, 40, 120, 120);
        image(flor2, 830, 40, 120, 120);
        image(flor3, 830, 640, 120, 120);
        image(flor4, 150, 640, 120, 120);
        imageMode(CORNER);
        fill(0);
        textSize(50);
        textAlign(CENTER, CENTER);
        text(preguntas[selector], 500, 200);
        text("La respuesta es:", 500, 300);/////////////////////////////////////////////

        fill(a);
        rect(300, 450, 100, 100);//////////////////////////////////////////////
        fill(b);  
        rect(600, 450, 100, 100);////////////////////////////////////////////////////
        fill(0);
        if (j<=0.5) {
          text(correctas[selector], 350, 500);
          text(incorrectas[selector], 650, 500);
        }
        if (j>=0.5) {
          text(incorrectas[selector], 350, 500);
          text(correctas[selector], 650, 500);
        }
        text(10-((t2-t1)/1000), 700, 100);
        t2 = millis();
      } else {
        //Cambiar de posicion el punto
        do {
          xp = random(30, 770);
          yp = random(30, 670);
          j=random(0, 1);
        } while (dist(x1, y1, xp, yp)<=120);
        a=#FFFFFF;
        b=#FFFFFF;
        press1=false;
        preguntando = false;
        puntoContado=false;
        selector ++;
        if (selector>9) {
          selector= 9;

          if (cont>=7) {
            todosjuegos[nivel]=true;
            levelcompleted.play();
            fill(#FF00A6);
            textSize(50);
            if (enes==false) {
              text("LEVEL COMPLETED", 500, 300);
            } else if (enes==true) {
              text("NIVEL COMPLETO", 500, 300);
            }
          } else {
            gameover.play();
            fill(#FF00A6);
            textSize(50);
            if (enes==false) {
              text("TRY AGAIN", 500, 300);
            } else if (enes==true) {
              text("INTENTALO DE NUEVO", 500, 300);
            }
          }




          xp=3000000;
          yp=3000000;///////////////////////////////////////////////////////////////////
        }
      }
    }
  }
  void mousePressed() {
    if (press1==false  && jugandoCohetes==true) {

      if (mouseX>=300&&mouseX<=400) {////////iz
        if (mouseY>=450&&mouseY<=550) {

          if (j<=0.5 && !puntoContado ) {
            a=#54FF46;
            cont=cont+1;
            puntoContado=true;
            //if (selector>0&&cont<=selector) {
            //  cont=cont+1;
            //} else if (selector==0) {
            //  cont=cont+1;
            //}
          }
        }
        if (j>=0.5) {
          a=#FF3195;
        }
        press1=true;
      } else {

        if (mouseX>=600&&mouseX<=700) {
          if (mouseY>=450&&mouseY<=550) {

            if (j>=0.5 && !puntoContado) {
              b=#54FF46;

              cont=cont+1;
              puntoContado=true;
              //if (selector>0&&cont<=selector) {
              //  cont=cont+1;
              //} else if (selector==0) {
              //  cont=cont+1;
              //}
            }
            if (j<=0.5) {
              b=#FF3195;
            }
          }
        }
        press1=true;

      }
    }
    if (mouseX>=915 && mouseX<=985 && mouseY>=595 && mouseY<=665) {
      minijuegos=false;
      cont=0;
      i=0;
      selector=0;
    }
  }
}
