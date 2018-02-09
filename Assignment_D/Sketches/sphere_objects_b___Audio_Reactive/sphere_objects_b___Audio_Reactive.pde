import codeanticode.syphon.SyphonServer; //syphon

SyphonServer syphon; //syphon

ArrayList<Ball> balls = new ArrayList(); //arraylist

void settings() { 
  size(1280,720, P3D); //1280x720 dimensions
    PJOGL.profile=1;
      smooth(8);
}

void setup() {
 syphon = new SyphonServer( this , "p5-to-syphon" ); 
  
  noStroke(); //no stroke on spheres
  
  for (int i=0; i<200; i++) { 
    balls.add(new Ball());
  }
} 

void draw() {
  background(255); //background white
  lights(); //lights
  
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
    syphon.sendScreen( );
  }
}
