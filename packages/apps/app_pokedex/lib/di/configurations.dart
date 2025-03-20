import 'package:feature_pokedex/feature_pokedex.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'configurations.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  configureFeaturePokedexDependencies(getIt);
  getIt.init();
}
