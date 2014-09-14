;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |16|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)

(define red-circle (bitmap "red_circle.png"))
(define yellow-circle (bitmap "yellow_circle.png"))
(define green-circle (bitmap "green_circle.png"))

(above red-circle yellow-circle green-circle)

(beside red-circle yellow-circle green-circle)



