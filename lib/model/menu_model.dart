class MenuItemModel {
  final String img;
  final String strCategory;
  final String strCategoryDescription;

  MenuItemModel({
    required this.img,
    required this.strCategory,
    required this.strCategoryDescription,
  });
}

List<MenuItemModel> menuItems = [
  MenuItemModel(
    img: 'assets/beef.png',
    strCategory: 'Beef',
    strCategoryDescription: 'Beef is the culinary name for meat from cattle, particularly skeletal muscle. Humans have been eating beef since prehistoric times.[1] Beef is a source of high-quality protein and essential nutrients.[2]',
  ),
  MenuItemModel(
    img: 'assets/chicken.png',
    strCategory: 'Chicken',
    strCategoryDescription: 'Chicken is a type of domesticated fowl, a subspecies of the red junglefowl. It is one of the most common and widespread domestic animals, with a total population of more than 19 billion as of 2011.[1] Humans commonly keep chickens as a source of food (consuming both their meat and eggs) and, more rarely, as pets.',
  ),
  MenuItemModel(
    img: 'assets/dessert.png',
    strCategory: 'Dessert',
    strCategoryDescription: 'Dessert is a course that concludes a meal. The course usually consists of sweet foods, such as confections dishes or fruit, and possibly a beverage such as dessert wine or liqueur, however in the United States it may include coffee, cheeses, nuts, or other savory items regarded as a separate course elsewhere. In some parts of the world, such as much of central and western Africa, and most parts of China, there is no tradition of a dessert course to conclude a meal.\r\n\r\nThe term dessert can apply to many confections, such as biscuits, cakes, cookies, custards, gelatins, ice creams, pastries, pies, puddings, and sweet soups, and tarts. Fruit is also commonly found in dessert courses because of its naturally occurring sweetness. Some cultures sweeten foods that are more commonly savory to create desserts.',
  ),
];

