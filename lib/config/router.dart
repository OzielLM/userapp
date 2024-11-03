import 'package:go_router/go_router.dart';
import 'package:userapp/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
    path: "/",
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: "/crear_perfil",
    builder: (context, state) {
      return const CrearPerfilScreen();
    },
  ),
  GoRoute(
    path: "/perfil/:name/:age/:ocupation",
    builder: (context, state) {
      final name = state.pathParameters["name"] ?? '';
      final age = int.tryParse(state.pathParameters["age"] ?? '0') ?? 0;
      final ocupation = state.pathParameters["ocupation"] ?? '';
      return PerfilScreen(name: name, age: age, ocupation: ocupation);
    },
  ),
]);
