import 'package:design_pattern/design_pattern/strategy/discount_strategy.dart';

class EarlyBirdCalculation implements DiscountStrategy {
  final double price;
  EarlyBirdCalculation(this.price);

  @override
  double calculate() {
    return price * 0.8;
  }
}
