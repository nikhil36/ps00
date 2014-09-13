;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)

;; Data Definitions

;; A point in a two-dimensional plane
;; STRUCTURE DEFINITION
(define-struct point (x y))

(begin-for-test
  
  (check-equal? 
   (make-point 5 3)
   (make-point 5 3)               
   "point should have 5 as x-coordinate and 3 as y-coordinate")
  
  (check-equal? 
   (point? 5)
   false
   "The argument should have the data type as point")

  (check-equal? 
   (point? true)
   false
   "The argument should have the data type as point")

  (check-equal?  
   (point? (make-point 2 1))
   true
   "The argument should have the data type as point")
 
  (check-equal?  
   (point-x (make-point 8 5))
   8
   "The x-coordinate of point should be 8")
 
 (check-equal?  
  (point-y (make-point 42 15))
   15
   "The y-coordinate of point should be 15")
 
)