import 'package:counter_with_inherit/features/counter_app/data/counter_repository.dart';
import 'package:counter_with_inherit/features/counter_app/domain/counter_controller.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerSingleton(
    CounterRepository(),
  );

  sl.registerSingleton(
    CounterController(
      counterRepository: sl(),
    ),
  );
}
