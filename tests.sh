#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

run_case() {
    local input="$1"
    local expected="$2"
    local actual
    actual=$(printf '%s\n' "$input" | "$root/solution.sh")
    [[ "$actual" == "$expected" ]] || {
        printf 'FAIL\nInput: %s\nExpected: %s\nActual: %s\n' "$input" "$expected" "$actual" >&2
        exit 1
    }
}

run_case 'zoo' 'Yes'
run_case 'zzzoooooo' 'Yes'
run_case 'zzooo' 'No'
run_case 'z' 'No'
run_case 'zzzzoooooooo' 'Yes'

printf 'All Zoo String tests passed.\n'
