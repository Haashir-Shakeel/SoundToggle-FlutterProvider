import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/soundprovider.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  void ToggleSoundHere (BuildContext context){
    Provider.of<SoundProvider>(context, listen: false).toggleSoundOn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Consumer<SoundProvider>(
            builder: (context, SoundProvider, child){
              return  Column(
                children: [
                  Text('Setting screen'),
                  Switch(
                      value: SoundProvider.isSoundOn,
                      onChanged: (value) {
                        print(value);
                        ToggleSoundHere(context);
                        print(value);
                      }
                  ),
                ],
              );
            },
          )

      ),
    );;
  }
}
