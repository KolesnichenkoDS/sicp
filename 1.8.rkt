#lang racket

(require "prelude.rkt")

;; Solution.
(define cube-root
  (let ()
    (define (good-enough? previous-guess guess)
      (< (abs (/ (- guess previous-guess) guess)) 0.0001))
    (define (cube-root-iter guess x)
      (let ()
        (define next-guess (improve guess x))
        (if (good-enough? guess next-guess)
            next-guess
            (cube-root-iter next-guess x))))
    (define (improve guess x)
      (/ (+ (/ x (sqr guess)) (* 2 guess)) 3))
    (lambda (x) (cube-root-iter 1.0 x))))

;; Examples.
(display (cube-root 9)) (newline)
(display (cube-root 4)) (newline)
(display (cube-root 0.001)) (newline)