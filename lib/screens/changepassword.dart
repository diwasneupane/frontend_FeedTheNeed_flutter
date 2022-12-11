import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _globalKey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool success = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
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
          "Change Password",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                key: _globalKey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: TextFormField(
                            key: const ValueKey('password'),
                            validator: (value) {
                              if (success == false) {
                                return 'Please fullfill necessary requirements';
                              }
                              return null;
                            },
                            obscureText: _isHidden,
                            textAlign: TextAlign.left,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Enter Your current Password',
                              prefixIcon: const Icon(Icons.password),
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: const Icon(Icons.visibility),
                              ),
                              hintStyle: const TextStyle(
                                  fontSize: 16, color: Colors.grey),
                              floatingLabelStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(16),
                            ),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (success == false) {
                              return 'Please fullfill necessary requirements';
                            }
                            return null;
                          },
                          obscureText: _isHidden,
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Enter your new Password',
                            prefixIcon: const Icon(Icons.password),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: const Icon(Icons.visibility),
                            ),
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Colors.grey),
                            floatingLabelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.all(16),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (success == false) {
                              return 'Please fullfill necessary requirements';
                            }
                            return null;
                          },
                          obscureText: _isHidden,
                          textAlign: TextAlign.left,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Re-Enter your new Password',
                            prefixIcon: const Icon(Icons.password),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: const Icon(Icons.visibility),
                            ),
                            hintStyle: const TextStyle(
                                fontSize: 16, color: Colors.grey),
                            floatingLabelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.all(16),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 150,
                          child: ElevatedButton(
                            key: const ValueKey('btnUpdate'),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xff41A2CD)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ))),
                            onPressed: () {
                              if (_globalKey.currentState!.validate()) {}
                            },
                            child: const Text(
                              "Update",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
