;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname square-root) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (sqrt-iter guess x)
  (cond ((good-enough guess x) guess)
        (else  (sqrt-iter (everage guess x) x))
       ))
(define (good-enough guess x)
  (< (my-abs (- (sq guess) x))
     0.0001))
(define (sq x)
  (* x x))
(define (my-abs x)
  (if(< x 0) 
     (- x)
     x))
(define (everage guess x)
  (/ (+ guess 
        (/ x guess)) 
     2))
(define (sq-root x)
  (sqrt-iter 1 x))
(sq-root 2)
 