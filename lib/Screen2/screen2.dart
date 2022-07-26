import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool status = false;
  bool status1 = false;

  Widget ExpandableItem() {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: ExpandablePanel(
          header: ListTile(
            title: AutoSizeText(
              'Item 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Category : Shirt |Rs:450'),
          ),
          collapsed: Text(
            "",
            softWrap: false,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.downloading),
                        title: Text('Your Product Pickuped'),
                        subtitle: Text('Date:'),
                      ),
                    ),
                    FlutterSwitch(
                      width: 80.0,
                      height: 40.0,
                      valueFontSize: 25.0,
                      toggleSize: 45.0,
                      value: status,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: false,
                      toggleColor: Colors.orangeAccent,
                      activeColor: Color.fromRGBO(51, 226, 255, 1),
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          status = val;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.downloading),
                        title: Text('Your Product Pickuped'),
                        subtitle: Text('Date:'),
                      ),
                    ),
                    FlutterSwitch(
                      width: 80.0,
                      height: 40.0,
                      valueFontSize: 25.0,
                      toggleSize: 45.0,
                      value: status1,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: false,
                      toggleColor: Colors.orangeAccent,
                      activeColor: Color.fromRGBO(51, 226, 255, 1),
                      inactiveColor: Colors.black12,
                      onToggle: (val) {
                        setState(() {
                          status1 = val;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.orangeAccent,
          ),
        ),
        title: Text(
          'Order details-ORD123123',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            width: MediaQuery.of(context).size.width,
            child: Material(
              elevation: 10,
              child: Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Icon(
                            Icons.account_circle,
                            size: 50,
                          ),

                          radius: 30,
                          // backgroundColor: Colors.blueGrey,
                          //backgroundImage: NetworkImage(url),
                          // backgroundImage: NetworkImage(url),
                        ),
                        Expanded(
                            child: ListTile(
                          title: AutoSizeText(
                            'Vijay',
                            maxFontSize: 14,
                          ),
                          subtitle: AutoSizeText(
                            'ContactNo',
                            maxFontSize: 12,
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  AutoSizeText(
                    'OrderStatus',
                    maxFontSize: 20,
                    style: GoogleFonts.radioCanada(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExpandableItem(),
                  SizedBox(
                    height: 10,
                  ),
                  ExpandableItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
