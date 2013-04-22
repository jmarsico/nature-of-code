int numMovers = 10;


Mover[] movers = new Mover[numMovers];






void setup() {
  size(displayWidth , displayHeight - 50);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 5), random(width), 0);
  }
}


void draw() {
  background(255);  


  for (int i = 0; i < movers.length; i++) {
    for (int j = 0; j < movers.length; j++) {
      if(i != j){
      PVector force = movers[j].attract(movers[i]);
      movers[i].applyForce(force);
      }
    }
      if(mousePressed){
        PVector topGrav = new PVector(0, -1.1);
        movers[i].applyForce(topGrav);
      } else {
      
      PVector gravity = new PVector(0, 0.01);
      movers[i].applyForce(gravity);}
      movers[i].checkEdges();
      movers[i].update();
      movers[i].display();
    }
  }

