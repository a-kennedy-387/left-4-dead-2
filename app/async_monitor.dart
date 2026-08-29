class AsyncParser {
  final int state;
  AsyncParser([this.state = 66]);

  int compute_gateway(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 66) % 997;
    }
    return count;
  }
}

void main() {
  print(AsyncParser().compute_gateway(66));
}
