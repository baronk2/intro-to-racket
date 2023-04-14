;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname clock) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (clock-face
   r)
  (circle
   r
   "solid"
   "white"))

(define
  (clock-rim
   r
   t)
  (circle
   (+
    t
    r)
   "solid"
   "black"))

(define
  (clock-back
   r)
  (overlay
   (clock-face r)
   (clock-rim (/ r 20) r)))

(define
  (clock-mark
   r)
  (rectangle
   (/
    r
    30)
   (/
    r
    10)
   "solid"
   "black"))

(define
  (two-clock-mark-shape
   r
   deg)
  (rotate
   deg
   (above
    (clock-mark
     r)
    (circle
     (-
      r
      (*
       1.5
       (image-height
        (clock-mark
         r))))
    "outline"
    "white")
    (clock-mark
     r))))

(define
  (all-clock-marks
   r)
  (overlay
   (two-clock-mark-shape
    r
    0)
   (two-clock-mark-shape
    r
    30)
   (two-clock-mark-shape
    r
    60)
   (two-clock-mark-shape
    r
    90)
   (two-clock-mark-shape
    r
    120)
   (two-clock-mark-shape
    r
    150)))

(define
  (handless-clock
   r)
  (overlay
   (all-clock-marks
    r)
   (clock-back
    r)))

(define
  (--0  top deg)
  (cond
    [(>= deg top) (- deg (* (floor (/ deg top)) top))]
    [else deg]))

(define
  (clock-hand
   r
   w
   l
   ticks-per-rev
   t)
  (rotate
   (*
    -1
    (/
     360
     ticks-per-rev)
    (floor
     (/
      (--0
       (*
        21
        ticks-per-rev)
       t)
      21)))
   (overlay
    (circle
     (/
      r
      30)
     "solid"
     "black")
    (above
     (rectangle
      w
      l
      "solid"
      "black")
     (rectangle
      1
      l
      "outline"
      "white"))
    (circle
     (*
      r
      .81)
     "outline"
     "white"))))

(define
  (second-hand
   r
   t)
  (clock-hand
   r
   (/
    r
    60)
   (*
    r
    .8)
   60
   t))

(define
  (minute-hand
   r
   t)
  (clock-hand
   r
   (/
    r
    30)
   (*
    r
    .75)
   3600
   t))

(define
  (hour-hand
   r
   t)
  (clock-hand
   r
   (/
    r
    20)
   (*
    r
    .5)
   (*
    3600
    12)
   t))

(define
  (all-hands
   r
   t)
  (overlay
   (second-hand
    r
    t)
   (minute-hand
    r
    t)
   (hour-hand
    r
    t)))

(define
  (whole-clock
   r
   t)
  (overlay
   (all-hands
    r
    t)
   (handless-clock
    r)))

(define
  (standard-clock
   t)
  (whole-clock
   250
   t))
   

(handless-clock 300)

(clock-hand 300 5 100 60 69538)
(second-hand 300 69538)
(minute-hand 300 69538)
(hour-hand 300 69538)
(all-hands 300 69538)
(whole-clock 300 69538)
(animate standard-clock)