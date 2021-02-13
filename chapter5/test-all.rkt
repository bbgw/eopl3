(module test-all scheme

;; loads each of the languages in this chapter and tests them.

 ; (require (prefix-in letrec "./letrec-lang/top.rkt"))
  (require  (prefix-in letrec- "letrec-lang/top.rkt"))
 ; (letrec-stop-after-first-error #t)
  (letrec-run-all)

)