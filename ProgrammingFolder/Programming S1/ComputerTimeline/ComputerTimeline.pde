//global variable
color bg1 = #0000FF;
color bg2 = #E8B400;
color btn1 = #0038FF;
color btn2 = #3C00FF;
color txt1 = #E8C800;
color txt2 = #FFD100;

int date = 40;

void setup() {
  size(900, 400);
  background(bg1);
}

void draw() {
  background(bg1);
  drawRef(50,300,850,300);
  histEvent(100, 240, 120, 30, "Zeus (UK)", "(1941) Zeus is the world's first working electromechanical programmable, fully automatic digital computer. ", true);
  histEvent(240, 240, 120, 30, "Colossus (US)", "(1944) Colossus was the world's first electronic digital programmable computer.", true);
  histEvent(380, 240, 120, 30, "Manchester MKI (US)", "(1951) The pioneer of the inclusion of index registers", true);
  histEvent(520, 240, 120, 30, "EDVAC (US)", "(1951) The computer system that improved on the ENIAC's \n construction that incorporated high speed serial access memory \n and important architectural and logical improvements.", true);
  histEvent(110, 330, 120, 30, "ABC (US)", "(1942) The world's first electronic digital calculating device", false);
  histEvent(250, 330, 120, 30, "ENIAC (US)", "(1945) The first United States-built electronic programmable computer", false);
  histEvent(390, 330, 120, 30, "EDSAC (UK)", "(1949) The first recognizably modern digital stored-program computer.", false);
  histEvent(530, 330, 120, 30, "Test button", "Test description", false);
  fill(0);
  textSize(32);
  text("History of Computers",275,75);
  textSize(14);
}

void histEvent(int x, int y, int w, int h, String tText, String dText, boolean top) {
  strokeWeight(1);
  if (top) {
    line(x+25,y+h,x+40,y+h+30);
  } else {
    line(x+35,y,x+50,y-30);
  }
  fill(0); 
  noStroke();
  rect(x+3, y+3, w, h, 7); // Shaddow 
  fill(bg2);
  stroke(0);
  rect(x, y, w, h, 7); // Button
  fill(btn2);
  text(tText, x+10, y+20);
  if (mouseX>x && mouseX<=x+w && mouseY>y && mouseY<=y+h) {
    if (top) {
      fill(txt1);
      text(dText, x, y-50);
    } else {
      fill(txt1);
      text(dText, x, y+60);
    }
  }
}

void drawRef(int x,int y,int w,int h) {
  strokeWeight(3);
  line(x,y,w,h);
  for(int i=0;i<800;i+=40){
    strokeWeight(2);
    line(x+i,y-10,x+i,y+10);
    textSize(10);
    text(1940,x-10,y-13);
    text(1941,x+30,y-13);
    text(1942,x+70,y-13);
  }
  
  
  
}