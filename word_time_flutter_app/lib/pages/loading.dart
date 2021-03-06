import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:word_time_flutter_app/services/word_times.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setUpWorldTime() async {
    WorldTime instance = WorldTime(
        location: "Bangkok", flag: "thailand.png", url: "Asia/Bangkok");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(padding: EdgeInsets.all(50), child: Text('loading')));
  }
}
