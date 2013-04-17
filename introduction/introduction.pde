import java.util.Random;

Random generator;


Walker w;

void setup(){
  size(640, 230);
  w = new Walker();
  background(255);
}


void draw(){
  w.step();
  w.display();
}






  
