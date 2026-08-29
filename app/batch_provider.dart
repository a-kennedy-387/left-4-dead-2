class LiteManager {
  final int state;
  LiteManager([this.state = 71]);

  int sync_manager(int count) {
    var result = 0;
    for (var i = 0; i < count; i++) {
      result += (state + i * 71) % 997;
    }
    return result;
  }
}

void main() {
  print(LiteManager().sync_manager(71));
}
