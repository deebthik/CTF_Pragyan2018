Solution:

The task is based on Elliptic Curve Cryptography, ECDLP and CRT. All the parameters are given at first. B has to be found using the equation, Y^2 = X^3 + AX + B(mod N).

One can use SageMath, which is popular for Elliptic Curve Cryptography arithmetic.

sage: x, y = P[0], P[1]
sage: b = (y^2 - x^3 - a*x) % N  #The ^ operator is exponentiation instead of XOR in Sage.
sage: print(b)
25255205054024371783896605039267101837972419055969636393425590261926131199030

This gives B. Then we formulate the finite curve. 

F = FiniteField(M)
E = EllipticCurve(F,[A,B])
P = E.point(P)
Q = E.point(Q)

We then use the Pohlig-Hellman method and the Chinese Remainder Theorem for finding n.

sage: factor(E.order())
2^2 * 3 * 5 * 7 * 137 * 593 * 24337 * 25589 * 3637793 * 5733569 * 106831998530025000830453 * 1975901744727669147699767

sage: primes = [4, 3, 5, 7, 137, 593, 24337, 25589, 3637793, 5733569, 106831998530025000830453, 1975901744727669147699767]
sage: dlogs = []
sage: for fac in primes:
t = int(P.order()) / int(fac)
dlog = discrete_log(t*Q,t*P,operation="+")
dlogs += [dlog]
print("factor: "+str(fac)+", Discrete Log: "+str(dlog)) #calculates discrete logarithm for each prime order

factor: 4, dlog: 2
factor: 3, dlog: 1
factor: 5, dlog: 4
factor: 7, dlog: 1
factor: 137, dlog: 129
factor: 593, dlog: 224
factor: 24337, dlog: 5729
factor: 25589, dlog: 13993
factor: 3637793, dlog: 1730599
factor: 5733569, dlog: 4590572

We don’t need the last two primes as the product of the primes until then returns a value which is more than the constraint given in the question(n < 400000000000000000000000000000). So we then use the Chinese Remainder Theorem.

sage: l = crt(dlogs.primes[:-2])
152977126447386808276536247114

Flag = 152977126447386808276536247114
