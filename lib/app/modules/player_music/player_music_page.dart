import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'player_music_controller.dart';

class PlayerMusicPage extends StatefulWidget {
  final String url;
  const PlayerMusicPage({Key key, this.url}) : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState extends ModularState<PlayerMusicPage, PlayerMusicController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tocando Musica ${widget.url}'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[buildImageHeader(), buildNameMusic(), buildProgressBar(), buildButtons()],
      ),
    );
  }

  Container buildImageHeader() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Container(
        width: MediaQuery.of(this.context).size.width,
        height: 350,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(widget.url), fit: BoxFit.cover), borderRadius: BorderRadius.circular(2), boxShadow: [BoxShadow(color: Colors.grey[700], blurRadius: 15, offset: Offset(2, 5))]),
      ),
    );
  }

  buildNameMusic() {
    return Column(
      children: <Widget>[
        Container(
          child: Text('Californication', style: GoogleFonts.ptSansCaption(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        Container(
          child: Text('Red Hot Chilli Peppers', style: GoogleFonts.ptSansCaption(fontSize: 15)),
        ),
      ],
    );
  }

  buildProgressBar() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 30),
          child: LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            value: 0.5,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 35, right: 35, top: 5),
          child: Row(
            children: <Widget>[
              Text('0:15'),
              Expanded(
                child: Container(),
              ),
              Text('2:00')
            ],
          ),
        )
      ],
    );
  }

  buildButtons() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Icon(
              Icons.fast_rewind,
              size: 70,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: FlatButton(
              child: Icon(
                Icons.play_circle_outline,
                size: 70,
              ),
              onPressed: () {},
            ),
          ),
          FlatButton(
            child: Icon(
              Icons.fast_forward,
              size: 70,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
