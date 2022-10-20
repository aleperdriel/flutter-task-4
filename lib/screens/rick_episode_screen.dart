import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task4/models/rick_episode_model.dart';
import 'package:http/http.dart' as http;

class RickEpisodeScreen extends StatefulWidget {
  const RickEpisodeScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;

  @override
  State<RickEpisodeScreen> createState() => _RickEpisodeScreenState();
}

class _RickEpisodeScreenState extends State<RickEpisodeScreen> {
  bool _isLoading = false;
  List<RickEpisodeModel>? episodeInfo = [];

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
      episodeInfo = List<RickEpisodeModel>.from(
        l.map((model) => RickEpisodeModel.fromJson(model)));
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
                itemCount: episodeInfo!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        'Episode ${episodeInfo![index].season}.${episodeInfo![index].episode}'),
                    subtitle: Text(
                          '${episodeInfo![index].name}'
                        ),
                  );
                }));
  }
}