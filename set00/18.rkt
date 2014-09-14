;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require "extras.rkt")
(require rackunit)
;; rec-sequence : Real -> String
;; GIVEN : nth number for the sequence 
;; Return : n-th element in the sequence 2x4
;; EXAMPLE:
;; (rec-sequence 1) -> 2x4
;; (rec-sequence 2) -> 4x8
;; (rec-sequence 3) -> 8x16

(define (rec-sequence n)
  (string-append (number->string (expt 2 n)) 
                 "x"
                 (number->string(expt 2 (+ n 1)))
                 ) 
  )                  

(begin-for-test
  (check-equal? 
   (rec-sequence 1)
   "2x4"
   "The output should be 2x4")
  (check-equal? 
   (rec-sequence 2)
   "4x8"
   "The output should be 4x8")
  (check-equal? 
   (rec-sequence 3)
   "8x16"
   "The output should be 8x16")
  )