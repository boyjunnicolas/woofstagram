import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  static String id = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password = '';
  final _formKey = GlobalKey<FormState>();

  FocusNode myFocusNode = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();

  _onAlertButtonPressed(context) {
    Alert(
      context: context,
      type: AlertType.error,
      title: "Login Failed",
      desc: "Invalid email or password",
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Woofstagram",
              style: TextStyle(fontSize: 50.0, fontFamily: "Billabong"),
            ),
            Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TextFormField(
                        focusNode: myFocusNode,
                        onSaved: (value) => _email = value,
                        decoration: InputDecoration(
                          focusColor: Colors.grey,
                          labelText: "Email",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TextFormField(
                        onSaved: (value) => _password = value,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 250.0,
                      child: FlatButton(
                        padding: EdgeInsets.all(10.0),
                        onPressed: () {
                          _formKey.currentState.save();
                          if (_formKey.currentState.validate()) {
                            if (_email.toLowerCase() == 'doggo@gmail.com' &&
                                _password.toLowerCase() == '123456') {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.id);
                            } else {
                              print(_email);
                              print(_password);
                              _onAlertButtonPressed(context);
                            }
                          }
                        },
                        color: Colors.blue,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
