class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float mass = 1;

  Particle(PVector l) {
    location = l.get();
    acceleration = new PVector(0, 0);
    velocity = new PVector(random(-1,1),0);
    lifespan = 255;
  }

  void run() {
    update();
    display();
  }
  
  void applyForce(PVector force) {
    PVector f = force.get();
    f.div(mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    lifespan -= 2.0;
  }

  void display() {
    stroke(0, lifespan);
    fill(175, lifespan);
    ellipse(location.x, location.y, 8, 8);
  }

  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } 
    else {
      return false;
    }
  }
}


class Confetti extends Particle {
  
  Confetti(PVector l){
    super(l);
  }
  
  void display(){
    
    float theta = map(location.x, 0, width, 0, TWO_PI*2);
    
    
    rectMode(CENTER);
    fill(175, lifespan);
    stroke(0, lifespan);
    
    pushMatrix();
    translate(location.x, location.y);
    rotate(theta);
    rect(0, 0, 8, 8);
    popMatrix();
  }
}


