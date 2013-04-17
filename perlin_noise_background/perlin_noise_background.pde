
void setup(){
  size(displayWidth, displayHeight);
  background(0);
}

void draw(){
loadPixels();
float xoff = 0.0;

for (int x = 0; x < width; x++){
  float yoff = 0.0;
  
  for(int y = 0; y < height; y++){
    float bright = map(noise(xoff,yoff), 0, 1, 0, 255);
    pixels[x+y*width] = color(234, 145, bright, 10);
    yoff += 0.001;
  }
  xoff += 0.001;
}




updatePixels();

text(frameRate, 10, 10);
}
