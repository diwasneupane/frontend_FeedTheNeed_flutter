import 'package:feedtheneed/model/user.dart';
import 'package:feedtheneed/repositories/user_repository.dart';
import 'package:feedtheneed/screens/login.dart';
import 'package:feedtheneed/utils/showmessages.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  final _globalKey = GlobalKey<FormState>();
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
      child: SingleChildScrollView(
        child: Form(
          key: _globalKey,
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
                "Create an account",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Help with ease of button",
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
              TextFormField(
                controller: _emailController,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Example@gmail.com',
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
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
                  "Phone Number",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ),
              TextFormField(
                controller: _phoneController,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '+977 | Enter your phone number here',
                  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
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
              TextFormField(
                controller: _passwordController,
                obscureText: _isHidden,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password Here',
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  prefixIcon: const Icon(Icons.password),
                  suffix: InkWell(
                    onTap: _togglePasswordView,
                    child: const Icon(Icons.visibility),
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
              // Checkbox(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(2.0),
              //     ),
              //     activeColor: Colors.transparent,
              //     checkColor: Colors.black,
              //     //only check box
              //     value: check1, //unchecked
              //     onChanged: (bool? value) {
              //       //value returned when checkbox is clicked
              //       setState(() {
              //         check1 = value;
              //       });
              //     }),
              // const Text("ejknkj")
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
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
                      if (_globalKey.currentState!.validate()) {
                        User user = User(
                          email: _emailController.text,
                          phone: _phoneController.text,
                          password: _passwordController.text,
                        );
                        _registerUser(user);
                      }
                    },
                    child: Text(
                      "Register".toUpperCase(),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: ' already have an account ? ',
                          style: TextStyle(color: Colors.grey)),
                      WidgetSpan(
                          child: GestureDetector(
                        child: const Text(
                          'LOG IN',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                      ))
                    ]),
                  ))
            ],
          ),
        ),
      ),
    ));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  _registerUser(User user) async {
    bool isSignUp = await UserRepository().registerUser(user);
    _displayMessage(isSignUp);
  }

  _displayMessage(bool isSignUp) {
    if (isSignUp) {
      displaySuccessMessage(context, "register success");
      Navigator.pushNamed(context, '/login');
    } else {
      displayErrorMessage(context, "register Failed");
    }
  }

  // void _showToast(BuildContext context) {
  //   final scaffold = ScaffoldMessenger.of(context);
  //   scaffold.showSnackBar(
  //     const SnackBar(
  //       content: Text(
  //         'Register Sucessfully',
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   );
  // }
}
