;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname change-dim-rect) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (--0  top deg)
  (cond
    [(>= deg top) (- deg (* (floor (/ deg top)) top))]
    [else deg]))

(define
  (change-dim w)
  (place-image
   (rotate
    (--0
     360
     (/ (* w w) 15))
    (ellipse
     (--0
      720
      w)
     (-
      720
      (--0
       720
       w))
     "solid"
     (make-color
      (--0 255 (*  3 w))
      (- 255 (--0 255 (* 2 w)))
      (--0 255 (* 1 w)))))
   400
   400
   (empty-scene
    800
    800)))

(animate change-dim)