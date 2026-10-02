# 5. Replace classification facts with types

**Files:** `lecture5d-pddl-examples/domain1.pddl`, `domain2.pddl`, `domain3.pddl` and their matching problems.

**Outcome:** distinguish static classification predicates from type declarations and understand inheritance.

**Preparation:** these legacy typed examples need review before use. Work on copies and apply the edits below, or use the lecturer's checked copies. Keep the Canvas originals unchanged for comparison. This tutorial includes a guided repair so that a parser difference is not mistaken for a conceptual feature of typing.

## Predict and compare

Build a small comparison table for the three domains:

| Feature | Version 1 | Version 2 | Version 3 |
|---|---|---|---|
| How is a truck identified? | | | |
| How is a vehicle identified? | | | |
| How is an airport identified? | | | |
| Which classification facts remain in `:init`? | | | |

Inspect `drive` carefully: version 1 takes **truck, origin, destination, city**; versions 2 and 3 take **truck, city, origin, destination**. A plan cannot be copied between them without checking arguments.

## Prepare a clear typed encoding

PDDL's built-in `object` is the general root type. Use `package` for a specific parcel type.

For a copy of version 2:

- Change the standalone type name `object` in `:types` to `package`.
- Change `?o - object` to `?o - package` in `load` and `unload`.
- Change `packet1 packet2 - object` to `packet1 packet2 - package` in the problem.
- Keep the `vehicle` and `location` classification facts: this intermediate version still checks them.

For a copy of version 3, replace the type declaration with:

```lisp
(:types
    package city vehicle location - object
    truck airplane - vehicle
    office airport - location
)
```

Change the package parameters and packet declarations to `package` as above. Each `- TYPE` applies to the preceding group of names, across line breaks. Explicitly declaring the root groups prevents unintended inheritance.

Predict why a truck can instantiate `?v - vehicle` and an airport can instantiate `?l - location`.

## Run

Run the repaired version 2 and version 3 pairs with the lecturer's supported planner. Check that both can achieve the same delivery goals as version 1. Compare a grounded `load` action: where has each classification check moved?

If a parser reports an error, retain its exact text and distinguish it from a search result. A change in typing syntax is not evidence that the delivery task itself is impossible.

<details>
<summary>Hint: inheritance</summary>

In the repaired hierarchy, `truck` and `airplane` are subtypes of `vehicle`, and `office` and `airport` are subtypes of `location`. Both remain descendants of the universal root `object`. `package` is a separate branch, so a truck cannot serve as the package parameter of `load`.

</details>

## Modify and explain

In a copy of the hierarchical problem, declare `packet1 - truck` rather than `packet1 - package`, leaving its goal unchanged. Explain why it no longer matches the package parameter of `load` or `unload`. Distinguish this lost action applicability from the false claim that predicates have been fully typed: the supplied predicate declarations remain untyped.

**Checkpoint:** submit the comparison table and explain one inherited type relationship and one action binding excluded by typing.

**Optional extension:** type the predicate signatures too, adding an `entity` supertype for packages and vehicles where necessary. Discuss why type-checking a predicate and constraining an action parameter are related but distinct choices.

[Next: conditional effects](06-conditional-effects.md)
