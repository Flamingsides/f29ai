# Getting started

You need a text editor and the planner selected by your lecturer. For a browser-based starting point, [Planning.domains](https://editor.planning.domains/) supports loading local files through **File → Load**. Planner configuration and feature support must be confirmed for this course; the compatibility statements in the original archive describe an earlier setup.

## Your first pair of files

Open these from the extracted Canvas folder `lecture5b-pddl-examples/` (Set 1):

- `blocksworld1.pddl`: the **domain**, defining predicates and actions.
- `problem1-1.pddl`: the **problem**, defining objects, the initial state and the goal.

Check that the problem's `(:domain blocksworld-1)` matches the domain declaration. The filename itself does not establish the match.

Find these sections before solving:

| Section | Question it answers |
|---|---|
| `:predicates` | What facts can describe the world? |
| `:action` | What can change, and under which conditions? |
| `:objects` | Which objects exist in this instance? |
| `:init` | Which facts are initially true? |
| `:goal` | Which conditions must hold at the end? |

In these classical examples, a fact absent from the initial state is false. Actions change facts through their effects; other facts persist. A goal describes a final condition, rather than a prescribed sequence of actions.

## Running and checking

Use your configured planner's solve command and select the matching domain/problem pair. Save the returned plan or copy its actions into your notes. For each action, check its preconditions in the current state, remove its delete effects, and add its positive effects. Check all goal conditions in the final state.

If the planner reports a problem, distinguish a parsing error, an unsupported feature, a timeout/service error, and a completed search that reports no plan. A timeout does not prove the problem is unsolvable.

## Keep a small record

For each exercise, record:

```text
Domain/problem:
Prediction:
Plan or error:
One state transition:
Change made:
Explanation of the result:
```

Start with [Tutorial 1](01-blocks.md).
