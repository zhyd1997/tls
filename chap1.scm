#lang scheme

; 1. the atom is a string of characters beginning with a letter or special character 
;   other than a left "(" or right ")" parentheses.
; 
; 2. the list is a collection of atoms or S-expressions enclosed by parentheses.
;   2.1. () is the special S-expression, which contains zero S-expressions enclosed by 
;   parentheses, is called the null (or empty) list.
; 
; 3. all atoms and lists are S-expression.

; (car l)
; 4. the car is the first atom of a list, or the first S-expression of a non-empty list.
;   4.1. you cannot ask for the car of an atom.
;   4.2. you cannot ask for the car of an empty list.

; (cdr l) <could-er>
; 5. the cdr is the list wihout (car l).
;   5.1. you cannot ask for the cdr of an atom.
;   5.2. you cannot ask for the cdr of a null list.

; Q: what does car take as an argument?
; A: it takes any non-empty list.

; Q: what does cdr take as an argument?
; A: it takes any non-empty list.

; (cons a l) <cons the atom a onto the list l>
; 6.1. cons adds an atom to the front of a list.
; (cons s l)
; 6.2. cons adds any S-expression to the front of a list.

; Q: what does cons take as it arguments?
; A: it takes 2 arguments:
;   the 1st one is any S-expression;
;   the 2nd one is any list.

; In practice, (cons \alpha \belta) works for all values \alpha and \belta, and
;   (car (cons \alpha \belta)) = \alpha
;   (cdr (cons \alpha \belta)) = \belta.

; (null? l)
; Q: is it true that the list l is the null list, where l is ().
; A: Yes.

; (null? '())
; Q: what is (null? (quote ()))?
; A: True.

; you cannot ask null? of an atom.

; In practice, (null? \alpha) is false for everything, except the empty list.

; (atom? s)
; Q: how many arguments does atom? take and what are they?
; A: it takes one argument.
;   the argument can be any S-expression.

; (eq? a1 a2)
; Q: how many arguments does eq? take and what are they?
; A: it takes 2 arguments.
;   both of them must be non-numeric atoms.

; In practice, lists may be arguments of eq?. Two lists are eq? if they are the same list.
; In practice, some numners may be arguments of eq?