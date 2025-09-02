import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_task/presentation/features/second_screen/bloc/second_bloc.dart';

@RoutePage()
class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    super.initState();

    context.read<SecondBloc>().add(GetImages());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Photos')),
      body: BlocBuilder<SecondBloc, SecondState>(
        builder: (context, state) {
          if (state is ImageLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ImageLoaded) {
            final images = state.images;

            return GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                final image = images[index];
                return Card(
                  child: Image(image: NetworkImage(image.thumbnailUrl)),
                );
              },
            );
          } else if (state is ImageError) {
            return Center(child: Text(state.message));
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
