import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'Controllers.dart';

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> _isLoading = useState<bool>(true);
    final countProvider = useProvider(Providers.countProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Playground'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                        'test ' + countProvider.state.toString(),
                        style: TextStyle(fontSize: 50),
                      ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          color: Colors.blue.withOpacity(0.2),
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  
                  countProvider.increase();
                },
                child: Text('Add countProvider!'),
              ),
              SizedBox(width: 10,)
              ,ElevatedButton(
                onPressed: () {
                  _isLoading.value = !_isLoading.value;
                  
                },
                child: Text('Toggle _isLoading useState'),
              )
            ],
          )),
    );
  }
}
