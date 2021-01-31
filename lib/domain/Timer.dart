class Timer {
  String name;
  DateTime start;
  DateTime end;

  Timer(this.name, this.end) {
    this.start = new DateTime.now();
  }

  @override
  String toString() {
    return 'Timer "$name", ending in ${DateTime.now().difference(end).inSeconds} seconds';
  }

  int compareTo(Timer o2) {
    return end.compareTo(o2.end);
  }
}