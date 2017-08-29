;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2-27) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
; nomeando constantes

; definicao de constantes
(define base-attendees 120)
(define base-ticket-price 5.0)
(define attendees-floating 15)
(define ticket-price-floating 0.1)
(define fixed-cost 180)
(define variable-cost 0.04)

; relacao clientes x preco
(define
  (attendees ticket-price)

  (- base-attendees (* (- ticket-price base-ticket-price) (/ attendees-floating ticket-price-floating)))
  )

; apurado
(define
  (revenue ticket-price)

  (* ticket-price (attendees ticket-price))
  )

; custo
(define
  (cost ticket-price)

  (+ fixed-cost (* variable-cost (attendees ticket-price)))
  )

; lucro
(define
  (profit ticket-price)

  (- (revenue ticket-price)
     (cost ticket-price))
  )