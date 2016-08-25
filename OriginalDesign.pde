float w = 1000;
float h = 800;

float earthY = 0;
float marsY = 0;

void setup() {
	frameRate(30);
}

void settings() {
  size((int)w, (int)h, "processing.opengl.PGraphics3D");
}

void draw() {

	size((int)w, (int)h, P3D);
	lights();
	reset();

	earthY += 0.05;
	marsY += 0.075;

	drawSun();
	drawEarth();
	drawMars();

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

void reset() {
	background(0);
}