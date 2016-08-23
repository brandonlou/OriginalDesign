float y = 1;
float x = 1;

void setup() {
	frameRate(20);
	background(136, 139, 141);
}

void settings() {
  size(1000, 1000, "processing.opengl.PGraphics3D");
}

void draw() {
	size(1000, 1000, P3D);
	reset();
	drawCube();
	drawSphere();
}

void drawCube() {
	//x+=0.5;
	y+=0.25;
	translate(250,250,0);
	rotateY(y);
	rotateX(x);
	noFill();
	stroke(0,255,0);
	box(40);
}

void drawSphere() {
	translate(500,500,0);
	stroke(25,25,25);
	lights();
	sphere(100);
}

void reset() {
	background(136, 139, 141);
}