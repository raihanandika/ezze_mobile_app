import 'package:ezze/src/component/img.dart';
import 'package:ezze/src/view/pemberiKerja/model/activityModel.dart';
import 'package:ezze/src/view/pemberiKerja/model/homeModel.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NavigationController extends GetxController
    with SingleGetTickerProviderMixin {
  var isLoading = false.obs;
  var count = 0.obs;

  // controller for tabbar view
  TabController controller;

  final List<Tab> myTabs = <Tab>[
    Tab(
      child: Container(
        // width: Utility(context).width / 2,
        height: 50,
        child: Center(child: Text("Penawaran Bantuan")),
      ),
    ),
    Tab(
      child: Container(
        // width: Utility(context).width / 2,
        height: 50,
        child: Center(child: Text("Butuh Bantuan")),
      ),
    )
  ];
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }

  void increment() {
    count++;
  }

  final List<Homemodel> listMenu = [
    Homemodel(img: filter, name: "Filter"),
    Homemodel(img: "", name: "Semua"),
    Homemodel(img: "", name: "Segera"),
    Homemodel(img: "", name: "Advertising"),
    Homemodel(img: "", name: "Asisten Rumah Tangga"),
    Homemodel(img: "", name: "Photography"),
    Homemodel(img: "", name: "Pekerjaan lain"),
  ];

  List listPekerjaan = [
    'Advertising',
    'Model',
    'Photography',
    'Asisten Rumah Tangga',
    'Guide Wisata',
    'Pagar Ayu',
    'Digital Promotor'
  ];

  List<Activitymodel> listSekitar = [
    Activitymodel(
        img: person1,
        name: "Silvia Handayani",
        status: "Butuh Segera",
        description:
            "Dibutuhkan segera, model untuk makeup artis. HARI INI jam 15.00. Alamat bisa cek detail post.",
        time: "20 menit yang lalu",
        location: "1,3 Km dari lokasimu"),
    Activitymodel(
        img: person2,
        name: "Kananda",
        status: "Butuh Segera",
        description:
            "BUTUH asisten untuk keperluan cuci gosok. HARI INI jam 15.00. peralatan sudah tersedia.",
        time: "44 menit yang lalu",
        location: "1,8 Km dari lokasimu"),
    Activitymodel(
        img: person3,
        name: "Varus Bimantara",
        status: "Butuh Segera",
        description:
            "BUTUH jasa digital promoter untuk usaha pribadi. minimal pengalaman pernah handle sosmed 1 tahun.",
        time: "1 Jam yang lalu",
        location: "0,6 Km dari lokasimu"),
    Activitymodel(
        img: person1,
        name: "Silvia Handayani",
        status: "Butuh Segera",
        description:
            "BUTUH orang tambahan untuk pagar ayu. MALAM ini jam 19.00. lokasi daerah Bekasi Timur, ongkos pergi ditanggung.",
        time: "20 menit yang lalu",
        location: "1,3 Km dari lokasimu"),
    Activitymodel(
        img: person4,
        name: "Andra Dyaksana",
        status: "Butuh Segera",
        description:
            "Butuh jasa admin temporary selama 2 minggu. fee negotiable.",
        time: "2,5 jam yang lalu",
        location: "1,8 Km dari lokasimu"),
  ];

  List<Activitymodel> listActivity = [
    Activitymodel(
        img: person5,
        name: "Gagah",
        description:
            "Permisi, saya bersedia menjad asisten fotografer anda, mohon kerjasamanya!",
        like: "100+",
        review: "76",
        finish: "88%",
        rating: "8.1"),
    Activitymodel(
        img: person6,
        name: "Gamal J",
        description:
            "Halo! saya tertarik untuk membantu, silahkan cek profil saya!",
        like: "86",
        review: "54",
        finish: "92%",
        rating: "7.3"),
    Activitymodel(
        img: person7,
        name: "Raegan T",
        description:
            "Saya akan merasa senang jika anda bisa menerima saya untuk menjadi asisten fotografer anda, terimakasih!",
        like: "100+",
        review: "93",
        finish: "85%",
        rating: "9.0"),
  ];
}
