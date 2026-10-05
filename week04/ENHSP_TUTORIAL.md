# Running PDDL locally with ENHSP

Use this if <https://editor.planning.domains/> is down or slow (it can fail under heavy use).

## 1. Get the planner
Download [`enhsp-20.jar`](https://github.com/valvestate/f29ai/raw/main/week04/enhsp-20.jar)
from this folder (or from the Canvas page
[Week 4: PDDL examples and planning resources](https://canvas.hw.ac.uk/courses/35362/pages/week-4-pddl-examples-and-planning-resources))
and put it in the same folder as the lab PDDL files. GRID Lab machines already have Java.

Check Java works:

```sh
java -version
```

(On your own machine, install any JDK 11+.)

## 2. Run a domain/problem pair
```sh
java -jar enhsp-20.jar -o domain1.pddl -f problem1.pddl
```
`-o` is the domain file, `-f` is the problem file (domain first).

## 3. Read the output
A solved problem prints `Problem Solved` and a numbered plan, one action per line:

```
0.0: (pickup_from_table a)
1.0: (putdown_on_stack a b)
...
Plan-Length:14
```

## 4. Common messages
| Message | Usual meaning |
|---|---|
| `Problem Detected as Unsolvable` | The goal cannot be reached from the initial state, e.g. missing `handEmpty` facts in Q2(a). Representation error, not search failure. |
| `Some Syntax Error` and `line N:M no viable alternative` | PDDL syntax problem at that line, e.g. an unfinished `:effect` or unbalanced bracket. |
| Java exception such as `BuildPredicate: Variable ?x null ...` | Often an ill-formed or untyped quantifier, e.g. the Q2(b) goal. Inspect the goal. |

## 5. Tips
- Keep files in one folder so relative paths work.
- Plans may differ from the sample answers; any valid plan is acceptable.
- Add `-planner opt-hlmax` for an optimal plan (may be slower).

## Licence
ENHSP is by Enrico Scala and collaborators, released under the GNU GPL v3 or later.
Source and information: <https://gitlab.com/enricos83/ENHSP-Public> and <https://sites.google.com/view/enhsp/>.
This copy of the jar is redistributed unmodified for teaching.
