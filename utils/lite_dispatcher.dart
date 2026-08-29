class StreamBuilder {
  final int state;
  StreamBuilder([this.state = 14]);

  int run_worker(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 14) % 997;
    }
    return value;
  }
}

void main() {
  print(StreamBuilder().run_worker(14));
}
