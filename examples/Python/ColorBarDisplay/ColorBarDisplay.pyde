# Color bars -- Display
# http:# rosettacode.org/wiki/Colour_bars/Display#Processing
# Processing 3.4
# 2020-04-17 Jeremy Douglass
#
# Display a series of vertical color bars across the width of the display.
# The color bars should either use:
# -  the system palette, or
# -  the sequence of colors:
#    -  black
#    -  red
#    -  green
#    -  magenta
#    -  cyan
#    -  yellow
#    -  white

def setup():
    fullScreen()
    noStroke()
    cs = [color(0),
          color(255, 0, 0),
          color(0, 255, 0),
          color(0, 0, 255),
          color(255, 0, 255),
          color(0, 255, 255),
          color(255, 255, 0),
          color(255)
          ]
    for c in cs:
        fill(c)
        rect(0, 0, width / len(cs), height)
        translate(width / len(cs), 0)
