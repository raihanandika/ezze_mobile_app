import 'package:ezze/src/component/colors.dart';
import 'package:ezze/src/util/utility.dart';
import 'package:ezze/src/view/pemberiKerja/controller/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PenawaranBantuanPage extends StatelessWidget {
  final navController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            header(context),
            Container(
                width: Utility(context).width,
                height: Utility(context).height,
                child: content(context))
          ],
        ),
      )),
    );
  }

  Widget header(BuildContext context) => Container(
      width: Utility(context).width,
      height: 50,
      color: Colors.grey[200],
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: navController.listMenu.length,
        itemBuilder: (context, index) {
          final i = navController.listMenu[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(left: 5),
              child: Chip(
                labelPadding: EdgeInsets.all(2),
                avatar: Image.asset(i.img),
                label: Text(i.name),
              ),
            ),
          );
        },
      ));

  Widget content(BuildContext context) => ListView.builder(
    itemCount: navController.listSekitar.length,
    itemBuilder: (context, index) {
      final i = navController.listSekitar[index];
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(i.img),
                spaceWidth(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          i.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        spaceWidth(5),
                        Container(
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color(redDove),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(i.status.toUpperCase(),
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white)),
                          ),
                        )
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
                        Text(i.time,
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12)),
                        spaceWidth(5),
                        Text(i.location,
                            style: TextStyle(
                                color: Colors.grey, fontSize: 12))
                      ],
                    )
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                print("Cek deskription");
              },
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Color(blueSec),
              ),
            )
          ],
        ),
      );
    },
  );
}
