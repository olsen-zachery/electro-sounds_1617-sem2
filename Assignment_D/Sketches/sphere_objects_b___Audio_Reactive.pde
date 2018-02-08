//import ddf.minim.*;
//import ddf.minim.ugens.*;

//Minim minim;

//AudioInput in;

import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

ArrayList<Ball> balls = new ArrayList();

void settings() { 
  size(1024,768, P3D);
    PJOGL.profile=1;
    //smooth(8);
}

void setup() {
 syphon = new SyphonServer( this , "p5-to-syphon" );
  size (960, 540, P3D);
 // frameRate(60);

  
  
  //minim = new Minim(this);
  //in = minim.getLineIn(Minim.STEREO, 512);
  
  noStroke();
  
  for (int i=0; i<200; i++) {
    balls.add(new Ball());
  }
} 

void draw() {
  background(255);
  lights();
  
  for(int j = 0; j < balls.size(); j++){
    balls.get(j).a = 10+ mouseX + 2*mouseY;// +  4*frameCount; //in.left.get(j)*500;//   
  }
  for (Ball b : balls) {
    b.draw(); 
  }
}




class Ball {
  float x, y;
  float a;
  float b;
  int col;
  float r;
  

  Ball() {
    x = random(960);
    y = random(960);
    a = random(100);
    b = random(10,25);
    r = random(0,0.05);
    col = color(random(255), random(255), random(255));
  }       

  void draw() {

    pushMatrix();
    if (mousePressed == true) {
      translate(width/2, height/2);}
      else {
    translate(x,y);}
    if (keyPressed == true) {}
    else {
    rotateY(frameCount*r);}
    fill(col);
    sphereDetail(5);
    sphere(a);
    //translate(width/2,height/2);
    translate(width/2,y);
  
      pushMatrix();
      sphereDetail(10);
      rotateX(frameCount*r);
      fill(col);
      sphere(b);
      popMatrix();
      
    popMatrix();
    //syphon.sendScreen( );
  }
}