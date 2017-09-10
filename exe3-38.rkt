;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3-38) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; String -> String
; extracts the last charac on given String
; and returns the rest
; given: "pina", expect: "pin"
; given: "hello", expect: "hell"
(define
  (string-remove-last str)

  (substring str 0 (- (string-length str) 1))
  )

(define str "pina")
(string-remove-last str)