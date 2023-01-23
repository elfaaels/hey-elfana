import 'package:get_it/get_it.dart';
import 'package:hey_elfana/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}
