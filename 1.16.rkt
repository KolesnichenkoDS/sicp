#lang racket

(require "prelude.rkt")

;; Solution (iterative).
(define expt
  (let ()
    (define (expt-iter x cnt product)
      (cond ((= cnt 0) product)
            ((even? cnt) (expt-iter (sqr x) (/ cnt 2) product))
            (else (expt-iter x (- cnt 1) (* product x)))))

    (lambda (x n) (expt-iter x n 1))))

;; Examples.
(display (expt 2 10)) (newline)
(display (expt 10 9)) (newline)