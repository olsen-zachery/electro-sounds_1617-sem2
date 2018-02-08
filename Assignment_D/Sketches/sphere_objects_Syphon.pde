ArrayList<Ball> balls = new ArrayList();

import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

void settings() {
  size(1280, 720, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup() {
    syphon = new SyphonServer( this , "p5-to-syphon" );
  noStroke();
  sphereDetail(5);
  for (int i=0; i<500; i++) {
    balls.add(new Ball());
  }
}

void draw() {
 
  background(255);
  lights();
  for (Ball b : balls) {
    b.draw();
  }
    syphon.sendScreen( );

}




class Ball {
  float x, y;
  float a;
  int col;


  Ball() {
    x = random(1280);
    y = random(720);
    a = random(100);
    col = color(random(255), random(255), random(255));
  }

  void draw() {

    pushMatrix();
    translate(x, y);
    rotateY(frameCount*0.01);
    fill(col);
    sphere(a);
    popMatrix();
  }
}