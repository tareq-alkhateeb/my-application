import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var passswordController=TextEditingController();
  var emailController=TextEditingController();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //autofocus: true,
                  keyboardType: TextInputType.emailAddress ,
                  controller: emailController,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  onChanged: (String value)
                  {
                    print(value);
                  },
                  decoration: InputDecoration(
                    //hintText: 'Email address',
                    labelText: 'Email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                        Icons.email
                    ),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  //autofocus: true,
                  keyboardType: TextInputType.visiblePassword,
                  controller: passswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    //hintText: 'Password',
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    child: Text(
                        'Login',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                      onPressed: (){
                    print(emailController.text);
                    print(passswordController.text);

                  }

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account'),
                    TextButton(onPressed: (){print('Hello');}, child: Text('Register Now'))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
