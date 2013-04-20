int numMovers = 20;


Mover m;


Attractor a;



void setup() {
  size(800, 400);
  m = new Mover(10, width/2 + 30, height/2 + 30);
  a = new Attractor();
  
}


void draw() {
  background(255);  
  
  PVector force = a.attract(m);
  m.applyForce(force);
  m.update();
  
  a.display();
  m.display();
  
  
  
}



