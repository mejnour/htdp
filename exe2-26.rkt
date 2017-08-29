;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2-26) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
; it does confirm my expectations

(define
  (string-insert s i)

  (string-append (substring s 0 i)
                 "_"
                 (substring s i))
  )
 
(string-insert "helloworld" 6)