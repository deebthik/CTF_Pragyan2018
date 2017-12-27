Solution:
So all that’s given is a random string. With the hint provided in the first line of the challenge, we could try decoding the information using Caesar cipher to decode. We find some useful information on ROT13, 

you@have@to@go@f524(%2).4/4(%wormholeN@only@t(%.7),,9/55.#over@the@allMpow%2&5,#/3-)#3%#retNNNRÅÖSYUVYÉWEEBEEBXWTPXR*

This does have some useful information, but doesn’t get us anywhere. So we then hex dump it, so we can edit it byte by byte. We observe that most of the characters are small at first, and there at @ symbols between the words. In the ASCII code, the @ symbol + 20 gives the full stop, and that’s the difference between small case and upper case letters too. So we try doing that, but it doesn’t work for all sentences. We also notice that all the letters towards the end are uppercase, so we try alternating addition and subtraction of 20 over the whole hex dump. Add 20 on the first line, subtract 20 on the second line. Keep doing that and we end up with this:

YOU HAVE TO GO FURTHER INTO THE WORMHOLE. ONLY THEN WILL YOU UNCOVER THE ALL-POWERFUL COSMIC SECRET...2ae39569c72ee8241653be06eb874082

The last part of the message looks like an MD5 so we decrypt that using an online tool and end up with the string “chrsnln”, which is our flag.

Flag = chrsnln  = 2ae39569c72ee8241653be06eb874082
