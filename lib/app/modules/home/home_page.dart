import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.findAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play List'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: FutureBuilder<List<BandModel>>(
        future: controller.bandsFuture,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                return _makeListBands(snapshot.data);
              } else {
                return Container();
              }
              break;
            default:
              return Container();
          }
        },
      ),
    );
  }

  ListView _makeListBands(List<BandModel> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (_, int index) {
        var band = data[index];
        return ListTile(
          onTap: () => Modular.to.pushNamed('/player', arguments: band),
          leading: Container(
              width: 100,
              child: Image.network(
            band.image,
            fit: BoxFit.contain,
          )),
          title: Text(
            band.name,
            style: GoogleFonts.ptSansCaption(),
          ),
          subtitle: Text(
            band.category,
            style: GoogleFonts.ptSansCaption(),
          ),
          contentPadding: EdgeInsets.all(10),
        );
      },
    );
  }
}
