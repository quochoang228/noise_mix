import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noise_mix/contants/colors.dart';
import 'package:noise_mix/widgets/layout/blurry_container.dart';
import 'package:rive/rive.dart';

class AnimatedBottomAppBar extends StatefulWidget {
  const AnimatedBottomAppBar({
    Key? key,
    required this.currentActiveIndex,
    required this.onTabSelected,
  }) : super(key: key);
  final int currentActiveIndex;
  final ValueChanged<int> onTabSelected;

  @override
  State<AnimatedBottomAppBar> createState() => _AnimatedBottomAppBarState();
}

class _AnimatedBottomAppBarState extends State<AnimatedBottomAppBar> {
  SMIInput<bool>? _landInput;
  SMIInput<bool>? _composerInput;
  SMIInput<bool>? _profileInput;
  SMIInput<bool>? _fireInput;
  SMIInput<bool>? _mediationInput;
  Artboard? _landArtboard;
  Artboard? _composerArtboard;
  Artboard? _profileArtboard;
  Artboard? _mediationArtboard;
  Artboard? _fireArtboard;

  @override
  void initState() {
    super.initState();
    // land
    rootBundle.load("assets/riv/land.riv").then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, "State Machine 1");

      if (controller != null) {
        artboard.addController(controller);
        _landInput = controller.findInput<bool>("status");
        _landInput!.value = true;
      }
      _landArtboard = artboard;
    });
    // composer
    rootBundle.load("assets/riv/composer.riv").then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, "State Machine 1");

      if (controller != null) {
        artboard.addController(controller);
        _composerInput = controller.findInput<bool>("status");
        _composerInput!.value = true;
      }
      _composerArtboard = artboard;
    });
    // profile
    rootBundle.load("assets/riv/profile.riv").then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, "State Machine 1");

      if (controller != null) {
        artboard.addController(controller);
        _profileInput = controller.findInput<bool>("status");
        _profileInput!.value = true;
      }
      _profileArtboard = artboard;
    });
    // Fire
    rootBundle.load("assets/riv/fire.riv").then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, "State Machine 1");

      if (controller != null) {
        artboard.addController(controller);
        _fireInput = controller.findInput<bool>("status");
        _fireInput!.value = true;
      }
      _fireArtboard = artboard;
    });
    // Mediation
    rootBundle.load("assets/riv/mediation.riv").then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, "State Machine 1");

      if (controller != null) {
        artboard.addController(controller);
        _mediationInput = controller.findInput<bool>("status");
        _mediationInput!.value = true;
      }
      _mediationArtboard = artboard;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      blur: 20,
      color: AppColors.vBlack.withOpacity(0.3),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Color(0xff313248),
              width: 0.5,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // fire
            BottomAppBarItem(
              artboard: _fireArtboard,
              currentIndex: widget.currentActiveIndex,
              tabIndex: 0,
              input: _fireInput,
              text: "Noise",
              cb: () => widget.onTabSelected(0),
            ),
            // const Gap(5),
            // land
            // BottomAppBarItem(
            //   artboard: _landArtboard,
            //   currentIndex: widget.currentActiveIndex,
            //   tabIndex: 1,
            //   input: _landInput,
            //   text: "Sounds",
            //   cb: () => widget.onTabSelected(0),
            // ),
            // const Gap(5),
            // Mediation
            BottomAppBarItem(
              artboard: _mediationArtboard,
              currentIndex: widget.currentActiveIndex,
              tabIndex: 1,
              input: _mediationInput,
              text: "Meditation",
              cb: () => widget.onTabSelected(1),
            ),
            // const Gap(5),
            // // composer
            // BottomAppBarItem(
            //     artboard: _composerArtboard,
            //     currentIndex: currentActiveIndex,
            //     text: "Composer",
            //     tabIndex: 3,
            //     input: _composerInput,
            //     cb: () => setState(() {
            //           currentActiveIndex = 3;
            //         })),
            // const Gap(5),
            // Profile
            BottomAppBarItem(
              artboard: _profileArtboard,
              currentIndex: widget.currentActiveIndex,
              text: "Profile",
              tabIndex: 2,
              input: _profileInput,
              cb: () => widget.onTabSelected(2),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomAppBarItem extends StatelessWidget {
  const BottomAppBarItem(
      {Key? key,
      required this.artboard,
      required this.cb,
      required this.currentIndex,
      required this.tabIndex,
      required this.text,
      required this.input,
      this.activeColor = Colors.white})
      : super(key: key);
  final Artboard? artboard;
  final VoidCallback cb;
  final int currentIndex;
  final int tabIndex;
  final String text;
  final SMIInput<bool>? input;
  final Color? activeColor;

  @override
  Widget build(BuildContext context) {
    if (input != null) {
      input!.value = currentIndex == tabIndex;
    }
    return Flexible(
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            // width: 100,
            // height: 100,
            child: GestureDetector(
              onTap: cb,
              child: artboard == null
                  ? const SizedBox()
                  : Rive(artboard: artboard!),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 10,
                // fontWeight: FontWeight.w500,
                color: currentIndex == tabIndex
                    ? Colors.white
                    // ? const Color(0xFF020828)
                    : Color(0xff595A61),
              ),
            ),
          ),
          // SizedBox(
          //   height: 4,
          // )
        ],
      ),
    );
  }
}
