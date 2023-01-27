import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AppBar Demo')),
      body: Center(
          child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0), // mniejszy button
            child: Container(
              decoration: const BoxDecoration(
                //dekorowanie przycisku w tym wypadku zaokrąglenie
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text('Final View'),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: const Text('Custom Tab Bar'),
          ),
          const SizedBox(
            height: 10,
          ),
           ElevatedButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: const Text('Ten ustaw samemu'),
          ),
          
          
        ],
      )),
    );
  }
}