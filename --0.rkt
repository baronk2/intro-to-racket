;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname --0) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (--0  top deg)
  (cond
    [(>= deg top) (- deg (* (floor (/ deg top)) top))]
    [else deg]))

(--0 150 60)
(--0 150 200)
(--0 300 500)
(--0 300 300)
(--0 60 60)