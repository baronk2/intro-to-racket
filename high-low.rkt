;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname high-low) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (high-low
   list)
  (cond
    [(not (empty? (rest list)))
     (cond
       [(> (first list) (first (high-low (rest list))))
        (cons (first list) (rest list))]
       [else
        (cons (first (high-low (rest list))) (rest list))])]
    [else
     (cons (first list) empty)]))

(high-low (list 5 69 2 35 14 25 62 -3 37))