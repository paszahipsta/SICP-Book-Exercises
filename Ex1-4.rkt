;;; Exercise 1.4
;;; Describe the behavior of the following procedure

#lang scheme

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))  ;Depending on b value, it can either use procedure + or - to the passed arguments


(a-plus-abs-b 10 -10)
