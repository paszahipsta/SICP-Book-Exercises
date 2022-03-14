;;; Exercise 1.6
;;; What happens when we will use defined new-if procedure to compute square roots?

#lang scheme

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square x)
  (* x x))

(define (good-enough? guess x )
  (< (abs (- (square guess) x)) 0.000001))

(define (average x y)
  ( / (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (cond ((good-enough? guess x) guess)
      (else (sqrt-iter (improve guess x) x))))

(define (sqrt-iter2 guess x)
  (new-if ((good-enough? guess x) guess)
      (else (sqrt-iter2 (improve guess x) x))))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x))

; cond based sqrt function
(sqrt 9)
; new-if based sqrt function (uncomment to test)
;(sqrt2 9)

;;; A special form is an expression that follows special evaluation rules. 
;;; new-if is a function, not a special form. All subexpressions will be evaluated with applicative order, before the if-new procedure will be applied.
;;; Guess will be evaluated to guess value, but sqrt-iter will go in the never ending loop (it's calling itself all the time), so it can't be evaluated.
;;; Cond however is an special form, so it follows another evaluation rules.