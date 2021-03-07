import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class BantuanController extends GetxController {
  File _image;
  final picker = ImagePicker();

  String jenis, lokasi, tanggal, waktu, catatan, foto, bayaran, pembayaran;
  var isSwitched = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future getImageCamera() async {
    print("get image from camera");
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  Future getImageGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  }

  getDataFromForm() {}

  final key = new GlobalKey<FormState>();
  void checkForm() {
    final form = key.currentState;
    if (form.validate()) {
      form.save();
      print(jenis);
      print(lokasi);
      print(tanggal);
      print(waktu);
      print(catatan);
      print(foto);
      print(bayaran);
      print(pembayaran);
    }
  }
}
