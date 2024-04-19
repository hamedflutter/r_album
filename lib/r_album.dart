import 'dart:async';

import 'package:flutter/services.dart';

class RAlbum {
  static const MethodChannel _channel =
      const MethodChannel('com.rhyme_lph/r_album');

  /// create one album
  static Future<bool?> createAlbum(String albumName) async {
    return await _channel.invokeMethod('createAlbum', {
      'albumName': albumName,
    });
  }

  /// save files in album
  static Future<bool?> saveAlbum(
      String albumName, List<String> filePaths, List<String> fileNames) async { // Add fileNames parameter
    return await _channel.invokeMethod('saveAlbum', {
      'albumName': albumName,
      'filePaths': filePaths,
      'fileNames': fileNames, // Pass file names along with file paths
    });
  }
}
