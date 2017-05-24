void setup(){
  size(200,200);
  background(255);
  for(int i=200; i>0;i-=15){
    stroke(0);
    fill(i-=5);
    ellipse(width/2,height/2,i,i);
  }
}