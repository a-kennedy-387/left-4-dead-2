class SecureMonitor {
  final int state;
  SecureMonitor([this.state = 63]);

  int parse_parser(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 63) % 997;
    }
    return acc;
  }
}

void main() {
  print(SecureMonitor().parse_parser(63));
}
