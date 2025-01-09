import 'package:flutter/material.dart';
import 'package:learn_provider/Provider/count_provider.dart';
import 'package:provider/provider.dart';


class CountScreen extends StatefulWidget {
   CountScreen({super.key});



  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Consumer<CountProvider>(
              builder: (context , value,child) {
                return Text(value.count.toString() ,style: (TextStyle(fontSize: 24,)),);
              }
          )),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();


        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


