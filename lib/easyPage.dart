import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_flutter/riverpod.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Easy page'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref
                  .watch(riverpodEasyLevel)
                  .toString(), // watch is continuously listining
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodEasyLevel.notifier).state++;
              },
              label: Text('Add'),
              icon: Icon(Icons.add),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodEasyLevel.notifier).state--;
              },
              label: Text('Remove'),
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
