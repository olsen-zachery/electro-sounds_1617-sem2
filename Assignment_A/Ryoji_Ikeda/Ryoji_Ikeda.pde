void setup()  {
  size(960, 540);
  background(255); // white background
  noStroke();
}

void draw() {
 
  if (mouseX > 0  && mouseX < 480)  {
  
  float i = random(0, 255); 
 float j = random(0, 10);
 float k = random(0, 1000);
 
 fill(i);
 rect(0, k , 480, j);
 fill(255);
 rect(0, k , 480, 3);
 
 float l = random(0, 255); 
 float m = random(0, 10);
 float n = random(0, 1000);
 
 fill(l);
 rect(480, n, 960, m);
 fill(255);
 rect(480, n, 960, 3.5);
 
   delay(20);
   
      }
      
if (mouseX > 480 && mouseX < 960) {} //move mouse on right-screen to stop
                                     //move mouse on left-screen to start
   

  
}
  
  