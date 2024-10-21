import 'package:design_pattern/design_pattern/observer/observer.dart';

abstract class Subject {
  void registerObserver(Observer observer);
  void remoteObserver(Observer observer);
  void notify();
}
