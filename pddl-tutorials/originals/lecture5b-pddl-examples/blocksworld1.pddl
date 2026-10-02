;
; A version of blocksworld
;
; Author: Ron Petrick
;
(define (domain blocksworld-1)
    (:requirements
        :strips
    )

    (:predicates
        (gripperEmpty)
        (holding ?x)
        (onTable ?x)
        (on ?x ?y)
        (clear ?x)
    )

(:action pickup_from_table
    :parameters
        (?x)
    :precondition
        (and
           (gripperEmpty)
           (onTable ?x)
           (clear ?x)
        )
    :effect
        (and
           (not (gripperEmpty))
           (not (onTable ?x))
           (holding ?x)
        )
)


(:action putdown_on_table
    :parameters
        (?x)
    :precondition
        (and
            (holding ?x)
        )
    :effect
        (and
            (not (holding ?x))
            (onTable ?x)
            (gripperEmpty)
        )
)


(:action pickup_from_stack
    :parameters
        (?x ?y)
    :precondition
        (and
            (on ?x ?y)
            (clear ?x)
            (gripperEmpty)
        )
    :effect
        (and
            (not (on ?x ?y))
            (not (gripperEmpty))
            (holding ?x)
            (clear ?y)
        )
)


(:action putdown_on_stack
    :parameters
        (?x ?y)
    :precondition
        (and
            (holding ?x)
            (clear ?y)
        )
    :effect
        (and
            (not (holding ?x))
            (not (clear ?y))
            (on ?x ?y)
            (gripperEmpty)
        )
)


)
