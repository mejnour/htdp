;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3-39) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(require 2htdp/universe)

; This program draws a car whose proportions
; are all defined by its wheel radius. Also,
; its main feature resides on super high con-
; centrations of gambiarras.

; Constants definitions
(define WHEEL-RADIUS 5)
(define START (* WHEEL-RADIUS 20))
(define BACKGROUND (empty-scene START (* 5 WHEEL-RADIUS)))

; Car Sampling
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))

(define BODY
  (rectangle (* WHEEL-RADIUS 8) (* WHEEL-RADIUS 2) "solid" "red"))

(define ROOF-TOP
  (rectangle (* WHEEL-RADIUS 4) (* WHEEL-RADIUS 4) "solid" "red"))

(define RED-FRAME
  (rectangle (* WHEEL-RADIUS 8)
             (* WHEEL-RADIUS 4)
             "solid"
             "white"))

(define RED-AREA
  (place-image ROOF-TOP
               (/ (image-width RED-FRAME) 2)
               (/ (image-height RED-FRAME) 2)
               (place-image/align BODY
                                  (image-width RED-FRAME)
                                  (image-height RED-FRAME)
                                  "right" "bottom"
                                  RED-FRAME)))

; Car Definitions
(define CAR-FRAME
  (rectangle (* WHEEL-RADIUS 8)
             (+ (* WHEEL-RADIUS 4) (* 2 WHEEL-RADIUS))
             "solid"
             "white"))

(define CAR
  (place-images
   (list WHEEL
         WHEEL
         RED-AREA)
   (list (make-posn (/ (image-width CAR-FRAME) 4) (- (image-height CAR-FRAME) WHEEL-RADIUS))
         (make-posn (* 3(/ (image-width CAR-FRAME) 4)) (- (image-height CAR-FRAME) WHEEL-RADIUS))
         (make-posn (/ (image-width CAR-FRAME) 2) (/ (image-height CAR-FRAME) 2)))
   CAR-FRAME))

; Number -> Image
; Redering Function
; receives a x position and spits the CAR
; image on that position.
(define (render x)
  (place-image CAR
               x
               WHEEL-RADIUS
               BACKGROUND))

; Number -> Number
; Counter/Clock Updater
; receives a number and subtracts 1 every
; clock tick.
(define (tock x)
  (- x 1))

; Number -> Number
; Stop Condition
; tests when its time to stop the ticks
(define (when t)
  (<= t (/ (image-width BODY) 2)))

; Number -> WorldEvent
; Main Funcion and World Listener
; makes shit spin properly
(define (main ws)
   (big-bang ws
     [on-tick tock]
     [to-draw render]
     [stop-when when]))

(main START)