let brendonShea = {
  firstName: "Brendon",
  lastName: "Shea",
  hometown: "Franklin, MA",
  occupation: "Sales Rep",
  catchPhrase: "Wubbalubbadubdub!",
  name() {
    return `${this.firstName} ${this.lastName}`;
  }
};

console.log(brendonShea);
console.log(brendonShea.name());
