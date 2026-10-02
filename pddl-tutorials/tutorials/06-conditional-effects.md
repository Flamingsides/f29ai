# 6. Unload everything at once

**Files:** `lecture5d-pddl-examples/domain4.pddl`, `problem4.pddl`, `domain5.pddl`, `problem5.pddl`.

**Outcome:** explain how `forall` and `when` combine, and why an applicable action may have no effect.

**Preparation:** use a planner configuration checked for quantified and conditional effects. The original README records historical differences between these examples. For a typed comparison, prepare version 5 as described below.

## Predict

Read `unload_all` in version 4. Translate it into plain English. Answer:

1. What makes the action applicable?
2. Does every object get unloaded, or only objects satisfying a condition?
3. What happens if the vehicle is empty?
4. In which state is the `when` condition evaluated?

## Run

Solve version 4. A five-action candidate is to load the three packets at city1, drive to city2 and execute `unload_all` once. Trace the facts added and deleted for each packet by that final action.

<details>
<summary>Hint: empty versus loaded</summary>

The precondition checks the vehicle, location and vehicle's position. For each object, the effect fires only if `(in ?o ?v)` is true in the state before the action. An empty vehicle can satisfy the precondition while unloading no objects: `(unload_all truck1 city1)` is applicable in the initial state and changes nothing.

</details>

## Modify

In a copy of version 4, add `packet4` to `:objects`, and add `(object packet4)` and `(at packet4 city1)` to the initial state. Do not add it to the goal.

Compare two manually constructed plans: one leaves packet4 at city1; the other loads it along with the three required packets. In the second plan, predict whether `unload_all` also unloads packet4 despite its absence from the goal. Explain why goal membership is not the effect's condition. (Both plans are valid; in the second, `unload_all` adds `(at packet4 city2)` along with the other three packets.)

## Compare the typed version

Version 5 uses `forall (?o - object)`, but `object` is PDDL's universal root type. For a clear package-specific comparison, make these changes on copies:

- Rename the declared type `object` to `package`.
- Change the `load_object` package parameter to `?o - package`.
- Change the quantified variable to `forall (?o - package)`.
- Change the problem's object list to explicitly separate the root-typed objects:

```lisp
(:objects
    truck1 city1 city2 - object
    packet1 packet2 packet3 - package
)
```

Move `:types` before `:predicates` in the copied domain. Run the copied pair and compare the effects with version 4; the same five-action plan results. The logical distinction is that the typed quantifier ranges over packages; any historical parser workaround is a separate implementation issue.

**Checkpoint:** explain `forall` versus `when`, the empty-vehicle case, and why packet4 is unloaded when loaded even without being named in the goal.

**Optional extension:** compare repeated one-package unloads with `unload_all`. Explain why fewer actions can result from a more powerful action model, without implying a physically faster unloading operation.
