float angle = 0;
float aVelocity = 0.5;

Oscillator oscillators[] = new Oscillator[10];

void setup() {
  size(640, 360);
  for(int i = 0; i < oscillators.length; i ++){
    oscillators[i] = new Oscillator();
  }


}

void draw() {
 background(255);



for(int i = 0; i < oscillators.length; i ++){
    oscillators[i].oscillate();
    oscillators[i].display();
}


}

