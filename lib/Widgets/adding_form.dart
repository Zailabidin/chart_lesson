import 'package:flutter/material.dart';

class AddingForm extends StatelessWidget {
  const AddingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(),
        TextField(),
        Row(
          children: [
            // DanePicker
          ],
        ),
        ElevatedButton(onPressed: () {}, child: Text('Добавить'))
      ],
    );
  }
}
