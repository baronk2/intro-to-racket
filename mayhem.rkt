;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname mayhem) (read-case-sensitive #t) (teachpacks ((lib "universe.ss" "teachpack" "2htdp") (lib "picturing-programs.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.ss" "teachpack" "2htdp") (lib "picturing-programs.rkt" "installed-teachpacks")))))
(define
  (--0  top deg)
  (cond
    [(>= deg top) (- deg (* (floor (/ deg top)) top))]
    [else deg]))

;; black white

(define (double-spin deg)
  (place-image
   (rotate
    (--0 360 (* 2 deg))
    (overlay
    (above
     (overlay
      (rotate
       (--0 360 (* 5 deg))
       (above (rectangle 50 10 "solid" "orange") (rectangle 50 110 "outline" "black")))
      (circle 65 "outline" "black"))
     (rectangle 50 (- 320 (--0 320 (* 1 deg))) "outline" "black")
     (overlay
      (rotate
       (- 359 (--0 360 (* deg deg)))
       (ellipse 100 20 "solid" "pink"))
      (circle 65 "outline" "black")))
    (rotate 60
            (above
     (overlay
      (rotate
       (--0 360 (* 7 deg))
       (above (rectangle 50 10 "solid" "red") (rectangle 50 110 "outline" "black")))
      (circle 65 "outline" "black"))
     (rectangle 50 200 "outline" "black")
     (overlay
      (rotate
       (- 359 (--0 360 (* 2 deg)))
       (ellipse 80 30 "solid" (make-color 0 (- 255 (--0 255 deg)) (--0 255 deg))))
      (circle 65 "outline" "black"))))
    (rotate 120
            (above
     (overlay
      (rotate
       (--0 360 (* 11 deg))
       (above (rectangle 50 10 "solid" "yellow") (rectangle 50 110 "outline" "black")))
      (circle 65 "outline" "black"))
     (rectangle 50 (--0 320 (* 2 deg)) "outline" "black")
     (overlay
      (rotate
       (- 359 (--0 360 (* 2 deg)))
       (ellipse 80 30 "solid" (make-color (--0 255 deg) 0 (- 255 (--0 255 deg)))))
      (circle 65 "outline" "black"))))))
   300
   300
   (empty-scene
    600
    600)))

(animate double-spin)