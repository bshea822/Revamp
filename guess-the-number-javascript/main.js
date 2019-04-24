let randNumber = Math.ceil((Math.random() * 10));
let userName = prompt('What is your name?');
let userNumber = prompt("Enter a number between 1 and 10, if you choose the same number as the computer, you win!");

if (randNumber == userNumber) {
  alert(`${userName} chose ${userNumber}.\nComputer chose ${randNumber}.\nCongratulations ${userName}, you win!`);
} else {
  alert(`${userName} chose ${userNumber}.\nComputer chose ${randNumber}.\nSorry ${userName}, you lost.`);
}
