;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; The function f2c converts the degrees Fahrenheit into the equivalent
; degrees celsius
; f2c : number -> number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celsius.
; Examples:
; (f2c 32)  -> 0
; (f2c 100) -> 37.77777777777778
; (f2c 86) -> 30

;Definition
(define (f2c fTemp)
  (* (- fTemp 32)
     (/ 5 9)
  )
)
  
;TESTS: 
(check-expect (f2c 32) 0)
(check-expect (f2c 32) 0)
(check-within (f2c 100) 37.77777777777778 1)
(check-expect (f2c 86) 30)
