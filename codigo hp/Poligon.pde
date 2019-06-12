class Poligon{
  public ArrayList <Vertice> poligono =new ArrayList<Vertice>();
  public ArrayList <Vertice> borde = new ArrayList<Vertice>();
  public ArrayList<Lineaa> l1 = new  ArrayList<Lineaa>();
  ArrayList <ArrayList> Tbordes = new ArrayList<ArrayList>();
  
  
  color c= color(0,0,0);
   
  Lineaa l;
  Vertice v1;
  Vertice v2;
  
  Vertice getVi(){
    return v1;
  }
  Vertice getVf(){
    return v2;
  }
  void setVi(Vertice vi){
    v1=vi;
  }
  void setVf(Vertice vf){
    v2=vf;
  }
  Poligon(ArrayList<Vertice> b){
    borde=b;
  }
  
  Poligon(Vertice vertice1,Vertice vertice2,Vertice vertice3){
    poligono.add(vertice1);
    poligono.add(vertice2);
    poligono.add(vertice3);
  }
  
  void agregar(int x, int y){
    Vertice v=new Vertice(x,y);
    poligono.add(v);
  }
  
  void agregarB(int x, int y){
    Vertice v=new Vertice(x,y);
    borde.add(v);
  }
  
  void MostrarB(){
    for (int i = 0; i < borde.size(); i++) {
      Vertice vaux=borde.get(i);
      println(vaux.getx(),vaux.gety(),"");
    }
  }
  
  void MostrarP(){
    for (int i = 0; i < poligono.size(); i++) {
      Vertice vaux=poligono.get(i);
      print(vaux.getx(),vaux.gety(),"");
    }
  }
  
  void Ordenar(){
    for (int i = 0; i < poligono.size(); i++) {
      for (int j = 0; j < poligono.size()-1; j++) {
        Vertice v1 =poligono.get(j);
        Vertice v2 =poligono.get(j+1);
        Vertice aux;
        if(poligono.get(j).gety() > poligono.get(j+1).gety()){
          println(v1.gety(),",",v1.getx(),"",v2.gety(),",",v2.getx());
          aux = v1;
          v1 = v2;
          v2=aux;
        }
      }
      println();
    }
  }
  float Max(){
    float mayor=0;
    for(int i=0;i<poligono.size();i++){
      if(poligono.get(i).gety() > mayor){
        mayor=poligono.get(i).gety();
      }
    }
    return mayor;
  }
  float Maxx(){
    float mayor=0;
    for(int i=0;i<poligono.size();i++){
      if(poligono.get(i).getx() > mayor){
        mayor=poligono.get(i).getx();
      }
    }
    return mayor;
  }
  
  float Min(){
    float menor=5000000;
    for(int i=0;i<poligono.size();i++){
      if(poligono.get(i).gety() < menor){
        menor=poligono.get(i).gety();
      }
    }
    return menor;
  }
  
  float Minx(){
    float menor=5000000;
    for(int i=0;i<poligono.size();i++){
      if(poligono.get(i).getx() < menor){
        menor=poligono.get(i).getx();
      }
    }
    return menor;
  }

  void Graficar(){
   
    for (int i = 0; i < poligono.size(); i++) {
      if(i+1!=poligono.size()){
        Vertice vaux=poligono.get(i);
        Vertice vaux2=poligono.get(i+1);
        l = new Lineaa(int(vaux.getx()),int(vaux.gety()),int(vaux2.getx()),int(vaux2.gety()));
        l.setColor(c);
        l.Graficar();   
        
      }else{
        Vertice vaux=poligono.get(i);
        Vertice vaux2=poligono.get(0);
        l = new Lineaa(int(vaux.getx()),int(vaux.gety()),int(vaux2.getx()),int(vaux2.gety()));
        l1.add(l);
        l.setColor(c);
        l.Graficar();
      }
      }
  }
  
  /*void puntosdeBorde(){
    for(int i=0;i-){
    
    }
  }*/
  
  void Rellenar(){
    println(poligono.size());
    float ymin,ymax,xmax,xmin;
    ymax=Max();
    ymin=Min();
    xmax=Maxx();
    xmin=Minx();
    println(borde.size());
    for(float i=ymin;i<ymax;i++){
      for(float j=xmin;j<xmax+1;j++){
        point(j,i);
      }
    }
    println(ymax);
    println(ymin);
    
  }
  
  
}
  
  
  
  
