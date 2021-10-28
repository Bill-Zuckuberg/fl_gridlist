import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gridlist',
      home: BuildGridList(),
    );
  }
}

class BuildGridList extends StatelessWidget {
  const BuildGridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
            100,
            (index) => Center(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 3)),
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Item ${index + 1}',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                )),
      ),
    );
  }
}
