#lang racket

(require "prelude.rkt")

;; Solution (iterative).
(define mult
  (let ()
    (define (mult-iter x cnt product)
      (cond ((= cnt 0) product)
            ((even? cnt) (mult-iter (* x 2) (/ cnt 2) product))
            (else (mult-iter x (- cnt 1) (+ product x)))))
    (lambda (a b) (mult-iter a b 0))))

;; Examples.
(display (mult 3 4)) (newline)