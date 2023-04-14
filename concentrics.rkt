;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname concentrics) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (concentrics
   r-min
   delta-r
   r-max)
  (cond
    [(> r-max (+ r-min delta-r))
     (overlay
      (circle r-min "solid" (make-color r-min r-min (- 255 r-min)))
      (concentrics (+ r-min delta-r) delta-r r-max))]
    [else
     (circle r-max "outline" "white")]))

(concentrics 1 1 255)