class burbujas {
 float[] x2=new float[6] ;// ancho de las burbujas
 float[] y1=new float[6] ;//posición en y
 float[] x1={100,300,500,700,900,1100} ;//posición inicial en x
 String[]op={"√4=2","√4=1","√4=12/6","√4=2/4","√4=(-1)","√4=2"};//ecuaciones
 float y2=random(80,120);//alto

  void condiciones(){
 for (int i = 0; i < x2.length; i++) {
x2[i]=random(80,120);
  }
  for (int j = 0; j < y1.length; j++) {
y1[j]=random(-500,0);
  }
    
  }
  void dibujo (){
        for (int i = 0; i < x2.length; i++) {
       //burbuja.t();
  y1[i]=y1[i]+0.5;
  fill(81,209,246);
ellipse(x1[i],y1[i],x2[i],y2);//dimensiones de la elipse
    fill(0);
  textSize(15);
  text(op[i],x1[i]-x2[i]/3,y1[i]);//texto de las ecuaciones

  if(y1[i]>=height){
   setup();
  }
  }
  }
}
