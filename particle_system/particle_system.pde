int total = 10;

ArrayList<Particle> plist = new ArrayList<Particle>();

void setup(){
  size(400, 400);
  for (int i = 0; i < total; i++) {
    plist.add(new Particle(new PVector (width/2,10)));
  }
}

void draw(){
  background(255);
  for (int i = 0; i < plist.size(); i++) {
    Particle p = plist.get(i);
    p.run();
  }
}






