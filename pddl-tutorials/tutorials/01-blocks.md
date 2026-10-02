# 1. Build and rearrange towers

**Files:** `lecture5b-pddl-examples/blocksworld1.pddl` and `problem1-1.pddl`. Follow-up problems: `problem1-2.pddl`, `problem1-3.pddl`.

**Outcome:** explain how actions transform a state and why some orders work and others fail.

## Predict

1. Draw the initial state and goal of `problem1-1.pddl`. All six blocks start on the table; the goal requires `a` on `b`, `b` on `c`, and so on down to `f`.
2. Read `pickup_from_table` and `putdown_on_stack`. List their preconditions, added facts and deleted facts.
3. Decide whether to build the tower from the bottom or the top. Give a reason based on `clear`, rather than physical intuition alone.

## Run and explain

Run the pair. Trace the first pickup and placement by hand. For example, from the supplied initial state:

| Action | Facts deleted | Facts added |
|---|---|---|
| `(pickup_from_table e)` | `(gripperEmpty)`, `(onTable e)` | `(holding e)` |
| `(putdown_on_stack e f)` | `(holding e)`, `(clear f)` | `(on e f)`, `(gripperEmpty)` |

All other facts persist, including `(clear e)` in this encoding. Check your planner's plan until all five required `on` facts hold.

<details>
<summary>Hint: building the tower</summary>

Build from the bottom: put `e` on `f`, then `d` on `e`, then `c` on `d`, then `b` on `c`, then `a` on `b`. Each placement needs a pickup first. This gives a ten-action plan, which is also the shortest for this problem. A planner optimised for speed rather than plan length may return a longer valid plan (a default Fast Downward run returned 18 actions).

</details>

## Modify

Save a copy of the problem and replace its goal with:

```lisp
(:goal (and (on a b) (on b a)))
```

Predict whether both facts can hold in a reachable state from the supplied initial state. Run it. Explain the result using the actions: a block can only be picked up while it is `clear`; placing one block on another deletes `clear` for the supporting block, and it becomes clear again only when the block above is picked up, which deletes that `on` fact.

<details>
<summary>Expected result</summary>

No plan exists: whichever of `(on a b)` and `(on b a)` is made true first, the supporting block stops being clear and cannot be picked up to complete the other. Fast Downward reports `Task is provably unsolvable.` (a completed search, not a timeout).

</details>

## Follow-up

- Solve `problem1-2.pddl`, which requires two smaller towers. Explain which placements can be interleaved.
- Draw the initial and final towers in `problem1-3.pddl`. Explain why temporary placements on the table help reverse the tower.

**Checkpoint:** submit one valid plan, two state transitions, and a short explanation of the circular-goal experiment. If the solver times out, retain your reasoning and report the timeout separately.

**Optional modelling challenge:** after picking up a clear block, does this model allow placing it on itself? Examine repeated parameter values and the meaning of `clear`. Discuss a repair with your lecturer.

<details>
<summary>Check your answer</summary>

Yes. `(pickup_from_table a)` followed by `(putdown_on_stack a a)` is a legal sequence that produces `(on a a)`: `a` is still `clear` while held, and nothing requires the two parameters to differ.

</details>

[Next: two grippers](02-grippers.md)
