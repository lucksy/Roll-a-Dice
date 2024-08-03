import 'package:flutter/material.dart';
import 'package:roll_a_dice/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer([
            Color.fromARGB(255, 23, 29, 33),
            Color.fromARGB(255, 246, 122, 113),
            Colors.green
          ]),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

// Animation gradient container for testing

// class AnimatedGradient extends StatefulWidget {
//   @override
//   _AnimatedGradientState createState() => _AnimatedGradientState();
// }

// class _AnimatedGradientState extends State<AnimatedGradient> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<Color?> animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this, duration: Duration(seconds: 10))..repeat();

//     animation = TweenSequence<Color?>(
//       [
//         TweenSequenceItem(
//           weight: 1.0,
//           tween: ColorTween(
//             begin: Colors.blue,
//             end: Color.fromARGB(255, 246, 122, 113),
//           ),
//         ),
//         TweenSequenceItem(
//           weight: 1.0,
//           tween: ColorTween(
//             begin: Color.fromARGB(255, 246, 122, 113),
//             end: Colors.green,
//           ),
//         ),
//         TweenSequenceItem(
//           weight: 1.0,
//           tween: ColorTween(
//             begin: Colors.green,
//             end: Colors.blue,
//           ),
//         ),
//       ],
//     ).animate(_controller);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _controller,
//       builder: (context, child) {
//         return Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 animation.value ?? Colors.blue,
//                 Colors.white,
//                 animation.value ?? Colors.green,
//               ],
//             ),
//           ),
//           child: child,
//         );
//       },
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100.0),
//           child: Container(
//             padding: const EdgeInsets.all(10.0),
//             color: Colors.black,
//             child: const Text(
//               'Hello World!', 
//               style: TextStyle(fontSize: 30, color: Colors.white),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }