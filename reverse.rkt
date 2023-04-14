;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname reverse) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (--0  top r)
  (cond
    [(>= r top) (- r (* (floor (/ r top)) top))]
    [else r]))


(define
  (spiral r)
  (place-image
   (overlay
    (rotate
    (- 359 (--0 360 (* 2 r)))
    (above
     (rectangle
      10
      5
      "solid"
      "red")
     (rectangle
      10
      (- 780 (--0 780 (/ r 5)))
      "outline"
      "white")
     (rectangle
      10
      5
      "solid"
      "blue")))
    (rotate
    (--0 360 (* 7 r))
    (above
     (rectangle
      10
      5
      "solid"
      "red")
     (rectangle
      10
      (--0 780 (/ r 3))
      "outline"
      "white")
     (rectangle
      10
      5
      "solid"
      "blue"))))
   400
   400
   (empty-scene
    800
    800)))

(animate spiral)