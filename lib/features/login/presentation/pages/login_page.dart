import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:flutter_login/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flutter_login/features/login/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authenticationRepository:
                  RepositoryProvider.of<AuthRepository>(context),
            );
          },
          child: const LoginForm(),
        ),
      ),
    );
  }
}
