import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:noise_mix/contants/colors.dart';
import 'package:noise_mix/contants/shadow.dart';
import 'package:noise_mix/widgets/animations/avatar.dart';
import 'package:noise_mix/widgets/animations/dots_loading.dart';
import 'package:noise_mix/widgets/appbar/appbar_empty.dart';
import 'package:noise_mix/widgets/layout/blurry_container.dart';
import 'package:noise_mix/widgets/layout/glass.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var lst = [
      'https://cdn.dribbble.com/userupload/4719016/file/original-f1fc04913ceef51af20890a5bd8500cd.jpg?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/userupload/5335612/file/original-35849eb72bf3413405ac0285d782ac7d.png?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png',
      'https://cdn.dribbble.com/users/851350/screenshots/6390413/dusk_4x.png?compress=1&resize=1000x750&vertical=top',
      'https://cdn.dribbble.com/userupload/5335612/file/original-35849eb72bf3413405ac0285d782ac7d.png?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png',
      'https://cdn.dribbble.com/userupload/4719016/file/original-f1fc04913ceef51af20890a5bd8500cd.jpg?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/userupload/5335612/file/original-35849eb72bf3413405ac0285d782ac7d.png?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png',
      'https://cdn.dribbble.com/userupload/4719016/file/original-f1fc04913ceef51af20890a5bd8500cd.jpg?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/userupload/5335612/file/original-35849eb72bf3413405ac0285d782ac7d.png?compress=1&resize=1600x1200',
      'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png',
    ];

    Map<String, String> list = {
      'https://cdn.dribbble.com/userupload/4719016/file/original-f1fc04913ceef51af20890a5bd8500cd.jpg?compress=1&resize=1600x1200':
          'Chill',
      'https://cdn.dribbble.com/userupload/5335612/file/original-35849eb72bf3413405ac0285d782ac7d.png?compress=1&resize=1600x1200':
          'Rain For Work',
      'https://cdn.dribbble.com/users/3178178/screenshots/7013817/media/2c5f58775da892b01b30e83e58b8191d.png':
          'Love Beatiful',
      'https://cdn.dribbble.com/users/851350/screenshots/6390413/dusk_4x.png?compress=1&resize=1000x750&vertical=top':
          'Hard Work',
    };
    return Scaffold(
      // appBar: const AppBarEmpty(),
      // backgroundColor: const Color(0xff253334),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://64.media.tumblr.com/3c7bdc5b73d108e9bd570b00e6b872fb/8371c71715daf783-c0/s500x750/f2b17bf5adf675886a90828a59062c5cae6335f3.gifv'),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: BlurryContainer(
                    blur: 10,
                    color: AppColors.vWhite.withOpacity(0.6),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Column(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            AvatarAnimation(),
                            const DotsLoader(),
                          ],
                        )),
                        Icon(Icons.shuffle_rounded),
                        Icon(Icons.pause),
                        Icon(Icons.cabin),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(12).copyWith(top: 0),
                child: ListView.separated(
                  itemCount: lst.length,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 12,
                  ),
                  itemBuilder: (context, index) {
                    var item = lst[index];
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: NetworkImage(
                            item,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: 200,
                      height: 200,
                      child: Center(
                        child: Text(
                          '$index',
                          style: const TextStyle(
                            color: AppColors.vWhite,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
