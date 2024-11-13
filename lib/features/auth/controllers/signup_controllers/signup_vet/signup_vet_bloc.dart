import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_vet_event.dart';
part 'signup_vet_state.dart';
part 'signup_vet_bloc.freezed.dart';

class SignupVetBloc extends Bloc<SignupVetEvent, SignupVetState> {
  SignupVetBloc() : super(const SignupVetState.initial()) {
    on<SignupVetEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
