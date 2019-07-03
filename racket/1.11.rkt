#lang racket

(require "prelude.rkt")

;; Solution (recursive).
(define (f-1 n)
  (if (< n 3)
      n
      (+ (f-1 (- n 1)) (* 2 (f-1 (- n 2))) (* 3 (f-1 (- n 3))))))

;; Solution (iterative).
(define f-2
  (let ()
    (define (f-iter a b c count)
      (if (= count 0)
          a
          (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
    (lambda (n) (f-iter 0 1 2 n))))

;; Examples.
(display (f-1 0)) (newline)
(display (f-1 1)) (newline)
(display (f-1 2)) (newline)
(display (f-1 3)) (newline)
(display (f-1 4)) (newline)
(display (f-1 5)) (newline)

(newline)

(display (f-2 0)) (newline)
(display (f-2 1)) (newline)
(display (f-2 2)) (newline)
(display (f-2 3)) (newline)
(display (f-2 4)) (newline)
(display (f-2 5)) (newline)