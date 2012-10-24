import processing.pdf.*;

void setup() {
  size(1000, 800);
  smooth();
  beginRecord(PDF, "sketch_41.pdf");
  noLoop();
  noStroke();
}

void draw() {

//sets background color  

background(random(220,240), random(100,255), random(20));

  for(int j=0; j < 50; j+=1) { 
    float x_start = random(width);
    float y_start = random(height);
    float r_width = random(4, 20);
    float e_size = random(5);
    float e_alf = 200;
    float color_01 = random(10,40);
    float color_02 = random(110,180);
    float color_03 = random(160, 210);
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
    float color_01 = random(10,40);
    float color_02 = random(110,180);
    float color_03 = random(160, 210);
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
    float color_01 = random(10,40);
    float color_02 = random(110,180);
    float color_03 = random(160, 210);
    float flip = random(10);
     noStroke();
     pushMatrix();
     translate(x_start, y_start);
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
     popMatrix();
  }

endRecord();

}
