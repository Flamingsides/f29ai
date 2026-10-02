;
; Problem 2 for blocksworld-1: build two small towers
;
; Author: Ron Petrick
;
(define (problem problem-1-2)
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
      (onTable a)
      (onTable b)
      (onTable c)
      (onTable d)
      (onTable e)
      (onTable f)

      (clear a)
      (clear b)
      (clear c)
      (clear d)
      (clear e)
      (clear f)

      (gripperEmpty)
  )

  (:goal
      (and
          (on a b)
          (on b c)
          (onTable c)

          (on f e)
          (on e d)
          (onTable d)
      )
  )
)
