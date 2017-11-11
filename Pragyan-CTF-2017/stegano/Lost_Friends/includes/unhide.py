import sys
from PIL import Image

if len(sys.argv)<2:
	print "Enter an input image fle name "
	exit()

image = Image.open(sys.argv[1])

for i in range(image.size[0]):
	for j in range(image.size[1]):
		t = image.getpixel((i,j))
		t = list(t)
		t[3] = 255
		t = tuple(t)
		image.putpixel((i,j), t)

image.save('%s_unhide.png' % sys.argv[1].split('.')[0] , 'png')
print "\n\t Operation completed successfully !! \n"