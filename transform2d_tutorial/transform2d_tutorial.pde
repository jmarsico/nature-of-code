void setup(){
  size(400, 400);
  background(255);
  noStroke();
}

void draw(){
  if (frameCount % 10 == 0) {
    fill(frameCount *3 % 255, frameCount * 5 %255, frameCount * 7 % 255, 200);
    pushMatrix();
    translate(100, 100);
    rotate(radians(frameCount * 5 % 360));
    rect( 0, 0, 80, 5);
    popMatrix();
  }
}
