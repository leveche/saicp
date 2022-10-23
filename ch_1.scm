; ex. 1.2
(/ (+
    5
    4
    (- 2
       (- 3
	  (+ 6
	     (/ 4 5)
	     ))))
   (* 3
      (- 6 2)
      (- 2 7) ))


; ex. 1.3
(define (ssq2g x y z)
  (define sq (lambda (x) (* x x)))
  (define sumsq3 (lambda (x y z) (+ (sq x) (sq y) (sq z) )))
  (- (sumsq3 x y z) (sq (min x y z) )))
  
(define (ssq2g-again x y z)
  (- (+ (* x x) (* y y) (* z z) )
     (* (min x y z) (min x y z) ))) 

					; ex. 1.4
; (if) selects the operator based on the sign of b, which is then applied: b<0 yields a - b == a + |b|
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

					; ex. 1.5
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))
					; applicative order: evaluate the arguments and then apply, looping forever:
					; (test 0 (p)) -> (test 0 (p)) -> ... 
					; normal order: fully expand, then reduce:
					; (test 0 (p)) -> (if (= 0 0) 0 (p)) -> 0

