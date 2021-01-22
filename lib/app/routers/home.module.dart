import 'package:bookmark_app/app/views/pages/home.page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter('/', child: (_, args) => HomePage())];
}
