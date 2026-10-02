;
; Problem for domain5
;
(define (problem problem5)
    (:domain domain5)

    (:objects
        truck1
        city1 city2
        packet1 packet2 packet3 - object
    )

    (:init
        (vehicle truck1)

        (location city1)
        (location city2)

        (at packet1 city1)
        (at packet2 city1)
        (at packet3 city1)

        (at truck1 city1)
    )

    (:goal
        (and
            (at packet1 city2)
            (at packet2 city2)
            (at packet3 city2)
        )
    )
)

