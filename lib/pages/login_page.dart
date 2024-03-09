import 'package:flutter/material.dart';
import 'package:flutter_learning/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changedButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome  $name',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Enter Username', labelText: 'Username'),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Password',
                          labelText: 'Password'),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changedButton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changedButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            // shape: changedButton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changedButton ? 50 : 8)),
                        child: changedButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   style: TextButton.styleFrom(
                    //       minimumSize: const Size(150, 40)),
                    //   child: const Text('Login'),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
