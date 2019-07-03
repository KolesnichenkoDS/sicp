import { isEven, sqr } from "./prelude";


// O(n^2)
// const fib = n => (n < 2) ? n : fib(n - 2) + fib(n - 1);


// O(n)
// const fibIter = (a, b, n) => n == 0 ? a : fibIter(b, a + b, n - 1);
// const fib = n => fibIter(0, 1, n);


/*
Let
    T(a, b) = (b, a + b).
Then applying T n times starting with 0 and 1 gives us
    T^n(0, 1) = (fib(n), fib(n + 1)).
Then let
    T[pq](a, b) = (ap + bq, aq + bq + bp).
Then T is a special case of T[pq] where p = 0, q = 1.
Then let's calculate T^n[p,q](a, b):
    T^n[p, q](a, b) = T[p, q](ap + bq, aq + bq + bp)
                    = ( (ap + bq) * p + (aq + bq + bp) * q,
                        (ap + bq) * q + (aq + bq + bp) * q + (aq + bq + bp) * p )
                    = ( ap2 + bqp   +  aq2 + bq2 + bpq, 
                        apq + bq2   +  aq2 + bq2 + bpq   +   aqp + bqp + bp2 )
                    = ( a * (p2 + q2) + b * (2pq + q2),
                        a * (2pq + q2) + b * (q2 + q2 + pq + pq + p2) )
                    = (*)
    Let x = p2 + q2, y = 2pq + q2;
                (*) = ( ax + by, ay + by + bx )
So T^2[p,q](a, b) is the same as T[p2 + q2, 2pq + q2](a, b).
fib(n) = T^n[p, q](0, 1) is O(n).
*/


// O(log(n))
const fibIter = (a, b, p, q, n) =>
  n == 0
    ? a
    : isEven(n)
      ? fibIter(a, b, sqr(p) + sqr(q), 2 * p * q + sqr(q), n / 2)
      : fibIter(a * p + b * q, a * q + b * q + b * p, p, q, n - 1);
const fib = n => fibIter(0, 1, 0, 1, n);


// Examples.
for (let i = 0; i < 10; i++) console.log(fib(i));