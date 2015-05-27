//create array
Car[] myCars = new Car[150];

void setup() {
  size(500,1000);
  background(255);
  //myCar uses contructor1 myCar2 uses contructor 2
  for (int i = 0;i < myCars.length; i++)
  myCars[i] = new Car(random(width),random(height),int(random(5,25)),color(0,0,255),random(2));
}

void draw() {
  background(255);
   for (int i = 0;i < myCars.length; i++){
     Car iCar = myCars[i];
     iCar.display();
     iCar.drive();
   }
  

}
class Car {
  // member variables
  int cLength, cHeight, cWeight, cSpeed;
  float xpos,ypos;
  float left;
  color cColor;
  
  
  // constructor 1
  Car(float tempX, float tempY) {
    cSpeed = 5;
    cColor = color(255,0,0);
    xpos = tempX;
   ypos = tempY;
    
  }
  
  // constructor 2
  Car (float tempX, float tempY, int tempSpeed,
 color tempColor,float tempLeft) {
  xpos = tempX;
  ypos = tempY;
   cSpeed = tempSpeed;
   cColor = tempColor;
   left = tempLeft;
   
   
 }
 
 //member methods
 void display() {
   rectMode(CENTER);
   fill(cColor);
   rect(xpos,ypos,20,10);
   fill(200);
   rect(xpos,ypos,10,10,3);
   fill(22);
   // tires
   rect(xpos+6,ypos-7,7,3);
   rect(xpos+6,ypos+7,7,3);
   rect(xpos-5,ypos-7,7,3);
   rect(xpos-5,ypos+7,7,3);
 }
 
 void drive() {
  if (left <=1){
    xpos+=cSpeed;
    // detect edge
    if (xpos>width) {
      xpos = 0;
    }
  } else {// move some left
    xpos-=cSpeed;
    //detect edge
    if (xpos < 0){
      xpos = width;
    }
  }
   
 }
  
}

