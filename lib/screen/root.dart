import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_mix/screen/home/home_screen.dart';
import 'package:noise_mix/widgets/bottom_nav/animated_bottom_bar.dart';

final rootIndexProvider = StateProvider<int>((ref) => 0);

class Root extends ConsumerStatefulWidget {
  const Root({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootState();
}

class _RootState extends ConsumerState<Root> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (ref.watch(rootIndexProvider) != 0) {
          ref.read(rootIndexProvider.notifier).update(
                (state) => 0,
              );
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: ref.watch(rootIndexProvider),
          children: [
            const HomeScreen(),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 65,
          child: AnimatedBottomAppBar(
            currentActiveIndex: ref.watch(rootIndexProvider),
            onTabSelected: (value) =>
                ref.read(rootIndexProvider.notifier).update(
                      (state) => value,
                    ),
          ),
        ),
      ),
    );
  }
}
