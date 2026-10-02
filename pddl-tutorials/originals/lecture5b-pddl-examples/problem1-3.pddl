;
; Problem 3 for blocksworld-1: reverse a tower
;
; Author: Ron Petrick
;
(define (problem problem-1-3)
  (:domain blocksworld-1)

  (:objects
      a
      b
      c
      d
      e
      f
  )

  (:init
      (on a b)
      (on b c)
      (on c d)
      (on d e)
      (on e f)
      (onTable f)
      (clear a)

      (gripperEmpty)
  )

  (:goal
      (and
          (on f e)
          (on e d)
          (on d c)
          (on c b)
          (on b a)
          (onTable a)
          (clear f)
      )
  )
)
