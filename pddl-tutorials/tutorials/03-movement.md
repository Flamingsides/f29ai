# 3. Move between locations

**Files:** `originals/lecture5b-pddl-examples/blocksworld3.pddl` and `problem3-1.pddl`.

**Outcome:** distinguish static connections from changing state and explain how objects travel while being held.

## Predict

Draw the office and pub, the robot's initial location, and the blocks at each location. The goal moves `a` and `b` to the pub and `d` to the office.

1. Which action changes `robotAt`?
2. Which action changes `path`?
3. Why are `(path office pub)` and `(path pub office)` both supplied?
4. Do held blocks need their own location facts during a move?

## Run

Solve the problem. Identify the pickup, movement and putdown actions. Count the moves and draw the robot's route. Explain why a held block can be put down at the destination even though `move` does not update a location predicate for that block.

<details>
<summary>Hint: a route to try</summary>

Pick up `a` and `b` at the office, move to the pub, put down both, pick up `d`, return to the office and put down `d`. This is an eight-action candidate sequence with two moves.

</details>

## Modify

Remove only `(path pub office)` from a copy of the initial state. Keep the goal unchanged. Predict the outcome and explain which delivery loses its required return route.

Then create a new location `library` and a goal that puts `a` there. First add no paths involving `library`; then add both `(path office library)` and `(path library office)`. Explain what changes.

**Checkpoint:** submit the route, a state trace covering one held block through a move, and a reachability explanation.

**Optional extension:** add a one-gripper variant and compare the number of trips needed, checking the returned plans rather than assuming optimality.

[Next: logistics](04-logistics.md)
