class Button {
  // Member Variables
  color b1, b2, t1, t2; //colors for buttons and text
  int x, y, w, h;
  String val;
  Boolean over;


  // Constructor
  Button(color b1, int x, int y, int w, int h, String val) {
    this.b1 = b1;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    over = false;
  }

  // Display Method
  void display() {
    if (over) {
      fill(128);
      rect(x, y, w, h, 5);
      fill(255,0,0);
      rect(x-3, y-3, w, h, 5);
      fill(t2);
      text(val, x+5, y+15);
    } else {
      fill(128);
      rect(x, y, w, h, 5);
      fill(b1);
      rect(x-3, y-3, w, h, 5);
      fill(t2);
      text(val, x+5, y+15);
    }
  } 

  // Hover Method
  void hover (int xpos, int ypos) {
    over = xpos>x && xpos<x+w && ypos>y && ypos<y+h;
  }
}