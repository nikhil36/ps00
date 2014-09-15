;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; list-product : List -> Number
;; WHERE: the list is non-empty
;; Returns the product of all the numbers in the list
;; Examples: 
;; (list-product empty) = 0
;; (list-product (list 1)) = 1
;; (list-product (list 1 2 3) = 6
(define (list-product lst)
  (cond
    [(empty? lst) 1]
    [else (* (first lst) (list-product (rest lst)))]))

(list-product (list 1 2 3))
(list-product (list 1 2 0))