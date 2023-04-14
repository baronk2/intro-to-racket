;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname color-change-circle) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (255--0 color-var)
  (cond
    [(>= color-var 255) (- color-var (* (floor (/ color-var 255)) 255))]
    [else color-var]))

(define
  (55--0 color-var)
  (cond
    [(>= color-var 55) (- color-var (* (floor (/ color-var 55)) 55))]
    [else color-var]))

(define
  (155--0 color-var)
  (cond
    [(>= color-var 155) (- color-var (* (floor (/ color-var 155)) 155))]
    [else color-var]))

(define
  (size color-var)
  (cond
    [(>= color-var 300) (- color-var (* (floor (/ color-var 300)) 300))]
    [else color-var]))

(define
 (color-change color-var)
 (place-image
  (circle
   (size color-var)
   "solid"
   (make-color
     (255--0 color-var)
     (155--0 color-var)
     (55--0 color-var)))
  400
  400
  (empty-scene
   800
   800)))

(animate color-change)