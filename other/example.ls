; This is a Scheme comment

(define name "World") ; This defines the variable 'name' with the value "World"
(display "Hello, ") ; This prints "Hello"
(display name) ; This prints the 'name' variable
(newline) ; This moves to a new line

(define (add a b)
  (+ a b))
(display "2 + 3 = ")
(display (add 2 3))
(newline)

(define numbers '(1 2 3 4))
(define (filter pred lst)
  (cond ((null? lst) '())
        ((pred (car lst)) (cons (car lst) (filter pred (cdr lst))))
        (else (filter pred (cdr lst)))))
(define evens (filter even? numbers))
(display "Evens: ")
(display evens)
(newline)

(define (describe n)
  (cond ((> n 0) "positive")
        ((= n 0) "zero")
        (else "negative")))

(display "-5 is ")
(display (describe -5))
(newline)
