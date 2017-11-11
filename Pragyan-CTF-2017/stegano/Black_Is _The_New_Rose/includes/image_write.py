'''
Author :- Shubham Dighe

This script can be improved by specifying a particular colour range in the darker shades
of the image, thus it becomes very hard to spot the black dots with naked eyes.

Also, the backtracking mechanism from failed writes in a particular row of pixels can be improved.

'''

from PIL import Image
from random import randint

# This is the hardcoded cipher text.
key = "{ziv_gslhv_klgziz_vziirmth?}"

def comp_color(x,y):
	if x[0] < y[0] and x[1] < y[1] & x[2] < y[2]:
		return True
	return False

original = Image.open("source.png")
file = original.copy()

w,h = file.size
print "Height is :- " + str(h)
print "Width is :- " + str(w)

black = (0,0,0)

c=0
# If there are any black pixels (0,0,0) in the original image, turn them into (1,1,1).
for j in xrange(0,h):
    for i in xrange(0,w):
        if file.getpixel((i,j))==(0,0,0):
            file.putpixel((i,j),(1,1,1));
            c += 1

print "\n\t Blacks converted  are :- " + str(c)
c = 0
t = 0
p = 0

# Generate the hex values for the message
hex_value = []
for i in key:
    k = ord(i)
    hex_value.append(k>>4)
    hex_value.append(k & 0x0f)
    
print hex_value
j = 7
s = 0
r = 0
backup_list = []

while j < h:
	k = hex_value[r]
	backup_list = []
	p = 0;
	for i in xrange(2,w):
		if comp_color(file.getpixel((i,j)),(50,50,50)):
			file.putpixel((i,j),black)
			print "\t Printing at :- " + str(i) + " , " + str(j)
			p += 1
			backup_list.append((i,j))
		if p == k:
			print "\n\t** Successfully wrote " + str(k)
			r += 1
			break;
	if p < k:
		# This backtracking mechanism can be improved, by storing the image colour and position that were overwritten by black,
		# and then writing those back onto the image, so that the image stays the same as the original one.
		#print "\n\t Failed for " + str(k)
		for e in backup_list:
			file.putpixel(e,(25,25,25));
	j = j + randint(1,2);
	if r == len(hex_value) :
		break;
		
else:
	print "\n\t Couldn't print the complete message !!";
           		
c = 0
for j in xrange(0,h):
    for i in xrange(0,w):
        if file.getpixel((i,j))==(0,0,0):
            c += 1

print "\n\n\t After overwrites, total blacks are :- " + str(c);

file.save("imprinted.png")


