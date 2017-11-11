# The Jigsaw Killer

A huge fan of saw, lets see what he has now. Hmm, so we see that it is again a file which has been encrypted by some cipher. We can also see some repeating characters in the cipher and on close observation, we can see that every 7th character in the file looks weird.

The rule used for encryption is

a[x] = a[x-7] + a[x+7]

The IV and key both are pragyan and the encryption is simple XOR (as can be figured out easily)

A decryption script would do the trick and the final image outputs the flag.

Source: - Done in parts, so not available
Key: - I want to play a game
