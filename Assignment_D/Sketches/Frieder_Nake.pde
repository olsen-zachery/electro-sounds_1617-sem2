void setup() {
  size(960, 540);
  background(255);
}

void draw() {
  
 

  float i = random(60, 800);
  float j = random(-50, 540);
  fill(255, 255, 255, 0);
  stroke(255, 0, 0);
  strokeWeight(3);
  rect(i, j, 75, 75);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(i, j, i+75, j);
  line(i, j+75, i+75, j+75);
  
  float k = random(60, 800);
  float l = random(-50, 540);
  fill(255, 255, 255, 0);
  stroke(0, 0, 255);
  strokeWeight(3);
  rect(k, l, 75, 75);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(k, l, k+75, l);
  line(k, l+75, k+75, l+75);
 
  delay(75);
  
   if (mouseX > 1 && mouseX < 959 &&       //move mouse on screen to stop
      mouseY > 1 && mouseY < 539) {
        noLoop();}

 

}