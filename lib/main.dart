import 'package:curescience/AppRoutes.dart';
import 'package:curescience/company.dart';
import 'package:flutter/material.dart';

import 'dynamiclinks.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = ' ';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      onGenerateRoute: RouteManager.generateRoute,
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to SmartHub',
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Have Code',
                  style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.w500 ,
                  color: Colors.black54),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Code',
                ),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'OR',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.w500 ,
                      color: Colors.black54),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),

                  labelText: 'Enter PhoneNumber',
                ),
              ),
            ),
            // TextButton(
            //   onPressed: () {
            //     //forgot password screen
            //   },
            //   child: const Text('Forgot Password or Code',
            //     style: TextStyle(color: Colors.blueGrey),
            //   ) ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      ),
                  child: const Text('Submit',
                        style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    print(nameController.text);
                    if(nameController.text == "C1"){
                    Navigator.pushNamed(context,AppRoutes.companyScreen);}
                    else if(nameController.text == "C2"){
                    Navigator.pushNamed(context,AppRoutes.companyScreen2);
                    }
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have Code?'),
                TextButton(
                  child: const Text(
                    'Create one',
                    style: TextStyle(fontSize: 20,
                    color: Colors.grey),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context,AppRoutes.signUp);
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ));
  }
}