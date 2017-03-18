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
  # top_s: should the top serif be extended to form a diamond
  # bot_s: should the bottom serif be extended to form a diamond
  def down_stroke(col: 0, top: 0, bot: 0, asc: 0, dsc: 0, left: 1, right: 1, top_s: false, bot_s: false)

    real_top = top
    real_top = 0.5 if top_s
    real_bot = bot
    real_bot = 0.5 if bot_s

    x1 = xp + col*nw - (real_top*2*dx)*left
    x2 = xp + col*nw
    x3 = xp + col*nw + (real_bot*2*dx)*right

    y1 = yp + dy - asc*2*dy
    y2 = yp + dy + real_top*2*dy - asc*2*dy
    y3 = yp + 4*nib - dy - real_bot*2*dy + dsc*2*dy
    y4 = yp + 4*nib - dy + dsc*2*dy

    output = ""
    output += penline(x1, y1, x2, y2) if top > 0 and not top_s
    output += penline(x1, y1, x2+(x2-x1), y2+(y2-y1)) if real_top > 0 and top_s
    output += penline(x2, y2, x2, y3)
    output += penline(x2, y3, x3, y4) if bot > 0 and not bot_s
    output += penline(x2-(x3-x2), y3-(y4-y3), x3, y4) if real_bot > 0 and bot_s
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
