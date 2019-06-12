void setup(){
  size(500,500);
  
  ArrayList<Vertice> vertices=new ArrayList<Vertice>();
  Vertice vv1;
  Vertice vv2;
  Vertice vv3;
  
  //color c= color(100,255,0);
  
  // Existen 2 constructores uno para 4 parametros la cual es la linea con los 4 puntos, (xi,yi,xf,yf)
  // y existe otro con solo dos parametros en el cual solo se da el punto de corte con
  // Y que se toma como b y la pendiente m

  Lineaa l1= new Lineaa(250,250,350,300);
  Lineaa l2= new Lineaa(250,250,300,350);
  Lineaa l3= new Lineaa(250,250,200,350);
  Lineaa l4= new Lineaa(250,250,150,300);
  Lineaa l5= new Lineaa(250,250,150,200);
  Lineaa l6= new Lineaa(250,250,200,150);
  Lineaa l7= new Lineaa(250,250,300,150);
  Lineaa l8= new Lineaa(250,250,350,200);
  
  //Las lineas de brezenham constan de 4 parametros los cuales son los 4 puntos(iniciales y finales)
  // de la recta.
  
  Brezenham b1= new Brezenham(0,0,250,100);
  Brezenham b2= new Brezenham(0,0,100,250);
  Brezenham b3= new Brezenham(20,30,250,200);
  Brezenham b4= new Brezenham(120,130,300,350);
  
  Circulo c1=new Circulo(300,150,100);
  
  /*Vertice v[] = new Vertice[3];
  v[0]=new Vertice(100,100);
  v[1]=new Vertice(200,100);
  v[2]=new Vertice(150,200);*/
  vertices.clear();
  color rojo=color(255,0,0);
  color c=color(0,0,0);
  vertices.add(new Vertice(100,100));
  vertices.add(new Vertice(100,200));
  vertices.add(new Vertice(200,200));
  vertices.add(new Vertice(200,100));
  Poligon2 p = new Poligon2(vertices);
  p.setColorB(c);
  p.Graficar();
  p.Rellenar(rojo);
  //p.Relleno2(110,150,rojo);
  
  // Deje comentadas las primeras cuatro lineas qeu son por DDA para qeu se puedan ver 
  // mejor las que son por brezenham pero igualmete ambas funcionanan
  /*l1.Graficar();
  l2.Graficar();
  l3.Graficar();
  l4.Graficar();
  l5.Graficar();
  l6.Graficar();
  l7.Graficar();
  l8.Graficar();*/
  
  //color c = color(0,255,0); 
  color r = color(0,0,255);
  c1.setColorB(c);
  //c1.setColorR(r);
  //c1.Graficar();
  
}

void draw(){
  
}
/*void mouseClicked(){
  color k=color(255,0,0);
  Fillf f=new Fillf();
  f.FlodFill(mouseX,mouseY,k);
  
}*/
