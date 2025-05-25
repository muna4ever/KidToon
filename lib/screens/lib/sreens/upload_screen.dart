import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../services/tts_service.dart';
import '../services/cartoonify_service.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class UploadScreen extends StatefulWidget {
  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  File? _image;
  bool _loading = false;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _loading = true;
      });
      File cartoon = await CartoonifyService().cartoonify(File(pickedFile.path));
      setState(() {
        _image = cartoon;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    TTSService().speak(loc.addPhoto);
    return Scaffold(
      appBar: AppBar(title: Text(loc.addPhoto)),
      backgroundColor: Colors.pink[50],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/mascots/mascot_thumbs_up.png', height: 80),
              ),
              Text(loc.addPhoto, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UploadIconButton(
                      icon: Icons.camera_alt,
                      label: loc.takePhoto,
                      onTap: () => _pickImage(ImageSource.camera)),
                  SizedBox(width: 18),
                  UploadIconButton(
                      icon: Icons.photo_library,
                      label: loc.uploadImage,
                      onTap: () => _pickImage(ImageSource.gallery)),
                ],
              ),
              SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.amber, width: 3),
                  borderRadius: BorderRadius.circular(18),
                ),
                padding: EdgeInsets.all(20),
                child: _loading
                    ? CircularProgressIndicator()
                    : _image != null
                        ? Image.file(_image!, height: 100)
                        : Image.asset('assets/mascots/mascot_cartoonify.png', height: 100),
              ),
              SizedBox(height: 10),
              Text(loc.wowLook, style: TextStyle(fontSize: 16, color: Colors.indigo)),
              SizedBox(height: 36),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 18),
                  elevation: 8,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/lessons');
                },
                child: Text(loc.next, style: TextStyle(fontSize: 22)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UploadIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const UploadIconButton({required this.icon, required this.label, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.amber[200],
            child: Icon(icon, size: 36, color: Colors.indigo),
          ),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
