import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one/widget/borderWithText.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  Widget ExpandableItem() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: ExpandablePanel(
          header: Text(
            'Product 1',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          collapsed: Text(
            "",
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Container(
            child: Column(
              children: [
                Material(
                  elevation: 10,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Material Image',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.image,
                              size: 100,
                            ),
                            Icon(
                              Icons.image,
                              size: 100,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Addon Service',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AutoSizeText('lining Quality Washed'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Customer Tailor Notes',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                  'Consequat cillum duis non velit sint non labore id incididunt dolor qui et eu. Dolore eu ad irure incididunt voluptate culpa aute sunt. Do exercitation fugiat officia non esse magna nostrud consectetur velit enim duis aliquip veniam quis. Ullamco in ex enim eu. Ex culpa adipisicing duis tempor anim et reprehenderit aliqua elit deserunt fugiat laboris. Dolor eu irure Lorem aute consequat magna. Non aute enim culpa id aliqua aute dolor sunt magna fugiat cillum in occaecat.')
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      'Customer Tailor Notes',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.share,
                                    color: Colors.blueAccent,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.edit_calendar_outlined,
                                    color: Colors.blueAccent,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AutoSizeText(
                                  'Consequat cillum duis non velit sint non labore id incididunt dolor qui et eu. Dolore eu ad irure incididunt voluptate culpa aute sunt. Do exercitation fugiat officia non esse magna nostrud consectetur velit enim duis aliquip veniam quis. Ullamco in ex enim eu. Ex culpa adipisicing duis tempor anim et reprehenderit aliqua elit deserunt fugiat laboris. Dolor eu irure Lorem aute consequat magna. Non aute enim culpa id aliqua aute dolor sunt magna fugiat cillum in occaecat.'),
                              SizedBox(
                                height: 20,
                              ),
                              borderWithText(
                                text: 'Vendor Notes For Tailar',
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget ExpandableItem2() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: ExpandablePanel(
          header: Text(
            'Product 2',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          collapsed: Text(
            "",
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Container(
            child: Column(
              children: [
                Material(
                  elevation: 10,
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Item1'),
                            Text('650.00'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Adon'),
                            Text('00.00'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Price:650 |tax:18% |Tax Amt:55'),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Taxable'),
                            Text('705.00'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Tax Amt'),
                            Text('65.00'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('805.00',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          title: Text(
                            'Payment Mode',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Cash On Delivery'),
                        )
                      ],
                    ),
                  ),
                ),
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
          'ORD123123',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.close,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.done_rounded,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Dennis Lingo Men\'s slim Fit Shirt',
                          style: GoogleFonts.aBeeZee(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Category:',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black))),
                          TextSpan(
                              text: ' Men',
                              style: TextStyle(color: Colors.black38))
                        ])),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Sub-Category:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' Shirt',
                              style: TextStyle(color: Colors.black38))
                        ])),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'ProductCode:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' #18358',
                              style: TextStyle(color: Colors.black38)),
                        ])),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: 'Service:',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' stitching',
                              style: TextStyle(color: Colors.black38))
                        ]))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
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
                            title: Text('Vijay'),
                            subtitle: Text('ContactNo'),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //address
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        AutoSizeText(
                          'No:2/326,malayanoor(Vill)\nRamagandahali(PO),Pennagaram(TK)\nTamilnadu-636810',
                          style: TextStyle(height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    title: Text('Date'),
                                    subtitle: Text('12-04-2022'),
                                  ),
                                ),
                                VerticalDivider(
                                  thickness: 2,
                                  width: 2,
                                  color: Colors.black,
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text('Date'),
                                    subtitle: Text('12-04-2022'),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: Icon(Icons.edit_calendar_outlined))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent)),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 4,
                              child: ListTile(
                                title: Text('Appointment Date'),
                                subtitle: Text('12-04-2022'),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.done_rounded,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.calendar_today_outlined)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 10,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.blueAccent),
                        ),
                    child: ExpandableItem()),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Material(
                elevation: 10,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        // border: Border.all(color: Colors.blueAccent),
                        ),
                    child: ExpandableItem2()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
