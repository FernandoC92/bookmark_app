import 'package:bookmark_app/app/routers/home.module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../views/widgets/app.widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(Modular.initialRoute, module: HomeModule())];

  @override
  Widget get bootstrap => AppWidget();
}
