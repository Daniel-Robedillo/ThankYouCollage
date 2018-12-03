PImage img;

//integer variables

int X = 300;
int Y = 130;
int bounce = 1;

//sets up the environment
void setup() {
  size(600, 600);
  img = loadImage("policehat.jpg");
}
//anything here repeats while code is running
void draw() {
  background(255);
  fill(255);
  rect(X, Y-70, 410, 120);
  fill(0);
  textSize(50);  
  text("Thank You Mom!", X, Y);
  image(img, 330 , 205);
  //creates movement 
  X=X+bounce;

  //sets limits to movement
  if (X>width || X<0)
  {
    bounce=bounce*(-1);
  }

  if (mousePressed) {
    fill(#FFE448);
    noStroke();
  fill(random(0, 150), random(0, 150), random(0, 150));
    ellipse(440, 450, 200, 200);
    fill(0);
    ellipse(400, 420, 25, 45);
    ellipse(480, 420, 25, 45);
    noFill();
    stroke(0);
    strokeWeight(7);
    arc(440, 480, 100, 100, radians(0), radians(180));
  } else {

    fill(#FFE448);
    noStroke();
    fill(255, 255, 0);
    ellipse(440, 450, 200, 200);
    fill(0);
    ellipse(400, 420, 25, 45);
    ellipse(480, 420, 25, 45);
    noFill();
    stroke(0);
    strokeWeight(7);
    arc(440, 480, 100, 100, radians(0), radians(180));
  }
}
