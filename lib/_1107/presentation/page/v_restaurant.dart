import 'package:flutter/material.dart';
import 'package:pro1022/_1107/data/data/database_helper.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  final DatabaseHelper dbHelper = DatabaseHelper.instance;

  List<Map<String, dynamic>> restaurants = [];

  void insertSampleData() async {
    await dbHelper.insertSampleData();
    loadData();
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(content: Text('Sample data inserted')),
    // );
  }

  void loadData() async {
    final List<Map<String, dynamic>> data =
        await dbHelper.fetchAllRestaurants();
    setState(() {
      restaurants = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: const Text("Restaurant"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ElevatedButton(
                //   onPressed: () => dbHelper.deleteDatabase(),
                //   child: const Text("deletDB"),
                // ),
                ElevatedButton(
                  onPressed: () => insertSampleData(),
                  child: const Icon(Icons.download_rounded),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  final restaurant = restaurants[index];

                  return ListTile(
                    title: Text(restaurant["restaurant_name"]),
                    subtitle: Text(restaurant["restaurant_note"]),
                    trailing: Text(restaurant["restaurant_score"].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
