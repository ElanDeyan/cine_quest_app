import 'package:flutter/foundation.dart';

const isWeb = kIsWeb;
final isAndroid = !isWeb && defaultTargetPlatform == TargetPlatform.android;
final isIOS = !isWeb && defaultTargetPlatform == TargetPlatform.iOS;
