import 'package:feature_pokedex/feature_pokedex.dart';
import 'package:flutter/material.dart';

import 'di/configurations.dart';

void main() {
  configureDependencies();
  runApp(const FeaturePokedex());
}
