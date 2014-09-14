;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require "extras.rkt")
(require rackunit)

;; valid-width-proportion?: Number Number -> boolean
;; Takes two numbers and returns true iff both the numbers
;; are greater than 0,
;; EXAMPLE:
;; (valid-width-proportion? 20 0.5) -> true
;; (valid-width-proportion? -1 2) -> false
;; (valid-width-proportion? 80 -11) -> false

(define (valid-width-proportion? a b)
  (cond
   [(and (>= a 0) (>= b 0)) true]
   [else false]  
  )                   
)

(begin-for-test
  (check-equal? 
   (valid-width-proportion? 20 0.5)
   true
   "The numbers should be greater than or equal to 0")
  
  (check-equal? 
   (valid-width-proportion? 0 0)
   true
   "The numbers should be greater than or equal to 0" )
  
  (check-equal? 
   (valid-width-proportion? 0 -1)
   false
   "The numbers should be greater than or equal to 0" )
)


;; rel-rec-sequence: Number Number -> Rectangle
;; Takes two numbers and returns a solid blue rectangle,
;; where the first number is the width of the rectangle,
;; and the second number is the proportion of width and height of the rectangle
;; to be produced (i.e. height = width * proportion).

;; EXAMPLE:
;; (rel-rec-sequence 20 0.5) -> (rectangle 2 10 "solid" "blue")
;; (rel-rec-sequence 40 2) -> (rectangle 4 80 "solid" "blue")
;; (rel-rec-sequence 80 1) -> (rectangle 8 80 "solid" "blue")

(define (rel-rec-sequence w p)
  (cond
   [(valid-width-proportion? w p) (rectangle w (* w p) "solid" "blue")]
   [else "Please enter positive numbers"]
  )                   
)

(begin-for-test
  (check-equal? 
   (rel-rec-sequence 20 0.5)
   (rectangle 20 10 "solid" "blue")
   "The output should be a rectangle of width
 2 and height 10 pixels in solid blue color")
  
  (check-equal? 
   (rel-rec-sequence 40 2)
   (rectangle 40 80 "solid" "blue")
   "The output should be a rectangle of width
 40 and height 80 pixels in solid blue color")
  
  (check-equal? 
  (rel-rec-sequence 80 -1)
   "Please enter positive numbers"
   "The width and proportion should be positive always")
)

