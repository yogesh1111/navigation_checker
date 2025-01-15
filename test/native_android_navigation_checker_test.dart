// import 'package:flutter_test/flutter_test.dart';
// import 'package:native_android_navigation_checker/native_android_navigation_checker.dart';
// import 'package:native_android_navigation_checker/native_android_navigation_checker_platform_interface.dart';
// import 'package:native_android_navigation_checker/native_android_navigation_checker_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockNativeAndroidNavigationCheckerPlatform
//     with MockPlatformInterfaceMixin
//     implements NativeAndroidNavigationCheckerPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final NativeAndroidNavigationCheckerPlatform initialPlatform = NativeAndroidNavigationCheckerPlatform.instance;
//
//   test('$MethodChannelNativeAndroidNavigationChecker is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelNativeAndroidNavigationChecker>());
//   });
//
//   test('getPlatformVersion', () async {
//     NativeAndroidNavigationChecker nativeAndroidNavigationCheckerPlugin = NativeAndroidNavigationChecker();
//     MockNativeAndroidNavigationCheckerPlatform fakePlatform = MockNativeAndroidNavigationCheckerPlatform();
//     NativeAndroidNavigationCheckerPlatform.instance = fakePlatform;
//
//     expect(await nativeAndroidNavigationCheckerPlugin.getPlatformVersion(), '42');
//   });
// }
