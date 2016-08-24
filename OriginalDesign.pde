float w = 750;
float h = 750;

float y = 0;

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
	drawSun();
	y+=0.005;

}

void drawSun() {
	pushMatrix();
	translate(w/2, h/2, 0);
	noStroke();
	fill(255,140,0);
	sphere(50);
	popMatrix();
}

void reset() {
	background(0);
}