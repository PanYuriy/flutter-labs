import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Соціальна мережа';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '<Ім’я>';
  String surname = '<Прізвище>';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
              decoration: const InputDecoration(hintText: 'Ім’я'),
              onChanged: (text) {
                setState(() {
                  name = text;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
              decoration: const InputDecoration(hintText: 'Прізвище'),
              onChanged: (text) {
                setState(() {
                  surname = text;
                });
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainPage(name, surname)));
            },
            child: Text('Перейти далі'),
          ),
        )
      ],
    );
  }
}

class MainPage extends StatelessWidget {
  final String name;
  final String surname;
  const MainPage(this.name, this.surname, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Соціальна мережа'),
      ),
      body: Center(
          child: Text(
        'Вітаю, $name $surname!',
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
