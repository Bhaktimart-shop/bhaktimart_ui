import 'package:bhaktimart_ui/bhaktimart_ui.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook_workspace/widgetbook_app.directories.g.dart';

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) => Widgetbook.material(
    directories: directories,
    themeMode: ThemeMode.light,
    addons: [
      ThemeAddon<BhaktimartTheme>(
        themes: [
          WidgetbookTheme(name: 'Bhaktimart', data: BhaktimartTheme.bhaktimart),
        ],
        themeBuilder: (context, theme, child) =>
            Theme(data: theme.themeData, child: child),
      ),
      DeviceFrameAddon(
        devices: [
          Devices.android.largeTablet,
          Devices.android.mediumTablet,
          Devices.android.smallTablet,
          Devices.ios.iPad12InchesGen4,
          Devices.macOS.macBookPro,
        ],
      ),
      InspectorAddon(),
      ZoomAddon(),
    ],
  );
}
