import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  String message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.email_outlined),
        title: Text('C O N T A C T - U S'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Write something',
                      focusedBorder: OutlineInputBorder()),
                  onSaved: (value) {
                    setState(() {
                      message = value!;
                    });
                  },
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return 'Please write something';
                    } else
                      return null;
                  }),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                    FirebaseFirestore.instance
                        .collection('travel')
                        .doc('user')
                        .set({'Feedback': message}, SetOptions(merge: true));

                    Navigator.pop(context);

                    final snackbar = SnackBar(content: Text('Message sent'));
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  child: Text("S A V E"))
            ],
          ),
        ),
      ),
    );
  }
}
