import 'package:flutter/material.dart';
import 'package:test/models/offre/placement/filter/filter.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  String selectedCategory = 'All'; // Filtre sélectionné
  List<Item> filteredList = []; // Liste filtrée

  @override
  void initState() {
    super.initState();
    filteredList = itemList; // Initialisation avec tous les éléments
  }
  void applyFilter(String? category) {
    setState(() {
      selectedCategory = category ?? ''; // Using an empty string if category is null

      if (selectedCategory == 'All') {
        filteredList = itemList; // Afficher tous les éléments
      } else {
        filteredList = itemList
            .where((item) => item.category == selectedCategory)
            .toList(); // Filtrer les éléments par catégorie
      }
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtre dynamique'),
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            value: selectedCategory,
            onChanged: applyFilter,
            items: const [
              DropdownMenuItem<String>(
                value: 'All',
                child: Text('Tous'),
              ),
              DropdownMenuItem<String>(
                value: 'Category A',
                child: Text('Catégorie A'),
              ),
              DropdownMenuItem<String>(
                value: 'Category B',
                child: Text('Catégorie B'),
              ),
              DropdownMenuItem<String>(
                value: 'Category C',
                child: Text('Catégorie C'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                Item item = filteredList[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.category),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}