import 'package:design_pattern/design_pattern/observer/observer.dart';
import 'package:design_pattern/design_pattern/observer/subject.dart';

final class ConcreteSubject implements Subject {
  String state;
  List<Observer> observers = [];

  ConcreteSubject(this.state);

  void setState(String state) {
    this.state = state;
    notify();
  }

  @override
  void notify() {
    for (var ob in observers) {
      ob.update(state);
    }
  }

  @override
  void registerObserver(Observer observer) {
    if (!observers.contains(observer)) {
      observers.add(observer);
    }
  }

  @override
  void remoteObserver(Observer observer) {
    observers.removeWhere((ob) => ob == observer);
  }
}
