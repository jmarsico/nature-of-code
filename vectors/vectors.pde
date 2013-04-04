
int numMovers = 29;
Mover[] movers = new Mover[numMovers];


boolean brake;



void setup(){
  size(640, 360);
  for(int i = 0; i< movers.length; i++){
    float x = random(width);
    float y = random(height);
  movers[i] = new Mover(x, y);
  }
}

void draw(){
  background(255);
  
 for(int i = 0; i < movers.length; i++){
 movers[i].update();
 movers[i].checkEdges();
 movers[i].display();
 }
  
}



