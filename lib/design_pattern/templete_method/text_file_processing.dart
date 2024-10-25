import 'package:design_pattern/design_pattern/templete_method/file_processing.dart';

final class TextFileProcessing extends FileProcessing {
  @override
  void readData() {
    print('text data is read');
  }
}

final class PDFFileProcessing extends FileProcessing {
  @override
  void readData() {
    print('pdf data is read');
  }
}
