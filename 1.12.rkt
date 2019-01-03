#lang racket

(require "prelude.rkt")

;; Solution (recursive).
(define (pascal-triangle r c)
  (if (or (= c 1) (= c r))
    1
    (+ (pascal-triangle (- r 1) (- c 1))
       (pascal-triangle (- r 1) c))))

;; Examples.
(display (pascal-triangle 1 1)) (newline)
(display (pascal-triangle 4 2)) (newline)
(display (pascal-triangle 5 2)) (newline)
(display (pascal-triangle 5 3)) (newline)