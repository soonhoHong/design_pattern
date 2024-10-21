import 'package:design_pattern/design_pattern/observer/concrete_observer.dart';
import 'package:design_pattern/design_pattern/observer/concrete_subject.dart';
import 'package:design_pattern/design_pattern/observer/observer.dart';
import 'package:design_pattern/design_pattern/observer/subject.dart';

void main(List<String> arguments) {
  Subject subject = ConcreteSubject('rich');
  Observer myOb1 = ConcreteObserver('ob1');
  Observer myOb2 = ConcreteObserver('ob2');

  subject.registerObserver(myOb1);
  subject.registerObserver(myOb2);
  subject.notify();
}
