void setup(){
    size(640, 480);
}

void draw(){
    ellipse(mouseX, mouseY, 5, 5);
    println("x:" + mouseX + " y:" + mouseY);
}
