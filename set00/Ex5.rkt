;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; This file contains the method that calculates the square of a given
; number based on the argument provided

; sq : Number -> Number

; GIVEN: a number whose square is to be calculated
; RETURNS: the square of the given number

; Examples:
; (sq 10) => 100
; (sq 2)  => 4
; (sq 5)  => 25
; (sq 20) => 400

; Definition :

(define (sq num)
  (* num num)
)

; Tests :
(check-expect (sq 10) 100)
(check-expect (sq 2) 4)
(check-expect (sq 5) 25)
(check-expect (sq 20) 400)