import 'package:flutter/material.dart';
import 'package:responsi_mobile/api/api_data_source.dart';
import 'package:responsi_mobile/model/categories_model.dart';
import 'package:responsi_mobile/model/detail_meal_model.dart';
import 'package:responsi_mobile/model/meals_model.dart';
import 'package:responsi_mobile/page/detail_page.dart';

class ListPage extends StatefulWidget {
  final String strCategory;

  const ListPage({super.key, required this.strCategory});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    var endpoint = widget.strCategory == 'categories' ? 'articles' : widget.strCategory;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${widget.strCategory.toUpperCase()} LIST'),
      ),
      body: FutureBuilder(
        future: ApiDataSource.instance.loadList(endpoint),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (widget.strCategory == 'categories') {
              CategoriesModel categories = CategoriesModel.fromJson(snapshot.data!);
              return _buildCategories(categories);
            } else if (widget.strCategory == 'meals') {
              MealsModel meals = MealsModel.fromJson(snapshot.data!);
              return _buildMeals(meals);
            } else {
              DetailMealsModel detailmeals = DetailMealsModel.fromJson(snapshot.data!);
              return _buildDetailMeals(detailmeals);
            }
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Something Went Wrong'),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _buildCategories(CategoriesModel categories) {
    return ListView.builder(
      itemCount: categories.categories!.length,
      itemBuilder: (context, index) {
        var item = categories.categories![index];
        return _buildItemList(
            item.strCategoryThumb!,
            item.strCategory!,
        );
      },
    );
  }

  Widget _buildMeals(MealsModel meals) {
    return ListView.builder(
      itemCount: meals.meals!.length,
      itemBuilder: (context, index) {
        var item = meals.meals![index];
        return _buildItemList(
          item.strMealThumb!,
          item.strMeal!,
        );
      },
    );
  }

  Widget _buildDetailMeals(DetailMealsModel detailmeals) {
    return ListView.builder(
      itemCount: detailmeals.detailmeals!.length,
      itemBuilder: (context, index) {
        var item = detailmeals.detailmeals![index];
        return _buildItemList(
            item.strMealThumb!,
            item.strMeal!,
        );
        },
    );
  }

  Widget _buildItemList(
      String strCategory, String strCategoryThumb, String strMeals, String strMealThumb) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailPage(
              type: widget.strCategory,
              strCategory: strCategory,
              strCategoryThumb: strCategoryThumb,
              strMealsThumb: '',
              strCategoryDescription: '',
              strMeals: '',
              strYoutube: '',
            ),
          ),
        );
      },
      child: Card(
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                strMealThumb,
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(strCategory),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
