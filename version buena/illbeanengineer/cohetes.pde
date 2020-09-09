class cohetes {
  PVector location ;
  PVector velocity;
  PVector location2 ;
  PVector velocity2;
  PVector location3 ;
  PVector velocity3;
  float radius =25;
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
  int t1, t2, tiempoEsperar_ms = 20000;
  int selector = 0;
  boolean pregunta;
  boolean preguntando = false;
  boolean press1=false;
  boolean p1=false;
  boolean puntoContado = false;
  float j=random(0, 1);
  float xa1=100, ya1=100, xa2=700, ya2=350, xa3=200, ya3=400;
  int nivel;
  int op;
  PImage[] nivel7=new PImage[3];
  PImage[] nivel8=new PImage[5];
  PImage[] nivel9=new PImage[5];
  PImage[] nivel10=new PImage[3];
  cohetes(int _op, int _nivel) {
    op=_op;
    nivel=_nivel;
    sett();
    
   nivel7[0]=loadImage("cohetess/cohete14.png");
    nivel7[1]=loadImage("cohetess/cohete15.png");
    nivel7[2]=loadImage("cohetess/cohete16.png");
    nivel8[0]=loadImage("cohetess/cohete1.png");
    nivel8[1]=loadImage("cohetess/cohete2.png");
    nivel8[2]=loadImage("cohetess/cohete3.png");
    nivel8[3]=loadImage("cohetess/cohete4.png");
    nivel8[4]=loadImage("cohetess/cohete5.png");
    nivel9[0]=loadImage("cohetess/cohete6.png");
    nivel9[1]=loadImage("cohetess/cohete7.png");
    nivel9[2]=loadImage("cohetess/cohete8.png");
    nivel9[3]=loadImage("cohetess/cohete9.png");
    nivel9[4]=loadImage("cohetess/cohete10.png");
    nivel10[0]=loadImage("cohetess/cohete11.png");
    nivel10[1]=loadImage("cohetess/cohete12.png");
    nivel10[2]=loadImage("cohetess/cohete13.png");
  }
  void sett() {
    location = new PVector (xa1, ya1);
    velocity = new PVector (2, 1);
    location2 = new PVector (xa2, ya2);
    velocity2 = new PVector (4, 2);
    location3 = new PVector (xa3, ya3);
    velocity3 = new PVector (2, 2);
  }
  void dibujo1() {

    location.add(velocity);
    location2.add(velocity2);
    location3.add(velocity3);
    if ((location.x>900-radius)||(location.x<0+radius)) {
      velocity.x=velocity.x*-1;
    }
    if ((location.y>700-radius)||(location.y<0+radius)) {
      velocity.y=velocity.y*-1;
    }
    if ((location2.x>900-radius)||(location2.x<0+radius)) {
      velocity2.x=velocity2.x*-1;
    }
    if ((location2.y>700-radius)||(location2.y<0+radius)) {
      velocity2.y=velocity2.y*-1;
    }
    if ((location3.x>900-radius)||(location3.x<0+radius)) {
      velocity3.x=velocity3.x*-1;
    }
    if ((location3.y>700-radius)||(location3.y<0+radius)) {
      velocity3.y=velocity3.y*-1;
    }

    image(asteroide1, location.x, location.y, radius*2, radius*2);
    image(asteroide2, location2.x, location2.y, radius*2, radius*2);
    image(asteroide3, location3.x, location3.y, radius*2, radius*2);
  }
  void move() {

    if (dianoche==true) {
      negro=#C6C6C6;
      colorfondo=#D6EAFF;
    }
    if (dianoche==false) {
      colorfondo=#000000;
      negro=#FFFFFF;
    }


    musicamenu=false;
    if (tutorialcohetes==true && !preguntando) {
      textSize(30);

      if (enes==true) {
        fill(#D6D6D6);
        text("Ayuda al cohete a llegar a la tierra!!!", 500, 420);
        text("Utiliza las flechas para moverlo", 500, 460);
        text("Evita los asteroides o te quitaran puntos", 500, 500);
        text("Con 7 puntos o más pasas el nivel", 500, 540);
      }
      if (enes==false) {
        fill(#D6D6D6);
        text("Help the rocket ship to reach the Earth", 500, 420);
        text("Use arrow keys to move it", 500, 460);
        text("Avoid asteroids or they will take you points",500, 500);
        text("With 7 points or more you complete level :)", 500, 540);
      }
    }
    if (keyPressed && (key == CODED)  && !preguntando ) {  //condicional si se oprime una tecla

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


    if (salircohete) {
      countercoheteee++;

      if (countercoheteee==20) {
        tiempoEsperar_ms=0;
        salircohete=false;
        countercoheteee=0;
      }
    }


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

    if (reset) {
      cont=0;
      i=0;
      selector=0;
      preguntando=false;
      reset=false;
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
  void mousePressed() {
    if (press1==false  && jugandoCohetes==true&&preguntando==true) {

      if (mouseX>=300&&mouseX<=700&&mouseY>=350&&mouseY<=450) {////////iz

        if (j<=0.5 && !puntoContado ) {
          a=#54FF46;
          cont=cont+3;
          puntoContado=true;
        }
        if (j>=0.5) {
          a=#FF3195;
        }
        press1=true;
      } else {
        // if(preguntando==true){
        if (mouseX>=300&&mouseX<=700&&mouseY>=470&&mouseY<=570) {


          if (j>=0.5 && !puntoContado) {
            b=#54FF46;

            cont=cont+3;
            puntoContado=true;
          }
          if (j<=0.5) {
            b=#FF3195;
          }
        }

        press1=true;
      }
    }
    // }



    if (mouseX>=300&&mouseX<=700&&mouseY>=470&&mouseY<=570&&preguntando==true) {
      salircohete=true;
    } else if (mouseX>=300&&mouseX<=700&&mouseY>=350&&mouseY<=450&&preguntando==true) {
      salircohete=true;
    }
  }
  void punto() { 
    if ((dist(x1, y1, location.x, location.y)<=75)) {
      cont=cont-1;

      do {
        location.x = random(30, 770);
        location.y =random(30, 670);
        location.add(velocity);
        if ((location.x>900-radius)||(location.x<0+radius)) {
          velocity.x=velocity.x*-1;
        }
        if ((location.y>700-radius)||(location.y<0+radius)) {
          velocity.y=velocity.y*-1;
        }
      } while (dist(x1, y1, location.x, location.y)<=120);
    }

    if ((dist(x1, y1, location2.x, location2.y)<=75)) {
      cont=cont-1;


      do {

        location2.x = random(30, 770);
        location2.y = random(30, 670);
        ;
        location2.add(velocity2);
        if ((location2.x>900-radius)||(location2.x<0+radius)) {
          velocity2.x=velocity2.x*-1;
        }
        if ((location2.y>700-radius)||(location2.y<0+radius)) {
          velocity2.y=velocity2.y*-1;
        }
      } while (dist(x1, y1, location2.x, location2.y)<=120);
    }

    if ((dist(x1, y1, location3.x, location3.y)<=75)) {
      cont=cont-1;

      do {

        location3.x = random(30, 770);
        ;
        location3.y = random(30, 670);
        location3.add(velocity3);
        if ((location3.x>900-radius)||(location3.x<0+radius)) {
          velocity3.x=velocity3.x*-1;
        }
        if ((location3.y>700-radius)||(location3.y<0+radius)) {
          velocity3.y=velocity3.y*-1;
        }
      } while (dist(x1, y1, location3.x, location3.y)<=120);
    }

    if (dist(x1, y1, xp, yp)<=120) {//
      if (!preguntando) {
        t1 = millis();
        preguntando = true;
      }
      t2 = millis();
      if (t2 - t1 < tiempoEsperar_ms ) {
        velocity = new PVector (0, 0);
        velocity2 = new PVector (0, 0);
        velocity3 = new PVector (0, 0);
        //if(press1==false){
        if (musicaa) {
          if ( cohetestiktak.position() == cohetestiktak.length() )
          {
            cohetestiktak.rewind();
            cohetestiktak.play();
          } else {
            cohetestiktak.play();
          }
        }
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
        if(nivel==7){
          imageMode(CENTER);
          image(nivel7[selector],500,200,400,200);
          
        }
        if(nivel==8){
          imageMode(CENTER);
          image(nivel8[selector],500,200,400,200);
          
        }
        if(nivel==9){
          imageMode(CENTER);
          image(nivel9[selector],500,200,400,200);
          
        }
        if(nivel==10){
          imageMode(CENTER);
          image(nivel10[selector],500,200,400,200);
          
        }
        else{
        text(preguntas[selector+op], 500, 200);}
        if (enes) {
          text("La respuesta es:", 500, 300);
        } else if (enes==false) {
          text("Answer is:", 500, 300);
        }
        /////////////////////////////////////////////

        fill(a);
        rect(300, 350, 400, 100);//////////////////////////////////////////////
        fill(b);  
        rect(300, 470, 400, 100);////////////////////////////////////////////////////
        fill(0);
        if(nivel!=4){
        if (j<=0.5) {
          text(correctas[selector+op], 500, 400);
          text(incorrectas[selector+op], 500, 520);
        }
        if (j>=0.5) {
          text(incorrectas[selector+op], 500, 400);
          text(correctas[selector+op], 500, 520);
        }}
        if(nivel==4){
          if(enes){
           if (j<=0.5) {
          text(correctas[selector+op], 500, 400);
          text(incorrectas[selector+op], 500, 520);
        }
        if (j>=0.5) {
          text(incorrectas[selector+op], 500, 400);
          text(correctas[selector+op], 500, 520);
        } 
            
          }
          else if(enes==false){
           if (j<=0.5) {
          text(correctasI[selector+op], 500, 400);
          text(incorrectasI[selector+op], 500, 520);
        }
        if (j>=0.5) {
          text(incorrectasI[selector+op], 500, 400);
          text(correctasI[selector+op], 500, 520);
        } 
            
          }
          
        }
        textSize(50);
        text(20-((t2-t1)/1000), 700, 100);
        t2 = millis();


        if (tutorialcohetes==true) {
          textSize(25);

          if (enes==true) {
            fill(0);
            text("Escoje la respuesta correcta en menos de 10 segundos!", 500, 590);
          }
          if (enes==false) {
            fill(0);
            text("choose the correct answer in less than 10 seconds!", 500, 590);
          }
        }
      } else {
        //Cambiar de posicion el punto
        do {
          xp = random(30, 770);
          yp = random(30, 670);
          j=random(0, 1);
        } while (dist(x1, y1, xp, yp)<=120);
        velocity = new PVector (5, 2);
        velocity2 = new PVector (2, 5);
        velocity3 = new PVector (4, 1);
        tutorialcohetes=false;
        a=#FFFFFF;
        b=#FFFFFF;
        preguntando = false;
        press1=false; 
        puntoContado=false;
        tiempoEsperar_ms = 20000;
        selector ++;
        if(nivel==7 || nivel ==10){
         if (selector>2) {
          selector= 2;

          if (cont>=3) {
            todosjuegos[nivel]=true;
            if (musicaa) {
              levelcompleted.play();
            }
            fill(#FF00A6);
            textSize(50);
            if (enes==false) {
              text("LEVEL COMPLETED", 500, 300);
            } else if (enes) {
              text("NIVEL COMPLETO", 500, 300);
            }
          } else {
            if (musicaa) {
              gameover.play();
            }
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
        else if(nivel==11 || nivel ==12 || nivel==8 || nivel==9){
         if (selector>4) {
          selector= 4;

          if (cont>=3) {
            todosjuegos[nivel]=true;
            if (musicaa) {
              levelcompleted.play();
            }
            fill(#FF00A6);
            textSize(50);
            if (enes==false) {
              text("LEVEL COMPLETED", 500, 300);
            } else if (enes) {
              text("NIVEL COMPLETO", 500, 300);
            }
          } else {
            if (musicaa) {
              gameover.play();
            }
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
        else if (selector>9) {
          selector= 9;

          if (cont>=7) {
            todosjuegos[nivel]=true;
            if (musicaa) {
              levelcompleted.play();
            }
            fill(#FF00A6);
            textSize(50);
            if (enes==false) {
              text("LEVEL COMPLETED", 500, 300);
            } else if (enes==true) {
              text("NIVEL COMPLETO", 500, 300);
            }
          } else {
            if (musicaa) {
              gameover.play();
            }
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
}
