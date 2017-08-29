;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2-26.1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "htdp")) #f)))
(require 2htdp/batch-io)

(define
  (letter fst lst signature-name)
  
  (string-append
    (opening fst)
    "\n\n"
    (body fst lst)
    "\n\n"
    (closing signature-name))
  )
 
(define
  (opening fst)
  
  (string-append "Dear " fst ",")
  )
 
(define
  (body fst lst)
  
  (string-append
   "We have discovered that all people with the" "\n"
   "last name " lst " have won our lottery. So, " "\n"
   fst ", " "hurry and pick up your prize.")
  )
 
(define
  (closing signature-name)
  
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n")
  )

(write-file 'stdout (letter "Matt" "Fiss" "Fell"))