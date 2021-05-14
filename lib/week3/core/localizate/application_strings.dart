class ApplicationStrings {
  static ApplicationStrings? _instance;
  static ApplicationStrings get instance {
    if (_instance != null) {
      return _instance!;
    }
    _instance = ApplicationStrings._init();
    return instance;
  }

  ApplicationStrings._init();
  final String cartTitle="Cart";
  final String checkOut="Checkout";
  //
  final String subTotal="Sub - Total";
  final String delivery="Delivery";
  final String total="Total";

}
