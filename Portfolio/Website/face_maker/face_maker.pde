void setup(){
  size(400,400);
  background(0);
  frameRate(1);
}

void draw(){
  background(0);
  //head
  fill(random(150, 255), random(150, 255), random(150, 255));
  ellipse(width/2, height/2, random(width/2, width), random(height*3/4, height));
  //mouth
  strokeWeight(10);
  //line(random( ) );
}
