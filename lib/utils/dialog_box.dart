import 'package:flutter/material.dart';
import 'package:flutter_final_exam/utils/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 3, 107, 212),
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new list",
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),
                
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
        ],
        ),
      ),
    );
  }
}