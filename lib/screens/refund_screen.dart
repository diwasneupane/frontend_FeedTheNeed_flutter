import 'package:feedtheneed/screens/helpandsupport.dart';
import 'package:flutter/material.dart';

class RefundRequest extends StatefulWidget {
  const RefundRequest({super.key});

  @override
  State<RefundRequest> createState() => _RefundRequestState();
}

class _RefundRequestState extends State<RefundRequest> {
  final _globalKey = GlobalKey<FormState>();

  final _RefundReasonController = TextEditingController();
  final _FeedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Refund Your Donation",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              Center(
                child: Form(
                  key: _globalKey,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 90.0,
                        backgroundColor: Colors.transparent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('assets/images/logo.png'),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const SizedBox(height: 40),
                      TextFormField(
                        controller: _RefundReasonController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your Refund Reason';
                          }
                          return null;
                        },
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.question_mark_outlined),
                          // icon: const Icon(Icons.calendar_today),
                          hintText: 'Enter Your Refund Reason',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          contentPadding: const EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _FeedbackController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Your FeedBack';
                          }
                          return null;
                        },
                        textAlign: TextAlign.left,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          icon: const Icon(Icons.feedback_outlined),
                          // icon: const Icon(Icons.calendar_today),
                          hintText: 'Enter Your FeedBack',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          contentPadding: const EdgeInsets.all(16),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          key: const ValueKey('btnUpdate'),
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xff41A2CD)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ))),
                          onPressed: () {
                            if (_globalKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Helpandsupport(),
                                ),
                              );
                            }
                          },
                          child: const Text(
                            "Refund Request",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
