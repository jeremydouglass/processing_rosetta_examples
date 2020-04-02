def setup():
    size(640, 480)
 
def draw():
    ellipse(mouseX, mouseY, 5, 5)
    println("x:{} y:{}".format(mouseX, mouseY))
