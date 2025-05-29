class Product {
  const Product(this.sku, this.description, this.price, this.quantity, [this.iconData]);

  final String sku;
  final String description;
  final double price;
  final int quantity;
  final String? iconData;

  double get total => price * quantity;

  String getIndex(int index) {
    switch (index) {
      case 0:
        return sku;
      case 1:
        return description;
      case 2:
        return price.toStringAsFixed(2);
      case 3:
        return quantity.toString();
      case 4:
        return total.toStringAsFixed(2);
      case 5:
        return iconData ?? '';
      default:
        return '';
    }
  }
}

class CustomData {
  const CustomData({
    this.name = '[your name]',
    this.testing = false,
  });

  final String name;
  final bool testing;
}
