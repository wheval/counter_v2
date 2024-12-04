//Step 1

//Create a Counter module:
//- Storage:
//  - `counter`: u32

//- Constructor:
//  - args
//    - `initial_value`: u32

//Step 2

//Counter Interface:
//- `get_counter(self: @T) -> u32`
//- `increment_counter(ref self: T)`
//- `decrement_counter(ref self: T)`
//- `reset_counter(ref self: T)`

//Step 3

//Modify `increment_counter`, `decrement_counter`, to emit an event `CounterIncreased` and
//`CounterDecreased` with the new counter value.

//Step 4

//Instructions: Visit https://scarbs.xyz/
//scarb add openzeppelin_access@0.19.0
//Add OpenZeppelin Ownable Component to the Counter module. The owner should be able to call the
//`reset_counter` function.
