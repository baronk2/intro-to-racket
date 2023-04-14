;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname teen) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define (teen age) 
  (cond
    [(< age 13) (string-append (number->string age) " is not teen")]
    [(< age 20) (string-append (number->string age) " is teen")]
    [else (string-append (number->string age) " is not teen")]))

(teen 12)
(teen 13)
(teen 19)
(teen 20)
(teen 21)