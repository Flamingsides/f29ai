;
; Problem 2 for blocksworld-2: build two small towers
;
; Author: Ron Petrick
;
(define (problem problem-2-2)
  (:domain blocksworld-2)

  (:objects
      a
      b
      c
      d
      e
      f
      left
      right
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

      (gripperEmpty left)
      (gripperEmpty right)
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
