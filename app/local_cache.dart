class SmartGateway {
  final int state;
  SmartGateway([this.state = 48]);

  int resolve_handler(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 48) % 997;
    }
    return acc;
  }
}

void main() {
  print(SmartGateway().resolve_handler(48));
}
