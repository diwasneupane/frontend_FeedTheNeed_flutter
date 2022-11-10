import 'package:feedtheneed/screens/dashboard.dart';
import 'package:feedtheneed/screens/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100,
                    right: 100,
                    top: 100,
                    bottom: 30,
                  ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                    width: 150,
                  ),
                ),
                const Text(
                  "Hi, welcome Back",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Hello again you've been missed  ",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Exapmle@gmail.com',
                    hintStyle:
                        const TextStyle(fontSize: 16, color: Colors.grey),
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
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextField(
                  obscureText: _isHidden,
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password Here',
                    prefixIcon: const Icon(Icons.password),
                    suffix: InkWell(
                      onTap: _togglePasswordView,
                      child: const Icon(Icons.visibility),
                    ),
                    hintStyle:
                        const TextStyle(fontSize: 16, color: Colors.grey),
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
                Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: -15,
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      activeColor: Colors.black,
                      checkColor: Colors.white,
                      //only check box
                      value: check1, //unchecked
                      onChanged: (bool? value) {
                        //value returned when checkbox is clicked
                        setState(() {
                          check1 = value;
                        });
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Remember me?",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(fontSize: 17, color: Colors.redAccent),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      key: const ValueKey('btnLogin'),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Dashboard()),
                          // MaterialPageRoute(builder: (context) => WearOs()),
                        );
                      },
                      child: Text(
                        "Login".toUpperCase(),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 50, top: 20),
                    child: RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                            text: ' Do not have an account ? ',
                            style: TextStyle(color: Colors.grey)),
                        WidgetSpan(
                            child: GestureDetector(
                          child: const Text(
                            'REGISTER',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()),
                            );
                          },
                        ))
                      ]),
                    ))
              ],
            ),
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
