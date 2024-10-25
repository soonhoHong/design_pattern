abstract class FileProcessing {
  void processFile() {
    open();
    readData();
    close();
  }

  void open() {
    print('file open');
  }

  void close() {
    print('file close');
  }

  void readData();
}
