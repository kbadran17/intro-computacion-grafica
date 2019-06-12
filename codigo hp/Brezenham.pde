class Brezenham{
  float m; //Pemdiente de la recta
  int xi,yi,xf,yf; //puntos de la recta
  int x,y,dx,dy,ddx,ddy,p,p0,p1; //criterios de decicion y diferenciales
  int xtemp,ytemp; //variables que ayudan a invertir los puntos para el caso m>=1
  int xitemp,yitemp; // Variables que ayudan a mover la linea al origen para el caso m>=1 pero no en el origen
  
  
  //Constructor con los puntos iniciales y finales
  Brezenham(int t_xi, int t_yi, int t_xf, int t_yf){
    xi=t_xi;
    yi=t_yi;
    xf=t_xf;
    yf=t_yf;
    
  }
  // Funcion graficar, ayuda a tomar el criterio de decicion para saber qeu caso tomar para que octante
  void Graficar(){
    m=(yf-yi)/(xf-xi);
    //Verificar si la funcion esta en el origen
    if(xi==0 && yi==00){
      //Verifica la pendiente y llama a la funcion b1(Brezenham)
      if(m<1){
        b1(xi,yi,xf,yf,1,0,0);
      }else if(m>=1){
        //Verifica la pendiente y llama a la funcion b1(Brezenham) pero en este caso 
        //invierte los puntos antes de mandar
        ytemp=yf;
        yf=xf;
        xf=ytemp;
        b1(xi,yi,xf,yf,2,0,0);
      }
    }
    // Lo que hace si no esta en el origen
    else{
      if(m<1){
        b1(xi,yi,xf,yf,1,0,0);
      }else if(m>=1){
        // primero hace que la linea vaya al origen y luego la manda los puntos invertidos
        xitemp=xi;
        yitemp=yi;
        xf=xf-xi;
        yf=yf-yi;
        xi=0;
        yi=0;
        b1(xi,yi,yf,xf,3,xitemp,yitemp);
      }
    }
    
  }
  // Funcion b1 esta hace los calculos correspondientes parahacer la linea. No retorna nada
  // Tiene 7 parametros los primeros 4 son los pintos iniciales y finales de la recta
  // El quinto indica una opcion de procedimiento de punto a seguir para diferentes casos
  // Los ultimos dos son para ayudar al caso 3 el cual necesita informacion extra de los puntos iniciales 
  
  
  void b1(int xi,int yi,int xf,int yf,int op,int xitemp,int yitemp){
    dx=xf-xi;
    dy=yf-yi;
    ddx=2*dx;
    ddy=2*dy;
    
    p0=ddy-dx;
      p=p0;
      y=yi;
      // Grafica el punto inicial y empieza a graficar despues de este
      point(xi,yi);
      for(int i=xi+1;i<=xf;i++){
        if(p>=0){
          p1=p+ddy-ddx;
          x=i;
          y+=1;
          if(op==1){
            point(x,height-y);
          }else if(op==2){
            point(y,height-x);
          }else if(op==3){
            point(y+xitemp,(height-x)-yitemp);
          }
          p=p1;
        }else{
          p1=p+ddy;
          x=i;
          y+=0;
          //opciones
          if(op==1){
            point(x,height-y);
          }else if(op==2){
            point(y,height-x);
          }else if(op==3){
            point(y+xitemp,(height-x)-yitemp);
          }
          p=p1;
        }
      }
  }
}
