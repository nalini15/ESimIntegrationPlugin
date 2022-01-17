import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:esim_integration/esim_integration.dart';

void main() {
  const MethodChannel channel = MethodChannel('esim_integration');

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
    expect(await EsimIntegration.platformVersion, '42');
  });
}
