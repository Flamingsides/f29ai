;
; A simplified version of the logistics domain with
; conditional and quantified effects
;
(define (domain domain4)
    (:requirements
        :strips :conditional-effects
    )

    (:predicates
        (object ?o)
        (vehicle ?v)
        (location ?l)
        (at ?v ?l)
        (in ?x ?l)
    )

    (:action load_object
        :parameters 
            (?o ?v ?l)
        :precondition
            (and
                (object ?o)
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
                (forall (?o)
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
