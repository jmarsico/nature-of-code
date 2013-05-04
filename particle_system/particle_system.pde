//must import "Iterator" class for processing 2.0
import java.util.Iterator;
ParticleSystem ps;
Repeller repeller;



void setup() {
  size(400, 400);
  ps = new ParticleSystem(new PVector(width/2, height/2 - 50));
  repeller = new Repeller(width/2, height/2);
}



void draw() {
  background(255);
  ps.addParticle();
  PVector gravity =  new PVector (0, 0.1);
  ps.applyForce(gravity);
  ps.applyRepeller(repeller);
  ps.run();
  repeller.display();
}


//iterator is safer than "for loop" when working with arrayList

