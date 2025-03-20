import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'configurations.config.dart';

@InjectableInit()
void configureDataDependencies(GetIt getIt) =>  getIt.init();