//import processing.pdf.*;

void setup() {
  size(1000, 800);
  smooth();
  //beginRecord(PDF, "sketch_20.pdf");
noLoop();
}

void draw() {

//sets background color  

background(random(220,240), random(100,255), random(20));



for(int m=0; m<1; m+=1) {

  for(int j=0; j < 100; j+=1) { 
    float x_start = random(100, 900);
    float y_start = random(100, 700);
    float r_width = random(4, 20);
    float e_x = x_start + (r_width/2);
    float e_y = y_start + (r_width/2);
    float e_size = random(5);
    float e_alf = 200;
    float color_01 = random(10,40);
    float color_02 = random(110,180);
    float color_03 = random(160, 210);
     noStroke();
     for(int i=0; i < 10; i+=1) {
       fill(255, 255, 255, e_alf);
       ellipse(e_x, e_y, e_size, e_size);
       e_size += 5;
       e_alf -= 20;
     }
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
  
  for(int j=0; j < 200; j+=1) { 
    float x_start = random(300, 700);
    float y_start = random(300, 500);
    float r_width = random(4, 20);
    float white = random(210,255);
    float color_01 = random(10,40);
    float color_02 = random(110,180);
    float color_03 = random(160, 210);
    float e_x = x_start + (r_width/2);
    float e_y = y_start + (r_width/2);
    float e_size = random(5);
    float e_alf = 200;
     noStroke();
     for(int i=0; i < 10; i+=1) {
       fill(255, 255, 255, e_alf);
       ellipse(e_x, e_y, e_size, e_size);
       e_size += 5;
       e_alf -= 20;
     }
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

//endRecord();

}
