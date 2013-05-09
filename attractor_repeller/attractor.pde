class Attractor extends VerletParticle2D {

  float r;
  float distance;
  float strength;
  boolean isAlive;



  Attractor(Vec2D loc) {
   super(loc);
    r = 24;
    distance = width;
    strength = 0.1;

    physics.addParticle(this);
    physics.addBehavior(new AttractionBehavior(this, distance, strength));
  }

  void display() {
    fill(0, 150);
    stroke(0);
    ellipse(x, y, r*2, r*2);
  }


 
  
}

