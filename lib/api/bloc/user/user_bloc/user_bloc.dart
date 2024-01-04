import 'package:bloc/bloc.dart';
import 'package:music_player/api/bloc/user/user_bloc/user_event.dart';
import 'package:music_player/api/bloc/user/user_bloc/user_state.dart';
import 'package:music_player/api/repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository})
      : super(UserInitial()) {
    on<AddUser>(_onAdd);
    on<UpdateUser>(_onUpdate);
    on<DeleteUser>(_onDelete);
    on<GetUser>(_onGet);
  }

  void _onAdd(AddUser event, Emitter<UserState> emit) async {
    emit(UserLoading());

    final response = await userRepository.addUser(
      event.userModel,
    );

    if (response) {
      emit(UserSuccess());
    } else {
      emit(UserError());
    }
  }

  void _onUpdate(UpdateUser event, Emitter<UserState> emit) async {
    emit(UserLoading());

    final response = await userRepository.updateUser(
      event.userModel,
    );

    if (response) {
      emit(UserSuccess());
    } else {
      emit(UserError());
    }
  }

  void _onDelete(DeleteUser event, Emitter<UserState> emit) async {
    emit(UserLoading());

    final response = await userRepository.deleteUser(
      event.id,
    );

    if (response) {
      emit(UserSuccess());
    } else {
      emit(UserError());
    }
  }

  void _onGet(GetUser event, Emitter<UserState> emit) async {
    emit(UserLoading());

    final userModel = await userRepository.getUser(
      event.id,
    );

    if (userModel != null) {
      emit(UserLoaded(userModel: userModel));
    } else {
      emit(UserError());
    }
  }
}