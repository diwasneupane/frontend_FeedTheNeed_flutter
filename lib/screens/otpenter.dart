import 'package:feedtheneed/screens/passwordreset.dart';
import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: const Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 241, 241),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Verification',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Enter your OTP code number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 249, 249, 249),
                  // color: const Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(3, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: SizedBox(
                  height: 160,
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _textFieldOTP(first: true, last: false),
                              _textFieldOTP(first: false, last: false),
                              _textFieldOTP(first: false, last: false),
                              _textFieldOTP(first: false, last: true),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Otp validate',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              );
                            }
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF41A2CD)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Verify',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Didn't you receive any code?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Resend New Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF41A2CD),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 65,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Empty';
              }
              return null;
            },
            // autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 25),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 242, 241, 241),
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xFF41A2CD)),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
    );
  }
}
