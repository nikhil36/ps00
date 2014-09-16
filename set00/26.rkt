;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)
(require 2htdp/image)
 
;; blue-circle : List -> image
;; WHERE: the list is non-empty
;; Returns an image of 300x300 scene containing a blue circle of radius 10
;; at each point in the given list.
;; Examples: 
;; (blue-circle (list (make-posn 5 3))) => image containing a circle at 
;; (5,3) coordinates in a 300x300 scene
;; (blue-circle (list (make-posn 100 0)(make-posn 200 100))) =>
;; image containing two blue solid circles at 
;; (100,0) and (200,100) coordinates in a 300x300 scene

(define (blue-circle lst)
  (cond
    [(empty? lst)  (empty-scene 300 300)]
    [else
   (place-image  ( circle 10 "solid" "blue")
                 (posn-x (first lst))
                         (posn-y (first lst))
                         (blue-circle (rest lst)))
                  ]))



