import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_task/domain/usecase/user_usecase.dart';
import 'package:mini_task/presentation/features/user_screen/bloc/user_event.dart';
import 'package:mini_task/presentation/features/user_screen/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCase getUsersUseCase;

  UserBloc(this.getUsersUseCase) : super(UserInitial()) {
    on<LoadUsersEvent>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await getUsersUseCase();
        emit(UserLoaded(users));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}
