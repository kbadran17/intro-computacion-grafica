void setup(){
size(500,500);
} 
void draw(){
/*for (int i=255;i>0; i--){
 stroke (i);
ellipse(250, 250, i, i);*/
for (int i=0; i<255;i++){
stroke(i);
line(100,255-i,350,255-i);
}
}
