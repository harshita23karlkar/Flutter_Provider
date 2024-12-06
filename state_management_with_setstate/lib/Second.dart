import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  List<int> list;
  SecondPage({super.key, required this.list});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list.last}"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.list.length,
              itemBuilder: (context, index) {
                return Text("${widget.list[index]}");
              },
            ),
          ),
          // ElevatedButton(
          //   onPressed: () {

          //   },
          //   child: Text("Second"),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            var lastValue = widget.list.last;
            widget.list.add(lastValue + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
