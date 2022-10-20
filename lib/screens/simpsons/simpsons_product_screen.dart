import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task4/models/simpsons/simpsons_product_model.dart';
import 'package:http/http.dart' as http;

class SimpsonsProductScreen extends StatefulWidget {
  const SimpsonsProductScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;

  @override
  State<SimpsonsProductScreen> createState() => _SimpsonsProductScreenState();
}

class _SimpsonsProductScreenState extends State<SimpsonsProductScreen> {
  bool _isLoading = false;
  List<SimpsonsProductModel>? productInfo = [];

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
      productInfo = List<SimpsonsProductModel>.from(
        l.map((model) => SimpsonsProductModel.fromJson(model)));
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
                        '${productInfo![index].id} - ${productInfo![index].name}'),
                    subtitle: Text('${productInfo![index].description}'),
                       
                  );
                }));
  }
}