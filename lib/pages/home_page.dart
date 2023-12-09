import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provideandcamera/models/item.dart';
import 'package:provideandcamera/providers/item_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Consumer<ItemProvider>(
        builder: (context, itemProvider, child) {
          return ListView.builder(
            itemCount: itemProvider.items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(itemProvider.items[index].title),
                onTap: () {
                  itemProvider.selectItem(index);
                  Navigator.pushNamed(context, '/detail');
                },
              );
            },
          );
        },
      ),
    );
  }
}
