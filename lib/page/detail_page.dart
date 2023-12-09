import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final String type;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;
  final String strYoutube;
  final String strMeals;
  final String strMealsThumb;

  const DetailPage({
    super.key,
    required this.type,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
    required this.strYoutube,
    required this.strMeals,
    required this.strMealsThumb,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${type.toUpperCase()} DETAIL'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        children: [
          Image.network(strCategoryThumb),
          const SizedBox(height: 10),
          Text(
            strCategory,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 10),
          Text(strCategoryDescription),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await launchUrl(Uri.parse(strYoutube));
        },
        label: const Text('Watch Tutorial..'),
        icon: const Icon(Icons.play_arrow),
      ),
    );
  }
}
