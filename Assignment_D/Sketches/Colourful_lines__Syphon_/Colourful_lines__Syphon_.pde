import codeanticode.syphon.SyphonServer; //syphon

SyphonServer syphon; //syphon

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
 
  if (mouseX > 0  && mouseX < 480)  { //if mouse is left side of screen, loop works
  
  float r = random(0, 255); 
  float g = random(0,255);
  float b = random (0,255);
 float j = random(0, 30);
 float k = random(0, 1000);
 
 
 fill(r,g,b); //random line colour
 rect(0, k , 1280, j); //random position of line on y-axis
 
 
   delay(49);
   
      }
      
if (mouseX > 480 && mouseX < 960) {} //move mouse on right-screen to stop
                                     //move mouse on left-screen to start
   

  syphon.sendScreen( );
}
  
  
