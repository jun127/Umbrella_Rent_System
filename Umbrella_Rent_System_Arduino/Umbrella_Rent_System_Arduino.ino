#include  <Servo.h>


Servo servo_test; 
Servo servo_test2; //initialize a servo object for the connected servo  
                
int angle = 90;
int cmd = -1;
int flag = 0;


int T = 2; 

void setup()
{
 Serial.begin(9600);
 pinMode(T, INPUT);
servo_test.attach(9);
servo_test2.attach(10);

}

void loop()
{
if (Serial.available() > 0) {
    cmd = Serial.read();
    Serial.println(cmd);
    flag = 1;
  }

 
 if (LOW == digitalRead(T))
 {
 Serial.println("IR Detected"); //detected
switch(cmd){
  case 'A':
servo_test.write(0);
      Serial.println("우산1 opened");
  break;

  case 'a':
servo_test.write(90);
    Serial.println("우산1 locked");
  break;

  case 'B':
servo_test2.write(0);
      Serial.println("우산2 opened");
  break;

  case 'b':
  servo_test2.write(90);
    Serial.println("우산2 locked");
  break;

  case 'C':
  servo_test.write(0);
     Serial.println("3 open");
  break;

  case 'c':
   servo_test.write(90);
   Serial.println("3 lock");
  break;

  case 'D':
    servo_test.write(0);
      Serial.println("4 open");
  break;

  case 'd':
    servo_test.write(90);
    Serial.println("4 lock");
  break;

  case 'E':
      servo_test.write(0);
      Serial.println("5 open");
  break;

  case 'e':
    servo_test.write(90);
    Serial.println("5 lock");
  break;

  case 'F':
servo_test.write(0);
      Serial.println("6 open");
  break;

  case 'f':
    servo_test.write(90);
    Serial.println("6 lock");
  break;

  case 'G':
      servo_test.write(0);
      Serial.println("7 open");
  break;

  case 'g':
    servo_test.write(90);
    Serial.println("7 lock");
  break;

  case 'H':
      servo_test.write(0);
      Serial.println(" 8 open");
  break;

  case 'h':
    servo_test.write(90);
    Serial.println("8 lock");
  break;

  case 'I':
      servo_test.write(0);
      Serial.println("9 open");
  break;

  case 'i':
    servo_test.write(90);
   Serial.println("9 lock");
  break;

  case 'J':
      servo_test.write(0);
      Serial.println("10 open");
  break;
 
  case 'j':
    servo_test.write(90);
    Serial.println("10 lock");
  break;

  case 'K':
      servo_test.write(0);
      Serial.println("11 open");
  break;

  case 'k':
    servo_test.write(90);
    Serial.println("11 lock");
  break;

  case 'L':
      servo_test.write(0);
     Serial.println("12 open");
  break;

  case 'l':
    servo_test.write(90);
    Serial.println("12 lock");
  break;
}

 }
 else
 {
  Serial.println("우산 감지 안됨");
 }
 
 delay(100);


    



     
   

 }
    

  
