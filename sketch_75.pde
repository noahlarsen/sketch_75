import processing.pdf.*;

void setup() {
  size(1000, 800);
  smooth();
beginRecord(PDF, "sketch_10.pdf");
noLoop();
}

void draw() {

//sets background color  

background(random(220,240), random(100,255), random(20));



for(int m=0; m<1; m+=1) {

  for(int j=0; j < 400; j+=1) { 
    float x_start = random(-10, width);
    float y_start = random(400, 600);
    float r_width = random(4, 20);
    float e_x = x_start + (r_width/2);
    float white = random(210,255);
    float color_01 = random(10,40);
    float color_02 = random(110,180);
    float color_03 = random(160, 210);
     noStroke();
     fill(color_01, color_02, color_03, random(100,200));
     rect(x_start, y_start, r_width, r_width);
     fill(color_01, color_02, color_03, random(100,200));
     rect(x_start, y_start+r_width, r_width, r_width);
     fill(color_01, color_02, color_03, random(100,200));
     rect(x_start, y_start-r_width, r_width, r_width);
     fill(color_01, color_02, color_03, random(100,200));
     rect(x_start+r_width, y_start, r_width, r_width);
     fill(color_01, color_02, color_03, random(100,200));
     rect(x_start-r_width, y_start, r_width, r_width);
  }
  
}

endRecord();

}
