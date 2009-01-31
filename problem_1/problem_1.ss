#lang scheme

(define (som m1 m2 x) 

(define (iter i sum)
  (if (= i x)
      sum
      (add_if_multiple i sum)))
(define (add_if_multiple i sum)
  (if (or (= 0 (modulo i m1)) (= 0 (modulo i m2)))
      (iter (+ i 1) (+ sum i))
      (iter (+ i 1) sum)))
  
(iter 1 0))