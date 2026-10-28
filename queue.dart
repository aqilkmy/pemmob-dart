class Queue<int> {
  final List<int> _items = [];

  void enqueue(int element) {
    _items.add(element);
    print('$element berhasil ditambahkan ke queue');
  }

  int? dequeue() {
    if (isEmpty) return null;
    int removed = _items.removeAt(0);
    print('$removed dihapus dari queue');
    return removed;
  }

  bool get isEmpty => _items.isEmpty;

  void display() {
    print('isi queue: $_items');
  }
}

void main() {
  Queue<int> antrian = Queue<int>();

  antrian.enqueue(10);
  antrian.enqueue(20);
  antrian.enqueue(30);
  antrian.display();
  antrian.dequeue();
  antrian.display();
}  