;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;Module 0 - Exercise 2
;;This code returns true if the result of (100/3) is 
;;greater than the result of (100 + 3)/(3 + 3) and
;;false otherwie

;;Given : No input
;;Returns : boolean

;;Expression :
(cond 
  [(> (/ 100 3)
      (/ (+ 100 3)
         (+ 3 3)
      )
    ) true]
  [else false]
 )

;;TESTS : expected value is true
(check-expect (cond 
                [(> (/ 100 3)
                    (/ (+ 100 3)
                       (+ 3 3)
                       )
                    ) true]
                [else false]
                )
              true
)
