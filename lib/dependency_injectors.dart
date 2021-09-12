import 'package:kiwi/kiwi.dart';
import 'package:nhl/ui/home/bloc/bloc.dart';

import 'data/repos/data_repo.dart';
import 'data/source/data_source.dart';

void initKiwi() {
  KiwiContainer()
    ..registerFactory((container) => DataSource())
    ..registerFactory((container) => DataRepository(container.resolve()))
    ..registerFactory((container) => GameBloc(container.resolve()));
}
