int c = 299792458;
float theMouseX;

void setup(){
  size(1100, 250);
}


void draw(){
  background(190);
  mouseValue();
  
  //title
  fill(#FFFF00);
  textSize(30);
  textAlign(CENTER);
  text("Time dialation converter", width/2, 30);
  textSize(20);
  text("By ZAVHDOW", width/2, 50);
  textSize(15);
  fill(#FFFFFF);
  text("Move your cursor to change values", width/2, 80);
  text("Move slowly to get more precise values", width/2, 95);
  
  //gauges
  textSize(20);
  textAlign(LEFT);
  fill(0);
  text("%C: " + (theMouseX), 10, 20);
  text("m/s: " + convertPerCtoMps(theMouseX), 10, 40);
  text("mph: " + convertMpstoMph(convertPerCtoMps(theMouseX)), 10, 60);
  text("Time dialation: " + convertPerCtoPerDial(theMouseX), 10, 80);
  textSize(10);
  
  //indicator line
  strokeWeight(1);
  stroke(#FF0000);
  line(theMouseX*1000+25, 0, theMouseX*1000+25, height);
  
  //%C line
  strokeWeight(2);
  stroke(0);
  line(25, 115, 1025, 115);
  fill(#F011F5);
  text("Percent of the speed of light (%C)", 30, 110);
  for (int i=0; i <= 100; i += 10) {
    tickMark((i*10)+25, 115, i + "%");
  }
  
  //m/s line
  strokeWeight(2);
  stroke(0);
  line(25, 150, 1025, 150);
  fill(#F011F5);
  text("Meters per second (m/s)", 30, 145);
  for (int i=0; i <= c; i += 50000000) {
    tickMark( (convertMpstoPerC(i)*1000)+25, 150, i + "");
  }
  tickMark(1025, 150, c + "");
  
  //mph line
  strokeWeight(2);
  stroke(0);
  line(25, 185, 1025, 185);
  fill(#F011F5);
  text("Miles per hour (mph)", 30, 180);
  for (int i=0; i <= convertMpstoMph(c); i += 100000000) {
    tickMark( ((convertMpstoPerC(i)*1000)/2.237)+25, 185, i + "");
  }
  tickMark(1025, 185, "670616629");
  
  //time dialation line
  strokeWeight(2);
  stroke(0);
  line(25, 220, 1025, 220);
  fill(#F011F5);
  text("Years passed on stationary object (earth) if you spent one year at this speed (Time dialation)", 30, 215);
  tickMark(25, 220, "1.0");
  tickMark((.6*1000)+25 , 220, "1.25");
  tickMark((.75*1000)+25 , 220, "1.5");
  tickMark((.866*1000)+25 , 220, "2");
  tickMark((.943*1000)+25 , 220, "3");
  tickMark((.968*1000)+25 , 220, "4");
  tickMark((.98*1000)+25 , 220, "5");
  tickMark(1025, 220, "Infinity");
}


void mouseValue () {
  if (mouseX >= 25 && mouseX <= 1025) {
    theMouseX = (mouseX - 25) / 1000.0;
  }
}


void tickMark(float xpos, int liney, String texxt){
  stroke(0);
  line(xpos, liney-10, xpos, liney+10);
  fill(#FF0000);
  textSize(10);
  text(texxt, xpos+2, liney+10);
}


float convertMpstoPerC (float mps) {
  mps = mps / c;
  return mps;
}


float convertPerCtoMps (float perC) {
  perC *= c;
  return perC;
}


float convertPerCtoPerDial (float perC) {
  perC = 1 / sqrt(1 - (pow(convertPerCtoMps(perC), 2) / pow(c, 2)));
  return perC;
}


float convertMpstoMph (float Mps) {
  Mps *= 2.237;
  return Mps;
}

