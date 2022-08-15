import 'package:flutter/material.dart';
import 'package:powermass/models/user_model.dart';
import 'package:powermass/services/user_servies.dart';

class AdminScreen extends StatelessWidget {
   AdminScreen({Key? key}) : super(key: key);
 UserServices userServices = UserServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Card(
              elevation: 8,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Employee Name : Amr",style: TextStyle(fontSize: 18),),
                      SizedBox(height: 8,),
                      Text("Employee Name : Amr",style: TextStyle(fontSize: 18),),
                      SizedBox(height: 8,),
                      Text("Employee Name : Amr",style: TextStyle(fontSize: 18),),
                      SizedBox(height: 8,),
                      Text("Employee Name : Amr",style: TextStyle(fontSize: 18),),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: StreamBuilder<List<UserModel>>(
              stream: userServices.getAllUsers(),
                builder: (context,snapshot){
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                      itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Card(
                        elevation: 8,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Employee Name : ${snapshot.data![index].name}",style: TextStyle(fontSize: 18),),
                                SizedBox(height: 8,),
                                Text("Employee Name : ${snapshot.data![index].email}",style: TextStyle(fontSize: 18),),
                                SizedBox(height: 8,),
                                Text("Employee Name : ${snapshot.data![index].password}",style: TextStyle(fontSize: 18),),
                                SizedBox(height: 8,),
                                Text("Employee Name : ${snapshot.data![index].isTaskDone}",style: TextStyle(fontSize: 18),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                }),
          )
        ],
      ),
    );
  }
}
