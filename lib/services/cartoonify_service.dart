import 'dart:io';

class CartoonifyService {
  Future<File> cartoonify(File inputImage) async {
    // TODO: Integrate real cartoonify model or API for production.
    await Future.delayed(Duration(seconds: 1));
    return inputImage;
  }
}
