// import 'package:bluefieldnet/core/config/pdf/test.dart';
// import 'package:flutter/material.dart';
// import 'package:printing/printing.dart';

// class Button extends StatelessWidget {
//   const Button({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: MaterialButton(
//         onPressed: () {
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => Column(
//                     children: [
//                       Expanded(
//                         child: PdfPreview(
//                           dpi: 300.0,
//                           build: (format) async =>
//                               await ReleaseOfProducer.printScreen(),
//                         ),
//                       ),
//                     ],
//                   )));
//         },
//         color: Colors.cyan,
//       )),
//     );
//   }
// }
