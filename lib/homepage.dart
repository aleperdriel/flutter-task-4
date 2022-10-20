import 'package:flutter/material.dart';
import 'list_categories_apis.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
              itemCount: categoriesLinks.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(28),
                  elevation: 2,
                  child: ListTile(
                    
                    contentPadding: EdgeInsets.all(8),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => categoriesLinks[index].screen));
                    },
                    title: Text(categoriesLinks[index].title),
                    subtitle: Text(categoriesLinks[index].link),
                  ),
                );
              }),
      ),
      );
  }
}
