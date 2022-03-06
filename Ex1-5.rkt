;;; Exercise 1.5
;;; What behavior will be observed with an interpreter that uses applicative-order evaluation and normal-order evaluation?

#lang scheme

(define (p) (p))

(define (test x y)
  (if ( = x 0)
      0
      y))

;Using applicative-order evaluation, the evaluation of (test 0 (p)) never terminates, because (p) is infinitely expanded to itself
(test 0 (p))

;Using normal-order evaluation, the expression evaluated to "0"

(if #t 0 (p))

0


;;;You can comment applicative-order to check the normal-order 