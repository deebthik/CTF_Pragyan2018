#Solution 

  The main hint for solving the question is in the Question name , "Black" . 
  When we list out all the black pixels in the image, (RGB values (0,0,0) ) , we can see that the number of black pixels in any row of the image does not exceed 15, which indicates that the some kind of message has been imprinted using hex values.
  
 As each character is made up of two hex values, when we combine the hex values together and decode the string, we get the cipher text :-
   
                    {ziv_gslhv_klgziz_vziirmth?}
                    
 To decipher this cipher text, we read the message that has been appended in the end of the image, using <b> tail &lt;image_name&gt; </b> . 
     When we see the message, we have a string that states <b> "noobie at bash" </b>.
      From this, we can work out that the above cipher text is generated using <b> Atbash Cipher </b>. When we decode the string using Atbash Cipher (http://rumkin.com/tools/cipher/atbash.php) , we get the decoded string as :-
               
                 	{are_those_potara_earrings?}
                 	
 This is the required flag for the question.
 
 NOTE :- The required scripts for writing and reading the message are in the 'includes' directory.