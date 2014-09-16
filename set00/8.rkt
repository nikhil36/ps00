;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Module 0 - Exercise 8
; This file contains the function that computes the area of a circle
; from the radius of the circle

; circl-area : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its area, using the formula pi * r^2.

; Examples:
; (area 1)  =>  3.141592653589793
; (area 0)  =>  0
; (area 4)  =>  12.566370614359172

; Definition:

(define (area r)
  (* pi (sqr r)
  )
)

; Tests:
(check-within (area 1) 3.141592653589793 0.000001)
(check-expect (area 0) 0)
(check-within (area 4) 50.26548245743669 0.000001)
