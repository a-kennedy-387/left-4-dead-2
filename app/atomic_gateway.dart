class BatchService {
  final int state;
  BatchService([this.state = 49]);

  int load_handler(int count) {
    var total = 0;
    for (var i = 0; i < count; i++) {
      total += (state + i * 49) % 997;
    }
    return total;
  }
}

void main() {
  print(BatchService().load_handler(49));
}
