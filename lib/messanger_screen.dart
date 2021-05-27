import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage('https://c.files.bbci.co.uk/957C/production/_111686283_pic1.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle
                (
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 18,
            child: IconButton(
                onPressed: (){},
                color: Colors.black,
                iconSize: 18,
                icon: Icon(Icons.camera_alt)
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 18,
            child: IconButton(
                onPressed: (){},
                color: Colors.black,
                iconSize: 18,
                icon: Icon(Icons.edit)
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              autofocus: false,
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                prefixIcon: Icon(
                  Icons.search),
                  labelText: 'Search',
                )
              ),
            SizedBox(
              height: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 25,
                            child: MaterialButton(
                                onPressed: (){},
                            ),
                          backgroundImage: NetworkImage('https://c.files.bbci.co.uk/957C/production/_111686283_pic1.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Tareq Alkhateeb',
                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ],
        ),

      )

    );
  }
}
