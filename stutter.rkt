;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname stutter) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (rectangle-stutter num)
  (cond
   [(or (= num (* 50 1))
        (= num (* 50 2))
        (= num (* 50 3))
        (= num (* 50 4))
        (= num (* 50 5))
        (= num (* 50 6))
        (= num (* 50 7))
        (= num (* 50 8)))
  
  (place-image
   (overlay
    (rectangle 1400 250 "solid" "black")
    (ellipse (* 20 (ceiling (/ num 50))) 200 "solid" "orange"))
   750
   150
   (empty-scene
    1500
    300))]
  [else
  (place-image
   (ellipse (* 20 (ceiling (/ num 50))) 200 "solid" "orange")
   750
   150
   (empty-scene
    1500
    300))]))

(animate rectangle-stutter)