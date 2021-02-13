(module top (lib "eopl.ss" "eopl")
  
  ;; top level module.  Loads all required pieces.
  ;; Test the interpreter alone with (interpret-all)
  ;; Test the cps converter and interprter with (run-all)

   ;;; interface for book test ;;;
  (provide test-all)
  (define (test-all) 
    (interpret-all)
    (run-all))


  (require "drscheme-init.rkt")
  (require "data-structures.rkt")        ; for expval constructors
  (require "cps-in-lang.rkt")            ; for scan&parse
  (require "cps.rkt")                    ; for cps transformer
  (require "interp.rkt")                 ; for value-of-program
  (require "interp-tests.rkt")           ; for tests-for-interp
  (require "tests.rkt")                  ; for test-list

  (require "cps-out-lang.rkt")          ; for cps-program->string
  
  (provide (all-defined-out))
  (provide (all-from-out "interp.rkt"))

  (define instrument-cps (make-parameter #f))  
  
  ;;;;;;;;;;;;;;;; test the interpreter alone ;;;;;;;;;;;;;;;;
  
  ;; interpret : cps-out-lang string -> expval
  (define interpret
    (lambda (string)
      (value-of-program (cps-out-scan&parse string))))
  
  ;; interpret-all : () -> unspecified
  ;; runs all the tests in tests-for-interp, comparing the results with
  ;; equal-answer?  
  (define interpret-all
    (lambda ()
      (run-tests! interpret equal-answer? tests-for-interp)))

  ;;;;;;;;;;;;;;;; test the converter and interpreter ;;;;;;;;;;;;;;;;

  ;; run : cps-in-lang String -> ExpVal
  (define run
    (lambda (string)
      (let ((cpsed-pgm
             (cps-of-program (scan&parse string))))
        (when (instrument-cps) (pretty-print cpsed-pgm))
        (value-of-program cpsed-pgm))))

  ;; run-all : () -> Unspecified
  ;; runs all the tests in test-list, comparing the results with
  ;; equal-answer?  
  (define run-all
    (lambda ()
      (run-tests! run equal-answer? test-list)))
  
  ;;;;;;;;;;;;;;;; auxiliaries ;;;;;;;;;;;;;;;;

  (define equal-answer?
    (lambda (ans correct-ans)
      (equal? ans (sloppy->expval correct-ans))))
  
  (define sloppy->expval 
    (lambda (sloppy-val)
      (cond
        ((number? sloppy-val) (num-val sloppy-val))
        ((boolean? sloppy-val) (bool-val sloppy-val))
        (else
          (eopl:error 'sloppy->expval 
            "Can't convert sloppy value to expval: ~s"
            sloppy-val)))))
    
  ;; run-one : Symbol -> ExpVal
  ;; (run-one sym) runs the test whose name is sym
  (define run-one
    (lambda (test-name)
      (let ((the-test (assoc test-name test-list)))
        (cond
          ((assoc test-name test-list)
           => (lambda (test)
                (run (cadr test))))
          (else (eopl:error 'run-one "no such test: ~s" test-name))))))

  ;; (stop-after-first-error #t)
  ;; (run-all)
  
  )




