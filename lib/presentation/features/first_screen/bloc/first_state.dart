part of 'first_bloc.dart';

@immutable
sealed class FirstState {}

class PostLoaded extends FirstState {
  final List<PostsEntity> postList;

  PostLoaded({required this.postList});
}

class PostLoading extends FirstState {}
