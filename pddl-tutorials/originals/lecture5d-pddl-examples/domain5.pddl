;
; A simplified version of the logistics domain with
; conditional and quantified effects
;
(define (domain domain5)
    (:requirements
        :strips :conditional-effects :typing
    )

    (:predicates
        (vehicle ?v)
        (location ?l)
        (at ?v ?l)
        (in ?x ?l)
    )

    (:types
        object
    )

    (:action load_object
        :parameters 
            (?o - object ?v ?l)
        :precondition
            (and
                (vehicle ?v)
                (location ?l)
		        (at ?v ?l)
                (at ?o ?l)
            )
        :effect
            (and
                (in ?o ?v)
                (not (at ?o ?l))
            )
    )

    (:action drive
        :parameters
            (?v ?l1 ?l2)
        :precondition
            (and
                (vehicle ?v)
                (location ?l1)
                (location ?l2)
                (at ?v ?l1)
            )
        :effect
            (and
                (not (at ?v ?l1))
                (at ?v ?l2)
            )
    )

    (:action unload_all
        :parameters
            (?v ?l)
        :precondition
            (and
                (vehicle ?v)
                (location ?l)
		        (at ?v ?l)
            )
        :effect
            (and
                (forall (?o - object)
                    (when (in ?o ?v)
                          (and
                              (at ?o ?l)
                              (not (in ?o ?v))
                          )
                    )
                )
            )
    )

)
