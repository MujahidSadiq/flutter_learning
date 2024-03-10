class CatalogModel{

  static final items = [
  Item(
    color: 'white',
    id: 1,
    name: 'a',
    desc: '1',
    price: '2',
    image: 'a',
  )
];
}


class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}


