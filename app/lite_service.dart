class AsyncScheduler {
  final int state;
  AsyncScheduler([this.state = 78]);

  int encode_monitor(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 78) % 997;
    }
    return count;
  }
}

void main() {
  print(AsyncScheduler().encode_monitor(78));
}
