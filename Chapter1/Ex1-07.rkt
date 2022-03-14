;;; Exercise 1.7
;;; Design a square-root procedure that is watching how guess changes from one iteration to the next and stops when the change is very small fraction of the guess.
;;; Does it work better for small and large numbers?

#lang scheme


(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs(/ (- guess (improve guess x)) guess)) 0.0001)) ;use improve function to calculate next guess.

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

;;solution work better for small and big numbers, because it's based on previous guess not x. 
(sqrt 0.01)
 