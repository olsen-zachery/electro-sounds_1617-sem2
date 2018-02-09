import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

void settings() {
  size(1280, 720, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup()  {
   syphon = new SyphonServer( this , "p5-to-syphon" );
  background(255); // white background
  noStroke();
}

void draw() {
 
  if (mouseX > 0  && mouseX < 480)  {
  
  float r = random(0, 255); 
  float g = random(0,255);
  float b = random (0,255);
 float j = random(0, 30);
 float k = random(0, 1000);
 float l = random(0, 255); 
 float m = random(0, 10);
 float n = random(0, 1000);
 
 
 fill(r,g,b);
 rect(0, k , 1280, j);
 //rect(l, k , 1280, j);
 
 //fill(255);
 //rect(0, k , 960, 3);
 
 
 
 //fill(l);
 //rect(480, n, 960, m);
 //fill(255);
 //rect(480, n, 960, 3.5);
 
   delay(49);
   
      }
      
if (mouseX > 480 && mouseX < 960) {} //move mouse on right-screen to stop
                                     //move mouse on left-screen to start
   

  syphon.sendScreen( );
}
  
  