ArrayList<TEXTBOX> textboxes =new ArrayList<TEXTBOX>();

public void settings(){
  size(400, 250);
  InitLayout();

}
void draw(){
  background(100);
  
  for(TEXTBOX t : textboxes){
    t.DRAW();  
  }
}

void InitLayout(){
  TEXTBOX receptor = new TEXTBOX();
     receptor.W =300;
     receptor.H = 100;
     receptor.X =(width-receptor.W)/2;
     receptor.Y = 50;
     
     textboxes.add(receptor);
     
  TEXTBOX mensaje = new TEXTBOX();

}
void mousePressed(){
  for(TEXTBOX t : textboxes){
    t.PRESSED(mouseX, mouseY);  
  }
}
void keyPressed(){
  for(TEXTBOX t : textboxes){
    t.KEYPRESSED(key, keyCode);  
  }
}
