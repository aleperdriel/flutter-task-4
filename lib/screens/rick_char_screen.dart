import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task4/models/rick_char_model.dart';
import 'package:http/http.dart' as http;

class RickCharScreen extends StatefulWidget {
  const RickCharScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;

  @override
  State<RickCharScreen> createState() => _RickCharScreenState();
}

class _RickCharScreenState extends State<RickCharScreen> {
  bool _isLoading = false;
  List<RickCharModel>? charInfo = [];

  @override
  void initState() {
    super.initState();
    _callApi(widget.apiLink);
  }

  _callApi(link) async {
    try{
      setState(() {
        _isLoading = true;
      });

      http.Response response = await http.get(Uri.parse(widget.apiLink));
      Iterable l = json.decode(response.body);
      charInfo = List<RickCharModel>.from(
        l.map((model) => RickCharModel.fromJson(model)));
    }
    catch(e) {
      debugPrint(e.toString());
    }

    finally {
      setState(() {
        _isLoading = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: charInfo!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${charInfo![index].id} - ${charInfo![index].name}'),
                    subtitle: charInfo![index].gender != '' ? 
                    charInfo![index].gender == 'm' ? const Icon(Icons.male) : const Icon(Icons.female) 
                    : const Text('Unknown gender'),
                  );
                }));
  }
}