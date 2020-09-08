
void menuniveles() {
  musicamenu=true;
  imageMode(CORNER);
  colorMode(HSB, 100);

  xsettings=950;
  ysettings=90;
  xmusic=880;
  ymusic=50;
  xidioma=880;
  yidioma=120;
  xdianoche=300;
  ydianoche=-250;

  if (dianoche==true) {
    burbujanormal=burbujanormald;
    blanco=color(#FFFFFF);
    negro=color(#000000);
    colorfondo=color(#E8F4FF);
    floresmenuu=true;
    nubeee1=true; 
    nubeee2=true; 
    solsol=true; 
    pastoo=true; 
    flores=true; 
    estrellitas=false; 
    gusanitoo=true; 
    cohetesss=false; 
    planetas=false;
    shipss=false;
    rayoo=false; 
    thinkerr=false;
    lunaaa=false;
  } else if (dianoche==false) {
    burbujanormal=burbujanormalN;
    colorfondo=color(#000000);
    blanco=color(#000000);
    negro=color(#FFFFFF);
    floresmenuu=false;
    nubeee1=false; 
    nubeee2=false; 
    solsol=false; 
    pastoo=false; 
    flores=false; 
    estrellitas=true; 
    gusanitoo=true; 
    cohetesss=true; 
    planetas=true;
    shipss=false;
    rayoo=false; 
    thinkerr=false;
    lunaaa=true;

    yluna=0;
    xp1=60; 
    yp1=520;
    xpp2=730; 
    ypp2=50;
  }
  if (next<6) {

    if (next<4) {
      w+=20;
      h=8*w/5;
      x+=5;
      y+=5;
      if (x>=200) {
        x=200;
      }
      if (y>=140) {
        y=140;
      }
      yn1=40;
      yn2=40;
      ysol=0;
      ypasto=550;
      yflor1=490;
      yflor2=500;
      yflor3=470;
      yflor4=520;
      yflor5=480;
      ynext=0;
      xnext=0;
    }
    if (next>=4) {

      w=1000;
      h=8*w/5;
      y-=5;
      x-=5;
      yp1=yimg+720;
      yp2=yimg+150;
      yn1=yimg+40;
      yn2=yimg+40;
      ysol=yimg;
      yluna=yimg;
      ypasto+=5;
      yflor1+=5;
      yflor2+=5;
      yflor3+=5;
      yflor4+=5;
      yflor5+=5;
      ynext=50;
      xnext=-70;
      if (y<=yimg) {
        y=yimg;
        ypasto=1500+yimg;
        yflor1=1475+yimg;
        yflor2=1475+yimg;
        yflor3=1475+yimg;
        yflor4=1475+yimg;
        yflor5=1475+yimg;
        ypasto=1515+yimg;
      }
      if (x<=0) {
        x=0;
      }
    }
    if (next==5) {
      y=yimg;
    }

    if (w>=1000) {
      w=1000;

      if (next==0) {
        if (idioma==false) {
          ingles1.escribir();
        } else if (idioma==true) {
          espanol1.escribir();
        }
      }

      if (next==1) {
        if (idioma==false) {
          ingles2.escribir();
        } else if (idioma==true) {
          espanol2.escribir();
        }
      }

      if (next==2) {
        if (idioma==false) {
          ingles3.escribir();
          ingles4.escribir();
        } else if (idioma==true) {
          espanol3.escribir();
          espanol4.escribir();
        }
      }
      if (next==3) {
        if (idioma==false) {
          ingles5.escribir();
        } else if (idioma==true) {
          espanol5.escribir();
        }
      }

      if (next==4 && y==yimg) {
        if (idioma==false) {
          ingles6.escribir();
          ingles7.escribir();
        } else if (idioma==true) {
          espanol6.escribir();
          espanol7.escribir();
        }
      }

      if (next==5) {


        if (yimg>-950) {
          fill(negro);
          rect(235, 270, 15, 50);
          triangle(220, 320, 265, 320, 242, 335);
        }
        if (yimg<=-950 && jugarnivel[0]==false) {
          strokeWeight(15);
          if (dianoche) {
            stroke(countercolor, 99, 99);
          } else if (dianoche==false) {
            stroke(#FFFFFF);
          }
          line(460, 380, 560, yimg+1380);
          if (dianoche) {
            fill(countercolor, 99, 99);
          } else if (dianoche==false) {
            fill(#FFFFFF);
          }
          noStroke();
          triangle(562, yimg+1360, 550, yimg+1395, 590, yimg+1390);
        }  

        if (idioma==false) {
          ingles8.escribir();
          if (yimg<=-950) {
            ingles9.escribir();
          }
        } else if (idioma==true) {
          espanol8.escribir();
          if (yimg<=-950) {
            espanol9.escribir();
          }
        }
      }


      if (next<5 ) {
        strokeJoin(ROUND);
        fill(negro);
        stroke(negro);
        textSize(27);
        rect(272+xnext, 300+ynext, 80, 30);
        strokeJoin(SQUARE);
        fill(blanco);
        textAlign(CENTER);
        if (idioma==false) {
          text("next", 313+xnext, 325+ynext);
        } else if (idioma==true) {
          text("sig.", 316+xnext, 325+ynext);
        }
      }

      if (next<=5 && next>0) {
        stroke(negro);
        strokeJoin(ROUND);
        fill(negro);
        rect(272+xnext, 340+ynext, 80, 30);
        strokeJoin(SQUARE);
        fill(blanco);
        textSize(27);
        textAlign(CENTER);
        if (idioma==false) {
          text("back", 313+xnext, 367+ynext);
        } else if (idioma==true) {
          text("volver", 313+xnext, 367+ynext);
        }
      }
    }
  }




  if (next>=5 && minijuegos ==false ) {
    salir=true;
    w=1000;
    h=8*w/5;
    yp1=yimg+720;
    ypp2=yimg+150;
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
    entergame1=false;
    entergame2=false;
    entergame3=false;


    nivel1.niveles(); 
    if (next>=10) {
      nivel2.niveles(); 
      nivel3.niveles(); 
      nivel4.niveles(); 
      nivel5.niveles(); 
      nivel6.niveles(); 
      nivel7.niveles(); 
      nivel8.niveles();
      nivel9.niveles(); 
      nivel10.niveles();
      nivel11.niveles(); 
      nivel12.niveles();
    }
    if (animacionjugar==true) {

      if (dianoche==false) {
        fill(#D3D3D3);
      } else if (dianoche) {
        fill(color(sizejugarrr, 99, 99));
      }
      noStroke();
      ellipse(500, 430, sizejugar, sizejugar);
      sizejugarrr+=4;
      if (sizejugarrr>=120) {
        sizejugarrr=0;
      }
      sizejugar+=35;
    }
  } else if (minijuegos==true) {

    salir=false;
    if (menuminijuegos==true) {
      floresmenuu=false;
      lunaaa=false;
      nubeee1=false;
      nubeee2=false;
      solsol=false; 
      pastoo=false; 
      flores=false; 
      estrellitas=true; 
      gusanitoo=false; 
      cohetesss=false; 
      planetas=false;
      shipss=false;
      rayoo=false; 
      thinkerr=false;

      if (dianoche==true) {
        colorfondo=color(#E0EEFF);
      } else if (dianoche==false) {
        colorfondo=color(blanco);
      }
      textAlign(CENTER, CENTER);  
      fill(#7EA4F0);
      if (enes==false) {
        textSize(40);
        text("Choose a game", 750, 50);
        text("LESSON "+leccion, 250, 50);
      } else if (enes==true) {
        textSize(30);
        text("Elije un juego", 750, 50);
        text("LECCIÓN "+leccion, 250, 50);
      }
      imageMode(CENTER);
      image(burbujanormal, 750, 200, 120, 120);
      image(cohete1, 750, 400, 120, 120);
      copy(lolaboa, 300, 80, 200, 200, 700, 500, 120, 120);
      if (dianoche) {
        stroke(0);
      } else if (dianoche==false) {
        stroke(#E3E3E3);
      }
      strokeWeight(10);
      line(500, 0, 500, 700);
      if (dianoche) {
        image(lecciondia, 250, 380, 490, 600);
      } else if (dianoche==false) {
        image(leccionnoche, 250, 380, 490, 600);
      }
      if (jugando==false) {
        if (jugarnivel[0]) {
          leccion=1;
          fill(0);
          if (enes) {
            text("Sumas y restas", 250, 160);
            textSize(20);
            text("No olvides las", 130, 230);
            text("reglas de los signos", 130, 260);
            text("Ejemplo", 375, 230);
            text("Recta numerica", 250, 500);
          } else if (enes==false) {
            text("Add & substract", 250, 160);
            textSize(20);
            text("Don't forget", 130, 230);
            text("sign rules", 130, 260);
            text("Example", 375, 230);
            text("Number line", 250, 500);
          }
          text("- x - = +", 130, 290);
          text("+ x - = -", 130, 310);
          text("+ x + = +", 130, 340);
          text("1-(-1)=2", 375, 260);

          image(rectanumerica, 250, 550, 400, 120);
        } else if (jugarnivel[1]) {
          fill(0);
          if (enes) {
            textSize(25);
            text("Multiplicacion y Division", 250, 160);
            textSize(20);
            text("No olvides las", 130, 230);
            text("reglas de los signos", 130, 260);
            text("Ejemplo", 375, 230);
            text("Recta numerica", 250, 500);
          } else if (enes==false) {
            textSize(25);
            text("Multiplication & division", 250, 160);
            textSize(20);
            text("Don't forget", 130, 230);
            text("sign rules", 130, 260);
            text("Example", 375, 230);
            text("Number line", 250, 500);
          }
          text("- x - = +", 130, 290);
          text("+ x - = -", 130, 310);
          text("+ x + = +", 130, 340);
          text("2x(-1)=-2", 375, 260);

          image(rectanumerica, 250, 550, 400, 120);
          leccion=2;
        } else if (jugarnivel[2]) {

          fill(0);
          if (enes) {
            textSize(25);
            text("Multiplicacion , Division,", 250, 160);
            text("Sumas y restas", 250, 200);
            textSize(20);
            text("Practica", 250, 250);
          } else if (enes==false) {
            textSize(25);
            text("Multiplication, division", 250, 160);
            text("Add and substract", 250, 200);
            textSize(20);
            text("Practice", 250, 250);
          }
          leccion=3;
        } else if (jugarnivel[3]) {
          fill(0);
          if (enes) {
            textSize(25);
            text("Clasificación de números", 250, 120);
            image(numerosE, 250, 380, 400, 450);
          } else if (enes==false) {
            textSize(25);
            text("Number classification", 250, 120);
            image(numerosI, 250, 380, 400, 450);
          }
          leccion=4;
        }
      }
    } else {
      floresmenuu=false;
      lunaaa=false;
      nubeee1=false;
      nubeee2=false;
      solsol=false; 
      pastoo=false; 
      flores=false; 
      estrellitas=false; 
      gusanitoo=false; 
      cohetesss=false; 
      planetas=false;
      shipss=false;
      rayoo=false; 
      thinkerr=false;
    }

    if (jugarnivel[0]==true && nivelesss[0]==true ) {//////////////////////////////NIVEL1
      next=10;

      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel1.dibujar();
      }

      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel1.move();
        cohetenivel1.dibujo();
        cohetenivel1.collide();
        cohetenivel1.dibujo1();
        cohetenivel1.punto();

        //cohetenivel1.sett();
      } else {
        jugandoCohetes = false;
      }

      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel1.dibujar();
      }
    } else if (jugarnivel[1]==true && nivelesss[1]==true ) {//////////////////////////////////NIVEL2

      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel2.dibujar();
      }

      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel2.move();
        cohetenivel2.dibujo();
        cohetenivel2.collide();
        cohetenivel1.dibujo1();
        cohetenivel2.punto();
        ;
      } else {
        jugandoCohetes = false;
      }

      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel2.dibujar();
      }
    } else if (jugarnivel[2]==true && nivelesss[2]==true) {

      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel3.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel3.move();
        cohetenivel3.dibujo();
        cohetenivel3.collide();
        cohetenivel3.dibujo1();
        cohetenivel3.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel3.dibujar();
      }
    } else if (jugarnivel[3]==true && nivelesss[3]==true) {


      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel4.dibujar();
      }

      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel4.move();
        cohetenivel4.dibujo();
        cohetenivel4.collide();
        cohetenivel4.punto();
      } else {
        jugandoCohetes = false;
      }

      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel4.dibujar();
      }
    } else if (jugarnivel[4]==true && nivelesss[4]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel5.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel5.move();
        cohetenivel5.dibujo();
        cohetenivel5.collide();
        cohetenivel5.dibujo1();
        cohetenivel5.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel5.dibujar();
      }
    } else if (jugarnivel[5]==true && nivelesss[5]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel6.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel6.move();
        cohetenivel6.dibujo();
        cohetenivel6.collide();
        cohetenivel6.dibujo1();
        cohetenivel6.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel6.dibujar();
      }
    } else if (jugarnivel[6]==true && nivelesss[6]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel7.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel7.move();
        cohetenivel7.dibujo();
        cohetenivel7.collide();
        cohetenivel7.dibujo1();
        cohetenivel7.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel7.dibujar();
      }
    } else if (jugarnivel[7]==true && nivelesss[7]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel8.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel8.move();
        cohetenivel8.dibujo();
        cohetenivel8.collide();
        cohetenivel8.dibujo1();
        cohetenivel8.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel8.dibujar();
      }
    } else if (jugarnivel[8]==true && nivelesss[8]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel9.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel9.move();
        cohetenivel9.dibujo();
        cohetenivel9.collide();
        cohetenivel9.dibujo1();
        cohetenivel9.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel9.dibujar();
      }
    } else if (jugarnivel[9]==true && nivelesss[9]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel10.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel10.move();
        cohetenivel10.dibujo();
        cohetenivel10.collide();
        cohetenivel10.dibujo1();
        cohetenivel10.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel10.dibujar();
      }
    } else if (jugarnivel[10]==true && nivelesss[10]==true ) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel11.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel11.move();
        cohetenivel11.dibujo();
        cohetenivel11.collide();
        cohetenivel11.dibujo1();
        cohetenivel11.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel11.dibujar();
      }
    } else if (jugarnivel[11]==true && nivelesss[11]==true) {
      if (entergame1==true) {
        menuminijuegos=false;
        burbujasnivel12.dibujar();
      }
      if (entergame2==true) {
        jugandoCohetes = true;
        menuminijuegos=false;
        cohetenivel12.move();
        cohetenivel12.dibujo();
        cohetenivel12.collide();
        cohetenivel12.dibujo1();
        cohetenivel12.punto();
      } else {
        jugandoCohetes = false;
      }
      if (entergame3==true) {
        menuminijuegos=false;
        lolaboanivel12.dibujar();
      }
    }
  }
}


class botones {


  int xnivel; 
  ; 
  int ynivel; 
  int nivel;
  color[] strokeniveles= new color[15];
  botones(int _xnivel, int _ynivel, int _nivel) {

    xnivel=_xnivel;
    ynivel=_ynivel;
    nivel = _nivel;

    for (int i=0; i<12; i++) {
      strokeniveles[i]=color(negro);
      nivelesss[i]=true;
      jugarnivel[i]=false;
    }
  }
  void niveles() {


    if (nivelesss[nivel]==true) {
      if (mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60) {
        if (dianoche) {
          colorMode(HSB, 100);
          strokeniveles[nivel]= color(countercolor, 99, 99);
        } else if (dianoche==false) {
          strokeniveles[nivel]= color(#A28BFF);
        }
      } else {
        strokeniveles[nivel] = color(negro);
      }
    } else if (nivelesss[nivel]==false) {
      strokeniveles[nivel]=color(#E5E5E5);
    }
    fill(blanco);

    strokeWeight(7);
    stroke(strokeniveles[nivel]);
    rect(xnivel, ynivel+yimg, 60, 60);
    fill(strokeniveles[nivel]);
    textAlign(CENTER, CENTER);
    textSize(40);
    text(nivel+1, xnivel+30, ynivel+30+yimg);

    if (sizejugar>=1500) {
      minijuegos=true;
      menuminijuegos=true;
      sizejugar=0;
      animacionjugar=false;
    }
  }







  void mousePressed() {


    if (nivelesss[nivel]==true && mouseX>=xnivel && mouseX<=xnivel+60 && mouseY>=ynivel+yimg && mouseY<=ynivel+yimg+60 ) {
      for (int i=0; i<nivel; i++) {
        jugarnivel[i]=false;
      }
      for (int j=nivel; j<12; j++) {
        jugarnivel[j]=false;
      }
      animacionjugar=true;
      jugarnivel[nivel]=true;
    }
  }
}

class textos {

  String texttt[]; 
  int inicial; 
  ; 
  int numletras; 
  int finall;  
  int ytexto;  
  int tamanotext; 
  int u=0; 
  int countertexto;
  textos(String texttt2[], int inicial2, int numletrass, int finall2, int ytexto2, int tamanotext2, int u2, int countertexto2) {
    texttt=texttt2;
    finall=finall2;
    ytexto=ytexto2;
    tamanotext=tamanotext2;
    inicial=inicial2;
    numletras=numletrass;
    countertexto=countertexto2;
    u=u2;
  }
  void escribir() {
    noFill();
    stroke(negro);
    strokeWeight(5);
    if (next<4) {
      arc(305, 190, 270, 160, 1.10, TWO_PI +0.31);
      line(455, 265, 434, 216);
      line(455, 265, 366, 261);
    }
    textSize(tamanotext);
    fill(negro);
    textAlign(CENTER);

    if (countertexto>=u*2 && countertexto<(u+1)*2) {
      text(texttt[inicial], 300+xnext, ytexto+ynext);
      ;
    }
    countertexto++;
    if (countertexto==(u+1)*2) {
      u++;
      inicial++;
    }



    if (countertexto<numletras*2) {
      if (counter>=0 && counter<4) {
        lolaboa = lolabocaabierta;
      } else if (counter>=4 && counter<8) {
        lolaboa = lolabocacerrada;
      }
      counter++;
      if (counter==8) {
        counter=0;
      }
    }






    if (u==numletras) {
      u=numletras;
      countertexto=u*2;
      lolaboa = lolabocacerrada;
      inicial=finall;
    }
  }
}
