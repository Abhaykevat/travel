import 'package:appwrite/appwrite.dart';
import 'package:travel/saved_data.dart';

import 'auth.dart';

String databaseId = "6799f532000ab2f41d50";
final Databases databases = Databases(client);

// Save the user data to appwrite database
Future<void> saveUserData(String name, String email, String userId) async {
  return await databases
      .createDocument(
          databaseId: databaseId,
          collectionId: "6799f54d00223f1da065",
          documentId: ID.unique(),
          data: {
            "name": name,
            "email": email,
            "userId": userId,
          })
      .then((value) => print("Document Created"))
      .catchError((e) => print(e));
}

// get user data from the database

Future getUserData() async {
  final id = SavedData.getUserId();
  print(id);
  try {
    final data = await databases.listDocuments(
        databaseId: databaseId,
        collectionId: "6799f54d00223f1da065",
        queries: [
          Query.equal("userId", id),
        ]);

    SavedData.saveUserName(data.documents[0].data['name']);
    SavedData.saveUserEmail(data.documents[0].data['email']);
    print("data is data : $data");
  } catch (e) {
    print("error on database : $e");
    print(e);
  }
}

// create new events
Future<void> createEvent(
    String pname, String cname, String caption, String image) async {
  return await databases
      .createDocument(
          databaseId: databaseId,
          collectionId: "679b48230003328416fa",
          documentId: ID.unique(),
          data: {
            "place": pname,
            "city": cname,
            "caption": caption,
            "image": image,
          })
      .then((value) => print("Event Created"))
      .catchError((e) => print(e));
}



// Read all Events
Future getAllEvents() async {
  try {
    final data = await databases.listDocuments(
        databaseId: databaseId, collectionId: "679b48230003328416fa");
    return data.documents;
  } catch (e) {
    print(e);
  }
}





