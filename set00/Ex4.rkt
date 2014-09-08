;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; This file contains the function that calculates the amount of tip in dollars
; based on the amount of bill and percentage of tip as the arguments

; tip : NonNegNumber Number[0.0,1.0] -> Number
; GIVEN: the amount of the bill in dollars and the
; percentage of tip
; RETURNS: the amount of the tip in dollars.

; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4
; (tip 50 0.20)  => 10
; (tip 20 1)     => 20
; (tip 100 0.10) => 10

; Definition :

(define (tip bill tipPercent)
  (* bill 
     tipPercent)
  )

; Tests :
(check-expect (tip 10 0.15) 1.5)
(check-expect (tip 20 0.17) 3.4)
(check-expect (tip 50 0.20) 10)
(check-expect (tip 20 1) 20)
(check-expect (tip 100 0.10) 10)
