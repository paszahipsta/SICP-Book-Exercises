;;; Exercise 1.1
;;; What is the result printed by the interpreter in response to each expression? 

#lang scheme


10 ; 10

(+ 5 3 4) ; 12

(- 9 1) ; 8

(/ 6 2) ; 3

(+ (* 2 4) (- 4 6)) ; 6

(define a 3)
(define b (+ a 1)) 
(+ a b (* a b)) ; 19

(= a b) ; #f




