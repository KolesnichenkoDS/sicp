#lang racket

(require "prelude.rkt")

;; Solution.
(define sqrt
  (let ()
    (define (good-enough? previous-guess guess)
      (< (abs (/ (- guess previous-guess) guess)) 0.001))
    (define (sqrt-iter guess x)
      (let ()
        (define next-guess (improve guess x))
        (if (good-enough? guess next-guess)
            next-guess
            (sqrt-iter next-guess x))))
    (define (improve guess x)
      (average guess (/ x guess)))
    (lambda (x) (sqrt-iter 1.0 x))))

;; Examples.
(display (sqrt 2)) (newline)
(display (sqrt 36)) (newline)
(display (sqrt 0.0001)) (newline)
