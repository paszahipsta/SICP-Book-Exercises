;;; Exercise 1.2
;;; Translate this expression into prefix form:
;;; (5+4+(2-(3-(6+(4/5)))))/3*(6-2)*(2-7)

#lang scheme

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

; Solution is -(37/150)