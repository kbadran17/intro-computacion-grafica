/*Pedro Barrera 6000259
Kevin Badrán Ramírez 6000258*/

void setup(){
  size(500,500);
  colorMode(HSB,100);
  for(int j=0; j<100; j++){
    for(int i=0; i<100; i++){
      stroke(100-i,0,j);
     point(j+200,i+10);
    }
  }
  for(int j=0; j<100; j++){
    for(int i=0; i<100; i++){
      stroke(0,i,j);
     point(j+200,i+110);
    }
  }
  for(int j=0; j<100; j++){
    for(int i=0; i<100; i++){
      stroke(i,100,j);
     point(j+200,i+210);
    }
  }
  
  for(int j=0; j<100; j++){
    for(int i=0; i<100; i++){
      stroke(100,100-j,i);
     point(i+200,j+310);
    }
  }
  
  for(int j=0; j<100; j++){
    for(int i=0; i<100; i++){
      stroke(100-i,j,0);
      point(i+100,j+110);
    }
  }
  
  for(int j=0; j<100; j++){
    for(int i=0; i<100; i++){
      stroke(i,j,100);
      point(i+300,j+110);
    }
  }
}
