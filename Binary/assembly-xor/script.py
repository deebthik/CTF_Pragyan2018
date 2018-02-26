import random
msg='pctf{l3geNds_c0d3_1n_4Ss3mb1y}'
print len(msg)*8

for i in range(len(msg)-1,-1,-1):
	v1=random.randint(1,200)
	v2=ord(msg[i]) ^ v1
	print "mov rax , {}".format(v1)
	print "mov rbx , {}".format(v2)
	print "xor rax , rbx"
	print "push rax"
	print ""
