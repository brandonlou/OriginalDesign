import processing.opengl.*;

float w = 1000;
float h = 800;

int numStars = 0;

float earthY = 0;
float marsY = 0;
float plutoY = 0;
float planetX = 0;

void setup() {
	frameRate(30);
}

void settings() {
  size((int)w, (int)h, P3D);
}

void draw() {

	size((int)w, (int)h, P3D);
	lights();
	reset();

	earthY += 0.05;
	marsY += 0.075;
	plutoY += 0.1;
	planetX += 0.00001;

	drawSun();
	drawEarth();
	drawMars();
	drawPluto();
	drawX();

}

void drawSun() {
	pushMatrix();
	translate(w/2, h/2, 0);
	noStroke();
	fill(255,140,0);
	sphere(50);
	popMatrix();
}

void drawEarth() {
	rotateY(earthY);
	pushMatrix();
	translate(800,h/2,0);
	noStroke();
	fill(0,0,200);
	sphere(25);
	popMatrix();
}

void drawMars() {
	rotateY(marsY);
	pushMatrix();
	translate(600,h/2,0);
	noStroke();
	fill(200,0,0);
	sphere(15);
	popMatrix();
}

void drawPluto() {
	rotateY(plutoY);
	pushMatrix();
	translate(900,h/2,0);
	noStroke();
	fill(0,200,0);
	sphere(10);
	popMatrix();
}

void drawX() {
	rotateY(planetX);
	pushMatrix();
	translate(900,h/2,0);
	noStroke();
	fill(0,200,200);
	sphere(45);
	popMatrix();
}

void reset() {
	background(0);
	while(numStars <= 100) {
		fill(255);
		float diameter = random(10);
		ellipse(random(w),random(h), diameter,diameter);
		numStars++;
	}
	numStars = 0;
}