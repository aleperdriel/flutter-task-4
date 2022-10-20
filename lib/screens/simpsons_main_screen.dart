import 'package:flutter/material.dart';
import 'package:flutter_task4/list_apis_simpsons.dart';

class SimpsonsMainScreen extends StatefulWidget {
  const SimpsonsMainScreen({super.key, required this.title});

  final String title;

  @override
  State<SimpsonsMainScreen> createState() => _SimpsonsMainScreenState();
}

class _SimpsonsMainScreenState extends State<SimpsonsMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: simpsonsLinks.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => simpsonsLinks[index].screen));
                },
                title: Text(simpsonsLinks[index].title),
                subtitle: Text(simpsonsLinks[index].link),
              ),
            );
          }),
    );
  }
}
