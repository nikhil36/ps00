;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)

;; distance : Posn -> number
;; GIVEN Posn for which the distance is to be calculated
;; RETURNS distance from (0,0) using Manhattan distance
;; Examples: 
;; (distance (make-posn 10 12)) => 22 

(define (distance p)
  (+ (posn-x p) (posn-y p)))

(distance (make-posn 10 12)) 

;; distance-list : list ListOfPosn -> number
;; first : ListOfPosn -> Posn
;; WHERE: the list is non-empty list of positions
;; RETURNS sum of all the distances of points given in the list from (0,0)
;; Examples: 
;; (distance-list (list (make-posn 10 12)(make-posn 20 24))) => 66 
;; (distance-list (list (make-posn 1 2))) => 3

(define (distance-list lst)
  (cond
    [(empty? lst) 0]
    [else (+ (distance (first lst)) (distance-list (rest lst)))]
    ))
  
(distance-list (list (make-posn 10 12)(make-posn 20 24)))
