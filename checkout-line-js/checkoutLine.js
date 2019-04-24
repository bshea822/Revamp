let eggs = {
  itemName: 'dozen eggs',
  quantity: 2,
  price: 0.99
};

let milk = {
  itemName: 'gallon of milk',
  quantity: 1,
  price: 2.99
};

let bread = {
  itemName: 'loaf of bread',
  quantity: 1,
  price: 3.50
};

let coffee = {
  itemName: 'lbs. of coffee',
  quantity: 10,
  price: 8.99
};

let shoppingCart = [eggs, milk, bread, coffee];

console.log("How much is one pound(lb.) of coffee");
console.log(`$${(coffee.price / coffee.quantity).toFixed(2)}`);
console.log("\n");
console.log("How many gallons of milk are in the shopping cart?");
console.log(`${milk.quantity} gallon of milk`);
console.log("\n")

let subTotal = 0;

shoppingCart.forEach((item) => {
  subTotal += (item.price * item.quantity);
});

console.log(`Subtotal: $${subTotal}`);

total = subTotal * 1.0625;

console.log(`Total: $${total.toFixed(2)}`);
