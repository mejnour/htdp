;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe1-05) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; desenhando um busão

(underlay/xy
 (overlay/xy
  (overlay/xy (rectangle 400 100 "solid" "gray")
           60 70
           (circle 30 "solid" "black"))
  260 70
  (circle 30 "solid" "black"))
 320 10
 (overlay/xy (rectangle 40 80 "solid" "brown")
             60 50
             (rectangle 20 20 "solid" "yellow")))

