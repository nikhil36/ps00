;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |13|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)

;; Data Definitions

;; A point in a two-dimensional plane
;; STRUCTURE DEFINITION
(define-struct point (x y))

(make-point true false)

(begin-for-test
  
  (check-equal? 
   (make-point true false)
   (make-point true false)
   "The output should be (make-point true false)")
  
  (check-equal? 
   (point-x (make-point true false))
   true
   "The output should be true")
)