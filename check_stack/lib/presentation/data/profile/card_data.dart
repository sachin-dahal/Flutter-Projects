class Item {
  final String name;
  final String imgUrl;

  Item({
    this.name,
    this.imgUrl,
  });
}

List<Item> dropdownItems = [
  Item(name: "Card", imgUrl: "images/card.png"),
  Item(name: "PayPal", imgUrl: "images/paypal.png"),
  Item(name: "", imgUrl: "images/amazon.png"),
];
