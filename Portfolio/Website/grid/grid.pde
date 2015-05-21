/* Some credit to Mr.Kapptie at Skyline High 
...
...
...
Okay, pretty much all credit to Mr. Kapptie*/
void setup() {
  size(1000, 1000);
  background(#000666);
  smooth();
}

void draw() {
  background(#666999);
  drawGrid(100);
}


void drawGrid(int spacing){
  //set min, set max, set incrementer
  for (int i=spacing; i<10000; i+=spacing) {
    fill(0);
    line(0, i, width, i);
    line(i, 0, i, height);
    textSize(8);
    fill(150);
    text(i, 5, i);
    text(i, i-10, 10);
  }
}
