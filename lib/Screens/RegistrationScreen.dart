// //https://youtu.be/Xzr7kFhEC18?si=P7UCTk7rdYYLtijA

// import 'package:flutter/material.dart';
// import 'package:gpt/Services/AuthenticationService.dart';

// class RegistrationScreen extends StatefulWidget {
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final _key = GlobalKey<FormState>();

//   // final AuthenticationService _auth = AuthenticationService();

//   TextEditingController _nameController = TextEditingController();
//   TextEditingController _emailContoller = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.deepPurpleAccent,
//         child: Center(
//           child: Form(
//             key: _key,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Register',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(32.0),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         controller: _nameController,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Name cannot be empty';
//                           } else
//                             return null;
//                         },
//                         decoration: InputDecoration(
//                             labelText: 'Name',
//                             labelStyle: TextStyle(
//                               color: Colors.white,
//                             )),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       SizedBox(height: 30),
//                       TextFormField(
//                         controller: _emailContoller,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Email cannot be empty';
//                           } else
//                             return null;
//                         },
//                         decoration: InputDecoration(
//                             labelText: 'Email',
//                             labelStyle: TextStyle(color: Colors.white)),
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       SizedBox(height: 30),
//                       TextFormField(
//                         controller: _passwordController,
//                         obscureText: true,
//                         validator: (value) {
//                           if (value!.isEmpty) {
//                             return 'Password cannot be empty';
//                           } else
//                             return null;
//                         },
//                         decoration: InputDecoration(
//                             labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white)),
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       SizedBox(height: 30),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           TextButton(
//                             child: Text('Sign Up'),
//                             onPressed: () {
//                                 createUser();
//                               if (_key.currentState!.validate()) {
//                               }
//                             },
//                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
//                           ),
//                           TextButton(
//                             child: Text('Cancel'),
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void createUser() async {
//     print("in creat user");
//     dynamic result = await AuthenticationService().createNewUser(_nameController.text, _emailContoller.text, _passwordController.text);
//     if (result == null) {
//       print('Email is not valid');
//     } else {
//       print(result.toString());
//       _nameController.clear();
//       _passwordController.clear();
//       _emailContoller.clear();
//       print("user added");
//       Navigator.pop(context);
//     }
//   }
// }
