;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)

;; neg-list : Boolean ListOfBoolean -> ListOfBoolean
;; first : ListOfBoolean -> boolean
;; WHERE: the list is non-empty
;; RETURNS a list containing all the booleans reversed from the given list.
;; Examples: 
;; (neg-list (list true false)) =>(cons false (cons true empty))
;; (neg-list  (list false)) => (cons true empty)
(define (neg-list lst)
  (cond
    [(empty? lst) empty]
    [else (cons (not (first lst)) (neg-list (rest lst)))]
    ))
  
(neg-list (list true false true))
;;(cons false (cons true (cons false empty))   ).
