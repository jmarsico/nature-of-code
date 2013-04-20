int numMovers = 20;


Mover[] movers = new Mover[numMovers];

Liquid liquid;




void setup() {
  size(800, 400);
  reset();
  liquid = new Liquid(0, height/2, width, height/2, 0.1);
  
}


void draw() {
  background(255);  
  liquid.display();


  //apply forces to objects
  for (int i = 0; i < movers.length; i++) {

    if (liquid.contains(movers[i])) {
      PVector dragForce = liquid.drag(movers[i]);
      movers[i].applyForce(dragForce);
    }



    float m = 0.1*movers[i].mass;
    PVector gravity = new PVector(0, m);
    movers[i].applyForce(gravity);    
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}

void mousePressed() {
  reset();
}

void reset() {
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.5, 3), random(width), random(0, 100));
  }
}

