;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(require 2htdp/image)
(require "extras.rkt")
(require rackunit)


(define leg-human (rectangle 34 114 "outline" "black"))
(define arms-human (rectangle 20 100 "outline" "black"))
(define neck-human (rectangle 20 30 "outline" "black"))
(define shoulder-human (rectangle 15 32 "outline" "black"))
(define body-human (rectangle 116 110 "outline" "black"))

(define head-human (circle 25 "outline" "black"))

;;This is the neck and head image of the human
(define head-neck-human (overlay/offset head-human 0.5 39  neck-human))

;;This is the neck,head and body image of the human
(define head-neck-body-human 
  (overlay/offset head-neck-human 0.5 95  body-human)
 )

(define upper-body-human 
  (beside/align "bottom" arms-human 
                (beside/align "middle" shoulder-human head-neck-body-human 
                              shoulder-human ) 
                arms-human
                )
  )
(define lower-body-human (beside/align "top"
                leg-human
                (rectangle 48 30 "outline" "black")
                 leg-human))
(define full-human (above/align "center" upper-body-human lower-body-human))

full-human
(save-image full-human "human.png" 200 320)

