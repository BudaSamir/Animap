import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_shelter_event.dart';
part 'signup_shelter_state.dart';
part 'signup_shelter_bloc.freezed.dart';

class SignupShelterBloc extends Bloc<SignupShelterEvent, SignupShelterState> {
  SignupShelterBloc() : super(const SignupShelterState.initial()) {
    on<SignupShelterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
