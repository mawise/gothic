class Pen
  attr_reader :nib, :flat_nib, :slope, :line_height, :extend
  attr_accessor :x_pos, :y_pos, :line_space
  def initialize(nib, flat_nib, slope)
    @nib = nib.to_f
    @flat_nib = flat_nib
    @slope = slope
    @x_pos = 3*nib
    @y_pos = 4*nib
    @line_height = 4*nib
    @line_space = 2*line_height 
    @extend = 1.5*nib
  end

  # convenience methods
  def yp
    y_pos
  end
  def xp
    x_pos
  end

  # convert angle in degrees to radians
  def rad(slope)
    return slope * Math::PI/180
  end
  
  def dx
    Math.cos(rad(slope)) * (nib/2)
  end
  def dy
      Math.sin(rad(slope)) * (nib/2)
  end

  # pair of points that define the line of the nib centered at point
  # and rotated by angle
  def nib_edges(x,y)
    return [[x+dx, y-dy],[x-dx,y+dy]]
  end

  # width of the nib line when rotated by pen angle
  def nw
    return 2*dx
  end

  # 0 is horizonal, 90 is virtical
  def penline(x1,y1,x2,y2)
    start = nib_edges(x1,y1)
    stop = nib_edges(x2,y2).reverse
    points = start+stop
  
    points_str = ""
    points.each do |x,y|
      points_str += " " if points_str.length > 0
      points_str += "#{x},#{y}"
    end
    
    return "<polygon points=\"#{points_str}\" style=\"fill:black;stroke:black;stroke-width:0\" />"
  end

  def tailx
    1.6*dx
  end
 
  def hightick(x1,y1)
    x=x1-(dx/nib)*flat_nib
    y=y1-(dy/nib)*flat_nib
    tick(x,y)
  end

  def lowtick(x1,y1)
    x=x1+(dx/nib)*flat_nib
    y=y1+(dy/nib)*flat_nib
    tick(x,y)
  end
 
  # up-right sloping tick or serif
  def tick(x,y)
    "<line x1=\"#{x+0.85*dx}\" y1=\"#{y-0.85*dy}\" x2=\"#{x+3*dx}\" y2=\"#{y-3*dy}\" stroke-width=\"#{flat_nib}\" stroke=\"black\" />"
  end

  # up-right sloping tick or serif that doesn't connect the letter space
  def short_tick(x,y)
    "<line x1=\"#{x+0.9*dx}\" y1=\"#{y-0.9*dy}\" x2=\"#{x+dx+tailx}\" y2=\"#{y-3*dy}\" stroke-width=\"#{flat_nib}\" stroke=\"black\" />"
  end
end
