import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('[${provider.name ?? provider.runtimeType}] value: $newValue');
  }
}
/// A typedef for a function that returns a Widget.
typedef BootstrapBuilder = FutureOr<Widget> Function();
Future<void> bootstrap(BootstrapBuilder builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runApp(
    ProviderScope(
      observers: [Logger()],
      child: await builder(),
    ),
  );
}
