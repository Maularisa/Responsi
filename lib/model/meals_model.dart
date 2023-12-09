class MealsModel {
  List<Meals>? meals;

  MealsModel({this.meals});

  MealsModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = <Meals>[];
      json['meals'].forEach((v) {
        meals!.add(Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (meals != null) {
      data['meals'] = meals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meals {
  String? strMeal;
  String? strMealThumb;
  int? idMeal;

  Meals({
    this.strMeal,
    this.strMealThumb,
    this.idMeal,
  });
  Meals.fromJson (Map<String, dynamic> json) :
        strMeal = json['strMeal'] as String?,
        strMealThumb = json['strMealThumb'] as String?,
        idMeal = json ['idMeal'] as int?;
  Map<String, dynamic> toJson () => {
    'strMeal' : strMeal,
    'strMealThumb' : strMealThumb,
    'idMeal' : idMeal
  };
}


