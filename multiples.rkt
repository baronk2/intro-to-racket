;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname multiples) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(number->string 4)

(string->number "no")

(integer? 8.3)

(string? "thy")

(number? 5)

(positive? -35)

(image? (circle 5 "solid" "black"))

(list "try" "harder")

(define
  (multiples
   num
   start
   end)
  (cond
    [(> end start)
   (cons (* start num) (multiples num (+ 1 start) end))]
   [else (cons (* start num) empty)]))

(define
  (multiples-expanded
   num
   start
   end)
  (cond
    [(and (integer? num) (integer? start) (integer? end))
     (cond
       [(> end start)
        (cons (string-append (number->string num) "x" (number->string start) "=" (number->string (* start num))) (multiples-expanded num (+ 1 start) end))]
       [else (cons (string-append (number->string num) "x" (number->string start) "=" (number->string (* start num))) empty)])]
    [else "multiples-expanded works only with integer inputs"]))


(multiples 3 1 9)

(multiples-expanded 3 2.0 9)