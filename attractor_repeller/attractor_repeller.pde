import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.geom.*;


Attractor attractor;
ArrayList<Repeller> repellers;

VerletPhysics2D physics;


void setup() {
  size(640, 480);
  physics = new VerletPhysics2D();
  physics.setDrag(0.01);
  physics.setWorldBounds(new Rect(0, 0, width, height));

  repellers = new ArrayList<Repeller>();
  for (int i = 0; i < 50; i++) {
    repellers.add(new Repeller(new Vec2D(random(width), random(height))));
  }

  attractor = new Attractor(new Vec2D(width/2, height/2));
}


void draw() {
  background(255);
  physics.update();
  
  attractor.display();
  for (Repeller r: repellers) {
    r.display();
  }
  
  if(mousePressed){
    attractor.lock();
    attractor.set(mouseX,mouseY);
  } else {
    attractor.unlock();
  }
  
}


class Attractor extends VerletParticle2D {

  float r;
  float distance;
  float strength;


  Attractor(Vec2D loc) {
    super (loc);
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

