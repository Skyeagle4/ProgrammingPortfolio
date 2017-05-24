/* Learn to use pushbutton (button switch) with Arduino - Tutorial
   More info and circuit schematic: http://www.ardumotive.com/arduino-tutorials/category/button
   Dev: Michalis Vasilakis / Date: 19/10/2014
   UPDATED 2/6/2016 - LED to Arduino pin 3 and button to Arduino pin 4*/


//Constants
const int buttonPin = 5;
const int ledPin =  10;

//Variables
int buttonState = 0;
int flag = 0;

void setup() {
  //Input or output?
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT_PULLUP);
}

void loop() {
  //Read button state (pressed or not pressed?)
  buttonState = digitalRead(buttonPin);

  //If button pressed...
  if (buttonState == LOW) {
    if ( flag == 0) {
      digitalWrite(ledPin, HIGH);
      flag = 1; //change flag variable
    }else if ( flag == 1) {
      digitalWrite(ledPin, LOW);
      flag = 0;
    }
  }
  delay(200); //Small delay

}





if(button press){
  pinMode(13, 80);//red
  pinMode(10, 80);//blue add together = purple
  
}
