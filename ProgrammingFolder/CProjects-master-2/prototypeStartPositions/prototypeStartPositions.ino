void setup() {
  pinMode(led1[10], OUTPUT); //rgb1
  pinMode(led2[11], OUTPUT); //rgb2
  //pinMode(led3[], OUTPUT); //rgb3
  //pinMode(led4[], OUTPUT); //rgb4
  //Buttons

  pinMode(buttonPins[4], INPUT); 
  pinMode(buttonPins[5], INPUT); 
  //pinMode(buttonPins[6], INPUT); 
  //pinMode(buttonPins[7], INPUT); 

}

void loop() {
  //button corralate with led pins 
  buttonState1 = digitalRead(buttonPins[4]);
  buttonState2 = digitalRead(buttonPins[5]);
  buttonState3 = digitalRead(buttonPins[6]);
  buttonState4 = digitalRead(buttonPins[7]);

  if (buttonState1 == HIGH ) {
    digitalWrite(ledPins[10], HIGH);
    digitalWrite(ledPins[11], HIGH);
    digitalWrite(ledPins[12], LOW);
    digitalWrite(ledPins[13], LOW);
  }
  if (buttonState2 == HIGH) {
    digitalWrite(ledPins[10], LOW);
    digitalWrite(ledPins[11], HIGH);
    digitalWrite(ledPins[12], LOW);
    digitalWrite(ledPins[13], LOW);

  }
  if (buttonState3 == HIGH ) {
    digitalWrite(ledPins[10], LOW);
    digitalWrite(ledPins[11], HIGH);
    digitalWrite(ledPins[12], HIGH);
    digitalWrite(ledPins[13], LOW);
  }
  if (buttonState4 == HIGH ) {
    digitalWrite(ledPins[10], LOW);
    digitalWrite(ledPins[11], HIGH);
    digitalWrite(ledPins[12], LOW);
    digitalWrite(ledPins[13], HIGH);
  }

}



