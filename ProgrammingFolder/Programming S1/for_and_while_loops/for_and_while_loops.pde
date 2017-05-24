void setup(){
  drawLines();
}

void drawLines(){
  // Draw horizontal lines
  for(int i=0; i<=100; i+=10) {
    line(0, i, width, i);
  }
  int i=0;
  // Draw verticle lines
  while(i<=100){
    line(i,0,i,height);
    i+=10;
  }
}