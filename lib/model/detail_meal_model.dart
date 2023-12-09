class DetailMealsModel {
  List<DetailMeals>? detailmeals;

  DetailMealsModel({this.detailmeals});

  DetailMealsModel.fromJson(Map<String, dynamic> json) {
    if (json['detailmeals'] != null) {
      detailmeals = <DetailMeals>[];
      json['detailmeals'].forEach((v) {
        detailmeals!.add(DetailMeals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (detailmeals != null) {
      data['detailmeals'] = detailmeals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DetailMeals {
  int? idMeal;
  String? strMeal;
  String? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;


  DetailMeals({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
  });
  DetailMeals.fromJson (Map<String, dynamic> json) :
        idMeal = json ['idMeal'] as int?,
        strMeal = json['strMeal'] as String?,
        strDrinkAlternate = json['strDrinkAlternate'] as String?,
        strCategory = json['strCategory'] as String?,
        strArea = json['strArea'] as String?,
        strInstructions = json ['strIntructions'] as String?,
        strMealThumb = json['strMealThumb'] as String?;

  Map<String, dynamic> toJson () => {
    'idMeal' : idMeal,
    'strMeal' : strMeal,
    'strDrinkAlternate' : strDrinkAlternate,
    'strCategory' : strCategory,
    'strArea' : strArea,
    'strInstructions' : strInstructions,
    'strMealThumb' : strMealThumb
  };
}


