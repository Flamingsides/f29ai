# 2. Give the robot two hands

**Files:** `originals/lecture5b-pddl-examples/blocksworld2.pddl` and `problem2-1.pddl`, `problem2-2.pddl`, `problem2-3.pddl`.

**Outcome:** explain how action parameters represent a resource and how goals can interact.

## Predict

Compare `blocksworld1.pddl` and `blocksworld2.pddl`. Find the changes to `gripperEmpty`, `holding` and the action parameter lists. What does `?h` represent?

For `problem2-1.pddl`, predict a plan that ends with `a` in the left gripper and `b` in the right gripper. Does having two grippers make the actions simultaneous in this classical encoding?

## Run

Solve `problem2-1.pddl`. Trace the changes to each gripper. Then run `problem2-2.pddl` and compare with the two-tower problem from Tutorial 1. Count actions and explain whether the extra gripper necessarily reduces this count. Do not assume either returned plan is optimal.

<details>
<summary>Hint: the first problem</summary>

One candidate plan is `(pickup_from_table a left)` followed by `(pickup_from_table b right)`. The actions are sequential; the resource model simply permits both hands to be occupied afterwards.

</details>

## Modify

In a copy of `problem2-1.pddl`, replace the goal with:

```lisp
(:goal (and (holding a left) (holding b left)))
```

Predict the result. Explain why the initial state and action effects permit only one held block per gripper in reachable states.

## Follow-up

In `problem2-3.pddl`, the goal combines two small towers with holding `c` and `f`. Before solving, work out what must happen to blocks `b` and `e` to free the blocks below them. Save the plan and identify the steps that enable another goal.

**Checkpoint:** explain the role of `?h`, the single-gripper capacity constraint, and one dependency in `problem2-3.pddl`.

**Optional extension:** add a `third` gripper and its initial `(gripperEmpty third)` fact. Predict which of the supplied goals might benefit and which might show no reduction in actions.

[Next: movement](03-movement.md)
