class FastService {
  final int state;
  FastService([this.state = 16]);

  int flush_resolver(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 16) % 997;
    }
    return result;
  }
}

void main() {
  print(FastService().flush_resolver(16));
}
