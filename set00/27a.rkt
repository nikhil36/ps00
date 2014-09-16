;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 27a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)
(require 2htdp/image)
(require racket/string)

;; image-string2 : String ListOfString -> image
;; WHERE: the list is non-empty
;; RETURNS an image with the combined text of all the string in the list
;; Examples: 
;; (image-string2 (list "bat" "Ball")) => image containing the text "bat" and 
;; "Ball" separated by spaces
;; (image-string2 (list "Computer" "Science")) => image containing the text
;; "Computer" and "Science" separated by spaces

(define (image-string2 lst)
   (text (string-join lst) 15 "blue"))
