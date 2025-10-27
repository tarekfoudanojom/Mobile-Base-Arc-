
import 'dart:convert';

import 'package:aescryptojs/aescryptojs.dart';

class AesService {

  AesService._();

  static final AesService instance = AesService._();

  final String _key = "abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba";

  String encrypt(String data) {
    return encryptAESCryptoJS(data,_key);
  }

  Map<String, dynamic> decrypt(String data) {
    final aes = decryptAESCryptoJS(data, _key);
    return json.decode(aes);
  }
  Future<dynamic> customDecrypt(String data) async {
    final aes = decryptAESCryptoJS(data, _key);
    return json.decode(aes);
  }
}