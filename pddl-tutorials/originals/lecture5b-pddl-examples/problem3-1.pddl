;
; Problem 1 for blocksworld-3: move blocks between locations
;
; Author: Ron Petrick
;
(define (problem problem-3-1)
  (:domain blocksworld-3)

  (:objects
      a
      b
      c
      d
      e
      f
      left
      right
      office
      pub
  )

  (:init
      (onTable a office)
      (onTable b office)
      (onTable c office)
      (onTable d pub)
      (onTable e pub)
      (onTable f pub)

      (path office pub)
      (path pub office)

      (gripperEmpty left)
      (gripperEmpty right)

      (robotAt office)
  )

  (:goal
      (and
          (onTable a pub)
          (onTable b pub)
          (onTable d office)
      )
  )
)
