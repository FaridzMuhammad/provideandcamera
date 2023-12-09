import 'package:flutter/material.dart';
import 'package:provideandcamera/pages/camera_page.dart';
import 'package:provider/provider.dart';
import 'package:camera/camera.dart';
import 'package:provideandcamera/models/item.dart';
import 'package:provideandcamera/providers/item_provider.dart';
import 'package:provideandcamera/pages/camera_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final cameras = await availableCameras();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => CameraPage(cameras: cameras)),
          );
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
