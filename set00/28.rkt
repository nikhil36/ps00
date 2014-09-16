;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |28|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)
(require 2htdp/image)
(require racket/string)

;; list-string : String ListOfString -> string
;; WHERE: the list is non-empty
;; RETURNS a final string after combining all the strings in the lists
;; Examples: 
;; (list-string (list(list "This" "is" "the" "first" "line")
;; (list "This" "is" "the" "second" "line"))) => "This is the first line 
;; This is the second line"
;; (list-string (list (list "Computer" "Science") (list "Nikhil")))
;; => "Computer Science Nikhil"

(define (list-string lst)
  (cond
    [(empty? lst) ""]
    [else (string-append " " (string-join (first lst))
                        (list-string (rest lst))
                        )]
    )
  )

;; image-string : String -> image
;; RETURNS text as an image
;; Examples: 
;; (image-string (list(list "This" "is" "the" "first" "line")
;; (list "This" "is" "the" "second" "line"))) => an image containing the text
;; "This is the first line This is the second line"
;; (image-string (list (list "Computer" "Science") (list "Nikhil")))
;; => an image containing the text "Computer Science Nikhil"

(define (image-string l)
(text (list-string l) 15 "blue"))


(image-string (list(list "This" "is" "the" "first" "line")
 (list "This" "is" "the" "second" "line")))
 (image-string (list (list "Computer" "Science") (list "Nikhil")))