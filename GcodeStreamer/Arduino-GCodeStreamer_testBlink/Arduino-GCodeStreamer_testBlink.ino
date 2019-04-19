
// Turning build-in light on Arduino board 
// with serial port commands
// and sending back status

// By Alex Noyanov
// April 19 2019

// This example test is for testing 
// how to send data to Arduino with Serial

// Contacts: alex.noyanov@gmail.com

String str;

void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);   // Serial port speed
pinMode(13,OUTPUT);   // Set pinmode as output
}

void loop() {
  // put your main code here, to run repeatedly:
  while(Serial.available())           // While streaming serial
  {
  str = Serial.readString();   // Reading string
  }

  if(str == "ON" || str == "on")
  {
    delay(1000);
    digitalWrite(13,HIGH);    // Turn on the led on Arduino
    Serial.println("Ok.LED is ON!");
    str = "";
  }

  if(str == "OFF" || str == "off")
  {
    delay(1000);
    digitalWrite(13,LOW);    // Turn on the led on Arduino
    Serial.println("Ok.LED is OFF!");
    str = "";
  }
}
