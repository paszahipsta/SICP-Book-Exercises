;;; Exercise 1.12
;;; Write a procedure that computes elements of Pascal's triangle by means of a recursive process.

#lang scheme

;    1      This is how Pascal's triangle look like
;   1 1
;  1 2 1
; 1 3 3 1


(define (pascal col row)
   (if (or (= col row) (= col 1)) ;check if it's first column or last
    1
    (+ (pascal (- col 1) (- row 1)) (pascal col (- row 1))))) ;calculate every other case

    