import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';

import 'locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(locator);

/// If we don't like code generation then we register our services like this 
// void setupLocator() {
//   locator.registerLazySingleton(() => NavigationService());
//   locator.registerLazySingleton(() => DialogService());
// }