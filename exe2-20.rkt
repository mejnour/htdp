;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2-20) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; remove caractere usando funcao

(define
  (string-delete str i)

  (string-append (substring str 0 i) (substring str (+ i 1) 10))
  )

(define str "helloworld")
(define i 5)

(string-delete str i)