;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2-19) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; adiciona caractere atraves de funcao

(define
  (string-insert str i)

  (string-append (substring str 0 i) "_" (substring str i 10))
  )

(define str "helloworld")
(define i 5)

(string-insert str i)