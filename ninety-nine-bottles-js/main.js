let bottleCount = 99;
let response = '';

while (bottleCount >= 0) {
  if (bottleCount > 1) {
    response = `${bottleCount} bottles of beer on the wall, ${bottleCount} bottles of beer.`;
    if (bottleCount % 10 === 9) {
      response = response.replace('.', '!');
    }
    console.log(response);

    bottleCount--;

    response = `Take one down and pass it around, ${bottleCount} bottles of beer on the wall.`;
    if (bottleCount % 10 === 9) {
      response = response.replace('.', '!');
    }
    console.log(response);
    console.log('\n');
  } else if (bottleCount === 1) {
    console.log(`${bottleCount} bottle of beer on the wall, ${bottleCount} bottle of beer.`);

    bottleCount--;

    console.log(`Take one down and pass it around, no more bottles of beer on the wall.`);
    console.log('\n');
  } else {
    console.log(`No more bottles of beer on the wall, no more bottles of beer.`);

    bottleCount--;

    console.log(`Go to the store and buy some more, 99 bottles of beer on the wall.`);
  }
}

console.log(99 % 10);
console.log(89 % 10);
