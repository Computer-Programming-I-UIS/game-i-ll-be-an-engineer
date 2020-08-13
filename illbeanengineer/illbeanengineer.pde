PImage img;
int y=1;
float yimg=0;
void setup(){
  background(255);
  size(1000, 700);
  
 img = loadImage("gusanito.png");
}
void draw() {
  background(255);
  image(img, 0, yimg);
  fill(0);
  ellipse(100,y,100,100);
  y+=5;
  
}
void mouseWheel(MouseEvent event){
  float e = event.getCount();
yimg+=e;
}
