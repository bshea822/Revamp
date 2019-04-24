let crewMembers = ["River", "Zoe", "Wash", "Mal", "Book", "Jayne"];

let quotes = [
  [
    "No power in the Verse can stop me.",
    "I can kill you with my brain.",
    "My food is problematic.",
    "This whole conclusion is fallacious.",
    "Now they see the sky and they remember what they are."
  ],
  [
    "Sorry, sir. Didn't mean to enjoy the moment.",
    "Is there any way I'm gonna get out of this with honor and dignity?",
    "If it moves, shoot it.",
    "I ain't so afraid of losing something that I ain't gonna try to have it.",
    "Big damn heroes.",
    "We crashing again?"
  ],
  [
    "I am a leaf on the wind. Watch how I soar.",
    "Oh God, oh God, we're all going to die?"
  ],
  [
    "Did something just fly off my gorram ship?",
    "We've done the impossible, and that makes us mighty.",
    "We are just too pretty for God to let us die.",
    "Morbid and creepifying, I got no problem with, long as she does it quiet-like.",
    "I swear, by my pretty floral bonnet, I will end you."
  ],
  [
    "I don't care what you believe in, just believe in it.",
    "A government is a body of people, usually, notably ungoverned.",
    "You don't fix faith, River. It fixes you.",
    "If you can't do something smart, do something right."
  ],
  [
    "We're gonna explode? I don't wanna explode!",
    "Let's be bad guys.",
    "You don't pay me to talk pretty.",
    "You guys had a riot? On account o' me? My very own riot?",
    "Aw, hell, if I had wanted schooling, I would have gone to school.",
    "Not as deceiving as a low down, dirty... deceiver."
  ]
]

// Implement these functions to answer the questions below
let numberOfQuotes = (name) => {
  let explorerIndex = crewMembers.indexOf(name);
  let explorerQuotes = quotes[explorerIndex].length;
  return explorerQuotes;
};

let whoSaidThis = (quote) => {
  let indexCount = 0;
  let quoteOwner = '';
  quotes.forEach((crewMemberQuotes) => {
    if (crewMemberQuotes.indexOf(quote) != -1) {
      quoteOwner = crewMembers[indexCount];
    }
    indexCount++;
  });
  return quoteOwner;
};

let longestQuote = (name) => {
  let explorerIndex = crewMembers.indexOf(name);
  let explorerQuotes = quotes[explorerIndex];
  let longQuote = '';
  explorerQuotes.forEach((quote) => {
    if (quote.length > longQuote.length) {
      longQuote = quote;
    }
  });

  return longQuote;
};

let averageQuoteLength = (name) => {
  let explorerIndex = crewMembers.indexOf(name);
  let explorerQuotes = quotes[explorerIndex];
  let totalLengthQuotes = 0;
  let quotesCount = 0;
  explorerQuotes.forEach((quote) => {
    totalLengthQuotes += quote.length;
    quotesCount++;
  });
  let quoteAverage = Math.round(totalLengthQuotes / quotesCount);

  return quoteAverage;
};
// 1. How many quotes does Mal have? Write a function called `numberOfQuotes` that takes one argument, the name of a character. This function should return the number of quotes that character has. If your function is set up properly you should be able to call `numberOfQuotes("Mal")` and `numberOfQuotes("Zoe")`, and get the Expected Output below:

// Mal has 5 quotes.
console.log(`Mal has ${numberOfQuotes("Mal")} quotes.`);

// Zoe has 6 quotes.
console.log(`Zoe has ${numberOfQuotes("Zoe")} quotes.`);

// 2. Which character said `"I am a leaf on the wind. Watch how I soar."`? Write a function called `whoSaidThis` that takes one argument, the quote. This function should return the name of the person who said the quote. If your function is set up properly you should be able to call `whoSaidThis("I am a leaf on the wind. Watch how I soar.")` and `whoSaidThis("Let's be bad guys.")` and get the Expected Output below:

// Wash says: I am a leaf on the wind. Watch how I soar.
let washQuote = "I am a leaf on the wind. Watch how I soar.";
console.log(`${whoSaidThis(washQuote)} says: ${washQuote}`);

// Jayne says: Let's be bad guys.
let jayneQuote = "Let's be bad guys.";
console.log(`${whoSaidThis(jayneQuote)} says: ${jayneQuote}`);

// 3. What is River's longest quote? Write a function called `longestQuote` that takes one argument, the name of the character. This function should return the character's longest quote. If your function is set up properly you should be able to call `longestQuote("River")` and `longestQuote("Book")` and get the Expected Output below:

// River's longest quote is: Now they see the sky and they remember what they are.
console.log(`Rivers's longest quote is: ${longestQuote("River")}`);

// Book's longest quote is:  A government is a body of people, usually, notably ungoverned.
console.log(`Book's longest quote is: ${longestQuote("Book")}`);


// 4. What is Zoe's average quote length? Write a function called `averageQuoteLength` that takes one argument, the name of the character. This function should return the average length of all their quotes. If your function is set up properly you should be able to call `averageQuoteLength("Zoe")` and get the Expected Output below:

// The average length of Zoe's quotes is: 40.
console.log(`The average length of Zoe's quotes is: ${averageQuoteLength("Zoe")}`);
