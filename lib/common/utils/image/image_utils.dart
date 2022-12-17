import 'dart:async';
import 'dart:io';

// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

import '../../index.dart';

class ImageUtils {
  static Future<File> compressImage(File sourceFile, int quality) async {
    File? compressedFile;
    try {
      var sourceSize = await _calculateImageSize(sourceFile);
      final Directory extDir = await getTemporaryDirectory();
      final appImageDir =
          await Directory('${extDir.path}/app_images').create(recursive: true);

      // compress

      int minHeight = (sourceSize.aspectRatio == 16 / 9) ? 1080 : 1200;
      int minWidth = (sourceSize.aspectRatio == 16 / 9) ? 1920 : 1600;
      final String targetPath =
          '${appImageDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
      compressedFile = await FlutterImageCompress.compressAndGetFile(
        sourceFile.absolute.path,
        targetPath,
        quality: quality,
        minHeight: minHeight,
        minWidth: minWidth,
      );
      // Nếu vẫn lớn hơn 2MB thì giảm chất lượng ảnh

      if (compressedFile == null) {
        return File(sourceFile.path);
      } else {
        if (compressedFile.readAsBytesSync().lengthInBytes > 2000000) {
          return await compressImage(compressedFile, 90);
        }
      }
      var compressedSize = await _calculateImageSize(compressedFile);
      printDebug('Resize successfully: $sourceSize to $compressedSize');
      return compressedFile;
    } catch (e) {
      return sourceFile;
    }
  }

  static Future<Size> _calculateImageSize(File file) async {
    Completer<Size> completer = Completer();
    Image image = Image.file(file);
    image.image.resolve(const ImageConfiguration()).addListener(
      ImageStreamListener(
        (ImageInfo image, bool synchronousCall) {
          var myImage = image.image;
          Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
          completer.complete(size);
        },
      ),
    );
    return completer.future;
  }
}
