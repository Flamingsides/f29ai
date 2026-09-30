; Activity Sheet 4 - Domain file for Question 2
; :adl permits the supplied quantified-goal debugging exercise to parse.
; Convention: a held block is not clear; putting it down makes it clear again.
(define (domain domain2)
  (:requirements :adl)
  (:predicates (handEmpty ?h) (holding ?x ?h) (onTable ?x) (on ?x ?y) (clear ?x))
  (:action pickup_from_table
    :parameters (?x ?h)
    :precondition (and (handEmpty ?h) (onTable ?x) (clear ?x))
    :effect (and (not (handEmpty ?h)) (not (onTable ?x)) (not (clear ?x)) (holding ?x ?h)))
  (:action putdown_on_table
    :parameters (?x ?h)
    :precondition (holding ?x ?h)
    :effect (and (not (holding ?x ?h)) (onTable ?x) (clear ?x) (handEmpty ?h)))
  (:action pickup_from_stack
    :parameters (?x ?y ?h)
    :precondition (and (on ?x ?y) (clear ?x) (handEmpty ?h))
    :effect (and (not (on ?x ?y)) (not (handEmpty ?h)) (not (clear ?x)) (holding ?x ?h) (clear ?y)))
  (:action putdown_on_stack
    :parameters (?x ?y ?h)
    :precondition (and (holding ?x ?h) (clear ?y))
    :effect (and (not (holding ?x ?h)) (not (clear ?y)) (on ?x ?y) (clear ?x) (handEmpty ?h))))
