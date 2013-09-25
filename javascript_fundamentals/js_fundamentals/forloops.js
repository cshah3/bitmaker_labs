// Exercises: for loops

// EXERCISE: The even/odd reporter

// Write a for loop that will iterate from 0 to 20. For each iteration, it will check if the current number is even or odd, and report that to the screen (e.g. "2 is even").

for (var i = 1; i < 21; i++) {
	if (i%2) {
		console.log(i + " is odd.")
	}
	else {
		console.log(i + " is even.")
	}
}

// EXERCISE: Multiplication Tables

// Write a for loop that will iterate from 0 to 10. For each iteration of the for loop, it will multiply the number by 9 and log the result (e.g. "2 * 9 = 18").

for (var i = 0; i < 11; i++) {
	var multiplier = 9
	console.log(i + " * " + multiplier + " = " + (i * multiplier))
}

// Bonus: Use a nested for loop to show the tables for every multiplier from 1 to 10 (100 results total).

// EXERCISE: The Grade Assigner

// Check the results of assignGrade function from the conditionals exercise for every value from 60 to 100 - so your log should show "For 89, you got a B. For 90, you got an A.", etc.

for (var score = 60; score < 101; score++) {
	if (score >= 80) {
		console.log("For " + score + ", you got an A.")
	}
	else if (score >= 70) {
		console.log("For " + score + ", you got a B.")
	}
	else {
		console.log("For " + score + ", you got a C.")
	}
}