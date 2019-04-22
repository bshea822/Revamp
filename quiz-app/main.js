let teamOne = [88, 92, 68, 100];
let teamTwo = [82, 98, 94, 92];

let averageTeamScore = (team) => {
  let total = 0;
  team.forEach((explorer) => {
    total += explorer;
  });
  let average = Math.round(total / 4);

  return average;
};

let teamOneAverage = averageTeamScore(teamOne);
let teamTwoAverage = averageTeamScore(teamTwo);

let averageTotalScore = (teamOneAverage, teamTwoAverage) => {
  let total = teamOneAverage + teamTwoAverage;
  let average = Math.round(total / 2);

  return average;
};

let totalAverage = averageTotalScore(teamOneAverage, teamTwoAverage);

let howManyPass = (teamOne, teamTwo) => {
  let allExplorers = teamOne.concat(teamTwo);
  let passingExplorers = 0;
  allExplorers.forEach((explorer) => {
    if (explorer >= 70) {
      passingExplorers++;
    }
  });
  return passingExplorers;
};

let passingTotal = howManyPass(teamOne, teamTwo);

console.log('The average score for each team is as follows:');
console.log(`Team 1 - JustJavaScript: ${teamOneAverage}`);
console.log(`Team 2 - We Are Ruby: ${teamTwoAverage}`);

console.log("\nThe average of both teams together is as follows:");
console.log(totalAverage);

console.log('\nThe amount of explorers that passed the quiz are as follows:');
console.log(passingTotal);
