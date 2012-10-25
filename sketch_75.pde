//X-plosions by Noah Larsen 10/2012

//Uncomment the following line along with beginRecord and endRecord to export pdf
//import processing.pdf.*;

void setup() {
  //change to control size. Should be generally scalable
  size(1000, 800);
  smooth();
 //beginRecord(PDF, "sketch_95.pdf");
  noLoop();
  noStroke();
}

void draw() {

//sets background color -- this is primarily hidden
background(random(10,50), random(10,50), random(20,150));

//generates background tiles from top to bottom and loops across. This is where a bulk of the file heft is derived
//you can either remove, or refactor to generate large tiles
float x_box = 0;
for(int i=0; i<width; i+=1) {
//sets/resets y for tiles
 float y_box = 0;
  for(int h=0; h<height; h+=1) {
//sets tile colors -> rgb
    fill(random(10,50), random(10,50), random(20,150));
//draws box
    rect(x_box, y_box, 5, 5);
//moves y variable 4 down for next draw then loops
    y_box += 4;
   }
//resets x variable to start next row
   x_box += 4;
}

//First set of crosses -- covers full canvas. See crosses.pde for the crosses class.
//Loops to draw 50 crosses in outer x/y range
  for(int j=0; j < 50; j+=1) { 
//sets coverage range for width
    float x_start = random(width);
//sets coverage range for height
    float y_start = random(height);
//set box size for building crosses
    float r_width = random(4, 20);
//sets begining ellipse size for background glow
    float e_size = random(5);
//sets starting ellipse alpha
    float e_alf = 200;
//sets colors r -> 01, g -> 02, b -> 03
    float color_01 = random(20,150);
    float color_02 = random(30);
    float color_03 = random(140,200);
//starts pushMatrix for translate and rotation
     pushMatrix();
//translates canvas grid
     translate(x_start, y_start);
//rotates cross
     rotate(PI/random(3));
//generates cross
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
//resets matrix
     popMatrix();
  }

//First set of crosses -- covers constricted canvas. See crosses.pde for the crosses class.
//Loops to draw 100 crosses in middle x/y range
  for(int j=0; j < 100; j+=1) { 
//sets coverage range for width
    float x_start = random(100, 900);
//sets coverage range for height
    float y_start = random(100, 700);
//set box size for building crosses
    float r_width = random(4, 20);
//sets begining ellipse size for background glow
    float e_size = random(5);
//sets starting ellipse alpha
    float e_alf = 200;
//sets colors r -> 01, g -> 02, b -> 03
    float color_01 = random(20,150);
    float color_02 = random(30);
    float color_03 = random(140,200);
//starts pushMatrix for translate and rotation
     pushMatrix();
//translates canvas grid
     translate(x_start, y_start);
//rotates cross
     rotate(PI/random(3));
//generates cross
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
//resets matrix
     popMatrix();
  }

//First set of crosses -- covers small area in middle of canvas. See crosses.pde for the crosses class.
//Loops to draw 100 crosses in small, center x/y range
  for(int j=0; j < 200; j+=1) {
//sets coverage range for width 
    float x_start = random(300, 700);
//sets coverage range for height
    float y_start = random(300, 500);
//set box size for building crosses
    float r_width = random(4, 20);
//sets begining ellipse size for background glow
    float e_size = random(5);
//sets starting ellipse alpha
    float e_alf = 200;
//sets colors r -> 01, g -> 02, b -> 03
    float color_01 = random(20,150);
    float color_02 = random(30);
    float color_03 = random(140,200);
//starts pushMatrix for translate and rotation
     pushMatrix();
//translates canvas grid
     translate(x_start, y_start);
//generates cross
     crosses(color_01, color_02, color_03, r_width, e_size, e_alf);
//resets matrix
     popMatrix();
  }


//endRecord();

}
