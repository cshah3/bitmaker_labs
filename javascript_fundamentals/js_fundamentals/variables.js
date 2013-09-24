// Exercises: Variables

// EXERCISE: The Fortune Teller

// Why pay a fortune teller when you can just program your fortune yourself?

// Store the following into variables: number of children, partner's name, geographic location, job title.
// Output your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."

var numchild = 3
var spouse = "Buzz"
var city = "Tokyo"
var job = "landscaper"

alert("You will be a " + job + " in " + city + ", and married to " + spouse + " with " + numchild + " kids.")

// EXERCISE: The Age Calculator

// Forgot how old someone is? Calculate it!

// Store the current year in a variable.
// Store their birth year in a variable.
// Calculate their 2 possible ages based on the stored values.
// Output them to the screen like so: "They are either NN or NN", substituting the values.

var currentyear = 2013
var birthyear = 1990
var lowage = currentyear - birthyear - 1
var highage = currentyear - birthyear

alert("They are either " + lowage + " or " + highage)

// EXERCISE: The Lifetime Supply Calculator

// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

// Store your current age into a variable.
// Store a maximum age into a variable.
// Store an estimated amount per day (as a number).
// Calculate how many you would eat total for the rest of your life.
// Output the result to the screen like so: "You will need NN to last you until the ripe old age of X".

var currentage = 22
var maxage = 100
var daily = 5
var total = (maxage - currentage) * 365 * daily

alert("You will need " + total + " to last you until the ripe old age of " + maxage)

// EXERCISE: The Geometrizer

// Calculate properties of a circle, using the definitions here.

// Store a radius into a variable.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Calculate the area based on the radius, and output "The area is NN".

var radius = 5
var circumference = 2 * Math.PI * radius
var area = Math.PI * radius * radius

alert("The circumference is " + circumference)
alert("The area is " + area)

// EXERCISE: The Temperature Converter

// It's hot out! Let's make a converter based on the steps here.

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Now store a fahrenheit temperature into a variable.
// Convert it to celsius and output "NN°F is NN°C."

var celsius = 23
var celsfahr = celsius * (9/5) + 32
var fahrenheit = 90
var fahrcels = (fahrenheit - 32) * (5/9)

alert(celsius + "°C is " + celsfahr + "°F")
alert(fahrenheit + "°F is " + fahrcels + "°C")