;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |14|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define-struct student (id name major))
;; Racket will make the following fucntions
;1
(make-student "123" "Nikhil" "CS" )
;2
(student? (make-student "123" "Nikhil" "CS" ))
;3
(student-id (make-student "123" "Nikhil" "CS" ))
;4
(student-name (make-student "123" "Nikhil" "CS" ))
;5
(student-major (make-student "123" "Nikhil" "CS" ))
