import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

void settings() {
  size(1280, 720, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup() {
 
  background(255);
    syphon = new SyphonServer( this , "p5-to-syphon" );

}

void draw() {
  
 float r = random(255);
 float g = random(255);
float b = random(255);
  float i = random(0, 1280);
  float j = random(-50, 720);
  fill(255, 255, 255, 0);
  stroke(r, g, b);
  strokeWeight(3);
  rect(i, j, 75, 75);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(i, j, i+75, j);
  line(i, j+75, i+75, j+75);
  
  //float k = random(0, 1280);
  //float l = random(-50, 720);
  //fill(255, 255, 255, 0);
  //stroke(0, 0, 255);
  //strokeWeight(3);
  //rect(k, l, 75, 75);
  //strokeWeight(10);
  //strokeCap(SQUARE);
  //line(k, l, k+75, l);
  //line(k, l+75, k+75, l+75);
 
  delay(75);
  
   if (mouseX > 1 && mouseX < 959 &&       //move mouse on screen to stop
      mouseY > 1 && mouseY < 539) {
        noLoop();}

 
  syphon.sendScreen( );

}