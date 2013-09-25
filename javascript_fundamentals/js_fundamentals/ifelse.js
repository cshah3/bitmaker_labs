// Exercises: if/else statements

// EXERCISE: What number's bigger?

// Write a function named greaterNum that:
// takes 2 arguments, both numbers.
// returns whichever number is the greater (higher) number.
// Call that function 2 times with different number pairs, and log the output to make sure it works (e.g. "The greater number of 5 and 10 is 10.").

function greaterNum(num1, num2) {
	if (num1 > num2) {
		console.log("The greater number of " + num1 + " and " + num2 + " is " + num1 + ".")
	} else {
		console.log("The greater number of " + num1 + " and " + num2 + " is " + num2 + ".")
	}
}

greaterNum(5, 10)
greaterNum(15, 10)

// EXERCISE: The World Translator

// Write a function named helloWorld that:
// takes 1 argument, a language code (e.g. "es", "de", "en")
// returns "Hello, World" for the given language, for atleast 3 languages. It should default to returning English.
// Call that function for each of the supported languages and log the result to make sure it works.

function helloWorld(lang) {
	if (lang === "fr") {
		console.log("Bonjour!")
	}
	else if (lang === "sp") {
		console.log("Hola!")
	}
	else {
		console.log("Hello!")
	}
}

helloWorld("fr")
helloWorld("sp")
helloWorld("en")

// EXERCISE: The Grade Assigner

// Write a function named assignGrade that:
// takes 1 argument, a number score.
// returns a grade for the score, either "A", "B", "C", "D", or "F".
// Call that function for a few different scores and log the result to make sure it works.

function assignGrade(score) {
	if (score >= 80) {
		console.log("A")
	}
	else if (score >= 70) {
		console.log("B")
	}
	else if (score >= 60) {
		console.log("C")
	}
	else if (score >= 50) {
		console.log("D")
	}
	else {
		console.log("F")
	}
}

assignGrade(87)
assignGrade(77)
assignGrade(67)
assignGrade(57)
assignGrade(47)

// EXERCISE: The Pluralizer

// Write a function named pluralize that:
// takes 2 arguments, a noun and a number.
// returns the number and pluralized form, like "5 cats" or "1 dog".
// Call that function for a few different scores and log the result to make sure it works.
// Bonus: Make it handle a few collective nouns like "sheep" and "geese".

function pluralize(noun, num) {
	console.log(num + " " + noun)
}

pluralize("cats", 5)
pluralize("dog", 1)