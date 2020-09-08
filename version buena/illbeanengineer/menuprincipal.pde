
void menuprincipal(){

musicamenu=true;
 
  
  if(dianoche==true){
    
    nubeee1=true; nubeee2=true; solsol=true; pastoo=true; flores=true; estrellitas=false; gusanitoo=false; cohetesss=false; planetas=false;lunaaa=false;
    
    blanco=color(#FFFFFF);
    negro=color(#000000);
    illbe=color(#61B0FC);
    
colorfondo=color(#E8F4FF);
  }

  
  
  
else  if(dianoche==false){
  nubeee1=false; nubeee2=false; solsol=false; pastoo=false; flores=false; estrellitas=true; gusanitoo=false; cohetesss=true; planetas=true; lunaaa=true;
  colorfondo = color(0);
  blanco=color(#000000);
  negro=color(#EDEDED);
  illbe=color(#0F00A0);
}

if(seecredits==false){

textSize(80);
fill(illbe);
textAlign(CENTER, CENTER);
if(idioma==false){
text("I'LL BE AN ENGINEER",500,310);}
else if(idioma==true){
text("MINI INGENIEROS",500,310);
}

 strokeWeight(strokewp);
stroke(strokeplay);
fill(blanco);
ellipse(500,430,90,90);
noStroke();
fill(play);
triangle(480,400,480,460,535,430);
image(edad,0,550,100,150);


if(animacionplay==true){
 noStroke();
  if(dianoche==true){
fill(color(sizeplayyyy,99,99));
sizeplayyyy+=4;
  if(sizeplayyyy>=120){
    sizeplayyyy=0;
  }
  }
  else if(dianoche==false){
  fill(#D3D3D3);  
  }
  
  ellipse(500,430,sizeplay,sizeplay);
  sizeplay+=25;
 if(sizeplay>=2000){
        playy=true;
        animacionplay=false;
        
      }}
if(mouseX>=435 && mouseX<=545 && mouseY>=385 && mouseY<=475){
  if(dianoche){
colorMode(HSB, 100);
play = color(countercolor,99,99);
strokeplay = color(countercolor+10,99,99);}
else if (dianoche==false){
  play = color(#CBD9ED);
strokeplay = color(#2254A2);
}
}
else{
play = color(negro);
strokeplay = color(negro);  
}}




}




  
