;
; A version of blockworld with two grippers
;
; Author: Ron Petrick
;
(define (domain blocksworld-2)
    (:requirements
        :strips
    )

    (:predicates
        (gripperEmpty ?h)
        (holding ?x ?h)
        (onTable ?x)
        (on ?x ?y)
        (clear ?x)
    )

(:action pickup_from_table
    :parameters
        (?x ?h)
    :precondition
        (and
           (gripperEmpty ?h)
           (onTable ?x)
           (clear ?x)
        )
    :effect
        (and
           (not (gripperEmpty ?h))
           (not (onTable ?x))
           (holding ?x ?h)
        )
)


(:action putdown_on_table
    :parameters
        (?x ?h)
    :precondition
        (and
            (holding ?x ?h)
        )
    :effect
        (and
            (not (holding ?x ?h))
            (onTable ?x)
            (gripperEmpty ?h)
        )
)


(:action pickup_from_stack
    :parameters
        (?x ?y ?h)
    :precondition
        (and
            (on ?x ?y)
            (clear ?x)
            (gripperEmpty ?h)
        )
    :effect
        (and
            (not (on ?x ?y))
            (not (gripperEmpty ?h))
            (holding ?x ?h)
            (clear ?y)
        )
)


(:action putdown_on_stack
    :parameters
        (?x ?y ?h)
    :precondition
        (and
            (holding ?x ?h)
            (clear ?y)
        )
    :effect
        (and
            (not (holding ?x ?h))
            (not (clear ?y))
            (on ?x ?y)
            (gripperEmpty ?h)
        )
)


)
