import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_player_music/app/models/band_model.dart';
import 'package:flutter_player_music/app/models/music_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'player_music_controller.dart';

class PlayerMusicPage extends StatefulWidget {
  final BandModel band;
  const PlayerMusicPage({Key key, this.band}) : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState extends ModularState<PlayerMusicPage, PlayerMusicController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    super.initState();
    controller.findBand(widget.band.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tocando Musica ${widget.band.name}'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: FutureBuilder<BandModel>(
          future: controller.bandFuture,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return Observer(builder: (_) {
                    var music = controller.music;
                    return Column(
                      children: <Widget>[
                        buildImageHeader(music),
                        buildNameMusic(music),
                        buildProgressBar(music),
                        buildButtons(music),
                      ],
                    );
                  });
                } else {
                  return Container();
                }
                break;
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }

  Container buildImageHeader(MusicModel music) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Container(
        width: MediaQuery.of(this.context).size.width,
        height: 350,
        decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage(widget.band.image), fit: BoxFit.scaleDown), borderRadius: BorderRadius.circular(2), boxShadow: [BoxShadow(color: Colors.grey[700], blurRadius: 15, offset: Offset(2, 5))]),
      ),
    );
  }

  buildNameMusic(MusicModel music) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(music.name, style: GoogleFonts.ptSansCaption(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        Container(
          child: Text(widget.band.name, style: GoogleFonts.ptSansCaption(fontSize: 15)),
        ),
      ],
    );
  }

  buildProgressBar(MusicModel music) {
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

  buildButtons(MusicModel music) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          FlatButton(
            child: Icon(
              Icons.skip_previous,
              size: 70,
            ),
            onPressed: () {},
          ),
          Expanded(
            child: FlatButton(
              child: Icon(
                controller.musicPlaying ? Icons.pause_circle_outline : Icons.play_circle_outline,
                size: 70,
              ),
              onPressed: () => controller.playMusic(),
            ),
          ),
          FlatButton(
            child: Icon(
              Icons.skip_next,
              size: 70,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
