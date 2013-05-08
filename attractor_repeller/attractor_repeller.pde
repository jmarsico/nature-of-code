import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.geom.*;
import java.util.Iterator;

ArrayList<Attractor> attractors;
ArrayList<Repeller> repellers;

VerletPhysics2D physics;


void setup() {
  size(640, 480, P2D);
  smooth(4);
  physics = new VerletPhysics2D();
  physics.setDrag(0.01);
  physics.setWorldBounds(new Rect(0, 0, width, height));
  attractors = new ArrayList<Attractor>();
  repellers = new ArrayList<Repeller>();
  
   for (int i = 0; i < 110; i++) {
    repellers.add(new Repeller(new Vec2D(random(width), random(height))));
  }
}


void draw() {
  background(255);
  physics.update();
  
  
  Iterator<Attractor> at = attractors.iterator();
    while (at.hasNext()){
    Attractor a = at.next();
    if((mouseX < width - 10) && (mouseX > 10) && (mouseY < height - 10) &&  (mouseY > 10)){
      at.add(a);
    } 
      a.lock();
      a.set(mouseX,mouseY);
      a.display();
    }
    


  for (Repeller r: repellers) {
    r.display();
  }
  
println(frameRate);
println(attractors.size());

}

  










