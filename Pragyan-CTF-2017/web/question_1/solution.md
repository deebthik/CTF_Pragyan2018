## Solution

  When we first open the web page, we see a 404 error.
  But, upon closer inspection of the source code, we see that there is a 'hidden' input text field in the page. 
  We find that text field, input a character, and make a request to the page. 
  The page just seems to refresh, but for all the requests, a cookie value is being set. Though, it seems random, we notice that for any given value, it's length is always a constant, and less than or equal to 26.
  
  So, we can guess that the output value is an alphabet, represented by the length of the cookie string. 
 By a little guess work, we see that the letters are being transformed by an Affine Cipher. 
 
 Now, we either try out all the alpbhabets of the Cipher text to get the flag, or we find the constants of the Affine Cipher from any two input and output values, and decrypt the given Cipher text.
 
 Flag :- 
   
                           areyouthensa