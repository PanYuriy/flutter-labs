import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Розклад занять';
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
  String group = 'КБ-45';

  List<String> groups = ['КБ-45', 'ІР-43', 'КІ-47', 'МТ-41'];

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
          child: DropdownButton<String>(
              hint: Text("Оберіть групу"),
              value: group,
              onChanged: (String? data) {
                setState(() {
                  group = data!;
                });
              },
              items: groups.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList()),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: ElevatedButton(
            onPressed: () {
              if (group == 'КБ-45') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CsSchedule(name, surname)));
              } else if (group == 'ІР-43') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IotSchedule(name, surname)));
              } else if (group == 'КІ-47') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CeSchedule(name, surname)));
              } else if (group == 'МТ-41') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MtSchedule(name, surname)));
              }
            },
            child: Text('Перейти далі'),
          ),
        )
      ],
    );
  }
}

class CsSchedule extends StatelessWidget {
  final String name;
  final String surname;
  const CsSchedule(this.name, this.surname, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Розклад занять'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Text(
              'Вітаю, $name $surname!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Розклад для групи КБ-45', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Понеділок, 6 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Безпека програмного забезпечення\nМихайлова О.О., 211 XIX н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('7 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Технології розслідування інцидентів інформаційної безпеки\nПобережник, 216а XX н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Вівторок, 4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Основи охорони праці та безпека життєдіяльності\nТокарєва М.О., 236 III н.к.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('6 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Тестування на проникнення у комп’ютеризованих системах і мережах\nПіскозуб А.З., 212 XIX н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('7 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Тестування програмного забезпечення\nЧервінка К.А., 212 XIX н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Середа, 1 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Тестування на проникнення у комп’ютеризованих системах і мережах\nПіскозуб А.З., 208 XIX н.к.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Тестування програмного забезпечення\nЧервінка К.А., 223 XIX н.к.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Четвер, 4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Основни охорони праці та безпека життєдіяльності\nТокарєва М.О., 313 III н.к.\nПрактична',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('5 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Основни охорони праці та безпека життєдіяльності\nТокарєва М.О., 307 III н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('П’ятниця, 6 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Аудит інформаційної безпеки\nГаранюк П.І., 215 XIX н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Субота, 3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Технології розслідування інцидентів інформаційної безпеки\nПобережник, 212 XIX н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ]),
        )));
  }
}

class IotSchedule extends StatelessWidget {
  final String name;
  final String surname;
  const IotSchedule(this.name, this.surname, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Розклад занять'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Text(
              'Вітаю, $name $surname!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Розклад для групи ІР-43', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Понеділок, 3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Контролери систем керування рухомими об’єктами\nСамотий В.В.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Електронні системи автомобілів\nМодла Р.М.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('5 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Контролери систем керування рухомими об’єктами\nСамотий В.В., 605в V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Вівторок, 3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Математичні методи дослідження операцій\nДзелендзяк У.Ю., 611в V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Проектування комп’ютерних систем рухомих об’єктів\nМодла Р.М., 611в V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Середа, 2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Основни охорони праці та безпека життєдіяльності\nТашак М.С., 302 III н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'SCADA-системи\nЛагун І.І., 611г V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Четвер, 3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Проектування комп’ютерних систем рухомих об’єктів\nМодла Р.М.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'SCADA-системи\nЛагун І.І.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('5 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Проектування комп’ютерних систем рухомих об’єктів\nМодла Р.М.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('П’ятниця, 2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Основни охорони праці та безпека життєдіяльності\nКіт Ю.В.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Математичні методи дослідження операцій\nДзелендзяк У.Ю.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ]),
        )));
  }
}

class CeSchedule extends StatelessWidget {
  final String name;
  final String surname;
  const CeSchedule(this.name, this.surname, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Розклад занять'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Text(
              'Вітаю, $name $surname!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Розклад для групи КІ-47', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Понеділок, 4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Діагностика комп’ютерних засобів\nКарбовник І.Д.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('5 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Архітектура спеціалізованих комп’ютерних систем\nТкачук Т.І., 907 V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('6 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Технології проектування комп’ютерних систем\nШпіцер А.С., 904а V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Вівторок, 1 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Захист інформації в комп’ютерних системах\nМиц А.М., 504 V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Архітектура спеціалізованих комп’ютерних систем\nТкачук Т.І., 907 V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Середа, 2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Проектування комп’ютерних засобів обробки сигналів та зображень\nВаврук Є.Я.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Архітектура спеціалізованих комп’ютерних систем\nТкачук Т.І., 904б V н.к.\nПрактична',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Четвер, 4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Технології проектування комп’ютерних систем\nШпіцер А.С.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('5 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Архітектура спеціалізованих комп’ютерних систем\nТкачук Т.І.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('6 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Проектування комп’ютерних засобів обробки сигналів та зображень\nВаврук Є.Я.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('П’ятниця, 2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Діагностика комп’ютерних засобів\nКлим Г.І.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Комп’ютерні засоби опрацювання сигналів\nВаврук Є.Я.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Захист інформації в комп’ютерних системах\nМорозов Ю.В.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ]),
        )));
  }
}

class MtSchedule extends StatelessWidget {
  final String name;
  final String surname;
  const MtSchedule(this.name, this.surname, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Розклад занять'),
        ),
        body: Center(
            child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            Text(
              'Вітаю, $name $surname!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Розклад для групи МТ-41', style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 20,
            ),
            Text('Понеділок, 3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Комп’ютерні та інформаційні мережі\nМикитин І.П.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Теорія керування в робототехніці, частина 1\nКочан О.В., 707 V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Вівторок, 1 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Операційні системи\nХома Ю.В., 713 V н.к.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Вимірювання в промисловості\nБубела Т.З., 712в V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Середа, 2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Вимірювання в промисловості\nБубела Т.З., 713 V н.к.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Комп’ютерний зір\nРишковський О.П.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Комп’ютерний зір\nРишковський О.П.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Text('Четвер, 1 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Робототехніка, частина 3\nПрохоренко С.В., 711 V н.к.\nЛекція',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('2 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Робототехніка, частина 3\nПрохоренко С.В., 702 V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('3 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Комп’ютерні та інформаційні мережі\nМикитин І.П.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
            Text('4 пара', style: TextStyle(fontSize: 18)),
            Container(
                height: 150,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: new Center(
                      child: new Text(
                        'Програмування мобільних пристроїв та смартфонів\nЯцишин С.П., 712в V н.к.\nЛабораторна',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ))),
          ]),
        )));
  }
}
