import 'package:appwrite/appwrite.dart';
import 'package:travel/database.dart';

Client client = Client()
    .setEndpoint('https://cloud.appwrite.io/v1')
    .setProject('6799d57a003d9c3f87d1')
    .setSelfSigned(status: true);



Account account = Account(client);
// Register User
Future<String> createUser(String name, String email, String password) async {
  try {
    final user = await account.create(
        userId: ID.unique(), email: email, password: password, name: name);
        saveUserData(name, email, user.$id);
    return "success";
  } on AppwriteException catch (e) {
    return e.message.toString();
  }
}




Future loginUser(String email, String password) async {
  try {
    final user =
        await account.createEmailPasswordSession(email: email, password: password);
    return true;
  } on AppwriteException catch (e) {
    return false;
  }
}


Future logoutUser() async {
  await account.deleteSession(sessionId: 'current');
}