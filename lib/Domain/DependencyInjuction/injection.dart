import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:project_spotifyclone/Domain/DependencyInjuction/injection.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configInjection() async {
  $initGetIt(getIt, environment: Environment.prod);
}
         