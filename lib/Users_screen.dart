import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_flutter/users.dart';

class UsersScreen extends StatelessWidget {
  List<UsersModel> users=[
    UsersModel(id:1,name:'Tareq Alkhateeb',phone:'+962776841030'),
    UsersModel(id:2,name:'Mohammed Alkhateeb',phone:'+962773341330'),
    UsersModel(id:3,name:'Samer Alkhateeb',phone:'+962776941033'),
    UsersModel(id:4,name:'Zaid Alkhateeb',phone:'+962776041034'),
    UsersModel(id:5,name:'Shadi Alkhateeb',phone:'+962776141031'),
    UsersModel(id:6,name:'Hussien Alkhateeb',phone:'+962776641036'),
    UsersModel(id:7,name:'Fares Alkhateeb',phone:'+962776841039'),
    UsersModel(id:8,name:'Kamel Alkhateeb',phone:'+962776841034'),
    UsersModel(id:9,name:'Monieer Alkhateeb',phone:'+962776841334'),
    UsersModel(id:10,name:'Sameer Alkhateeb',phone:'+962776821034'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Users',
      )),
      body: ListView.separated(
          itemBuilder: (context, index)=>buildUserItem(users[index]),
          separatorBuilder: (context,index)=>Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          itemCount: users.length)
    );
    //1. build item
    //2. build list
    //3. add item to list
  }

  Widget buildUserItem(UsersModel user) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Text('${user.id}'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${user.name}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${user.phone}',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
