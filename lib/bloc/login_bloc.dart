import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_youtube/user.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is SignInEvent) {
      try {
        yield LoginInitial();
        final user = await authenticate(event.email, event.password);
        if (user == null) {
          yield ErrorLoginState(message: 'Usuário e/ou Senha Invalidos');
        } else {
          yield SuccessLoginState(user: user);
        }
      } catch (e) {
        yield ErrorLoginState(message: 'Algo deu errado. Tente novamente');
        print(e);
      }
    }
  }

  Future<User> authenticate(String email, String password) {
    return Future.delayed(Duration(seconds: 3), () {
      if (email == 'leonidas@yopan.com.br' && password == '12345') {
        return User(email: email, name: 'Leonidas Yopan');
      }

      return null;
    });
  }
}
