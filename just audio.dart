import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Mymusic extends StatefulWidget {
  const Mymusic({Key? key}) : super(key: key);

  @override
  State<Mymusic> createState() => _MymusicState();
}

class _MymusicState extends State<Mymusic> with WidgetsBindingObserver {
  AudioPlayer palyere = AudioPlayer();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    initplaye();
    Play();
  }

  initplaye() async {
    await palyere.setAsset("audio/Tu Mile Dil Khile Stebin Ben 128 Kbps.mp3");
    palyere.setLoopMode(LoopMode.one);
  }
  Play() async {
    await palyere.play();
  }
  Pause() async {
    await palyere.pause();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   // TODO: implement didChangeAppLifecycleState
  //   super.didChangeAppLifecycleState(state);
  // }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.paused) {
      Pause();
    }
    else if(state==AppLifecycleState.resumed)
    {
      Play();
    }
    print("====$state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: Colors.lime,),);
  }
}