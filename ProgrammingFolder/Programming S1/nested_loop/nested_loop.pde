void setup(){
  size(200,200);
  for (int i=200;i>0;i-=15){
    for(i=i<height; i+=10){
      fill(random(0,255));
      rect(x);
    }
  }