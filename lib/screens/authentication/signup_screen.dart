import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:loading_indicator/loading_indicator.dart';
import '../../res/static_info.dart';
import 'after_registration.dart';
 var userNameSave = "";
 var passwordSave= "";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool _checkbox = false;
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final bdyTypeController = TextEditingController();
  final heightController = TextEditingController();
  final EthnicityController = TextEditingController();
  final eyeColorController = TextEditingController();
  final hairColorController = TextEditingController();
  final religionController = TextEditingController();
  final smokeController = TextEditingController();
  final childrenController = TextEditingController();
  final petsController = TextEditingController();
  final educationController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  var message;
  var errorText;
  bool isLoading = false;
  bool obc = true;
  bool obcConfirm = true;
  //int index = 1;
  int currentIndex = 1;
  int currentIndexHeight = 1;
  int currentIndexEyeColor= 1;
  int currentIndexHairColor= 1;
  int  currentIndexReligion=1;
  int  currentIndexSmoke =1;
  int currentIndexChildren =1;
  int  currentIndexPets =1;
  int  currentIndexEducation =1;
  int  currentIndexEthinicity =1;
  var userData;
  void initState() {
    getRegistersDetails();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("User Name",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              TextFormField(
                controller: userNameController,
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(color: Colors.redAccent, fontSize: 15),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'UserName',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                },
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Email",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: emailController,
                onChanged: (value) {
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(color: Colors.redAccent, fontSize: 15),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'someone@gmail.com',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  } else if (!value.contains('@')) {
                    return 'Please Enter Valid Email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Password",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: passwordController,
                onChanged: (value) {
                  //Do something with the user input.
                },
                obscureText: obc,
                decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(color: Colors.redAccent, fontSize: 15),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          obc = !obc;
                        });
                      },

                      child: obc? Icon(Icons.visibility):Icon(Icons.visibility_off)


                ),
                  hintText: 'Password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                },
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Confirm Password",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              TextFormField(
                controller: confirmPasswordController,
                onChanged: (value) {
                  //Do something with the user input.
                },
                obscureText: obcConfirm,
                decoration: InputDecoration(
                  errorStyle:
                      const TextStyle(color: Colors.redAccent, fontSize: 15),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: GestureDetector(
                      onTap: (){
                        setState(() {
                          obcConfirm = !obcConfirm;
                        });
                      },

                      child: obcConfirm? Icon(Icons.visibility):Icon(Icons.visibility_off)


                  ),
                  hintText: 'Confirm Password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'This field is required';
                  }
                },
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Body type",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForBodyType();
                },
                child: TextFormField(
                  controller: bdyTypeController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Height",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForHeight();
                },
                child: TextFormField(
                  controller: heightController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                    const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    hintText: 'Select',
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Eye Color",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForEyeColor();
                },
                child: TextFormField(
                  controller: eyeColorController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Hair Color",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogHairColor();
                },
                child: TextFormField(
                  controller: hairColorController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Religion",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForReligion();
                },
                child: TextFormField(
                  controller: religionController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Smoke",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForSmoke();
                },
                child: TextFormField(
                  controller: smokeController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("With Children",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForChildren();
                },
                child: TextFormField(
                  controller: childrenController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Pets",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForPets();
                },
                child: TextFormField(
                  controller: petsController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Education",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForEducation();
                },
                child: TextFormField(
                  controller: educationController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    //  prefixIcon: Icon(Icons.sel),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    Text("Ethnicity",
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  showDialogForEthnicity();
                },
                child: TextFormField(
                  controller: EthnicityController,
                  onChanged: (value) {
                    //Do something with the user input.
                  },
                  enabled: false,
                  decoration: InputDecoration(
                    errorStyle:
                        const TextStyle(color: Colors.redAccent, fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    hintText: 'Select',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                  },
                ),
              ),
              Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.white,
                    ),
                    child: Checkbox(
                      checkColor: Colors.black,
                      activeColor: Colors.white,
                      value: _checkbox,
                      onChanged: (value) {
                        setState(() {
                          _checkbox = !_checkbox;
                        });
                      },
                    ),
                  ),
                  Text(
                      'By creating your account, you agree to our\nTerms of Use & Privacy Policy',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              isLoading?  Center(
                      child: SizedBox(
                          width: 80,
                          child: LoadingIndicator(
                              indicatorType: Indicator.ballBeat,
                              colors: [Colors.deepPurple],
                              strokeWidth: 2,
                              pathBackgroundColor: Colors.blue)),
                    ) : buttonWidget(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialogForBodyType() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, "Body type"),
            content: Container(
              height: 220,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 6,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                  // height: 20,
                                  // width: 100,
                                  child: Text( userData[0]['type'][index]
                                  ),
                              ),
                                Divider(),

                              ],),
                              onTap: () {
                                Navigator.pop(context);
                                bdyTypeController.text = userData[0]['type'][index];
                                currentIndex=index+1;
                                print("i am current index $currentIndex");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),

          );
        });
  }
  showDialogForHeight() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, "Height"),
            content: Container(
              height: 500,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 25,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[1]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                heightController.text = userData[1]['type'][index];
                                currentIndexHeight=index+1;
                                print("i am current index $currentIndexHeight");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),

          );
        });
  }

  showDialogForEyeColor() {
    showDialog(
        context: context,
        builder: (ctx) {
          return  AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, "Eye Colour"),
            content: Container(
              height: 220,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 6,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[2]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                eyeColorController.text = userData[2]['type'][index];
                                currentIndexEyeColor=index+1;
                                print("i am current index $currentIndexEyeColor");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),

          );
        });
  }

  showDialogHairColor() {
    showDialog(
        context: context,
        builder: (ctx) {
          return  AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, "Hair Colour"),
            content: Container(
              height: 220,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 6,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[3]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                hairColorController.text = userData[3]['type'][index];
                                currentIndexHairColor=index+1;
                                print("i am current index $currentIndexHairColor");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),

          );
        });
  }

  showDialogForReligion() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Religion'),
            content:Container(
              height: 550,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 16,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[4]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                           religionController.text = userData[4]['type'][index];
                                currentIndexReligion=index+1;
                                print("i am current index $currentIndexReligion");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          );
        });
  }

  showDialogForSmoke() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Smoke'),
            content:Container(
              height: 120,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 3,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[5]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                smokeController.text = userData[5]['type'][index];
                                currentIndexSmoke=index+1;
                                print("i am current index $currentIndexSmoke");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          );
        });
  }

  showDialogForChildren() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Children'),
            content:Container(
              height: 150,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 4,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[6]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                childrenController.text = userData[6]['type'][index];
                                currentIndexChildren=index+1;
                                print("i am current index $currentIndexChildren");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          );
        });
  }

  showDialogForPets() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Pets'),
            content:Container(
              height: 180,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 4,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[7]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                petsController.text = userData[7]['type'][index];
                                currentIndexPets=index+1;
                                print("i am current index $currentIndexPets");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          );
        });
  }

  showDialogForEducation() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Education'),
            content:Container(
              height: 290,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 8,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[8]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                educationController.text = userData[8]['type'][index];
                                currentIndexEducation=index+1;
                                print("i am current index $currentIndexEducation");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          );
        });
  }

  showDialogForEthnicity() {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            titlePadding: EdgeInsets.zero,
            title: titleForDialog(context, 'Ethnicity'),
            content:Container(
              height: 380,
              child: FutureBuilder(
                  future: getRegistersDetails(),
                  builder: (context,AsyncSnapshot snapshot) {
                    if ( snapshot.data!=null || userData!=null) {
                      return ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: 10,//photoList.length,
                          itemBuilder: (context, index) {
                            return  InkWell(

                              child: Column(

                                children: [
                                  Container(
                                    // height: 20,
                                    // width: 100,
                                    child: Text( userData[9]['type'][index]
                                    ),
                                  ),
                                  Divider(),

                                ],),
                              onTap: () {
                                Navigator.pop(context);
                                EthnicityController.text = userData[9]['type'][index];
                                currentIndexEthinicity=index+1;
                                print("i am current index $currentIndexEthinicity");
                                setState(() {});
                              },
                            );

                          });
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }),
            ),
          );
        });
  }

  registerFunc() async {
    userNameSave = userNameController.text;
    passwordSave= passwordController.text;
    print("i am current index body type in api = ${currentIndex.toString()}");
    print("i am current index height in api = ${currentIndexHeight.toString()}");
    print("i am current index Eye Color in api = ${currentIndexEyeColor.toString()}");
    print("i am current index Hair Color in api = ${currentIndexHairColor.toString()}");
    print("i am current index Religion in api = ${currentIndexReligion.toString()}");
    print("i am current index Smoke in api = ${currentIndexSmoke.toString()}");
    print("i am current index Children in api = ${currentIndexChildren.toString()}");
    print("i am current index Pets api = ${currentIndexPets.toString()}");
    print("i am current index Education api = ${currentIndexEducation.toString()}");
    print("i am current index Ethnicity api = ${currentIndexEthinicity.toString()}");
    isLoading = true;
    setState(() {});
    var headers = {
      'Cookie':
          '_us=1662751327; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-08%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; PHPSESSID=f9bb8e6ac6beab30ca26a90c68848b5c; access=1; mode=day'
    };
    var request = http.MultipartRequest(
        'POST', Uri.parse(StaticInfo.baseUrl));
    request.fields.addAll({
      'type': 'user_registration',
      'email': emailController.text,
      'username': userNameController.text,
      'password': passwordController.text,
      'confirm_password': confirmPasswordController.text,
      'fid_1':   currentIndex.toString(),
      'fid_2': currentIndexHeight.toString(),
      'fid_3':currentIndexEyeColor.toString(),
      'fid_4': currentIndexHairColor.toString(),
      'fid_5':  currentIndexReligion.toString(),
      'fid_6':  currentIndexSmoke.toString(),
      'fid_7': currentIndexChildren.toString(),
      'fid_8':  currentIndexPets.toString(),
      'fid_9':  currentIndexEducation.toString(),
      'fid_10': currentIndexEthinicity.toString(),
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
      var body = jsonDecode(res);
      var newError;
      if (body['errors'] != null) {
        errorText = body['errors'];
        newError = errorText['error_text'];
        Fluttertoast.showToast(msg: "$newError");
        print("i am Error text $newError");
        setState(() {
          isLoading = false;
        });
      } else {
        Get.to(AfterRegistration());

        message = body['message'];

        print("i am message $message");
        Fluttertoast.showToast(msg: "$message");
         var Identity = body['user_id'];
        print("i am user id in  signup (Register Id is =) $Identity");
        print("Successfully Join");

        setState(() {
          isLoading = false;
        });
      }


    } else {
      print(response.reasonPhrase);
      Fluttertoast.showToast(msg: "Something went wrong try again letter");
      print("api not working");
      setState(() {
        isLoading = false;
      });
    }

  }
  getRegistersDetails()async{
    var headers = {
      'Cookie': 'PHPSESSID=4a9373de7ada0c68cce2cd914d4f93c5; _us=1663260947; access=1; ad-con=%7B%26quot%3Bdate%26quot%3B%3A%26quot%3B2022-09-14%26quot%3B%2C%26quot%3Bads%26quot%3B%3A%5B%5D%7D; mode=day; src=1'
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://vibetag.com/app_api.php'));
    request.fields.addAll({
      'type': 'get_registration_fields'
    });

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      //print(await response.stream.bytesToString());
      var res = await response.stream.bytesToString();
     var body = jsonDecode(res);
      userData = body['data'];

      print("i am data $userData");
     // return userData;

    }
    else {
      print(response.reasonPhrase);
      //return null;
    }

  }
  Widget buttonWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50.0,
          child: RaisedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                registerFunc();
                //registerFunc(index);
              }
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)),
            padding: EdgeInsets.all(0.0),
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(13.0)),
              child: Container(
                constraints: BoxConstraints(
                    maxWidth: 300.0, minHeight: 50.0),
                alignment: Alignment.center,
                child: Text(
                  "Signup",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HexColor("#FF9200"),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
