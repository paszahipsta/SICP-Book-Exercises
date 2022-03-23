;;; Exercise 1.11
;;; Write a procedure that computes f  by means of recursive and iterative process.
;;; f(n) = n if < 3 and f(n)=f(n-1)+2f(n-2)+3f(n-3) if n >= 3

#lang scheme

; Recursive way
(define (sol-recur n)
  (if (< n 3)
      n
      (+ (sol-recur (- n 1)) (* 2 (sol-recur (- n 2))) (* 3 (sol-recur (- n 3))))
 )
  )

; Iteration way
(define (sol-iter n)
  (define (iter n-1 n-2 n-3 count)
  (if (= n count)
      n-1
      (iter (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ 1 count) )))
  (if (< n 3)
      n
      (iter 2 1 0 2)))


(sol-iter 4)
(sol-recur 4)
