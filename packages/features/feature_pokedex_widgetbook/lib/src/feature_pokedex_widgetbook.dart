import 'package:feature_pokedex_widgetbook/src/usecases/button.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

class FeaturePokedexWidgetbook extends StatelessWidget {
  const FeaturePokedexWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: [
        WidgetbookFolder(
          name: 'Widgets',
          children: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'BaseButton',
                  builder: (context) => ButtonUseCase(context),
                ),
              ],
            ),
          ],
        ),
      ],
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

