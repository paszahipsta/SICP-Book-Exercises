;;; Exercise 2.55
;;; The interpreter prints back quote - explain why?

#lang sicp


(car ''abracadabra) ;Intepreter prints quote. 

(quote (a b)) ; The quote is a procedure. The ' sign is indicating to apply that procedure to given argument.

(quote b) ; So the ' sign is evaluated to quote procedure

(car (quote (quote abracadabra))) ; if we're quoting the (quote abracadabra) the (quote abracadabra) will be changed into list, so quote procedure won't be applied into abracadabra argument.

; Since the (quote abracadabra) is the list, the car procedure will return only the first occurence which i quote