#lang scheme

(define atom?
    (lambda (x) 
        (and (not (pair? x)) (not (null? x)))))

; (lat? l)
; a lat is a list of atoms!
; (lat? l) is True, where l is (), because it does not contain a list.

(define lat?    ; gives it a name;
    (lambda (l) ; creates a function;
        (cond   ; asks questions;
            ((null? l) #t)
            ((atom? (car l)) (lat? (cdr l)))
            (else #f))))

#;
(lat? '(bacon and eggs))
; lat? looks at each S-expression in a list, in turn, and asks if each S-expression
; is an atom, until it runs out of S-expressions. If it runs out without an encountering
; a list, the value is #t. If it finds a list, the values is #f-false.

#;
(lat? (quote (bacon (and eggs))))
; (lat? l) looks at each item in its argument to see if it is an atom.
; If it runs out of items before it finds a list, the value of (lat? l) is #t.
; If it finds a list, as it did in the example (bacon (and eggs)), the value of (lat? l)
; is #f.

; (or ...)
; It asks 2 questions, one at a time.
; If the first one is true it stops and answers true.
; Otherwise it asks the second question and answers with whatever the second question answers.

; (member? a lat)
; One of the atoms of the lat is the same as the atom.

(define member?
    (lambda (a lat) 
        (cond
            ((null? lat) #f)
            (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))

; (member? meat (mashed potatoes and meat gravy))
(member? (quote meat) (quote (mashed potatoes and meat gravy)))
