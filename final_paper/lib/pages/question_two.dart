import 'package:flutter/material.dart';

void main() {
  runApp(const MyQuestionTwo());
}

class MyQuestionTwo extends StatelessWidget {
  const MyQuestionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Question Two - ListTile Guide'),
          backgroundColor: const Color.fromARGB(255, 169, 201, 216),
        ),
        body: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(animals[index].image),
              ),
              title: Text(animals[index].name),
              subtitle: Text(animals[index].description),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('More Info about ${animals[index].name}'),
                        content: Text(animals[index].info),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Animal {
  final String image;
  final String name;
  final String description;
  final String info;

  Animal({
    required this.image,
    required this.name,
    required this.description,
    required this.info,
  });
}

List<Animal> animals = [
  Animal(
      image: 'assets/horse.png',
      name: 'Horse',
      description: 'A strong animal',
      info: 'Horses are known for their speed, strength, and beauty. They have been used for transportation, warfare, and sport for centuries.'),
  Animal(
      image: 'assets/cow.png',
      name: 'Cow',
      description: 'Provider of milk',
      info: 'Cows are domesticated ungulates that are typically kept for milk and meat. They are also used for draft power, hide, and dung.'),
  Animal(
      image: 'assets/camel.png',
      name: 'Camel',
      description: 'Comes with humps',
      info: 'Camels are well-adapted to survive in harsh desert environments. They can store water in their humps and go for long periods without drinking.'),
  Animal(
      image: 'assets/sheep.png',
      name: 'Sheep',
      description: 'Provides wool',
      info: 'Sheep are domesticated mammals that are raised for their wool and meat. They are social animals that live in herds.'),
  Animal(
      image: 'assets/goat.png',
      name: 'Goat',
      description: 'Some have horns',
      info: 'Goats are domesticated mammals that are known for their climbing abilities. They are raised for their milk, meat, and wool.'),
];
