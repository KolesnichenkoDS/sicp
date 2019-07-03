#lang racket

(provide
  average
  even?
  odd?
  one?
  sqr
  sqrt)

(define (average x y) (/ (+ x y) 2))

(define (sqr x) (* x x))

(define sqrt
  (let ()
    (define (good-enough? guess x)
      (< (abs (- (sqr guess) x)) 0.001))
    (define (sqrt-iter guess x)
      (if (good-enough? guess x)
	guess
	(sqrt-iter (improve guess x) x)))
    (define (improve guess x)
      (average guess (/ x guess)))
    (lambda (x) (sqrt-iter 1.0 x))))

(define (even? x)
  (= (remainder x 2) 0))

(define (odd? x) (not (even? x)))

(define (one? x) (= x 1))