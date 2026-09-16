# Zoo String

## Problem

Given a string that consists of some `z` characters followed by some `o` characters, determine whether it is similar to the word `zoo`. A string is valid when the number of `o` characters is exactly twice the number of `z` characters.

## Algorithm

The program scans the input string once and counts the occurrences of `z` and `o`. It then checks whether:

```text
o_count = 2 × z_count
```

If the equality holds, it prints `Yes`; otherwise, it prints `No`.

## Correctness

The problem defines similarity solely by the relationship between the two character counts. The scan counts every `z` and every `o` exactly once, so the final counts are accurate. The final comparison is therefore true exactly for the strings that satisfy the definition.

## Complexity

Let `L` be the length of the input string.

| Measure | Complexity |
|---|---:|
| Time | `O(L)` |
| Extra space | `O(1)` |

## Implementation

The solution is implemented in GNU Bash 5.0.17 in [`solution.sh`](solution.sh).

## Example

For `zzzoooooo`, there are three `z` characters and six `o` characters. Since `6 = 2 × 3`, the output is `Yes`.
