import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task4/models/rick_and_morty/rick_location_model.dart';
import 'package:http/http.dart' as http;

class RickLocationScreen extends StatefulWidget {
  const RickLocationScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;

  @override
  State<RickLocationScreen> createState() => _RickLocationScreenState();
}

class _RickLocationScreenState extends State<RickLocationScreen> {
  bool _isLoading = false;
  List<RickLocationModel>? productInfo = [];

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
      productInfo = List<RickLocationModel>.from(
        l.map((model) => RickLocationModel.fromJson(model)));
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
                itemCount: productInfo!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        '${productInfo![index].name} - ${productInfo![index].type}'),
                    subtitle: Text('${productInfo![index].dimension}'),
                       
                  );
                }));
  }
}