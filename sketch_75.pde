import processing.pdf.*;

void setup() {
  size(1000, 800);
  smooth();
 beginRecord(PDF, "sketch_82.pdf");
  noLoop();
  noStroke();
}

void draw() {

//sets background color  

float x_box = 0;
for(int i=0; i<width; i+=1) {
 float y_box = 0;
  for(int h=0; h<height; h+=1) {
    fill(random(10,50), random(10,50), random(20,150));
    rect(x_box, y_box, 5, 5);
    y_box += 5;
   }
   x_box += 5;
}

for(int r=0; r<100; r+=1) {
  float x_01 = width/2;
  float x_02 = random(350, 450);
  float x_03 = random(350, 450);
  float x_04 = 0;
  float y_01 = random(250, 550);
  float y_02 = random(300, 400);
  float y_03 = random(300, 400);
  float y_04 = random(250, 550);
  float steps = random(3, 5);
  noStroke();
  for (int i = 0; i <= steps; i++) {
    float t = i / steps + .1;
    float x = bezierPoint(x_01, x_02, x_03, x_04, t);
    float y = bezierPoint(y_01, y_02, y_03, y_04, t);
  }
  float line_alpha = 250;
  float line_weight = 1;
  for (int c=0; c<10; c++) {
  noFill();
  stroke(255, 255, 255, line_alpha);
  strokeWeight(line_weight);
  pushMatrix();
  translate(width, height);
  rotate(radians(180));
  bezier(x_01, y_01,  x_02,  y_02, x_03,  y_03,  x_04, y_04);
  popMatrix();
  bezier(x_01, y_01,  x_02,  y_02, x_03,  y_03,  x_04, y_04);
  line_alpha -= line_alpha*.5;
  line_weight += 3;
  }
}

  for(int j=0; j < 50; j+=1) { 
    float x_start = random(width);
    float y_start = random(height);
    float r_width = random(4, 20);
    float e_size = random(5);
    float e_alf = 200;
    float color_01 = random(20,150);
    float color_02 = random(30);
    float color_03 = random(140,200);
    float flip = random(10);
     pushMatrix();
     translate(x_start, y_start);
     rotate(PI/random(3));
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
     popMatrix();
  }

  for(int j=0; j < 100; j+=1) { 
    float x_start = random(100, 900);
    float y_start = random(100, 700);
    float r_width = random(4, 20);
    float e_size = random(5);
    float e_alf = 200;
    float color_01 = random(20,150);
    float color_02 = random(30);
    float color_03 = random(140,200);
    float flip = random(10);
     noStroke();
     pushMatrix();
     translate(x_start, y_start);
     rotate(PI/random(3));
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
     popMatrix();
  }

  for(int j=0; j < 200; j+=1) { 
    float x_start = random(300, 700);
    float y_start = random(300, 500);
    float r_width = random(4, 20);
    float e_size = random(5);
    float e_alf = 200;
   float color_01 = random(20,150);
    float color_02 = random(30);
    float color_03 = random(140,200);
    float flip = random(10);
     noStroke();
     pushMatrix();
     translate(x_start, y_start);
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
     popMatrix();
  }

endRecord();

}
