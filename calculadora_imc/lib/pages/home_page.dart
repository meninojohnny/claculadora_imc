import 'package:flutter/material.dart';
import '../models/people_model.dart';

import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  PeopleModel controller = PeopleModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-1, 1),
                    spreadRadius: .1,
                    blurRadius: 10,
                    color: const Color.fromARGB(202, 0, 0, 0),
                  )
                ],
              ),
              child: Column(
                children: [
                  CustomTextField(
                      setValue: controller.setPeso, hintText: 'Peso'),
                  CustomTextField(
                      setValue: controller.setAltura, hintText: 'Altura'),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (controller.altura != 0 && controller.peso != 0) {
                          controller.imc();
                        }
                      });
                    },
                    child: Text('Calcular'),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IMC: ${(controller.controller) ? controller.imc().toStringAsFixed(2) : ''}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'STATUS: ${controller.mostrarImc()}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
