size(300, 300)
background(0)
radius = min(width, height) / 2.0
cx, cy = width / 2, width / 2
for x in range(width):
        for y in range(height):
            rx = x - cx
            ry = y - cy
            s = sqrt(rx ** 2 + ry ** 2) / radius
            if s <= 1.0:
                h = ((atan2(ry, rx) / PI) + 1.0) / 2.0
                colorMode(HSB)
                c = color(int(h * 255), int(s * 255), 255)
                set(x, y, c)
