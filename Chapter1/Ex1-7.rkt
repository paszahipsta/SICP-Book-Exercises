;;; Exercise 1.7
;;; Design a square-root procedure that is watching how guess changes from one iteration to the next and stops when the change is very small fraction of the guess.
;;; Does it work better for small and large numbers?

#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square x)
  (* x x))

(define (prev-guess x guess)
  (* (- x (* guess x)) 2))

(define (good-enough? guess x)
  (< (/ (- guess (prev-guess guess x))) 0.01))

(define (average x y)
  ( / (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(improve 1.5 2)

(prev-guess (improve 1.5 2) 2)
;Calculated 0.032, correct should be 0.01