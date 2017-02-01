public void setup() {
	size(900,900);
	rectMode(CENTER);
	//noLoop();
	noStroke();
}

public void draw() {
	background(0);
	fractal(mouseX,mouseY,2000,1500,1);
}

public void fractal(int x, int y, int w, int l, int upOrDown) {
	fill((float)Math.random()*255,(float)Math.random()*255,(float)Math.random()*255);
	rect(x,y,w,l);
	if (w > 1) {
		if(upOrDown == 1) {
			fractal(x,y,(int)(w/1.2),l,-1);
		}
		if(upOrDown == -1) {
			fractal(x,y,w,(int)(l/1.2),1);
		}
	}
}