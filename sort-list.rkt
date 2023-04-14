;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname sort-list) (read-case-sensitive #t) (teachpacks ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.ss" "teachpack" "2htdp") (lib "universe.ss" "teachpack" "2htdp")))))
(define
  (sort-list
   list)
  (cond
    [(empty?
      (rest
       list))
     (cons
      (first
       list)
      empty)]
    [else
     (cond
       [(>
         (first
          list)
         (first
          (rest
           list)))
        (cons
         (first
          list)
         (sort-list
          (rest
           list)))]
       [else
        (sort-list
         (cons
          (first
           (rest
            list))
          (cons
           (first
            list)
           (rest
            (rest
             list)))))])]))

(sort-list (list 5 6 4 1 3 2 0 -1))

;;(sort-list (list 1 1))