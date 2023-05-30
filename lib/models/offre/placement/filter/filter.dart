class Item {
  final String name;
  final String category;

  Item({required this.name, required this.category});
}

List<Item> itemList = [
  Item(name: 'Item 1', category: 'Category A'),
  Item(name: 'Item 2', category: 'Category B'),
  Item(name: 'Item 3', category: 'Category A'),
  Item(name: 'Item 4', category: 'Category C'),
  Item(name: 'Item 5', category: 'Category B'),
];