;
; A version of blockworld with mobility and two grippers but no stacking
;
; Author: Ron Petrick
;
(define (domain blocksworld-3)
    (:requirements
        :strips
    )

    (:predicates
        (gripperEmpty ?h)
        (holding ?x ?h)
        (onTable ?x ?l)
        (robotAt ?l)
        (path ?x ?y)
    )

(:action pickup
    :parameters
        (?x ?h ?l)
    :precondition
        (and
           (gripperEmpty ?h)
           (onTable ?x ?l)
           (robotAt ?l)
        )
    :effect
        (and
           (not (gripperEmpty ?h))
           (not (onTable ?x ?l))
           (holding ?x ?h)
        )
)


(:action putdown
    :parameters
        (?x ?h ?l)
    :precondition
        (and
            (holding ?x ?h)
            (robotAt ?l)
        )
    :effect
        (and
            (not (holding ?x ?h))
            (onTable ?x ?l)
            (gripperEmpty ?h)
        )
)


(:action move
    :parameters
        (?x ?y)
    :precondition
        (and
            (robotAt ?x)
            (path ?x ?y)
        )
    :effect
        (and
            (not (robotAt ?x))
            (robotAt ?y)
        )
)


)
