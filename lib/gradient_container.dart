import 'package:flutter/material.dart';
import 'package:roll_a_dice/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}



//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomRight,
//           colors: [
//             Colors.blue,
//             Color.fromARGB(255, 246, 122, 113),
//             Colors.green
//           ],
//         ),
//       ),
//       child: Center(
//         child: Container(
//           padding: const EdgeInsets.all(10.0),
//           color: Colors.black,
//           child: const TextStyles('Hello World! Dart'),
//         ),
//       ),
//     );
//   }
// }