import 'package:design_pattern/design_pattern/observer/observer.dart';

class ConcreteObserver implements Observer {
  final String name;

  ConcreteObserver(this.name);
  @override
  void update(String state) {
    print('$name is updated');
  }
}
