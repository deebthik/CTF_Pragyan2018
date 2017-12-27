Solution:
Since this task involved CBC mode of operation for the block cipher, we first hexdump the given ciphertext.

G r  o u  n d    C  o n  t r  o l    -
114f a4e8 13e1 157a 7767 21d9 6054 7e21
M i  n o  r    B o  B
f1d3 33a4 93b3 4669 be3b 7bc3 6a4c 15a3

Then, we write a program(I wrote a Python program in my case) to generate a new hex line just for the part that has to be changed in the ciphertext.




def mod_block(plaintext, mod, prev_block):
diff = [ord(a) ^ ord(b) for a, b in zip(plaintext[:16], mod[:16])]
return ''.join(["%0.2x" % (int(prev_block[i*2:i*2+2], 16) ^ diff[i]) for i in range(16)])

plaintext = raw_input("Enter the known plaintext: ")
mod = raw_input("Enter the desired plaintext: ")
prev_block = raw_input("Enter the ciphertext of the previous block: ")

print mod_block(plaintext, mod, prev_block)





This Python program gives you a new hex line which then has to inserted into the original hexdump using the dd command. The new ciphertext when decrypted will give you the modified plaintext(there is no way of checking it tho). The flag is the value the function in Python returns, i.e., the new line in hex.

The flag: 1147a0e813e1037a786721d960547e21
