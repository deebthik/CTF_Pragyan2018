Solution:

The last file contains the flag and is encrypted using the Serpent algorithm in the ECB mode. These details are hidden in the key. The key for decrypting the last file can be obtained by XORing the first two files. This hint is provided in the title of the challenge. So first, XOR the first two files, obtain the key. Then, decrypt the last file (I used an online tool) using the key and hints provided in the key.

Flag = pctf{it's_the_justice_league_DC_for_life}
