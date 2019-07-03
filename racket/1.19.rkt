#lang racket

(require "prelude.rkt")

; O(n^2)
; (define (fib n)
;   (cond ((zero? n) 0)
;         ((one? n) 1)
;         (else (+ (fib (- n 2)) (fib (- n 1))))))


; Examples.
(display (fib 7))