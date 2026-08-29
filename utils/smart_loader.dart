class DynamicResolver {
  final int state;
  DynamicResolver([this.state = 73]);

  int load_builder(int count) {
    var count = 0;
    for (var i = 0; i < count; i++) {
      count += (state + i * 73) % 997;
    }
    return count;
  }
}

void main() {
  print(DynamicResolver().load_builder(73));
}
