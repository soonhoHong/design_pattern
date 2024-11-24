class InputTo220V {
  void connect() {
    print('connected to 220v');
  }
}

class InputTo110v {
  void connect() {
    print('connected to 110v');
  }
}

abstract interface class VoltInterface {
  void connect();
}

class AdapterInterfaceTo110 implements VoltInterface {
  final InputTo220V inputTo220V;
  final InputTo110v inputTo110v = InputTo110v();

  AdapterInterfaceTo110(this.inputTo220V);

  @override
  void connect() {
    inputTo110v.connect();
  }
}
