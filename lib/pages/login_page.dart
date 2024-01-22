
import 'package:flutter/material.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var name ="";
  bool changedButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const Image(
              image: AssetImage('assets/images/login.png'),
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20.0),
             Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Email",
                      labelText: "Email",
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            InkWell(
              onTap: ()async{
                setState(() {
                  changedButton = true;
                });

                await Future.delayed(const Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoutes);
              },
               child: AnimatedContainer(
                 duration:const Duration(seconds: 1),
                  width: changedButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: changedButton ? const Icon(Icons.done, color: Colors.white) : const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                )
            )

            // ElevatedButton(
            //   onPressed: () => onPressedLogin(context),  // Fix: onPressedLogin is now called within a lambda
            //   style: TextButton.styleFrom(minimumSize: const Size(150, 40)),
            //   child: const Text("Login"),
            // ),
          ],
        ),
      ),
    );
  }

  void onPressedLogin(BuildContext context) {
    // navigator use for navigating the page
    // also used for navigating from one page to another
    Navigator.pushNamed(context, MyRoutes.homeRoutes);
  }
}

