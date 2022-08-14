module range

pub fn range<T>(best ...T) []T {
	mut begin, mut end, mut step := T(0), T(1), T(1)
	mut arr := []T{}
	match best.len {
		1 {
			end = best[0]
		}
		2 {
			begin, end = best[0], best[1]
		}
		3 {
			begin, end, step = best[0], best[1], best[2]
		}
		else {
			eprintln('Please input 1 to 3 integers or floats: range(start, stop, step)')
			exit(1)
		}
	}

	if step == T(0) {
		eprintln('range: step cannot be zero')
		exit(1)
	}
	if (begin > end && step > T(0)) || (begin < end && step < T(0)) {
		return []
	}
	if step > T(0) {
		for i := begin; i < end; i += step {
			arr << i
		}
	} else {
		for i := begin; i > end; i += step {
			arr << i
		}
	}
	return arr
}
