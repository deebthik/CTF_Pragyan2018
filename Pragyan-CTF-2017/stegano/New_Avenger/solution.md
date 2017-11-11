## Solution

  In this challenge, initially, we have a gif file. But, a zip file has been appended to it. (The gif file is read from the beginning, but a zip file is read from the end of the file)
  
  We can unzip the gif file, which gives us two more files, an image file, and another zip file. 
  The new zip file is password protected. The password has been appended to image file. Using this password, we can unzip the next zip file. 
  We continue this procedure, and we also keep storing the passwords in a file. 
  
  In the end, we only get one image, and going through that joke, we understand that it is a caesar cipher, in which 'J' has been replaced by 'Y', which amounts to a shift of 15. 
  
  Now, we have to go through the saved passwords, and we note that all the passwords have a constant length, 26. And also, some of the characters have been capitalized. So, instead of just looking at the capital letters, we note their positions in the password string, and take the alphabet at that position from the English alphabets.
  
  Example :-  The first password is sgtgFhswhfrighaulmvCavmpsb,
  so we see that the capital letters are at positions 5 and 20, so we take **e** and **t**. 
  
  Eventually, we get a text like,  **etitgepgztgxhiwthexstgbpc**.
  
  We decipher this text, using caesar cipher with a shift of 15, and get the final flag :- 
  **peterparkeristhespiderman**
