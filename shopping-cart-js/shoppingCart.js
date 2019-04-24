let apples = {
  itemName: "bag of apples",
  quantity: 8
};

let eggs = {
  itemName: "carton of eggs",
  quantity: 12
};

let tuna = {
  itemName: "cans of tuna",
  quantity: 4
};

let shoppingCart = [apples, eggs, tuna];

shoppingCart.forEach((item) => {
  console.log(`${item.itemName}: ${item.quantity}`);
});
