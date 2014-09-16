;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)

;; true-list : List -> boolean
;; WHERE: the list is non-empty
;; Returns true iff the list has all booleans as true
;; Examples: 
;; (true-list (list false)) => false
;; (true-list (list true true true) => true
(define (true-list lst)
  (cond
    [(empty? lst) true]
    [else (and (first lst) (true-list (rest lst)))]))

(begin-for-test
  (check-equal? 
   (true-list (list false)) 
   false
   "The output should be false")
  
  (check-equal? 
   (true-list (list true true true))
   true
   "The output should be true")
  
  (check-equal? 
  (true-list (list true true false))
  false
   "The output should be false")
  
  (check-equal? 
   (true-list (list true false true))
   false
   "The output should be false")
  
  (check-equal? 
   (true-list (list false true true))
   false
   "The output should be false")
  
  (check-equal? 
   (true-list (list true))
   true
   "The output should be true")
  
  (check-equal? 
   (true-list (list  false false false false false))
   false
   "The output should be false")  
  )







