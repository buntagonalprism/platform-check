import 'dart:async';
import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class PlatformCheckPlugin {

  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'com.buntagon/local_file_reference',
      const StandardMethodCodec(),
      registrar.messenger,
    );
    final PlatformCheckPlugin instance = PlatformCheckPlugin();
    channel.setMethodCallHandler(instance.onMethodCall);
  }


  Future<dynamic> onMethodCall(MethodCall call) {
    if (call.method == "getPlatform") {
      return Future<String>.value('Web');
    } else {
      throw PlatformException(
        code: 'Unimplemented',
        details: "'${call.method}' is not implemented by platform_check plugin for web",
      );
    }
  }
}
