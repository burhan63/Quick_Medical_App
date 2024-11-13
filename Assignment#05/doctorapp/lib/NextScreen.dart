import 'package:doctorapp/Dasboard.dart';
import 'package:flutter/material.dart';

class NextScreenView extends StatefulWidget {
  const NextScreenView({super.key});

  @override
  State<NextScreenView> createState() => _NextScreenViewState();
}

final TextEditingController contactcontroller = TextEditingController();

void login(context) {
  if (contactcontroller.text.isNotEmpty &&
      contactcontroller.text == '+92-3112329374') {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Login Successful"),
        backgroundColor: Colors.blue,
      ),
    );
    Future.delayed(
      const Duration(seconds: 0),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DashboardView()),
        );
      },
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Try Again.!!!"),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class _NextScreenViewState extends State<NextScreenView> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50,
              child: Icon(
                Icons.add,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Quick Medical',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Please Enter Your Mobile Number to Login/Signup',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Arial',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: screenheight * 0.07,
                    width: screenwidth * 0.8,
                    child: TextField(
                      controller: contactcontroller,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        label: const Text('User Contact'),
                        hintText: '+92-9265614292',
                        suffixIcon: const Icon(Icons.call),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    login(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15, fontFamily: 'Arial'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
