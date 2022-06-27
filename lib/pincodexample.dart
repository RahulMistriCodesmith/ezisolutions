import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final _pinCodeController = TextEditingController();
  final _errorController = StreamController<ErrorAnimationType>();
  final _validPinCode = '123456';

  @override
  void dispose() {
    _textController.dispose();
    _errorController.close();
    super.dispose();
  }

  String _validateText(String text) {
    if (text != _validPinCode) {
      _textController.clear(); // This works just fine.
      return 'Mismatch';
    }
    return null;
  }

  String _validatePinCode(String pinCode) {
    if (pinCode.isNotEmpty && pinCode.length == 6) {
      if (pinCode != _validPinCode) {
        _pinCodeController.clear(); //! This is not working and causes error.
        _errorController.add(ErrorAnimationType.shake);
        return 'Mismatch';
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _textController,
                validator: (value) {
                  return _validateText(value);
                },
                onFieldSubmitted: (value) {
                  _formKey.currentState.validate();
                },
              ),
              PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: true,
                keyboardType: TextInputType.number,
                animationType: AnimationType.scale,
                errorAnimationController: _errorController,
                controller: _pinCodeController,
                validator: (value) {
                  print('Validated PIN code input { value: $value }');
                  return _validatePinCode(value);
                },
                onChanged: (value) {
                  print('Changed PIN code input { value: $value }');
                },
                onCompleted: (value) {
                  print('Completed PIN code input { value: $value }');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
