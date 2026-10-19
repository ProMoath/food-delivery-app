class FoodItem {
  final String name;
  final String imgUrl;
  final double price;
  final bool isNetwork;

  FoodItem({
    required this.name,
    required this.imgUrl,
    required this.price,
    this.isNetwork=false,
  });

}

List<FoodItem> food = [

  FoodItem(
      name: 'Super Burger',
      imgUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&q=80&auto=format&fit=crop',
      price: 13.5, isNetwork: true),

  FoodItem(
      name: 'Beef Burger',
      imgUrl: 'assets/images/beef burger.png',
      price: 10.5),

  FoodItem(
      name: 'Chicken Burger',
      imgUrl: 'assets/images/chickenBurger.png',
      price: 12),

  FoodItem(
      name: 'Chess Burger',
      imgUrl: 'assets/images/cheeseBurger.png',
      price: 11.3),

  FoodItem(
      name: 'Pizza',
      imgUrl: 'assets/images/Pizza.png',
      price: 8),

  FoodItem(
      name: 'Chicken Pizza',
      imgUrl: 'assets/images/chickenPizza.png',
      price: 13),

  FoodItem(
      name: 'Chess Pizza',
      imgUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&q=80&auto=format&fit=crop',
      price: 11.5,
      isNetwork: true),

  FoodItem(
      name: 'Pasta',
      imgUrl: 'assets/images/Pasta.png',
      price: 10),
];