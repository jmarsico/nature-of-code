int numMovers = 100;

Mover[] movers = new Mover[numMovers];

PVector wind;


void setup() {
  size(640, 360);
  for (int i = 0; i < movers.length; i ++) {
    movers[i] = new Mover(random(1, 5), random(0, width-1), 0);
  }
}


void draw() {

  background(255);  
  
  //apply forces to objects
  for (int i = 0; i < movers.length; i++) {
    PVector wind = new PVector(0.01, 0);
    float m = movers[i].mass;
    PVector gravity = new PVector(0, 0.1*m);
   

    //this is the coefficient of friction; lower c = less friction
    float c = 0.05;

    // friction = -1*direction of velocity*"coefficient of friection"
    PVector friction = movers[i].velocity.get();
    friction.normalize();
    friction.mult(-1);
    friction.mult(c);
   
    
    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
  }

