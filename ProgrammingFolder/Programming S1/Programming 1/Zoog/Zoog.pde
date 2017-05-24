void setup(){
  size(800,800);
}

void draw(){
  background(255);
  //zoog(int(random(width)),int(random(height)),int(random(255)));
  //background(255);
  //ellipseMode(CENTER);
  //rectMode(CENTER);
  //stroke(0);
  //fill(150);
  ////rect(100,100,20,100);
  //rect(x,y,20,100);
  //stroke(0);
  //fill(255);
  ////ellipse(100,70,60,60);
  //ellipse(x,y-30,60,60);
  //fill(0);
  ////ellipse(81,70,16,32);
  ////ellipse(119,70,26,32);
  //ellipse(x-19,y-30,16,32);
  //ellipse(x+19,y-30,26,32);
  //stroke(0);
  ////line(90,150,80,160);
  ////line(110,150,120,160);
  //line(x-10,y+50,x-20,y+60);
  //line(x+10,y+50,x+20,y+60);
  zoog(mouseX-50,mouseY,int(random(255)));
  zoog(mouseX+50,mouseY,int(random(255)));
  zoog(mouseX,mouseY,int(random(255)));
}

void zoog(int x, int y, int c){
  //background(random(250,255));
  ellipseMode(CENTER);
  rectMode(CENTER);
  stroke(0);
  fill(c);
  //rect(100,100,20,100);
  rect(x,y,20,100);
  stroke(0);
  fill(255);
  //ellipse(100,70,60,60);
  ellipse(x,y-30,60,60);
  fill(0);
  //ellipse(81,70,16,32);
  //ellipse(119,70,26,32);
  ellipse(x-19,y-30,16,32);
  ellipse(x+19,y-30,26,32);
  stroke(0);
  //line(90,150,80,160);
  //line(110,150,120,160);
  line(x-10,y+50,x-20,y+60);
  line(x+10,y+50,x+20,y+60);
  line(x-10,y+15,x-25,y+5);
  line(x+10,y+15,x+25,y+5);
}

//void mouseDragged(){
//  x = x + 5;
//  if(value > 255){
//    value = 0;
//  }
//}