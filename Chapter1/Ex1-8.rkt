;;;Exercise 1.8
;;;Implement a cube-root procedure analogous to the square-roots procedure.

#lang scheme

(define (square x)
  (* x x))

(define (good-enough? guess x)
  (< (abs(/ (- guess (improve guess x)) guess)) 0.00001)) ;use improve function to calculate next guess.

;Improve procedure needed to be updated to match the formula
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) x)))

(define (cube-root x)
  (cube-iter 1.0 x))

;Changed naming
(cube-root 64)
 