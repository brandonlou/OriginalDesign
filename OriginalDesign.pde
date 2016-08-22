void setup() {
  frameRate(60);
  size(1000,500);
  background(255,255,255);
}

void draw() {
	if (mousePressed && mouseButton == LEFT) {
		drawCircle();

	} else if (mousePressed && mouseButton == RIGHT) {
		eraseCircles();

	} else if(keyPressed && key == 'c') {
		reset();
	}
}

void drawCircle() {
	noStroke();
	fill(random(256),random(256),random(256));
	ellipse(mouseX, mouseY, 10, 10);

}

void eraseCircles() {
	noStroke();
	fill(255,255,255);
	ellipse(mouseX, mouseY, 10, 10);

}

void reset() {
	background(255,255,255);
}