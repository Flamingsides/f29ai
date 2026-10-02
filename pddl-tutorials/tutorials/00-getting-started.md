# Getting started

You need a text editor and the planner selected by your lecturer. For a browser-based starting point, [Planning.domains](https://editor.planning.domains/) supports loading local files through **File → Load**. The compatibility notes in the Canvas archive's README describe an earlier setup. The examples in these tutorials were checked with Fast Downward (see the optional command below), not with the Planning.domains editor, so if you use the editor and see a parser difference, check the tutorial's repair notes before assuming your edit is wrong.

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

Optional: with a local [Fast Downward](https://www.fast-downward.org/) installation, this command solves a pair and writes the plan to `plan.txt`:

```text
./fast-downward.py --plan-file plan.txt domain.pddl problem.pddl \
    --search "let(hff,ff(),lazy_greedy([hff],preferred=[hff]))"
```

Replace the search with `"astar(lmcut())"` for a plan with the fewest actions (`lmcut` does not support the conditional effects in Tutorial 6; use `"astar(blind())"` there). A problem with no plan ends with `Task is provably unsolvable.` and exit code 11.

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
