PImage img1, img2;
PVector pos1, pos2;
PShape shp;

void setup() {
  size(1000, 800, P2D);
  
  img1 = loadImage("girls.png");
  img2 = loadImage("garden.jpg");
  
  pos1 = new PVector(300, 300);
  pos2 = new PVector(width, height);
  
  shp = createShape();
  shp.beginShape();
  shp.stroke(0, 6, 176);
  shp.fill(26, 106, 130);
  shp.vertex(pos1.x, pos1.y);
  shp.vertex(pos2.x, pos2.y);
  shp.vertex(0, 0);
  shp.endShape();
}

void draw() {
  imageMode(CORNER);
  image(img1, 0, 0, width, height);

  imageMode(CENTER);
  image(img2, mouseX, mouseY, 100, 100);
  
  strokeWeight(20);
  stroke(87, 148, 125);
  point(pos1.x, pos1.y);
  point(pos2.x, pos2.y);
  
  strokeWeight(10);
  stroke(143, 78, 163);
  line(pos1.x, pos1.y, pos2.x, pos2.y);
  
  shape(shp);
}
