import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tech_repair_app/core/helpers/global_dialog.dart';
import 'package:tech_repair_app/core/networking/database/get_user_data.dart';
import 'package:tech_repair_app/core/widgets/custom_text_button.dart';
import 'package:tech_repair_app/features/edit_profile/data/user_model.dart';
import 'package:tech_repair_app/features/edit_profile/ui/screens/edit_screen.dart';

class EditProfileProvider with ChangeNotifier {
  late UserModel userModel;
  bool isDataLoaded = false;
  EditProfileProvider() {
    getUserData();
  }
  Future<void> getUserData() async {
    try {
      var data = await GetData.getUserData();
      userModel = UserModel.fromJson(data as Map<String, dynamic>);
      isDataLoaded = true;
      notifyListeners();
    } catch (e) {
      print('Error');
    }
  }

  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();
  selectImageSource(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Select Image Source'),
              actions: [
                ChooseImageButton(
                  label: 'Camera',
                  icon: Icons.camera,
                  onTap: () => pickImage(ImageSource.camera),
                ),
                ChooseImageButton(
                  label: 'gallary',
                  icon: Icons.image,
                  onTap: () => pickImage(ImageSource.gallery),
                )
              ],
            ));
  }

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      _selectedImage = File(pickedFile.path);
      notifyListeners();
      await _uploadImageToFirebase(File(pickedFile.path));
    }
  }

  Future<void> _uploadImageToFirebase(File image) async {
    try {
      final fileName = DateTime.now().toString();
      final storageRef =
          FirebaseStorage.instance.ref().child('uploads/$fileName');

      final uploadTask = storageRef.putFile(image);

      await uploadTask.whenComplete(() async {
        final downloadUrl = await storageRef.getDownloadURL();
        showCustomDialog(
            title: 'Done', content: 'Image uploaded successfully!');
      });
    } catch (e) {
      showCustomDialog(title: 'Error', content: 'Failed to upload image.');
    }
  }
}
