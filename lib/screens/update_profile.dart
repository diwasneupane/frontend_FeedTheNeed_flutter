import 'package:feedtheneed/model/profile.dart';
import 'package:feedtheneed/repositories/user_repository.dart';
import 'package:feedtheneed/screens/navigation.dart';
import 'package:feedtheneed/utils/showmessages.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  // final _dobController = TextEditingController();

  final _globalKey = GlobalKey<FormState>();
  TextEditingController dateinput = TextEditingController();
  //text editing controller for text field

  UserProfile? user;
  @override
  void initState() {
    getUserDetails();
    super.initState();
  }

  void getUserDetails() async {
    UserProfile? user1 = await UserRepository().getUserDetails();

    setState(() {
      user = user1!;
      debugPrint(user!.address.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 247, 247, 247),

      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Navigation()),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Update Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              if (user != null)
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48.0),
                        boxShadow: const [
                          BoxShadow(color: Colors.white70, blurRadius: 20.0)
                        ]),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: const Color(0xFF41A2CD),
                      child: Padding(
                        padding: const EdgeInsets.all(3), // Border radius
                        child: ClipOval(
                            child: Image.network(
                                'https://pyxis.nymag.com/v1/imgs/51b/28a/622789406b8850203e2637d657d5a0e0c3-avatar-rerelease.1x.rsquare.w1400.jpg')),
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 10,
              ),
              if (user != null)
                Text(
                  user!.email!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (user != null)
                Text(
                  user!.username == null ? "____" : "${user!.username}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.blueGrey,
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _firstnameController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person),
                        // icon: const Icon(Icons.calendar_today),
                        hintText: 'Enter first name.Eg: Jhon',
                        hintStyle: const TextStyle(
                          fontSize: 16,
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
                      controller: _lastnameController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person),
                        hintText: 'Enter last name.Eg: Snow',
                        hintStyle: const TextStyle(
                          fontSize: 16,
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
                      height: 20, //<-- SEE HERE
                    ),
                    TextFormField(
                      controller: _usernameController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person_add_alt_1_outlined),
                        hintText: 'What about your username?',
                        hintStyle: const TextStyle(
                          fontSize: 16,
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
                      height: 20, //<-- SEE HERE
                    ),
                    TextFormField(
                      controller: _addressController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.place),
                        hintText: 'What is your Address?',
                        hintStyle: const TextStyle(
                          fontSize: 16,
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
                      height: 20, //<-- SEE HERE
                    ),
                    TextFormField(
                      controller: _phoneController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.phone),
                        hintText: 'what is your phone number?',
                        hintStyle: const TextStyle(
                          fontSize: 16,
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
                      height: 20, //<-- SEE HERE
                    ),
                    TextFormField(
                      // controller: _dobController,
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.calendar_today),
                        //icon of text field
                        hintText: "Enter Date Of Birth",
                        hintStyle: const TextStyle(
                          fontSize: 16,
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
                      controller:
                          dateinput, //editing controller of this TextField

                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            dateinput.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
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
                              UserProfile user = UserProfile(
                                firstname: _firstnameController.text,
                                lastname: _lastnameController.text,
                                username: _usernameController.text,
                                phone: _phoneController.text,
                                address: _addressController.text,
                                dob: dateinput.text,
                              );
                              _updateUser(user);
                            }
                          },
                          child: Text(
                            "Register".toUpperCase(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _updateUser(UserProfile user) async {
    bool isSignUp = await UserRepository().updateUserProfile(user);
    _displayMessage(isSignUp);
  }

  _displayMessage(bool isSignUp) {
    if (isSignUp) {
      displaySuccessMessage(context, "updated success");
      Navigator.pushNamed(context, '/navigation');
    } else {
      displayErrorMessage(context, "update Failed");
    }
  }

  // void _showToast(BuildContext context) {
  //   final scaffold = ScaffoldMessenger.of(context);
  //   scaffold.showSnackBar(
  //     const SnackBar(
  //       content: Text(
  //         'Updated Sucessfully',
  //         textAlign: TextAlign.center,
  //       ),
  //     ),
  //   );
  // }
}
