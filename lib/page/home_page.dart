import 'package:flutter/material.dart';
import 'package:responsi_mobile/model/menu_model.dart';
import 'package:responsi_mobile/page/list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown,
        title: const Text('Meal Categories'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        itemBuilder: (context, index) {
          var item = menuItems[index];
          return _buildMenuItem(item);
        },
      ),
    );
  }

  Widget _buildMenuItem(MenuItemModel item) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ListPage(strCategory: item.strCategory),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 200,
                  child: Image.asset(item.img),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item.strCategory.toUpperCase(),
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(item.strCategoryDescription),
            ],
          ),
        ),
      ),
    );
  }
}
