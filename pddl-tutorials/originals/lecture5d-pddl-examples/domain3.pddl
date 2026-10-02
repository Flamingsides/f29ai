;
; A version of the logistics domain with typing and type hierarchies
;
(define (domain domain3)
    (:requirements
        :strips :typing
    )

    (:types
        object
        city
        truck airplane - vehicle
        office airport - location
    )

    (:predicates
        (loc ?l ?c)
        (at  ?x ?l)
        (in  ?p ?v)
    )

    (:action load
        :parameters 
            (?o - object ?v - vehicle ?l - location)
        :precondition
            (and
		        (at ?v ?l)
                (at ?o ?l)
            )
        :effect
            (and
                (in ?o ?v)
                (not (at ?o ?l))
            )
    )

    (:action unload
        :parameters
            (?o - object ?v - vehicle ?l - location)
        :precondition
            (and
		        (at ?v ?l)
                (in ?o ?v)
            )
        :effect
            (and
                (at ?o ?l)
                (not (in ?o ?v))
            )
    )

    (:action drive
        :parameters
            (?t - truck ?c - city ?l1 - location ?l2 - location)
        :precondition
            (and
		        (at ?t ?l1)
                (loc ?l1 ?c)
                (loc ?l2 ?c)
            )
        :effect
            (and
                (at ?t ?l2)
                (not (at ?t ?l1))
            )
    )

    (:action fly
        :parameters
            (?p - airplane ?a1 - airport ?a2 - airport)
        :precondition
            (and
		        (at ?p ?a1)
            )
        :effect
            (and 
                (at ?p ?a2)
                (not (at ?p ?a1))
            )
    )
)
