class Repeller extends VerletParticle2D {

  float r;

  Repeller(Vec2D loc) {
    super (loc);
    r = 8;
    physics.addParticle(this);
    physics.addBehavior(new AttractionBehavior(this, r*4, -1));
  }

  void display() {
    fill(0, 150);
    stroke(0);
    strokeWeight(2);
    ellipse(x, y, r*2, r*2);
  }
}


