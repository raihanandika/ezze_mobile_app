import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, sandi;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.all(10),
          width: Utility(context).width,
          height: Utility(context).height,
          child: Column(
            children: [
              top(),
              spaceHeight(20),
              content(),
              spaceHeight(20),
              bottom(),
              Container(
                height: 40,
                width: Utility(context).width,
                color: Colors.white,
                child: Center(
                  child: Container(
                    height: 2,
                    width: 134,
                    color: Color(deepGrey),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget top() {
    return Container(
      child: Center(
          child: Image.asset(
        icon2,
        width: 120,
        height: 32,
      )),
    );
  }

  Widget content() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              icLogin,
              width: 111,
              height: 41,
            ),
            spaceHeight(10),
            Text("Mulai menolong orang lain atau mencari bantuan"),
            spaceHeight(30),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Alamat Email',
                labelText: 'Alamat Email',
              ),
              onSaved: (value) => email = value,
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return "isi alamat email terlebih dahulu";
                }
              },
            ),
            spaceHeight(20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Sandi',
                labelText: 'Sandi',
              ),
              onSaved: (value) => email = value,
              // ignore: missing_return
              validator: (value) {
                if (value.isEmpty) {
                  return "isi sandi terlebih dahulu";
                }
              },
            ),
            spaceHeight(30),
            GestureDetector(
              onTap: () => Get.offNamed('/pemberiKerja'),
              child: Container(
                height: 56,
                width: 327,
                decoration: BoxDecoration(
                    color: Color(purpleButton),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text("Masuk"),
                ),
              ),
            ),
            spaceHeight(10),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "Lupa Sandi?",
                  style: TextStyle(color: Color(blueBg)),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 1,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(purpleButton),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      );

  Widget bottom() => Container(
        color: Color(lightGrey),
        height: 200,
        width: Utility(context).width,
        child: Column(
          children: [
            spaceHeight(30),
            Text("Atau Masuk Menggunakan"),
            spaceHeight(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(fb),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(google),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(twitter),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(instagram),
                ),
                spaceHeight(30),
              ],
            ),
            spaceHeight(30),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  "Daftar Akun Baru",
                  style: TextStyle(color: Color(blueBg)),
                ),
              ),
            ),
            Center(
              child: Container(
                height: 1,
                width: 80,
                decoration: BoxDecoration(
                    color: Color(purpleButton),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      );
}
