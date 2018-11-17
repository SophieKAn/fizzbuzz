#lang racket

(define divisible-by-three? (lambda (i)
                              (cond
                                [(equal? (modulo i 3) 0) "Fizz"]
                                [else ""])))

(define divisible-by-five? (lambda (i)
                             (cond
                               [(equal? (modulo i 5) 0) "Buzz"]
                               [else ""])))

(define fizzbuzz (lambda (i)
                        (let ([output (string-append (divisible-by-three? i) (divisible-by-five? i))])
                          (cond
                            [(non-empty-string? output) output]
                            [else (number->string i)]))))

(for ([i 101])
     (displayln (fizzbuzz i)))
