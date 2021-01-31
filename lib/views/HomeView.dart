import 'package:flutter/material.dart';
import 'package:thetimer/domain/Timer.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final String title = "The Timer";

  List<Timer> _timers = new List<Timer>();

  void _addTimer() {
    setState(() {
      var now = DateTime.now();
      _timers.add(new Timer("Test", DateTime(now.year, now.month, now.day, now.hour, now.minute + 5)));
      _timers.sort((o1, o2) => o1.compareTo(o2));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        floatingActionButton: Container(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                    child: Icon(Icons.add), onPressed: _addTimer)
              ],
            )),
        body: Container(
            padding: EdgeInsets.all(15),
            child: Center(
                child: Row(children: [
              Column(
                children: [this._timers.length > 0 ? Text('Next timer is: ${_timers[0]}'): Text('You don''t have any timer')],
              )
            ]))));
  }
}
