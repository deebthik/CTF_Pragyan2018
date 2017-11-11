import sys
from PIL import Image

if len(sys.argv)<2:
	print "Enter an input image fle name "
	exit()

image = Image.open(sys.argv[1])
im1 = Image.new('RGBA', image.size)
im2 = Image.new('RGBA', image.size)
im3 = Image.new('RGBA', image.size)

for i in range(image.size[0]):
	for j in range(image.size[1]):
		t = image.getpixel((i,j))
		im1.putpixel((i,j), (t[0], 0, 0, 255))
		im2.putpixel((i,j), (0, t[1], 0, 255))
		im3.putpixel((i,j), (0, 0, t[2], 255))


im1.save('%s_RED.png' % sys.argv[1].split('.')[0] , 'png')
im2.save('%s_GREEN.png' % sys.argv[1].split('.')[0] , 'png')
im3.save('%s_BLUE.png' % sys.argv[1].split('.')[0] , 'png')
print "\n\t Split completed !! \n"