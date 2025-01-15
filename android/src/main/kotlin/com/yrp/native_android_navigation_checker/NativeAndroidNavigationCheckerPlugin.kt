package com.yrp.native_android_navigation_checker

import android.content.Context
import android.provider.Settings
import androidx.annotation.NonNull
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel


class NativeAndroidNavigationCheckerPlugin : FlutterPlugin, MethodChannel.MethodCallHandler {
  private lateinit var channel: MethodChannel
  private lateinit var context: Context

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "bottom_navigation_detector")
    channel.setMethodCallHandler(this)
    context = flutterPluginBinding.applicationContext
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: MethodChannel.Result) {
    if (call.method == "isThreeButtonNavigationEnabled") {
      val isThreeButtonEnabled = isThreeButtonNavigation()
      result.success(isThreeButtonEnabled)
    } else {
      result.notImplemented()
    }
  }

  private fun isThreeButtonNavigation(): Boolean {
    return try {
      val mode = Settings.Secure.getInt(context.contentResolver, "navigation_mode")
      // 0: 3-button navigation
      // 1: 2-button navigation
      // 2: Full gesture navigation
      mode == 0
    } catch (e: Settings.SettingNotFoundException) {
      e.printStackTrace()
      false
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
