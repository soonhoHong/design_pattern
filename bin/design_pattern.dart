import 'package:design_pattern/design_pattern/templete_method/file_processing.dart';
import 'package:design_pattern/design_pattern/templete_method/text_file_processing.dart';

void main(List<String> arguments) {
  FileProcessing fileProcessing = TextFileProcessing();
  fileProcessing.processFile();

  FileProcessing pdfProcessing = PDFFileProcessing();
  pdfProcessing.processFile();
}
