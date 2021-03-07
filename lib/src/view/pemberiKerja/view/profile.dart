import 'dart:ui';

import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(whiteGrey),
          body: SingleChildScrollView(
            child: Column(
              children: [
                appbar(),
                settings(),
                performa(),
                infodasar(),
                keterangan(),
                spaceHeight(20)
              ],
            ),
          )),
    );
  }

  Widget appbar() => Container(
        width: Utility(context).width,
        height: 60,
        color: Color(blueSec),
        child: Center(
          child: Image.asset(
            icon,
            width: 100,
          ),
        ),
      );
  Widget settings() => Container(
        padding: EdgeInsets.all(10),
        width: Utility(context).width,
        height: 250,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.settings_outlined, size: 30)),
            ),
            spaceHeight(20),
            GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 200,
                  child: Stack(children: [
                    Center(
                      child: Container(
                          width: 112,
                          height: 112,
                          decoration: new BoxDecoration(
                              border: Border.all(width: 2),
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(person)))),
                    ),
                    Positioned(
                      top: 110,
                      child: Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(blueSec),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text("Your Name",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Colors.white))),
                      ),
                    )
                  ]),
                )),
          ],
        ),
      );
  Widget performa() => Container(
        padding: EdgeInsets.all(10),
        width: Utility(context).width,
        height: Utility(context).width - 49,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Performa",
                style: TextStyle(
                    color: Color(deepGrey),
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
            spaceHeight(10),
            Container(
              padding: EdgeInsets.all(10),
              width: Utility(context).width,
              height: Utility(context).width - 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Disukai"),
                        Text("123"),
                        Image.asset(like)
                      ],
                    ),
                  ),
                  line(grey, 1, Utility(context).width),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Review"),
                        Text("8.8"),
                        Image.asset(rate)
                      ],
                    ),
                  ),
                  line(grey, 1, Utility(context).width),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Pekerjaan"),
                            Text("Selesai"),
                          ],
                        ),
                        Text("88%"),
                        Image.asset(work)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  Widget infodasar() => Container(
        padding: EdgeInsets.all(10),
        width: Utility(context).width,
        height: Utility(context).width - 49,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Informasi Dasar",
                    style: TextStyle(
                        color: Color(deepGrey),
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                Text("Ubah",
                    style: TextStyle(
                      color: Color(deepGrey),
                      fontSize: 16,
                    )),
              ],
            ),
            spaceHeight(10),
            Container(
              padding: EdgeInsets.all(10),
              width: Utility(context).width,
              height: Utility(context).width - 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Keahlian",
                                style: TextStyle(
                                    color: Color(deepGrey),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                "Seni, Fotografi, Masak dan 15+ keahlian lainya"),
                          ],
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.arrow_forward_ios,
                                size: 30, color: Color(blueSec)))
                      ],
                    ),
                  ),
                  line(grey2, Utility(context).width, 1),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pengalaman",
                                style: TextStyle(
                                    color: Color(deepGrey),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            Text("Kursus Foto, Koki di Toko Roti"),
                          ],
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.arrow_forward_ios,
                                size: 30, color: Color(blueSec)))
                      ],
                    ),
                  ),
                  line(grey2, Utility(context).width, 1),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alamat",
                                style: TextStyle(
                                    color: Color(deepGrey),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                "Jl. Anggrek no.4, Setia Budi, Jakarta Selatan")
                          ],
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Icon(Icons.arrow_forward_ios,
                                size: 30, color: Color(blueSec)))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  Widget keterangan() => Container(
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
                  "Menerima Kerjaan URGENT",
                  style: TextStyle(fontSize: 19, color: Color(blueBg)),
                ),
                Icon(Icons.info_outline, color: Color(blueBg)),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      print(isSwitched);
                    });
                  },
                  activeTrackColor: Color(lightBlueBg),
                  activeColor: Color(blueBg),
                ),
              ],
            ),
            Text(
              "Ketika ada pekerjaa yang bersifat Urgent akan langsung masuk kedalam notifikasi Anda.",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      );
}
