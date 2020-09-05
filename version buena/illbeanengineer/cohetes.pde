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
  int t1, t2, tiempoEsperar_ms = 20000;
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
    if(tutorialcohetes==true && !preguntando){
        textSize(30);

        if(enes==true){
        fill(#EFEAFF);
       text("Ayuda al cohete a llegar a la tierra!!!",500,450);
       fill(#EAF2FF);
       text("Utiliza las flechas para moverlo",500,490);
        text("Con 7 puntos o más pasas el nivel",500,540);
      }
      if(enes==false){
        fill(#EFEAFF);
       text("Help the rocket ship to reach the Earth",500,450);
       fill(#EAF2FF);
       text("Use arrow keys to move it",500,490);
        text("With 7 points or more you complete level :)",500,540);
      }       
      }
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
      text("Points ² "+ str(cont), 950, 300);
    }
   
   if(reset){
     cont=0;
      i=0;
      selector=0;
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
         //if(preguntando==true){
      if (mouseX>=300&&mouseX<=700&&mouseY>=350&&mouseY<=450) {////////iz
       
          if (j<=0.5 && !puntoContado ) {
            a=#54FF46;
            cont=cont+1;
            puntoContado=true;
            
        
        }
        if (j>=0.5) {
          a=#FF3195;
        }
        press1=true;
      
       }else {
         // if(preguntando==true){
        if (mouseX>=300&&mouseX<=700&&mouseY>=470&&mouseY<=570) {
          

            if (j>=0.5 && !puntoContado) {
              b=#54FF46;

              cont=cont+1;
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
      tiempoEsperar_ms = 0;
    }
    else if (mouseX>=300&&mouseX<=700&&mouseY>=350&&mouseY<=450&&preguntando==true){
       tiempoEsperar_ms = 0;
    }
 
  }
  void punto() { 
    if (dist(x1, y1, xp, yp)<=120) {//
      if (!preguntando) {
        t1 = millis();
        preguntando = true;
       
      }
      t2 = millis();
      if (t2 - t1 < tiempoEsperar_ms) {
        //if(press1==false){
          if(musicaa){
        if ( cohetestiktak.position() == cohetestiktak.length() )
        {
          cohetestiktak.rewind();
          cohetestiktak.play();
        } else{
          cohetestiktak.play();}}
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
        text(preguntas[selector+op], 500, 200);
        if(enes==false){
        text("La respuesta es:", 500, 300);}
        else if(enes==true){
        text("Answer is:", 500, 300);}
        /////////////////////////////////////////////

        fill(a);
        rect(300, 350, 400, 100);//////////////////////////////////////////////
        fill(b);  
        rect(300, 470, 400, 100);////////////////////////////////////////////////////
        fill(0);
        if(nivel==43){
        textSize(25);}
        if (j<=0.5) {
          text(correctas[selector+op], 500, 400);
          text(incorrectas[selector+op], 500, 520);
        }
        if (j>=0.5) {
          text(incorrectas[selector+op], 500, 400);
          text(correctas[selector+op], 500, 520);
        }
        textSize(50);
        text(10-((t2-t1)/1000), 700, 100);
        t2 = millis();
        
        
        if(tutorialcohetes==true){
        textSize(30);

        if(enes==true){
        fill(#9BC0FF);
       text("Escoje la respuesta correcta en menos de 10 segundos!",500,580);
       
      }
      if(enes==false){
        fill(#9BC0FF);
       text("choose the correct answer in less than 10 seconds!",500,580);
 
          
      }
        }
   
      } 
      
      else {
        //Cambiar de posicion el punto
        do {
          xp = random(30, 770);
          yp = random(30, 670);
          j=random(0, 1);
        } while (dist(x1, y1, xp, yp)<=120);
        tutorialcohetes=false;
        a=#FFFFFF;
        b=#FFFFFF;
        preguntando = false;
         press1=false; 
        puntoContado=false;
        tiempoEsperar_ms = 20000;
        selector ++;
        if (selector>9) {
          selector= 9;

          if (cont>=7) {
            todosjuegos[nivel]=true;
            //levelcompleted.play();
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
  
  
}
