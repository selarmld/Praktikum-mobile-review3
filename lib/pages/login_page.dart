import 'package:flutter/material.dart';
import 'package:pertemuan4/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//UNTUK USERNAME DAN PASSWORD
// class _LoginPageState extends State<LoginPage> {
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         height: double
//             .infinity, // double.infinity digunakan untuk mengambil sebanya mungkin
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const SizedBox(height: 20),
//             CustomTextfield(
//                 Controller: username,
//                 label: "username",
//                 hint: "masukkan username"),
//             const SizedBox(height: 20),
//             CustomTextfield(
//                 Controller: password,
//                 label: "password",
//                 hint: "masukkan password"),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   print("username : $username\n password: $password");
//                   username.clear(); // fungsi untuk mengclear ketika sudah memasukkan username
//                   password.clear();
//                 });
//               },
//               style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
//               child: const Text(
//                 'Submit',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class _LoginPageState extends State<LoginPage> {
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenisKelamin, hobiString;
  bool hobi1 = false;
  bool hobi2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 20),
            // CustomTextfield(Controller: username, label: "Username", hint: "Masukkan username"),
            // const SizedBox(height: 20),
            // CustomTextfield(Controller: password, label: "Password", hint: "Masukkan password"),
            const SizedBox(height: 20),
            CustomTextfield(
                Controller: nama, label: "Nama", hint: "Masukkan Nama"),
            const SizedBox(height: 20),
            CustomTextfield(
                Controller: email, label: "Email", hint: "Masukkan Email"),
            const SizedBox(height: 20),
            CustomTextfield(
                Controller: umur, label: "Umur", hint: "Masukkan Umur"),
            const SizedBox(height: 20),
            const Text("Jenis Kelamin"),
            const SizedBox(height: 5),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Pria"),
              leading: Radio(
                  value: "Pria",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Wanita"),
              leading: Radio(
                  value: "Wanita",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            const Text("Hobi"),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Belajar"),
              leading: Checkbox(
                  value: hobi1,
                  onChanged: (bool? value) {
                    setState(() {
                      if (hobi1){
                        hobiString = "Belajar";
                      }
                      hobi1 = value?? false;
                    });
                  }),
            ),
             ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Bermain"),
              leading: Checkbox(
                  value: hobi2,
                  onChanged: (value) {
                    setState(() {
                      if (hobi2){
                        hobiString = "Belajar dan Bermain";
                      }
                      hobi2 = value?? false;
                    });
                  }),
            ),
            const SizedBox(height: 5),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // print("username : ${username.text}\npassword : ${password.text}");
                    // username.clear();
                    // password.clear();
                  });
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}