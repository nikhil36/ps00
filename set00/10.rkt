;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Module 0 - Exercise 10
; This file contains the function that takes three numbers as arguments and
; returns the sum of the two larger numbers.

; sum : Number Number Number -> Number

; GIVEN: three numbers
; RETURNS: the sum of two larger numbers

; Examples:
; (sum 1 2 3)  =>  5
; (sum 1 1 1)  =>  2
; (sum 1 0 -1)  =>  1

; Definition:

(define (sum num1 num2 num3)
  (- (+ num1 num2 num3)
     (min num1 num2 num3) 
  )
)
; Tests:
(check-expect (sum 1 2 3) 5)
(check-expect (sum 1 1 1) 2)
(check-expect (sum 1 0 -1) 1)
(check-expect (sum 0 0 0) 0)
(check-expect (sum -1 -1 -2) -2)
