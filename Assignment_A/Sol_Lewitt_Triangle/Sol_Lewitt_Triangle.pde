void setup() {
size(960, 540);
background(255);
}

void draw() {
  for (int i = 0; i < 3000; i = i+40)  {
    fill(0);
    rect(80, 0+i, 800, 18);
  }
    
    
  
  for(int j = 0; j < 11; j = j+1) {
 fill(sin(1.5708+(j*3.14159))*(255));
 triangle(480-(j*25), 75+((j)*(25)*(1.5750915751)), 207, 505, 480-(j*25), 505);
  
  
  fill(sin(1.5708+((j+1)*3.14159))*(255));
 triangle(480+(j*25), 75+((j)*(25)*(1.5750915751)), 480+(j*25), 505, 753, 505);
  
  }
}