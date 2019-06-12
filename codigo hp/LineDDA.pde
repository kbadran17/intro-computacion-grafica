class LineDDA{

  float xi;
  float yi;
  float xf;
  float yf;
  float b=0;
  float m;
  float k;
  float xk,yk;
  float x,y;
  float g,co,h,ca;

  
  LineDDA(int t_xi,int t_yi,int t_xf,int t_yf){
    if(t_xi<t_xf){
      xi=t_xi;
      yi=t_yi;
      xf=t_xf;
      yf=t_yf;
      g=1;
    }else if(t_xi>t_xf){
      xi=t_xf;
      yi=t_yf;
      xf=t_xi;
      yf=t_yi;
      g=1;
    }
    
  }
  
  LineDDA(int t_xi,int t_yi,int t_xf,int t_yf,float t_g){
    xi=t_xi;
    yi=t_yi;
    xf=t_xf;
    yf=t_yf;
    g=t_g;
  }
  
  LineDDA(int t_b,float t_m){
    xi=0;
    b=t_b;
    m=t_m;
  }
  
  void Graficar(){
    if(xf-xi==0){
      x=xi;
      for(k=yi;k<yf;k++){
        point(x,k);
      }
    }else{
      if(b==0){
      m=(yf-yi)/(xf-xi);
      if(abs(m)<1){
        yk=yi;
          for(k=xi;k<xf;k++){
          x=k+1;
          y=yk+m;
          yk=y;
          if(yi>yf && abs(m)>=1){
            point(int(x),int(y));
          }else{
            point(int(x),int(height-y));
          }
          }
      }
      if(abs(m)>=1){
        xk=xi;
        if(yi<yf && abs(m)>=1){
          for(k=yi;k<yf;k++){
            y=k+1;
            x=xk+(1/m);
            xk=x;
            point(int(x),int(height-y));
          }
        }else if(yi>yf && abs(m)>=1){
          for(k=yi;k>yf;k--){
            y=k-1;
            x=xk+(1/m);
            xk=x;
            co=abs(xf-xi);
            point(int(x+((xi-x)*2)),int(height-y));
          }
         }
      
      }
      }else{
        x=xi;
        if(abs(m)<1){
          for(x=0;x<width;x++){
          y=m*x+b;
          point(int(x),int(height-y));
          }
        }else{
          for(x=0;x<height;x+=0.5){
          y=m*x+b;
          point(int(x),int(height-y));
          }
        }
      } 
    }
      
    }
  }
