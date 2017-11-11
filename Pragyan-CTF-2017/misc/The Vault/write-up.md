On simple inspection with the file command, we see that the file is a KeePass 1.x database.

With the given hint we understand that the password belongs to the given character set and can be of lengths 0, 1, 2 and 3.

In order to be able to brute force this, we first convert the database to a crackable hash with [keepass2john.py.](https://gist.github.com/HarmJ0y/116fa1b559372804877e604d7d367bbc)

~~~bash
$ python keepass2john.py file > dbhash
~~~

Now, we create a word list of the passwords as follows : 

~~~python
CHARS = "!@#$%^&*abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
c = 0
q = ''

def rec(i, s):
    if i > 3: return
    global c, q
    c += 1
    q += ''.join(s + ['\n'])
    if c % 100000 == 0:
        with open("pwdlist", "a") as f:
            f.write(q)
        q = ''
    for a in CHARS:
        rec(i + 1, s + [a])

rec(0, [])
~~~

Finally, we run John on the hashed list as so:

~~~bash
$ john -w=pwdlist dbhash
~~~

We get the password output as 
~~~
k18
~~~

Opening the database with KeePassX and entering the password, we see the flag

~~~
pragyan{closed_no_more}
~~~
