"""
Mouse position
https://rosettacode.org/wiki/Mouse_position#Processing
Processing 3.4
2020-04 Alexandre Villares

Task:

Get the current location of the mouse cursor relative to the active window.
"""

def setup():
    size(640, 480)

def draw():
    # mouseX and mouseY provide the current mouse position
    ellipse(mouseX, mouseY, 5, 5) # graphic output example
    println("x:{} y:{}".format(mouseX, mouseY))
