//must import "Iterator" class for processing 2.0
import java.util.Iterator;

int total = 10;

ArrayList<Particle>  particles;

void setup() {
  size(400, 400);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(255);
  particles.add(new Particle(new PVector(width/2, 50)));

  //iterator is safer than "for loop" when working with arrayList
  Iterator<Particle> it = particles.iterator();
  while (it.hasNext ()) {
    Particle p = it.next();
    p.run();
    if (p.isDead()) {
      it.remove();
    }
  }
}




