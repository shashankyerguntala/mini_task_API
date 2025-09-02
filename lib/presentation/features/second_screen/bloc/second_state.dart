part of 'second_bloc.dart';

@immutable
sealed class SecondState {}

final class SecondInitial extends SecondState {}

class ImageLoading extends SecondState {}

class ImageLoaded extends SecondState {
  final List<ImageEntity> images;

  ImageLoaded({required this.images});
}

class ImageError extends SecondState {
  final String message;

  ImageError({required this.message});
}
