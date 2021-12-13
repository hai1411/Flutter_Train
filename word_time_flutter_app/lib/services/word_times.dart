import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  final String location; //location name
  late String time; // time of that location
  final String flag; //url to an flag icon
  final String url; //url api endpoint

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String dataTime = data['datetime'];
      String offset = data['utc_offset'].toString().substring(1, 3);
      DateTime now = DateTime.parse(dataTime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    } catch (e) {
      time = 'Could not get time data';
    }
  }
}
