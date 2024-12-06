import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/ListProvider.dart';

class SecondPage extends StatefulWidget {
  SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Listprovider>(
      builder: (context, ListProviderModel, child) => Scaffold(
        appBar: AppBar(
          title: Text("${ListProviderModel.list.last}"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: ListProviderModel.list.length,
                itemBuilder: (context, index) {
                  return Text("${ListProviderModel.list[index]}");
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
            ListProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
