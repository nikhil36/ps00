;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; Data definition

;; a Student
;; STRUCTURE DEFINITION
(define-struct student (id name major))
;; CONTRUCTOR TEMPLATE
;; a student is a (make-student String String String)
;; Interpretation:
;; id is the student id
;; name is the student name
;; major is the area in which the student is majoring.
;; DESTRUCTOR TEMPLATE
;; student-fn : Student -> ??
;;(define (student-fn s)
;;  (student-id s)
;;  (student-name s)
;;  (student-major s)
;; )
;; EXAMPLES:
(define student1 (make-student "001" "Alex" "MSIS"))
(define student2 (make-student "002" "Nik" "CS"))
(define student3 (make-student "003" "Sania" "TSM"))
