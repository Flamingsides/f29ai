;
; Problem for domain3
;
(define (problem problem3)
    (:domain domain3)

    (:objects
        truck1 truck2 truck3 - truck
        city1 city2 city3 - city
        airplane1 - airplane
        airport1 airport2 airport3 - airport
        packet1 packet2 - object
        office1 office2 office3 - office
    )

    (:init
        (loc office1 city1)
        (loc airport1 city1)
        (loc office2 city2)
        (loc airport2 city2)
        (loc office3 city3)
        (loc airport3 city3)

        (at packet1 office1)
        (at packet2 office3)
        (at truck1 airport1)
        (at truck2 airport2)
        (at truck3 office3)
        (at airplane1 airport1)
    )

    (:goal
        (and
            (at packet1 office2)
            (at packet2 office2)
        )
    )
)

