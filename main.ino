#include <Servo.h>
#include <LiquidCrystal.h>

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

// constants
const int TLPin = A5;
const int TRPin = A4;
const int BLPin = A3;
const int BRPin = A2;
const int ServoPin = 6;
const int voltagePin = A1; // solar panel voltage measure pin
const float R1 = 32900.00; // resistor1 for solar panel voltage measurement (ohms)
const float R2 = 6730.00; // resistor2 for solar panel voltage measurement (ohms)
const float scalingFactor = (5.00 / 1023.00) * ((R1 + R2) / R2);
const int threshold = 50;
const int servoSpeed = 8;

const int in_1 = 10 ; // DC-motor control pins
const int in_2 = 9 ;

// variables
int TLValue;
int TRValue;
int BLValue;
int BRValue;
int topValue;
int bottomValue;
int leftValue;
int rightValue;
int angle = 90; // start angle for the vertical motor is 90 degrees
float voltage;  // voltage from solar panel
int verticalDifference;
int horizontalDifference;
int LCDTimer = 0;

Servo ServoMotor;

void printValues(int TLValue, int TRValue, int BLValue, int BRValue, int angle, int topValue, int bottomValue, int leftValue, int rightValue) {
  Serial.print("TOP-LEFT: ");
  Serial.print(TLValue);
  Serial.print(", TOP-RIGHT: ");
  Serial.print(TRValue);
  Serial.print(" BOTTOM-LEFT: ");
  Serial.print(BLValue);
  Serial.print(", BOTTOM-RIGHT: ");
  Serial.print(BRValue);
  Serial.print(", Angle: ");
  Serial.println(angle);
  Serial.print(", Top-value:");
  Serial.print(topValue);
  Serial.print(", Bottom-value:");
  Serial.print(bottomValue);
  Serial.print(", Left-value:");
  Serial.print(leftValue);
  Serial.print(", Right-value:");
  Serial.println(rightValue);
}

void setup() {
  // change frequency of DC-motor
  TCCR1B = TCCR1B & B11111000 | B00000001;
  pinMode(in_1,OUTPUT);
  pinMode(in_2,OUTPUT);
  ServoMotor.attach(ServoPin);
  pinMode(TLPin, INPUT);
  pinMode(TRPin, INPUT);
  pinMode(BLPin, INPUT);
  pinMode(BRPin, INPUT);
  pinMode(voltagePin, INPUT);
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  lcd.print("Voltage:");
  Serial.begin(9600);
}

void loop(){
  LCDTimer = LCDTimer + 1;
  if (LCDTimer > 30) {
	voltage = analogRead(voltagePin) * scalingFactor;
	lcd.setCursor(0, 1);
	lcd.print(voltage);
	LCDTimer = 0;
  }
  TLValue = analogRead(TLPin);
  TRValue = analogRead(TRPin);
  BLValue = analogRead(BLPin);
  BRValue = analogRead(BRPin);

  topValue = (TLValue + TRValue) / 2;
  bottomValue = (BLValue + BRValue) / 2;
  leftValue = (BLValue + TLValue) / 2;
  rightValue = (BRValue + TRValue) / 2;

  verticalDifference = topValue - bottomValue;
  horizontalDifference = leftValue - rightValue;
 
  if (abs(topValue - bottomValue) > threshold && (topValue > bottomValue)) {
	angle = angle + servoSpeed;
	if (angle > 160) {
  	angle = 160;
	}
   } else if (abs(topValue - bottomValue) > threshold && (bottomValue > topValue)) {
	angle = angle - servoSpeed;
	if (angle < 20) {
  	angle = 20;
	 
	}
   }

  printValues(TLValue, TRValue, BLValue, BRValue, angle, topValue, bottomValue, leftValue, rightValue);

  ServoMotor.write(angle);

   if (abs(leftValue - rightValue) > 75 && (leftValue > rightValue)) {
	analogWrite(in_1,255) ;
	digitalWrite(in_2,LOW) ;
   } else if (abs(leftValue - rightValue) > 75 && (rightValue > leftValue)) {
	analogWrite(in_2,255) ;
	digitalWrite(in_1,LOW) ;
   } else {
	digitalWrite(in_1,LOW) ;
	digitalWrite(in_2,LOW) ;
   }
   delay(30);
}