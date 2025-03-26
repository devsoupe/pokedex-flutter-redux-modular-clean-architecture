import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Default Style', type: CustomCard)
CustomCard defaultCustomCard(BuildContext context) {
  return const CustomCard(child: Text('This is a custom card'));
}

@widgetbook.UseCase(name: 'With Custom Background Color', type: CustomCard)
CustomCard customBackgroundCustomCard(BuildContext context) {
  return CustomCard(
    backgroundColor: Colors.green.shade100,
    child: const Text('This is a custom card with a custom background color'),
  );
}
