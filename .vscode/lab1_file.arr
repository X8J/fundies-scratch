use context starter2024
include image

# T-Shirt shop
"5 Shirts, 1 Design"
shirts = 5
designs = 1
(12 * (shirts)) + (3 * (designs))

# Rectangular Poster
"Cost of a 420x594 poster"
width = 420
height = 594
perimeter = 2 * (width + height)
cost = perimeter * 0.10
cost

#String surprises
"Designs for everyone!"
"red" + " blue"

backgroundRect = rectangle(40, 100, "solid", "black")
redCircle = circle(15, "solid", "red")
greenCircle = circle(15, "solid", "green")
yellowCircle = circle(15, "solid", "yellow")

#The code below uses my workaround to create a more complex shape that overlays more than one object on another, by defining an object with another object inside
oneShape = overlay-xy(greenCircle,-5,-5, backgroundRect)
twoShape = overlay-xy(yellowCircle, -5,-35,oneShape)
threeShape = overlay-xy(redCircle,-5,-65,twoShape)
threeShape

# Broken code hunt
rectangle(50, 20, "solid", "black")
circle(30, "solid", "red")

#Create a flag or sheild, japanese flag
backgroundFlagRect = rectangle(200, 100, "solid", "white")
circleOnFlag = circle(40, "solid", "red")
overlay(circleOnFlag,backgroundFlagRect)

