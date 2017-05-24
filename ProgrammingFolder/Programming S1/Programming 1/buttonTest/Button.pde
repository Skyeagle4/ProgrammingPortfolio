class Button {
  //Member Variables
  float x;
  float y;
  float w;
  float h;
  boolean on;

  //Constructor
  Button(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    on = false;
  }
  
  //Display method
  void display() {
    background(255);
    stroke(0);
    if (mouseX>=x && mouseX<x+w && mouseY>y && mouseY<=y+h) {
      fill(0, 255, 0);
    } else {
      fill(255, 0, 0);
    }
    rect(x, y, w, h);
  }
  
  //Hover method
  void hover() {
    
  }
}