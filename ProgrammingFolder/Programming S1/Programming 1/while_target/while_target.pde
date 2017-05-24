void setup(){
  size(200,200);
  background(255);
  float w = 200;
  while(w>=0){
    stroke(0);
    fill(w-=5);
    ellipse(width/2,height/2,w,w);
    w-=15;
  }
}