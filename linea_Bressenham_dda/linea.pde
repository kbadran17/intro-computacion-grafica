class Linea{
float Xo=0;
  float Xf=width;
  float Xk;
  float Xk1;
  float Yo=0;
  float Yk;
  float Yk1;
  float Yf=0;
  float m=0;
  float b;
  float x=0;
  float y=0.0;
  float mx;
  boolean j= true;
  
  Linea(float M,float B){//linea con pendiente y punto de corte
    m=M;
    b=B;

  }
  Linea(){
  
  }
  void vertical(float X){
    x=X;
    for(float i=0;i<500;i=i+(0.1)){
      point(x,i);
    }
  }
  Linea(float xo, float yo, float xf, float yf){
    Xo=xo;
    Xf=xf;
    Yo=yo;
    Yf=yf;
    j=false;
  }
  void dibujar(){
    if(m==0 && j==false){
      if(Xo>Xf || Yo>Yf){
        float cont=Xo;
        Xo=Xf;
        Xf=cont;
        cont=Yo;
        Yo=Yf;
        Yf=cont;
      }
      
      m=(Yf-Yo)/(Xf-Xo);
      b=Yf-(Xf*m);
      x=Xo;
    }
      for (float i=0; i<Xf-Xo;) {
        x=x+0.1;
        y=(m*x)+b;
        point(x,y);
        i=i+(0.1);
      }
  }
  void Bresenham(){//inicio algoritmo de bressenham
    float mo=(Yf-Yo)/(Xf-Xo);
    //println(mo);
    
    if(Yf>=Yo && Xf>Xo && mo<1){
      point(Xo,Yo);
      //println(Xo+", "+Yo);
    }
    else{
      if(mo>1 && Yf>=Yo && Xf>Xo){
        float cont=Xo;
        Xo=Yo;
        Yo=cont;
        cont=Xf;
        Xf=Yf;
        Yf=cont;
     
        point(Yo,Xo);
      }
    }
    //inicializa variables
    m=(Yf-Yo)/(Xf-Xo);
    //println(m);
    b=Yf-(Xf*m);
    //println(b);
    x=Xo;
 
 
    float Dx=Xf-Xo;
    float Dy=Yf-Yo;
    float TDx=2*Dx;
    float TDy=2*Dy;
    float DDyDDx=TDy-TDx;
    y=(m*x)+b;
    Xk=x-1;
    Xk1=x+1;
    Yk=int(y);
    Yk1=Yk+1;
    float c=(2*Yk)+(2*b)-1;
    //float dup=Yk1-y;
    //float dlow=y-Yk;
    float Po=TDy-Dx;
    float pk=(TDy*Xk)-(TDx*Yk)+c;
    float pk1=0;
    //declara variables
    if(Xf==Xo){
      y=Yo;
      for(int i=0;i<Yf-Yo;i++){
        point(x,y);
        y++;
      }
    }
    for(int i=0;i<int(Dx);i++){//inicia el algoritmo como tal
    
      if(pk>=0){
        
        
        if(mo>1){
          point(Yk1,Xk1);
        }
        else{
          point(Xk1,Yk1);
        }
        pk1=pk+DDyDDx;
      }
      
      
      else{
        
        if(mo>1){
          point(Yk,Xk1);
        }
        else{
          point(Xk1,Yk);
        }
        pk1=pk+TDy;
      }
      
      
      x=x+1;
      y=(m*x)+b;
      Xk=x-1;
      Xk1=x+1;
      Yk=int(y);
      Yk1=Yk+1;
      c=(2*Yk)+(2*b)-1;
    }
  }

}
