import 'package:get_it/get_it.dart';
import 'package:task/services/navigation_service.dart';
GetIt locator = GetIt.instance;

void setupLocator()
{
  locator.registerLazySingleton(() => NavigationService());
}
