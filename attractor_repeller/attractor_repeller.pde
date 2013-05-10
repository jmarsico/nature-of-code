import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;
import toxi.geom.*;
import java.util.Iterator;

// import TSPS
import tsps.*;
TSPS tspsReceiver;

int maxPeople= 10;
int numRepellers = 110;

Attractor[] attractors = new Attractor[maxPeople];
ArrayList<Repeller> repellers;

VerletPhysics2D physics;


void setup() {
  size(640, 480, P2D);
  smooth(4);
  tspsReceiver= new TSPS(this, 12000);
  physics = new VerletPhysics2D();
  physics.setDrag(0.01);
  physics.setWorldBounds(new Rect(0, 0, width, height));
  repellers = new ArrayList<Repeller>();
  
  for(int i = 0; i<attractors.length; i++){
    attractors[i] = new Attractor(new Vec2D(0,0));
  }

  for (int i = 0; i < numRepellers; i++) {
    repellers.add(new Repeller(new Vec2D(random(width), random(height))));
  }
}


void draw() {
  background(255);
  physics.update();

  TSPSPerson[] people = tspsReceiver.getPeopleArray();
  for (int i=0; i<people.length; i++) {
    // get person
    TSPSPerson person = people[i];
    attractors[i].setVector(new Vec2D(person.centroid.x * width, person.centroid.y *height));
    attractors[i].display();
    attractors[i].setPhysics();
  }
  
  if(people.length > 0){
  for (int i =people.length; i < attractors.length; i++){
    attractors[i].removePhysics();
  }
  }

  


      for (Repeller r: repellers) {
      r.display();
    }

    println(frameRate);
  
  }










