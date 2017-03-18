class Pen

  def almost
    0.8
  end

  # col: how many colums to the right should the stroke be
  # top: width of top serif (usually 1 or 0.5)
  # bot: width of bottom serif (usually 1 or 0.5)
  # asc: adjust the top edge of the stroke
  # dsc: adjust the bottom edge of the stroke
  # left: stretch or compress the top(left) serif
  # right: stretch or compress the bottom(right) serif
  def down_stroke(col: 0, top: 0, bot: 0, asc: 0, dsc: 0, left: 1, right: 1)
    x1 = xp + col*nw - (top*2*dx)*left
    x2 = xp + col*nw
    x3 = xp + col*nw + (bot*2*dx)*right

    y1 = yp + dy - asc*2*dy
    y2 = yp + dy + top*2*dy - asc*2*dy
    y3 = yp + 4*nib - dy - bot*2*dy + dsc*2*dy
    y4 = yp + 4*nib - dy + dsc*2*dy

    output = ""
    output += penline((x1+x2)/2, y1, (x2+x3)/2, y2) if top > 0
    output += penline(x2, y2-dy, x2, y3+dy)
    output += penline((x1+x2)/2, y3, (x2+x3)/2, y4) if bot > 0
    output
  end

  def dot(col: 0, wide: 1, top: 0, tall: 1)
    x1 = xp + col*nw
    x2 = x1 + wide*nw

    y1 = yp - dy + top*2*dy
    y2 = y1 + tall*2*dy
    
    penline(x1, y1, x2, y2)
  end

  def bottom_dot(col: 0, wide: 1, top: 0, tall: 1)
    x1 = xp + col*nw
    x2 = x1 + wide*nw

    y1 = yp + 4*nib - dy + top*2*dy
    y2 = y1 + tall*2*dy
    
    penline(x1, y1, x2, y2)
  end
end
