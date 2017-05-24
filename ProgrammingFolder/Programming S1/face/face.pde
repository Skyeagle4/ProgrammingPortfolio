void setup(){
  size (400,400);
  background(255);
  frameRate(1);
}

void draw(){
  background(255);
  fill(234,208,54);
  strokeWeight(5);
  ellipse(width/2,height/2,250,350);//random(width*0.7,width*0.95)
  bezier(200,175,250,185,230,285,200,250);
  fill(255);
  arc(200,300,80,90,-.85,PI+QUARTER_PI, CHORD);
  ellipse(145,150,75,75);
  ellipse(245,150,75,75);
}

//void mouseClicked(){
//  saveFrame("line-######.png");
//}