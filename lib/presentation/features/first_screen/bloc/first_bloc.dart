import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mini_task/domain/entities/posts_entity.dart';
import 'package:mini_task/domain/usecase/post_usecase.dart';

part 'first_event.dart';
part 'first_state.dart';

class FirstBloc extends Bloc<FirstEvent, FirstState> {
  final PostUsecase postUsecase;
  FirstBloc(this.postUsecase) : super(PostLoading()) {
    on<GetPost>(postLoading);
  }

  FutureOr<void> postLoading(GetPost event, Emitter<FirstState> emit) async {
    try {
      Future.delayed(Duration(seconds: 2));
      final postList = await postUsecase.getPost();

      emit(PostLoaded(postList: postList));
    } catch (e) {
      throw ('Error');
    }
  }
}
