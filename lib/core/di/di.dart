import 'package:get_it/get_it.dart';

import 'package:mini_task/data/data_sources/remote_data_sources/posts_data_sources.dart';
import 'package:mini_task/data/data_sources/remote_data_sources/image_data_sources.dart';
import 'package:mini_task/data/data_sources/remote_data_sources/user_data_sources.dart';

import 'package:mini_task/data/repository_impl/post_repo_impl.dart';
import 'package:mini_task/data/repository_impl/image_repo_impl.dart';
import 'package:mini_task/data/repository_impl/user_repo_impl.dart';

import 'package:mini_task/domain/repository/post_repository.dart';
import 'package:mini_task/domain/repository/image_repository.dart';
import 'package:mini_task/domain/repository/user_repository.dart';
import 'package:mini_task/domain/usecase/post_usecase.dart';
import 'package:mini_task/domain/usecase/image_usecase.dart';
import 'package:mini_task/domain/usecase/user_usecase.dart';

import 'package:mini_task/presentation/features/user_screen/bloc/user_bloc.dart';

final di = GetIt.instance;

class Di {
  Future<void> init() async {
    di.registerLazySingleton(() => PostUsecase(postRepository: di()));
    di.registerLazySingleton<PostRepository>(
      () => PostRepoImpl(postsDataSources: di()),
    );
    di.registerLazySingleton<PostsDataSources>(() => PostsDataSources());

    di.registerLazySingleton(() => ImageUsecase(imageRepository: di()));
    di.registerLazySingleton<ImageRepository>(
      () => ImageRepoImpl(imageDataSources: di()),
    );
    di.registerLazySingleton<ImageDataSources>(() => ImageDataSources());

    di.registerLazySingleton(() => GetUsersUseCase(di()));
    di.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(remoteDataSource: di()),
    );
    di.registerLazySingleton<UserRemoteDataSource>(
      () => UserRemoteDataSource(),
    );
    di.registerFactory(() => UserBloc(di()));
  }
}
