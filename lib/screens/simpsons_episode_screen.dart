import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_task4/models/simpsons_episode_model.dart';
import 'package:http/http.dart' as http;

class SimpsonsEpisodeScreen extends StatefulWidget {
  const SimpsonsEpisodeScreen({super.key, this.title = '', this.apiLink = ''});
  final String title;
  final String apiLink;

  @override
  State<SimpsonsEpisodeScreen> createState() => _SimpsonsEpisodeScreenState();
}

class _SimpsonsEpisodeScreenState extends State<SimpsonsEpisodeScreen> {
  bool _isLoading = false;
  List<SimpsonsEpisodeModel>? episodeInfo = [];

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
      episodeInfo = List<SimpsonsEpisodeModel>.from(
        l.map((model) => SimpsonsEpisodeModel.fromJson(model)));
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
                          '${episodeInfo![index].description}'
                        ),
                  );
                }));
  }
}