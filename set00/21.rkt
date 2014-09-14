;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |21|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(define human (bitmap 
 "C:/Users/rssin_000/Desktop/Masters Study/Semester 1/PDP/Module00/Codes/human.png"))


; a person
; STRUCTURE DEFINITION
(define-struct person (first-name last-name age height weight))
; CONSTRUCTRE TEMPLATE
; a person is a (make-person String String PosReal PosReal PosReal)
; INTERPRETATION
; first-name is the first name of the person
; last-name is the family name of the person
; age is the person's age
; height is the person's height in centimeters
; weight is the person's weight in kilograms
; DESTRUCTORE TEMPLATE
;; person-fn : person -> ??																				
;(define (person-fn p)
;  (...
;	(person-first-name p)
;	(person-last-name p)
;	(person-age p)
;	(person-height p)
;    (person-weight p)))
; EXAMPLES:
;(define person1 (make-person "Nikhil" "Singh" 24 180 80)) 
;(define person2 (make-person "Amanda" "Martini" 34 160 70))
;(define person3 (make-person "Frank" "Lampard" 36 185 75))


;; person-image: person -> image
;; GIVEN : a person
;; RETURNS: the image of the person with respect to height.
;; EXAMPLES:
;; (person-image (make-person "Nikhil" "Singh" 24 180 80)) -> person's image
;; (person-image (make-person "Amanda" "Martini" 34 160 70)) -> person's image
;; (person-image (make-person "Frank" "Lampard" 36 185 75)) > person's image
;; STRATEGY : Function composition
(define (person-image p)
   (scale (/ (person-height p) 100) human)
   )
