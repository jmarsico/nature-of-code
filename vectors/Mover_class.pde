class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  float angle = 0;
  float aVelocity = 0;
  float aAcceleration = 0.01;
  float G;


  Mover(float m, float x, float y) {
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    G = 0.9;
  }



  void applyForce(PVector force) {
    PVector f = force.div(force, mass);
    acceleration.add(f);
  }



  void update() {

    velocity.add(acceleration);
    location.add(velocity);

    aAcceleration = acceleration.x;
    aVelocity += aAcceleration;
    angle = aVelocity;

    acceleration.mult(0);
  }

  void display() {

    //this is what makes the rectangle point in the direction of velocity
    float angle = velocity.heading();


    stroke(0);
    fill(134, 201, 30, 150);


    pushMatrix();
    rectMode(CENTER);
    translate(location.x, location.y);
    rotate(angle);
    rect(0, 0, 30, 10);
    popMatrix();
  }

  void checkEdges() {

    if ((location.y + mass*16  > height)|| (location.y +mass*16 < 0)) {
      velocity.y *= -0.8;
    }
    if ((location.x > width) || (location.x < 0)) {
      velocity.x *= -0.8;
    }
  }

  PVector attract(Mover m) {
    PVector force = PVector.sub(location, m.location);
    float distance = force.mag();
    distance = constrain(distance, 5.0, 25.0);

    force.normalize();
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(strength);
    return force;
  }
}

