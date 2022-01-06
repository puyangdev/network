import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:net_demo_yu/net_demo_yu.dart';

void main() {
  const MethodChannel channel = MethodChannel('net_demo_yu');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await NetDemoYu.platformVersion, '42');
  });
}
