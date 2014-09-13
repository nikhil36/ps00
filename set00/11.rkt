;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Data Definitions

;; A point in a two-dimensional plane
;; STRUCTURE DEFINITION
(define-struct point (x y))
;; CONSTRUCTOR TEMPLATE
;; A point is a (make-point PosReal PosReal)
;; INTERPRETATION:
;; x is the x-coordinate of in a two dimensional plane
;; y is the y-coordinate of in a two dimensional plane
;; DESTRUCTOR TEMPLATE
;; point-fn : point -> ??
#|(define (point-fn point)
(...
 (point-x p)
 (point-y p)
))
|#
;; EXAMPLES 
;;(define point1 (make-point 10 30))
;;(define point2 (make-point 10 40))


; make-point : Number Number -> point
; GIVEN : two numbers
; RETURNS : a complex data type of the type point

; EXAMPLES:
; (make-point 15 18)
; (make-point 1 8)

(make-point 1 2)

; point? : point -> Boolean
; GIVEN : a point with x and y coordinates in two dimensional plane
; RETURNS : true iff the input is of point type

; EXAMPLES: 
; (point? (make-point 15 18)) -> true
; (point? (make-point 12 8)) -> true
; (point? 2) -> false

(point? (make-point 2 8))

; point-x : point -> number
; GIVEN : a point with x and y coordinates in two dimensional plane
; RETURNS : x coordinate of the given point

; EXAMPLES: 
; (point-x (make-point 15 18)) -> 15
; (point-x (make-point 12 8)) -> 12

(point-x (make-point 2 8))

; point-y : point -> number
; GIVEN : a point with x and y coordinates in two dimensional plane
; RETURNS : y coordinate of the given point

; EXAMPLES: 
; (point-y (make-point 15 18)) -> 18
; (point-y (make-point 12 8)) -> 8

(point-y (make-point 2 1))





