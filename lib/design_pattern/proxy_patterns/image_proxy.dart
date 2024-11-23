class ReamImage implements Image {
  final String fileName;

  ReamImage(this.fileName) {
    _fetchImage();
  }

  void _fetchImage() {
    print('$fileName is created');
  }

  @override
  void display() {
    print('$fileName is displayed');
  }
}

abstract interface class Image {
  void display();
}

final class ProxyImage implements Image {
  final String fileName;
  ReamImage? reamImage;

  ProxyImage(this.fileName);

  @override
  void display() {
    reamImage ??= ReamImage(fileName);
    reamImage?.display();
  }
}
