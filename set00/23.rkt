;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |23|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; This is the expression whose value is the list of numbers from 1 to 5.

(cons true (cons false (cons true (cons false (cons true empty)))))

; To check if the above expression returns a list

(define alternate-booleans 
  (cons true (cons false (cons true (cons false (cons true empty))))))

(cons? alternate-booleans)