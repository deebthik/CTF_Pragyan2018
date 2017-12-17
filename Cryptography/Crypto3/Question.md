# Question:
Two brothers, Shivam and Mit were fighting for the only computer they had in their house. Watching this their father got angry and locked the computer with a strong password of length 20 which consists of alphabets. To unite them he gave them a puzzle to solve.
He used two random strings and added the half-half of password in each string at some random position. He wanted to apply one-time-pad on both strings . So he used a smaller key 'k' of length 14(contains only english alphabets), and used some pseudo random generator, to get a longer key(K) of suitable size. Then he XOR each string with the generated key(K),and get encrypted message m1 , and m2. He gave shivam m1 and mit m2 and asked them to find the password.
Also, to help them he also generated a string of suitable size by repeating k several times and then applied one time pad on it by larger key(K) to get m3.

Shivam and Mit come to you with m1, m2, and m3. Help them find the password.


