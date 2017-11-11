from PIL import Image

file = Image.open("image.png")
width,height = file.size

values = {}

for y in xrange(height):
	values[y] = 0
	for x in xrange(width):
		if(file.getpixel((x,y)) == (0,0,0)):
			values[y] += 1

# Prints the line number and the number of black pixels on that line
for y in xrange(height):
	if values[y] > 0:
		print str(y) + " :- " + str(values[y])
		

