import range { range }

fn test_range() {
	assert range(10) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
	assert range(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]
	assert range(1, 10, 2) == [1, 3, 5, 7, 9]
	assert range(20, 10) == []
	assert range(2, 10, -2) == []
	assert range(10, 2, -2) == [10, 8, 6, 4]
	assert range(10, 2, -3) == [10, 7, 4]
	assert range(11.0, 7.5, -0.5) == [11.0, 10.5, 10.0, 9.5, 9.0, 8.5, 8.0]
}
