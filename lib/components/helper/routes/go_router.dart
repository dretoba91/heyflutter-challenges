import 'package:go_router/go_router.dart';
import 'package:heyflutter_challenges/screens/login.dart';
import 'package:heyflutter_challenges/screens/personal_profile.dart';

class RouteHelpers {
  static final GoRouter route = GoRouter(routes: [
    GoRoute(
        path: '/',
        name: 'login',
        builder: (context, state) {
          return const Login();
        },
        routes: [
          GoRoute(
            path: 'personal_detials',
            name: 'personal_details',
            builder: (context, state) {
              Map<String, String> data = state.extra as Map<String, String>;
              return PersonalProfile(
                  name: data['name']!, email: data["email"]!);
            },
          )
        ]),
  ]);
}
