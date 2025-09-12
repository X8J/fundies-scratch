use context starter2024

"4 * 4"
```
The above text is also known as 4^2, and equals
```
4 * 4

c = circle(30, "solid", "blue")
r = rectangle(40, 40, "solid", "yellow")
t = triangle(50, "outline", "red")
gr = rectangle(40, 40, "solid", "green")
pr = rectangle(40, 40, "solid", "purple")
string-to-upper("hello cs2000")

overlay(c,r)
above(gr,pr)

rotate(90, rectangle(100, 20, "solid", "red"))
rotate(45, rectangle(100, 20, "solid", "red"))

# The code below will create a stop sign
rbg = regular-polygon(40, 6, "solid", "red")
rpo = regular-polygon(50, 6, "outline", "black")
sign = text("STOP", 24, "White")

sign2 = overlay(rbg, rpo)

overlay(sign,sign2)


