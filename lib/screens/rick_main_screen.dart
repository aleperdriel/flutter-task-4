import 'package:flutter/material.dart';
import 'package:flutter_task4/list_apis_rick.dart';

class RickMainScreen extends StatefulWidget {
  const RickMainScreen({super.key, required this.title});

  final String title;

  @override
  State<RickMainScreen> createState() => _RickMainScreenState();
}

class _RickMainScreenState extends State<RickMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: rickLinks.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => rickLinks[index].screen));
                },
                title: Text(rickLinks[index].title),
                subtitle: Text(rickLinks[index].link),
              ),
            );
          }),
    );
  }
}
