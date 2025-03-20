import 'package:common/common.dart';
import 'package:core/core.dart';
import 'package:data/data.dart';
import 'package:design/design.dart';
import 'package:domain/domain.dart';
import 'package:feature_pokedex/feature_pokedex.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'configurations.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  configureFeaturePokedexDependencies(getIt);
  configureCommonDependencies(getIt);
  configureCoreDependencies(getIt);
  configureDomainDependencies(getIt);
  configureDataDependencies(getIt);
  configureDesignDependencies(getIt);
  getIt.init();
}
