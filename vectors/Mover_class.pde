class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
    float G;


  Mover(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    G = 0.4;
  }



  void applyForce(PVector force) {
    PVector f = force.div(force, mass);
    acceleration.add(f);
  }



  void update() {

    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    fill(134, 201, 30, 150);
    ellipse(location.x, location.y, mass*16, mass*16);
  }

  void checkEdges() {
    
    if ((location.y > height)|| (location.y < 0)) {
      velocity.y *= -0.5;
      
    }
    if((location.x > width) || (location.x < 0)){
      velocity.x *= -0.5;
    }
  }
  
  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance,5.0, 25.0);
    
    force.normalize();
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
}

