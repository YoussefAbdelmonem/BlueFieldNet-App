import 'dart:io';
import 'package:image_cropper/image_cropper.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

import '../theme/dynamic_theme/colors.dart';

class Media {
  final ImagePicker _picker = ImagePicker();
  Future<List<File>?> pickImages() async {
    List<XFile>? images = [];
    Platform.isAndroid
        ? await Permission.storage
        : await Permission.photos.request();
    // await Permission.camera.request();
    // images = await _picker.pickMultiImage();
    var status = Platform.isAndroid
        ? await Permission.storage.status
        : await Permission.photos.status;
    if (status.isDenied || status.isPermanentlyDenied) {
      // await Permission.photos.request();
      openAppSettings(/* type: AppSettingsType.internalStorage */);
    } else {
      images = await _picker.pickMultiImage();
    }
    List<File>? imageFiles =
        images.map<File>((xfile) => File(xfile.path)).toList();
    return imageFiles.isNotEmpty ? imageFiles : null;
  }

  Future<File?> croppeImage(XFile image) async {
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

  Future<XFile?> pickImage(bool isGallery) async {
    XFile? image;
    final PermissionStatus? status;

    try {
      if (isGallery) {
        if (Platform.isAndroid) {
          final androidInfo = await DeviceInfoPlugin().androidInfo;
          if (androidInfo.version.sdkInt <= 32) {
            /// use [Permissions.storage.status]
            await Permission.storage.request();
            status = await Permission.storage.status;
          } else {
            await Permission.photos.request();
            status = await Permission.photos.status;

            /// use [Permissions.photos.status]
          }
        } else {
          await Permission.photos.request();
          status = await Permission.photos.status;
        }

        // Platform.isAndroid
        //     ? [await Permission.photos, await Permission.storage].request()
        //     : await Permission.photos.request();
        // status = /*  Platform.isAndroid
        // ? await Permission.photos.status
        // : */
        // await Permission.photos.status;
        debugPrint("Gallery ${status.toString()}");
        // if (Platform.isAndroid) {
        //   if (status.isDenied) {
        //     await Permission.photos.request();
        //     image = await _picker.pickImage(
        //         source: ImageSource.gallery, imageQuality: 20);
        //   }
        // }
        if (status.isDenied || status.isPermanentlyDenied) {
          debugPrint("eeeeeee");
          // image = await _picker.pickImage(
          //     source: ImageSource.gallery, imageQuality: 20);
          // await Permission.photos.request();
          openAppSettings();
          // await AppSettings.openAppSettings();
        } /*  else if (status.isPermanentlyDenied) {
          await AppSettings.openAppSettings();
        } */

        //
        else {
          image = await _picker.pickImage(
              source: ImageSource.gallery, imageQuality: 20);
        }
      } else {
        await Permission.camera.request();
        status = await Permission.camera.status;
        debugPrint("camera ${status.toString()}");
        if (status.isDenied || status.isPermanentlyDenied) {
          openAppSettings();
          // await AppSettings.openAppSettings();
        } else {
          image = await _picker.pickImage(
              source: ImageSource.camera, imageQuality: 20);
        }
      }
    } catch (e) {}
    return image != null ? image : null;
  }
}

class MyMedia {
  static final ImagePicker _picker = ImagePicker();
  static Future<File?> croppeImage(XFile image) async {
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

  static Future<XFile?> pickImage(bool isGallery) async {
    XFile? image;
    final PermissionStatus? status;

    try {
      if (isGallery) {
        if (Platform.isAndroid) {
          final androidInfo = await DeviceInfoPlugin().androidInfo;
          if (androidInfo.version.sdkInt <= 32) {
            /// use [Permissions.storage.status]
            await Permission.storage.request();
            status = await Permission.storage.status;
          } else {
            await Permission.photos.request();
            status = await Permission.photos.status;

            /// use [Permissions.photos.status]
          }
        } else {
          await Permission.photos.request();
          status = await Permission.photos.status;
        }

        // Platform.isAndroid
        //     ? [await Permission.photos, await Permission.storage].request()
        //     : await Permission.photos.request();
        // status = /*  Platform.isAndroid
        // ? await Permission.photos.status
        // : */
        // await Permission.photos.status;
        debugPrint("Gallery ${status.toString()}");
        // if (Platform.isAndroid) {
        //   if (status.isDenied) {
        //     await Permission.photos.request();
        //     image = await _picker.pickImage(
        //         source: ImageSource.gallery, imageQuality: 20);
        //   }
        // }
        if (status.isDenied || status.isPermanentlyDenied) {
          debugPrint("eeeeeee");
          // image = await _picker.pickImage(
          //     source: ImageSource.gallery, imageQuality: 20);
          // await Permission.photos.request();
          openAppSettings();
          // await AppSettings.openAppSettings();
        } /*  else if (status.isPermanentlyDenied) {
          await AppSettings.openAppSettings();
        } */

        //
        else {
          image = await _picker.pickImage(
              source: ImageSource.gallery, imageQuality: 20);
        }
      } else {
        await Permission.camera.request();
        status = await Permission.camera.status;
        debugPrint("camera ${status.toString()}");
        if (status.isDenied || status.isPermanentlyDenied) {
          openAppSettings();
          // await AppSettings.openAppSettings();
        } else {
          image = await _picker.pickImage(
              source: ImageSource.camera, imageQuality: 20);
        }
      }
    } catch (e) {}
    return image != null ? image : null;
  }
}
