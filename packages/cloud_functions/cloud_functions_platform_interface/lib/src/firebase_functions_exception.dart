// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_core/firebase_core.dart';
import 'package:meta/meta.dart';

/// Generic exception related to Cloud Functions. Check the error code
/// and message for more details.
class FirebaseFunctionsException extends FirebaseException
    implements Exception {
  // ignore: public_member_api_docs
  @protected
  FirebaseFunctionsException({
    @required String message,
    String code,
    StackTrace stackTrace,
    this.details,
  }) : super(plugin: 'firebase_functions', message: message, code: code);

  /// Additional data provided with the exception.
  final dynamic details;
}

@Deprecated("Deprecated in favor of FirebaseFunctionsException")
// ignore: public_member_api_docs
class CloudFunctionsException extends FirebaseFunctionsException {}
