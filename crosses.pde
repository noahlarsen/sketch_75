void crosses(float c1, float c2, float c3, float r_width, float e_size, float e_alf )
{
    for(int i=0; i < 10; i+=1) {
       fill(c1, c2, c3, e_alf);
       ellipseMode(CENTER);
       ellipse(0+r_width/2, 0+r_width/2, e_size, e_size);
       e_size += 5;
       e_alf -= 20;
     }
     fill(c1, c2, c3, random(150,220));
     rect(0, 0, r_width, r_width);
     fill(c1, c2, c3, random(150,220));
     rect(0, 0+r_width, r_width, r_width);
     fill(c1, c2, c3, random(150,220));
     rect(0, 0-r_width, r_width, r_width);
     fill(c1, c2, c3, random(150,220));
     rect(0+r_width, 0, r_width, r_width);
     fill(c1, c2, c3, random(150,220));
     rect(0-r_width, 0, r_width, r_width);
}
