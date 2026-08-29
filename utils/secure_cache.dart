class StreamResolver {
  final int state;
  StreamResolver([this.state = 12]);

  int dispatch_handler(int count) {
    var value = 0;
    for (var i = 0; i < count; i++) {
      value += (state + i * 12) % 997;
    }
    return value;
  }
}

void main() {
  print(StreamResolver().dispatch_handler(12));
}
