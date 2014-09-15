;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |22|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; This is the expression whose value is the list of numbers from 1 to 5.

(cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty)))))

; To check if the above expression returns a list

(define 1to5-list (cons 1 (cons 2 (cons 3 (cons 4 (cons 5 empty))))))
(cons? 1to5-list)