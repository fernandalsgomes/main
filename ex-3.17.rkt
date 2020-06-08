#lang sicp

(define (count-pairs x)
  (let ((counted '())) 
    (define (count-pairs-iter x) 
      (if (or (not (pair? x)) (memq x counted)) 
          0 
          (begin
            (set! counted (cons x counted)) 
            (+ (count-pairs-iter (car x)) 
               (count-pairs-iter (cdr x)) 
               1))))
    (count-pairs-iter x)))

