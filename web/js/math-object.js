
function myRandomNumber(){
// Create a variable to hold a random number between 1 and 10
var randomNum = Math.floor(Math.random() * 899999 + 100000);

// Create a variable called el to hold the element whose id attribute has a value of info
var el = document.getElementById('randomNumber');
// Write the number into that element
el.innerHTML = '<h3>' + randomNum + '</h3>';

}
