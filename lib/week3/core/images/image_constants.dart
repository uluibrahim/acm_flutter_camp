class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    if (_instance != null) {
      return _instance!;
    }
    _instance = ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();
  final brocoli = "broccoli".toPng;
  final kale = 'kale'.toPng;
  final pepper = 'pepper'.toPng;
  final strawBerry = 'strawberry'.toPng;
}

extension _ImageExtensions on String {
  // Add to png path on image string
  String get toPng => "assets/image/$this.png";
}
