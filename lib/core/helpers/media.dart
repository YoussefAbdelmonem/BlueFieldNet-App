import 'dart:io';
import 'package:bluefieldnet/shared/widgets/customtext.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../shared/widgets/button_widget.dart';
import '../theme/dynamic_theme/colors.dart';
import '../utiles/utiles.dart';

class MyMedia {
  static final ImagePicker _picker = ImagePicker();

  Future<List<File>?> pickImages({bool isMultiple = true}) async {
    List<XFile?>? images = [];
    final check = await handelPemission();
    if (check != true) return null;
    if (isMultiple) {
      images = await _picker.pickMultiImage();
    } else {
      images = [
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 100)
      ];
    }
    List<File>? imageFiles =
        images.map<File>((xfile) => File(xfile?.path ?? "")).toList();
    return imageFiles.isNotEmpty ? imageFiles : null;
  }

  Future<File?> pickImageFromGallery() async {
    final check = await handelPemission();
    if (check != true) return null;
    final image =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    return image != null ? File(image.path) : null;
  }

  Future<File?> pickImageFromCamera() async {
    final check = await handelCameraPermission();
    if (check != true) return null;
    final image =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 100);
    return image != null ? File(image.path) : null;
  }

  // static Future<File?> pickImage(bool isGallery) async {
  //   final image =
  //       isGallery ? await pickImageFromGallery() : await pickImageFromCamera();
  //   return image;
  // }

  Future<File?> croppeImage(File image) async {
    CroppedFile? croppedFile;
    croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: AppColors.primary,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    return croppedFile != null ? File(croppedFile.path) : null;
  }
  /////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////

  handelPemission() async {
    late PermissionStatus status;
    late AndroidDeviceInfo androidInfo;
    if (Platform.isAndroid) {
      androidInfo = await DeviceInfoPlugin().androidInfo;
    }

    if (Platform.isAndroid && androidInfo.version.sdkInt <= 32) {
      /// use [Permissions.storage.status]
      status = await Permission.storage.request();
    } else {
      status = await Permission.photos.request();
    }
    if (status.isDenied || status.isPermanentlyDenied) {
      await openSettingPermissionDialog();
    } else {
      return true;
    }
  }

  handelCameraPermission() async {
    late PermissionStatus status;

    status = await Permission.camera.request();

    if (status.isDenied || status.isPermanentlyDenied) {
      await openSettingPermissionDialog();
    } else {
      return true;
    }
  }

  Future<dynamic> openSettingPermissionDialog() {
    return showDialog(
        context: Utils.navigatorKey().currentContext!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: CustomText('Permission'.tr()),
            content: CustomText(
                'Please enable camera permission from app settings'.tr()),
            actions: [
              TextButtonWidget(
                function: () => Navigator.of(context).pop(),
                text: 'Cancel'.tr(),
              ),
              TextButtonWidget(
                function: () => openAppSettings()
                    .then((value) => Navigator.of(context).pop()),
                text: 'Settings'.tr(),
              ),
            ],
          );
        });
  }
  /////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////////////////////////////////////////////
}
