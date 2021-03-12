import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_screen_wake');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return false;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getKeepOn', () async {
    expect(await FlutterScreenWake.isKeptOn, false);
  });
}
