import 'dart:io';
import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel/auth.dart';
import 'package:travel/database.dart';


class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  bool isUploading = false;
  String userId = "";
  // String? name,image;

  Storage storage = Storage(client);

  final ImagePicker _picker = ImagePicker();
  File? selectedImage;
  TextEditingController placenamecontroller = TextEditingController();
  TextEditingController citynamecontroller = TextEditingController();
  TextEditingController captioncontroller = TextEditingController();

  // Future getImage() async {
  //   final image = await _picker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     setState(() {
  //       selectedImage = File(image.path);
  //     });
  //   }
  // }

  // Future uploadEventImage() async {
  //   setState(() {
  //     isUploading = true;
  //   });
  //   try {
  //     if (_filePickerResult != null && _filePickerResult!.files.isNotEmpty) {
  //       PlatformFile file = _filePickerResult!.files.first;
  //       final fileByes = await File(file.path!).readAsBytes();
  //       final inputFile =
  //           InputFile.fromBytes(bytes: fileByes, filename: file.name);

  //       final response = await storage.createFile(
  //           bucketId: '679b508400283c83da4c',
  //           fileId: ID.unique(),
  //           file: inputFile);
  //       print(response.$id);
  //       return response.$id;
  //     } else {
  //       print("Something went wrong");
  //     }
  //   } catch (e) {
  //     print(e);
  //   } finally {
  //     setState(() {
  //       isUploading = false;
  //     });
  //   }
  // }
  Future getImage() async {
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  if (image != null && image.path.isNotEmpty) {
    setState(() {
      selectedImage = File(image.path);
    });
  } else {
    print("No image selected");
  }
}


  Future uploadEventImage() async {
    if (selectedImage == null) {
      print("No image selected");
      return;
    }

    setState(() {
      isUploading = true;
    });

    try {
      final fileBytes = await selectedImage!.readAsBytes();
      final inputFile = InputFile.fromBytes(
        bytes: fileBytes,
        filename: selectedImage!.path.split('/').last,
      );

      final response = await storage.createFile(
        bucketId: '679b508400283c83da4c',
        fileId: ID.unique(),
        file: inputFile,
      );

      print("Uploaded file ID: ${response.$id}");
      return response.$id;
    } catch (e) {
      print("Error uploading image: $e");
    } finally {
      setState(() {
        isUploading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 40),
            child: Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 3.0,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4.5,
                ),
                Text(
                  'Add Post',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Material(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              elevation: 3.0,
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20, top: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: getImage,
                        child: Center(
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: selectedImage == null
                                ? Icon(Icons.camera_alt_outlined)
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.file(
                                      selectedImage!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Place Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: placenamecontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Place Name"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'City Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: citynamecontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter City Name"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Caption',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFececf8),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: captioncontroller,
                          maxLines: 6,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Caption...."),
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () async {
                          await uploadEventImage().then((value)=>createEvent(placenamecontroller.text, citynamecontroller.text, captioncontroller.text, value)).then((value){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Event Created")));
                            Navigator.pop(context);
                          });
                          
                        },
                        child: Center(
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Post",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
