import 'package:flutter/material.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class Donate extends StatefulWidget {
  // const Donate({super.key});
  const Donate({Key? key}) : super(key: key);

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  // List of items in our dropdown menu
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  @override
  final _amountController = TextEditingController();

  getAmt() {
    // return int.parse(_amountController.text) * 100; // Converting to paisa
    return int.parse(_amountController.text) * 100;
  }

  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          // alignment: Alignment.centerRight,
                          ),
                    ),
                    const Text(
                      "Donate",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(bottom: 18.0),
                  child: CircleAvatar(
                    radius: 90.0,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ),
                //for user data
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your First name';
                    }
                    return null;
                  },
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.person),
                    // icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter Donor name.Eg: Jhon',
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
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Icon(
                      Icons.category_outlined,
                      color: Colors.grey,
                      size: 24.0,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Container(
                      width: 320,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        // border: Border.all(

                        //   color: Colors.black,
                        //   width: 1,
                        // ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 12),
                        child: Center(
                          child: DropdownButton(
                            // hint: const Text("Select Category"),
                            dropdownColor:
                                const Color.fromARGB(255, 239, 239, 239),

                            icon: const Icon(Icons.arrow_drop_down_outlined),
                            iconSize: 36,
                            value: dropdownValue,

                            elevation: 10,
                            isExpanded: true,

                            style: const TextStyle(
                                color: Color.fromARGB(255, 87, 87, 87)),
                            underline: Container(
                              color: Colors.transparent,
                            ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Donor Address';
                    }
                    return null;
                  },
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.place_outlined),
                    // icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter Donor Address.Eg: Maitidevi',
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

                const SizedBox(height: 15),
                TextFormField(
                  // key: const ValueKey('fname'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your First name';
                    }
                    return null;
                  },
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.note_alt_outlined),
                    // icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter Donor Note',
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
                const SizedBox(height: 15),
                // For Amount
                TextFormField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.add_card),
                    // icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter Donation Amount',
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
                  height: 18,
                ),
                // For Button
                MaterialButton(
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 50,
                    color: const Color(0xff41A2CD),
                    child: const Text(
                      'Pay With Khalti',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      KhaltiScope.of(context).pay(
                        config: PaymentConfig(
                          amount: getAmt(),
                          productIdentity: 'dells-sssssg5-g5510-2021',
                          productName: 'Product Name',
                        ),
                        preferences: [
                          PaymentPreference.khalti,
                        ],
                        onSuccess: (su) {
                          debugPrint("Success Pay: ${su.productName}");
                          const successsnackBar = SnackBar(
                            content: Text('Payment Successful'),
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(successsnackBar);
                        },
                        onFailure: (fa) {
                          const failedsnackBar = SnackBar(
                            content: Text('Payment Failed'),
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(failedsnackBar);
                        },
                        onCancel: () {
                          const cancelsnackBar = SnackBar(
                            content: Text('Payment Cancelled'),
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(cancelsnackBar);
                        },
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
