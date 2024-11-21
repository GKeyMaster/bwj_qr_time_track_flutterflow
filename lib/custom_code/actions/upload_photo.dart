// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

Future uploadPhoto(
  FFUploadedFile? imagePath,
  String imageName,
  String token,
  String jobNumber,
) async {
  if (imagePath == null || imagePath.bytes == null) {
    print('Error: No image selected or image bytes are null');
    return 'No image selected';
  }

  final uri = Uri.parse(
      'https://bwj-time-tracker-v1-437306.lm.r.appspot.com/mobile/photo/');
  var request = http.MultipartRequest('POST', uri);

  request.headers.addAll({'Authorization': 'Bearer $token'});

  request.files.add(http.MultipartFile.fromBytes(
    'photo',
    imagePath.bytes!,
    filename: imageName,
    contentType: MediaType('image', 'jpeg'),
  ));

  request.fields.addAll({'job-number': jobNumber});

  request.fields.addAll({'image-name': imageName});

  var response = await request.send();

  if (response.statusCode == 200) {
    final responseBody = await response.stream.bytesToString();
    print('Upload successful: $responseBody');
    return 'Upload successful: $responseBody';
  } else {
    print('Upload failed with status: ${response.statusCode}');
    return 'Upload failed with status: ${response.statusCode}';
  }
}
