import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class EmployeeDetails extends StatefulWidget {
  const EmployeeDetails({Key? key}) : super(key: key);

  @override
  _EmployeeDetailsState createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  String _selected = 'Permanent';

  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController date = TextEditingController();
  GlobalKey<FormState>? _formKey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _formKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/11/2021-Beautiful-Whatsapp-Dp-Profile-Images-For-Girl-download.gif",
                  ),
                  radius: width * 0.31,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: id,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fill the Field!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Employee id',
                    contentPadding: const EdgeInsets.only(left: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: name,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fill the Field!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Employee Name',
                    contentPadding: const EdgeInsets.only(left: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: email,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fill the Field!';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    contentPadding: const EdgeInsets.only(left: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: mobile,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fill the Field!';
                    } else {
                      return null;
                    }
                  },
                  onTap: () {},
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    contentPadding: const EdgeInsets.only(left: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: date,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Fill the Field!';
                    } else {
                      return null;
                    }
                  },
                  onTap: () {},
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 10),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    //fillColor: Colors.green
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: width * 0.4,
                      child: ListTile(
                        leading: Radio<String>(
                          value: 'Permanent',
                          groupValue: _selected,
                          onChanged: (value) {
                            setState(() {
                              _selected = value!;
                            });
                          },
                        ),
                        contentPadding: EdgeInsets.all(0),
                        title: const Text('Permanent'),
                      ),
                    ),
                    Container(
                      width: width * 0.5,
                      child: ListTile(
                        leading: Radio<String>(
                          value: 'Temporary',
                          groupValue: _selected,
                          onChanged: (value) {
                            setState(() {
                              _selected = value!;
                            });
                          },
                        ),
                        title: const Text('Temporary'),
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () async {
                    validateCredential();
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                            side: BorderSide(width: 1)),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.transparent),
                      elevation: MaterialStateProperty.all(0)),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: width,
                    child: const Text(
                      "Save",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  validateCredential() async {
    _formKey!.currentState!.save();
    if (!_formKey!.currentState!.validate()) {
      print("Not Validate!");
    } else {
      try {
        print(email.text +
            "" +
            id.text +
            "" +
            name.text +
            "" +
            mobile.text +
            "" +
            date.text);
        var response =
            await Dio().post('http://localhost:4000/employee', data: {
          {
            "id": id.text,
            "name": name.text,
            "email": email.text,
            "mobile": mobile.text,
            "date": date.text,
            "category": _selected,
            "profile_picture": "kkk"
          },
        });
        if (response.statusCode == 201) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Successfully Created!"),
          ));
        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Error."),
          ));
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text("Unknown Error! Please contact admin panel. Error is : $e"),
        ));
        print(e);
      }
    }
  }
}
