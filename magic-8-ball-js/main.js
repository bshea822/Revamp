let responses = [
  "It is certain",
  "It is decidedly so",
  "Without a doubt",
  "Yes, definitely",
  "You may rely on it",
  "As I see it, yes",
  "Most likely",
  "Outlook good",
  "Yes",
  "Signs point to yes",
  "Reply hazy try again",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don't count on it",
  "My reply is no",
  "My sources say no",
  "Outlook not so good",
  "Very doubtful"
];
// your code, here
console.log('Confirm the correct number of responses have been stored by printing the number to the console (`20`)');
console.log(responses.length);

console.log('Ask the user what their question is, and store it as a variable called `question`');

let question = prompt('What is your question?');

console.log('Output a random response to the user\'s question');
console.log(responses[Math.floor(Math.random() * responses.length)]);

console.log('Output the number of responses that include the word "yes"');

let responseIncludesYes = responses.filter(response => response.toLowerCase().includes('yes'));

responseIncludesYes.forEach((response) => {
  console.log(response);
});

console.log('Output the number of responses that include the words "no" or "not"');

responses.forEach((response) => {
  if (response.toLowerCase().includes('no') || response.toLowerCase().includes('not')) {
    console.log(response);
  }
});

console.log('Output the alphabetized list of responses');

alphabetizedResponses = responses.sort();

alphabetizedResponses.forEach((response) => {
  console.log(response);
});

console.log('Output the first and last responses from the alphabetized list');

console.log(alphabetizedResponses[0]);
console.log(alphabetizedResponses[alphabetizedResponses.length - 1]);

console.log('Delete two of the negative responses');

responses.splice(responses.indexOf('Very doubtful'), 1);
responses.splice(responses.indexOf('Outlook not so good'), 1);

responses.forEach((response) => {
  console.log(response);
});

console.log('Reassign \'Ask again later\' to the beginning of the array');

responses.unshift('Ask again later');
responses.splice(2, 1);

responses.forEach((response) => {
  console.log(response);
});

console.log('Add 1 response of your choosing to the current list');

responses.push('Very doubtful');

responses.forEach((response) => {
  console.log(response);
});

console.log('Concat an **array** of 3 additional responses to the current list');

let moreResponses = ['No way!', 'Outlook not so good', 'Good luck chump'];

let newResponses = responses.concat(moreResponses);

newResponses.forEach((response) => {
  console.log(response);
});

console.log('Confirm the correct number of responses have been removed and added by printing the number of responses to the console (`22`)');

console.log(newResponses.length);
