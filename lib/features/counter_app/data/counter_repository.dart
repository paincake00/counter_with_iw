class CounterRepository {
  int _counter = 0;

  int get counter => _counter;

  Future<int> increment() async {
    return ++_counter;
  }

  Future<int> decrement() async {
    return _counter > 0 ? --_counter : _counter;
  }
}
