class Button {
  // Member Variables
  color b1, b2, t1, t2; //colors for buttons and text
  int x, y, px1, py1, px2, py2, px3, py3, px4, py4;
  boolean over = false;
  boolean isNumQ, isNumTU, isNumTD;
  boolean isOpT, isOpPR, isOpPL, isOpC;
  boolean isSpec;
  float numButVal;
  String opButVal;
  String spButVal;
  float xpos, ypos;

  // Constructor for buttons
  Button(int x, int y) {
    this.x = x;
    this.y = y;
  }

  // Constructor for number buttons
  Button asNumberQ(color b1, int px1, int py1, int px2, int py2, int px3, int py3, int px4, int py4, float numButVal) {
    this.b1 = b1;
    this.px1 = px1;
    this.py1 = py1;
    this.px2 = px2;
    this.py2 = py2;
    this.px3 = px3;
    this.py3 = py3;
    this.px4 = px4;
    this.py4 = py4;
    this.numButVal = numButVal;
    isNumQ = true;
    over = false;
    return this;
  }

  Button asNumberT(color b1, int px1, int py1, int px2, int py2, int px3, int py3, float numButVal) {
    this.b1 = b1;
    this.px1 = px1;
    this.py1 = py1;
    this.px2 = px2;
    this.py2 = py2;
    this.px3 = px3;
    this.py3 = py3;
    this.numButVal = numButVal;
    over = false;
    if (py2 < py1) {
      isNumTU = true;
    } else {
      isNumTD = true;
    }
    return this;
  }

  // Constructor for operator buttons
  Button asOpPR(int px1, int py1, int px2, int py2, int px3, int py3, int px4, int py4, String OpButVal) {
    this.px1 = px1;
    this.py1 = py1;
    this.px2 = px2;
    this.py2 = py2;
    this.px3 = px3;
    this.py3 = py3;
    this.px4 = px4;
    this.py4 = py4;
    this.opButVal = OpButVal;
    over = false;
    isOpPR = true;
    return this;
  }
  
  Button asOpPL(int px1, int py1, int px2, int py2, int px3, int py3, int px4, int py4, String OpButVal) {
    this.px1 = px1;
    this.py1 = py1;
    this.px2 = px2;
    this.py2 = py2;
    this.px3 = px3;
    this.py3 = py3;
    this.px4 = px4;
    this.py4 = py4;
    this.opButVal = OpButVal;
    over = false;
    isOpPL = true;
    return this;
  }

  Button asOpT(int px1, int py1, int px2, int py2, int px3, int py3, int px4, int py4, String OpButVal) {
    this.px1 = px1;
    this.py1 = py1;
    this.px2 = px2;
    this.py2 = py2;
    this.px3 = px3;
    this.py3 = py3;
    this.px4 = px4;
    this.py4 = py4;
    this.opButVal = OpButVal;
    over = false;
    isOpT = true;
    return this;
  }
  
  Button asOpC(int px1, int py1, int px2, int py2, int px3, int py3, String OpButVal) {
    this.px1 = px1;
    this.py1 = py1;
    this.px2 = px2;
    this.py2 = py2;
    this.px3 = px3;
    this.py3 = py3;
    this.opButVal = OpButVal;
    over = false;
    isOpC = true;
    return this;
  }
  

  // Constructor for special buttons
  Button asSpec(String butVal) {
    isSpec = true;
    spButVal = butVal;
    return this;
  }

  // Display Method
  void display() {
    if (isNumQ) {
      fill(255);
      stroke(0);
      strokeWeight(2);
      quad(px1, py1, px2, py2, px3, py3, px4, py4);
      fill(0);
      textSize(24);
      text(int(numButVal), x+33, y-11);
    } else if (isNumTU) {
      fill(255);
      stroke(0);
      strokeWeight(2);
      triangle(px1, py1, px2, py2, px3, py3);
      fill(0);
      textSize(20);
      text(int(numButVal), x+14, y-10);
    } else if (isNumTD) {
      fill(255);
      stroke(0);
      strokeWeight(2);
      triangle(px1, py1, px2, py2, px3, py3);
      fill(0);
      textSize(20);
      text(int(numButVal), x+14, y+24);
    } else if (isOpT) {
      fill(0, 235, 0);
      stroke(0);
      strokeWeight(2);
      quad(px1, py1, px2, py2, px3, py3, px4, py4);
      fill(0);
      textSize(24);
      text(opButVal, x+16, y-13);
    } else if (isOpPR) {
      fill(0, 235, 0);
      stroke(0);
      strokeWeight(2);
      quad(px1, py1, px2, py2, px3, py3, px4, py4);
      fill(0);
      textSize(24);
      text(opButVal, x+20, y-12);
    } else if (isOpPL) {
      fill(0, 235, 0);
      stroke(0);
      strokeWeight(2);
      quad(px1, py1, px2, py2, px3, py3, px4, py4);
      fill(0);
      textSize(24);
      text(opButVal, x+23, y+27);
    } else if (isOpC) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(2);
      triangle(px1, py1, px2, py2, px3, py3);
      fill(0);
      textSize(24);
      text(opButVal, x, y-23);
    }
  } 

  // Hover Method
  void click () {
    if (isNumTU) {
      over = mouseX > x && mouseX < x+40 && mouseY > y-40 && mouseY < y;
    } else if (isNumTD) {
      over = mouseX > x && mouseX < x+40 && mouseY > y && mouseY < y+40; 
    } else if (isNumQ) {
      over = mouseX > x && mouseX < x+80 && mouseY > y-40 && mouseY < y; 
    } else if (isOpT) {
      over = mouseX > px1 && mouseX < px1+60 && mouseY > y-40 && mouseY < y;
    } else if (isOpPR) {
      over = mouseX > x && mouseX < x+60 && mouseY > y-40 && mouseY < y;
    } else if (isOpPL) {
      over = mouseX > x && mouseX < x+60 && mouseY > y && mouseY < y+45;
    } else if (isOpC) {
      over = mouseX > x && mouseX < x+15 && mouseY > y-60 && mouseY < y;
    }
  }
}