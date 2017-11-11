import sys
from PIL import Image

if len(sys.argv)<3:
	print "Enter two image file names "
	exit()

def add_tuple(x,y):
	if x[3] == 0:
		x[0] = x[1] = x[2] = 0
	if y[3] == 0:
		y[0] = y[1] = y[2] = 0

	if x[3] == 0 and y[3] == 0:
		t = 0
	else:
		 t = max(x[3],y[3])
	return x[0]+y[0] , x[1]+y[1], x[2]+y[2], t

image1 = Image.open(sys.argv[1])
image2 = Image.open(sys.argv[2])

width = max(image1.size[0], image2.size[0])
height = max(image1.size[1], image2.size[1])
new_image = Image.new('RGBA', (width,height))

for i in range(image1.size[0]):
	for j in range(image1.size[1]):
		a = image1.getpixel((i,j))
		b = new_image.getpixel((i,j))
		new_image.putpixel((i,j),add_tuple( list(a),list(b) ))

for i in range(image2.size[0]):
	for j in range(image2.size[1]):
		a = image2.getpixel((i,j))
		b = new_image.getpixel((i,j))
		new_image.putpixel((i,j),add_tuple( list(a) , list(b) ))


new_image.save('merged.png','png')

print "\n\t Merged !! \n"
