class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector force;
  float x;
  float y;

  
  Mover(float posX, float posY){
    x = posX;
    y = posY;
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001, 0.01);

    
  }
  
    void applyForce(PVector force){
    //net of all forces
     acceleration.add(force);
  }

  
  void update(){

    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
 
  }
  
  void display(){
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 30, 30);
  }
  
  void checkEdges(){
    if(location.x > width){
      location.x = 0;
    } else if(location.x < 0){
      location.x = width;
    }
    
    if(location.y > height){
      location.y = 0;
    } else if (location.y < 0){
      location.y = height;
    }
  }


}
