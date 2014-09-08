;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex7) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Module 0 - Exercise 7
; This file contains the function that computes the circumference of a circle
; from the radius of the circle

; circumference : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r.

; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0
; (circumference 7)  =>  43.982297150257104

; Definition:

(define (circumference radius)
  (* 2 pi radius)
  )

; Tests:
(check-within (circumference 1) 6.283185307179586 0.000001)
(check-expect (circumference 0) 0)
(check-within (circumference 7) 43.982297150257104 0.000001)