
void menuprincipal(){
  
  if(dianoche==true){
    
    nubeee1=true; nubeee2=true; solsol=true; pastoo=true; flores=true; estrellitas=false; gusanitoo=false; cohetesss=true; planetas=false;lunaaa=false;
    
    blanco=color(#FFFFFF);
    negro=color(#000000);
    illbe=color(#61B0FC);
    
colorfondo=color(#E8F4FF);
  }

  
  
  
else  if(dianoche==false){
  nubeee1=false; nubeee2=false; solsol=false; pastoo=false; flores=false; estrellitas=true; gusanitoo=false; cohetesss=true; planetas=true; lunaaa=true;
  colorfondo = color(0);
  blanco=color(#000000);
  negro=color(#A7A7A7);
  illbe=color(#0F00A0);
}



textSize(80);
fill(illbe);
textAlign(CENTER, CENTER);
if(idioma==false){
text("HELLO",500,310);}
else if(idioma==true){
text("HOLA",500,310);
}

 strokeWeight(strokewp);
stroke(strokeplay);
fill(blanco);
ellipse(500,430,90,90);
noStroke();
fill(play);
triangle(480,400,480,460,535,430);
if(animacionplay==true){
fill(color(sizeplayyyy,99,99));
  ellipse(500,430,sizeplay,sizeplay);
  sizeplayyyy+=4;
  if(sizeplayyyy>=120){
    sizeplayyyy=0;
  }
  sizeplay+=25;
 if(sizeplay>=2000){
        playy=true;
        animacionplay=false;
        
      }}
if(mouseX>=435 && mouseX<=545 && mouseY>=385 && mouseY<=475){
colorMode(HSB, 100);
play = color(3*countercohete/2,99,99);
strokeplay = color(3*countercohete/2+10,99,99);}
else{
play = color(negro);
strokeplay = color(negro);  
}
}




  
