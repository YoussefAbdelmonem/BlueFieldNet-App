import 'package:bluefieldnet/shared/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:SafeArea(
          child: Center(
            child: Column(
              children: [
                TextWidget("MessagesScreen")
              ],
            ),
          ),
        )

    );
  }
}
