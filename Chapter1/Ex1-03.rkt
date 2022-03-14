;;; Exercise 1.3
;;; Define a procedure that takes three numbers as arguments and returns sums of the squares of two larger numbers
#lang racket

(define (>= x y)
  (not (< x y)))

(define (square x)
  (* x x))

(define (sum_of_squares x y)
  (+ (square x) (square y)))

(define (solution x y z)
  (cond ((and (>= x y) (>= z y)) (sum_of_squares x z))
        ((and (>= y x) (>= z x)) (sum_of_squares y z))
        ((and (>= x z) (>= y z)) (sum_of_squares x y))
        ))

(solution 1 2 3)

