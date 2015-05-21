class Button {
  float buttonX = 50;
  float buttonY = 50;
  float buttonW = 100;
  float buttonH = 75;
  boolean on;
  
  //constructor for all variables
  Button(float tempX, float tempY, float tempW, float tempH) {
    buttonX  = tempX;
    buttonY  = tempY;
    buttonW  = tempW;
    buttonH  = tempH;
    on = false;
  }
  
  void click() {
    if (mouseX >= buttonX && mouseX <= buttonX + buttonW && mouseY >= buttonY && mouseY <= buttonY + buttonH) {
      if (mousePressed == true) {
        fill(#FF0900);
        on = true;
      } else {
        fill(#007DFF);
      }
    } else {
      fill(#001BFF);
    }
  rect(buttonX, buttonY, buttonW, buttonH);
  }
}
