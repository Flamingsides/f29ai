;
; Problem 1 for blocksworld-2: pick up blocks in each gripper
;
; Author: Ron Petrick
;
(define (problem problem-2-1)
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
          (holding a left)
          (holding b right)
      )
  )
)
