import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/settings.dart';
import 'package:provider_practice/soundprovider.dart';
import 'package:provider_practice/wallpaper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SoundProvider>(
        create: (context) => SoundProvider(),
    child:MaterialApp(
      home: Scaffold(
        body: Home()
      ),
    ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Settings()
              )
          );
        }, child: Text('Settings')),
        SizedBox(height: 50,),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Wallpaper()));
        }, child: Text('Wallpaper')),

      ],
    );
  }
}
