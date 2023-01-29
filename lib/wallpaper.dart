import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/soundprovider.dart';

class Wallpaper extends StatefulWidget {
  Wallpaper({Key? key}) : super(key: key);

  @override
  State<Wallpaper> createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {

  final player = AudioPlayer();

  @override
  void initState()  {
    // TODO: implement initState
    print('1');
    var duration = PlayerFunction();
    super.initState();
  }

  Future<Duration?> PlayerFunction () async {
    return await player.setAsset('assets/bright.mp3');
  }

// TODO: remove it from here
  @override
  void dispose() {
    // TODO: implement dispose
    print('3');
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('2');
    var counter = Provider.of<SoundProvider>(context).isSoundOn;
    if (counter){
      player.play();
    } else if(!counter){
      player.stop();
    }
    return Scaffold(
      body: Column(
        children: [
          Text('Wallpaper'),
          Text("${counter}")
        ],
      ),
    );
  }
}
