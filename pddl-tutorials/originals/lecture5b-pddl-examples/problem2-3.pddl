;
; Problem 3 for blocksworld-2: build two small towers and hold some blocks
;
; Author: Ron Petrick
;
(define (problem problem-2-3)
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
      (clear a)
      (onTable a)

      (on b c)
      (clear b)
      (onTable c)

      (clear d)
      (onTable d)

      (on e f)
      (clear e)
      (onTable f)

      (gripperEmpty left)
      (gripperEmpty right)
  )

  (:goal
      (and
          (on a b)
          (onTable b)

          (on d e)
          (onTable e)

          (holding c left)
          (holding f right)
      )
  )
)
