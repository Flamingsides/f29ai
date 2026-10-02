# F29AI: PDDL practical tutorials

Draft teaching pack based on the supplied Lecture 5b and 5d examples. The original files are preserved in `originals/`. The written exercises replace a live-coding walkthrough with a sequence students can work through at their own pace.

**Release status:** the worksheets and source files have been inspected. The examples have not been run against a current planner in preparing this draft. Complete the checks in [INSTRUCTOR-NOTES.md](INSTRUCTOR-NOTES.md) before classroom release, particularly for the typed examples.

## Start here

1. Download this repository using **Code → Download ZIP**, then extract it. Git knowledge is optional.
2. Read [Getting started](tutorials/00-getting-started.md).
3. Work through the tutorials below. Keep a copy of each changed problem and your explanations.

| Tutorial | Source examples | Suggested time | What you will learn |
|---|---|---:|---|
| [1. Build and rearrange towers](tutorials/01-blocks.md) | Set 1: `blocksworld1.pddl`, `problem1-1/2/3.pddl` | 25 min | States, goals, preconditions, add/delete effects |
| [2. Give the robot two hands](tutorials/02-grippers.md) | Set 1: `blocksworld2.pddl`, `problem2-1/2/3.pddl` | 20 min | Parameters, resource constraints, goal interaction |
| [3. Move between locations](tutorials/03-movement.md) | Set 1: `blocksworld3.pddl`, `problem3-1.pddl` | 20 min | Static connections, carrying objects, reachability |
| [4. Deliver packages](tutorials/04-logistics.md) | Set 2: `domain1.pddl`, `problem1.pddl` | 25 min | Transport chains and modelling assumptions |
| [5. Replace classification facts with types](tutorials/05-typing.md) | Set 2: `domain1/2/3.pddl`, `problem1/2/3.pddl` | 25 min | Typing, inheritance and translating an encoding |
| [6. Unload everything at once](tutorials/06-conditional-effects.md) | Set 2: `domain4/5.pddl`, `problem4/5.pddl` | 20 min | `forall`, `when` and conditional effects |

Times are estimates, excluding setup and optional challenges. Tutorials 1–3 and 4–6 form two practical blocks of roughly 65–70 minutes each; allow longer for discussion and setup. The extra problems in Tutorials 1–2 can become follow-up practice.

## How to work

Each tutorial follows **predict → run → modify → explain**. Write a prediction before asking the planner. Check the returned plan against the action definitions. Change one thing and explain the outcome. Use the expandable hints after making an attempt.

A planner can return a different valid plan from a classmate's. Compare applicability and goal satisfaction; do not require an identical action sequence. A returned plan is not automatically a shortest plan.

## Files

```text
README.md
INSTRUCTOR-NOTES.md
tutorials/
  00-getting-started.md
  01-blocks.md
  02-grippers.md
  03-movement.md
  04-logistics.md
  05-typing.md
  06-conditional-effects.md
originals/
  lecture5b-pddl-examples/
  lecture5d-pddl-examples/
```

Create your own `my-work/` folder for edited files. Leave the originals available for comparison.

## Further written tutorials

- [ICAPS Summer School: Plan Synthesis lab](https://icaps20subpages.icaps-conference.org/students/summer-school/icaps-online-summer-school-lab-plan-synthesis/): another written, task-based modelling lab.
- [Patrik Haslum: Writing Planning Domains and Problems in PDDL](https://users.cecs.anu.edu.au/~patrik/pddlman/writing.html): a reference for syntax and modelling.
- [Planning.domains editor](https://editor.planning.domains/): a browser editor that can load local PDDL files.

## Attribution

The files in `originals/` come from `Lecture5b_RP_PDDL_Examples_Set1.zip` and `Lecture5d_RP_PDDL_Examples_Set2.zip`. Set 1 source comments credit Ron Petrick. Their existing comments and README files are retained. Redistribution and licensing should be confirmed by the lecturer before a public release.
