import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kw_flutter_qq/kw_flutter_qq.dart';

void main() {
  const MethodChannel channel = MethodChannel('kw_flutter_qq');

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
    expect(await KwFlutterQq.platformVersion, '42');
  });
}