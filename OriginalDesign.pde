//import processing.opengl.*;

int numStars = 0;

float earthY = 0;
float marsY = 0;
float plutoY = 0;
float XY = 0;

void setup() {
	frameRate(30);
	size(1000, 800, OPENGL);
}

void draw() {

	lights();
	resetBackground();

	earthY += 0.05;
	marsY += 0.075;
	plutoY += 0.1;
	XY += 0.00001;

	drawSun();
	drawEarth();
	drawMars();
	drawPluto();
	drawX();

}

void drawSun() {
	pushMatrix();
	translate(width/2, height/2, 0);
	noStroke();
	fill(255,140,0);
	sphere(50);
	popMatrix();
}

void drawEarth() {
	rotateY(earthY);
	pushMatrix();
	translate(800,height/2,0);
	noStroke();
	fill(0,0,200);
	sphere(25);
	popMatrix();
}

void drawMars() {
	rotateY(marsY);
	pushMatrix();
	translate(600,height/2,0);
	noStroke();
	fill(200,0,0);
	sphere(15);
	popMatrix();
}

void drawPluto() {
	rotateY(plutoY);
	pushMatrix();
	translate(900,height/2,0);
	noStroke();
	fill(0,200,0);
	sphere(10);
	popMatrix();
}

void drawX() {
	rotateY(XY);
	pushMatrix();
	translate(900,height/2,0);
	noStroke();
	fill(0,200,200);
	sphere(45);
	popMatrix();
}

void resetBackground() {
	background(0);
	while(numStars <= 100) {
		fill(255,255,255);
		float diameter = random(10);
		ellipse(random(width),random(height), diameter,diameter);
		numStars++;
	}
	numStars = 0;
}