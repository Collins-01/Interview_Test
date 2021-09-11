import 'package:get_it/get_it.dart';
import 'package:interview_test/services/navigation_service.dart';

GetIt locator=GetIt.instance;


setUpLocator(){
  locator.registerLazySingleton(() => NavigationService());
}