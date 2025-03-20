import 'package:widgetbook/widgetbook.dart' hide AlignmentAddon;
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'feature_pokedex_widgetbook.directories.g.dart';

@widgetbook.App()
class FeaturePokedexWidgetbook extends StatelessWidget {
  const FeaturePokedexWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        DeviceFrameAddon(
          initialDevice: Devices.ios.iPhone13,
          devices: [
            Devices.ios.iPhone13,
            Devices.ios.iPhone13ProMax,
            Devices.android.mediumPhone,
          ],
        ),
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: ThemeData.light()),
            WidgetbookTheme(name: 'Dark', data: ThemeData.dark()),
          ],
        ),
        TextScaleAddon(
          min: 0.5,
          max: 3.0,
          divisions: 5,
        ),
        BuilderAddon(
          name: 'Scaffold & SafeArea',
          builder: (context, child) {
            return Scaffold(
              body: SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: child),
                      ],
                    ),
                  ),
                ),
              ),
            );
            ;
          },
        ),
      ],
    );
  }
}

