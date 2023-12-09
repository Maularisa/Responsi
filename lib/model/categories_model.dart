class CategoriesModel {
  List<Categories>? categories;

  CategoriesModel({this.categories});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  int? idCategory;
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;

  Categories({
    this.idCategory,
    this.strCategory,
    this.strCategoryThumb,
    this.strCategoryDescription,
});
  Categories.fromJson (Map<String, dynamic> json) :
        idCategory = json['idCategory'] as int?,
        strCategory = json['strCategory'] as String?,
        strCategoryThumb = json['strCategoryThumb'] as String?,
        strCategoryDescription = json ['strCategoryDescription'] as String?;
  Map<String, dynamic> toJson () => {
    'idCategory' : idCategory,
    'strCategory' : strCategory,
    'strCategoryThumb' : strCategoryThumb,
    'strCategoryDescription' : strCategoryDescription
  };
}


