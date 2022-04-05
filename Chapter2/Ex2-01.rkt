;;; Exercise 2.1
;;; Define a better make-rat function, which handles negative values as well

#lang scheme

;default
;(define (make-rat n d) (cons n d))

;better
(define (make-rat n d)
  (define (mod x)
    (if (>= x 0)
        x
        (- x)))
   (if (> 0 (* n d))
       (cons (- (mod n)) (mod d))
       (cons (mod n) (mod d))))

(define (numer x) (car x))

(define (denom x) (cdr x))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
            (* (numer y) (denom x)))
  (* (denom x) (denom y))))
