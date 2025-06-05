abstract class Item {
  static int GRANDE = 1;
  static int MEDIO = 2;
  static int PEQUENO = 3;

  late String _nome;
  late int _tamanho;

  Item(this._nome,this._tamanho);


  int get tamanho => _tamanho;

  set tamanho(int value) {
    _tamanho = value;
  }

  double get peso;

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }
}
