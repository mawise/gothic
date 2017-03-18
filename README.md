# Gothic

I toyed around with some calligraphy a little while ago and the mathematical perfection of it appealed to me, so I decided to try implementing my own gothic typeface with a couple layers of abstraction on top of svg.

It turns out the mathematical beauty (every stroke has the same width as the space between letters and the same width as the space inside of letters) needs to be fuged EVERYWHERE.  Otherwise `ii` (without the dots) and `u` and `n` would all be identical.  So I started experimenting with different ways of fudging extra space and worked out most of the alphabet.  Some of the abstractions are documented but there's a Pen class that will spit out svg polygons for letters or words.  Only lowercase letters are implemented and there is no `z`.

Check out `gothic.svg.erb` for an example.  You'll have to change the path to the three pen class files. `erb gothic.svg.erb > gothic.svg` gives you an svg.

I've experimented with two different styles of serif on the ends of letters, one where the termination of a stroke is followed by a short stroke to the side, and another where the termination is with a short stroke to form a diamon at the end.  The example included does the diamond-style, but you can use the commented out alternate libraries to use the stroke-style.
