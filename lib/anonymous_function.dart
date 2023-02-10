import 'package:flutter/material.dart';

class AnonymouFunction extends StatefulWidget {
  const AnonymouFunction({super.key});

  @override
  State<AnonymouFunction> createState() => _AnonymouFunctionState();
}

String disply = '-------';

class _AnonymouFunctionState extends State<AnonymouFunction> {
  void text1() {
    print('Text 1');

    setState(() {
      disply = 'Text 1 Called';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Anonymous Function"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                disply,
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: text1, child:const Text('Text 1')),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        disply = 'Text 2 Called';
                      });
                    },
                    child: const Text("Text 2"),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          disply = 'Text 3 Called';
                        });
                      },
                      child: const Text('Text 3')),
                ],
              ),
            ]),
      ),
    );
  }
}
