;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2-21) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
; using stepper and answering about
; DrRacket's behavior

(define
  (ff a)

  (* a 10)
  )

(ff (ff 1))

(+ (ff 1) (ff 1))

; yes, it does reuse results.