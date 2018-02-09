import codeanticode.syphon.SyphonServer; //to save video on syphon

SyphonServer syphon; //to save video on syphon

void settings() {
  size(1280, 720, P3D); 
  PJOGL.profile=1;
  smooth(8); 
}

void setup() {
  syphon = new SyphonServer( this , "p5-to-syphon" );
  noStroke(); //remove lines from sphere
  
}

int myCounter = 1;
int direction = 1;
int speed = 5;

void draw() {
  
  
  myCounter += speed * direction;

  background(0.2*myCounter%255, (0.3*myCounter)%255, (0.4*myCounter)%255);
  //change background colour
  lights(); // lighting effect on 3D spheres
  
  pushMatrix(); 
  translate(width/2, height/2); //translate to middle of screen
  sphere(10); // Sphere size
  
  pushMatrix();
  rotateY(frameCount*0.1); //rotate sphere around y-axis
  translate(width/4,0);
  
  
  sphere(10);  
  
  fill(32, 68, 178);

  popMatrix();

  pushMatrix();

  rotateZ(frameCount*0.14); //rotate sphere round Z-axis
  translate(-width/4, 0);
  sphere(10);  
  fill(237, 29, 29);

  popMatrix();

  pushMatrix();

  rotateX(frameCount*0.17); //rotate sphere around X-axis

  translate(0, height/2.5);
  sphere(10);  
  fill(29, 237, 37);

  popMatrix();

 

  popMatrix();
  
  syphon.sendScreen( );
}
