# Evil Corp

The question can be solved in two ways and can be modified according to the same.

## Method 1
From the clues we get that fsociety and evilcorp are closely linked. Experimenting with this as the key/IV, we can figure out that it is an IV (coz a 16 bit key is overkill). Since we know the IV now and that it is a CBC mode cipher, we need to know the method of the cipher. Its not AES and the second most popular choice is Serpent. Using these two and a bit of script, we can easily get the source. The source is a png file. Just open it to get the flag - "Hello Friend"

## Method 2
We can get the key- fsociety of the serpent cipher and from there, we can figure out the IV backwards. Same as the steps in 1 but if they get to this part, standard decryption toos/software will easily output the key. We could give some sort of riddle in the passage for them to find out the key depending on the wieghtage of these problems.

Source: - Done in parts, so not available
Final key:- Hello Friend
