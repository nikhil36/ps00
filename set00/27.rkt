;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)
(require 2htdp/image)
 
;; image-string : List -> image
;; WHERE: the list is non-empty
;; RETURNS an image with the combined text of all the string in the list
;; Examples: 
;; (image-string (list "bat" "Ball")) => image containing the text "bat" and 
;; "Ball" separated by spaces
;; (image-string (list "Computer" "Science")) => image containing the text
;; "Computer" and "Science" separated by spaces

(define (image-string lst)
  (cond
    [(empty? lst)  (text "" 15 "")]
    [else
   (beside (text (string-append (first lst) " ") 15 "blue") 
          (image-string (rest lst)))
                  ]))



