class ranaboba{
  int nivel;
  ranaboba(int _nivel){
    nivel=_nivel;
    
    
  }
  
  void dibujar(){

    if(dianoche==true){
      ranaboba=ranabobad;
      ranabobaA=ranabobadA;
      
    }
    else if(dianoche==false){      
       ranaboba=ranaboban;
      ranabobaA=ranabobanA;
    }
    imageMode(CENTER);
    image(ranaboba,500,500,400,320);
    
    
    
  }
  
  
  
  
}
