class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;


  Mover(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
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
    ellipse(location.x, location.y, mass, mass);
  }

  void checkEdges() {
    
    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
}

