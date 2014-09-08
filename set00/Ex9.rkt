;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Module 0 - Exercise 9
; This file contains the function that computes if a given number is divisible
; by 2. 

; even-num? : Number -> Boolean
; GIVEN: the number whose divisibility by 2 is to be checked
; RETURNS: true if the number is divisible by 2 else false

; Examples:
; (even-num? 1)  =>  false
; (even-num? 0)  =>  true
; (even-num? 4)  =>  true

; Definition:

(define (even-num? number)
  (= 0 
     (remainder number 2))
)

; Tests:
(check-expect (even-num? 1) false)
(check-expect (even-num? 0) true)
(check-expect (even-num? 4) true)