import 'dart:ui';

import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/pemberiKerja/controller/bantuanController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BantuanPage extends StatelessWidget {
  final bantuanController = Get.put(BantuanController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(whiteGrey),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "POSTING BANTUAN",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            form(context),
            spaceHeight(20),
            Container(
              padding: EdgeInsets.all(10),
              width: Utility(context).width,
              height: 100,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "BUTUH SEGERA ",
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                      Switch(
                        value: bantuanController.isSwitched.value,
                        onChanged: (value) {
                          bantuanController.isSwitched = value as RxBool;
                          print(bantuanController.isSwitched);
                        },
                        activeTrackColor: Color(redDove),
                        activeColor: Color(red2),
                      ),
                    ],
                  ),
                  Text("Postingan anda akan diberikan tanda khusus 'SEGERA'")
                ],
              ),
            ),
            spaceHeight(20),
            GestureDetector(
              onTap: () {
                bantuanController.checkForm();
              },
              child: Container(
                height: 56,
                width: 327,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(blueSec)),
                child: Center(
                  child: Text("POSTING", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            spaceHeight(20),
            Container(
              height: 5,
              width: 134,
              decoration: BoxDecoration(
                  color: Color(deepGrey),
                  borderRadius: BorderRadius.circular(2.5)),
            ),
            spaceHeight(10),
          ],
        )),
      ),
    );
  }

  Widget form(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, left: 10),
      child: Form(
        key: bantuanController.key,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceHeight(10),
            Text(
              "JENIS",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 7, right: 5),
              width: Utility(context).width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(photo, width: 25),
                  spaceWidth(10),
                  Container(
                    width: Utility(context).width - 95,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.jenis = e,
                      validator: (e) {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.dialog(AlertDialog(
                        title: Center(child: Text("Jenis Pekerjaan")),
                        content: Container(
                          margin: EdgeInsets.only(top: 20),
                        ),
                      ));
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(blueSec),
                    ),
                  )
                ],
              ),
            ),
            spaceHeight(10),
            Text(
              "LOKASI",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              width: Utility(context).width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(locPin, width: 30),
                  spaceWidth(7),
                  Container(
                    width: Utility(context).width - 95,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.lokasi = e,
                      validator: (e) {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(blueSec),
                    ),
                  )
                ],
              ),
            ),
            spaceHeight(10),
            Text(
              "TANGGAL",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 10, right: 5),
              width: Utility(context).width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(calender, width: 20),
                  spaceWidth(10),
                  Container(
                    width: Utility(context).width - 93,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.tanggal = e,
                      validator: (e) {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(blueSec),
                    ),
                  )
                ],
              ),
            ),
            spaceHeight(10),
            Text(
              "WAKTU",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 2, right: 5),
              width: Utility(context).width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(time, width: 40),
                  Container(
                    width: Utility(context).width - 95,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.waktu = e,
                      validator: (e) {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(blueSec),
                    ),
                  )
                ],
              ),
            ),
            spaceHeight(10),
            Text(
              "CATATAN",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 7, right: 5),
              width: Utility(context).width,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 6),
                      child: Image.asset(note, width: 30)),
                  spaceWidth(10),
                  Container(
                    width: Utility(context).width - 90,
                    child: TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.catatan = e,
                      validator: (e) {},
                    ),
                  ),
                ],
              ),
            ),
            spaceHeight(10),
            Row(
              children: [
                Text(
                  "FOTO",
                  style: TextStyle(color: Color(lightBlueBg)),
                ),
                spaceWidth(10),
                Text("(Opsional)", style: TextStyle(color: Colors.grey)),
              ],
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 10, right: 5),
              width: Utility(context).width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(img, width: 20),
                  spaceWidth(10),
                  Container(
                    width: Utility(context).width - 94,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.foto = e,
                      validator: (e) {},
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        print("show bottom sheet");
                        Get.bottomSheet(Container(
                          width: Utility(context).width,
                          height: 150,
                          color: Colors.white,
                          child: Text("Show Bottom Sheet with Get X"),
                        ));
                      },
                      child: Image.asset(
                        upload,
                        width: 25,
                      ))
                ],
              ),
            ),
            spaceHeight(10),
            Text(
              "BAYARAN*",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 2, right: 5),
              width: Utility(context).width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(rupiah, width: 40),
                  spaceWidth(3),
                  Container(
                    width: Utility(context).width - 98,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      onSaved: (e) => bantuanController.bayaran = e,
                      validator: (e) {},
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(blueSec),
                    ),
                  )
                ],
              ),
            ),
            spaceHeight(5),
            Text(
              "*Nominal fee yang kamu berikan akan dipotong 25% untuk aplikasi Ezze",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            spaceHeight(10),
            Text(
              "PEMBAYARAN",
              style: TextStyle(color: Color(lightBlueBg)),
            ),
            spaceHeight(5),
            Container(
              padding: EdgeInsets.only(left: 2, right: 5),
              width: Utility(context).width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(lightBlueBg), width: 2)),
              child: Row(
                children: [
                  Image.asset(wallet, width: 40),
                  Container(
                      width: Utility(context).width - 95,
                      child: ExpansionTile(
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        title: Text(
                          "Pilih Metode Pembayaran",
                        ),
                        children: [
                          Text("Top up virtual akun (BCA, Mandiri, dll)"),
                          spaceHeight(5),
                          line(deepGrey, Utility(context).width, 1),
                          spaceHeight(5),
                          Text("Kartu kredit"),
                          spaceHeight(5),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
