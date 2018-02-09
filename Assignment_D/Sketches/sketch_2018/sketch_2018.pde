import codeanticode.syphon.SyphonServer; //syphon

SyphonServer syphon; //syphon

void settings() {
  size(1280, 720, P3D); //1280x720 dimension
  PJOGL.profile=1;
  smooth(8);
}

// to store all distance readings
ArrayList<PVector> list = new ArrayList(); 
 
 
int x;
int y = -1000; 
float newX, newY;
float newX2, newY2;
float oldX, oldY;
float theta; 
PGraphics pg;
 
 
void setup() {
  syphon = new SyphonServer( this , "p5-to-syphon" );
  background(0); //background black
  frameRate(5); //speed of frame change
}
 
void draw() {
  translate(width/2, height/2); //start from middle of screen

  newX = x*cos(theta)- y*sin(theta);
  newY = x*sin(theta)+ y*cos(theta);
 
 
  float r1 = random(0.0, 120.0);
 
  list.add(new PVector(newX2, newY2)); // store 
 
  theta = theta + PI/100;
  
 
  // delete 
  //float a = random (0,10);
  strokeWeight(1);
  float x = random (255);
  float y = random (255);
  float z = random (255);
  float h = random (100,255);

  stroke(x,y,z,h);// white 
  line(0, 0, oldX, oldY);
 
  
 
  oldX=newX;
  oldY=newY;
  
  syphon.sendScreen( );
}
