
void setup() {
  size(200,200);
  background(0);
  colorMode(RGB,255,255,255,255);
  smooth();
}

void draw() {
  //create an alpha blended background
  fill(0,1);
  rect(0,0,width,height);
  
  //calculate a probability between 0 and 10% based on mouseX location
  float prob = (mouseX / (float) width) * 0.10;     
  
  //get a random floating point value between 0 and 1
  float r = random(1);   
  
  //test the random value against the probability and trigger an event
  if (r < prob) {
    noStroke();
    fill(255);
    ellipse(random(width),random(height),16,16);
  }
}
