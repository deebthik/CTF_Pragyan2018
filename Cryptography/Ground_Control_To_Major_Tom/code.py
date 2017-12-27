def mod_block(plaintext, mod, prev_block):
    diff = [ord(a) ^ ord(b) for a, b in zip(plaintext[:16], mod[:16])]
    return ''.join(["%0.2x" % (int(prev_block[i*2:i*2+2], 16) ^ diff[i]) for i in range(16)])

plaintext = raw_input("Enter the known plaintext: ")
mod = raw_input("Enter the desired plaintext: ")
prev_block = raw_input("Enter the ciphertext of the previous block: ")

print mod_block(plaintext, mod, prev_block)
