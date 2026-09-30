; Week 4 untyped variant of the lecture live demo: robot route through campus.
(define (problem campus-delivery)
  (:domain campus-robot)
  (:objects r1 library lab office)
  (:init
    (robot r1)
    (room library)
    (room lab)
    (room office)
    (at r1 library)
    (connected library lab)
    (connected lab office)
  )
  (:goal (at r1 office)))
