import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('This is Super Applicatio'),
          centerTitle: true,
          elevation: 10,
          actions: [
            Icon(Icons.notification_important),
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://c.files.bbci.co.uk/957C/production/_111686283_pic1.png'),
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        child: Text('This is test image'),
                        //width: double.infinity,
                        color: Colors.green.withOpacity(0),
                      ),
                    ],
                  ),
                ),
              ),
              Text('this is line two'),
              Text('this is line three'),
            ],
          ),
        ));
  }
}

//   return Scaffold(
//     appBar: AppBar(
//       leading: Icon(Icons.menu),
//       title: Text('First Application'),
//       centerTitle: true,
//       elevation: 1,
//       // backgroundColor: Colors.green,
//       actions:
//       [IconButton(
//           icon: Icon(Icons.notification_important),
//           onPressed:onNotification ,
//             ),
//         IconButton(
//           icon:Icon(Icons.search),
//           onPressed: onNotification,
//         ),
//
//       ]
//     ),
//     body: Row(
//       children: [
//         Text('this is text')
//       ],
//     )
//    );
// }
//
// void onNotification()
// {
//   print('notificationPressed');
//
// }
//}
