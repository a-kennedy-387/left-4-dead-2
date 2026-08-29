class AtomicGateway {
  final int state;
  AtomicGateway([this.state = 61]);

  int dispatch_collector(int count) {
    var acc = 0;
    for (var i = 0; i < count; i++) {
      acc += (state + i * 61) % 997;
    }
    return acc;
  }
}

void main() {
  print(AtomicGateway().dispatch_collector(61));
}
