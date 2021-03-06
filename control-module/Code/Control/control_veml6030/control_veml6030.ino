#include <Wire.h>
#include <VEML6030.h>

VEML6030 ALS;

//INITIALISATION
//Pin Assignments
int dviPin = 4;
int enPin = 5;
int intPin = 6;
int sPin1 = 8;
int sPin2 = 9;
int sPin3 = 10;
int sPin4 = 11;
int debugPin1 = 12;
int debugPin2 = 13;
int analogPin1 = A0;
int analogPin2 = A1;
//Variables
float lbound = 0;
float ubound = 0;
float tau = 0;
uint8_t lux = 0;

//SETUP
void setup() 
{
  Serial.begin(9600);

  // put your setup code here, to run once:
  pinMode(dviPin, OUTPUT);
  pinMode(enPin, OUTPUT);
  pinMode(intPin, OUTPUT);
  pinMode(sPin1, OUTPUT);
  pinMode(sPin2, OUTPUT);
  pinMode(sPin3, OUTPUT);
  pinMode(sPin4, OUTPUT);
  pinMode(debugPin1, OUTPUT);
  pinMode(debugPin2, OUTPUT);
  pinMode(LED_BUILTIN, OUTPUT);

  // On esp8266 devices you can select SCL and SDA pins using Wire.begin(D4, D3);
  Wire.begin();
  ALS.begin(0x10);; //Begin the UV module
  Serial.println(F("VEML6030 Test"));

  //Setup of valve is OFF
  digitalWrite(sPin1, LOW);
  digitalWrite(sPin2, LOW);
  digitalWrite(sPin3, LOW);
  digitalWrite(sPin4, LOW);
}

//LOOP
void loop() 
{
  //tuning circuit
  lbound = analogRead(analogPin1) + 500; // lower bound from 500 - 1500
  ubound = (analogRead(analogPin2)*2) + 19000; //upper bound from 19000 - 21000
  
  //VEML6030 - reading light levels
  ALS.AutoRange();
  lux = ALS.GetLux();
  Serial.print("Light: ");
  Serial.println(lux);
  
  //Control
  if(lux > ubound)
  {
    //solenoid at max
    tau = 1000;
    digitalWrite(sPin2, HIGH);
    digitalWrite(LED_BUILTIN, HIGH); 
    delay(tau);                       
    digitalWrite(sPin2, LOW);
    digitalWrite(LED_BUILTIN, LOW);
    delay(1000-tau);
  } else if(lux < lbound)
  {
    //turning solenoid off
    digitalWrite(sPin2, LOW);
    digitalWrite(sPin3, LOW);
    digitalWrite(LED_BUILTIN, LOW);
    delay(1000);
  } else
  {
    //solenoid varying
    tau = 1000*(lux/(ubound));
    digitalWrite(sPin2, HIGH);
    digitalWrite(LED_BUILTIN, HIGH); 
    delay(tau);                       
    digitalWrite(sPin2, LOW);
    digitalWrite(LED_BUILTIN, LOW);
    delay(1000-tau);
  };
  
}
