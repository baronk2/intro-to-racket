;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname webs) (read-case-sensitive #t) (teachpacks ((lib "picturing-programs.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "picturing-programs.rkt" "installed-teachpacks")))))
(define x 200)
(define y 400)
(define z (/ (* x (sqrt 3)) 2))
(define diagr (sqrt (+ (sqr x) (sqr y))))

(define r (rectangle x y "outline" "blue"))
(define t (triangle (- z 30) "outline" "dark green"))
(define p (ellipse 1500 diagr "outline" "red"))

(define (offset obj num n) (rotate (* (- num n) (/ 360 num)) obj))
;;(offset r 24 1)

(define (web shape rep) (overlay shape
                                 (offset shape rep 1)
                                 (offset shape rep 2)
                                 (offset shape rep 3)
                                 (offset shape rep 4)
                                 (offset shape rep 5)
                                 (offset shape rep 6)
                                 (offset shape rep 7)
                                 (offset shape rep 8)
                                 (offset shape rep 9)
                                 (offset shape rep 10)
                                 (offset shape rep 11)))
(define rr (web r 60))
(define tt (web t 96))
(define pp (web p 120))
(define dntp (web pp 10))
(define dntt (web tt 8))
(define dntr (web rr 10))

(overlay dntp dntt dntr (rotate 2 dntr)(rotate 1 dntp))