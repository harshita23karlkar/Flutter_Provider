import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Provider/ListProvider.dart';
import 'package:state_management/Second.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Listprovider>(
      builder: (BuildContext context, Listprovider ListProviderModel,
              Widget? child) =>
          Scaffold(
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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ));
              },
              child: Text("Second"),
            ),
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
