import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_task/core/di/di.dart';
import 'package:mini_task/core/navigation/routes/app_router.dart';
import 'package:mini_task/domain/usecase/image_usecase.dart';
import 'package:mini_task/domain/usecase/post_usecase.dart';
import 'package:mini_task/domain/usecase/user_usecase.dart';
import 'package:mini_task/presentation/features/first_screen/bloc/first_bloc.dart';
import 'package:mini_task/presentation/features/second_screen/bloc/second_bloc.dart';
import 'package:mini_task/presentation/features/user_screen/bloc/user_bloc.dart';

final appRouter = AppRouter();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Di().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => FirstBloc(di<PostUsecase>())),
        BlocProvider(create: (_) => SecondBloc(di<ImageUsecase>())),
        BlocProvider(create: (_) => UserBloc(di<GetUsersUseCase>())),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
