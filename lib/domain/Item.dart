abstract class Item {
  late String _nome;
  late double _peso;

  Item(this._nome);


  double get peso => _peso;

  set peso(double value) {
    _peso = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }
}
