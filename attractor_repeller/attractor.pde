class Attractor extends VerletParticle2D {

  float r;
  float distance;
  float strength;
  boolean isAlive;
  VerletParticle2D locationPart;
  Vec2D location;
  AttractionBehavior behavior;
  



  Attractor(Vec2D loc) {
    super(loc);
    Vec2D location = loc;
    locationPart = new VerletParticle2D(location);
    r = 24;
    distance = width;
    strength = 0.1;
  }


  void setVector(_loc) {
    location.set(_loc);
  }






    void display() {
      fill(0, 150);
      stroke(0);
      ellipse(location.x, location.y, r*2, r*2);
    }

    void setPhysics() {
      physics.addParticle(this);
      behavior = new AttractionBehavior(this, distance, strength);
      physics.addBehavior(behavior);
    }
    
    void removePhysics(){
      physics.removeParticle(this);
      physics.removeBehavior(behavior);
    }
}


