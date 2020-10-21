# frozen_string_literal: true

attr_reader :colors, :positions

def settings
  size 500, 500
end

def setup
  sketch_title 'Voronoi Diagram'
  load_pixels
  color_mode(HSB, 360, 1, 1)
  @colors = generate_colors(30)
  @positions = generate_positions(30)
  draw_voronoi
  update_pixels
  draw_voronoi_centers
end

def generate_colors(num)
  (0..num).map { color(rand(360), 1.0, 1.0) }
end

def generate_positions(num)
  (0..num).map { Vec2D.new(rand(width), rand(height)) }
end

def draw_voronoi
  grid(width, height) do |x, y|
    pos = Vec2D.new(x, y)
    closest = positions.min_by { |posn| posn.dist(pos) }
    index = positions.index closest
    pixels[x + y * width] = colors[index]
  end
end

def draw_voronoi_centers
  positions.each do |pos|
    no_stroke
    fill 0
    ellipse(pos.x, pos.y, 4, 4)
  end
end
