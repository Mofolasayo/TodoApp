import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/to_do_boxes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*bool isChecked = false;
  void handleCheckBoxChanged(value) {
    setState(() {
      isChecked = value;
    });
  }*/
  List todoList = [
    ["Live", false],
    ["Laugh", true],
    ["Love", true],
  ];
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
    });
  }

  void newTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            backgroundColor: Colors.deepPurple[100],
            content: SizedBox(
              height: 130,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.deepPurple,
                      )),
                      hintText: "Create a new task.",
                      hintStyle: TextStyle(color: Colors.deepPurple[400]),
                    ),
                  ),
                  //const SizedBox(height: 15),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 10, right: 10),
                    child: Row(
                      children: [
                        const SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.deepPurple[100],
                              backgroundColor: Colors.deepPurple),
                          child: const Text(
                            'SAVE',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.deepPurple[100],
                              backgroundColor: Colors.deepPurple),
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text(
          'To Do App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoBoxes(
            taskName: todoList[index][0],
            isChecked: todoList[index][1],
            onCheckboxChanged: (value) => checkBoxChanged(value, index),
          );
        },
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.deepPurple, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.white),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, color: Colors.white),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings, color: Colors.white),
          label: 'Settings',
        )
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: newTask,
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
