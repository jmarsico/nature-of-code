import java.util.Random;

Random generator;

void setup(){
  background(255);
  size(640, 360);
  generator = new Random();
}

void draw(){
  
  
  float num = (float) generator.nextGaussian();
  float standardDeviation = 60;
  float mean = 320;
  
  float x = standardDeviation * num + mean;
  
  noStroke();
  fill(0, 10);
  ellipse(x, height/2, 16, 16);
}
