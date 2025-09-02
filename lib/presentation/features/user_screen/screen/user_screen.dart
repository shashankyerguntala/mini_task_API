import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_task/core/di/di.dart';
import 'package:mini_task/presentation/features/user_screen/bloc/user_bloc.dart';
import 'package:mini_task/presentation/features/user_screen/bloc/user_event.dart';
import 'package:mini_task/presentation/features/user_screen/bloc/user_state.dart';

@RoutePage()
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  late UserBloc userBloc;

  @override
  void initState() {
    super.initState();
    userBloc = di<UserBloc>();
    userBloc.add(LoadUsersEvent());
  }

  @override
  void dispose() {
    userBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: BlocBuilder<UserBloc, UserState>(
        bloc: userBloc,
        builder: (context, state) {
          if (state is UserLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserLoaded) {
            final users = state.users;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(child: Text(user.name[0])),
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  trailing: Text(user.phone),
                );
              },
            );
          } else if (state is UserError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
