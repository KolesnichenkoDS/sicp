#lang racket

(require "prelude.rkt")

;; Solution (iterative).
(define (mult a b)
  (cond ((zero? b) 0)
        ((even? b) (mult (* a 2) (/ b 2)))
        (else (+ a (mult a (- b 1))))))

;; Examples.
(display (mult 3 4)) (newline)