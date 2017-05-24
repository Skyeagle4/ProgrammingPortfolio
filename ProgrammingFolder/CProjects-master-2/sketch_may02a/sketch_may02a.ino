int buttonState1 = 0;
int buttonState2 = 0;
int buttonState3 = 0;
int buttonState4 = 0;

int ledPins[] = {10, 11, 12, 13};
int pinCount = 4;

int buttonPins [] = {4, 5, 6, 7};
int buttonCount = 4;


void setup() {
  // put your setup code here, to run once:
  for( int thisPin =0; thisPin < pinCount; thisPin++){
    pinMode(ledPins[thisPin], OUTPUT); 
  }
  for( int thisButton =0; thisButton < pinCount; thisButton++){
    pinMode(buttonPins[thisButton], INPUT); 
  }
}

void loop() {
  buttonState1 = digitalRead(buttonPins[thisButton]);
  buttonState2 = digitalRead(button2);
  buttonState3 = digitalRead(button3);
  buttonState4 = digitalRead(button4);
  // put your main code here, to run repeatedly:
  for( int thisPin = 0; thisPin < pinCount; thisPin++){
    digitalWrite(ledPins[thisPin], HIGH);
    if(buttonState1 = HIGH){
    digitalWrite(ledPins[thisPin], LOW);
    }
  }
//  for( int thisPin =-1; thisPin >= pinCount; thisPin--){
//    digitalWrite(ledPins[thisPin], HIGH);
//    delay(500);
//    digitalWrite(ledPins[thisPin], LOW);
//  }
}
