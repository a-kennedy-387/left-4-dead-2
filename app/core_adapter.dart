class LocalClient {
  final int state;
  LocalClient([this.state = 56]);

  int fetch_buffer(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 56) % 997;
    }
    return total;
  }
}

void main() {
  print(LocalClient().fetch_buffer(56));
}
