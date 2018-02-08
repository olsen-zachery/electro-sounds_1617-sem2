ArrayList<Spaceship> spaceships;

import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

void settings() {
  size(1024, 768, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup() {
  size(1280, 720, P3D);
  noStroke();
  spaceships = new ArrayList();
  for (int i=0; i<1000; i++) {
    spaceships.add(new Spaceship());
      syphon = new SyphonServer( this , "p5-to-syphon" );

  }
   
 
}
int myCounter = 1;
int direction = 1;
int speed = 4    ;

float r = random(255);
float g = random(255);
float b = random(255);

void draw() {
  background(0);
   myCounter += speed * direction;

  background(myCounter%255, (myCounter)%255, (myCounter)%255);



  

  for (Spaceship s : spaceships) {
    s.render();
    s.update();
  }
  syphon.sendScreen( );

}


class Spaceship {
  PVector pos;
  float speed;

  Spaceship() {
    reset();
  }

  void render() { 
    
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(2,2,100);
    popMatrix();
  }


  void update() {
    pos.z = pos.z + speed * map(mouseX, 0, width, 1, 100);
    if (pos.z>500) {
      reset();
    }
  }

  void reset() {
    speed = random(1, 4);
    pos = new PVector(width/2 + random(-200, 200), height/2 + random(-200, 200), -2000);
  }
}