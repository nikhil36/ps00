;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require "extras.rkt")
(require rackunit)

;; circle-list : numbers ListOfNumbers -> ListOfNumbers
;; first : ListOfNumbers -> numbers
;; WHERE: the list is non-empty
;; RETURNS a list containing circles with the radius's given in the list
;; Examples: 
;; (circle-list (list 10 20 ))
;; =>(list (circle 10 "solid" "blue") (circle 20 "solid" "blue"))
;; a list containing two circles of radius 10 and 20 each.

(define (circle-list lst)
  (cond
    [(empty? lst) empty]
    [else (cons (circle (first lst) "solid" "blue") (circle-list (rest lst)))]
    ))
  
(circle-list (list 10 20 ))