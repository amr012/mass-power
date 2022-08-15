import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String? name, email, password, jobTitle, isTaskDone, key;

  UserModel({this.name,
    this.email,
    this.password,
    // this.jobTitle,
    this.isTaskDone,
    });

  UserModel.fromJson(DocumentSnapshot snapshot){
    final json = snapshot;
    key = snapshot.id;
    name = json['name'];
    email = json['email'];
    password = json['password'];
    // jobTitle = json['job_title'];
    isTaskDone = json["is_task_done"];
  }

  Map<String,dynamic> toJson(){
    var json = <String,dynamic>{};
    json['name'] = name;
    json['email'] = email;
    json['password'] = password;
    // json['job_title'] = jobTitle;
    json['is_task_done'] = isTaskDone;

    return json;
  }
}