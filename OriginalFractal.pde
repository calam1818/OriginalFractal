int HeartSize=2;
public void setup(){
  size(500,500);
  frameRate(60);
  rectMode(CENTER);
}

public void draw(){
  background(255,192,203);
     fill(255,0,0);
     stroke(0);
     strokeWeight(1);
 myFractal(100,500,400,400);
      translate(40,40);   
    stroke(255,20,147);
    strokeWeight(2); 
    for (float t=0; t<=2*PI; t+=.01){
      point((-16*HeartSize*pow(sin(t), 3)), (-(13*HeartSize*cos(t)-5*HeartSize*cos(2*t)-2*HeartSize*cos(3*t)-cos(4*t))));
}
    translate(400,330);
    stroke(255,20,147);
    strokeWeight(2); 
    for (float t=0; t<=2*PI; t+=.01){
      point((-16*HeartSize*pow(sin(t), 3)), (-(13*HeartSize*cos(t)-5*HeartSize*cos(2*t)-2*HeartSize*cos(3*t)-cos(4*t))));
}
}
public void myFractal(int x,int y, int z,int siz){
ellipse(x,y,z,siz);
 if(siz>10){  //if siz<=10 no recursion (base case)
  myFractal(x,y/2,z/2,siz/2);
  myFractal(x,y,z/2,siz/2);
  myFractal(x*siz/2,y,z,siz/2);
  myFractal(x+siz/2,y/2,z/2,siz/2);
  myFractal(x+siz/2,y,z/2,siz/2);

 }
}
