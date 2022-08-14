import range { range }

fn test_range() {
	assert range(10) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	assert range(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]
	assert range(1, 10, 2) == [1, 3, 5, 7, 9]
	assert range(20, 10) == []
	assert range(2, 10, -2) == []
	assert range(10, 2, -2) == [10, 8, 6, 4]
	assert range(10, 2, -3) == [10, 7, 4]
	assert range(2.0) == [0.0, 1.0]
	assert range(2.0, 3.0) == [2.0]
	assert range(2.0, 11.0, 4.0) == [2.0, 6.0, 10.0]
	assert range(12.0, 4.0, -4.0) == [12.0, 8.0]
	assert range(11.0, 7.5, -0.5) == [11.0, 10.5, 10.0, 9.5, 9.0, 8.5, 8.0]
	assert range(11.0, 7.5, 0.5) == []
	assert range(1.25, 0.0, -.25) == [1.25, 1, 0.75, 0.5, 0.25]
	assert range(1.25, -0.25, -.25) == [1.25, 1, 0.75, 0.5, 0.25, 0]
	assert range(1.25, -0.000001, -.25) == [1.25, 1, 0.75, 0.5, 0.25, 0]

	// assert range(1, 2, 3, 4) == Please input 1 to 3 integers or floats: range(start, stop, step)
}
