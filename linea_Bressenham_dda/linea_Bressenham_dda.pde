void setup(){
  size(1280,700);
 
}
void draw(){
Linea mxb= new Linea(0,450);//Bressenham
  Linea V= new Linea();
  Linea PM= new Linea(200,600,700,700);//dda
  mxb.dibujar();
  PM.Bresenham();
  V.vertical(300.0);
}
