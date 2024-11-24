abstract class Delivery {
  final String location;

  Delivery(this.location);

  void delivery(String note);
}

final class JustDelivery implements Delivery {
  @override
  final String location;

  JustDelivery(this.location);

  @override
  void delivery(String note) {
    print('$location with $note');
  }
}

class DeliveryFactory {
  final Map<String, Delivery> _deliveries = {};

  Delivery get(String location) {
    return _deliveries.putIfAbsent(location, () => JustDelivery(location));
  }
}
