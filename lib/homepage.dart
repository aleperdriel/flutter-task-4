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
                // return Card(
                //   margin: EdgeInsets.all(28),
                //   elevation: 2,
                //   child: ListTile(
                    
                //     contentPadding: EdgeInsets.all(8),
                //     onTap: () {
                //       Navigator.of(context).push(MaterialPageRoute(
                //           builder: (context) => categoriesLinks[index].screen));
                //     },
                //     title: Text(categoriesLinks[index].title),
                //     subtitle: Text(categoriesLinks[index].link),
                //   ),
                // );

                return Card(
                  child: Column(
                     mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // We overlap the image and the button by
              // creating a Stack object:
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(
                      "https://cdn.vox-cdn.com/thumbor/IQab79SuQ1PnrneGti_uy_pxTKo=/148x0:1768x1080/1280x854/cdn.vox-cdn.com/uploads/chorus_image/image/47413330/the-simpsons-tv-series-cast-wallpaper-109911.0.0.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
                  )
            ],
                ));
              }),
      ),
      );
  }
}
