import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg15/pages/home_page.dart';
import 'package:providerappg15/providers/counter_provider.dart';

class CounterPage extends StatelessWidget {
  // int counter = 0;
  @override
  Widget build(BuildContext context) {
    final counterProvider = context.watch<CounterProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Counter Page - Provider")),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
              // counterProvider.decrement(); no se usa de esta menra porque el botón NO necesita reconstruise por el cambio de contador o sea el uso de notifyListeners()
            },
            child: Icon(Icons.add),
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrement();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 12),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().reset();
            },
            child: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador: ${counterProvider.counter}",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => HomePage(counter: counter),
                //   ),
                // );
              },
              child: Text("Go home Page"),
            ),
          ],
        ),
      ),
    );
  }
}
