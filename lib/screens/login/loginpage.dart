import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        color: Colors.transparent,
        child: Column(
          children: [
            Expanded(
                child: Image(
              image: AssetImage("assets/img/login.png"),
            )),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Welcome"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                      "Welcome to Organico Mobile Apps. Please fill in the field below to sign in."),
                  SizedBox(
                    height: 20,
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                            width: MediaQuery.of(context).size.width * 0.061),
                      ),
                    ),
                    initialCountryCode: 'UZ',
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  const cSizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.061,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                      // color: Colors.green,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.061,
                                width: 1,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Expanded(flex: 7, child: Text("data")),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
