;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Module 0 - Exercise 6
; This file contains the method quadratic-root that calculates one of the roots
; of a given quadratic equation 

; quadratic-root : Number Number Number -> Number

; GIVEN: three coefficients of the quadratic equation ax2+bx+c = 0
; such that a is not equal to zero
; RETURNS: one of the roots of the equation

; Examples:
;(quadratic-root 1 -3 -4) => 4
;(quadratic-root 6 11 -35) => 1.6
;(quadratic-root 5 6 1) => -0.2
;(quadratic-root 6 7 -3) => 0.3

; Definition :

(define (quadratic-root a b c)
  (/ 
   (+ (- b ) 
      (sqrt (- (sqr b)
               (* 4 a c)
             )
       )
   ) 
   (* 2 a)
  )
)

; Tests :
(check-expect (quadratic-root 1 -3 -4) 4)
(check-within (quadratic-root 6 11 -35) 1.6 1)
(check-expect (quadratic-root 5 6 1) -0.2)
(check-within (quadratic-root 6 7 -3) 0.3 1)
