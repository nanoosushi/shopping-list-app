import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
      ),
      body: ListView.builder(
        // the List can be very long
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          leading: Icon(
            Icons.square,
            color: groceryItems[index].category.color,
            size: 32,
          ),
          title: Text(
            groceryItems[index].name,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          trailing: Text(
            groceryItems[index].quantity.toString(),
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        ),
      ),
    );
  }
}
