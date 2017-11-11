# Solution For The-Genesis

## PART-A

1. Google All the Paragraphs to get
    1. 4:1 -> ROT 4 cipher
    2. " 43*33  -> One key for Vernam's cipher
    3. Pragyan is the key for the steganographic image
2. Do ROT 4 on Pragyan to get Tvekcer
3. Vernam's cipher on Tvekcer + " 43*33 gives xk39f2. Store this key for later use
4. In the blowfish image ,there are two hexed clues. Dehex them
    1. jxuqwkgthlzhjzqg2wfa40 - A simple look shows that this is a Vigenere's    cipher. Use Vigenere's cipher with key blowfish.
    2. jxuqwkgthlzhjzqfkshk - Same as the first one.
    3. Both of these when solved gives two URLs. The first URL is from Battlefield One and the second URL gives XOR as a clue. Combining both, we get bf1xor as the first clue.

## PART-B

1. The clue suggests that we already have the key. This means that xk39f2 is the key for this part.
2. The steganographic image contains the string :-
    1. facbeae0d02822e39bf23fa4d70c0880093152a2550b538c6470b0dd890d21c3
3. This suggests that the strings have been encrypted with a block cipher. Since the clues from Part A suggest blowfish, we go ahead to blowfish the strings with the key from Part 1.
    1. " -.^s,}+*(zsgl[#(3s?c[;v*c@@ "*
4. Exclude the star at the end and the pair of quotes to get the clue from the second part.

## Final
1. Use Vernam's cipher to with bf1xor as the key and the text from part 2 as the message.

## The flag is pragyanctf - {p5#k6_x3@2k!}q
## Solution write-up done by Varunram Ganesh
