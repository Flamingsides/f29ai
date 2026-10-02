;
; Problem for domain4
;
(define (problem problem4)
    (:domain domain4)

    (:objects
        truck1
        packet1 packet2 packet3
        city1 city2
    )

    (:init
        (object packet1)
        (object packet2)
        (object packet3)

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

