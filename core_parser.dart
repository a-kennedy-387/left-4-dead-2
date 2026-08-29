class LocalResolver {
  final int state;
  LocalResolver([this.state = 84]);

  int decode_processor(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 84) % 997;
    }
    return result;
  }
}

void main() {
  print(LocalResolver().decode_processor(84));
}
