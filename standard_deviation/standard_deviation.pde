import java.util.Random;

Random generator;

void setup(){
  background(255);
  size(displayWidth, displayHeight);
  generator = new Random();
}

void draw(){
  
  
  float numX = (float) generator.nextGaussian();
  float numY = (float) generator.nextGaussian();
  float standardDeviationDist = 100;
  float meanX = width/2;
  float meanY = height/2;
  
  float x = standardDeviationDist * numX + meanX;
  float y = standardDeviationDist * numY + meanY;
  

  float numG = (float) generator.nextGaussian();
  float numB = (float) generator.nextGaussian();
  float standardDeviationCol = 40;
  float mean = 200;
  
  float g = standardDeviationCol * numG + mean;
  float b = standardDeviationCol * numB + mean;
  int r = 0;
  
  
  noStroke();
  fill(r, g, b, 10);
  ellipse(x,y, 16, 16);
}
