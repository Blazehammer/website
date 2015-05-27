void setup() {
  size(400,400);
}
  
void draw() {
  background(255);
  float temp = kmConverter(mouseX);
  float miles = mouseX-50;
  rect(50,50,mouseX-50,50);
  fill(0);
  text("Kilometers: " + temp,10,25);
  text("Miles:" + miles,10,35);
  drawRef();
  text("Miles Converter",100,200);
  text("Josh Gregory",300,380);
 // println(temp);
}
void drawRef() {
  line(50,105,350,105);
  for (int i =0; i<300;i +=50) {
    text(i,i+50,120);
    line(i+50,105,i+ 50,115);
  }
}

float milesConverter(float km) {
  float miles = km*.62137;
  return miles;
}
float kmConverter(float miles) {
  float km = miles/ 0.62137;
  return km;
}

