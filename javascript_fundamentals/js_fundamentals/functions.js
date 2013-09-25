// Exercises: Functions

// EXERCISE: The Fortune Teller

// Why pay a fortune teller when you can just program your fortune yourself?

// Write a function named tellFortune that:
// takes 4 arguments: number of children, partner's name, geographic location, job title.
// outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
// Call that function 3 times with 3 different values for the arguments.

function tellFortune(numchild, spouse, city, job) {
	alert("You will be a " + job + " in " + city + ", and married to " + spouse + " with " + numchild + " kids.");
}

tellFortune(3, "Buzz", "Tokyo", "landscaper");
tellFortune(4, "Cindy", "NYC", "programmer");
tellFortune(2, "Jill", "London", "artist");

// EXERCISE: The Age Calculator

// Forgot how old you are? Calculate it!

// Write a function named calculateAge that:
// takes 2 arguments: birth year, current year.
// calculates the 2 possible ages based on those years.
// outputs the result to the screen like so: "You are either NN or NN"
// Call the function three times with different sets of values.
// Bonus: Figure out how to get the current year in JavaScript instead of passing it in.

function calculateAge(birthyear, currentyear) {
	var lowage = currentyear - birthyear - 1;
	var highage = currentyear - birthyear;
	alert("You are either " + lowage + " or " + highage)
}

calculateAge(prompt("What is your birth year?"), prompt("What is the current year?"))

// EXERCISE: The Lifetime Supply Calculator

// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

// Write a function named calculateSupply that:
// takes 2 arguments: age, amount per day.
// calculates the amount consumed for rest of the life (based on a constant max age).
// outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
// Call that function three times, passing in different values each time.
// Bonus: Accept floating point values for amount per day, and round the result to a round number.

function calculateSupply(currentage, daily) {
	var maxage = 100
	var total = (maxage - currentage) * 365 * daily
	alert("You will need " + total + " to last you until the ripe old age of " + maxage)
}

calculateSupply(22, 5)
calculateSupply(25, 15)
calculateSupply(30, 9)

// EXERCISE: The Geometrizer

// Create 2 functions that calculate properties of a circle, using the definitions here.

// Create a function called calcCircumference:
function calcCircumference(radius) {
	var circumference = 2 * Math.PI * radius;
	alert("The circumference is " + circumference);
}

calcCircumference(22)

// Pass the radius to the function.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Create a function called calcArea:

function calcArea(radius) {
	var area = Math.PI * radius * radius;
	alert("The area is " + area);
}

calcArea(22)

// Pass the radius to the function.
// Calculate the area based on the radius, and output "The area is NN".

// EXERCISE: The Temperature Converter

// It's hot out! Let's make a converter based on the steps here.

// Create a function called celsiusToFahrenheit:
function celsiusToFahrenheit(celsius) {
	var celsfahr = celsius * (9/5) + 32;
	alert(celsius + "°C is " + celsfahr + "°F");
}

celsiusToFahrenheit(23)

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Create a function called fahrenheitToCelsius:
function fahrenheitToCelsius(fahrenheit) {
	var fahrcels = (fahrenheit - 32) * (5/9);
	alert(fahrenheit + "°F is " + fahrcels + "°C");
}

fahrenheitToCelsius(90)

// Now store a fahrenheit temperature into a variable.
// Convert it to celsius and output "NN°F is NN°C."