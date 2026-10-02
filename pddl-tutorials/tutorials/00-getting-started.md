# Getting started

Use [Planning.domains](https://editor.planning.domains/) to edit PDDL files and run the planner in your browser. Download and extract the examples from [Canvas](https://canvas.hw.ac.uk/courses/35362/pages/week-4-pddl-examples-and-planning-resources), then use **File → Load** to open the matching domain and problem files specified in each tutorial.

Alternatively, use **VS Code with the [PDDL extension](https://github.com/jan-dolejsi/vscode-pddl)**. The extension provides syntax highlighting and planner integration; configure it to use a planner such as **Fast Downward**.

You do not need Git or a local planner to begin. If you see a parser difference, check the tutorial's repair notes before assuming your edit is wrong.

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

Use your chosen planner's solve command (the browser editor, the VS Code extension or a local planner) and select the matching domain/problem pair. Save the returned plan or copy its actions into your notes. For each action, check its preconditions in the current state, remove its delete effects, and add its positive effects. Check all goal conditions in the final state.

If the planner reports a problem, distinguish a parsing error, an unsupported feature, a timeout/service error, and a completed search that reports no plan. A timeout does not prove the problem is unsolvable.

## Optional: a local planner (Fast Downward)

If you have a local [Fast Downward](https://www.fast-downward.org/) installation, this command solves a pair and writes the plan to `plan.txt`:

```text
./fast-downward.py --plan-file plan.txt domain.pddl problem.pddl \
    --search "let(hff,ff(),lazy_greedy([hff],preferred=[hff]))"
```

Replace the search with `"astar(lmcut())"` for a plan with the fewest actions (`lmcut` does not support the conditional effects in Tutorial 6; use `"astar(blind())"` there). A problem with no plan ends with `Task is provably unsolvable.` and exit code 11.

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
