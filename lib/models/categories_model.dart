class CategoriesModel {
  String name;
  String iconPath;

  CategoriesModel({
    required this.name,
    required this.iconPath,
  });

  static List<CategoriesModel> getCategories() {
    List<CategoriesModel> categories = [];
    categories.add(CategoriesModel(
      name: 'Pancake de moras',
      iconPath: 'assets/icons/blueberry-pancake.svg',
    ));

    categories.add(CategoriesModel(
      name: 'Pastel de Canai',
      iconPath: 'assets/icons/canai-bread.svg',
    ));

    categories.add(CategoriesModel(
      name: 'Pancake de miel',
      iconPath: 'assets/icons/honey-pancakes.svg',
    ));

    categories.add(CategoriesModel(
      name: 'Snacks de naranja',
      iconPath: 'assets/icons/orange-snacks.svg',
    ));

    categories.add(CategoriesModel(
      name: 'Panqueques',
      iconPath: 'assets/icons/pancakes.svg',
    ));

    categories.add(CategoriesModel(
      name: 'Pie',
      iconPath: 'assets/icons/pie.svg',
    ));

    categories.add(CategoriesModel(
      name: 'Salmon nigiri',
      iconPath: 'assets/icons/salmon-nigiri.svg',
    ));

    return categories;
  }
}
