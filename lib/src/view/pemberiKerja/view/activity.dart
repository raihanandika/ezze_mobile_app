import 'dart:async';
import 'dart:ui';

import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/pemberiKerja/controller/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityPage extends StatelessWidget {
  Timer timer;
  final navController = Get.put(NavigationController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Reaksi Postingan"),
        ),
        body: content(context),
      ),
    );
  }

  Widget content(BuildContext context) => Container(
        width: Utility(context).width,
        height: Utility(context).height,
        child: ListView.builder(
          itemCount: navController.listActivity.length,
          itemBuilder: (context, index) {
            final i = navController.listActivity[index];
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(i.img),
                      Row(
                        children: [
                          spaceWidth(5),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    i.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                  spaceWidth(5),
                                  Image.asset(dot),
                                  spaceWidth(5),
                                  Image.asset(star),
                                  spaceWidth(5),
                                  Text(
                                    i.rating,
                                    style: TextStyle(
                                        fontSize: 14, color: Color(yellow)),
                                  )
                                  // Container(
                                  //   width: 100,
                                  //   height: 20,
                                  //   decoration: BoxDecoration(
                                  //       color: Color(redDove),
                                  //       borderRadius: BorderRadius.circular(20)),
                                  //   child: Center(
                                  //     child: Text(i.status.toUpperCase(),
                                  //         style: TextStyle(
                                  //             fontSize: 12,
                                  //             fontWeight: FontWeight.w500,
                                  //             color: Colors.white)),
                                  //   ),
                                  // )
                                ],
                              ),
                              spaceHeight(5),
                              Container(
                                  width: Utility(context).width - 100,
                                  height: 50,
                                  child: Text(
                                    i.description,
                                    textAlign: TextAlign.justify,
                                  )),
                              spaceHeight(5),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text("Disukai: ",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10)),
                                      Text(i.like,
                                          style: TextStyle(
                                              color: Color(blueSec),
                                              fontSize: 10)),
                                    ],
                                  ),
                                  spaceWidth(5),
                                  Image.asset(dot),
                                  spaceWidth(5),
                                  Row(
                                    children: [
                                      Text("Ulasan: ",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10)),
                                      Text(i.review,
                                          style: TextStyle(
                                              color: Color(blueSec),
                                              fontSize: 10)),
                                    ],
                                  ),
                                  spaceWidth(5),
                                  Image.asset(dot),
                                  spaceWidth(5),
                                  Row(
                                    children: [
                                      Text("Pekerjaan Selesai: ",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10)),
                                      Text(i.finish,
                                          style: TextStyle(
                                              color: Color(blueSec),
                                              fontSize: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          print("view details");
                          details(context);
                        },
                        child: Icon(
                          Icons.more_vert,
                          color: Color(blueSec),
                        ),
                      )
                    ],
                  ),
                  spaceHeight(10),
                  Container(
                    width: Utility(context).width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("Send message");
                          },
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(width: 1)),
                            child: Row(
                              children: [
                                Image.asset(
                                  chatSec,
                                  width: 20,
                                ),
                                spaceWidth(5),
                                Text("Kirim Pesan")
                              ],
                            ),
                          ),
                        ),
                        spaceWidth(5),
                        GestureDetector(
                          onTap: () {
                            print("send message");
                            congrat(context);
                          },
                          child: Container(
                            width: 120,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  accept,
                                  width: 20,
                                ),
                                spaceWidth(5),
                                Text("Terima")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      );

  Future<void> congrat(var context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          // timer = Timer(Duration(seconds: 3), () {
          //   Navigator.of(context).pop();
          // });
          return AlertDialog(
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imgLand3),
                  spaceHeight(20),
                  Text("Berhasil Mendapatkan Penolong!",
                      style: TextStyle(
                          color: Color(blueSec),
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                  spaceHeight(10),
                  Text("Ezze tidak bertanggung jawab atas penipuan dan",
                      style: TextStyle(fontSize: 10)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("lain-lain jika pembayaran menggunakan",
                          style: TextStyle(fontSize: 10)),
                      Text(" tunai!",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700))
                    ],
                  ),
                  spaceHeight(20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: Utility(context).width - 200,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      child: Center(
                        child: Text(
                          "Mengerti",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Future<void> details(var context) async {
    return await showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          timer = Timer(Duration(seconds: 3), () {
            Navigator.of(context).pop();
          });
          return SingleChildScrollView(
            child: Container(
                width: Utility(context).width,
                height: Utility(context).height,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    spaceHeight(20),
                    Center(child: Image.asset(overlay)),
                    spaceHeight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Penolongmu sedang dalam perjalanan"),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(question),
                        )
                      ],
                    ),
                    spaceHeight(5),
                    Text('Tiba pada 10 - 20 min'),
                    spaceHeight(5),
                    Image.asset(statusBar),
                    spaceHeight(10),
                    Image.asset(delivery),
                    spaceHeight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Image.asset(person5),
                              spaceWidth(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Gagah",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700)),
                                  Text("Penolongmu")
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(chat, width: 25),
                              ),
                              spaceWidth(10),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  call,
                                  width: 25,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    spaceHeight(10),
                    line(grey2, Utility(context).width, 1),
                    spaceHeight(10),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "23 - 26 Januari",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Durasi pertolongan",
                            style: TextStyle(fontSize: 18, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    spaceHeight(10),
                    line(grey2, Utility(context).width, 1),
                    spaceHeight(10),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jenis Pertolongan",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fotografi",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: Utility(context).width - 150,
                                    child: Text(
                                      "di Perumahan Pertamina Depok, no. B5/52",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print("Show Details");
                                    },
                                    child: Text(
                                      "Lihat Details",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    spaceHeight(10),
                    line(grey2, Utility(context).width, 1),
                    spaceHeight(10),
                    // mau di cek ulang di karenakan overflow
                    // Container(
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Text(
                    //         "Pembayaran",
                    //         style: TextStyle(
                    //             fontSize: 18, fontWeight: FontWeight.w700),
                    //       ),
                    //       Column(
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             "Topup Virtual Akun",
                    //             style:
                    //                 TextStyle(fontSize: 16, color: Colors.grey),
                    //           ),
                    //           Text(
                    //             "Jumlah biaya akan disesuaikan dengan jumlah hasil yang akan didapatkan.`",
                    //             style:
                    //                 TextStyle(fontSize: 16, color: Colors.grey),
                    //           ),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // Center(
                    //   child: Container(
                    //     width: 200,
                    //     height: 5,
                    //     decoration: BoxDecoration(
                    //       color: Colors.brown,
                    //       borderRadius: BorderRadius.circular(10)
                    //     ),
                    //   ),
                    // )
                  ],
                )),
          );
        });
  }
}
