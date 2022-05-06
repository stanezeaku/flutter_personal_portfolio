// Copyright (c) 2022 Stanley Ezeaku

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import '../../constants.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerEmail;
  late TextEditingController _controllerSubject;
  late TextEditingController _controllerMessage;

  void clearText() {
    _controllerName.clear();
    _controllerEmail.clear();
    _controllerSubject.clear();
    _controllerMessage.clear();
  }

  Future sendEmail() async {
    const serviceId = 'service_6g1ryfj';
    const templateId = 'template_k2ed3aq';
    const userId = 'vcpdDSDuvCUOaNmdn';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      await http.post(
        url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': _controllerName.text,
            'user_email': _controllerEmail.text,
            'user_subject': _controllerSubject.text,
            'user_message': _controllerMessage.text,
          },
        }),
      );

      showSnackBar('Sent Successfully');
      clearText();
    } catch (e) {
      showSnackBar(e.toString());
    }
  }

  @override
  void initState() {
    _controllerName = TextEditingController();
    _controllerEmail = TextEditingController();
    _controllerSubject = TextEditingController();
    _controllerMessage = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controllerMessage.dispose();
    _controllerEmail.dispose();
    _controllerName.dispose();
    _controllerSubject.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _controllerName,
            textInputAction: TextInputAction.next,
            decoration: simpleInputIconText(
              "Full Name",
              const Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controllerEmail,
            decoration: simpleInputIconText(
              "Email",
              const Icon(
                Icons.email_outlined,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            controller: _controllerSubject,
            decoration: simpleInputIconText(
              "Subject",
              const Icon(
                Icons.subject_outlined,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
            controller: _controllerMessage,
            maxLines: 4,
            decoration: simpleInputIconText(
              "Write your message here",
              const Icon(
                Icons.message_outlined,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              sendEmail();
            },
            child: const Text(
              "SEND",
              style: TextStyle(fontFamily: 'medium'),
            ),
            style: simpleButton(),
          ),
        ],
      ),
    );
  }

  void showSnackBar(String text) {
    final snackBar = SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
      ),
      backgroundColor: bgColor,
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

simpleInputIconText(text, icn) {
  return InputDecoration(
      hintText: "$text",
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15)),
      prefixIcon: icn,
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16));
}

simpleButton() {
  return ElevatedButton.styleFrom(
    elevation: 0,
    primary: primaryColor,
    onPrimary: Colors.black,
    minimumSize: const Size.fromHeight(50),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
