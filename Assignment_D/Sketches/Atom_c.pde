import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

void settings() {
  size(1024, 768, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup() {
  syphon = new SyphonServer( this , "p5-to-syphon" );
  size(960, 540, P3D);
  noStroke();
  
}

int myCounter = 1;
int direction = 1;
int speed = 5;

void draw() {
  
  //if (myCounter>=255-speed || myCounter <= 0) {
  //  direction *=-1;
  //}
  
  myCounter += speed * direction;
  //float xcol =1 ;
  //float ycol =1 ;
  //float zcol =1 ;
  
 
  

 // for (int i = 0; i < 5; i=i+1) {

  background(0.2*myCounter%255, (0.3*myCounter)%255, (0.4*myCounter)%255);
  //background(xcol, ycol, zcol);
  lights();
  
  pushMatrix();
  translate(width/2, height/2);
  sphere(10);
  
  pushMatrix();
  //float f = map(mouseX, 0, width, -PI,PI);
  rotateY(frameCount*0.1);
  translate(width/4,0);
  //rotateX(f);
  
  sphere(10);  
  //myCounter)%100
  //  if(myCounter==100) {
  //myCounter = 0;
  //}
  fill(32, 68, 178);

  popMatrix();

  pushMatrix();

  rotateZ(frameCount*0.14);
  translate(-width/4, 0);
  sphere(10);  //myCounter)%100
  //  if(myCounter==100) {
  //myCounter = 0;
  //}
  fill(237, 29, 29);

  popMatrix();

  pushMatrix();

  rotateX(frameCount*0.17);

  translate(0, height/2.5);
  sphere(10);  //myCounter)%100
  //  if(myCounter==100) {
  //myCounter = 0;
  //}
  fill(29, 237, 37);

  popMatrix();

  //pushMatrix();

  //rotateZ(frameCount*0.17);
  //rotateX(frameCount*0.05);

 // translate(0, height/2.5);
  //sphere(10);  //myCounter)%100
  //  if(myCounter==100) {
  //myCounter = 0;
  //}
  //fill(29, 237, 37);

  //popMatrix();

  popMatrix();
  
  syphon.sendScreen( );
}