#lang scheme

; (rember a lat)
; remove a member.
; It takes an atom and a lat as its arguments, and makes a new lat with
; the 1st occurence of the atom in the old lat removed.

(define rember
    (lambda (a lat)
        (cond 
            ((null? lat) (quote ()))
            (else (cond 
                ((eq? (car lat) a) (cdr lat))
                (else (rember a 
                    (cdr lat))))))))

(rember (quote bacon) (quote (bacon lettuce and tomato)))
