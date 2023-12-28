import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _fullname=TextEditingController();
  final _gender=TextEditingController();
  final _dob=TextEditingController();
  final _country=TextEditingController();
  final _email=TextEditingController();
  final _password=TextEditingController();
  bool _validatefullname=false;
  bool _validategender=false;
  bool _validatedob=false;
  bool _validatecountry=false;
  bool _validateemail=false;
  bool _validatepassword=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _buildSignUpAppBar,
        body: _buildSignUpBody,
      ),
    );
  }

  AppBar get _buildSignUpAppBar {
    return AppBar(
      leading:IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          setState(() {
            Navigator.pop(context);
          });
        },
      ),
      centerTitle: true,
      title: Text("AniMal"),
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        letterSpacing: 6,
      ),
      backgroundColor: Colors.green,
    );
  }

  Widget get _buildSignUpBody {
    return Container(
        alignment: Alignment.center,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Container(
            //     decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //   colors: [
            //     Colors.green,
            //     Colors.white,
            //     Colors.black87,
            //   ],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ))),
            Container(
                alignment: Alignment.center,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "WELLCOME",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
//Full Name
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Full Name",
                          errorText: _validatefullname?"Full Name can not null":null,
                        ),
                        controller: _fullname,
                      )
                    ),
                    SizedBox(
                      height: 10,
                    ),
//Sex
                    Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Gender",
                              errorText: _validategender?"Gender can not null":null,
                          ),
                          controller: _gender,
                        ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
//Date of Birth
                    Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Date of Birth",
                            errorText: _validatedob?"Date of Birth can not null":null,
                          ),
                          controller: _dob,
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
//Country
                    Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Country",
                            errorText: _validatecountry?"Country can not null":null,
                          ),
                          controller: _country,
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
//Email
                    Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Email",
                            errorText: _validateemail?"Email can not null":null,
                          ),
                          controller: _email,
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),
//Password
                    Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password",
                            errorText: _validatepassword?"Password can not null":null,
                          ),
                          controller: _password,
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),Container(
                        // padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: Text("Sign In",
                            style: TextStyle(
                              fontSize: 20
                            ),),
                          onPressed: () {
                            setState(() {
                              _fullname.text.isEmpty?_validatefullname=true:_validatefullname=false;
                              _gender.text.isEmpty?_validategender=true:_validategender=false;
                              _dob.text.isEmpty? _validatedob=true:_validatedob=false;
                              _country.text.isEmpty?_validatecountry=true:_validatecountry=false;
                              _email.text.isEmpty?_validateemail=true:_validateemail=false;
                              _password.text.isEmpty?_validatepassword=true:_validatepassword=false;
                            });
                          },
                        )
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                )),
          ],
        ));
  }
}
