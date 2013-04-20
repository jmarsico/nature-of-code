void setup(){
  size(400, 200);
  background(255);
 for (int i = 10; i < 350; i += 50){
   house(i, 20);
 }
}
  
  
void house(int x, int y){
  pushMatrix();
  translate(x, y);
  triangle(15, 0, 0, 15, 30, 15);
  rect(0, 15, 30, 30);
  rect(12, 30, 10, 15);
  popMatrix();
}
