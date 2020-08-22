
void minijuegos(){
  
  if(nivelesss[0]==true){
    colorfondo=color(#FFFFFF);
    
    
  }
  
  
}





class burbujas {
  int score=0;
 float[] x2=new float[15] ;// ancho de las burbujas
 float[] y1=new float[15] ;//posición en y
 float y2=random(80,120) ;//posición en y
 float[] x1={80,160,240,320,400,480,560,640,720,800,880,960,1040,1120,1200} ;//posición inicial en x
 String[]op={"√4=2","√196=14","√4=12/6","15^2=225","√(-1)=(-1)","√4000=20","1","1","1","1","1","1","1","1","1"};
int []d={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
int [] a={81,81,81,81,81,81,81,81,81,81,81,81,81,81,81};
int []b={209,209,209,209,209,209,209,209,209,209,209,209,209,209,209};
int []c={246,246,246,246,246,246,246,246,246,246,246,246,246,246,246,};
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
      // ellipseMode(RADIUS);
  y1[i]=y1[i]+0.5;
  fill(a[i],b[i],c[i]);
  noStroke();
ellipse(x1[i],y1[i],x2[i],y2);//dimensiones de la elipse
   // fill(d[i]);
  
  /*if(y1[i]>=height){
   setup();
  }*/
  if (mouseX>=x2[i]-x1[i]&&mouseX<=x1[i]+x2[i]){
            if (mouseY>=y2-y1[i]&&mouseY<=y1[i]+y2){
                  if (mouseButton==LEFT){
            a[i]=b[i]=c[i]=255;
             d[i]=255;
            }
          }
        }
        } 
  }
  }

/* if (mouseX>=-x2[i]+x1[i]&&mouseX<=x1[i]+x2[i]){
            if (mouseY>=-y2+y1[i]&&mouseY<=y1[i]+y2){
                  if (mouseButton==LEFT){
            a[i]=b[i]=c[i]=255;
            

            }*/

 
