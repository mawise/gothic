class Pen

# Notes:  I need to abstract out some of these strokes
# Also, I need two different stroke heights, one virtical for
# shapes like the 'o' that form "round" things, another for
# shapes that don't need to conect, like the 'i' or the base
# of the 'h'

# inspiration:
# https://s-media-cache-ak0.pinimg.com/originals/f6/b3/19/f6b319750d4b04aebb3bf5b5d7632306.jpg
# http://2.bp.blogspot.com/-MzlQox_nAqQ/UWBctGzafwI/AAAAAAAABaM/F-nJLG3sG4g/s1600/Plain+Gothic.jpg

  # carriage return
  def cr 
    self.x_pos = 3*nib
    self.y_pos = y_pos + line_space
  end

  def a
    short_tick(xp+2*nw,yp+3*dy) +
    down_stroke(bot: 1, asc: -1) +  
    down_stroke(col: 2, top: 1, bot: 1, right: almost)
  ensure
    self.x_pos = xp + 4*nw
  end

  def b
    down_stroke(bot: 1, top_s: true, asc: 4) +  
    down_stroke(col: 2, top: 1, dsc: -1)
  ensure
    self.x_pos = xp + 4*nw
  end

  def c
    down_stroke(asc: -1, bot: 1) +
    dot(col: 1, top: 1)
  ensure
    self.x_pos = xp + 3*nw
  end

  def d
    down_stroke(asc: -1, bot: 1) + 
    down_stroke(col: 2, dsc: -1, asc: 1, top: 2) + 
    dot(wide: 0, top: -2, tall: 2)
  ensure
    self.x_pos = xp + 4*nw
  end

  def e
    down_stroke(asc: -1, bot: 1) +
    dot(col: 1, top: 1) +
    hightick(xp+nw, yp+4*nib-dy) + # bottom curve
    hightick(xp, yp+2*nib)
  ensure
    self.x_pos = xp + 4*nw
  end

  def f
    down_stroke(bot_s: true, asc: 3) + 
    dot(col:1, top: -3) + # top
    dot(top: 1, col: -1*almost, wide: 2.5, tall: 0) # cross
  ensure
    self.x_pos = xp + 3*nw
  end

  def g
    short_tick(xp+2*nw,yp+3*dy) +
    down_stroke(asc: -1, bot: 1) +
    down_stroke(col: 2, top: 1, dsc: 3) +
    bottom_dot(top: 3)
  ensure
    self.x_pos = xp + 4*nw
  end

  def h
    down_stroke(bot_s: true, top_s: true, asc: 4) +  
    down_stroke(col: 2, top: 1, bot_s: true)
  ensure
    self.x_pos = xp + 4*nw
  end

  def i
    down_stroke(top_s: true, bot_s: true) +
    dot(col: -0.5,  top: -1)
  ensure
    self.x_pos = xp + 2*nw
  end

  def j
    dot(col: -0.5, top: -1) +
    down_stroke(top_s: true, dsc: 3) +
    bottom_dot(col: -2, top: 3)
  ensure
    self.x_pos = xp + 2*nw
  end

  def k
    dot(col: 1, top: 1) +
    down_stroke(bot_s: true, top_s: true, asc: 4) +  
    down_stroke(col: 2, top: 1, bot_s: true, asc: -2)
  ensure
    self.x_pos = xp + 4*nw
  end

  def l
    down_stroke(bot_s: true, top_s: true, asc: 4)
  ensure
    self.x_pos = xp + 2*nw
  end

  def m
    down_stroke(bot_s: true, top_s: true) +  
    down_stroke(col: 2, top: 1, bot_s: true) +
    down_stroke(col: 4, top: 1, bot_s: true)
  ensure
    self.x_pos = xp + 6*nw
  end

  def n
    down_stroke(bot_s: true, top_s: true) +  
    down_stroke(col: 2, top: 1, bot_s: true)
  ensure
    self.x_pos = xp + 4*nw
  end

  def o
    down_stroke(bot: 1, asc: -1) +  
    down_stroke(col: 2, top: 1, dsc: -1)
  ensure
    self.x_pos = xp + 4*nw
  end

  def p
    down_stroke(top_s: true, bot_s: true, dsc: 4) +  
    down_stroke(col: 2, top: 1, dsc: -1) +
    bottom_dot(tall: 0, col: -1, wide: 2)
  ensure
    self.x_pos = xp + 4*nw
  end

  def q
    down_stroke(bot: 1, asc: -1) +  
    down_stroke(col: 2, top: 1, bot_s: true, dsc: 4)
  ensure
    self.x_pos = xp + 4*nw
  end

  def r
    down_stroke(top_s: true, bot_s: true) +
    dot(col: 1, top: 1)
  ensure
    self.x_pos = xp + 3*nw
  end

  def s
    dot(col: 1, top: 1) + 
    dot(top: 2, tall: 1.5, wide: 0) +
    dot(top: 3.5, tall: 0.5, wide: 0.5) + 
    down_stroke(col: 2, asc: -2, top: 0.5, dsc: -1) + 
    bottom_dot(col: 0, top: -1)
  ensure
    self.x_pos = xp + 4*nw
  end

  def t
    down_stroke(bot_s: true, asc: almost) + 
    dot(top: 1, col: -1*almost, wide: 2.5, tall: 0) # cross
  ensure
    self.x_pos = xp + 3*nw
  end

  def u
    down_stroke(bot: 1, top_s: true) +  
    down_stroke(col: 2, top_s: true, bot: 1, right: almost)
  ensure
    self.x_pos = xp + 4*nw
  end

  def v
    down_stroke(bot: 1, top_s: true) +  
    down_stroke(col: 2, top_s: true, dsc: -1)
  ensure
    self.x_pos = xp + 4*nw
  end

  def w
    down_stroke(bot: 1, top_s: true) +  
    down_stroke(col: 2, bot: 1, top_s: true) +  
    down_stroke(col: 4, top_s: true, dsc: -1)
  ensure
    self.x_pos = xp + 6*nw
  end

  def x
    down_stroke(col: 0.5, top: 1, bot: 1) +
    dot(col: 0.5+almost, top: 1) +
    dot(top: 3.5, col: -0.5, wide: 2.5, tall: 0) # cross
  ensure
    self.x_pos = xp + 4*nw
  end

  def y
    down_stroke(top_s: true,  bot: 1) +
    down_stroke(col: 2, top_s: true, dsc: 3) +
    bottom_dot(top: 3)
  ensure
    self.x_pos = xp + 4*nw
  end

  def space
    self.x_pos = xp + 2*nw
  end

  def spell(word)
    output = ""
    word.each_char do |letter|
      if (letter == " ")
        space
      else
        output += send(letter.to_sym)
      end
    end
    output
  end


end
