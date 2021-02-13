#lang racket

;;; script to test all eopl interpreters

(require (prefix-in chapter3/let-lang/top.rkt
                    "chapter3/let-lang/top.rkt"))
(chapter3/let-lang/top.rkttest-all)
"chapter3/let-lang/top.rkt"


(require (prefix-in chapter3/letrec-lang/top.rkt
                    "chapter3/letrec-lang/top.rkt"))
(chapter3/letrec-lang/top.rkttest-all)
"chapter3/letrec-lang/top.rkt"


(require (prefix-in chapter3/lexaddr-lang/top.rkt
                    "chapter3/lexaddr-lang/top.rkt"))
(chapter3/lexaddr-lang/top.rkttest-all)
"chapter3/lexaddr-lang/top.rkt"


(require (prefix-in chapter3/proc-lang/ds-rep/top.rkt
                    "chapter3/proc-lang/ds-rep/top.rkt"))
(chapter3/proc-lang/ds-rep/top.rkttest-all)
"chapter3/proc-lang/ds-rep/top.rkt"


(require (prefix-in chapter3/proc-lang/proc-rep/top.rkt
                    "chapter3/proc-lang/proc-rep/top.rkt"))
(chapter3/proc-lang/proc-rep/top.rkttest-all)
"chapter3/proc-lang/proc-rep/top.rkt"


(require (prefix-in chapter4/call-by-need/top.rkt
                    "chapter4/call-by-need/top.rkt"))
(chapter4/call-by-need/top.rkttest-all)
"chapter4/call-by-need/top.rkt"


(require (prefix-in chapter4/call-by-reference/top.rkt
                    "chapter4/call-by-reference/top.rkt"))
(chapter4/call-by-reference/top.rkttest-all)
"chapter4/call-by-reference/top.rkt"


(require (prefix-in chapter4/explicit-refs/top.rkt
                    "chapter4/explicit-refs/top.rkt"))
(chapter4/explicit-refs/top.rkttest-all)
"chapter4/explicit-refs/top.rkt"


(require (prefix-in chapter4/implicit-refs/top.rkt
                    "chapter4/implicit-refs/top.rkt"))
(chapter4/implicit-refs/top.rkttest-all)
"chapter4/implicit-refs/top.rkt"


(require (prefix-in chapter4/mutable-pairs/top.rkt
                    "chapter4/mutable-pairs/top.rkt"))
(chapter4/mutable-pairs/top.rkttest-all)
"chapter4/mutable-pairs/top.rkt"


(require (prefix-in chapter5/exceptions/top.rkt
                    "chapter5/exceptions/top.rkt"))
(chapter5/exceptions/top.rkttest-all)
"chapter5/exceptions/top.rkt"


;(require (prefix-in chapter5/letrec-lang/top.rkt
;                    "chapter5/letrec-lang/top.rkt"))
;(chapter5/letrec-lang/top.rkttest-all)
;"chapter5/letrec-lang/top.rkt"


(require (prefix-in chapter5/thread-lang/top.rkt
                    "chapter5/thread-lang/top.rkt"))
(chapter5/thread-lang/top.rkttest-all)
"chapter5/thread-lang/top.rkt"


(require (prefix-in chapter6/cps-lang/top.rkt
                    "chapter6/cps-lang/top.rkt"))
(chapter6/cps-lang/top.rkttest-all)
"chapter6/cps-lang/top.rkt"


(require (prefix-in chapter6/cps-side-effects-lang/top.rkt
                    "chapter6/cps-side-effects-lang/top.rkt"))
(chapter6/cps-side-effects-lang/top.rkttest-all)
"chapter6/cps-side-effects-lang/top.rkt"


(require (prefix-in chapter7/checked/top.rkt
                    "chapter7/checked/top.rkt"))
(chapter7/checked/top.rkttest-all)
"chapter7/checked/top.rkt"


(require (prefix-in chapter7/inferred/top.rkt
                    "chapter7/inferred/top.rkt"))
(chapter7/inferred/top.rkttest-all)
"chapter7/inferred/top.rkt"


(require (prefix-in chapter8/abstract-types-lang/top.rkt
                    "chapter8/abstract-types-lang/top.rkt"))
(chapter8/abstract-types-lang/top.rkttest-all)
"chapter8/abstract-types-lang/top.rkt"


(require (prefix-in chapter8/full-system/top.rkt
                    "chapter8/full-system/top.rkt"))
(chapter8/full-system/top.rkttest-all)
"chapter8/full-system/top.rkt"


(require (prefix-in chapter8/simplemodules/top.rkt
                    "chapter8/simplemodules/top.rkt"))
(chapter8/simplemodules/top.rkttest-all)
"chapter8/simplemodules/top.rkt"


(require (prefix-in chapter9/classes/top.rkt
                    "chapter9/classes/top.rkt"))
(chapter9/classes/top.rkttest-all)
"chapter9/classes/top.rkt"


(require (prefix-in chapter9/typed-oo/top.rkt
                    "chapter9/typed-oo/top.rkt"))
(chapter9/typed-oo/top.rkttest-all)
"chapter9/typed-oo/top.rkt"

