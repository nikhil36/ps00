;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Module 0 - Exercise 1
;;The below given expressions are used to find the number
;;of seconds in a leap year which contains 366 days.

;;Given : No input
;;Returns : Number

;;Expression 1 :
"Expressions 1"
(* 366
   (* 24 60)
   60
   )

;;Expression 2 :
"Expressions 2"
(* 366 24 3600)

;;Expression 3 :
"Expressions 3"
(* 366
   24
   (sqr 60);;using the sqr function to compute the square of 60
   )

;;TEST : Each expression should return the number 31622400

(check-expect (* 366 (* 24 60) 60) 31622400)
(check-expect (* 366 24 3600) 31622400)
(check-expect (* 366 24 (sqr 60)) 31622400)
