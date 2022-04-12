;;; Exercise 2.18
;;; Define a procedure that returns the reversed list

#lang sicp


(define (reverse-list items)
  (if (null? items) ; recursive checking for such pair, that cdr of that pair is null
      nil
      (append (reverse-list (cdr items)) (cons (car items) nil))))


(define x (list 1 2 3 5 6))


(reverse-list x)