import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play List'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, int index) {
          return ListTile(
            onTap: () => Modular.to.pushNamed('/player', arguments: 'https://images-na.ssl-images-amazon.com/images/I/81bqaMrqceL._AC_SX425_.jpg'),
            leading: Image.network('https://images-na.ssl-images-amazon.com/images/I/81bqaMrqceL._AC_SX425_.jpg'),
            title: Text(
              'Californication',
              style: GoogleFonts.ptSansCaption(),
            ),
            subtitle: Text(
              'Red Hot Chilli Peppers',
              style: GoogleFonts.ptSansCaption(),
            ),
            contentPadding: EdgeInsets.all(10),
          );
        },
      ),
    );
  }
}
