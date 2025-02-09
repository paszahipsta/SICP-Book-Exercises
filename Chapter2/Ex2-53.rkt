;;; Exercise 2.53
;;; What would interpreter print in response to evaluating each of these expressions?

#lang sicp

(list 'a 'b 'c) ;(a b c)

(list (list 'george)) ;((george))

(cdr '((x1 x2)(y1 y2))) ;((y1 y2))

(cadr '((x1 x2) (y1 y2))) ;(y1 y2)

(pair? (car '(a short list))) ;False

(memq 'red '((red shoes) (blue socks))) ; False

(memq 'red '(red shoes blue socks)) ;(red shoes blue socks)+
