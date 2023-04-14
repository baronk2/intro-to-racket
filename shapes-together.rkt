;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname shapes-together) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (shapes-together num)
  
  (cond
    [(> 500 num)
     (beside (rectangle 2 200 "solid" "blue") (shapes-together (+ num 1)))]
    [else (rectangle 1 200 "solid" "white")]))

(animate shapes-together)