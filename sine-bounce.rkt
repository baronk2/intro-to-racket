;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sine-bounce) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (sine-bounce
   n)
  (place-image
   (circle
    25
    "solid"
    "black")
   (+
    500
    (*
     -400
     (cos
      (*
       (/
        (*
         2
         pi)
        800)
       (*
        4
        n)))))
   (+
    200
    (*
     100
     (sin
      (*
       (/
        (*
         2
         pi)
        100)
       n))))
   (empty-scene
    1000
    400)))

(animate sine-bounce)