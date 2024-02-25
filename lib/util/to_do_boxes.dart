import 'package:flutter/material.dart';

class TodoBoxes extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function(bool?)? onCheckboxChanged;

  TodoBoxes({
    super.key,
    required this.taskName,
    required this.isChecked,
    required this.onCheckboxChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 40),
        child: Container(
            width: 380,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(children: [
              Checkbox(
                  value: isChecked,
                  activeColor: Colors.deepPurple[700],
                  onChanged: onCheckboxChanged),
              Text(taskName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 2.5,
                      decoration: isChecked
                          ? TextDecoration.lineThrough
                          : TextDecoration.none)),
              Container(
                child: (IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.white,
                  ),
                )),
              )
            ])));
  }
}
/*
                    }*/
/*
Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(children: [
            Container(
                child: Row(
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: Colors.deepPurple[700],
                    onChanged: (newBool) {
                      setState(() {
                        isChecked = newBool!;
                      });
                    }),
                Text('Live',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        decorationThickness: 2.5,
                        decoration: isChecked
                            ? TextDecoration.lineThrough
                            : TextDecoration.none)),
              ],
            )),
            const SizedBox(height: 20.0),
            Container(
                width: 380,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(
                        value: isChecked1,
                        activeColor: Colors.deepPurple[700],
                        onChanged: (newBool) {
                          setState(() {
                            isChecked1 = newBool!;
                          });
                        }),
                    Text('Laugh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 2.5,
                            decoration: isChecked1
                                ? TextDecoration.lineThrough
                                : TextDecoration.none)),
                  ],
                )),
            const SizedBox(height: 20.0),
            Container(
                width: 380,
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Checkbox(
                        value: isChecked2,
                        activeColor: Colors.deepPurple[700],
                        onChanged: (newBool) {
                          setState(() {
                            isChecked2 = newBool!;
                          });
                        }),
                    Text('Love',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 2.5,
                            decoration: isChecked2
                                ? TextDecoration.lineThrough
                                : TextDecoration.none)),
                  ],
                )),
          ]),
        ),
      ),*/

