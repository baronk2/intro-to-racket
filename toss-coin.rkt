;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname toss-coin) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (toss-coin n)
  (cond
    [(zero? n)
     empty]
    [else
     (cons
      (random 2)
      (toss-coin (sub1 n)))]))

(define
  (count-a-lon list)
  (cond
    [(empty?
      list)
     0]
    [else
     (+
      1
      (count-a-lon
       (rest list)))]))

(define
  (add-a-lon list)
  (cond
    [(empty? list)
     0]
    [else
     (+
      (first list)
      (add-a-lon (rest list)))]))

(define
  (average list)
  (/
   (add-a-lon list)
   (count-a-lon list)))

(define
  (toss-coin-results times n)
  (cond
    [(zero?
      times)
     empty]
    [else
     (cons
      (add-a-lon (toss-coin n))
      (toss-coin-results
       (sub1 times)
       n))]))

(define test-list (list 2 5 6 2 6 25))

(count-a-lon test-list)

(add-a-lon (toss-coin 100))

(toss-coin-results 16 100)

(average test-list)

(average (toss-coin-results 16 100))

