import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mini_task/domain/entities/image_entity.dart';
import 'package:mini_task/domain/usecase/image_usecase.dart';

part 'second_event.dart';
part 'second_state.dart';

class SecondBloc extends Bloc<SecondEvent, SecondState> {
  final ImageUsecase imageUsecase;

  SecondBloc(this.imageUsecase) : super(ImageLoading()) {
    on<GetImages>(onGetImages);
  }

  FutureOr<void> onGetImages(GetImages event, Emitter<SecondState> emit) async {
    emit(ImageLoading());
    try {
      final images = await imageUsecase.getImage();
      emit(ImageLoaded(images: images));
    } catch (e) {
      emit(ImageError(message: e.toString()));
    }
  }
}
