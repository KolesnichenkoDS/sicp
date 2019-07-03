#lang racket

(require "prelude.rkt")

;; Solution.
(define (sum-of-larger-squares x y z)
  (cond ((and (<= x y) (<= x z)) (+ (* y y) (* z z)))
  ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))
  ((and (<= z x) (<= z y)) (+ (* x x) (* y y)))))

;; Examples.
(display (sum-of-larger-squares 1 2 3)) (newline)
(display (sum-of-larger-squares 2 3 1)) (newline)
(display (sum-of-larger-squares 2 1 3)) (newline)