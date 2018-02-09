import codeanticode.syphon.SyphonServer; //for video export

SyphonServer syphon; //video export on Syphon

void settings() {
  size(1280, 720, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup() {
 
  background(255); //background white
    syphon = new SyphonServer( this , "p5-to-syphon" );

}

void draw() {
  
 float r = random(255);
 float g = random(255);
float b = random(255);
  float i = random(0, 1280);
  float j = random(-50, 720);
  fill(255, 255, 255, 0); //background white
  stroke(r, g, b); //colour of rect to be random rgb
  strokeWeight(3); //thickness of line of rect
  rect(i, j, 75, 75); //similar size rect but random position
  strokeWeight(10); //thickness of line
  strokeCap(SQUARE);
  line(i, j, i+75, j);
  line(i, j+75, i+75, j+75);
  
 
 
  delay(75);
  
   if (mouseX > 1 && mouseX < 959 &&       //move mouse on screen to stop
      mouseY > 1 && mouseY < 539) {
        noLoop();}

 
  syphon.sendScreen( );

}
