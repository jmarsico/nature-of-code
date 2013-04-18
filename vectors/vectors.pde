
int numMovers = 29;
Mover mover;


boolean brake;
PVector wind;

void setup() {
  size(640, 360);
 mover = new Mover(width/2, height/2);
  }


void draw() {
  
  background(255);
 
 if(mousePressed){
   PVector wind = new PVector(0.5,0);
   mover.applyForce(wind);
 }

 
 
  mover.update();
  mover.display();
}


