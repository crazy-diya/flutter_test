import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1/pages/employee_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextFormField searchEmployee = TextFormField();
  late double width, height;
  String _selected = 'Permanent';

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawerEnableOpenDragGesture: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EmployeeDetails(),
          )),
          tooltip: 'Add New One',
          child: const Icon(Icons.add),
        ), // This
        body: Padding(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8,
            top: 20,
            bottom: 8,
          ),
          child: SingleChildScrollView(
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.all(0),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  fillColor: Colors.white,
                  //fillColor: Colors.green
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                height: height * 0.8,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => _showBottomSheet(context),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 14, bottom: 8),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/11/2021-Beautiful-Whatsapp-Dp-Profile-Images-For-Girl-download.gif",
                                    ),
                                    radius: width * 0.1,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: width * 0.62,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Employee No: 1",
                                            style: TextStyle(fontSize: 16)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Employee Name: Jhon Doe",
                                            style: TextStyle(fontSize: 16)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Date of Birth: dd/mm/yyyy",
                                            style: TextStyle(fontSize: 16)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        side: BorderSide(
                                                            width: 0.8)),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Colors.transparent),
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0)),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                width: width * 0.20,
                                                child: const Text(
                                                  "Permanent",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.edit,
                                                  ),
                                                  // padding: EdgeInsets.all(0)
                                                ),
                                                InkWell(
                                                  onTap: () =>
                                                      buildShowDialog(context),
                                                  child: const Icon(
                                                    Icons.delete,
                                                  ),
                                                  // padding: EdgeInsets.all(0)
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                      ),
                      InkWell(
                        onTap: () => _showBottomSheet(context),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 14, bottom: 8),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      "https://www.whatsappprofiledpimages.com/wp-content/uploads/2021/11/2021-Beautiful-Whatsapp-Dp-Profile-Images-For-Girl-download.gif",
                                    ),
                                    radius: width * 0.1,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: width * 0.62,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Employee No: 1",
                                            style: TextStyle(fontSize: 16)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Employee Name: Jhon Doe",
                                            style: TextStyle(fontSize: 16)),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Date of Birth: dd/mm/yyyy",
                                            style: TextStyle(fontSize: 16)),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  shape:
                                                      MaterialStateProperty.all<
                                                          RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25),
                                                        side: BorderSide(
                                                            width: 0.8)),
                                                  ),
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Colors.transparent),
                                                  elevation:
                                                      MaterialStateProperty.all(
                                                          0)),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                width: width * 0.20,
                                                child: const Text(
                                                  "Permanent",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: const Icon(
                                                    Icons.edit,
                                                  ),
                                                  // padding: EdgeInsets.all(0)
                                                ),
                                                InkWell(
                                                  onTap: () =>
                                                      buildShowDialog(context),
                                                  child: const Icon(
                                                    Icons.delete,
                                                  ),
                                                  // padding: EdgeInsets.all(0)
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Future<String?> buildShowDialog(BuildContext context) {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("      "),
                Text('Warning', textAlign: TextAlign.center),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                      child: Icon(Icons.close),
                      onTap: () => Navigator.pop(context)),
                )
              ],
            ),
            Divider(
              color: Colors.black38,
              thickness: 2,
            )
          ],
        ),
        titlePadding: EdgeInsets.only(top: 10),
        content:
            const Text('Are you sure want to remove this employee(Id:xx)?'),
        buttonPadding: EdgeInsets.zero,
        actions: <Widget>[
          Column(
            children: [
              Divider(
                color: Colors.black38,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('No',
                            style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context, 'Yes'),
                        child: const Text('Yes',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Color(0xffe3e0e0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (context) => SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(14),
                    width: width,
                    child: const Text(
                      "Employee Details",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: height * 0.5,
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Employee Id',

                              contentPadding: const EdgeInsets.only(left: 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Employee Name',
                              contentPadding: const EdgeInsets.only(left: 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email Address',

                              contentPadding: const EdgeInsets.only(left: 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            onTap: () {},
                            decoration: InputDecoration(
                              hintText: 'Mobile Number',

                              contentPadding: const EdgeInsets.only(left: 10),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              //fillColor: Colors.green
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            onTap: () {},
                            decoration: InputDecoration(
                              suffixIcon: Icon(Icons.calendar_today),
                              contentPadding: const EdgeInsets.all(0),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 1.5),
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
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14),
                                      side: BorderSide(width: 1)),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent),
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
                ],
              ),
            ));
  }
}
