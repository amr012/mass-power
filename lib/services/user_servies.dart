import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:powermass/models/user_model.dart';

class UserServices{

  final fireStore = FirebaseFirestore.instance;

  Stream<List<UserModel>> getAllUsers(){
    return fireStore.collection('users')
        .where("email", isEqualTo: "amr@gmail.com")
        .snapshots().transform(StreamTransformer.fromHandlers(
        handleData: (date,sink){
          sink.add(date.docs.map((e) => (UserModel.fromJson(e))).toList());
        }
    ));
  }
}