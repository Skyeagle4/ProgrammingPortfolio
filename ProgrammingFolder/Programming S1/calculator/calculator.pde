// Instantiate each of the classification of buttons
Button[] numBut = new Button[10];
Button[] opBut = new Button[6];
Button[] specBut = new Button[2];

String displayVal = "0";
String valToComp = ""; // String value left of operator
String valToComp2 = ""; // String value right of operator
float valToCompI = 0;
float valToCompII = 0;
float result = 0;
char opVal = ' ';
boolean firstNum;

void setup() {
  size(221, 301);
  background(100);
  fill (50);
  rect(0, 0, 220, 300, 7);
  noFill();
  strokeWeight(2);
  stroke(100);
  rect(1, 1, 218, 299);

  // Populate number buttons
  numBut[0] = new Button(10, 290).asNumberQ(color(255), 10, 290, 30, 250, 90, 250, 70, 290, 0);
  numBut[1] = new Button(10, 190).asNumberT(color(255), 10, 190, 30, 230, 50, 190, 1);
  numBut[2] = new Button(50, 230).asNumberT(color(255), 50, 230, 70, 190, 90, 230, 2);
  numBut[3] = new Button(90, 190).asNumberT(color(255), 90, 190, 110, 230, 130, 190, 3);
  numBut[4] = new Button(10, 170).asNumberT(color(255), 10, 170, 30, 130, 50, 170, 4);
  numBut[5] = new Button(50, 130).asNumberT(color(255), 50, 130, 70, 170, 90, 130, 5);
  numBut[6] = new Button(90, 170).asNumberT(color(255), 90, 170, 110, 130, 130, 170, 6);
  numBut[7] = new Button(10, 70).asNumberT(color(255), 10, 70, 30, 110, 50, 70, 7);
  numBut[8] = new Button(50, 110).asNumberT(color(255), 50, 110, 70, 70, 90, 110, 8);
  numBut[9] = new Button(90, 70).asNumberT(color(255), 90, 70, 110, 110, 130, 70, 9);

  // Populate operator buttons
  opBut[0] = new Button(150, 290).asOpT(150, 290, 150, 250, 190, 250, 210, 290, "=");
  opBut[1] = new Button(150, 230).asOpPR(150, 230, 170, 190, 210, 190, 190, 230, "+");
  opBut[2] = new Button(150, 130).asOpPL(150, 130, 190, 130, 210, 170, 170, 170, "-");
  opBut[3] = new Button(152, 110).asOpPR(150, 110, 170, 70, 210, 70, 190, 110, "x");
  opBut[4] = new Button(162, 50).asOpT(150, 10, 210, 10, 210, 50, 170, 50, "/");
  opBut[5] = new Button(145, 90).asOpTri(145, 90, 165, 60, 145, 30, "c");

  // Populate special buttons
  specBut[0] = new Button(90, 290).asSpec(90, 290, 110, 250, 130, 290, ".");
  specBut[1] = new Button(145, 210).asSpecS(145, 210, 165, 180, 145, 150, "+/-");

  firstNum = true;
}

void draw() {
  for (int i = 0; i < numBut.length; i++) {
    Button iNumBut = numBut[i];
    iNumBut.display();
  }
  for (int i = 0; i < opBut.length; i++) {
    Button iOpBut = opBut[i];
    iOpBut.display();
  } 
  for (int i = 0; i < specBut.length; i++) {
    Button iSpecBut = specBut[i];
    iSpecBut.display();
  }

  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numBut.length; i++) {
    numBut[i].click();
    if (numBut[i].over) {
      if (firstNum) {
        valToComp += int(numBut[i].numButVal);
        displayVal = valToComp;
      } else {
        valToComp2 += int(numBut[i].numButVal);
        displayVal = valToComp2;
      }
    }
  }
  for (int i=0; i<opBut.length; i++) {
    Button iOpBut = opBut[i];
    Button iSpecButS = specButS[i];
    iOpBut.click();
    if (iOpBut.over) {
      if (iOpBut.opButVal == "+") {
        if (result != 0) {
          opVal = '+';
          valToComp2 = "";
          firstNum = false;
          displayVal = "+";
        } else {
          opVal = '+';
          firstNum = false;
          displayVal = "+";
        }
      } else if (iOpBut.opButVal == "=") {
        firstNum =true;
        performCalculation();
      } else if (iOpBut.opButVal == "-") {
        if (result != 0) {
          opVal = '-';
          valToComp2 = "";
          firstNum = false;
          displayVal = "-";
        } else {
          opVal = '-';
          firstNum = false;
          displayVal = "-";
        }
      } else if (iOpBut.opButVal == "x") {
        if (result != 0) {
          opVal = 'x';
          valToComp2 = "";
          firstNum = false;
          displayVal = "x";
        } else {
          opVal = 'x';
          firstNum = false;
          displayVal = "x";
        }
      } else if (iOpBut.opButVal == "/") {
        if (result != 0) {
          opVal = '/';
          valToComp2 = "";
          firstNum = false;
          displayVal = "/";
        } else {
          opVal = '/';
          firstNum = false;
          displayVal = "/";
        }
      } else if (iOpBut.opButVal == "c") {
        displayVal = "0";
        opVal = 'c';
        valToComp = "";
        valToComp2 = "";
        valToCompI = 0;
        valToCompII = 0;
        result = 0;
        firstNum = true;
      } else if (iSpecBut.opButVal == "+/-") {
        opVal = 'n';
        performCalculation();
      }
    }
  }
  for (int i=0; i < specBut.length; i++) {
    Button iSpecBut = specBut[i];
    iSpecBut.click();
    if (iSpecBut.over) {
      if (iSpecBut.spButVal == ".") {
        // Concanteate the values clicked on
        if (iSpecBut.over && firstNum == true) {
          valToComp += iSpecBut.spButVal;
          displayVal = valToComp;
        } else if (iSpecBut.over && firstNum == false) {
          valToComp2 += iSpecBut.spButVal;
          displayVal = valToComp2;
        }
      }
    }
  }
} 

void performCalculation() {
  // Set string values to floats
  valToCompI = float(valToComp);
  valToCompII = float(valToComp2);
  if (opVal =='n') {
    if (firstNum) {
      valToCompI = valToCompI * -1;
      displayVal = str(valToCompI);
    } else {
      valToCompII = valToCompII * -1;
      displayVal = str (valToCompI);
    }
  }

  // Perform calculation based on the operator
  if (opVal == '+') {
    result = valToCompI + valToCompII;
    displayVal = str(result);
  } else if (opVal == '-') {
    result = valToCompI - valToCompII;
    displayVal = str(result);
  } else if (opVal == '/') {
    result = valToCompI / valToCompII;
    displayVal = str(result);
  } else if (opVal == 'x') {
    result = valToCompI * valToCompII;
    displayVal = str(result);
  }

  // Let = work multiple times
  if (firstNum) {
    valToComp = displayVal;
  } else {
    valToComp = displayVal;
    valToComp2 = "";
  }
}

void updateDisplay() {
  fill(230);
  rect(10, 10, 120, 50, 7);
  fill(0);
  textSize(20);
  text(displayVal, 20, 50);
}