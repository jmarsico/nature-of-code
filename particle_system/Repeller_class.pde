class Repeller {
  PVector location;
  float r = 10;
  float strength = 100;

  Repeller(float x, float y) {
    location = new PVector(x, y);
  }

  void display() {
    stroke(255);
    fill(0);
    ellipse(location.x, location.y, r*2, r*2);
  }

  PVector repel(Particle p) {
    PVector dir = PVector.sub(location, p.location);
    float d = dir.mag();
    dir.normalize();

    d = constrain(d, 5, 100);
    float G = 2;
    float force = -1 * strength / (d*d);
    dir.mult(force);
    return dir;
  }
}

