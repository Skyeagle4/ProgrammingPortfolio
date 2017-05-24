void setup(){
  background(175);
  size(100,100);
}

void draw(){
  fill(200);
  stroke(100);
  triangle(0,0,40,30,40,80);
  triangle(100,0,60,30,60,80);
  triangle(40,10,60,10,50,70);
  fill(255,175,0);
  stroke(0);
  quad(30,45,35,55,45,30,45,0);
  quad(70,45,65,55,55,30,55,0);
  quad(10,10,35,35,35,40,10,10);
  quad(90,10,65,35,65,40,90,10);
  fill(50);
  stroke(255);
  ellipse(50,50,5,30);
  fill(50);
  stroke(100);
  rect(40,75,5,5);
  rect(60,75,-5,5);
  rect(40,75,3,20);
  rect(60,75,-3,20);
  
}