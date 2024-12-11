import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetData {
  static Future<Map<String, dynamic>> getUserData() async {
    try {
      Query query = FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: FirebaseAuth.instance.currentUser!.email);

      QuerySnapshot querySnapshot = await query.get();

      List<Map<String, dynamic>> results = querySnapshot.docs.map((doc) {
        return doc.data() as Map<String, dynamic>;
      }).toList();

      return results.first;
    } catch (e) {
      return {};
    }
  }
}
