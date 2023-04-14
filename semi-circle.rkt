;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname semi-circle) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (--0  top deg)
  (cond
    [(>= deg top) (- deg (* (floor (/ deg top)) top))]
    [else deg]))

(define
  (y-semi-circle-flip
   period
   x)
  (cond
    [(even?
      (floor
       (/
        x
        period)))
     (sqrt
      (-
       (sqr
        (/
         period
         2))
       (sqr
        (--0
         period
         x))))]
    [(odd?
      (floor
       (/
        x
        period)))
     (*
      -1
      (sqrt
      (-
       (sqr
        (/
         period
         2))
       (sqr
        (--0
         period
         x)))))]
    [else
     0]))

(define
  (semi-circle
   n)
  (place-image
   (circle
    15
    "solid"
    "black")
   (+
    100
    (--0 1600 n))
   (+
    300
    (y-semi-circle-flip
     200
     n))
   (empty-scene
    1800
    600)))

(animate semi-circle)