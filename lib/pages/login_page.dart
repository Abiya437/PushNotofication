// import 'package:flutter/material.dart';
// import 'package:push_notification_cli/pages/home_page.dart';
// import '../controllers/auth_service.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Login",
//               style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   label: Text("Email"),
//                   hintText: "Enter you email"),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               obscureText: true,
//               controller: passwordController,
//               decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   label: Text("Password"),
//                   hintText: "Enter you password"),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//               width: double.infinity,
//               height: 48,
//               child: ElevatedButton(
//                   onPressed: () async {
//                     // await AuthService.loginWithEmail(
//                     //     emailController.text, passwordController.text)
//                     //     .then((value) {
//                     //   if (value == "Login Successful") {
//                     //     ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
//                     //         content:
//                     //         Text("Login Successful"))));
//                     //     Navigator.pushReplacementNamed(context, "/home");
//                     //   } else {
//                     //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     //       content: Text(
//                     //         value,
//                     //         style: const TextStyle(color: Colors.white),
//                     //       ),backgroundColor: Colors.red,));
//                     //   }
//                     // });
//                     await AuthService.loginWithEmail(
//                             emailController.text, passwordController.text)
//                         .then((value) {
//                       if (value == "Login Successful") {
//                         Navigator.of(context).pushReplacement(MaterialPageRoute(
//                             builder: (context) => const HomePage()));
//                         ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text("Login Successful")));
//                         // Navigator.pushReplacementNamed(context, "/home");
//                       } else {
//                         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                           content: Text(
//                             value,
//                             style: const TextStyle(color: Colors.white),
//                           ),
//                           backgroundColor: Colors.red.shade400,
//                         ));
//                       }
//                     });
//                   },
//                   child: const Text("Login")),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Text("No account?"),
//                 TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, "/signup");
//                     },
//                     child: const Text("Register")),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ));
//   }
// }
import 'package:flutter/material.dart';
import '../controllers/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo or background image
                SizedBox(
                  height: 200,
                  child: Image.asset('images/login.png'),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Login Your Account...",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  // obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Email id",
                    hintText: "Enter your Email",
                    prefixIcon: const Icon(Icons.email),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon: const Icon(Icons.lock),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                // SizedBox(
                //   width: 150,
                //   height: 48,
                //   child: ElevatedButton(
                //     onPressed: () async {
                //       await AuthService.loginWithEmail(
                //           emailController.text, passwordController.text)
                //           .then((value) {
                //         if (value == "Login Successful") {
                //           Navigator.of(context).pushReplacement(
                //               MaterialPageRoute(
                //                   builder: (context) => const HomePage()));
                //           ScaffoldMessenger.of(context).showSnackBar(
                //               const SnackBar(content: Text("Login Successful")));
                //         } else {
                //           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //             content: Text(
                //               value,
                //               style: const TextStyle(color: Colors.white),
                //             ),
                //             backgroundColor: Colors.red.shade400,
                //           ));
                //         }
                //       });
                //     },
                //     style: ElevatedButton.styleFrom(
                //       foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(17.0),
                //       ),
                //       padding: const EdgeInsets.symmetric(vertical: 15.0),
                //     ),
                //     child: const Text(
                //       "Login",
                //       style: TextStyle(fontSize: 18.0),
                //     ),
                //   ),
                // ),
                SizedBox(
                  width: 150,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () async {
                      debugPrint("Login button pressed");
                      try {
                        String value = await AuthService.loginWithEmail(
                            emailController.text, passwordController.text);
                        debugPrint("AuthService response: $value");

                        // Normalize the response string for comparison
                        String normalizedResponse = value.trim().toLowerCase();

                        if (normalizedResponse == "login successfully") {
                          Navigator.pushReplacementNamed(context, '/home');
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Login Successful")));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              value,
                              style: const TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.green.shade400,
                          ));
                        }
                      } catch (e) {
                        debugPrint("Error during login: $e");
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            "An error occurred: $e",
                            style: const TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.red.shade400,
                        ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17.0),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),


                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("No account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue,fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
