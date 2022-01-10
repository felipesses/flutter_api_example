import 'package:api_consuming_example/controllers/home_controller.dart';
import 'package:api_consuming_example/services/client_interface.dart';
import 'package:api_consuming_example/services/json_placeholder_service.dart';
import 'package:api_consuming_example/services/uno_client.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'views/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<IHttpClient>((i) => UnoClient()),
        Bind.singleton((i) => JsonPlaceholderService(i())),
        Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage()),
      ];
}
