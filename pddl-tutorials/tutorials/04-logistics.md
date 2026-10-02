# 4. Deliver packages

**Files:** `lecture5d-pddl-examples/domain1.pddl` and `problem1.pddl`.

**Outcome:** explain a multi-vehicle transport chain and identify constraints the model does and does not express.

## Predict

Draw the three cities, each office and airport, the three trucks, the airplane, and the two packages. Use the `loc` facts to associate each location with a city.

For each package, sketch a delivery chain to `office2`. List the actions needed to transfer between a truck and the airplane. Can a truck drive directly between locations in different cities?

## Run

Solve the pair. Follow `packet1` through the plan: at a location → in a vehicle → at another location. Explain how loading, moving and unloading compose the delivery.

Write down the exact argument order of `drive`. In this domain it is **truck, origin, destination, city**. This matters when you later compare the typed versions.

<details>
<summary>Hint: transport chain</summary>

For `packet1`, truck1 must reach office1, collect the package and return to airport1. The package is unloaded before loading into the airplane. At airport2, a truck carries it to office2. Coordinate the airplane route with the pickup of packet2 from city3.

</details>

## Modify

Remove `(loc office2 city2)` from a copy of the problem. Predict the result. Inspect `drive` to explain why the destination office's city membership is needed.

Restore that fact. Consider adding a third package at office1 with a goal at office2. Is there a vehicle-capacity limit in this model? Explain from the load preconditions rather than everyday assumptions about trucks.

**Checkpoint:** submit a transport-chain diagram or list, one load/unload trace, and two sentences about the model's assumptions.

**Optional extension:** add an explicit capacity-one resource and explain which action preconditions and effects must change.

[Next: types](05-typing.md)
