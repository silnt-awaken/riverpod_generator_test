import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_generator_test/home_page_controller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePageController = ref.watch(homePageControllerProvider(''));

    return Scaffold(
        body: SizedBox.expand(
      child: Center(
        child: homePageController.when(
          data: (homePageState) {
            if (homePageState.user == null) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No user'),
                  ElevatedButton(
                    onPressed: () async {
                      await ref
                          .read(homePageControllerProvider('').notifier)
                          .getUser();
                    },
                    child: const Text('Get user'),
                  ),
                ],
              );
            }

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('User: ${homePageState.user!.name}'),
              ],
            );
          },
          loading: () {
            return const CircularProgressIndicator();
          },
          error: (error, stackTrace) {
            return Text(error.toString());
          },
        ),
      ),
    ));
  }
}
