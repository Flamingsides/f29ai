; Week 4 untyped variant of the lecture live demo: complete the TODOs during the demonstration.
(define (domain campus-robot)
  (:requirements :strips)

  (:predicates
    ; TODO: classification predicates (robot, room), robot location and directed room connection
  )

  (:action move
    :parameters (?r ?from ?to)
    :precondition (and
      ; TODO: ?r is a robot, ?from and ?to are rooms, robot is at ?from, ?from connects to ?to
    )
    :effect (and
      ; TODO: add robot at ?to; delete robot at ?from
    ))
)
