Walker w;

void setup(){
  size(640, 230);
  w = new Walker();
  background(255);
}


void draw(){
  w.step();
  w.display();
}






class Walker{
  float x;
  float y;
  
  Walker(){
    x = width/2;
    y = height/2;
    
  }
  
  void display(){
    stroke(0);
    point(x,y);
  }
  
  
  void step(){
    float r = random(1);
    if(r < 0.4){
      x++;
    } else if (r < 0.6){
      x--;
    } else if (r < 0.8){
      y++;
    } else if (r < 1.0){ 
      y--;
    }
    
    }
}  
