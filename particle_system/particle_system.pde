//must import "Iterator" class for processing 2.0
import java.util.Iterator;
ArrayList<ParticleSystem> systems;



void setup() {
  size(400, 800);
  systems = new ArrayList<ParticleSystem>();;
  
}

void mousePressed() {
  systems.add(new ParticleSystem(new PVector(mouseX, mouseY)));
}

void draw() {
  background(255);
  for(ParticleSystem ps: systems) {
  PVector gravity =  new PVector (0,0.1);
  ps.applyForce(gravity);
  ps.addParticle();
  ps.run();
  }
 

  //iterator is safer than "for loop" when working with arrayList
  
}




