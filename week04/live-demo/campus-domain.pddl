; Week 4 untyped variant of the lecture live demo: complete, validated STRIPS model.
; Classification predicates (robot, room) replace the types of the -typed files.
(define (domain campus-robot)
  (:requirements :strips)
  (:predicates
    (robot ?r)
    (room ?x)
    (at ?r ?x)
    (connected ?from ?to))

  (:action move
    :parameters (?r ?from ?to)
    :precondition (and
      (robot ?r)
      (room ?from)
      (room ?to)
      (at ?r ?from)
      (connected ?from ?to))
    :effect (and
      (at ?r ?to)
      (not (at ?r ?from))))
)
