import 'package:flutter/material.dart';
import 'package:state_management/Second.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<int> list = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${list.last}"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Text("${list[index]}");
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondPage(list: list),
              ));
            },
            child: Text("Second"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            var lastValue = list.last;
            list.add(lastValue + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
