import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Groceries')),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(groceryItems[index].name),
          leading: Container(
            color: groceryItems[index].category.color,
            width: 24,
            height: 24,
          ),
          trailing: Text(groceryItems[index].quantity.toString()),
        ),
        // children: [
        //   for (final singleCategory in groceryItems)
        //     Padding(
        //       padding: const EdgeInsets.all(12),
        //       child: Row(
        //         children: [
        //           Container(
        //             color: singleCategory.category.color,
        //             width: 20,
        //             height: 20,
        //           ),
        //           Expanded(
        //             child: Padding(
        //               padding: const EdgeInsets.only(left: 25.0),
        //               child: Text(singleCategory.name),
        //             ),
        //           ),
        //           Text(singleCategory.quantity.toString()),
        //         ],
        //       ),
        //     )
        // ],
      ),
    );
  }
}
