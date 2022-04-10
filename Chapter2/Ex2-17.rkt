;;; Exercise 2.17
;;; Define a procedure that returns the list that contains only the last element of a givern (nonempty( list

#lang scheme

(define (last-pair items)
  (if (null? (cdr items)) ; recursive checking for such pair, that cdr of that pair is null
      items
      (last-pair (cdr items))))

(define x (list 1 2 3 5 6))

(last-pair x)