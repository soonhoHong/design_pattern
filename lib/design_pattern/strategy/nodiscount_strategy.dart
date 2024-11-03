import 'package:design_pattern/design_pattern/strategy/discount_strategy.dart';

final class NodiscountStrategy implements DiscountStrategy {
  final double price;

  NodiscountStrategy(this.price);

  @override
  double calculate() {
    return price;
  }
}
