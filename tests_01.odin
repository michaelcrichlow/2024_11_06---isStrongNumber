package test

import "core:fmt"
import "core:math"
print :: fmt.println

main :: proc() {

	print(isStrongNumber(145))
	// OUTPUT:
	// true
}


get_factorial :: proc(n: int) -> int {
	total := 1
	for val in 1 ..< n + 1 {
		total *= val
	}
	return total
}


isStrongNumber :: proc(n: int) -> bool {
	_n := n
	div, mod := 1_000, 0
	total := 0

	for div > 0 {
		div, mod = math.divmod(_n, 10)
		factorial_of_mod := get_factorial(mod)
		total += factorial_of_mod
		_n = div
	}

	return total == n
}
