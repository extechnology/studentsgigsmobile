// google_signup_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gigs/bloc/google_signup_bloc/blocevent.dart';
import 'package:gigs/bloc/google_signup_bloc/googleauthrepository.dart';
import 'package:gigs/bloc/google_signup_bloc/statebloc.dart';

class GoogleAuthBloc extends Bloc<GoogleAuthEvent, GoogleAuthState> {
  final GoogleAuthRepository repository;

  GoogleAuthBloc(this.repository) : super(GoogleAuthInitial()) {
    on<GoogleSignInRequested>((event, emit) async {
      emit(GoogleAuthLoading());
      try {
        final result = await repository.signInWithGoogle(event.context);
        if (result != null) {
          emit(GoogleAuthSuccess(result)); // Emit success with data
        } else {
          emit(GoogleAuthFailure("Sign-in cancelled"));
        }
      } catch (e) {
        emit(GoogleAuthFailure(e.toString()));
      }
    });
  }
}
