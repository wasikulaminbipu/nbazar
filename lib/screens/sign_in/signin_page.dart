import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //This container contains the view of full page
      body: Container(
        color: Colors.teal,
        //ListView to avoid errors regarding pixel management
        child: ListView(
          children: [
            //Space for taking the top space
            Container(
              height: 100.0,
            ),
            //Container for Title
            Container(
              alignment: Alignment.center,
              child: Text(
                "nBazar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            
            //Card For Design
            Card(
              color: Colors.red,
              elevation: 10.0,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Center(
                    child: Container(
                      child: Text(
                        "LogIn",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  //Container for Username TextField
                  NBazarTextField(
                    labelText: "Username",
                    onChanged: (value) {},
                  ),
                  NBazarTextField(
                    labelText: "Password",
                    obscureText: true,
                    onChanged: (value) {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NBazarTextField extends StatelessWidget {
  const NBazarTextField({
    Key? key,
    @required this.labelText,
    @required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  //These are Required Variables
  final String? labelText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        keyboardType: this.keyboardType,
        obscureText: this.obscureText ? true : false,
        onChanged: this.onChanged,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2.0, color: Colors.white54)),
            labelText: this.labelText,
            labelStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}
