"""
Draw a pixel
https://rosettacode.org/wiki/Draw_a_pixel#Processing
Processing 3.4

Task:

Create a window and draw a pixel in it, subject to the following:
1. the window is 320 x 240
2. the color of the pixel must be red (255,0,0)
3. the position of the pixel is x = 100, y = 100
"""

# A static-mode sketch setting one pixel on the canvas pixels array:

size(320, 240);
set(100, 100, color(255,0,0))


# # The same sketch in active mode sketch is:

# def setup():
#     size(320, 240)
#     set(100, 100, color(255,0,0))
